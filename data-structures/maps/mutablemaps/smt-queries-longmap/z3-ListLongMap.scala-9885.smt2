; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117100 () Bool)

(assert start!117100)

(declare-fun res!920639 () Bool)

(declare-fun e!780647 () Bool)

(assert (=> start!117100 (=> (not res!920639) (not e!780647))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93633 0))(
  ( (array!93634 (arr!45212 (Array (_ BitVec 32) (_ BitVec 64))) (size!45763 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93633)

(assert (=> start!117100 (= res!920639 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45763 a!4094))))))

(assert (=> start!117100 e!780647))

(assert (=> start!117100 true))

(declare-fun array_inv!34157 (array!93633) Bool)

(assert (=> start!117100 (array_inv!34157 a!4094)))

(declare-fun b!1377995 () Bool)

(declare-fun res!920638 () Bool)

(assert (=> b!1377995 (=> (not res!920638) (not e!780647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377995 (= res!920638 (validKeyInArray!0 (select (arr!45212 a!4094) i!1451)))))

(declare-fun b!1377996 () Bool)

(declare-fun res!920640 () Bool)

(assert (=> b!1377996 (=> (not res!920640) (not e!780647))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1377996 (= res!920640 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1377997 () Bool)

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1377997 (= e!780647 (and (bvslt (size!45763 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45763 a!4094)) (bvsge i!1451 from!3466) (bvsgt from!3466 (bvadd #b00000000000000000000000000000001 i!1451))))))

(assert (= (and start!117100 res!920639) b!1377995))

(assert (= (and b!1377995 res!920638) b!1377996))

(assert (= (and b!1377996 res!920640) b!1377997))

(declare-fun m!1262501 () Bool)

(assert (=> start!117100 m!1262501))

(declare-fun m!1262503 () Bool)

(assert (=> b!1377995 m!1262503))

(assert (=> b!1377995 m!1262503))

(declare-fun m!1262505 () Bool)

(assert (=> b!1377995 m!1262505))

(declare-fun m!1262507 () Bool)

(assert (=> b!1377996 m!1262507))

(check-sat (not b!1377996) (not b!1377995) (not start!117100))
(check-sat)
