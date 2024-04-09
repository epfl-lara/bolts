; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134332 () Bool)

(assert start!134332)

(declare-fun b!1568327 () Bool)

(declare-fun res!1072156 () Bool)

(declare-fun e!874314 () Bool)

(assert (=> b!1568327 (=> (not res!1072156) (not e!874314))))

(declare-datatypes ((List!36868 0))(
  ( (Nil!36865) (Cons!36864 (h!38312 (_ BitVec 64)) (t!51783 List!36868)) )
))
(declare-fun acc!619 () List!36868)

(declare-fun noDuplicate!2718 (List!36868) Bool)

(assert (=> b!1568327 (= res!1072156 (noDuplicate!2718 acc!619))))

(declare-fun b!1568328 () Bool)

(declare-fun res!1072155 () Bool)

(assert (=> b!1568328 (=> (not res!1072155) (not e!874314))))

(declare-fun contains!10427 (List!36868 (_ BitVec 64)) Bool)

(assert (=> b!1568328 (= res!1072155 (not (contains!10427 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((array!104763 0))(
  ( (array!104764 (arr!50557 (Array (_ BitVec 32) (_ BitVec 64))) (size!51108 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104763)

(declare-fun b!1568329 () Bool)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun e!874317 () Bool)

(assert (=> b!1568329 (= e!874317 (not (contains!10427 acc!619 (select (arr!50557 a!3481) from!2856))))))

(declare-fun res!1072154 () Bool)

(assert (=> start!134332 (=> (not res!1072154) (not e!874314))))

(assert (=> start!134332 (= res!1072154 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51108 a!3481)) (bvslt (size!51108 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134332 e!874314))

(assert (=> start!134332 true))

(declare-fun array_inv!39202 (array!104763) Bool)

(assert (=> start!134332 (array_inv!39202 a!3481)))

(declare-fun b!1568330 () Bool)

(declare-fun res!1072152 () Bool)

(assert (=> b!1568330 (=> (not res!1072152) (not e!874314))))

(assert (=> b!1568330 (= res!1072152 (not (contains!10427 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568331 () Bool)

(declare-fun lt!673108 () Bool)

(declare-fun e!874315 () Bool)

(assert (=> b!1568331 (= e!874315 (and (not lt!673108) (bvsge (bvsub (size!51108 a!3481) (bvadd #b00000000000000000000000000000001 from!2856)) (bvsub (size!51108 a!3481) from!2856))))))

(declare-fun b!1568332 () Bool)

(declare-fun res!1072151 () Bool)

(assert (=> b!1568332 (=> (not res!1072151) (not e!874314))))

(assert (=> b!1568332 (= res!1072151 (bvslt from!2856 (size!51108 a!3481)))))

(declare-fun b!1568333 () Bool)

(assert (=> b!1568333 (= e!874314 e!874315)))

(declare-fun res!1072153 () Bool)

(assert (=> b!1568333 (=> (not res!1072153) (not e!874315))))

(assert (=> b!1568333 (= res!1072153 e!874317)))

(declare-fun res!1072157 () Bool)

(assert (=> b!1568333 (=> res!1072157 e!874317)))

(assert (=> b!1568333 (= res!1072157 lt!673108)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568333 (= lt!673108 (not (validKeyInArray!0 (select (arr!50557 a!3481) from!2856))))))

(assert (= (and start!134332 res!1072154) b!1568327))

(assert (= (and b!1568327 res!1072156) b!1568330))

(assert (= (and b!1568330 res!1072152) b!1568328))

(assert (= (and b!1568328 res!1072155) b!1568332))

(assert (= (and b!1568332 res!1072151) b!1568333))

(assert (= (and b!1568333 (not res!1072157)) b!1568329))

(assert (= (and b!1568333 res!1072153) b!1568331))

(declare-fun m!1443037 () Bool)

(assert (=> b!1568333 m!1443037))

(assert (=> b!1568333 m!1443037))

(declare-fun m!1443039 () Bool)

(assert (=> b!1568333 m!1443039))

(declare-fun m!1443041 () Bool)

(assert (=> b!1568328 m!1443041))

(declare-fun m!1443043 () Bool)

(assert (=> b!1568327 m!1443043))

(assert (=> b!1568329 m!1443037))

(assert (=> b!1568329 m!1443037))

(declare-fun m!1443045 () Bool)

(assert (=> b!1568329 m!1443045))

(declare-fun m!1443047 () Bool)

(assert (=> b!1568330 m!1443047))

(declare-fun m!1443049 () Bool)

(assert (=> start!134332 m!1443049))

(push 1)

(assert (not b!1568333))

(assert (not start!134332))

(assert (not b!1568328))

(assert (not b!1568329))

(assert (not b!1568330))

(assert (not b!1568327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

