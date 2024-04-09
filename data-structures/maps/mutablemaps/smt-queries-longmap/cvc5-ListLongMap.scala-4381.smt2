; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60330 () Bool)

(assert start!60330)

(declare-fun b!677046 () Bool)

(declare-fun e!385993 () Bool)

(declare-datatypes ((List!12949 0))(
  ( (Nil!12946) (Cons!12945 (h!13990 (_ BitVec 64)) (t!19185 List!12949)) )
))
(declare-fun acc!681 () List!12949)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3492 (List!12949 (_ BitVec 64)) Bool)

(assert (=> b!677046 (= e!385993 (not (contains!3492 acc!681 k!2843)))))

(declare-fun b!677047 () Bool)

(declare-fun res!443655 () Bool)

(declare-fun e!385996 () Bool)

(assert (=> b!677047 (=> (not res!443655) (not e!385996))))

(declare-fun noDuplicate!739 (List!12949) Bool)

(assert (=> b!677047 (= res!443655 (noDuplicate!739 acc!681))))

(declare-fun b!677049 () Bool)

(declare-fun res!443663 () Bool)

(assert (=> b!677049 (=> (not res!443663) (not e!385996))))

(declare-datatypes ((array!39333 0))(
  ( (array!39334 (arr!18855 (Array (_ BitVec 32) (_ BitVec 64))) (size!19219 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39333)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39333 (_ BitVec 32) List!12949) Bool)

(assert (=> b!677049 (= res!443663 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677050 () Bool)

(declare-fun res!443648 () Bool)

(assert (=> b!677050 (=> (not res!443648) (not e!385996))))

(declare-fun arrayContainsKey!0 (array!39333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677050 (= res!443648 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!677051 () Bool)

(declare-fun e!385992 () Bool)

(assert (=> b!677051 (= e!385992 e!385993)))

(declare-fun res!443650 () Bool)

(assert (=> b!677051 (=> (not res!443650) (not e!385993))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677051 (= res!443650 (bvsle from!3004 i!1382))))

(declare-fun b!677052 () Bool)

(declare-fun res!443646 () Bool)

(assert (=> b!677052 (=> (not res!443646) (not e!385996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677052 (= res!443646 (not (validKeyInArray!0 (select (arr!18855 a!3626) from!3004))))))

(declare-fun b!677053 () Bool)

(declare-fun e!385997 () Bool)

(declare-fun e!385994 () Bool)

(assert (=> b!677053 (= e!385997 e!385994)))

(declare-fun res!443651 () Bool)

(assert (=> b!677053 (=> (not res!443651) (not e!385994))))

(assert (=> b!677053 (= res!443651 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677054 () Bool)

(declare-fun res!443659 () Bool)

(assert (=> b!677054 (=> (not res!443659) (not e!385996))))

(assert (=> b!677054 (= res!443659 e!385992)))

(declare-fun res!443665 () Bool)

(assert (=> b!677054 (=> res!443665 e!385992)))

(declare-fun e!385999 () Bool)

(assert (=> b!677054 (= res!443665 e!385999)))

(declare-fun res!443661 () Bool)

(assert (=> b!677054 (=> (not res!443661) (not e!385999))))

(assert (=> b!677054 (= res!443661 (bvsgt from!3004 i!1382))))

(declare-fun b!677055 () Bool)

(assert (=> b!677055 (= e!385996 (not true))))

(assert (=> b!677055 (arrayNoDuplicates!0 (array!39334 (store (arr!18855 a!3626) i!1382 k!2843) (size!19219 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23746 0))(
  ( (Unit!23747) )
))
(declare-fun lt!312756 () Unit!23746)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39333 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12949) Unit!23746)

(assert (=> b!677055 (= lt!312756 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677056 () Bool)

(declare-fun res!443647 () Bool)

(assert (=> b!677056 (=> (not res!443647) (not e!385996))))

(assert (=> b!677056 (= res!443647 e!385997)))

(declare-fun res!443664 () Bool)

(assert (=> b!677056 (=> res!443664 e!385997)))

(declare-fun e!385998 () Bool)

(assert (=> b!677056 (= res!443664 e!385998)))

(declare-fun res!443666 () Bool)

(assert (=> b!677056 (=> (not res!443666) (not e!385998))))

(assert (=> b!677056 (= res!443666 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677057 () Bool)

(declare-fun res!443660 () Bool)

(assert (=> b!677057 (=> (not res!443660) (not e!385996))))

(assert (=> b!677057 (= res!443660 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19219 a!3626))))))

(declare-fun res!443649 () Bool)

(assert (=> start!60330 (=> (not res!443649) (not e!385996))))

(assert (=> start!60330 (= res!443649 (and (bvslt (size!19219 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19219 a!3626))))))

(assert (=> start!60330 e!385996))

(assert (=> start!60330 true))

(declare-fun array_inv!14629 (array!39333) Bool)

(assert (=> start!60330 (array_inv!14629 a!3626)))

(declare-fun b!677048 () Bool)

(declare-fun res!443656 () Bool)

(assert (=> b!677048 (=> (not res!443656) (not e!385996))))

(assert (=> b!677048 (= res!443656 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!677058 () Bool)

(declare-fun res!443662 () Bool)

(assert (=> b!677058 (=> (not res!443662) (not e!385996))))

(assert (=> b!677058 (= res!443662 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677059 () Bool)

(assert (=> b!677059 (= e!385999 (contains!3492 acc!681 k!2843))))

(declare-fun b!677060 () Bool)

(declare-fun res!443652 () Bool)

(assert (=> b!677060 (=> (not res!443652) (not e!385996))))

(assert (=> b!677060 (= res!443652 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12946))))

(declare-fun b!677061 () Bool)

(declare-fun res!443653 () Bool)

(assert (=> b!677061 (=> (not res!443653) (not e!385996))))

(assert (=> b!677061 (= res!443653 (validKeyInArray!0 k!2843))))

(declare-fun b!677062 () Bool)

(declare-fun res!443658 () Bool)

(assert (=> b!677062 (=> (not res!443658) (not e!385996))))

(assert (=> b!677062 (= res!443658 (not (contains!3492 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677063 () Bool)

(declare-fun res!443657 () Bool)

(assert (=> b!677063 (=> (not res!443657) (not e!385996))))

(assert (=> b!677063 (= res!443657 (not (contains!3492 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677064 () Bool)

(assert (=> b!677064 (= e!385998 (contains!3492 acc!681 k!2843))))

(declare-fun b!677065 () Bool)

(assert (=> b!677065 (= e!385994 (not (contains!3492 acc!681 k!2843)))))

(declare-fun b!677066 () Bool)

(declare-fun res!443654 () Bool)

(assert (=> b!677066 (=> (not res!443654) (not e!385996))))

(assert (=> b!677066 (= res!443654 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19219 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!60330 res!443649) b!677047))

(assert (= (and b!677047 res!443655) b!677062))

(assert (= (and b!677062 res!443658) b!677063))

(assert (= (and b!677063 res!443657) b!677054))

(assert (= (and b!677054 res!443661) b!677059))

(assert (= (and b!677054 (not res!443665)) b!677051))

(assert (= (and b!677051 res!443650) b!677046))

(assert (= (and b!677054 res!443659) b!677060))

(assert (= (and b!677060 res!443652) b!677049))

(assert (= (and b!677049 res!443663) b!677057))

(assert (= (and b!677057 res!443660) b!677061))

(assert (= (and b!677061 res!443653) b!677050))

(assert (= (and b!677050 res!443648) b!677066))

(assert (= (and b!677066 res!443654) b!677052))

(assert (= (and b!677052 res!443646) b!677048))

(assert (= (and b!677048 res!443656) b!677056))

(assert (= (and b!677056 res!443666) b!677064))

(assert (= (and b!677056 (not res!443664)) b!677053))

(assert (= (and b!677053 res!443651) b!677065))

(assert (= (and b!677056 res!443647) b!677058))

(assert (= (and b!677058 res!443662) b!677055))

(declare-fun m!643491 () Bool)

(assert (=> b!677058 m!643491))

(declare-fun m!643493 () Bool)

(assert (=> b!677055 m!643493))

(declare-fun m!643495 () Bool)

(assert (=> b!677055 m!643495))

(declare-fun m!643497 () Bool)

(assert (=> b!677055 m!643497))

(declare-fun m!643499 () Bool)

(assert (=> b!677050 m!643499))

(declare-fun m!643501 () Bool)

(assert (=> b!677063 m!643501))

(declare-fun m!643503 () Bool)

(assert (=> b!677060 m!643503))

(declare-fun m!643505 () Bool)

(assert (=> b!677061 m!643505))

(declare-fun m!643507 () Bool)

(assert (=> b!677047 m!643507))

(declare-fun m!643509 () Bool)

(assert (=> b!677062 m!643509))

(declare-fun m!643511 () Bool)

(assert (=> start!60330 m!643511))

(declare-fun m!643513 () Bool)

(assert (=> b!677046 m!643513))

(assert (=> b!677064 m!643513))

(declare-fun m!643515 () Bool)

(assert (=> b!677049 m!643515))

(assert (=> b!677059 m!643513))

(declare-fun m!643517 () Bool)

(assert (=> b!677052 m!643517))

(assert (=> b!677052 m!643517))

(declare-fun m!643519 () Bool)

(assert (=> b!677052 m!643519))

(assert (=> b!677065 m!643513))

(push 1)

(assert (not b!677059))

(assert (not b!677061))

(assert (not b!677050))

(assert (not b!677062))

(assert (not b!677052))

(assert (not b!677049))

(assert (not b!677047))

(assert (not b!677064))

(assert (not b!677058))

(assert (not b!677065))

(assert (not b!677055))

(assert (not start!60330))

(assert (not b!677046))

(assert (not b!677060))

(assert (not b!677063))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

