; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117866 () Bool)

(assert start!117866)

(declare-fun res!922950 () Bool)

(declare-fun e!782960 () Bool)

(assert (=> start!117866 (=> (not res!922950) (not e!782960))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117866 (= res!922950 (validMask!0 mask!3034))))

(assert (=> start!117866 e!782960))

(assert (=> start!117866 true))

(declare-datatypes ((array!94221 0))(
  ( (array!94222 (arr!45492 (Array (_ BitVec 32) (_ BitVec 64))) (size!46043 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94221)

(declare-fun array_inv!34437 (array!94221) Bool)

(assert (=> start!117866 (array_inv!34437 a!2971)))

(declare-fun b!1381216 () Bool)

(declare-datatypes ((List!32206 0))(
  ( (Nil!32203) (Cons!32202 (h!33411 (_ BitVec 64)) (t!46907 List!32206)) )
))
(declare-fun noDuplicate!2623 (List!32206) Bool)

(assert (=> b!1381216 (= e!782960 (not (noDuplicate!2623 Nil!32203)))))

(declare-fun b!1381214 () Bool)

(declare-fun res!922951 () Bool)

(assert (=> b!1381214 (=> (not res!922951) (not e!782960))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381214 (= res!922951 (validKeyInArray!0 (select (arr!45492 a!2971) i!1094)))))

(declare-fun b!1381215 () Bool)

(declare-fun res!922953 () Bool)

(assert (=> b!1381215 (=> (not res!922953) (not e!782960))))

(assert (=> b!1381215 (= res!922953 (and (bvsle #b00000000000000000000000000000000 (size!46043 a!2971)) (bvslt (size!46043 a!2971) #b01111111111111111111111111111111)))))

(declare-fun b!1381213 () Bool)

(declare-fun res!922952 () Bool)

(assert (=> b!1381213 (=> (not res!922952) (not e!782960))))

(assert (=> b!1381213 (= res!922952 (and (= (size!46043 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46043 a!2971))))))

(assert (= (and start!117866 res!922950) b!1381213))

(assert (= (and b!1381213 res!922952) b!1381214))

(assert (= (and b!1381214 res!922951) b!1381215))

(assert (= (and b!1381215 res!922953) b!1381216))

(declare-fun m!1266473 () Bool)

(assert (=> start!117866 m!1266473))

(declare-fun m!1266475 () Bool)

(assert (=> start!117866 m!1266475))

(declare-fun m!1266477 () Bool)

(assert (=> b!1381216 m!1266477))

(declare-fun m!1266479 () Bool)

(assert (=> b!1381214 m!1266479))

(assert (=> b!1381214 m!1266479))

(declare-fun m!1266481 () Bool)

(assert (=> b!1381214 m!1266481))

(push 1)

(assert (not b!1381214))

(assert (not start!117866))

(assert (not b!1381216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148981 () Bool)

(assert (=> d!148981 (= (validKeyInArray!0 (select (arr!45492 a!2971) i!1094)) (and (not (= (select (arr!45492 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45492 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1381214 d!148981))

(declare-fun d!148983 () Bool)

(assert (=> d!148983 (= (validMask!0 mask!3034) (and (or (= mask!3034 #b00000000000000000000000000000111) (= mask!3034 #b00000000000000000000000000001111) (= mask!3034 #b00000000000000000000000000011111) (= mask!3034 #b00000000000000000000000000111111) (= mask!3034 #b00000000000000000000000001111111) (= mask!3034 #b00000000000000000000000011111111) (= mask!3034 #b00000000000000000000000111111111) (= mask!3034 #b00000000000000000000001111111111) (= mask!3034 #b00000000000000000000011111111111) (= mask!3034 #b00000000000000000000111111111111) (= mask!3034 #b00000000000000000001111111111111) (= mask!3034 #b00000000000000000011111111111111) (= mask!3034 #b00000000000000000111111111111111) (= mask!3034 #b00000000000000001111111111111111) (= mask!3034 #b00000000000000011111111111111111) (= mask!3034 #b00000000000000111111111111111111) (= mask!3034 #b00000000000001111111111111111111) (= mask!3034 #b00000000000011111111111111111111) (= mask!3034 #b00000000000111111111111111111111) (= mask!3034 #b00000000001111111111111111111111) (= mask!3034 #b00000000011111111111111111111111) (= mask!3034 #b00000000111111111111111111111111) (= mask!3034 #b00000001111111111111111111111111) (= mask!3034 #b00000011111111111111111111111111) (= mask!3034 #b00000111111111111111111111111111) (= mask!3034 #b00001111111111111111111111111111) (= mask!3034 #b00011111111111111111111111111111) (= mask!3034 #b00111111111111111111111111111111)) (bvsle mask!3034 #b00111111111111111111111111111111)))))

