; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102052 () Bool)

(assert start!102052)

(declare-fun b!1228341 () Bool)

(declare-fun res!817077 () Bool)

(declare-fun e!697205 () Bool)

(assert (=> b!1228341 (=> (not res!817077) (not e!697205))))

(declare-datatypes ((List!27204 0))(
  ( (Nil!27201) (Cons!27200 (h!28409 (_ BitVec 64)) (t!40674 List!27204)) )
))
(declare-fun acc!823 () List!27204)

(declare-fun contains!7119 (List!27204 (_ BitVec 64)) Bool)

(assert (=> b!1228341 (= res!817077 (not (contains!7119 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228343 () Bool)

(declare-fun res!817071 () Bool)

(assert (=> b!1228343 (=> (not res!817071) (not e!697205))))

(declare-fun noDuplicate!1726 (List!27204) Bool)

(assert (=> b!1228343 (= res!817071 (noDuplicate!1726 acc!823))))

(declare-fun b!1228344 () Bool)

(declare-fun res!817075 () Bool)

(assert (=> b!1228344 (=> (not res!817075) (not e!697205))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79268 0))(
  ( (array!79269 (arr!38253 (Array (_ BitVec 32) (_ BitVec 64))) (size!38790 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79268)

(assert (=> b!1228344 (= res!817075 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38790 a!3806)) (bvslt from!3184 (size!38790 a!3806))))))

(declare-fun b!1228345 () Bool)

(declare-fun res!817078 () Bool)

(assert (=> b!1228345 (=> (not res!817078) (not e!697205))))

(declare-fun arrayNoDuplicates!0 (array!79268 (_ BitVec 32) List!27204) Bool)

(assert (=> b!1228345 (= res!817078 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228346 () Bool)

(declare-fun e!697207 () Bool)

(assert (=> b!1228346 (= e!697207 (noDuplicate!1726 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201)))))

(declare-fun b!1228342 () Bool)

(declare-fun res!817073 () Bool)

(assert (=> b!1228342 (=> (not res!817073) (not e!697205))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228342 (= res!817073 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!817079 () Bool)

(assert (=> start!102052 (=> (not res!817079) (not e!697205))))

(assert (=> start!102052 (= res!817079 (bvslt (size!38790 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102052 e!697205))

(declare-fun array_inv!29029 (array!79268) Bool)

(assert (=> start!102052 (array_inv!29029 a!3806)))

(assert (=> start!102052 true))

(declare-fun b!1228347 () Bool)

(declare-fun res!817076 () Bool)

(assert (=> b!1228347 (=> (not res!817076) (not e!697205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228347 (= res!817076 (validKeyInArray!0 k!2913))))

(declare-fun b!1228348 () Bool)

(declare-fun res!817074 () Bool)

(assert (=> b!1228348 (=> (not res!817074) (not e!697205))))

(assert (=> b!1228348 (= res!817074 (validKeyInArray!0 (select (arr!38253 a!3806) from!3184)))))

(declare-fun b!1228349 () Bool)

(assert (=> b!1228349 (= e!697205 (not e!697207))))

(declare-fun res!817070 () Bool)

(assert (=> b!1228349 (=> res!817070 e!697207)))

(assert (=> b!1228349 (= res!817070 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1228349 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27201)))

(declare-datatypes ((Unit!40646 0))(
  ( (Unit!40647) )
))
(declare-fun lt!558935 () Unit!40646)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79268 List!27204 List!27204 (_ BitVec 32)) Unit!40646)

(assert (=> b!1228349 (= lt!558935 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27201 from!3184))))

(assert (=> b!1228349 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823))))

(declare-fun b!1228350 () Bool)

(declare-fun res!817072 () Bool)

(assert (=> b!1228350 (=> (not res!817072) (not e!697205))))

(assert (=> b!1228350 (= res!817072 (not (contains!7119 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102052 res!817079) b!1228347))

(assert (= (and b!1228347 res!817076) b!1228344))

(assert (= (and b!1228344 res!817075) b!1228343))

(assert (= (and b!1228343 res!817071) b!1228341))

(assert (= (and b!1228341 res!817077) b!1228350))

(assert (= (and b!1228350 res!817072) b!1228342))

(assert (= (and b!1228342 res!817073) b!1228345))

(assert (= (and b!1228345 res!817078) b!1228348))

(assert (= (and b!1228348 res!817074) b!1228349))

(assert (= (and b!1228349 (not res!817070)) b!1228346))

(declare-fun m!1132925 () Bool)

(assert (=> b!1228348 m!1132925))

(assert (=> b!1228348 m!1132925))

(declare-fun m!1132927 () Bool)

(assert (=> b!1228348 m!1132927))

(declare-fun m!1132929 () Bool)

(assert (=> start!102052 m!1132929))

(declare-fun m!1132931 () Bool)

(assert (=> b!1228347 m!1132931))

(declare-fun m!1132933 () Bool)

(assert (=> b!1228342 m!1132933))

(declare-fun m!1132935 () Bool)

(assert (=> b!1228341 m!1132935))

(declare-fun m!1132937 () Bool)

(assert (=> b!1228345 m!1132937))

(declare-fun m!1132939 () Bool)

(assert (=> b!1228350 m!1132939))

(assert (=> b!1228346 m!1132925))

(declare-fun m!1132941 () Bool)

(assert (=> b!1228346 m!1132941))

(declare-fun m!1132943 () Bool)

(assert (=> b!1228343 m!1132943))

(declare-fun m!1132945 () Bool)

(assert (=> b!1228349 m!1132945))

(declare-fun m!1132947 () Bool)

(assert (=> b!1228349 m!1132947))

(assert (=> b!1228349 m!1132925))

(declare-fun m!1132949 () Bool)

(assert (=> b!1228349 m!1132949))

(push 1)

(assert (not start!102052))

(assert (not b!1228343))

(assert (not b!1228347))

(assert (not b!1228350))

(assert (not b!1228349))

(assert (not b!1228342))

(assert (not b!1228346))

(assert (not b!1228348))

(assert (not b!1228341))

(assert (not b!1228345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134139 () Bool)

(assert (=> d!134139 (= (validKeyInArray!0 (select (arr!38253 a!3806) from!3184)) (and (not (= (select (arr!38253 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38253 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228348 d!134139))

(declare-fun d!134143 () Bool)

(assert (=> d!134143 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228347 d!134143))

(declare-fun d!134145 () Bool)

(assert (=> d!134145 (= (array_inv!29029 a!3806) (bvsge (size!38790 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102052 d!134145))

(declare-fun d!134151 () Bool)

(declare-fun res!817168 () Bool)

(declare-fun e!697254 () Bool)

(assert (=> d!134151 (=> res!817168 e!697254)))

(assert (=> d!134151 (= res!817168 (= (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134151 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!697254)))

(declare-fun b!1228439 () Bool)

(declare-fun e!697255 () Bool)

(assert (=> b!1228439 (= e!697254 e!697255)))

(declare-fun res!817169 () Bool)

(assert (=> b!1228439 (=> (not res!817169) (not e!697255))))

(assert (=> b!1228439 (= res!817169 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38790 a!3806)))))

(declare-fun b!1228440 () Bool)

(assert (=> b!1228440 (= e!697255 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134151 (not res!817168)) b!1228439))

(assert (= (and b!1228439 res!817169) b!1228440))

(declare-fun m!1133021 () Bool)

(assert (=> d!134151 m!1133021))

(declare-fun m!1133023 () Bool)

(assert (=> b!1228440 m!1133023))

(assert (=> b!1228342 d!134151))

(declare-fun d!134155 () Bool)

(declare-fun lt!558951 () Bool)

(declare-fun content!560 (List!27204) (Set (_ BitVec 64)))

(assert (=> d!134155 (= lt!558951 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!560 acc!823)))))

(declare-fun e!697277 () Bool)

(assert (=> d!134155 (= lt!558951 e!697277)))

(declare-fun res!817190 () Bool)

(assert (=> d!134155 (=> (not res!817190) (not e!697277))))

(assert (=> d!134155 (= res!817190 (is-Cons!27200 acc!823))))

(assert (=> d!134155 (= (contains!7119 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!558951)))

(declare-fun b!1228465 () Bool)

(declare-fun e!697279 () Bool)

(assert (=> b!1228465 (= e!697277 e!697279)))

(declare-fun res!817191 () Bool)

(assert (=> b!1228465 (=> res!817191 e!697279)))

(assert (=> b!1228465 (= res!817191 (= (h!28409 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228466 () Bool)

(assert (=> b!1228466 (= e!697279 (contains!7119 (t!40674 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134155 res!817190) b!1228465))

(assert (= (and b!1228465 (not res!817191)) b!1228466))

(declare-fun m!1133035 () Bool)

(assert (=> d!134155 m!1133035))

(declare-fun m!1133039 () Bool)

(assert (=> d!134155 m!1133039))

(declare-fun m!1133043 () Bool)

(assert (=> b!1228466 m!1133043))

(assert (=> b!1228341 d!134155))

(declare-fun d!134163 () Bool)

(declare-fun res!817203 () Bool)

(declare-fun e!697292 () Bool)

(assert (=> d!134163 (=> res!817203 e!697292)))

(assert (=> d!134163 (= res!817203 (is-Nil!27201 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201)))))

(assert (=> d!134163 (= (noDuplicate!1726 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201)) e!697292)))

(declare-fun b!1228480 () Bool)

(declare-fun e!697293 () Bool)

(assert (=> b!1228480 (= e!697292 e!697293)))

(declare-fun res!817204 () Bool)

(assert (=> b!1228480 (=> (not res!817204) (not e!697293))))

(assert (=> b!1228480 (= res!817204 (not (contains!7119 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201)) (h!28409 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201)))))))

(declare-fun b!1228481 () Bool)

(assert (=> b!1228481 (= e!697293 (noDuplicate!1726 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201))))))

(assert (= (and d!134163 (not res!817203)) b!1228480))

(assert (= (and b!1228480 res!817204) b!1228481))

(declare-fun m!1133045 () Bool)

(assert (=> b!1228480 m!1133045))

(declare-fun m!1133047 () Bool)

(assert (=> b!1228481 m!1133047))

(assert (=> b!1228346 d!134163))

(declare-fun b!1228516 () Bool)

(declare-fun e!697324 () Bool)

(declare-fun e!697325 () Bool)

(assert (=> b!1228516 (= e!697324 e!697325)))

(declare-fun c!120507 () Bool)

(assert (=> b!1228516 (= c!120507 (validKeyInArray!0 (select (arr!38253 a!3806) from!3184)))))

(declare-fun bm!60813 () Bool)

(declare-fun call!60816 () Bool)

(assert (=> bm!60813 (= call!60816 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120507 (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1228517 () Bool)

(assert (=> b!1228517 (= e!697325 call!60816)))

(declare-fun b!1228518 () Bool)

(declare-fun e!697323 () Bool)

(assert (=> b!1228518 (= e!697323 e!697324)))

(declare-fun res!817227 () Bool)

(assert (=> b!1228518 (=> (not res!817227) (not e!697324))))

(declare-fun e!697322 () Bool)

(assert (=> b!1228518 (= res!817227 (not e!697322))))

(declare-fun res!817229 () Bool)

(assert (=> b!1228518 (=> (not res!817229) (not e!697322))))

(assert (=> b!1228518 (= res!817229 (validKeyInArray!0 (select (arr!38253 a!3806) from!3184)))))

(declare-fun b!1228519 () Bool)

(assert (=> b!1228519 (= e!697325 call!60816)))

(declare-fun d!134165 () Bool)

(declare-fun res!817228 () Bool)

(assert (=> d!134165 (=> res!817228 e!697323)))

(assert (=> d!134165 (= res!817228 (bvsge from!3184 (size!38790 a!3806)))))

(assert (=> d!134165 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!697323)))

(declare-fun b!1228520 () Bool)

(assert (=> b!1228520 (= e!697322 (contains!7119 acc!823 (select (arr!38253 a!3806) from!3184)))))

(assert (= (and d!134165 (not res!817228)) b!1228518))

(assert (= (and b!1228518 res!817229) b!1228520))

(assert (= (and b!1228518 res!817227) b!1228516))

(assert (= (and b!1228516 c!120507) b!1228519))

(assert (= (and b!1228516 (not c!120507)) b!1228517))

(assert (= (or b!1228519 b!1228517) bm!60813))

(assert (=> b!1228516 m!1132925))

(assert (=> b!1228516 m!1132925))

(assert (=> b!1228516 m!1132927))

(assert (=> bm!60813 m!1132925))

(declare-fun m!1133073 () Bool)

(assert (=> bm!60813 m!1133073))

(assert (=> b!1228518 m!1132925))

(assert (=> b!1228518 m!1132925))

(assert (=> b!1228518 m!1132927))

(assert (=> b!1228520 m!1132925))

(assert (=> b!1228520 m!1132925))

(declare-fun m!1133077 () Bool)

(assert (=> b!1228520 m!1133077))

(assert (=> b!1228345 d!134165))

(declare-fun d!134179 () Bool)

(declare-fun lt!558956 () Bool)

(assert (=> d!134179 (= lt!558956 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!560 acc!823)))))

(declare-fun e!697330 () Bool)

(assert (=> d!134179 (= lt!558956 e!697330)))

(declare-fun res!817233 () Bool)

(assert (=> d!134179 (=> (not res!817233) (not e!697330))))

(assert (=> d!134179 (= res!817233 (is-Cons!27200 acc!823))))

(assert (=> d!134179 (= (contains!7119 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!558956)))

(declare-fun b!1228526 () Bool)

(declare-fun e!697331 () Bool)

(assert (=> b!1228526 (= e!697330 e!697331)))

(declare-fun res!817234 () Bool)

(assert (=> b!1228526 (=> res!817234 e!697331)))

(assert (=> b!1228526 (= res!817234 (= (h!28409 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228527 () Bool)

(assert (=> b!1228527 (= e!697331 (contains!7119 (t!40674 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134179 res!817233) b!1228526))

(assert (= (and b!1228526 (not res!817234)) b!1228527))

(assert (=> d!134179 m!1133035))

(declare-fun m!1133081 () Bool)

(assert (=> d!134179 m!1133081))

(declare-fun m!1133083 () Bool)

(assert (=> b!1228527 m!1133083))

(assert (=> b!1228350 d!134179))

(declare-fun b!1228528 () Bool)

(declare-fun e!697334 () Bool)

(declare-fun e!697335 () Bool)

(assert (=> b!1228528 (= e!697334 e!697335)))

(declare-fun c!120509 () Bool)

(assert (=> b!1228528 (= c!120509 (validKeyInArray!0 (select (arr!38253 a!3806) from!3184)))))

(declare-fun call!60818 () Bool)

(declare-fun bm!60815 () Bool)

(assert (=> bm!60815 (= call!60818 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120509 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201) Nil!27201)))))

(declare-fun b!1228529 () Bool)

(assert (=> b!1228529 (= e!697335 call!60818)))

(declare-fun b!1228530 () Bool)

(declare-fun e!697333 () Bool)

(assert (=> b!1228530 (= e!697333 e!697334)))

(declare-fun res!817235 () Bool)

(assert (=> b!1228530 (=> (not res!817235) (not e!697334))))

(declare-fun e!697332 () Bool)

(assert (=> b!1228530 (= res!817235 (not e!697332))))

(declare-fun res!817237 () Bool)

(assert (=> b!1228530 (=> (not res!817237) (not e!697332))))

(assert (=> b!1228530 (= res!817237 (validKeyInArray!0 (select (arr!38253 a!3806) from!3184)))))

(declare-fun b!1228531 () Bool)

(assert (=> b!1228531 (= e!697335 call!60818)))

(declare-fun d!134183 () Bool)

(declare-fun res!817236 () Bool)

(assert (=> d!134183 (=> res!817236 e!697333)))

(assert (=> d!134183 (= res!817236 (bvsge from!3184 (size!38790 a!3806)))))

(assert (=> d!134183 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27201) e!697333)))

(declare-fun b!1228532 () Bool)

(assert (=> b!1228532 (= e!697332 (contains!7119 Nil!27201 (select (arr!38253 a!3806) from!3184)))))

(assert (= (and d!134183 (not res!817236)) b!1228530))

(assert (= (and b!1228530 res!817237) b!1228532))

(assert (= (and b!1228530 res!817235) b!1228528))

(assert (= (and b!1228528 c!120509) b!1228531))

(assert (= (and b!1228528 (not c!120509)) b!1228529))

(assert (= (or b!1228531 b!1228529) bm!60815))

(assert (=> b!1228528 m!1132925))

(assert (=> b!1228528 m!1132925))

(assert (=> b!1228528 m!1132927))

(assert (=> bm!60815 m!1132925))

(declare-fun m!1133085 () Bool)

(assert (=> bm!60815 m!1133085))

(assert (=> b!1228530 m!1132925))

(assert (=> b!1228530 m!1132925))

(assert (=> b!1228530 m!1132927))

(assert (=> b!1228532 m!1132925))

(assert (=> b!1228532 m!1132925))

(declare-fun m!1133087 () Bool)

(assert (=> b!1228532 m!1133087))

(assert (=> b!1228349 d!134183))

(declare-fun d!134187 () Bool)

(assert (=> d!134187 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27201)))

(declare-fun lt!558959 () Unit!40646)

(declare-fun choose!80 (array!79268 List!27204 List!27204 (_ BitVec 32)) Unit!40646)

(assert (=> d!134187 (= lt!558959 (choose!80 a!3806 acc!823 Nil!27201 from!3184))))

(assert (=> d!134187 (bvslt (size!38790 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!134187 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27201 from!3184) lt!558959)))

(declare-fun bs!34528 () Bool)

(assert (= bs!34528 d!134187))

(assert (=> bs!34528 m!1132945))

(declare-fun m!1133097 () Bool)

(assert (=> bs!34528 m!1133097))

(assert (=> b!1228349 d!134187))

(declare-fun b!1228540 () Bool)

(declare-fun e!697344 () Bool)

(declare-fun e!697345 () Bool)

(assert (=> b!1228540 (= e!697344 e!697345)))

(declare-fun c!120511 () Bool)

(assert (=> b!1228540 (= c!120511 (validKeyInArray!0 (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun bm!60817 () Bool)

(declare-fun call!60820 () Bool)

(assert (=> bm!60817 (= call!60820 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120511 (Cons!27200 (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823)) (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823))))))

(declare-fun b!1228541 () Bool)

(assert (=> b!1228541 (= e!697345 call!60820)))

(declare-fun b!1228542 () Bool)

(declare-fun e!697343 () Bool)

(assert (=> b!1228542 (= e!697343 e!697344)))

(declare-fun res!817243 () Bool)

(assert (=> b!1228542 (=> (not res!817243) (not e!697344))))

(declare-fun e!697342 () Bool)

(assert (=> b!1228542 (= res!817243 (not e!697342))))

(declare-fun res!817245 () Bool)

(assert (=> b!1228542 (=> (not res!817245) (not e!697342))))

(assert (=> b!1228542 (= res!817245 (validKeyInArray!0 (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228543 () Bool)

(assert (=> b!1228543 (= e!697345 call!60820)))

(declare-fun d!134197 () Bool)

(declare-fun res!817244 () Bool)

(assert (=> d!134197 (=> res!817244 e!697343)))

(assert (=> d!134197 (= res!817244 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38790 a!3806)))))

(assert (=> d!134197 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823)) e!697343)))

(declare-fun b!1228544 () Bool)

(assert (=> b!1228544 (= e!697342 (contains!7119 (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823) (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134197 (not res!817244)) b!1228542))

(assert (= (and b!1228542 res!817245) b!1228544))

(assert (= (and b!1228542 res!817243) b!1228540))

(assert (= (and b!1228540 c!120511) b!1228543))

(assert (= (and b!1228540 (not c!120511)) b!1228541))

(assert (= (or b!1228543 b!1228541) bm!60817))

(assert (=> b!1228540 m!1133021))

(assert (=> b!1228540 m!1133021))

(declare-fun m!1133099 () Bool)

(assert (=> b!1228540 m!1133099))

(assert (=> bm!60817 m!1133021))

(declare-fun m!1133101 () Bool)

(assert (=> bm!60817 m!1133101))

(assert (=> b!1228542 m!1133021))

(assert (=> b!1228542 m!1133021))

(assert (=> b!1228542 m!1133099))

(assert (=> b!1228544 m!1133021))

(assert (=> b!1228544 m!1133021))

(declare-fun m!1133103 () Bool)

(assert (=> b!1228544 m!1133103))

(assert (=> b!1228349 d!134197))

(declare-fun d!134199 () Bool)

(declare-fun res!817246 () Bool)

(declare-fun e!697346 () Bool)

(assert (=> d!134199 (=> res!817246 e!697346)))

(assert (=> d!134199 (= res!817246 (is-Nil!27201 acc!823))))

(assert (=> d!134199 (= (noDuplicate!1726 acc!823) e!697346)))

(declare-fun b!1228545 () Bool)

(declare-fun e!697347 () Bool)

(assert (=> b!1228545 (= e!697346 e!697347)))

(declare-fun res!817247 () Bool)

(assert (=> b!1228545 (=> (not res!817247) (not e!697347))))

(assert (=> b!1228545 (= res!817247 (not (contains!7119 (t!40674 acc!823) (h!28409 acc!823))))))

(declare-fun b!1228546 () Bool)

(assert (=> b!1228546 (= e!697347 (noDuplicate!1726 (t!40674 acc!823)))))

(assert (= (and d!134199 (not res!817246)) b!1228545))

(assert (= (and b!1228545 res!817247) b!1228546))

(declare-fun m!1133105 () Bool)

(assert (=> b!1228545 m!1133105))

(declare-fun m!1133107 () Bool)

(assert (=> b!1228546 m!1133107))

(assert (=> b!1228343 d!134199))

(push 1)

(assert (not b!1228528))

(assert (not d!134187))

(assert (not b!1228546))

(assert (not b!1228540))

(assert (not b!1228518))

(assert (not b!1228542))

(assert (not b!1228530))

(assert (not bm!60815))

(assert (not bm!60813))

(assert (not b!1228480))

(assert (not b!1228481))

(assert (not b!1228532))

(assert (not b!1228520))

(assert (not b!1228516))

(assert (not bm!60817))

(assert (not b!1228545))

(assert (not b!1228527))

(assert (not d!134179))

(assert (not d!134155))

(assert (not b!1228466))

(assert (not b!1228440))

(assert (not b!1228544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134235 () Bool)

(declare-fun res!817280 () Bool)

(declare-fun e!697387 () Bool)

(assert (=> d!134235 (=> res!817280 e!697387)))

(assert (=> d!134235 (= res!817280 (= (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) k!2913))))

(assert (=> d!134235 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) e!697387)))

(declare-fun b!1228593 () Bool)

(declare-fun e!697388 () Bool)

(assert (=> b!1228593 (= e!697387 e!697388)))

(declare-fun res!817281 () Bool)

(assert (=> b!1228593 (=> (not res!817281) (not e!697388))))

(assert (=> b!1228593 (= res!817281 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!38790 a!3806)))))

(declare-fun b!1228594 () Bool)

(assert (=> b!1228594 (= e!697388 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!134235 (not res!817280)) b!1228593))

(assert (= (and b!1228593 res!817281) b!1228594))

(declare-fun m!1133185 () Bool)

(assert (=> d!134235 m!1133185))

(declare-fun m!1133187 () Bool)

(assert (=> b!1228594 m!1133187))

(assert (=> b!1228440 d!134235))

(declare-fun d!134237 () Bool)

(declare-fun lt!558970 () Bool)

(assert (=> d!134237 (= lt!558970 (set.member (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (content!560 (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823))))))

(declare-fun e!697389 () Bool)

(assert (=> d!134237 (= lt!558970 e!697389)))

(declare-fun res!817282 () Bool)

(assert (=> d!134237 (=> (not res!817282) (not e!697389))))

(assert (=> d!134237 (= res!817282 (is-Cons!27200 (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823)))))

(assert (=> d!134237 (= (contains!7119 (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823) (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) lt!558970)))

(declare-fun b!1228595 () Bool)

(declare-fun e!697390 () Bool)

(assert (=> b!1228595 (= e!697389 e!697390)))

(declare-fun res!817283 () Bool)

(assert (=> b!1228595 (=> res!817283 e!697390)))

(assert (=> b!1228595 (= res!817283 (= (h!28409 (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823)) (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228596 () Bool)

(assert (=> b!1228596 (= e!697390 (contains!7119 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823)) (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134237 res!817282) b!1228595))

(assert (= (and b!1228595 (not res!817283)) b!1228596))

(declare-fun m!1133189 () Bool)

(assert (=> d!134237 m!1133189))

(assert (=> d!134237 m!1133021))

(declare-fun m!1133191 () Bool)

(assert (=> d!134237 m!1133191))

(assert (=> b!1228596 m!1133021))

(declare-fun m!1133193 () Bool)

(assert (=> b!1228596 m!1133193))

(assert (=> b!1228544 d!134237))

(assert (=> b!1228518 d!134139))

(declare-fun d!134239 () Bool)

(declare-fun lt!558971 () Bool)

(assert (=> d!134239 (= lt!558971 (set.member (h!28409 acc!823) (content!560 (t!40674 acc!823))))))

(declare-fun e!697391 () Bool)

(assert (=> d!134239 (= lt!558971 e!697391)))

(declare-fun res!817284 () Bool)

(assert (=> d!134239 (=> (not res!817284) (not e!697391))))

(assert (=> d!134239 (= res!817284 (is-Cons!27200 (t!40674 acc!823)))))

(assert (=> d!134239 (= (contains!7119 (t!40674 acc!823) (h!28409 acc!823)) lt!558971)))

(declare-fun b!1228597 () Bool)

(declare-fun e!697392 () Bool)

(assert (=> b!1228597 (= e!697391 e!697392)))

(declare-fun res!817285 () Bool)

(assert (=> b!1228597 (=> res!817285 e!697392)))

(assert (=> b!1228597 (= res!817285 (= (h!28409 (t!40674 acc!823)) (h!28409 acc!823)))))

(declare-fun b!1228598 () Bool)

(assert (=> b!1228598 (= e!697392 (contains!7119 (t!40674 (t!40674 acc!823)) (h!28409 acc!823)))))

(assert (= (and d!134239 res!817284) b!1228597))

(assert (= (and b!1228597 (not res!817285)) b!1228598))

(declare-fun m!1133195 () Bool)

(assert (=> d!134239 m!1133195))

(declare-fun m!1133197 () Bool)

(assert (=> d!134239 m!1133197))

(declare-fun m!1133199 () Bool)

(assert (=> b!1228598 m!1133199))

(assert (=> b!1228545 d!134239))

(declare-fun d!134241 () Bool)

(declare-fun res!817286 () Bool)

(declare-fun e!697393 () Bool)

(assert (=> d!134241 (=> res!817286 e!697393)))

(assert (=> d!134241 (= res!817286 (is-Nil!27201 (t!40674 acc!823)))))

(assert (=> d!134241 (= (noDuplicate!1726 (t!40674 acc!823)) e!697393)))

(declare-fun b!1228599 () Bool)

(declare-fun e!697394 () Bool)

(assert (=> b!1228599 (= e!697393 e!697394)))

(declare-fun res!817287 () Bool)

(assert (=> b!1228599 (=> (not res!817287) (not e!697394))))

(assert (=> b!1228599 (= res!817287 (not (contains!7119 (t!40674 (t!40674 acc!823)) (h!28409 (t!40674 acc!823)))))))

(declare-fun b!1228600 () Bool)

(assert (=> b!1228600 (= e!697394 (noDuplicate!1726 (t!40674 (t!40674 acc!823))))))

(assert (= (and d!134241 (not res!817286)) b!1228599))

(assert (= (and b!1228599 res!817287) b!1228600))

(declare-fun m!1133201 () Bool)

(assert (=> b!1228599 m!1133201))

(declare-fun m!1133203 () Bool)

(assert (=> b!1228600 m!1133203))

(assert (=> b!1228546 d!134241))

(declare-fun d!134243 () Bool)

(declare-fun lt!558972 () Bool)

(assert (=> d!134243 (= lt!558972 (set.member (h!28409 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201)) (content!560 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201)))))))

(declare-fun e!697395 () Bool)

(assert (=> d!134243 (= lt!558972 e!697395)))

(declare-fun res!817288 () Bool)

(assert (=> d!134243 (=> (not res!817288) (not e!697395))))

(assert (=> d!134243 (= res!817288 (is-Cons!27200 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201))))))

(assert (=> d!134243 (= (contains!7119 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201)) (h!28409 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201))) lt!558972)))

(declare-fun b!1228601 () Bool)

(declare-fun e!697396 () Bool)

(assert (=> b!1228601 (= e!697395 e!697396)))

(declare-fun res!817289 () Bool)

(assert (=> b!1228601 (=> res!817289 e!697396)))

(assert (=> b!1228601 (= res!817289 (= (h!28409 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201))) (h!28409 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201))))))

(declare-fun b!1228602 () Bool)

(assert (=> b!1228602 (= e!697396 (contains!7119 (t!40674 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201))) (h!28409 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201))))))

(assert (= (and d!134243 res!817288) b!1228601))

(assert (= (and b!1228601 (not res!817289)) b!1228602))

(declare-fun m!1133205 () Bool)

(assert (=> d!134243 m!1133205))

(declare-fun m!1133207 () Bool)

(assert (=> d!134243 m!1133207))

(declare-fun m!1133209 () Bool)

(assert (=> b!1228602 m!1133209))

(assert (=> b!1228480 d!134243))

(declare-fun b!1228603 () Bool)

(declare-fun e!697399 () Bool)

(declare-fun e!697400 () Bool)

(assert (=> b!1228603 (= e!697399 e!697400)))

(declare-fun c!120519 () Bool)

(assert (=> b!1228603 (= c!120519 (validKeyInArray!0 (select (arr!38253 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun call!60825 () Bool)

(declare-fun bm!60822 () Bool)

(assert (=> bm!60822 (= call!60825 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120519 (Cons!27200 (select (arr!38253 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120507 (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823) acc!823)) (ite c!120507 (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823) acc!823))))))

(declare-fun b!1228604 () Bool)

(assert (=> b!1228604 (= e!697400 call!60825)))

(declare-fun b!1228605 () Bool)

(declare-fun e!697398 () Bool)

(assert (=> b!1228605 (= e!697398 e!697399)))

(declare-fun res!817290 () Bool)

(assert (=> b!1228605 (=> (not res!817290) (not e!697399))))

(declare-fun e!697397 () Bool)

(assert (=> b!1228605 (= res!817290 (not e!697397))))

(declare-fun res!817292 () Bool)

(assert (=> b!1228605 (=> (not res!817292) (not e!697397))))

(assert (=> b!1228605 (= res!817292 (validKeyInArray!0 (select (arr!38253 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228606 () Bool)

(assert (=> b!1228606 (= e!697400 call!60825)))

(declare-fun d!134245 () Bool)

(declare-fun res!817291 () Bool)

(assert (=> d!134245 (=> res!817291 e!697398)))

(assert (=> d!134245 (= res!817291 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38790 a!3806)))))

(assert (=> d!134245 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120507 (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823) acc!823)) e!697398)))

(declare-fun b!1228607 () Bool)

(assert (=> b!1228607 (= e!697397 (contains!7119 (ite c!120507 (Cons!27200 (select (arr!38253 a!3806) from!3184) acc!823) acc!823) (select (arr!38253 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134245 (not res!817291)) b!1228605))

(assert (= (and b!1228605 res!817292) b!1228607))

(assert (= (and b!1228605 res!817290) b!1228603))

(assert (= (and b!1228603 c!120519) b!1228606))

(assert (= (and b!1228603 (not c!120519)) b!1228604))

(assert (= (or b!1228606 b!1228604) bm!60822))

(declare-fun m!1133211 () Bool)

(assert (=> b!1228603 m!1133211))

(assert (=> b!1228603 m!1133211))

(declare-fun m!1133213 () Bool)

(assert (=> b!1228603 m!1133213))

(assert (=> bm!60822 m!1133211))

(declare-fun m!1133215 () Bool)

(assert (=> bm!60822 m!1133215))

(assert (=> b!1228605 m!1133211))

(assert (=> b!1228605 m!1133211))

(assert (=> b!1228605 m!1133213))

(assert (=> b!1228607 m!1133211))

(assert (=> b!1228607 m!1133211))

(declare-fun m!1133217 () Bool)

(assert (=> b!1228607 m!1133217))

(assert (=> bm!60813 d!134245))

(assert (=> b!1228528 d!134139))

(declare-fun d!134247 () Bool)

(declare-fun lt!558973 () Bool)

(assert (=> d!134247 (= lt!558973 (set.member (select (arr!38253 a!3806) from!3184) (content!560 acc!823)))))

(declare-fun e!697401 () Bool)

(assert (=> d!134247 (= lt!558973 e!697401)))

(declare-fun res!817293 () Bool)

(assert (=> d!134247 (=> (not res!817293) (not e!697401))))

(assert (=> d!134247 (= res!817293 (is-Cons!27200 acc!823))))

(assert (=> d!134247 (= (contains!7119 acc!823 (select (arr!38253 a!3806) from!3184)) lt!558973)))

(declare-fun b!1228608 () Bool)

(declare-fun e!697402 () Bool)

(assert (=> b!1228608 (= e!697401 e!697402)))

(declare-fun res!817294 () Bool)

(assert (=> b!1228608 (=> res!817294 e!697402)))

(assert (=> b!1228608 (= res!817294 (= (h!28409 acc!823) (select (arr!38253 a!3806) from!3184)))))

(declare-fun b!1228609 () Bool)

(assert (=> b!1228609 (= e!697402 (contains!7119 (t!40674 acc!823) (select (arr!38253 a!3806) from!3184)))))

(assert (= (and d!134247 res!817293) b!1228608))

(assert (= (and b!1228608 (not res!817294)) b!1228609))

(assert (=> d!134247 m!1133035))

(assert (=> d!134247 m!1132925))

(declare-fun m!1133219 () Bool)

(assert (=> d!134247 m!1133219))

(assert (=> b!1228609 m!1132925))

(declare-fun m!1133221 () Bool)

(assert (=> b!1228609 m!1133221))

(assert (=> b!1228520 d!134247))

(declare-fun d!134249 () Bool)

(declare-fun res!817295 () Bool)

(declare-fun e!697403 () Bool)

(assert (=> d!134249 (=> res!817295 e!697403)))

(assert (=> d!134249 (= res!817295 (is-Nil!27201 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201))))))

(assert (=> d!134249 (= (noDuplicate!1726 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201))) e!697403)))

(declare-fun b!1228610 () Bool)

(declare-fun e!697404 () Bool)

(assert (=> b!1228610 (= e!697403 e!697404)))

(declare-fun res!817296 () Bool)

(assert (=> b!1228610 (=> (not res!817296) (not e!697404))))

(assert (=> b!1228610 (= res!817296 (not (contains!7119 (t!40674 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201))) (h!28409 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201))))))))

(declare-fun b!1228611 () Bool)

(assert (=> b!1228611 (= e!697404 (noDuplicate!1726 (t!40674 (t!40674 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201)))))))

(assert (= (and d!134249 (not res!817295)) b!1228610))

(assert (= (and b!1228610 res!817296) b!1228611))

(declare-fun m!1133223 () Bool)

(assert (=> b!1228610 m!1133223))

(declare-fun m!1133225 () Bool)

(assert (=> b!1228611 m!1133225))

(assert (=> b!1228481 d!134249))

(declare-fun d!134251 () Bool)

(declare-fun lt!558974 () Bool)

(assert (=> d!134251 (= lt!558974 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!560 (t!40674 acc!823))))))

(declare-fun e!697405 () Bool)

(assert (=> d!134251 (= lt!558974 e!697405)))

(declare-fun res!817297 () Bool)

(assert (=> d!134251 (=> (not res!817297) (not e!697405))))

(assert (=> d!134251 (= res!817297 (is-Cons!27200 (t!40674 acc!823)))))

(assert (=> d!134251 (= (contains!7119 (t!40674 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000) lt!558974)))

(declare-fun b!1228612 () Bool)

(declare-fun e!697406 () Bool)

(assert (=> b!1228612 (= e!697405 e!697406)))

(declare-fun res!817298 () Bool)

(assert (=> b!1228612 (=> res!817298 e!697406)))

(assert (=> b!1228612 (= res!817298 (= (h!28409 (t!40674 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228613 () Bool)

(assert (=> b!1228613 (= e!697406 (contains!7119 (t!40674 (t!40674 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134251 res!817297) b!1228612))

(assert (= (and b!1228612 (not res!817298)) b!1228613))

(assert (=> d!134251 m!1133195))

(declare-fun m!1133227 () Bool)

(assert (=> d!134251 m!1133227))

(declare-fun m!1133229 () Bool)

(assert (=> b!1228613 m!1133229))

(assert (=> b!1228527 d!134251))

(declare-fun d!134253 () Bool)

(declare-fun c!120522 () Bool)

(assert (=> d!134253 (= c!120522 (is-Nil!27201 acc!823))))

(declare-fun e!697409 () (Set (_ BitVec 64)))

(assert (=> d!134253 (= (content!560 acc!823) e!697409)))

(declare-fun b!1228618 () Bool)

(assert (=> b!1228618 (= e!697409 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!1228619 () Bool)

(assert (=> b!1228619 (= e!697409 (set.union (set.insert (h!28409 acc!823) (as set.empty (Set (_ BitVec 64)))) (content!560 (t!40674 acc!823))))))

(assert (= (and d!134253 c!120522) b!1228618))

(assert (= (and d!134253 (not c!120522)) b!1228619))

(declare-fun m!1133231 () Bool)

(assert (=> b!1228619 m!1133231))

(assert (=> b!1228619 m!1133195))

(assert (=> d!134179 d!134253))

(declare-fun d!134255 () Bool)

(assert (=> d!134255 (= (validKeyInArray!0 (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) (and (not (= (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38253 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228540 d!134255))

(declare-fun b!1228620 () Bool)

(declare-fun e!697412 () Bool)

(declare-fun e!697413 () Bool)

(assert (=> b!1228620 (= e!697412 e!697413)))

(declare-fun c!120523 () Bool)

(assert (=> b!1228620 (= c!120523 (validKeyInArray!0 (select (arr!38253 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun bm!60823 () Bool)

(declare-fun call!60826 () Bool)

(assert (=> bm!60823 (= call!60826 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120523 (Cons!27200 (select (arr!38253 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120509 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201) Nil!27201)) (ite c!120509 (Cons!27200 (select (arr!38253 a!3806) from!3184) Nil!27201) Nil!27201))))))

