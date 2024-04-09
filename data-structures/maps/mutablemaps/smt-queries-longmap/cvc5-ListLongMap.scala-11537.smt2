; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134338 () Bool)

(assert start!134338)

(declare-fun b!1568390 () Bool)

(declare-fun e!874352 () Bool)

(declare-fun e!874353 () Bool)

(assert (=> b!1568390 (= e!874352 e!874353)))

(declare-fun res!1072216 () Bool)

(assert (=> b!1568390 (=> (not res!1072216) (not e!874353))))

(declare-fun e!874350 () Bool)

(assert (=> b!1568390 (= res!1072216 e!874350)))

(declare-fun res!1072218 () Bool)

(assert (=> b!1568390 (=> res!1072218 e!874350)))

(declare-fun lt!673117 () Bool)

(assert (=> b!1568390 (= res!1072218 (not lt!673117))))

(declare-datatypes ((array!104769 0))(
  ( (array!104770 (arr!50560 (Array (_ BitVec 32) (_ BitVec 64))) (size!51111 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104769)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568390 (= lt!673117 (validKeyInArray!0 (select (arr!50560 a!3481) from!2856)))))

(declare-datatypes ((List!36871 0))(
  ( (Nil!36868) (Cons!36867 (h!38315 (_ BitVec 64)) (t!51786 List!36871)) )
))
(declare-fun acc!619 () List!36871)

(declare-fun b!1568391 () Bool)

(declare-fun contains!10430 (List!36871 (_ BitVec 64)) Bool)

(assert (=> b!1568391 (= e!874350 (not (contains!10430 acc!619 (select (arr!50560 a!3481) from!2856))))))

(declare-fun b!1568392 () Bool)

(assert (=> b!1568392 (= e!874353 (and (not lt!673117) (bvsge (bvsub (size!51111 a!3481) (bvadd #b00000000000000000000000000000001 from!2856)) (bvsub (size!51111 a!3481) from!2856))))))

(declare-fun b!1568393 () Bool)

(declare-fun res!1072214 () Bool)

(assert (=> b!1568393 (=> (not res!1072214) (not e!874352))))

(assert (=> b!1568393 (= res!1072214 (bvslt from!2856 (size!51111 a!3481)))))

(declare-fun b!1568394 () Bool)

(declare-fun res!1072217 () Bool)

(assert (=> b!1568394 (=> (not res!1072217) (not e!874352))))

(declare-fun noDuplicate!2721 (List!36871) Bool)

(assert (=> b!1568394 (= res!1072217 (noDuplicate!2721 acc!619))))

(declare-fun res!1072215 () Bool)

(assert (=> start!134338 (=> (not res!1072215) (not e!874352))))

(assert (=> start!134338 (= res!1072215 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51111 a!3481)) (bvslt (size!51111 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134338 e!874352))

(assert (=> start!134338 true))

(declare-fun array_inv!39205 (array!104769) Bool)

(assert (=> start!134338 (array_inv!39205 a!3481)))

(declare-fun b!1568395 () Bool)

(declare-fun res!1072220 () Bool)

(assert (=> b!1568395 (=> (not res!1072220) (not e!874352))))

(assert (=> b!1568395 (= res!1072220 (not (contains!10430 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568396 () Bool)

(declare-fun res!1072219 () Bool)

(assert (=> b!1568396 (=> (not res!1072219) (not e!874352))))

(assert (=> b!1568396 (= res!1072219 (not (contains!10430 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!134338 res!1072215) b!1568394))

(assert (= (and b!1568394 res!1072217) b!1568396))

(assert (= (and b!1568396 res!1072219) b!1568395))

(assert (= (and b!1568395 res!1072220) b!1568393))

(assert (= (and b!1568393 res!1072214) b!1568390))

(assert (= (and b!1568390 (not res!1072218)) b!1568391))

(assert (= (and b!1568390 res!1072216) b!1568392))

(declare-fun m!1443079 () Bool)

(assert (=> b!1568391 m!1443079))

(assert (=> b!1568391 m!1443079))

(declare-fun m!1443081 () Bool)

(assert (=> b!1568391 m!1443081))

(declare-fun m!1443083 () Bool)

(assert (=> b!1568394 m!1443083))

(declare-fun m!1443085 () Bool)

(assert (=> b!1568395 m!1443085))

(assert (=> b!1568390 m!1443079))

(assert (=> b!1568390 m!1443079))

(declare-fun m!1443087 () Bool)

(assert (=> b!1568390 m!1443087))

(declare-fun m!1443089 () Bool)

(assert (=> b!1568396 m!1443089))

(declare-fun m!1443091 () Bool)

(assert (=> start!134338 m!1443091))

(push 1)

(assert (not b!1568391))

(assert (not b!1568394))

(assert (not b!1568390))

(assert (not b!1568395))

(assert (not b!1568396))

(assert (not start!134338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

