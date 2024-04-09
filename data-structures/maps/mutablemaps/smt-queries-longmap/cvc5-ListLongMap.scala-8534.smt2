; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104130 () Bool)

(assert start!104130)

(declare-fun b!1244819 () Bool)

(declare-fun res!830484 () Bool)

(declare-fun e!705711 () Bool)

(assert (=> b!1244819 (=> (not res!830484) (not e!705711))))

(declare-datatypes ((List!27606 0))(
  ( (Nil!27603) (Cons!27602 (h!28811 (_ BitVec 64)) (t!41082 List!27606)) )
))
(declare-fun noDuplicate!2041 (List!27606) Bool)

(assert (=> b!1244819 (= res!830484 (noDuplicate!2041 Nil!27603))))

(declare-fun b!1244820 () Bool)

(declare-fun res!830482 () Bool)

(assert (=> b!1244820 (=> (not res!830482) (not e!705711))))

(declare-datatypes ((array!80081 0))(
  ( (array!80082 (arr!38625 (Array (_ BitVec 32) (_ BitVec 64))) (size!39162 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80081)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1244820 (= res!830482 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39162 a!3892)) (= newFrom!287 (size!39162 a!3892)) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1244821 () Bool)

(declare-fun res!830483 () Bool)

(assert (=> b!1244821 (=> (not res!830483) (not e!705711))))

(declare-fun arrayNoDuplicates!0 (array!80081 (_ BitVec 32) List!27606) Bool)

(assert (=> b!1244821 (= res!830483 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27603))))

(declare-fun b!1244823 () Bool)

(declare-fun e!705712 () Bool)

(assert (=> b!1244823 (= e!705711 e!705712)))

(declare-fun res!830481 () Bool)

(assert (=> b!1244823 (=> res!830481 e!705712)))

(declare-fun contains!7451 (List!27606 (_ BitVec 64)) Bool)

(assert (=> b!1244823 (= res!830481 (contains!7451 Nil!27603 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!830485 () Bool)

(assert (=> start!104130 (=> (not res!830485) (not e!705711))))

(assert (=> start!104130 (= res!830485 (and (bvslt (size!39162 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39162 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39162 a!3892))))))

(assert (=> start!104130 e!705711))

(declare-fun array_inv!29401 (array!80081) Bool)

(assert (=> start!104130 (array_inv!29401 a!3892)))

(assert (=> start!104130 true))

(declare-fun b!1244822 () Bool)

(assert (=> b!1244822 (= e!705712 (contains!7451 Nil!27603 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!104130 res!830485) b!1244821))

(assert (= (and b!1244821 res!830483) b!1244820))

(assert (= (and b!1244820 res!830482) b!1244819))

(assert (= (and b!1244819 res!830484) b!1244823))

(assert (= (and b!1244823 (not res!830481)) b!1244822))

(declare-fun m!1147041 () Bool)

(assert (=> b!1244823 m!1147041))

(declare-fun m!1147043 () Bool)

(assert (=> b!1244821 m!1147043))

(declare-fun m!1147045 () Bool)

(assert (=> b!1244822 m!1147045))

(declare-fun m!1147047 () Bool)

(assert (=> start!104130 m!1147047))

(declare-fun m!1147049 () Bool)

(assert (=> b!1244819 m!1147049))

(push 1)

(assert (not b!1244822))

(assert (not start!104130))

(assert (not b!1244823))

(assert (not b!1244821))

(assert (not b!1244819))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137171 () Bool)

(declare-fun res!830534 () Bool)

(declare-fun e!705750 () Bool)

(assert (=> d!137171 (=> res!830534 e!705750)))

(assert (=> d!137171 (= res!830534 (is-Nil!27603 Nil!27603))))

(assert (=> d!137171 (= (noDuplicate!2041 Nil!27603) e!705750)))

(declare-fun b!1244872 () Bool)

(declare-fun e!705751 () Bool)

(assert (=> b!1244872 (= e!705750 e!705751)))

(declare-fun res!830535 () Bool)

(assert (=> b!1244872 (=> (not res!830535) (not e!705751))))

(assert (=> b!1244872 (= res!830535 (not (contains!7451 (t!41082 Nil!27603) (h!28811 Nil!27603))))))

(declare-fun b!1244873 () Bool)

(assert (=> b!1244873 (= e!705751 (noDuplicate!2041 (t!41082 Nil!27603)))))

(assert (= (and d!137171 (not res!830534)) b!1244872))

(assert (= (and b!1244872 res!830535) b!1244873))

(declare-fun m!1147085 () Bool)

(assert (=> b!1244872 m!1147085))

(declare-fun m!1147087 () Bool)

(assert (=> b!1244873 m!1147087))

(assert (=> b!1244819 d!137171))

(declare-fun b!1244913 () Bool)

(declare-fun e!705789 () Bool)

(declare-fun call!61449 () Bool)

(assert (=> b!1244913 (= e!705789 call!61449)))

(declare-fun d!137181 () Bool)

(declare-fun res!830566 () Bool)

(declare-fun e!705788 () Bool)

(assert (=> d!137181 (=> res!830566 e!705788)))

(assert (=> d!137181 (= res!830566 (bvsge from!3270 (size!39162 a!3892)))))

(assert (=> d!137181 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27603) e!705788)))

(declare-fun b!1244914 () Bool)

(declare-fun e!705786 () Bool)

(assert (=> b!1244914 (= e!705786 e!705789)))

(declare-fun c!121861 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244914 (= c!121861 (validKeyInArray!0 (select (arr!38625 a!3892) from!3270)))))

(declare-fun b!1244915 () Bool)

(assert (=> b!1244915 (= e!705789 call!61449)))

(declare-fun b!1244916 () Bool)

(declare-fun e!705787 () Bool)

(assert (=> b!1244916 (= e!705787 (contains!7451 Nil!27603 (select (arr!38625 a!3892) from!3270)))))

(declare-fun b!1244917 () Bool)

(assert (=> b!1244917 (= e!705788 e!705786)))

(declare-fun res!830567 () Bool)

(assert (=> b!1244917 (=> (not res!830567) (not e!705786))))

(assert (=> b!1244917 (= res!830567 (not e!705787))))

(declare-fun res!830565 () Bool)

(assert (=> b!1244917 (=> (not res!830565) (not e!705787))))

(assert (=> b!1244917 (= res!830565 (validKeyInArray!0 (select (arr!38625 a!3892) from!3270)))))

(declare-fun bm!61446 () Bool)

(assert (=> bm!61446 (= call!61449 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121861 (Cons!27602 (select (arr!38625 a!3892) from!3270) Nil!27603) Nil!27603)))))

(assert (= (and d!137181 (not res!830566)) b!1244917))

(assert (= (and b!1244917 res!830565) b!1244916))

(assert (= (and b!1244917 res!830567) b!1244914))

(assert (= (and b!1244914 c!121861) b!1244915))

(assert (= (and b!1244914 (not c!121861)) b!1244913))

(assert (= (or b!1244915 b!1244913) bm!61446))

(declare-fun m!1147109 () Bool)

(assert (=> b!1244914 m!1147109))

(assert (=> b!1244914 m!1147109))

(declare-fun m!1147113 () Bool)

(assert (=> b!1244914 m!1147113))

(assert (=> b!1244916 m!1147109))

(assert (=> b!1244916 m!1147109))

(declare-fun m!1147115 () Bool)

(assert (=> b!1244916 m!1147115))

(assert (=> b!1244917 m!1147109))

(assert (=> b!1244917 m!1147109))

(assert (=> b!1244917 m!1147113))

(assert (=> bm!61446 m!1147109))

(declare-fun m!1147117 () Bool)

(assert (=> bm!61446 m!1147117))

(assert (=> b!1244821 d!137181))

(declare-fun d!137191 () Bool)

(assert (=> d!137191 (= (array_inv!29401 a!3892) (bvsge (size!39162 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104130 d!137191))

(declare-fun d!137193 () Bool)

(declare-fun lt!562794 () Bool)

(declare-fun content!622 (List!27606) (Set (_ BitVec 64)))

(assert (=> d!137193 (= lt!562794 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!622 Nil!27603)))))

(declare-fun e!705802 () Bool)

(assert (=> d!137193 (= lt!562794 e!705802)))

(declare-fun res!830579 () Bool)

(assert (=> d!137193 (=> (not res!830579) (not e!705802))))

(assert (=> d!137193 (= res!830579 (is-Cons!27602 Nil!27603))))

(assert (=> d!137193 (= (contains!7451 Nil!27603 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562794)))

(declare-fun b!1244932 () Bool)

(declare-fun e!705803 () Bool)

