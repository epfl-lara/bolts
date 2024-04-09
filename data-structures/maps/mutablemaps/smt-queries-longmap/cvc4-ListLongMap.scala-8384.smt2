; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102020 () Bool)

(assert start!102020)

(declare-fun b!1227795 () Bool)

(declare-fun e!697080 () Bool)

(assert (=> b!1227795 (= e!697080 true)))

(declare-datatypes ((Unit!40614 0))(
  ( (Unit!40615) )
))
(declare-fun lt!558887 () Unit!40614)

(declare-datatypes ((List!27188 0))(
  ( (Nil!27185) (Cons!27184 (h!28393 (_ BitVec 64)) (t!40658 List!27188)) )
))
(declare-fun acc!823 () List!27188)

(declare-fun noDuplicateSubseq!43 (List!27188 List!27188) Unit!40614)

(assert (=> b!1227795 (= lt!558887 (noDuplicateSubseq!43 Nil!27185 acc!823))))

(declare-fun b!1227796 () Bool)

(declare-fun res!816530 () Bool)

(assert (=> b!1227796 (=> res!816530 e!697080)))

(declare-fun contains!7103 (List!27188 (_ BitVec 64)) Bool)

(assert (=> b!1227796 (= res!816530 (contains!7103 Nil!27185 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227797 () Bool)

(declare-fun res!816524 () Bool)

(declare-fun e!697081 () Bool)

(assert (=> b!1227797 (=> (not res!816524) (not e!697081))))

(declare-datatypes ((array!79236 0))(
  ( (array!79237 (arr!38237 (Array (_ BitVec 32) (_ BitVec 64))) (size!38774 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79236)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227797 (= res!816524 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227798 () Bool)

(declare-fun res!816535 () Bool)

(assert (=> b!1227798 (=> (not res!816535) (not e!697081))))

(declare-fun arrayNoDuplicates!0 (array!79236 (_ BitVec 32) List!27188) Bool)

(assert (=> b!1227798 (= res!816535 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227799 () Bool)

(declare-fun res!816536 () Bool)

(assert (=> b!1227799 (=> (not res!816536) (not e!697081))))

(assert (=> b!1227799 (= res!816536 (not (contains!7103 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227800 () Bool)

(declare-fun res!816533 () Bool)

(assert (=> b!1227800 (=> (not res!816533) (not e!697081))))

(assert (=> b!1227800 (= res!816533 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38774 a!3806)) (bvslt from!3184 (size!38774 a!3806))))))

(declare-fun b!1227801 () Bool)

(declare-fun res!816525 () Bool)

(assert (=> b!1227801 (=> (not res!816525) (not e!697081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227801 (= res!816525 (validKeyInArray!0 k!2913))))

(declare-fun b!1227802 () Bool)

(declare-fun res!816528 () Bool)

(assert (=> b!1227802 (=> (not res!816528) (not e!697081))))

(assert (=> b!1227802 (= res!816528 (validKeyInArray!0 (select (arr!38237 a!3806) from!3184)))))

(declare-fun res!816527 () Bool)

(assert (=> start!102020 (=> (not res!816527) (not e!697081))))

(assert (=> start!102020 (= res!816527 (bvslt (size!38774 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102020 e!697081))

(declare-fun array_inv!29013 (array!79236) Bool)

(assert (=> start!102020 (array_inv!29013 a!3806)))

(assert (=> start!102020 true))

(declare-fun b!1227803 () Bool)

(declare-fun res!816532 () Bool)

(assert (=> b!1227803 (=> (not res!816532) (not e!697081))))

(assert (=> b!1227803 (= res!816532 (not (contains!7103 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227804 () Bool)

(declare-fun res!816534 () Bool)

(assert (=> b!1227804 (=> res!816534 e!697080)))

(assert (=> b!1227804 (= res!816534 (contains!7103 Nil!27185 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227805 () Bool)

(declare-fun res!816529 () Bool)

(assert (=> b!1227805 (=> res!816529 e!697080)))

(declare-fun subseq!490 (List!27188 List!27188) Bool)

(assert (=> b!1227805 (= res!816529 (not (subseq!490 Nil!27185 acc!823)))))

(declare-fun b!1227806 () Bool)

(assert (=> b!1227806 (= e!697081 (not e!697080))))

(declare-fun res!816526 () Bool)

(assert (=> b!1227806 (=> res!816526 e!697080)))

(assert (=> b!1227806 (= res!816526 (bvsgt from!3184 (size!38774 a!3806)))))

(assert (=> b!1227806 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27184 (select (arr!38237 a!3806) from!3184) acc!823))))

(declare-fun b!1227807 () Bool)

(declare-fun res!816531 () Bool)

(assert (=> b!1227807 (=> (not res!816531) (not e!697081))))

(declare-fun noDuplicate!1710 (List!27188) Bool)

(assert (=> b!1227807 (= res!816531 (noDuplicate!1710 acc!823))))

(assert (= (and start!102020 res!816527) b!1227801))

(assert (= (and b!1227801 res!816525) b!1227800))

(assert (= (and b!1227800 res!816533) b!1227807))

(assert (= (and b!1227807 res!816531) b!1227799))

(assert (= (and b!1227799 res!816536) b!1227803))

(assert (= (and b!1227803 res!816532) b!1227797))

(assert (= (and b!1227797 res!816524) b!1227798))

(assert (= (and b!1227798 res!816535) b!1227802))

(assert (= (and b!1227802 res!816528) b!1227806))

(assert (= (and b!1227806 (not res!816526)) b!1227796))

(assert (= (and b!1227796 (not res!816530)) b!1227804))

(assert (= (and b!1227804 (not res!816534)) b!1227805))

(assert (= (and b!1227805 (not res!816529)) b!1227795))

(declare-fun m!1132501 () Bool)

(assert (=> b!1227806 m!1132501))

(declare-fun m!1132503 () Bool)

(assert (=> b!1227806 m!1132503))

(declare-fun m!1132505 () Bool)

(assert (=> b!1227801 m!1132505))

(declare-fun m!1132507 () Bool)

(assert (=> b!1227807 m!1132507))

(declare-fun m!1132509 () Bool)

(assert (=> b!1227797 m!1132509))

(declare-fun m!1132511 () Bool)

(assert (=> b!1227805 m!1132511))

(declare-fun m!1132513 () Bool)

(assert (=> b!1227795 m!1132513))

(declare-fun m!1132515 () Bool)

(assert (=> b!1227796 m!1132515))

(declare-fun m!1132517 () Bool)

(assert (=> b!1227799 m!1132517))

(declare-fun m!1132519 () Bool)

(assert (=> b!1227803 m!1132519))

(assert (=> b!1227802 m!1132501))

(assert (=> b!1227802 m!1132501))

(declare-fun m!1132521 () Bool)

(assert (=> b!1227802 m!1132521))

(declare-fun m!1132523 () Bool)

(assert (=> b!1227804 m!1132523))

(declare-fun m!1132525 () Bool)

(assert (=> b!1227798 m!1132525))

(declare-fun m!1132527 () Bool)

(assert (=> start!102020 m!1132527))

(push 1)

(assert (not b!1227797))

(assert (not b!1227805))

(assert (not b!1227807))

(assert (not start!102020))

(assert (not b!1227806))

(assert (not b!1227796))

(assert (not b!1227795))

(assert (not b!1227803))

(assert (not b!1227802))

(assert (not b!1227801))

(assert (not b!1227798))

(assert (not b!1227799))

(assert (not b!1227804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

