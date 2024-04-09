; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102248 () Bool)

(assert start!102248)

(declare-fun b!1230427 () Bool)

(declare-fun res!819021 () Bool)

(declare-fun e!698137 () Bool)

(assert (=> b!1230427 (=> (not res!819021) (not e!698137))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230427 (= res!819021 (validKeyInArray!0 k!2913))))

(declare-fun res!819022 () Bool)

(assert (=> start!102248 (=> (not res!819022) (not e!698137))))

(declare-datatypes ((array!79362 0))(
  ( (array!79363 (arr!38297 (Array (_ BitVec 32) (_ BitVec 64))) (size!38834 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79362)

(assert (=> start!102248 (= res!819022 (bvslt (size!38834 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102248 e!698137))

(declare-fun array_inv!29073 (array!79362) Bool)

(assert (=> start!102248 (array_inv!29073 a!3806)))

(assert (=> start!102248 true))

(declare-fun b!1230428 () Bool)

(declare-fun res!819026 () Bool)

(assert (=> b!1230428 (=> (not res!819026) (not e!698137))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1230428 (= res!819026 (validKeyInArray!0 (select (arr!38297 a!3806) from!3184)))))

(declare-datatypes ((List!27248 0))(
  ( (Nil!27245) (Cons!27244 (h!28453 (_ BitVec 64)) (t!40718 List!27248)) )
))
(declare-fun acc!823 () List!27248)

(declare-fun b!1230429 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79362 (_ BitVec 32) List!27248) Bool)

(assert (=> b!1230429 (= e!698137 (not (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27244 (select (arr!38297 a!3806) from!3184) acc!823))))))

(declare-fun b!1230430 () Bool)

(declare-fun res!819019 () Bool)

(assert (=> b!1230430 (=> (not res!819019) (not e!698137))))

(assert (=> b!1230430 (= res!819019 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38834 a!3806)) (bvslt from!3184 (size!38834 a!3806))))))

(declare-fun b!1230431 () Bool)

(declare-fun res!819025 () Bool)

(assert (=> b!1230431 (=> (not res!819025) (not e!698137))))

(declare-fun noDuplicate!1770 (List!27248) Bool)

(assert (=> b!1230431 (= res!819025 (noDuplicate!1770 acc!823))))

(declare-fun b!1230432 () Bool)

(declare-fun res!819020 () Bool)

(assert (=> b!1230432 (=> (not res!819020) (not e!698137))))

(declare-fun contains!7163 (List!27248 (_ BitVec 64)) Bool)

(assert (=> b!1230432 (= res!819020 (not (contains!7163 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230433 () Bool)

(declare-fun res!819023 () Bool)

(assert (=> b!1230433 (=> (not res!819023) (not e!698137))))

(assert (=> b!1230433 (= res!819023 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230434 () Bool)

(declare-fun res!819024 () Bool)

(assert (=> b!1230434 (=> (not res!819024) (not e!698137))))

(declare-fun arrayContainsKey!0 (array!79362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230434 (= res!819024 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230435 () Bool)

(declare-fun res!819018 () Bool)

(assert (=> b!1230435 (=> (not res!819018) (not e!698137))))

(assert (=> b!1230435 (= res!819018 (not (contains!7163 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102248 res!819022) b!1230427))

(assert (= (and b!1230427 res!819021) b!1230430))

(assert (= (and b!1230430 res!819019) b!1230431))

(assert (= (and b!1230431 res!819025) b!1230435))

(assert (= (and b!1230435 res!819018) b!1230432))

(assert (= (and b!1230432 res!819020) b!1230434))

(assert (= (and b!1230434 res!819024) b!1230433))

(assert (= (and b!1230433 res!819023) b!1230428))

(assert (= (and b!1230428 res!819026) b!1230429))

(declare-fun m!1134897 () Bool)

(assert (=> b!1230432 m!1134897))

(declare-fun m!1134899 () Bool)

(assert (=> start!102248 m!1134899))

(declare-fun m!1134901 () Bool)

(assert (=> b!1230428 m!1134901))

(assert (=> b!1230428 m!1134901))

(declare-fun m!1134903 () Bool)

(assert (=> b!1230428 m!1134903))

(declare-fun m!1134905 () Bool)

(assert (=> b!1230434 m!1134905))

(declare-fun m!1134907 () Bool)

(assert (=> b!1230431 m!1134907))

(declare-fun m!1134909 () Bool)

(assert (=> b!1230435 m!1134909))

(declare-fun m!1134911 () Bool)

(assert (=> b!1230433 m!1134911))

(declare-fun m!1134913 () Bool)

(assert (=> b!1230427 m!1134913))

(assert (=> b!1230429 m!1134901))

(declare-fun m!1134915 () Bool)

(assert (=> b!1230429 m!1134915))

(push 1)

(assert (not b!1230435))

(assert (not b!1230431))

(assert (not b!1230433))

(assert (not start!102248))

(assert (not b!1230429))

(assert (not b!1230434))

(assert (not b!1230432))

(assert (not b!1230428))

(assert (not b!1230427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134535 () Bool)

(declare-fun res!819049 () Bool)

(declare-fun e!698164 () Bool)

(assert (=> d!134535 (=> res!819049 e!698164)))

(assert (=> d!134535 (= res!819049 (is-Nil!27245 acc!823))))

(assert (=> d!134535 (= (noDuplicate!1770 acc!823) e!698164)))

(declare-fun b!1230466 () Bool)

(declare-fun e!698165 () Bool)

(assert (=> b!1230466 (= e!698164 e!698165)))

(declare-fun res!819050 () Bool)

(assert (=> b!1230466 (=> (not res!819050) (not e!698165))))

(assert (=> b!1230466 (= res!819050 (not (contains!7163 (t!40718 acc!823) (h!28453 acc!823))))))

(declare-fun b!1230467 () Bool)

(assert (=> b!1230467 (= e!698165 (noDuplicate!1770 (t!40718 acc!823)))))

(assert (= (and d!134535 (not res!819049)) b!1230466))

(assert (= (and b!1230466 res!819050) b!1230467))

(declare-fun m!1134933 () Bool)

(assert (=> b!1230466 m!1134933))

(declare-fun m!1134935 () Bool)

(assert (=> b!1230467 m!1134935))

(assert (=> b!1230431 d!134535))

(declare-fun d!134541 () Bool)

(declare-fun res!819071 () Bool)

(declare-fun e!698186 () Bool)

(assert (=> d!134541 (=> res!819071 e!698186)))

(assert (=> d!134541 (= res!819071 (= (select (arr!38297 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134541 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!698186)))

(declare-fun b!1230488 () Bool)

(declare-fun e!698187 () Bool)

(assert (=> b!1230488 (= e!698186 e!698187)))

(declare-fun res!819072 () Bool)

(assert (=> b!1230488 (=> (not res!819072) (not e!698187))))

(assert (=> b!1230488 (= res!819072 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38834 a!3806)))))

(declare-fun b!1230489 () Bool)

(assert (=> b!1230489 (= e!698187 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134541 (not res!819071)) b!1230488))

(assert (= (and b!1230488 res!819072) b!1230489))

(declare-fun m!1134957 () Bool)

(assert (=> d!134541 m!1134957))

(declare-fun m!1134959 () Bool)

(assert (=> b!1230489 m!1134959))

(assert (=> b!1230434 d!134541))

(declare-fun bm!60861 () Bool)

(declare-fun c!120576 () Bool)

(declare-fun call!60864 () Bool)

(assert (=> bm!60861 (= call!60864 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120576 (Cons!27244 (select (arr!38297 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27244 (select (arr!38297 a!3806) from!3184) acc!823)) (Cons!27244 (select (arr!38297 a!3806) from!3184) acc!823))))))

(declare-fun e!698220 () Bool)

(declare-fun b!1230527 () Bool)

(assert (=> b!1230527 (= e!698220 (contains!7163 (Cons!27244 (select (arr!38297 a!3806) from!3184) acc!823) (select (arr!38297 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!134553 () Bool)

(declare-fun res!819100 () Bool)

(declare-fun e!698222 () Bool)

(assert (=> d!134553 (=> res!819100 e!698222)))

(assert (=> d!134553 (= res!819100 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38834 a!3806)))))

(assert (=> d!134553 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27244 (select (arr!38297 a!3806) from!3184) acc!823)) e!698222)))

(declare-fun b!1230528 () Bool)

(declare-fun e!698221 () Bool)

(assert (=> b!1230528 (= e!698222 e!698221)))

(declare-fun res!819102 () Bool)

(assert (=> b!1230528 (=> (not res!819102) (not e!698221))))

(assert (=> b!1230528 (= res!819102 (not e!698220))))

(declare-fun res!819101 () Bool)

(assert (=> b!1230528 (=> (not res!819101) (not e!698220))))

(assert (=> b!1230528 (= res!819101 (validKeyInArray!0 (select (arr!38297 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1230529 () Bool)

(declare-fun e!698223 () Bool)

(assert (=> b!1230529 (= e!698223 call!60864)))

(declare-fun b!1230530 () Bool)

(assert (=> b!1230530 (= e!698223 call!60864)))

(declare-fun b!1230531 () Bool)

(assert (=> b!1230531 (= e!698221 e!698223)))

(assert (=> b!1230531 (= c!120576 (validKeyInArray!0 (select (arr!38297 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134553 (not res!819100)) b!1230528))

(assert (= (and b!1230528 res!819101) b!1230527))

(assert (= (and b!1230528 res!819102) b!1230531))

(assert (= (and b!1230531 c!120576) b!1230529))

(assert (= (and b!1230531 (not c!120576)) b!1230530))

(assert (= (or b!1230529 b!1230530) bm!60861))

(assert (=> bm!60861 m!1134957))

(declare-fun m!1134971 () Bool)

(assert (=> bm!60861 m!1134971))

(assert (=> b!1230527 m!1134957))

(assert (=> b!1230527 m!1134957))

(declare-fun m!1134973 () Bool)

(assert (=> b!1230527 m!1134973))

(assert (=> b!1230528 m!1134957))

(assert (=> b!1230528 m!1134957))

(declare-fun m!1134975 () Bool)

(assert (=> b!1230528 m!1134975))

(assert (=> b!1230531 m!1134957))

(assert (=> b!1230531 m!1134957))

(assert (=> b!1230531 m!1134975))

(assert (=> b!1230429 d!134553))

(declare-fun d!134559 () Bool)

(declare-fun lt!559327 () Bool)

(declare-fun content!566 (List!27248) (Set (_ BitVec 64)))

(assert (=> d!134559 (= lt!559327 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!566 acc!823)))))

(declare-fun e!698239 () Bool)

(assert (=> d!134559 (= lt!559327 e!698239)))

(declare-fun res!819117 () Bool)

(assert (=> d!134559 (=> (not res!819117) (not e!698239))))

(assert (=> d!134559 (= res!819117 (is-Cons!27244 acc!823))))

