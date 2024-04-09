; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93270 () Bool)

(assert start!93270)

(declare-fun b!1057023 () Bool)

(declare-fun e!601104 () Bool)

(declare-fun e!601105 () Bool)

(assert (=> b!1057023 (= e!601104 e!601105)))

(declare-fun res!705835 () Bool)

(assert (=> b!1057023 (=> res!705835 e!601105)))

(declare-fun lt!466267 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057023 (= res!705835 (or (bvsgt lt!466267 i!1381) (bvsle i!1381 lt!466267)))))

(declare-fun b!1057024 () Bool)

(declare-fun res!705834 () Bool)

(declare-fun e!601106 () Bool)

(assert (=> b!1057024 (=> (not res!705834) (not e!601106))))

(declare-datatypes ((array!66656 0))(
  ( (array!66657 (arr!32047 (Array (_ BitVec 32) (_ BitVec 64))) (size!32584 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66656)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1057024 (= res!705834 (= (select (arr!32047 a!3488) i!1381) k!2747))))

(declare-fun b!1057025 () Bool)

(declare-fun e!601101 () Bool)

(declare-fun e!601100 () Bool)

(assert (=> b!1057025 (= e!601101 e!601100)))

(declare-fun res!705837 () Bool)

(assert (=> b!1057025 (=> (not res!705837) (not e!601100))))

(assert (=> b!1057025 (= res!705837 (not (= lt!466267 i!1381)))))

(declare-fun lt!466266 () array!66656)

(declare-fun arrayScanForKey!0 (array!66656 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057025 (= lt!466267 (arrayScanForKey!0 lt!466266 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057026 () Bool)

(declare-fun res!705839 () Bool)

(assert (=> b!1057026 (=> (not res!705839) (not e!601106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057026 (= res!705839 (validKeyInArray!0 k!2747))))

(declare-fun res!705832 () Bool)

(assert (=> start!93270 (=> (not res!705832) (not e!601106))))

(assert (=> start!93270 (= res!705832 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32584 a!3488)) (bvslt (size!32584 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93270 e!601106))

(assert (=> start!93270 true))

(declare-fun array_inv!24669 (array!66656) Bool)

(assert (=> start!93270 (array_inv!24669 a!3488)))

(declare-fun b!1057027 () Bool)

(declare-fun e!601102 () Bool)

(assert (=> b!1057027 (= e!601102 true)))

(declare-datatypes ((List!22490 0))(
  ( (Nil!22487) (Cons!22486 (h!23695 (_ BitVec 64)) (t!31804 List!22490)) )
))
(declare-fun arrayNoDuplicates!0 (array!66656 (_ BitVec 32) List!22490) Bool)

(assert (=> b!1057027 (arrayNoDuplicates!0 a!3488 lt!466267 Nil!22487)))

(declare-datatypes ((Unit!34625 0))(
  ( (Unit!34626) )
))
(declare-fun lt!466265 () Unit!34625)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66656 (_ BitVec 32) (_ BitVec 32)) Unit!34625)

(assert (=> b!1057027 (= lt!466265 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466267))))

(declare-fun b!1057028 () Bool)

(assert (=> b!1057028 (= e!601106 e!601101)))

(declare-fun res!705836 () Bool)

(assert (=> b!1057028 (=> (not res!705836) (not e!601101))))

(declare-fun arrayContainsKey!0 (array!66656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057028 (= res!705836 (arrayContainsKey!0 lt!466266 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057028 (= lt!466266 (array!66657 (store (arr!32047 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32584 a!3488)))))

(declare-fun b!1057029 () Bool)

(assert (=> b!1057029 (= e!601105 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057030 () Bool)

(assert (=> b!1057030 (= e!601100 (not e!601102))))

(declare-fun res!705840 () Bool)

(assert (=> b!1057030 (=> res!705840 e!601102)))

(assert (=> b!1057030 (= res!705840 (or (bvsgt lt!466267 i!1381) (bvsle i!1381 lt!466267)))))

(assert (=> b!1057030 e!601104))

(declare-fun res!705833 () Bool)

(assert (=> b!1057030 (=> (not res!705833) (not e!601104))))

(assert (=> b!1057030 (= res!705833 (= (select (store (arr!32047 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466267) k!2747))))

(declare-fun b!1057031 () Bool)

(declare-fun res!705838 () Bool)

(assert (=> b!1057031 (=> (not res!705838) (not e!601106))))

(assert (=> b!1057031 (= res!705838 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22487))))

(assert (= (and start!93270 res!705832) b!1057031))

(assert (= (and b!1057031 res!705838) b!1057026))

(assert (= (and b!1057026 res!705839) b!1057024))

(assert (= (and b!1057024 res!705834) b!1057028))

(assert (= (and b!1057028 res!705836) b!1057025))

(assert (= (and b!1057025 res!705837) b!1057030))

(assert (= (and b!1057030 res!705833) b!1057023))

(assert (= (and b!1057023 (not res!705835)) b!1057029))

(assert (= (and b!1057030 (not res!705840)) b!1057027))

(declare-fun m!976887 () Bool)

(assert (=> b!1057028 m!976887))

(declare-fun m!976889 () Bool)

(assert (=> b!1057028 m!976889))

(declare-fun m!976891 () Bool)

(assert (=> b!1057031 m!976891))

(declare-fun m!976893 () Bool)

(assert (=> start!93270 m!976893))

(declare-fun m!976895 () Bool)

(assert (=> b!1057025 m!976895))

(assert (=> b!1057030 m!976889))

(declare-fun m!976897 () Bool)

(assert (=> b!1057030 m!976897))

(declare-fun m!976899 () Bool)

(assert (=> b!1057024 m!976899))

(declare-fun m!976901 () Bool)

(assert (=> b!1057027 m!976901))

(declare-fun m!976903 () Bool)

(assert (=> b!1057027 m!976903))

(declare-fun m!976905 () Bool)

(assert (=> b!1057029 m!976905))

(declare-fun m!976907 () Bool)

(assert (=> b!1057026 m!976907))

(push 1)

