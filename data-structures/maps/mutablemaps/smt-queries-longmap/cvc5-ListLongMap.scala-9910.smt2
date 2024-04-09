; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117248 () Bool)

(assert start!117248)

(declare-fun b!1379124 () Bool)

(declare-fun res!921770 () Bool)

(declare-fun e!781282 () Bool)

(assert (=> b!1379124 (=> (not res!921770) (not e!781282))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379124 (= res!921770 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379125 () Bool)

(declare-fun res!921771 () Bool)

(assert (=> b!1379125 (=> (not res!921771) (not e!781282))))

(declare-datatypes ((array!93781 0))(
  ( (array!93782 (arr!45286 (Array (_ BitVec 32) (_ BitVec 64))) (size!45837 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93781)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1379125 (= res!921771 (and (bvslt (size!45837 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45837 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun e!781283 () Bool)

(declare-fun b!1379126 () Bool)

(assert (=> b!1379126 (= e!781283 (not (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) (size!45837 a!4094)) (bvsge i!1451 (bvsub from!3466 #b00000000000000000000000000000001)))))))

(declare-fun lt!607181 () (_ BitVec 32))

(declare-fun lt!607180 () array!93781)

(declare-fun arrayCountValidKeys!0 (array!93781 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379126 (= (bvadd (arrayCountValidKeys!0 lt!607180 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607181) (arrayCountValidKeys!0 lt!607180 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45797 0))(
  ( (Unit!45798) )
))
(declare-fun lt!607179 () Unit!45797)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93781 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45797)

(assert (=> b!1379126 (= lt!607179 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607180 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607182 () (_ BitVec 32))

(assert (=> b!1379126 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607182) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607183 () Unit!45797)

(assert (=> b!1379126 (= lt!607183 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun res!921768 () Bool)

(assert (=> start!117248 (=> (not res!921768) (not e!781282))))

(assert (=> start!117248 (= res!921768 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45837 a!4094))))))

(assert (=> start!117248 e!781282))

(assert (=> start!117248 true))

(declare-fun array_inv!34231 (array!93781) Bool)

(assert (=> start!117248 (array_inv!34231 a!4094)))

(declare-fun b!1379127 () Bool)

(assert (=> b!1379127 (= e!781282 e!781283)))

(declare-fun res!921769 () Bool)

(assert (=> b!1379127 (=> (not res!921769) (not e!781283))))

(assert (=> b!1379127 (= res!921769 (and (= lt!607181 (bvsub lt!607182 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1379127 (= lt!607181 (arrayCountValidKeys!0 lt!607180 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379127 (= lt!607182 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379127 (= lt!607180 (array!93782 (store (arr!45286 a!4094) i!1451 k!2953) (size!45837 a!4094)))))

(declare-fun b!1379128 () Bool)

(declare-fun res!921767 () Bool)

(assert (=> b!1379128 (=> (not res!921767) (not e!781282))))

(assert (=> b!1379128 (= res!921767 (validKeyInArray!0 (select (arr!45286 a!4094) i!1451)))))

(assert (= (and start!117248 res!921768) b!1379128))

(assert (= (and b!1379128 res!921767) b!1379124))

(assert (= (and b!1379124 res!921770) b!1379125))

(assert (= (and b!1379125 res!921771) b!1379127))

(assert (= (and b!1379127 res!921769) b!1379126))

(declare-fun m!1264155 () Bool)

(assert (=> b!1379127 m!1264155))

(declare-fun m!1264157 () Bool)

(assert (=> b!1379127 m!1264157))

(declare-fun m!1264159 () Bool)

(assert (=> b!1379127 m!1264159))

(declare-fun m!1264161 () Bool)

(assert (=> b!1379126 m!1264161))

(declare-fun m!1264163 () Bool)

(assert (=> b!1379126 m!1264163))

(declare-fun m!1264165 () Bool)

(assert (=> b!1379126 m!1264165))

(declare-fun m!1264167 () Bool)

(assert (=> b!1379126 m!1264167))

(declare-fun m!1264169 () Bool)

(assert (=> b!1379126 m!1264169))

(declare-fun m!1264171 () Bool)

(assert (=> b!1379126 m!1264171))

(declare-fun m!1264173 () Bool)

(assert (=> b!1379128 m!1264173))

(assert (=> b!1379128 m!1264173))

(declare-fun m!1264175 () Bool)

(assert (=> b!1379128 m!1264175))

(declare-fun m!1264177 () Bool)

(assert (=> start!117248 m!1264177))

(declare-fun m!1264179 () Bool)

(assert (=> b!1379124 m!1264179))

(push 1)

(assert (not b!1379126))

(assert (not b!1379128))

(assert (not start!117248))

(assert (not b!1379124))

(assert (not b!1379127))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

