; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102500 () Bool)

(assert start!102500)

(declare-fun b!1232435 () Bool)

(declare-fun res!820918 () Bool)

(declare-fun e!699039 () Bool)

(assert (=> b!1232435 (=> (not res!820918) (not e!699039))))

(declare-datatypes ((List!27296 0))(
  ( (Nil!27293) (Cons!27292 (h!28501 (_ BitVec 64)) (t!40766 List!27296)) )
))
(declare-fun acc!823 () List!27296)

(declare-fun noDuplicate!1818 (List!27296) Bool)

(assert (=> b!1232435 (= res!820918 (noDuplicate!1818 acc!823))))

(declare-fun b!1232437 () Bool)

(declare-fun e!699038 () Bool)

(declare-datatypes ((array!79470 0))(
  ( (array!79471 (arr!38345 (Array (_ BitVec 32) (_ BitVec 64))) (size!38882 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79470)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1232437 (= e!699038 (noDuplicate!1818 (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293)))))

(declare-fun b!1232438 () Bool)

(assert (=> b!1232438 (= e!699039 (not e!699038))))

(declare-fun res!820923 () Bool)

(assert (=> b!1232438 (=> res!820923 e!699038)))

(assert (=> b!1232438 (= res!820923 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-fun e!699037 () Bool)

(assert (=> b!1232438 e!699037))

(declare-fun res!820926 () Bool)

(assert (=> b!1232438 (=> (not res!820926) (not e!699037))))

(declare-fun arrayNoDuplicates!0 (array!79470 (_ BitVec 32) List!27296) Bool)

(assert (=> b!1232438 (= res!820926 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27293))))

(declare-datatypes ((Unit!40770 0))(
  ( (Unit!40771) )
))
(declare-fun lt!559466 () Unit!40770)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79470 List!27296 List!27296 (_ BitVec 32)) Unit!40770)

(assert (=> b!1232438 (= lt!559466 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27293 from!3184))))

(assert (=> b!1232438 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27292 (select (arr!38345 a!3806) from!3184) acc!823))))

(declare-fun b!1232439 () Bool)

(declare-fun res!820928 () Bool)

(assert (=> b!1232439 (=> (not res!820928) (not e!699039))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232439 (= res!820928 (validKeyInArray!0 k!2913))))

(declare-fun b!1232440 () Bool)

(assert (=> b!1232440 (= e!699037 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293)))))

(declare-fun b!1232441 () Bool)

(declare-fun res!820921 () Bool)

(assert (=> b!1232441 (=> (not res!820921) (not e!699039))))

(declare-fun contains!7211 (List!27296 (_ BitVec 64)) Bool)

(assert (=> b!1232441 (= res!820921 (not (contains!7211 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232442 () Bool)

(declare-fun res!820927 () Bool)

(assert (=> b!1232442 (=> (not res!820927) (not e!699039))))

(assert (=> b!1232442 (= res!820927 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232443 () Bool)

(declare-fun res!820922 () Bool)

(assert (=> b!1232443 (=> (not res!820922) (not e!699039))))

(assert (=> b!1232443 (= res!820922 (validKeyInArray!0 (select (arr!38345 a!3806) from!3184)))))

(declare-fun b!1232444 () Bool)

(declare-fun res!820925 () Bool)

(assert (=> b!1232444 (=> (not res!820925) (not e!699039))))

(assert (=> b!1232444 (= res!820925 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38882 a!3806)) (bvslt from!3184 (size!38882 a!3806))))))

(declare-fun b!1232445 () Bool)

(declare-fun res!820920 () Bool)

(assert (=> b!1232445 (=> (not res!820920) (not e!699039))))

(assert (=> b!1232445 (= res!820920 (not (contains!7211 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!820919 () Bool)

(assert (=> start!102500 (=> (not res!820919) (not e!699039))))

(assert (=> start!102500 (= res!820919 (bvslt (size!38882 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102500 e!699039))

(declare-fun array_inv!29121 (array!79470) Bool)

(assert (=> start!102500 (array_inv!29121 a!3806)))

(assert (=> start!102500 true))

(declare-fun b!1232436 () Bool)

(declare-fun res!820924 () Bool)

(assert (=> b!1232436 (=> (not res!820924) (not e!699039))))

(declare-fun arrayContainsKey!0 (array!79470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232436 (= res!820924 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102500 res!820919) b!1232439))

(assert (= (and b!1232439 res!820928) b!1232444))

(assert (= (and b!1232444 res!820925) b!1232435))

(assert (= (and b!1232435 res!820918) b!1232441))

(assert (= (and b!1232441 res!820921) b!1232445))

(assert (= (and b!1232445 res!820920) b!1232436))

(assert (= (and b!1232436 res!820924) b!1232442))

(assert (= (and b!1232442 res!820927) b!1232443))

(assert (= (and b!1232443 res!820922) b!1232438))

(assert (= (and b!1232438 res!820926) b!1232440))

(assert (= (and b!1232438 (not res!820923)) b!1232437))

(declare-fun m!1136485 () Bool)

(assert (=> b!1232442 m!1136485))

(declare-fun m!1136487 () Bool)

(assert (=> b!1232439 m!1136487))

(declare-fun m!1136489 () Bool)

(assert (=> start!102500 m!1136489))

(declare-fun m!1136491 () Bool)

(assert (=> b!1232437 m!1136491))

(declare-fun m!1136493 () Bool)

(assert (=> b!1232437 m!1136493))

(declare-fun m!1136495 () Bool)

(assert (=> b!1232436 m!1136495))

(declare-fun m!1136497 () Bool)

(assert (=> b!1232438 m!1136497))

(declare-fun m!1136499 () Bool)

(assert (=> b!1232438 m!1136499))

(assert (=> b!1232438 m!1136491))

(declare-fun m!1136501 () Bool)

(assert (=> b!1232438 m!1136501))

(assert (=> b!1232440 m!1136491))

(declare-fun m!1136503 () Bool)

(assert (=> b!1232440 m!1136503))

(assert (=> b!1232443 m!1136491))

(assert (=> b!1232443 m!1136491))

(declare-fun m!1136505 () Bool)

(assert (=> b!1232443 m!1136505))

(declare-fun m!1136507 () Bool)

(assert (=> b!1232435 m!1136507))

(declare-fun m!1136509 () Bool)

(assert (=> b!1232441 m!1136509))

(declare-fun m!1136511 () Bool)

(assert (=> b!1232445 m!1136511))

(push 1)

(assert (not b!1232445))

(assert (not b!1232438))

(assert (not b!1232437))

(assert (not start!102500))

(assert (not b!1232443))

(assert (not b!1232436))

(assert (not b!1232440))

(assert (not b!1232435))

(assert (not b!1232439))

(assert (not b!1232441))

(assert (not b!1232442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134827 () Bool)

(assert (=> d!134827 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232439 d!134827))

(declare-fun b!1232512 () Bool)

(declare-fun e!699100 () Bool)

(assert (=> b!1232512 (= e!699100 (contains!7211 Nil!27293 (select (arr!38345 a!3806) from!3184)))))

(declare-fun b!1232513 () Bool)

(declare-fun e!699098 () Bool)

(declare-fun call!60919 () Bool)

(assert (=> b!1232513 (= e!699098 call!60919)))

(declare-fun c!120631 () Bool)

(declare-fun bm!60916 () Bool)

(assert (=> bm!60916 (= call!60919 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120631 (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293) Nil!27293)))))

(declare-fun b!1232514 () Bool)

(declare-fun e!699099 () Bool)

(assert (=> b!1232514 (= e!699099 e!699098)))

(assert (=> b!1232514 (= c!120631 (validKeyInArray!0 (select (arr!38345 a!3806) from!3184)))))

(declare-fun d!134831 () Bool)

(declare-fun res!820977 () Bool)

(declare-fun e!699097 () Bool)

(assert (=> d!134831 (=> res!820977 e!699097)))

(assert (=> d!134831 (= res!820977 (bvsge from!3184 (size!38882 a!3806)))))

(assert (=> d!134831 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27293) e!699097)))

(declare-fun b!1232515 () Bool)

(assert (=> b!1232515 (= e!699097 e!699099)))

(declare-fun res!820975 () Bool)

(assert (=> b!1232515 (=> (not res!820975) (not e!699099))))

(assert (=> b!1232515 (= res!820975 (not e!699100))))

(declare-fun res!820976 () Bool)

(assert (=> b!1232515 (=> (not res!820976) (not e!699100))))

(assert (=> b!1232515 (= res!820976 (validKeyInArray!0 (select (arr!38345 a!3806) from!3184)))))

(declare-fun b!1232516 () Bool)

(assert (=> b!1232516 (= e!699098 call!60919)))

(assert (= (and d!134831 (not res!820977)) b!1232515))

(assert (= (and b!1232515 res!820976) b!1232512))

(assert (= (and b!1232515 res!820975) b!1232514))

(assert (= (and b!1232514 c!120631) b!1232516))

(assert (= (and b!1232514 (not c!120631)) b!1232513))

(assert (= (or b!1232516 b!1232513) bm!60916))

(assert (=> b!1232512 m!1136491))

(assert (=> b!1232512 m!1136491))

(declare-fun m!1136557 () Bool)

(assert (=> b!1232512 m!1136557))

(assert (=> bm!60916 m!1136491))

(declare-fun m!1136559 () Bool)

(assert (=> bm!60916 m!1136559))

(assert (=> b!1232514 m!1136491))

(assert (=> b!1232514 m!1136491))

(assert (=> b!1232514 m!1136505))

(assert (=> b!1232515 m!1136491))

(assert (=> b!1232515 m!1136491))

(assert (=> b!1232515 m!1136505))

(assert (=> b!1232438 d!134831))

(declare-fun d!134857 () Bool)

(assert (=> d!134857 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27293)))

(declare-fun lt!559476 () Unit!40770)

(declare-fun choose!80 (array!79470 List!27296 List!27296 (_ BitVec 32)) Unit!40770)

(assert (=> d!134857 (= lt!559476 (choose!80 a!3806 acc!823 Nil!27293 from!3184))))

(assert (=> d!134857 (bvslt (size!38882 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!134857 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27293 from!3184) lt!559476)))

(declare-fun bs!34633 () Bool)

(assert (= bs!34633 d!134857))

(assert (=> bs!34633 m!1136497))

(declare-fun m!1136575 () Bool)

(assert (=> bs!34633 m!1136575))

(assert (=> b!1232438 d!134857))

(declare-fun b!1232536 () Bool)

(declare-fun e!699122 () Bool)

(assert (=> b!1232536 (= e!699122 (contains!7211 (Cons!27292 (select (arr!38345 a!3806) from!3184) acc!823) (select (arr!38345 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232537 () Bool)

(declare-fun e!699120 () Bool)

(declare-fun call!60921 () Bool)

(assert (=> b!1232537 (= e!699120 call!60921)))

(declare-fun bm!60918 () Bool)

(declare-fun c!120633 () Bool)

(assert (=> bm!60918 (= call!60921 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120633 (Cons!27292 (select (arr!38345 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27292 (select (arr!38345 a!3806) from!3184) acc!823)) (Cons!27292 (select (arr!38345 a!3806) from!3184) acc!823))))))

(declare-fun b!1232538 () Bool)

(declare-fun e!699121 () Bool)

(assert (=> b!1232538 (= e!699121 e!699120)))

(assert (=> b!1232538 (= c!120633 (validKeyInArray!0 (select (arr!38345 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!134865 () Bool)

(declare-fun res!820997 () Bool)

(declare-fun e!699119 () Bool)

(assert (=> d!134865 (=> res!820997 e!699119)))

(assert (=> d!134865 (= res!820997 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38882 a!3806)))))

(assert (=> d!134865 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27292 (select (arr!38345 a!3806) from!3184) acc!823)) e!699119)))

(declare-fun b!1232539 () Bool)

(assert (=> b!1232539 (= e!699119 e!699121)))

(declare-fun res!820995 () Bool)

(assert (=> b!1232539 (=> (not res!820995) (not e!699121))))

(assert (=> b!1232539 (= res!820995 (not e!699122))))

(declare-fun res!820996 () Bool)

(assert (=> b!1232539 (=> (not res!820996) (not e!699122))))

(assert (=> b!1232539 (= res!820996 (validKeyInArray!0 (select (arr!38345 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232540 () Bool)

(assert (=> b!1232540 (= e!699120 call!60921)))

(assert (= (and d!134865 (not res!820997)) b!1232539))

(assert (= (and b!1232539 res!820996) b!1232536))

(assert (= (and b!1232539 res!820995) b!1232538))

(assert (= (and b!1232538 c!120633) b!1232540))

(assert (= (and b!1232538 (not c!120633)) b!1232537))

(assert (= (or b!1232540 b!1232537) bm!60918))

(declare-fun m!1136577 () Bool)

(assert (=> b!1232536 m!1136577))

(assert (=> b!1232536 m!1136577))

(declare-fun m!1136579 () Bool)

(assert (=> b!1232536 m!1136579))

(assert (=> bm!60918 m!1136577))

(declare-fun m!1136581 () Bool)

(assert (=> bm!60918 m!1136581))

(assert (=> b!1232538 m!1136577))

(assert (=> b!1232538 m!1136577))

(declare-fun m!1136583 () Bool)

(assert (=> b!1232538 m!1136583))

(assert (=> b!1232539 m!1136577))

(assert (=> b!1232539 m!1136577))

(assert (=> b!1232539 m!1136583))

(assert (=> b!1232438 d!134865))

(declare-fun d!134867 () Bool)

(declare-fun res!821008 () Bool)

(declare-fun e!699133 () Bool)

(assert (=> d!134867 (=> res!821008 e!699133)))

(assert (=> d!134867 (= res!821008 (is-Nil!27293 acc!823))))

(assert (=> d!134867 (= (noDuplicate!1818 acc!823) e!699133)))

(declare-fun b!1232551 () Bool)

(declare-fun e!699134 () Bool)

(assert (=> b!1232551 (= e!699133 e!699134)))

(declare-fun res!821009 () Bool)

(assert (=> b!1232551 (=> (not res!821009) (not e!699134))))

(assert (=> b!1232551 (= res!821009 (not (contains!7211 (t!40766 acc!823) (h!28501 acc!823))))))

(declare-fun b!1232552 () Bool)

(assert (=> b!1232552 (= e!699134 (noDuplicate!1818 (t!40766 acc!823)))))

(assert (= (and d!134867 (not res!821008)) b!1232551))

(assert (= (and b!1232551 res!821009) b!1232552))

(declare-fun m!1136591 () Bool)

(assert (=> b!1232551 m!1136591))

(declare-fun m!1136593 () Bool)

(assert (=> b!1232552 m!1136593))

(assert (=> b!1232435 d!134867))

(declare-fun b!1232557 () Bool)

(declare-fun e!699142 () Bool)

(assert (=> b!1232557 (= e!699142 (contains!7211 (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293) (select (arr!38345 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232558 () Bool)

(declare-fun e!699140 () Bool)

(declare-fun call!60922 () Bool)

(assert (=> b!1232558 (= e!699140 call!60922)))

(declare-fun bm!60919 () Bool)

(declare-fun c!120634 () Bool)

(assert (=> bm!60919 (= call!60922 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120634 (Cons!27292 (select (arr!38345 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293)) (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293))))))

(declare-fun b!1232559 () Bool)

(declare-fun e!699141 () Bool)

(assert (=> b!1232559 (= e!699141 e!699140)))

(assert (=> b!1232559 (= c!120634 (validKeyInArray!0 (select (arr!38345 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!134871 () Bool)

(declare-fun res!821016 () Bool)

(declare-fun e!699139 () Bool)

(assert (=> d!134871 (=> res!821016 e!699139)))

(assert (=> d!134871 (= res!821016 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38882 a!3806)))))

(assert (=> d!134871 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293)) e!699139)))

(declare-fun b!1232560 () Bool)

(assert (=> b!1232560 (= e!699139 e!699141)))

(declare-fun res!821014 () Bool)

(assert (=> b!1232560 (=> (not res!821014) (not e!699141))))

(assert (=> b!1232560 (= res!821014 (not e!699142))))

(declare-fun res!821015 () Bool)

(assert (=> b!1232560 (=> (not res!821015) (not e!699142))))

(assert (=> b!1232560 (= res!821015 (validKeyInArray!0 (select (arr!38345 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232561 () Bool)

(assert (=> b!1232561 (= e!699140 call!60922)))

(assert (= (and d!134871 (not res!821016)) b!1232560))

(assert (= (and b!1232560 res!821015) b!1232557))

(assert (= (and b!1232560 res!821014) b!1232559))

(assert (= (and b!1232559 c!120634) b!1232561))

(assert (= (and b!1232559 (not c!120634)) b!1232558))

(assert (= (or b!1232561 b!1232558) bm!60919))

(assert (=> b!1232557 m!1136577))

(assert (=> b!1232557 m!1136577))

(declare-fun m!1136595 () Bool)

(assert (=> b!1232557 m!1136595))

(assert (=> bm!60919 m!1136577))

(declare-fun m!1136597 () Bool)

(assert (=> bm!60919 m!1136597))

(assert (=> b!1232559 m!1136577))

(assert (=> b!1232559 m!1136577))

(assert (=> b!1232559 m!1136583))

(assert (=> b!1232560 m!1136577))

(assert (=> b!1232560 m!1136577))

(assert (=> b!1232560 m!1136583))

(assert (=> b!1232440 d!134871))

(declare-fun d!134873 () Bool)

(declare-fun lt!559483 () Bool)

(declare-fun content!578 (List!27296) (Set (_ BitVec 64)))

(assert (=> d!134873 (= lt!559483 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!578 acc!823)))))

(declare-fun e!699156 () Bool)

(assert (=> d!134873 (= lt!559483 e!699156)))

(declare-fun res!821029 () Bool)

(assert (=> d!134873 (=> (not res!821029) (not e!699156))))

(assert (=> d!134873 (= res!821029 (is-Cons!27292 acc!823))))

(assert (=> d!134873 (= (contains!7211 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559483)))

(declare-fun b!1232575 () Bool)

(declare-fun e!699155 () Bool)

(assert (=> b!1232575 (= e!699156 e!699155)))

(declare-fun res!821028 () Bool)

(assert (=> b!1232575 (=> res!821028 e!699155)))

(assert (=> b!1232575 (= res!821028 (= (h!28501 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232576 () Bool)

(assert (=> b!1232576 (= e!699155 (contains!7211 (t!40766 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134873 res!821029) b!1232575))

(assert (= (and b!1232575 (not res!821028)) b!1232576))

(declare-fun m!1136609 () Bool)

(assert (=> d!134873 m!1136609))

(declare-fun m!1136611 () Bool)

(assert (=> d!134873 m!1136611))

(declare-fun m!1136613 () Bool)

(assert (=> b!1232576 m!1136613))

(assert (=> b!1232445 d!134873))

(declare-fun d!134883 () Bool)

(declare-fun res!821040 () Bool)

(declare-fun e!699169 () Bool)

(assert (=> d!134883 (=> res!821040 e!699169)))

(assert (=> d!134883 (= res!821040 (= (select (arr!38345 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134883 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!699169)))

(declare-fun b!1232591 () Bool)

(declare-fun e!699170 () Bool)

(assert (=> b!1232591 (= e!699169 e!699170)))

(declare-fun res!821041 () Bool)

(assert (=> b!1232591 (=> (not res!821041) (not e!699170))))

(assert (=> b!1232591 (= res!821041 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38882 a!3806)))))

(declare-fun b!1232592 () Bool)

(assert (=> b!1232592 (= e!699170 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134883 (not res!821040)) b!1232591))

(assert (= (and b!1232591 res!821041) b!1232592))

(assert (=> d!134883 m!1136577))

(declare-fun m!1136623 () Bool)

(assert (=> b!1232592 m!1136623))

(assert (=> b!1232436 d!134883))

(declare-fun d!134889 () Bool)

(declare-fun lt!559487 () Bool)

(assert (=> d!134889 (= lt!559487 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!578 acc!823)))))

(declare-fun e!699172 () Bool)

(assert (=> d!134889 (= lt!559487 e!699172)))

(declare-fun res!821043 () Bool)

(assert (=> d!134889 (=> (not res!821043) (not e!699172))))

(assert (=> d!134889 (= res!821043 (is-Cons!27292 acc!823))))

(assert (=> d!134889 (= (contains!7211 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559487)))

(declare-fun b!1232593 () Bool)

(declare-fun e!699171 () Bool)

(assert (=> b!1232593 (= e!699172 e!699171)))

(declare-fun res!821042 () Bool)

(assert (=> b!1232593 (=> res!821042 e!699171)))

(assert (=> b!1232593 (= res!821042 (= (h!28501 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232594 () Bool)

(assert (=> b!1232594 (= e!699171 (contains!7211 (t!40766 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134889 res!821043) b!1232593))

(assert (= (and b!1232593 (not res!821042)) b!1232594))

(assert (=> d!134889 m!1136609))

(declare-fun m!1136627 () Bool)

(assert (=> d!134889 m!1136627))

(declare-fun m!1136629 () Bool)

(assert (=> b!1232594 m!1136629))

(assert (=> b!1232441 d!134889))

(declare-fun d!134891 () Bool)

(assert (=> d!134891 (= (array_inv!29121 a!3806) (bvsge (size!38882 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102500 d!134891))

(declare-fun d!134893 () Bool)

(assert (=> d!134893 (= (validKeyInArray!0 (select (arr!38345 a!3806) from!3184)) (and (not (= (select (arr!38345 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38345 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232443 d!134893))

(declare-fun d!134895 () Bool)

(declare-fun res!821044 () Bool)

(declare-fun e!699173 () Bool)

(assert (=> d!134895 (=> res!821044 e!699173)))

(assert (=> d!134895 (= res!821044 (is-Nil!27293 (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293)))))

(assert (=> d!134895 (= (noDuplicate!1818 (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293)) e!699173)))

(declare-fun b!1232595 () Bool)

(declare-fun e!699174 () Bool)

(assert (=> b!1232595 (= e!699173 e!699174)))

(declare-fun res!821045 () Bool)

(assert (=> b!1232595 (=> (not res!821045) (not e!699174))))

(assert (=> b!1232595 (= res!821045 (not (contains!7211 (t!40766 (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293)) (h!28501 (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293)))))))

(declare-fun b!1232596 () Bool)

(assert (=> b!1232596 (= e!699174 (noDuplicate!1818 (t!40766 (Cons!27292 (select (arr!38345 a!3806) from!3184) Nil!27293))))))

(assert (= (and d!134895 (not res!821044)) b!1232595))

(assert (= (and b!1232595 res!821045) b!1232596))

(declare-fun m!1136631 () Bool)

(assert (=> b!1232595 m!1136631))

(declare-fun m!1136633 () Bool)

(assert (=> b!1232596 m!1136633))

(assert (=> b!1232437 d!134895))

(declare-fun e!699178 () Bool)

(declare-fun b!1232597 () Bool)

(assert (=> b!1232597 (= e!699178 (contains!7211 acc!823 (select (arr!38345 a!3806) from!3184)))))

(declare-fun b!1232598 () Bool)

(declare-fun e!699176 () Bool)

(declare-fun call!60926 () Bool)

(assert (=> b!1232598 (= e!699176 call!60926)))

(declare-fun c!120638 () Bool)

(declare-fun bm!60923 () Bool)

(assert (=> bm!60923 (= call!60926 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120638 (Cons!27292 (select (arr!38345 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1232599 () Bool)

(declare-fun e!699177 () Bool)

(assert (=> b!1232599 (= e!699177 e!699176)))

(assert (=> b!1232599 (= c!120638 (validKeyInArray!0 (select (arr!38345 a!3806) from!3184)))))

(declare-fun d!134897 () Bool)

(declare-fun res!821048 () Bool)

(declare-fun e!699175 () Bool)

(assert (=> d!134897 (=> res!821048 e!699175)))

(assert (=> d!134897 (= res!821048 (bvsge from!3184 (size!38882 a!3806)))))

(assert (=> d!134897 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!699175)))

(declare-fun b!1232600 () Bool)

(assert (=> b!1232600 (= e!699175 e!699177)))

(declare-fun res!821046 () Bool)

(assert (=> b!1232600 (=> (not res!821046) (not e!699177))))

(assert (=> b!1232600 (= res!821046 (not e!699178))))

(declare-fun res!821047 () Bool)

(assert (=> b!1232600 (=> (not res!821047) (not e!699178))))

(assert (=> b!1232600 (= res!821047 (validKeyInArray!0 (select (arr!38345 a!3806) from!3184)))))

(declare-fun b!1232601 () Bool)

(assert (=> b!1232601 (= e!699176 call!60926)))

(assert (= (and d!134897 (not res!821048)) b!1232600))

(assert (= (and b!1232600 res!821047) b!1232597))

(assert (= (and b!1232600 res!821046) b!1232599))

(assert (= (and b!1232599 c!120638) b!1232601))

(assert (= (and b!1232599 (not c!120638)) b!1232598))

(assert (= (or b!1232601 b!1232598) bm!60923))

(assert (=> b!1232597 m!1136491))

(assert (=> b!1232597 m!1136491))

(declare-fun m!1136635 () Bool)

(assert (=> b!1232597 m!1136635))

(assert (=> bm!60923 m!1136491))

(declare-fun m!1136637 () Bool)

(assert (=> bm!60923 m!1136637))

(assert (=> b!1232599 m!1136491))

(assert (=> b!1232599 m!1136491))

(assert (=> b!1232599 m!1136505))

(assert (=> b!1232600 m!1136491))

(assert (=> b!1232600 m!1136491))

(assert (=> b!1232600 m!1136505))

(assert (=> b!1232442 d!134897))

(push 1)

(assert (not b!1232595))

(assert (not b!1232594))

(assert (not b!1232557))

(assert (not b!1232600))

(assert (not b!1232536))

(assert (not b!1232539))

(assert (not b!1232596))

(assert (not d!134857))

(assert (not b!1232514))

(assert (not b!1232599))

(assert (not b!1232576))

(assert (not b!1232515))

(assert (not b!1232560))

(assert (not b!1232559))

(assert (not bm!60923))

(assert (not b!1232552))

(assert (not b!1232592))

(assert (not d!134873))

(assert (not b!1232538))

(assert (not bm!60919))

(assert (not d!134889))

(assert (not b!1232597))

(assert (not bm!60918))

(assert (not b!1232551))

(assert (not b!1232512))

(assert (not bm!60916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

