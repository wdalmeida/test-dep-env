```diff
+ Green
- Red
~ Yellow
~ Orange
<= Blue

 # local_file.foo will be created
  + resource "local_file" "foo" {
      + content              = "phoenix"
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "./mytest.yaml"
      + id                   = (known after apply)
    }

-/+ destroy and then create replacement

Terraform will perform the following actions:

  # local_file.foo must be replaced
-/+ resource "local_file" "foo" {
      ~ content              = "phoenix" # forces replacement -> (known after apply) # forces replacement
      ~ content_base64sha256 = "A6jw3Y7bM3gag2rEl4ALX5xcR8Ldv9D4lYEUBYlyWoU=" -> (known after apply)
      ~ content_base64sha512 = "FOHqIx/MaY60P0nb/tYzhSDFmGX/u30Q1IRWOWQDgtyLuHgot4EVgcUF/CP4SoHA47+UnXCftQdwTws9Fh3KbQ==" -> (known after apply)
      ~ content_md5          = "b3d97746dbb45e92dc083db205e1fd14" -> (known after apply)
      ~ content_sha1         = "41880ee3438c878762e9a1a0fec66bcc23dac767" -> (known after apply)
      ~ content_sha256       = "03a8f0dd8edb33781a836ac497800b5f9c5c47c2ddbfd0f89581140589725a85" -> (known after apply)
      ~ content_sha512       = "14e1ea231fcc698eb43f49dbfed6338520c59865ffbb7d10d4845639640382dc8bb87828b7811581c505fc23f84a81c0e3bf949d709fb507704f0b3d161dca6d" -> (known after apply)
      ~ id                   = "41880ee3438c878762e9a1a0fec66bcc23dac767" -> (known after apply)
        # (3 unchanged attributes hidden)
    }

  # random_pet.server must be replaced
-/+ resource "random_pet" "server" {
      ~ id        = "phoenix" -> (known after apply)
      ~ length    = 1 -> 2 # forces replacement
        # (2 unchanged attributes hidden)
    }
```

<html>
<body style="color:white; background-color:black">
<pre>
<span style="font-weight:bold;">random_pet.server: Refreshing state... [id=phoenix]</span>
<span style="font-weight:bold;">local_file.foo: Refreshing state... [id=41880ee3438c878762e9a1a0fec66bcc23dac767]</span>

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
<span style="color:red;">-</span>/<span style="color:lime;">+</span> destroy and then create replacement

Terraform will perform the following actions:

<span style="font-weight:bold;">  # local_file.foo</span> must be <span style="font-weight:bold;"></span><span style="font-weight:bold;color:red;">replaced</span>
<span style="color:red;">-</span>/<span style="color:lime;">+</span> resource &quot;local_file&quot; &quot;foo&quot; {
      <span style="color:yellow;">~</span> content              = &quot;phoenix&quot; <span style="color:red;"># forces replacement</span> -&gt; (known after apply) <span style="color:red;"># forces replacement</span>
      <span style="color:yellow;">~</span> content_base64sha256 = &quot;A6jw3Y7bM3gag2rEl4ALX5xcR8Ldv9D4lYEUBYlyWoU=&quot; -&gt; (known after apply)
      <span style="color:yellow;">~</span> content_base64sha512 = &quot;FOHqIx/MaY60P0nb/tYzhSDFmGX/u30Q1IRWOWQDgtyLuHgot4EVgcUF/CP4SoHA47+UnXCftQdwTws9Fh3KbQ==&quot; -&gt; (known after apply)
      <span style="color:yellow;">~</span> content_md5          = &quot;b3d97746dbb45e92dc083db205e1fd14&quot; -&gt; (known after apply)
      <span style="color:yellow;">~</span> content_sha1         = &quot;41880ee3438c878762e9a1a0fec66bcc23dac767&quot; -&gt; (known after apply)
      <span style="color:yellow;">~</span> content_sha256       = &quot;03a8f0dd8edb33781a836ac497800b5f9c5c47c2ddbfd0f89581140589725a85&quot; -&gt; (known after apply)
      <span style="color:yellow;">~</span> content_sha512       = &quot;14e1ea231fcc698eb43f49dbfed6338520c59865ffbb7d10d4845639640382dc8bb87828b7811581c505fc23f84a81c0e3bf949d709fb507704f0b3d161dca6d&quot; -&gt; (known after apply)
      <span style="color:yellow;">~</span> id                   = &quot;41880ee3438c878762e9a1a0fec66bcc23dac767&quot; -&gt; (known after apply)
        <span style="filter: contrast(70%) brightness(190%);color:dimgray;"># (3 unchanged attributes hidden)</span>
    }

<span style="font-weight:bold;">  # random_pet.server</span> must be <span style="font-weight:bold;"></span><span style="font-weight:bold;color:red;">replaced</span>
<span style="color:red;">-</span>/<span style="color:lime;">+</span> resource &quot;random_pet&quot; &quot;server&quot; {
      <span style="color:yellow;">~</span> id        = &quot;phoenix&quot; -&gt; (known after apply)
      <span style="color:yellow;">~</span> length    = 1 <span style="color:yellow;">-&gt;</span> 2 <span style="color:red;"># forces replacement</span>
        <span style="filter: contrast(70%) brightness(190%);color:dimgray;"># (2 unchanged attributes hidden)</span>
    }

<span style="font-weight:bold;">Plan:</span> 2 to add, 0 to change, 2 to destroy.
<span style="filter: contrast(70%) brightness(190%);color:dimgray;">
─────────────────────────────────────────────────────────────────────────────</span>

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run &quot;terraform apply&quot; now.
</pre>
</body>
</html>
