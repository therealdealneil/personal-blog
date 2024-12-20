current_year=$(date +"%Y")
current_month=$(date +"%m")
post="posts/$current_year/$current_month/$1/index.md"

hugo new posts/$current_year/$current_month/$1/index.md

filename="content/$post"
temp_file="temp_file.txt"

rows_to_insert=$(cat << 'EOF'
tags = []
[banner]
  image = ""
  alt = ""
  width = ""
[footer]
  image = ""
  alt = ""
  width = ""
EOF
)

head -n 4 "$filename" > "$temp_file"
echo "$rows_to_insert" >> "$temp_file"
tail -n +5 "$filename" >> "$temp_file"

sed -i '/^draft =/c\draft = false' "$temp_file"

current_date=$(date +%Y-%m-%d)
sed -i "/^date =/c\date = $current_date" "$temp_file"

mv "$temp_file" "$filename"