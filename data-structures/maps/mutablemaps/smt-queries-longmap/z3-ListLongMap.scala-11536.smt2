; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134334 () Bool)

(assert start!134334)

(declare-fun b!1568348 () Bool)

(declare-fun res!1072176 () Bool)

(declare-fun e!874326 () Bool)

(assert (=> b!1568348 (=> (not res!1072176) (not e!874326))))

(declare-datatypes ((List!36869 0))(
  ( (Nil!36866) (Cons!36865 (h!38313 (_ BitVec 64)) (t!51784 List!36869)) )
))
(declare-fun acc!619 () List!36869)

(declare-fun noDuplicate!2719 (List!36869) Bool)

(assert (=> b!1568348 (= res!1072176 (noDuplicate!2719 acc!619))))

(declare-fun res!1072172 () Bool)

(assert (=> start!134334 (=> (not res!1072172) (not e!874326))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104765 0))(
  ( (array!104766 (arr!50558 (Array (_ BitVec 32) (_ BitVec 64))) (size!51109 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104765)

(assert (=> start!134334 (= res!1072172 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51109 a!3481)) (bvslt (size!51109 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134334 e!874326))

(assert (=> start!134334 true))

(declare-fun array_inv!39203 (array!104765) Bool)

(assert (=> start!134334 (array_inv!39203 a!3481)))

(declare-fun b!1568349 () Bool)

(declare-fun res!1072177 () Bool)

(assert (=> b!1568349 (=> (not res!1072177) (not e!874326))))

(declare-fun contains!10428 (List!36869 (_ BitVec 64)) Bool)

(assert (=> b!1568349 (= res!1072177 (not (contains!10428 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568350 () Bool)

(declare-fun res!1072178 () Bool)

(assert (=> b!1568350 (=> (not res!1072178) (not e!874326))))

(assert (=> b!1568350 (= res!1072178 (not (contains!10428 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568351 () Bool)

(declare-fun e!874329 () Bool)

(assert (=> b!1568351 (= e!874326 e!874329)))

(declare-fun res!1072174 () Bool)

(assert (=> b!1568351 (=> (not res!1072174) (not e!874329))))

(declare-fun e!874328 () Bool)

(assert (=> b!1568351 (= res!1072174 e!874328)))

(declare-fun res!1072173 () Bool)

(assert (=> b!1568351 (=> res!1072173 e!874328)))

(declare-fun lt!673111 () Bool)

(assert (=> b!1568351 (= res!1072173 lt!673111)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568351 (= lt!673111 (not (validKeyInArray!0 (select (arr!50558 a!3481) from!2856))))))

(declare-fun b!1568352 () Bool)

(assert (=> b!1568352 (= e!874328 (not (contains!10428 acc!619 (select (arr!50558 a!3481) from!2856))))))

(declare-fun b!1568353 () Bool)

(assert (=> b!1568353 (= e!874329 (and (not lt!673111) (bvsge (bvsub (size!51109 a!3481) (bvadd #b00000000000000000000000000000001 from!2856)) (bvsub (size!51109 a!3481) from!2856))))))

(declare-fun b!1568354 () Bool)

(declare-fun res!1072175 () Bool)

(assert (=> b!1568354 (=> (not res!1072175) (not e!874326))))

(assert (=> b!1568354 (= res!1072175 (bvslt from!2856 (size!51109 a!3481)))))

(assert (= (and start!134334 res!1072172) b!1568348))

(assert (= (and b!1568348 res!1072176) b!1568349))

(assert (= (and b!1568349 res!1072177) b!1568350))

(assert (= (and b!1568350 res!1072178) b!1568354))

(assert (= (and b!1568354 res!1072175) b!1568351))

(assert (= (and b!1568351 (not res!1072173)) b!1568352))

(assert (= (and b!1568351 res!1072174) b!1568353))

(declare-fun m!1443051 () Bool)

(assert (=> b!1568348 m!1443051))

(declare-fun m!1443053 () Bool)

(assert (=> b!1568349 m!1443053))

(declare-fun m!1443055 () Bool)

(assert (=> start!134334 m!1443055))

(declare-fun m!1443057 () Bool)

(assert (=> b!1568352 m!1443057))

(assert (=> b!1568352 m!1443057))

(declare-fun m!1443059 () Bool)

(assert (=> b!1568352 m!1443059))

(declare-fun m!1443061 () Bool)

(assert (=> b!1568350 m!1443061))

(assert (=> b!1568351 m!1443057))

(assert (=> b!1568351 m!1443057))

(declare-fun m!1443063 () Bool)

(assert (=> b!1568351 m!1443063))

(check-sat (not b!1568349) (not b!1568352) (not b!1568350) (not b!1568351) (not start!134334) (not b!1568348))
(check-sat)
