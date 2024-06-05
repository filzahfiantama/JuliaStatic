### A Pluto.jl notebook ###
# v0.19.40

using Markdown
using InteractiveUtils

# ╔═╡ 962f7a7a-696a-46c2-a3ff-cd2f4b46f660
begin
using Printf
using Statistics
end

# ╔═╡ 9170ff8c-d638-45c6-92bf-6e054b72ef2b
md"Loading the modules used in this Notebook"

# ╔═╡ e0dea0f2-4f91-4461-a069-60f08cc04dc6
md"we can write coefficient in front of a variable comfortably"

# ╔═╡ 7cb7f3ff-38e8-4287-8abc-64707387eba6
i = 5

# ╔═╡ d7cfa97c-bf85-4e96-9fb5-a3052fba8ce6
ii = 2i

# ╔═╡ 92e23160-9597-40c8-adc2-f3b0af00b24f
md"**parse()** is parsing a string into a number (?)"

# ╔═╡ e58038e9-9c4f-4444-a470-32c06822ecdf
begin
	strnum = "55"
	intnum = parse(Int, strnum)
end

# ╔═╡ 3f3b6091-23be-4cd4-9b73-0c7004bcf48e
md"## Strings"

# ╔═╡ 47e569f4-eb1d-41c2-9db0-1fcf3371b773
stringinlines = """using triple quotes
	will let me use
	several lines within println"""

# ╔═╡ 08eb6878-464e-4238-893f-276a78fd2baf
println(stringinlines)

# ╔═╡ 98f1b1b9-7f7c-4420-8287-da2394087383
println("i can concatenate" * " using *")

# ╔═╡ 9396c6c7-432a-479b-ae26-7c2368dfc59d
println(string("or i can use this", "string() function"))

# ╔═╡ 2b8dcc77-9646-4ebe-bd8e-67f8bbf75500
begin
	a = 5
	b = 1
	c = 3456
end

# ╔═╡ dc2768b7-973a-43c3-acbf-f95f9d22cc74
println("""i can also get variable values using \$ like: c = $c
		thus i can operate within the string as well:
		c + b = $(c+b)""")

# ╔═╡ e959bb9b-7e28-461d-a087-c92b84f94557
@printf("And this one is using printf %s", c)

# ╔═╡ a021a96a-ecde-49ce-a0c7-f2711d7f3a62
md"**split()** is turning the string into an array with entries of the words"

# ╔═╡ c8c28da4-caf7-4da6-8070-f55b5bd97119
sentence = "This is a string"

# ╔═╡ b308cd36-b5a0-477b-98c2-319c09f49d6b
wordsAr = split(sentence)

# ╔═╡ 7e6969b6-9f3e-4b0b-b533-aee9263bd6c2
md"## Conditionals"

# ╔═╡ 8e616931-95d3-4432-8cff-bf14287235b4
age = 12

# ╔═╡ 148e5178-d7cd-47f8-93d8-5931cc896d20
md"**normal if-condition**"

# ╔═╡ f37f27ba-caf7-435d-8080-54fa8872f20b
if age >=5 && age <=6
	println("Bayek")
elseif age >6 && age <= 13
	println("Bocil")
else
	println("dll")
end

# ╔═╡ 22abd5d2-fa88-49e4-b67b-798daff2ab0a
md"**Ternary operator** (just like in Mr. Mottaghy's notebook)"

# ╔═╡ 83392287-382e-4281-9f35-4cefa7821b7e
age <13 ? "Bocil" : "Gede"

# ╔═╡ 1964328b-facb-4f9d-aa62-e0e76652342a
md"## Loops"

# ╔═╡ 5bf3ee82-5353-428e-8f01-aa2f3d986f72
for i = 1:5
	println(i)
end

# ╔═╡ 476f3773-d633-42c2-9d4a-ff69469dec99
for j in [9,8,7]
	println(j)
end

# ╔═╡ 05483621-fd99-4717-b91f-3a01b42281be
md"**i can stack 2 indices!!!** (instead of having stacked for-loops)"

# ╔═╡ 62ba5e6a-d905-4406-9ff8-f4a6b7aacf11
for i = 1:3, j = 2:2:6
	println((i,j))
end

# ╔═╡ 373aa0cf-cdcb-4d85-865e-242b166c81bb
md"## Arrays"

# ╔═╡ d1dd98f9-a893-4419-adcb-96d47ed9e056
ar1 = [1,2,3]

# ╔═╡ 54fccc2a-2e03-4415-a501-eb806a3ef60d
println("indexing will start from 1, for example the first element of the array is $(ar1[1])")

# ╔═╡ 3f2ba7c5-f45c-448f-89ce-5454483743b6
println("while last element can be accessed using end: $(ar1[end])")

# ╔═╡ 5da82a45-4cfa-40fc-a4a4-e7ed67fb5be3
begin
	println("use size to know how many rows and columns: $(size(ar1))")
	println("use length to know how many elements: $(length(ar1))")
	print("sum can sum all the elements: $(sum(ar1))")
end

# ╔═╡ 72ea76d5-1f0f-4e22-82bf-1fb51cf199d5
md"Defining an array with a range"

# ╔═╡ 512d04d3-963a-46b6-9761-747cb62d3be1
ar2 = collect(1:5)

# ╔═╡ 546fd4a0-3389-4a48-83a9-bea297cae919
ar3 = collect(1:3:12)

# ╔═╡ 6ac19a98-a689-4fb4-9e27-ddc27798afa0
md"operation within the array"

# ╔═╡ 2ccbed53-f66a-4a17-9677-af7e521ea4cd
ar32 = ar3 .* 2

# ╔═╡ 1d6e4835-f57d-4ed4-b71c-04aca07b94b7
md"#### 'push!'
adding an element on to an array"

# ╔═╡ 2b3cfcf7-05eb-4014-af40-fd8f3edbf839
begin
	push!(ar3, 7)
	println(ar3)
end

# ╔═╡ 613edad6-7872-4cbf-936f-a95a475a9d57
md"#### 'splice!'"

# ╔═╡ afd08a1b-e81c-4aa7-ad17-31f0f09ed9f1
md"1. Removing the element, which position is given in the 2nd argument, then if specified in the 3rd argument, will replace with it"

# ╔═╡ e23d56b0-5e27-4c0b-b004-e5bad0d1892d
begin
	ar4 = [1,2,3]
	removed = splice!(ar4, 2, 9) #splice will return the removed element
	println("i removed $removed and updated the array to $ar4")
end

# ╔═╡ 3cbd4bf1-eafc-4aa0-bc3f-420c04ea4bb5
md"2. NOT removing the element by giving following 2nd argument: 'n:n-1', instead only insert the given new values on position n"

# ╔═╡ 0cf5ee5b-cf59-4c2e-bf11-1c58da2249e8
begin
	ar5 = [1,2,3]
	splice!(ar5, 3:2, [7,8])
	println("Now the 'spliced' array looks like this: $ar5")
end

# ╔═╡ d6c99642-5c7f-44cb-a064-48ee1ecd6631
md"## Tuples"

# ╔═╡ dd0b19b3-87da-40d4-8dac-92e9cfa4d643
begin
	t1 = (1,2,3,4)
	println("indexing tuples is the same, using '[]': $(t1[end])")
end

# ╔═╡ f686b487-3c2e-45cc-a04f-343c197255fe
md"#### Named Tuples"

# ╔═╡ b27e1ef3-0a59-4d35-978e-a4218674fa44
t2 = (sue = (1,"john"), joe = (8,"anna"))

# ╔═╡ ae055e9c-bb61-482e-9847-5c63eef0f650
t2.joe

# ╔═╡ a22ca526-fcb1-454a-b520-9882cb000f0c
t2.sue[2]

# ╔═╡ 6ae67d13-23d0-4d78-b9f0-477c4b8b743f
md"## Dictionaries"

# ╔═╡ ad98afaa-cc99-421c-a752-33d7ad4b8a05
d1 = Dict("pi"=>3.14, "e"=>2.718)

# ╔═╡ 2be6887e-a34e-4ea8-afea-f612ef9dbfb7
d1["e"]

# ╔═╡ 4d7202f4-4804-4f88-9389-9d225ad2b4f0
md"Adding an entry to the dictionary"

# ╔═╡ 732bed1e-59c4-4f08-919b-9f4059df25d5
begin
	d1["g"] = 9.18
	d1
end

# ╔═╡ 38d1ec97-7772-43c2-90e3-bf108f1fd90e
md"deleting an entry of the dictionary"

# ╔═╡ f6be682e-e20f-48d5-93a9-b94f61c6aa6f
begin
	delete!(d1,"e")
	d1
end

# ╔═╡ b2449f9e-ffdb-4bed-88fc-0c2902137047
md"checking existance"

# ╔═╡ 701fe122-c281-48cb-8508-71da3d9d2c97
haskey(d1,"e")

# ╔═╡ 188915d1-d81f-4fc1-abea-ca1f85440797
md"accessing keys and values within the dictionary"

# ╔═╡ cff3a7aa-3a97-4173-b7b9-e25fc1108fe5
for (k,val) in d1
	println(k, "= ", val)
end

# ╔═╡ cb9bb15e-eced-4b39-938d-63aa2e511ff0
md"## Sets
array with only unique values"

# ╔═╡ 6fca4c54-6d30-4ff7-9acf-b3c3413cbf6d
st1 = Set(["jim","pam","jim"])

# ╔═╡ 9255c56c-5943-4784-b7fd-1e497b6eab8e
md"**adding a new entry**"

# ╔═╡ b1cd6a0a-8024-4a8f-bbd9-d9f679093d23
begin
	push!(st1,"johnny")
	st1
end

# ╔═╡ 9b40eebf-951c-4c13-8419-9e8b8d335fb2
in("jim",st1)

# ╔═╡ 8b2e6c05-5669-4973-8b28-4c56916ca582
md"**combining 2 sets**"

# ╔═╡ ebeaf1a9-cf9c-49d3-8192-ec0462e623ee
st2 = Set(["fulana","aisha","pam"])

# ╔═╡ 77017d96-037e-49ad-b3a0-aca398b4dffe
union(st1,st2)

# ╔═╡ 16fc271d-9651-4829-af94-1e5658e8f2c0
md"misc. functions"

# ╔═╡ 15b0a99f-f092-43a8-b3d8-ead35c0fc623
intersect(st1,st2)

# ╔═╡ a2524182-6c73-4586-a3a7-da8832d5fc13
setdiff(st1,st2)

# ╔═╡ b07d21a5-5d2c-471b-b805-36c082c09354
setdiff(st2,st1)

# ╔═╡ e1e7d8d6-19e6-4143-8f36-8f7e6a4f4ea7
md"## Functions"

# ╔═╡ b65e67b4-fb5e-4126-a786-12d81cc23289
md"#### Single expression functions"

# ╔═╡ d7475748-a5cd-48c9-bfd9-38bb5942b464
getSum(x,y) = x+y

# ╔═╡ 3c8a6f08-be55-40c6-9f63-459c3ebdff42
begin
	x = 1
	y = 2
	println("$x + $y = $(getSum(x,y))")
	# @printf("%d + %d = %d", x, y, getSum(x,y)) #%d is placeholder expecting an integer
end

# ╔═╡ 695ccc0c-e606-47f2-8db5-624eb2d6efb6
f(a) = (a >=2 ? true : false)

# ╔═╡ 5cb647c7-3bf8-4701-942f-f2b577128257
println("counting how many elements of ar5 fulfill the condition: $(count(f,ar5))")

# ╔═╡ b5fb8879-9df9-4e42-a48f-09296c5a9b50
md"#### Functions with default value of the argument"

# ╔═╡ 4575b9ab-c4d8-4194-ba0e-46f4fd08ec7e
function usia(age = 15)
	if age>18
		println("dewasa")
	else
		println("bocil")
	end
end

# ╔═╡ ed627950-b415-480d-aa77-84fa4218998f
usia()

# ╔═╡ f6dc4819-0886-4151-bcac-c15b3f649b06
usia(50)

# ╔═╡ 753dde6a-bd80-459c-b24d-958b55e82d45
md"#### Functions expecting unknown number of args"

# ╔═╡ e0e56ff0-9369-4271-8d9d-d2f27e1b47ea
function getSum2(args...)
	sum = 0
	for x in args
		sum += x
	end
	println(sum)
end

# ╔═╡ 398c28e1-2af4-4acf-80ba-03123037ae81
getSum2(1,2,3,4,5,6)

# ╔═╡ 7c59dca9-d252-45b8-983a-0312c21ee011
md"#### Functions returning a function"

# ╔═╡ 3ba44bd9-bec5-4c15-adb3-c87bbb68b5f0
function makeMultiplier(num)
	return function(x) return x*num end
end

# ╔═╡ a51d12f1-b180-4ee6-bbcf-668e2f185206
multby3 = makeMultiplier(3)

# ╔═╡ 8d37445f-8c5c-4c14-a379-25cba54e16e1
println("6 * 3 is $(multby3(6))")

# ╔═╡ 78e74735-20b0-4afe-bb67-bb5de376db67
md"## Anonymous Function
Need no name, function is defined in line"

# ╔═╡ 75f4116e-8d52-44f8-9a83-da46faf181a5
md"**map** will apply a function to each item (e.g. a given array)"

# ╔═╡ 8ed9fbc5-51d7-45d4-a649-24c0abde4a4e
v2 = map(x -> x*x, [1,2,3])

# ╔═╡ 42ca450f-ea5c-46db-be7b-b1f232460cce
v3 = map((x,y) -> x+y, [1,2],[3,4])

# ╔═╡ cd7104c9-5a03-4454-b72c-8108d8f75492
md"**reduce** will execute the function multiple times to the elements of the given item until we get 1 result"

# ╔═╡ 216de5a1-7c29-4a63-aa59-91439597c5bf
v4 = reduce(+, 1:100) #adding all the values between 1 and 100

# ╔═╡ 8dc9f132-cebb-403d-a650-02013b79835f
md"Example 2: finding the longest word in a sentence"

# ╔═╡ d7e78fc0-2247-47ae-9372-3bb3489352b0
str1 = "This is the String"

# ╔═╡ b686bf83-aeb6-42cb-899e-a3a2d5155bcb
strAr = split(str1)

# ╔═╡ 8c58546a-0718-4912-ab0c-e36adbc6d2c7
longest = reduce((x,y) -> length(x) > length(y) ? x : y, strAr)
#this will apply the given ternary condition to each 2 item until we go through all the items in strAr

# ╔═╡ 291a5b72-3b63-4698-8e3e-3c4933c03953
md"## Enumerate types
tbc"

# ╔═╡ 9188262f-ccf2-4fd8-b020-dc70fe17b3fb
md"## Symbols
mutable strings that represents variable as a data"

# ╔═╡ e07c605a-32cb-4187-922b-d026b350158e
:Derek

# ╔═╡ c9d4e6a7-bba4-4b78-9f75-b8666ee6d5c0
println(:Derek)

# ╔═╡ 39423865-8ffd-4d76-a6cc-079d66851de7
md"commonly used for dictionary keys"

# ╔═╡ 37a27591-fde2-4ce1-bae2-87ed57f839df
d2 = Dict(:g=>9.18,:pi=>3.14)

# ╔═╡ 22f91946-bf0f-4c81-8e9b-e720b0f80bde
println(d2[:pi])

# ╔═╡ 77af0c19-6d79-4ab6-813d-bd01a5a9a64a
md"## Structs"

# ╔═╡ 7fff2d0e-b6a2-4987-ada1-1574a79434c4
struct Customer
	name::String
	balance::Float32
	id::Int
end

# ╔═╡ b930c4f9-3bfe-49ff-9994-205e4f205897
begin
	bob = Customer("Bob Smith", 10.50, 123)
	println("$(bob.name) with an ID of $(bob.id) has a balance of $(bob.balance)")
end

# ╔═╡ bd0ed576-93e1-473f-8875-8d9ba0690f6e
md"## Abstract Types"

# ╔═╡ 91ab89f8-833f-4c99-9164-fec5b6feed7b
abstract type Animal end

# ╔═╡ c24d572a-fb11-4dc1-ac77-527615ffdb3d
struct Dog <: Animal
	name::String
	bark::String
end

# ╔═╡ bc521f45-7c4a-4e45-bbfe-71347b67b67d
struct Cat <: Animal
	name::String
	meow::String
end

# ╔═╡ 0ce5ffc4-76d5-43cc-94de-f3d25cbaafbb
bowser = Dog("Bowser", "Ruff")

# ╔═╡ 1c751919-e65f-4ee1-b30b-720674b19bb7
muffin = Cat("Muffin","Meow")

# ╔═╡ 5e6c9b3b-d269-46c4-a885-21bea346c273
#Through the abstract type defined above, we can work with 2 functions with both types (Dog and Cat)
begin
	function makeSound(animal::Dog)
		println("$(animal.name) go $(animal.bark)")
	end
	function makeSound(animal::Cat)
		println("$(animal.name) go $(animal.meow)")
	end
end

# ╔═╡ c646b154-d632-4b34-8c0f-091ae042ed55
begin
	makeSound(bowser)
	makeSound(muffin)
end

# ╔═╡ 9b63f337-6bb1-4a97-a913-6f647499d629
md"## Macros
generating code for us before a code is run"

# ╔═╡ 72b5e84e-7a3d-4465-849c-4c3c9cc13455
macro doMore(n, exp) #do n times of the given expression 'exp'
	quote 			 #represent the begin of the code
		for i = 1:$(esc(n))
			$(esc(exp))
		end
	end
end

# ╔═╡ ae56090e-6d1e-478f-a170-dfba1d7f735b
@doMore(2,println("Hello"))

# ╔═╡ 1b1159b7-38ac-40d9-ac7f-9744791a4d17
md"Example: making a custom doWhile function"

# ╔═╡ d231ad06-3928-4a68-992b-7e795490e471
macro doWhile(exp)
	@assert exp.head == :while

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Printf = "de0858da-6303-5e67-8744-51eddeeeb8d7"
Statistics = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.3"
manifest_format = "2.0"
project_hash = "6d06f3ca0ff912c04005a70a03d76cba033a6b29"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.1.1+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+4"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
version = "1.10.0"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.10.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "7.2.1+1"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"
"""

# ╔═╡ Cell order:
# ╟─9170ff8c-d638-45c6-92bf-6e054b72ef2b
# ╠═962f7a7a-696a-46c2-a3ff-cd2f4b46f660
# ╟─e0dea0f2-4f91-4461-a069-60f08cc04dc6
# ╠═7cb7f3ff-38e8-4287-8abc-64707387eba6
# ╠═d7cfa97c-bf85-4e96-9fb5-a3052fba8ce6
# ╟─92e23160-9597-40c8-adc2-f3b0af00b24f
# ╠═e58038e9-9c4f-4444-a470-32c06822ecdf
# ╟─3f3b6091-23be-4cd4-9b73-0c7004bcf48e
# ╠═47e569f4-eb1d-41c2-9db0-1fcf3371b773
# ╠═08eb6878-464e-4238-893f-276a78fd2baf
# ╠═98f1b1b9-7f7c-4420-8287-da2394087383
# ╠═9396c6c7-432a-479b-ae26-7c2368dfc59d
# ╠═2b8dcc77-9646-4ebe-bd8e-67f8bbf75500
# ╠═dc2768b7-973a-43c3-acbf-f95f9d22cc74
# ╠═e959bb9b-7e28-461d-a087-c92b84f94557
# ╟─a021a96a-ecde-49ce-a0c7-f2711d7f3a62
# ╠═c8c28da4-caf7-4da6-8070-f55b5bd97119
# ╠═b308cd36-b5a0-477b-98c2-319c09f49d6b
# ╟─7e6969b6-9f3e-4b0b-b533-aee9263bd6c2
# ╠═8e616931-95d3-4432-8cff-bf14287235b4
# ╟─148e5178-d7cd-47f8-93d8-5931cc896d20
# ╠═f37f27ba-caf7-435d-8080-54fa8872f20b
# ╠═22abd5d2-fa88-49e4-b67b-798daff2ab0a
# ╠═83392287-382e-4281-9f35-4cefa7821b7e
# ╟─1964328b-facb-4f9d-aa62-e0e76652342a
# ╠═5bf3ee82-5353-428e-8f01-aa2f3d986f72
# ╠═476f3773-d633-42c2-9d4a-ff69469dec99
# ╟─05483621-fd99-4717-b91f-3a01b42281be
# ╠═62ba5e6a-d905-4406-9ff8-f4a6b7aacf11
# ╟─373aa0cf-cdcb-4d85-865e-242b166c81bb
# ╠═d1dd98f9-a893-4419-adcb-96d47ed9e056
# ╠═54fccc2a-2e03-4415-a501-eb806a3ef60d
# ╠═3f2ba7c5-f45c-448f-89ce-5454483743b6
# ╠═5da82a45-4cfa-40fc-a4a4-e7ed67fb5be3
# ╟─72ea76d5-1f0f-4e22-82bf-1fb51cf199d5
# ╠═512d04d3-963a-46b6-9761-747cb62d3be1
# ╠═546fd4a0-3389-4a48-83a9-bea297cae919
# ╟─6ac19a98-a689-4fb4-9e27-ddc27798afa0
# ╠═2ccbed53-f66a-4a17-9677-af7e521ea4cd
# ╟─1d6e4835-f57d-4ed4-b71c-04aca07b94b7
# ╠═2b3cfcf7-05eb-4014-af40-fd8f3edbf839
# ╟─613edad6-7872-4cbf-936f-a95a475a9d57
# ╟─afd08a1b-e81c-4aa7-ad17-31f0f09ed9f1
# ╠═e23d56b0-5e27-4c0b-b004-e5bad0d1892d
# ╟─3cbd4bf1-eafc-4aa0-bc3f-420c04ea4bb5
# ╠═0cf5ee5b-cf59-4c2e-bf11-1c58da2249e8
# ╟─d6c99642-5c7f-44cb-a064-48ee1ecd6631
# ╠═dd0b19b3-87da-40d4-8dac-92e9cfa4d643
# ╟─f686b487-3c2e-45cc-a04f-343c197255fe
# ╠═b27e1ef3-0a59-4d35-978e-a4218674fa44
# ╠═ae055e9c-bb61-482e-9847-5c63eef0f650
# ╠═a22ca526-fcb1-454a-b520-9882cb000f0c
# ╟─6ae67d13-23d0-4d78-b9f0-477c4b8b743f
# ╠═ad98afaa-cc99-421c-a752-33d7ad4b8a05
# ╠═2be6887e-a34e-4ea8-afea-f612ef9dbfb7
# ╟─4d7202f4-4804-4f88-9389-9d225ad2b4f0
# ╠═732bed1e-59c4-4f08-919b-9f4059df25d5
# ╟─38d1ec97-7772-43c2-90e3-bf108f1fd90e
# ╠═f6be682e-e20f-48d5-93a9-b94f61c6aa6f
# ╟─b2449f9e-ffdb-4bed-88fc-0c2902137047
# ╠═701fe122-c281-48cb-8508-71da3d9d2c97
# ╟─188915d1-d81f-4fc1-abea-ca1f85440797
# ╠═cff3a7aa-3a97-4173-b7b9-e25fc1108fe5
# ╟─cb9bb15e-eced-4b39-938d-63aa2e511ff0
# ╠═6fca4c54-6d30-4ff7-9acf-b3c3413cbf6d
# ╟─9255c56c-5943-4784-b7fd-1e497b6eab8e
# ╠═b1cd6a0a-8024-4a8f-bbd9-d9f679093d23
# ╠═9b40eebf-951c-4c13-8419-9e8b8d335fb2
# ╟─8b2e6c05-5669-4973-8b28-4c56916ca582
# ╠═ebeaf1a9-cf9c-49d3-8192-ec0462e623ee
# ╠═77017d96-037e-49ad-b3a0-aca398b4dffe
# ╟─16fc271d-9651-4829-af94-1e5658e8f2c0
# ╠═15b0a99f-f092-43a8-b3d8-ead35c0fc623
# ╠═a2524182-6c73-4586-a3a7-da8832d5fc13
# ╠═b07d21a5-5d2c-471b-b805-36c082c09354
# ╟─e1e7d8d6-19e6-4143-8f36-8f7e6a4f4ea7
# ╟─b65e67b4-fb5e-4126-a786-12d81cc23289
# ╠═d7475748-a5cd-48c9-bfd9-38bb5942b464
# ╠═3c8a6f08-be55-40c6-9f63-459c3ebdff42
# ╠═695ccc0c-e606-47f2-8db5-624eb2d6efb6
# ╠═5cb647c7-3bf8-4701-942f-f2b577128257
# ╟─b5fb8879-9df9-4e42-a48f-09296c5a9b50
# ╠═4575b9ab-c4d8-4194-ba0e-46f4fd08ec7e
# ╠═ed627950-b415-480d-aa77-84fa4218998f
# ╠═f6dc4819-0886-4151-bcac-c15b3f649b06
# ╟─753dde6a-bd80-459c-b24d-958b55e82d45
# ╠═e0e56ff0-9369-4271-8d9d-d2f27e1b47ea
# ╠═398c28e1-2af4-4acf-80ba-03123037ae81
# ╟─7c59dca9-d252-45b8-983a-0312c21ee011
# ╠═3ba44bd9-bec5-4c15-adb3-c87bbb68b5f0
# ╠═a51d12f1-b180-4ee6-bbcf-668e2f185206
# ╠═8d37445f-8c5c-4c14-a379-25cba54e16e1
# ╟─78e74735-20b0-4afe-bb67-bb5de376db67
# ╟─75f4116e-8d52-44f8-9a83-da46faf181a5
# ╠═8ed9fbc5-51d7-45d4-a649-24c0abde4a4e
# ╠═42ca450f-ea5c-46db-be7b-b1f232460cce
# ╟─cd7104c9-5a03-4454-b72c-8108d8f75492
# ╠═216de5a1-7c29-4a63-aa59-91439597c5bf
# ╟─8dc9f132-cebb-403d-a650-02013b79835f
# ╠═d7e78fc0-2247-47ae-9372-3bb3489352b0
# ╠═b686bf83-aeb6-42cb-899e-a3a2d5155bcb
# ╠═8c58546a-0718-4912-ab0c-e36adbc6d2c7
# ╟─291a5b72-3b63-4698-8e3e-3c4933c03953
# ╠═9188262f-ccf2-4fd8-b020-dc70fe17b3fb
# ╠═e07c605a-32cb-4187-922b-d026b350158e
# ╠═c9d4e6a7-bba4-4b78-9f75-b8666ee6d5c0
# ╟─39423865-8ffd-4d76-a6cc-079d66851de7
# ╠═37a27591-fde2-4ce1-bae2-87ed57f839df
# ╠═22f91946-bf0f-4c81-8e9b-e720b0f80bde
# ╟─77af0c19-6d79-4ab6-813d-bd01a5a9a64a
# ╠═7fff2d0e-b6a2-4987-ada1-1574a79434c4
# ╠═b930c4f9-3bfe-49ff-9994-205e4f205897
# ╟─bd0ed576-93e1-473f-8875-8d9ba0690f6e
# ╠═91ab89f8-833f-4c99-9164-fec5b6feed7b
# ╠═c24d572a-fb11-4dc1-ac77-527615ffdb3d
# ╠═bc521f45-7c4a-4e45-bbfe-71347b67b67d
# ╠═0ce5ffc4-76d5-43cc-94de-f3d25cbaafbb
# ╠═1c751919-e65f-4ee1-b30b-720674b19bb7
# ╠═5e6c9b3b-d269-46c4-a885-21bea346c273
# ╠═c646b154-d632-4b34-8c0f-091ae042ed55
# ╟─9b63f337-6bb1-4a97-a913-6f647499d629
# ╠═72b5e84e-7a3d-4465-849c-4c3c9cc13455
# ╠═ae56090e-6d1e-478f-a170-dfba1d7f735b
# ╠═1b1159b7-38ac-40d9-ac7f-9744791a4d17
# ╠═d231ad06-3928-4a68-992b-7e795490e471
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
