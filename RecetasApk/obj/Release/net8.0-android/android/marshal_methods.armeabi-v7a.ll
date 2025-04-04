; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [135 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [270 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 125
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 59
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 118
	i32 159306688, ; 4: System.ComponentModel.Annotations => 0x97ed3c0 => 97
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 69
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 87
	i32 195452805, ; 7: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 8: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 9: System.ComponentModel => 0xc38ff48 => 100
	i32 254259026, ; 10: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 35
	i32 280992041, ; 11: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 12: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 65
	i32 336156722, ; 14: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 76
	i32 347068432, ; 16: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 63
	i32 356389973, ; 17: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 379916513, ; 18: System.Threading.Thread.dll => 0x16a510e1 => 125
	i32 385762202, ; 19: System.Memory.dll => 0x16fe439a => 108
	i32 395744057, ; 20: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 21: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 22: System.Collections => 0x1a61054f => 96
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 75
	i32 469710990, ; 24: System.dll => 0x1bff388e => 129
	i32 498788369, ; 25: System.ObjectModel => 0x1dbae811 => 113
	i32 500358224, ; 26: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 27: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 28: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 53
	i32 539058512, ; 29: Microsoft.Extensions.Logging => 0x20216150 => 49
	i32 571435654, ; 30: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 46
	i32 592146354, ; 31: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 627609679, ; 32: Xamarin.AndroidX.CustomView => 0x2568904f => 73
	i32 627931235, ; 33: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 34: System.Text.Encodings.Web.dll => 0x27787397 => 122
	i32 672442732, ; 35: System.Collections.Concurrent => 0x2814a96c => 94
	i32 688181140, ; 36: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 37: System.Xml.Linq.dll => 0x29293ff5 => 127
	i32 706645707, ; 38: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 39: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 40: System.Runtime.Loader.dll => 0x2b15ed29 => 119
	i32 748832960, ; 41: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 61
	i32 759454413, ; 42: System.Net.Requests => 0x2d445acd => 111
	i32 775507847, ; 43: System.IO.Compression => 0x2e394f87 => 104
	i32 777317022, ; 44: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 45: Microsoft.Extensions.Options => 0x2f0980eb => 52
	i32 804008546, ; 46: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 39
	i32 823281589, ; 47: System.Private.Uri.dll => 0x311247b5 => 114
	i32 830298997, ; 48: System.IO.Compression.Brotli => 0x317d5b75 => 103
	i32 904024072, ; 49: System.ComponentModel.Primitives.dll => 0x35e25008 => 98
	i32 926902833, ; 50: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 51: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 76
	i32 992768348, ; 52: System.Collections.dll => 0x3b2c715c => 96
	i32 999186168, ; 53: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 48
	i32 1012816738, ; 54: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 86
	i32 1028951442, ; 55: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 43
	i32 1029334545, ; 56: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 57: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 66
	i32 1044663988, ; 58: System.Linq.Expressions.dll => 0x3e444eb4 => 106
	i32 1052210849, ; 59: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 78
	i32 1082857460, ; 60: System.ComponentModel.TypeConverter => 0x408b17f4 => 99
	i32 1084122840, ; 61: Xamarin.Kotlin.StdLib => 0x409e66d8 => 91
	i32 1098259244, ; 62: System => 0x41761b2c => 129
	i32 1118262833, ; 63: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1127624469, ; 64: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 51
	i32 1168523401, ; 65: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1173126369, ; 66: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 44
	i32 1178241025, ; 67: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 83
	i32 1203215381, ; 68: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 69: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 70: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 71: SQLitePCLRaw.core.dll => 0x4d0585a0 => 62
	i32 1293217323, ; 72: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 74
	i32 1324164729, ; 73: System.Linq => 0x4eed2679 => 107
	i32 1373134921, ; 74: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 75: Xamarin.AndroidX.SavedState => 0x52114ed3 => 86
	i32 1406073936, ; 76: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 70
	i32 1430672901, ; 77: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1454105418, ; 78: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 45
	i32 1461004990, ; 79: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 80: System.IO.Compression.dll => 0x57261233 => 104
	i32 1469204771, ; 81: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 67
	i32 1470490898, ; 82: Microsoft.Extensions.Primitives => 0x57a5e912 => 53
	i32 1480492111, ; 83: System.IO.Compression.Brotli.dll => 0x583e844f => 103
	i32 1493001747, ; 84: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 85: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1521091094, ; 86: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 48
	i32 1543031311, ; 87: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 124
	i32 1546581739, ; 88: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 39
	i32 1551623176, ; 89: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 90: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 80
	i32 1624863272, ; 91: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 89
	i32 1636350590, ; 92: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 72
	i32 1639515021, ; 93: System.Net.Http.dll => 0x61b9038d => 109
	i32 1639986890, ; 94: System.Text.RegularExpressions => 0x61c036ca => 124
	i32 1654881142, ; 95: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 38
	i32 1657153582, ; 96: System.Runtime => 0x62c6282e => 120
	i32 1658251792, ; 97: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 90
	i32 1677501392, ; 98: System.Net.Primitives.dll => 0x63fca3d0 => 110
	i32 1679769178, ; 99: System.Security.Cryptography => 0x641f3e5a => 121
	i32 1711441057, ; 100: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 63
	i32 1729485958, ; 101: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 68
	i32 1736233607, ; 102: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 103: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1760259689, ; 104: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 37
	i32 1766324549, ; 105: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 87
	i32 1770582343, ; 106: Microsoft.Extensions.Logging.dll => 0x6988f147 => 49
	i32 1780572499, ; 107: Mono.Android.Runtime.dll => 0x6a216153 => 133
	i32 1782862114, ; 108: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 109: Xamarin.AndroidX.Fragment => 0x6a96652d => 75
	i32 1793755602, ; 110: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 111: Xamarin.AndroidX.Loader => 0x6bcd3296 => 80
	i32 1813058853, ; 112: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 91
	i32 1813201214, ; 113: Xamarin.Google.Android.Material => 0x6c13413e => 90
	i32 1818569960, ; 114: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 84
	i32 1828688058, ; 115: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 50
	i32 1842015223, ; 116: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 117: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 118: System.Linq.Expressions => 0x6ec71a65 => 106
	i32 1875935024, ; 119: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 120: System.Collections.NonGeneric.dll => 0x71dc7c8b => 95
	i32 1939592360, ; 121: System.Private.Xml.Linq => 0x739bd4a8 => 115
	i32 1968388702, ; 122: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 40
	i32 2003115576, ; 123: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 124: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 78
	i32 2025202353, ; 125: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 126: System.Private.Xml => 0x79eb68ee => 116
	i32 2055257422, ; 127: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 77
	i32 2066184531, ; 128: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2072397586, ; 129: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 47
	i32 2079903147, ; 130: System.Runtime.dll => 0x7bf8cdab => 120
	i32 2090596640, ; 131: System.Numerics.Vectors => 0x7c9bf920 => 112
	i32 2103459038, ; 132: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 64
	i32 2127167465, ; 133: System.Console => 0x7ec9ffe9 => 101
	i32 2159891885, ; 134: Microsoft.Maui => 0x80bd55ad => 57
	i32 2169148018, ; 135: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 136: Microsoft.Extensions.Options.dll => 0x820d22b3 => 52
	i32 2192057212, ; 137: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 50
	i32 2193016926, ; 138: System.ObjectModel.dll => 0x82b6c85e => 113
	i32 2201107256, ; 139: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 92
	i32 2201231467, ; 140: System.Net.Http => 0x8334206b => 109
	i32 2207618523, ; 141: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 142: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 41
	i32 2270573516, ; 143: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 144: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 85
	i32 2303942373, ; 145: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 146: System.Private.CoreLib.dll => 0x896b7878 => 131
	i32 2340441535, ; 147: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 117
	i32 2353062107, ; 148: System.Net.Primitives => 0x8c40e0db => 110
	i32 2368005991, ; 149: System.Xml.ReaderWriter.dll => 0x8d24e767 => 128
	i32 2371007202, ; 150: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 40
	i32 2395872292, ; 151: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2411328690, ; 152: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 35
	i32 2427813419, ; 153: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 154: System.Console.dll => 0x912896e5 => 101
	i32 2442556106, ; 155: Microsoft.JSInterop.dll => 0x919672ca => 54
	i32 2465273461, ; 156: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 61
	i32 2471841756, ; 157: netstandard.dll => 0x93554fdc => 130
	i32 2475788418, ; 158: Java.Interop.dll => 0x93918882 => 132
	i32 2480646305, ; 159: Microsoft.Maui.Controls => 0x93dba8a1 => 55
	i32 2550873716, ; 160: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2570120770, ; 161: System.Text.Encodings.Web => 0x9930ee42 => 122
	i32 2585813321, ; 162: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 36
	i32 2592341985, ; 163: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 44
	i32 2593496499, ; 164: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 165: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 92
	i32 2616218305, ; 166: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 51
	i32 2617129537, ; 167: System.Private.Xml.dll => 0x9bfe3a41 => 116
	i32 2620871830, ; 168: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 72
	i32 2626831493, ; 169: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 170: System.Runtime.Loader => 0x9ec4cf01 => 119
	i32 2692077919, ; 171: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 38
	i32 2732626843, ; 172: Xamarin.AndroidX.Activity => 0xa2e0939b => 65
	i32 2737747696, ; 173: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 67
	i32 2752995522, ; 174: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 175: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 56
	i32 2764765095, ; 176: Microsoft.Maui.dll => 0xa4caf7a7 => 57
	i32 2778768386, ; 177: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 88
	i32 2785988530, ; 178: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 179: Microsoft.Maui.Graphics => 0xa7008e0b => 59
	i32 2806116107, ; 180: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 181: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 70
	i32 2831556043, ; 182: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 183: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 88
	i32 2861189240, ; 184: Microsoft.Maui.Essentials => 0xaa8a4878 => 58
	i32 2892341533, ; 185: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 37
	i32 2909740682, ; 186: System.Private.CoreLib => 0xad6f1e8a => 131
	i32 2911054922, ; 187: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 47
	i32 2916838712, ; 188: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 89
	i32 2919462931, ; 189: System.Numerics.Vectors.dll => 0xae037813 => 112
	i32 2959614098, ; 190: System.ComponentModel.dll => 0xb0682092 => 100
	i32 2978675010, ; 191: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 74
	i32 3038032645, ; 192: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 193: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 81
	i32 3059408633, ; 194: Mono.Android.Runtime => 0xb65adef9 => 133
	i32 3059793426, ; 195: System.ComponentModel.Primitives => 0xb660be12 => 98
	i32 3077302341, ; 196: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 197: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 82
	i32 3220365878, ; 198: System.Threading => 0xbff2e236 => 126
	i32 3258312781, ; 199: Xamarin.AndroidX.CardView => 0xc235e84d => 68
	i32 3280506390, ; 200: System.ComponentModel.Annotations.dll => 0xc3888e16 => 97
	i32 3286872994, ; 201: SQLite-net.dll => 0xc3e9b3a2 => 60
	i32 3305363605, ; 202: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 203: System.Net.Requests.dll => 0xc5b097e4 => 111
	i32 3317135071, ; 204: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 73
	i32 3346324047, ; 205: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 83
	i32 3357674450, ; 206: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 207: System.Text.Json => 0xc82afec1 => 123
	i32 3360279109, ; 208: SQLitePCLRaw.core => 0xc849ca45 => 62
	i32 3362522851, ; 209: Xamarin.AndroidX.Core => 0xc86c06e3 => 71
	i32 3366347497, ; 210: Java.Interop => 0xc8a662e9 => 132
	i32 3374999561, ; 211: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 85
	i32 3381016424, ; 212: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3406629867, ; 213: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 45
	i32 3428513518, ; 214: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 42
	i32 3430777524, ; 215: netstandard => 0xcc7d82b4 => 130
	i32 3463511458, ; 216: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3464190856, ; 217: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 36
	i32 3471940407, ; 218: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 99
	i32 3476120550, ; 219: Mono.Android => 0xcf3163e6 => 134
	i32 3479583265, ; 220: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 221: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 222: System.Text.Json.dll => 0xcfbaacae => 123
	i32 3500000672, ; 223: Microsoft.JSInterop => 0xd09dc5a0 => 54
	i32 3509114376, ; 224: System.Xml.Linq => 0xd128d608 => 127
	i32 3537655842, ; 225: RecetasApk => 0xd2dc5822 => 93
	i32 3580758918, ; 226: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 227: System.Linq.dll => 0xd715a361 => 107
	i32 3624195450, ; 228: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 117
	i32 3641597786, ; 229: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 77
	i32 3643446276, ; 230: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 231: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 82
	i32 3657292374, ; 232: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 41
	i32 3672681054, ; 233: Mono.Android.dll => 0xdae8aa5e => 134
	i32 3697841164, ; 234: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 235: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 81
	i32 3748608112, ; 236: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 102
	i32 3754567612, ; 237: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 64
	i32 3786282454, ; 238: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 69
	i32 3792276235, ; 239: System.Collections.NonGeneric => 0xe2098b0b => 95
	i32 3823082795, ; 240: System.Security.Cryptography.dll => 0xe3df9d2b => 121
	i32 3841636137, ; 241: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 43
	i32 3849253459, ; 242: System.Runtime.InteropServices.dll => 0xe56ef253 => 118
	i32 3876362041, ; 243: SQLite-net => 0xe70c9739 => 60
	i32 3889960447, ; 244: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 245: System.Collections.Concurrent.dll => 0xe839deed => 94
	i32 3896760992, ; 246: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 71
	i32 3928044579, ; 247: System.Xml.ReaderWriter => 0xea213423 => 128
	i32 3931092270, ; 248: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 84
	i32 3955647286, ; 249: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 66
	i32 3980434154, ; 250: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 251: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 252: System.Memory => 0xeff49a63 => 108
	i32 4046471985, ; 253: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 56
	i32 4068434129, ; 254: System.Private.Xml.Linq.dll => 0xf27f60d1 => 115
	i32 4073602200, ; 255: System.Threading.dll => 0xf2ce3c98 => 126
	i32 4094352644, ; 256: Microsoft.Maui.Essentials.dll => 0xf40add04 => 58
	i32 4100113165, ; 257: System.Private.Uri => 0xf462c30d => 114
	i32 4102112229, ; 258: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 259: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 260: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 42
	i32 4127667938, ; 261: System.IO.FileSystem.Watcher => 0xf60736e2 => 105
	i32 4133684054, ; 262: RecetasApk.dll => 0xf6630356 => 93
	i32 4150914736, ; 263: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4164802419, ; 264: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 105
	i32 4182413190, ; 265: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 79
	i32 4213026141, ; 266: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 102
	i32 4271975918, ; 267: Microsoft.Maui.Controls.dll => 0xfea12dee => 55
	i32 4292120959, ; 268: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 79
	i32 4294648842 ; 269: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 46
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [270 x i32] [
	i32 125, ; 0
	i32 33, ; 1
	i32 59, ; 2
	i32 118, ; 3
	i32 97, ; 4
	i32 69, ; 5
	i32 87, ; 6
	i32 30, ; 7
	i32 31, ; 8
	i32 100, ; 9
	i32 35, ; 10
	i32 2, ; 11
	i32 30, ; 12
	i32 65, ; 13
	i32 15, ; 14
	i32 76, ; 15
	i32 63, ; 16
	i32 14, ; 17
	i32 125, ; 18
	i32 108, ; 19
	i32 34, ; 20
	i32 26, ; 21
	i32 96, ; 22
	i32 75, ; 23
	i32 129, ; 24
	i32 113, ; 25
	i32 13, ; 26
	i32 7, ; 27
	i32 53, ; 28
	i32 49, ; 29
	i32 46, ; 30
	i32 21, ; 31
	i32 73, ; 32
	i32 19, ; 33
	i32 122, ; 34
	i32 94, ; 35
	i32 1, ; 36
	i32 127, ; 37
	i32 16, ; 38
	i32 4, ; 39
	i32 119, ; 40
	i32 61, ; 41
	i32 111, ; 42
	i32 104, ; 43
	i32 25, ; 44
	i32 52, ; 45
	i32 39, ; 46
	i32 114, ; 47
	i32 103, ; 48
	i32 98, ; 49
	i32 28, ; 50
	i32 76, ; 51
	i32 96, ; 52
	i32 48, ; 53
	i32 86, ; 54
	i32 43, ; 55
	i32 3, ; 56
	i32 66, ; 57
	i32 106, ; 58
	i32 78, ; 59
	i32 99, ; 60
	i32 91, ; 61
	i32 129, ; 62
	i32 16, ; 63
	i32 51, ; 64
	i32 22, ; 65
	i32 44, ; 66
	i32 83, ; 67
	i32 20, ; 68
	i32 18, ; 69
	i32 2, ; 70
	i32 62, ; 71
	i32 74, ; 72
	i32 107, ; 73
	i32 32, ; 74
	i32 86, ; 75
	i32 70, ; 76
	i32 0, ; 77
	i32 45, ; 78
	i32 6, ; 79
	i32 104, ; 80
	i32 67, ; 81
	i32 53, ; 82
	i32 103, ; 83
	i32 10, ; 84
	i32 5, ; 85
	i32 48, ; 86
	i32 124, ; 87
	i32 39, ; 88
	i32 25, ; 89
	i32 80, ; 90
	i32 89, ; 91
	i32 72, ; 92
	i32 109, ; 93
	i32 124, ; 94
	i32 38, ; 95
	i32 120, ; 96
	i32 90, ; 97
	i32 110, ; 98
	i32 121, ; 99
	i32 63, ; 100
	i32 68, ; 101
	i32 23, ; 102
	i32 1, ; 103
	i32 37, ; 104
	i32 87, ; 105
	i32 49, ; 106
	i32 133, ; 107
	i32 17, ; 108
	i32 75, ; 109
	i32 9, ; 110
	i32 80, ; 111
	i32 91, ; 112
	i32 90, ; 113
	i32 84, ; 114
	i32 50, ; 115
	i32 29, ; 116
	i32 26, ; 117
	i32 106, ; 118
	i32 8, ; 119
	i32 95, ; 120
	i32 115, ; 121
	i32 40, ; 122
	i32 5, ; 123
	i32 78, ; 124
	i32 0, ; 125
	i32 116, ; 126
	i32 77, ; 127
	i32 4, ; 128
	i32 47, ; 129
	i32 120, ; 130
	i32 112, ; 131
	i32 64, ; 132
	i32 101, ; 133
	i32 57, ; 134
	i32 12, ; 135
	i32 52, ; 136
	i32 50, ; 137
	i32 113, ; 138
	i32 92, ; 139
	i32 109, ; 140
	i32 14, ; 141
	i32 41, ; 142
	i32 8, ; 143
	i32 85, ; 144
	i32 18, ; 145
	i32 131, ; 146
	i32 117, ; 147
	i32 110, ; 148
	i32 128, ; 149
	i32 40, ; 150
	i32 13, ; 151
	i32 35, ; 152
	i32 10, ; 153
	i32 101, ; 154
	i32 54, ; 155
	i32 61, ; 156
	i32 130, ; 157
	i32 132, ; 158
	i32 55, ; 159
	i32 11, ; 160
	i32 122, ; 161
	i32 36, ; 162
	i32 44, ; 163
	i32 20, ; 164
	i32 92, ; 165
	i32 51, ; 166
	i32 116, ; 167
	i32 72, ; 168
	i32 15, ; 169
	i32 119, ; 170
	i32 38, ; 171
	i32 65, ; 172
	i32 67, ; 173
	i32 21, ; 174
	i32 56, ; 175
	i32 57, ; 176
	i32 88, ; 177
	i32 27, ; 178
	i32 59, ; 179
	i32 6, ; 180
	i32 70, ; 181
	i32 19, ; 182
	i32 88, ; 183
	i32 58, ; 184
	i32 37, ; 185
	i32 131, ; 186
	i32 47, ; 187
	i32 89, ; 188
	i32 112, ; 189
	i32 100, ; 190
	i32 74, ; 191
	i32 34, ; 192
	i32 81, ; 193
	i32 133, ; 194
	i32 98, ; 195
	i32 12, ; 196
	i32 82, ; 197
	i32 126, ; 198
	i32 68, ; 199
	i32 97, ; 200
	i32 60, ; 201
	i32 7, ; 202
	i32 111, ; 203
	i32 73, ; 204
	i32 83, ; 205
	i32 24, ; 206
	i32 123, ; 207
	i32 62, ; 208
	i32 71, ; 209
	i32 132, ; 210
	i32 85, ; 211
	i32 3, ; 212
	i32 45, ; 213
	i32 42, ; 214
	i32 130, ; 215
	i32 11, ; 216
	i32 36, ; 217
	i32 99, ; 218
	i32 134, ; 219
	i32 24, ; 220
	i32 23, ; 221
	i32 123, ; 222
	i32 54, ; 223
	i32 127, ; 224
	i32 93, ; 225
	i32 31, ; 226
	i32 107, ; 227
	i32 117, ; 228
	i32 77, ; 229
	i32 28, ; 230
	i32 82, ; 231
	i32 41, ; 232
	i32 134, ; 233
	i32 33, ; 234
	i32 81, ; 235
	i32 102, ; 236
	i32 64, ; 237
	i32 69, ; 238
	i32 95, ; 239
	i32 121, ; 240
	i32 43, ; 241
	i32 118, ; 242
	i32 60, ; 243
	i32 32, ; 244
	i32 94, ; 245
	i32 71, ; 246
	i32 128, ; 247
	i32 84, ; 248
	i32 66, ; 249
	i32 27, ; 250
	i32 9, ; 251
	i32 108, ; 252
	i32 56, ; 253
	i32 115, ; 254
	i32 126, ; 255
	i32 58, ; 256
	i32 114, ; 257
	i32 22, ; 258
	i32 17, ; 259
	i32 42, ; 260
	i32 105, ; 261
	i32 93, ; 262
	i32 29, ; 263
	i32 105, ; 264
	i32 79, ; 265
	i32 102, ; 266
	i32 55, ; 267
	i32 79, ; 268
	i32 46 ; 269
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
