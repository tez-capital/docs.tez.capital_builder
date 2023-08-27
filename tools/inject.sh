#!/bin/sh
# tezpay command reference

rm -rf content/injected/tezpay/cmd/*
mkdir -p content/injected/tezpay/cmd/
export CWD=$PWD
cd projects/tezpay/docs/cmd || exit 1
for f in *.md; do
	echo "Processing $f file...";
	(echo "---";
	echo "title: $(printf "%s" "$f" | cut -d. -f1)";
	echo "weight: 3";
	echo "type: docs";
	echo "---") | \
	cat - "$f" > "$CWD/content/injected/tezpay/cmd/$f"
done
cd "$CWD" || exit 1

# tezpay configuration samples
rm -rf content/injected/tezpay/configuration/*
mkdir -p content/injected/tezpay/configuration/
cd projects/tezpay/docs/configuration || exit 1
for f in config.*.hjson; do
	echo "Processing $f file...";
	(echo "---";
	echo "title: $(printf $f | cut -d. -f2)";
	echo "weight: 3";
	echo "type: docs";
	echo "summary: tezpay $(printf $f | cut -d. -f2) configuration";
	echo "---";
	echo '```yaml') | \
	cat - "$f" > "$CWD/content/injected/tezpay/configuration/$(printf $f | cut -d. -f2).md"
	(echo ''; echo '```') >> "$CWD/content/injected/tezpay/configuration/$(printf $f | cut -d. -f2).md"
done
cd "$CWD" || exit 1

# tezpay extensions samples
rm -rf content/injected/tezpay/extensions/*
mkdir -p content/injected/tezpay/extensions/
cd projects/tezpay/docs/extensions || exit 1
for f in *.md; do
	echo "Processing $f file...";
	(echo "---";
	echo "title: $(printf "%s" "$f" | cut -d. -f1)";
	echo "weight: 3";
	echo "type: docs";
	echo "---") | \
	cat - "$f" > "$CWD/content/injected/tezpay/extensions/$f"
done
cd "$CWD" || exit 1

# tezbake command reference

rm -rf content/injected/tezbake/cmd/*
mkdir -p content/injected/tezbake/cmd/
cd projects/tezbake/docs/cmd || exit 1
for f in *.md; do
	echo "Processing $f file...";
	(echo "---";
	echo "title: $(printf "%s" "$f" | cut -d. -f1)";
	echo "weight: 3";
	echo "type: docs";
	echo "---") | \
	cat - "$f" > "$CWD/content/injected/tezbake/cmd/$f"
done
cd "$CWD" || exit 1