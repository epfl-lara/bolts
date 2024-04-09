; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60390 () Bool)

(assert start!60390)

(declare-fun b!678310 () Bool)

(declare-fun e!386528 () Bool)

(declare-datatypes ((List!12979 0))(
  ( (Nil!12976) (Cons!12975 (h!14020 (_ BitVec 64)) (t!19215 List!12979)) )
))
(declare-fun acc!681 () List!12979)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3522 (List!12979 (_ BitVec 64)) Bool)

(assert (=> b!678310 (= e!386528 (contains!3522 acc!681 k!2843))))

(declare-fun b!678311 () Bool)

(declare-fun res!444894 () Bool)

(declare-fun e!386526 () Bool)

(assert (=> b!678311 (=> (not res!444894) (not e!386526))))

(assert (=> b!678311 (= res!444894 (not (contains!3522 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678312 () Bool)

(declare-fun e!386527 () Bool)

(assert (=> b!678312 (= e!386527 (not (contains!3522 acc!681 k!2843)))))

(declare-fun b!678313 () Bool)

(declare-fun res!444900 () Bool)

(assert (=> b!678313 (=> (not res!444900) (not e!386526))))

(declare-datatypes ((array!39393 0))(
  ( (array!39394 (arr!18885 (Array (_ BitVec 32) (_ BitVec 64))) (size!19249 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39393)

(declare-fun arrayNoDuplicates!0 (array!39393 (_ BitVec 32) List!12979) Bool)

(assert (=> b!678313 (= res!444900 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12976))))

(declare-fun b!678314 () Bool)

(declare-fun res!444901 () Bool)

(assert (=> b!678314 (=> (not res!444901) (not e!386526))))

(declare-fun arrayContainsKey!0 (array!39393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678314 (= res!444901 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678315 () Bool)

(declare-fun res!444897 () Bool)

(assert (=> b!678315 (=> (not res!444897) (not e!386526))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!678315 (= res!444897 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678316 () Bool)

(declare-fun res!444903 () Bool)

(assert (=> b!678316 (=> (not res!444903) (not e!386526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678316 (= res!444903 (validKeyInArray!0 k!2843))))

(declare-fun res!444904 () Bool)

(assert (=> start!60390 (=> (not res!444904) (not e!386526))))

(assert (=> start!60390 (= res!444904 (and (bvslt (size!19249 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19249 a!3626))))))

(assert (=> start!60390 e!386526))

(assert (=> start!60390 true))

(declare-fun array_inv!14659 (array!39393) Bool)

(assert (=> start!60390 (array_inv!14659 a!3626)))

(declare-fun b!678317 () Bool)

(declare-fun res!444893 () Bool)

(assert (=> b!678317 (=> (not res!444893) (not e!386526))))

(declare-fun noDuplicate!769 (List!12979) Bool)

(assert (=> b!678317 (= res!444893 (noDuplicate!769 acc!681))))

(declare-fun b!678318 () Bool)

(declare-fun res!444895 () Bool)

(assert (=> b!678318 (=> (not res!444895) (not e!386526))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678318 (= res!444895 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19249 a!3626))))))

(declare-fun b!678319 () Bool)

(assert (=> b!678319 (= e!386526 (not (arrayContainsKey!0 (array!39394 (store (arr!18885 a!3626) i!1382 k!2843) (size!19249 a!3626)) k!2843 from!3004)))))

(declare-fun b!678320 () Bool)

(declare-fun res!444905 () Bool)

(assert (=> b!678320 (=> (not res!444905) (not e!386526))))

(assert (=> b!678320 (= res!444905 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19249 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678321 () Bool)

(declare-fun e!386530 () Bool)

(assert (=> b!678321 (= e!386530 e!386527)))

(declare-fun res!444898 () Bool)

(assert (=> b!678321 (=> (not res!444898) (not e!386527))))

(assert (=> b!678321 (= res!444898 (bvsle from!3004 i!1382))))

(declare-fun b!678322 () Bool)

(declare-fun res!444896 () Bool)

(assert (=> b!678322 (=> (not res!444896) (not e!386526))))

(assert (=> b!678322 (= res!444896 e!386530)))

(declare-fun res!444899 () Bool)

(assert (=> b!678322 (=> res!444899 e!386530)))

(assert (=> b!678322 (= res!444899 e!386528)))

(declare-fun res!444892 () Bool)

(assert (=> b!678322 (=> (not res!444892) (not e!386528))))

(assert (=> b!678322 (= res!444892 (bvsgt from!3004 i!1382))))

(declare-fun b!678323 () Bool)

(declare-fun res!444902 () Bool)

(assert (=> b!678323 (=> (not res!444902) (not e!386526))))

(assert (=> b!678323 (= res!444902 (not (contains!3522 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60390 res!444904) b!678317))

(assert (= (and b!678317 res!444893) b!678311))

(assert (= (and b!678311 res!444894) b!678323))

(assert (= (and b!678323 res!444902) b!678322))

(assert (= (and b!678322 res!444892) b!678310))

(assert (= (and b!678322 (not res!444899)) b!678321))

(assert (= (and b!678321 res!444898) b!678312))

(assert (= (and b!678322 res!444896) b!678313))

(assert (= (and b!678313 res!444900) b!678315))

(assert (= (and b!678315 res!444897) b!678318))

(assert (= (and b!678318 res!444895) b!678316))

(assert (= (and b!678316 res!444903) b!678314))

(assert (= (and b!678314 res!444901) b!678320))

(assert (= (and b!678320 res!444905) b!678319))

(declare-fun m!644115 () Bool)

(assert (=> b!678312 m!644115))

(declare-fun m!644117 () Bool)

(assert (=> b!678316 m!644117))

(declare-fun m!644119 () Bool)

(assert (=> b!678313 m!644119))

(declare-fun m!644121 () Bool)

(assert (=> b!678311 m!644121))

(assert (=> b!678310 m!644115))

(declare-fun m!644123 () Bool)

(assert (=> start!60390 m!644123))

(declare-fun m!644125 () Bool)

(assert (=> b!678315 m!644125))

(declare-fun m!644127 () Bool)

(assert (=> b!678314 m!644127))

(declare-fun m!644129 () Bool)

(assert (=> b!678317 m!644129))

(declare-fun m!644131 () Bool)

(assert (=> b!678319 m!644131))

(declare-fun m!644133 () Bool)

(assert (=> b!678319 m!644133))

(declare-fun m!644135 () Bool)

(assert (=> b!678323 m!644135))

(push 1)

(assert (not b!678323))

(assert (not b!678316))

(assert (not b!678317))

(assert (not b!678311))

(assert (not b!678313))

(assert (not b!678315))

(assert (not b!678312))

(assert (not b!678314))

(assert (not start!60390))

(assert (not b!678310))

(assert (not b!678319))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93295 () Bool)

(declare-fun res!445015 () Bool)

(declare-fun e!386593 () Bool)

(assert (=> d!93295 (=> res!445015 e!386593)))

(assert (=> d!93295 (= res!445015 (bvsge #b00000000000000000000000000000000 (size!19249 a!3626)))))

(assert (=> d!93295 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12976) e!386593)))

(declare-fun bm!33914 () Bool)

(declare-fun call!33917 () Bool)

(declare-fun c!77081 () Bool)

(assert (=> bm!33914 (= call!33917 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77081 (Cons!12975 (select (arr!18885 a!3626) #b00000000000000000000000000000000) Nil!12976) Nil!12976)))))

(declare-fun b!678443 () Bool)

(declare-fun e!386591 () Bool)

(assert (=> b!678443 (= e!386591 call!33917)))

(declare-fun b!678444 () Bool)

(assert (=> b!678444 (= e!386591 call!33917)))

(declare-fun b!678445 () Bool)

(declare-fun e!386594 () Bool)

(assert (=> b!678445 (= e!386594 e!386591)))

(assert (=> b!678445 (= c!77081 (validKeyInArray!0 (select (arr!18885 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!678446 () Bool)

(assert (=> b!678446 (= e!386593 e!386594)))

(declare-fun res!445017 () Bool)

(assert (=> b!678446 (=> (not res!445017) (not e!386594))))

(declare-fun e!386592 () Bool)

(assert (=> b!678446 (= res!445017 (not e!386592))))

(declare-fun res!445016 () Bool)

(assert (=> b!678446 (=> (not res!445016) (not e!386592))))

(assert (=> b!678446 (= res!445016 (validKeyInArray!0 (select (arr!18885 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!678447 () Bool)

(assert (=> b!678447 (= e!386592 (contains!3522 Nil!12976 (select (arr!18885 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!93295 (not res!445015)) b!678446))

(assert (= (and b!678446 res!445016) b!678447))

(assert (= (and b!678446 res!445017) b!678445))

(assert (= (and b!678445 c!77081) b!678444))

(assert (= (and b!678445 (not c!77081)) b!678443))

(assert (= (or b!678444 b!678443) bm!33914))

(declare-fun m!644187 () Bool)

(assert (=> bm!33914 m!644187))

(declare-fun m!644191 () Bool)

(assert (=> bm!33914 m!644191))

(assert (=> b!678445 m!644187))

(assert (=> b!678445 m!644187))

(declare-fun m!644195 () Bool)

(assert (=> b!678445 m!644195))

(assert (=> b!678446 m!644187))

(assert (=> b!678446 m!644187))

(assert (=> b!678446 m!644195))

(assert (=> b!678447 m!644187))

(assert (=> b!678447 m!644187))

(declare-fun m!644199 () Bool)

(assert (=> b!678447 m!644199))

(assert (=> b!678313 d!93295))

(declare-fun d!93309 () Bool)

(declare-fun lt!312840 () Bool)

(declare-fun content!262 (List!12979) (Set (_ BitVec 64)))

(assert (=> d!93309 (= lt!312840 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!262 acc!681)))))

(declare-fun e!386614 () Bool)

(assert (=> d!93309 (= lt!312840 e!386614)))

(declare-fun res!445036 () Bool)

(assert (=> d!93309 (=> (not res!445036) (not e!386614))))

(assert (=> d!93309 (= res!445036 (is-Cons!12975 acc!681))))

(assert (=> d!93309 (= (contains!3522 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!312840)))

(declare-fun b!678466 () Bool)

(declare-fun e!386613 () Bool)

(assert (=> b!678466 (= e!386614 e!386613)))

(declare-fun res!445037 () Bool)

(assert (=> b!678466 (=> res!445037 e!386613)))

(assert (=> b!678466 (= res!445037 (= (h!14020 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!678467 () Bool)

(assert (=> b!678467 (= e!386613 (contains!3522 (t!19215 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93309 res!445036) b!678466))

(assert (= (and b!678466 (not res!445037)) b!678467))

(declare-fun m!644211 () Bool)

(assert (=> d!93309 m!644211))

(declare-fun m!644215 () Bool)

(assert (=> d!93309 m!644215))

(declare-fun m!644219 () Bool)

(assert (=> b!678467 m!644219))

(assert (=> b!678323 d!93309))

(declare-fun d!93317 () Bool)

(declare-fun lt!312841 () Bool)

(assert (=> d!93317 (= lt!312841 (set.member k!2843 (content!262 acc!681)))))

(declare-fun e!386620 () Bool)

(assert (=> d!93317 (= lt!312841 e!386620)))

(declare-fun res!445040 () Bool)

(assert (=> d!93317 (=> (not res!445040) (not e!386620))))

(assert (=> d!93317 (= res!445040 (is-Cons!12975 acc!681))))

(assert (=> d!93317 (= (contains!3522 acc!681 k!2843) lt!312841)))

(declare-fun b!678470 () Bool)

(declare-fun e!386617 () Bool)

(assert (=> b!678470 (= e!386620 e!386617)))

(declare-fun res!445042 () Bool)

(assert (=> b!678470 (=> res!445042 e!386617)))

(assert (=> b!678470 (= res!445042 (= (h!14020 acc!681) k!2843))))

(declare-fun b!678471 () Bool)

(assert (=> b!678471 (= e!386617 (contains!3522 (t!19215 acc!681) k!2843))))

(assert (= (and d!93317 res!445040) b!678470))

(assert (= (and b!678470 (not res!445042)) b!678471))

(assert (=> d!93317 m!644211))

(declare-fun m!644223 () Bool)

(assert (=> d!93317 m!644223))

(declare-fun m!644225 () Bool)

(assert (=> b!678471 m!644225))

(assert (=> b!678312 d!93317))

(declare-fun d!93319 () Bool)

(declare-fun res!445058 () Bool)

(declare-fun e!386635 () Bool)

(assert (=> d!93319 (=> res!445058 e!386635)))

(assert (=> d!93319 (= res!445058 (is-Nil!12976 acc!681))))

(assert (=> d!93319 (= (noDuplicate!769 acc!681) e!386635)))

(declare-fun b!678488 () Bool)

(declare-fun e!386636 () Bool)

(assert (=> b!678488 (= e!386635 e!386636)))

(declare-fun res!445059 () Bool)

(assert (=> b!678488 (=> (not res!445059) (not e!386636))))

(assert (=> b!678488 (= res!445059 (not (contains!3522 (t!19215 acc!681) (h!14020 acc!681))))))

(declare-fun b!678489 () Bool)

(assert (=> b!678489 (= e!386636 (noDuplicate!769 (t!19215 acc!681)))))

(assert (= (and d!93319 (not res!445058)) b!678488))

(assert (= (and b!678488 res!445059) b!678489))

(declare-fun m!644245 () Bool)

(assert (=> b!678488 m!644245))

(declare-fun m!644247 () Bool)

(assert (=> b!678489 m!644247))

(assert (=> b!678317 d!93319))

(declare-fun d!93331 () Bool)

(declare-fun lt!312844 () Bool)

(assert (=> d!93331 (= lt!312844 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!262 acc!681)))))

(declare-fun e!386638 () Bool)

(assert (=> d!93331 (= lt!312844 e!386638)))

(declare-fun res!445060 () Bool)

(assert (=> d!93331 (=> (not res!445060) (not e!386638))))

(assert (=> d!93331 (= res!445060 (is-Cons!12975 acc!681))))

(assert (=> d!93331 (= (contains!3522 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!312844)))

(declare-fun b!678490 () Bool)

(declare-fun e!386637 () Bool)

(assert (=> b!678490 (= e!386638 e!386637)))

(declare-fun res!445061 () Bool)

(assert (=> b!678490 (=> res!445061 e!386637)))

(assert (=> b!678490 (= res!445061 (= (h!14020 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!678491 () Bool)

(assert (=> b!678491 (= e!386637 (contains!3522 (t!19215 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93331 res!445060) b!678490))

(assert (= (and b!678490 (not res!445061)) b!678491))

(assert (=> d!93331 m!644211))

(declare-fun m!644249 () Bool)

(assert (=> d!93331 m!644249))

(declare-fun m!644251 () Bool)

(assert (=> b!678491 m!644251))

(assert (=> b!678311 d!93331))

(declare-fun d!93333 () Bool)

(assert (=> d!93333 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!678316 d!93333))

(assert (=> b!678310 d!93317))

(declare-fun d!93335 () Bool)

(declare-fun res!445072 () Bool)

(declare-fun e!386651 () Bool)

(assert (=> d!93335 (=> res!445072 e!386651)))

(assert (=> d!93335 (= res!445072 (bvsge from!3004 (size!19249 a!3626)))))

(assert (=> d!93335 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!386651)))

(declare-fun bm!33915 () Bool)

(declare-fun c!77082 () Bool)

(declare-fun call!33918 () Bool)

(assert (=> bm!33915 (= call!33918 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77082 (Cons!12975 (select (arr!18885 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!678504 () Bool)

(declare-fun e!386649 () Bool)

(assert (=> b!678504 (= e!386649 call!33918)))

(declare-fun b!678505 () Bool)

(assert (=> b!678505 (= e!386649 call!33918)))

(declare-fun b!678506 () Bool)

(declare-fun e!386652 () Bool)

(assert (=> b!678506 (= e!386652 e!386649)))

(assert (=> b!678506 (= c!77082 (validKeyInArray!0 (select (arr!18885 a!3626) from!3004)))))

(declare-fun b!678507 () Bool)

(assert (=> b!678507 (= e!386651 e!386652)))

(declare-fun res!445074 () Bool)

(assert (=> b!678507 (=> (not res!445074) (not e!386652))))

(declare-fun e!386650 () Bool)

(assert (=> b!678507 (= res!445074 (not e!386650))))

(declare-fun res!445073 () Bool)

(assert (=> b!678507 (=> (not res!445073) (not e!386650))))

(assert (=> b!678507 (= res!445073 (validKeyInArray!0 (select (arr!18885 a!3626) from!3004)))))

(declare-fun b!678508 () Bool)

(assert (=> b!678508 (= e!386650 (contains!3522 acc!681 (select (arr!18885 a!3626) from!3004)))))

(assert (= (and d!93335 (not res!445072)) b!678507))

(assert (= (and b!678507 res!445073) b!678508))

(assert (= (and b!678507 res!445074) b!678506))

(assert (= (and b!678506 c!77082) b!678505))

(assert (= (and b!678506 (not c!77082)) b!678504))

(assert (= (or b!678505 b!678504) bm!33915))

(declare-fun m!644253 () Bool)

(assert (=> bm!33915 m!644253))

(declare-fun m!644255 () Bool)

(assert (=> bm!33915 m!644255))

(assert (=> b!678506 m!644253))

(assert (=> b!678506 m!644253))

(declare-fun m!644257 () Bool)

(assert (=> b!678506 m!644257))

(assert (=> b!678507 m!644253))

(assert (=> b!678507 m!644253))

(assert (=> b!678507 m!644257))

(assert (=> b!678508 m!644253))

(assert (=> b!678508 m!644253))

(declare-fun m!644259 () Bool)

(assert (=> b!678508 m!644259))

(assert (=> b!678315 d!93335))

(declare-fun d!93337 () Bool)

(assert (=> d!93337 (= (array_inv!14659 a!3626) (bvsge (size!19249 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60390 d!93337))

(declare-fun d!93341 () Bool)

(declare-fun res!445092 () Bool)

(declare-fun e!386675 () Bool)

(assert (=> d!93341 (=> res!445092 e!386675)))

(assert (=> d!93341 (= res!445092 (= (select (arr!18885 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!93341 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!386675)))

(declare-fun b!678534 () Bool)

(declare-fun e!386676 () Bool)

(assert (=> b!678534 (= e!386675 e!386676)))

(declare-fun res!445093 () Bool)

(assert (=> b!678534 (=> (not res!445093) (not e!386676))))

(assert (=> b!678534 (= res!445093 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19249 a!3626)))))

(declare-fun b!678535 () Bool)

(assert (=> b!678535 (= e!386676 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93341 (not res!445092)) b!678534))

(assert (= (and b!678534 res!445093) b!678535))

(assert (=> d!93341 m!644187))

(declare-fun m!644285 () Bool)

(assert (=> b!678535 m!644285))

(assert (=> b!678314 d!93341))

(declare-fun d!93353 () Bool)

(declare-fun res!445096 () Bool)

(declare-fun e!386679 () Bool)

(assert (=> d!93353 (=> res!445096 e!386679)))

(assert (=> d!93353 (= res!445096 (= (select (arr!18885 (array!39394 (store (arr!18885 a!3626) i!1382 k!2843) (size!19249 a!3626))) from!3004) k!2843))))

(assert (=> d!93353 (= (arrayContainsKey!0 (array!39394 (store (arr!18885 a!3626) i!1382 k!2843) (size!19249 a!3626)) k!2843 from!3004) e!386679)))

(declare-fun b!678538 () Bool)

(declare-fun e!386680 () Bool)

(assert (=> b!678538 (= e!386679 e!386680)))

(declare-fun res!445097 () Bool)

(assert (=> b!678538 (=> (not res!445097) (not e!386680))))

(assert (=> b!678538 (= res!445097 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19249 (array!39394 (store (arr!18885 a!3626) i!1382 k!2843) (size!19249 a!3626)))))))

(declare-fun b!678539 () Bool)

(assert (=> b!678539 (= e!386680 (arrayContainsKey!0 (array!39394 (store (arr!18885 a!3626) i!1382 k!2843) (size!19249 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93353 (not res!445096)) b!678538))

(assert (= (and b!678538 res!445097) b!678539))

(declare-fun m!644297 () Bool)

(assert (=> d!93353 m!644297))

(declare-fun m!644299 () Bool)

(assert (=> b!678539 m!644299))

(assert (=> b!678319 d!93353))

(push 1)

