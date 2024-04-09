; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117106 () Bool)

(assert start!117106)

(declare-fun b!1378028 () Bool)

(declare-fun res!920670 () Bool)

(declare-fun e!780665 () Bool)

(assert (=> b!1378028 (=> (not res!920670) (not e!780665))))

(declare-fun k0!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378028 (= res!920670 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1378027 () Bool)

(declare-fun res!920672 () Bool)

(assert (=> b!1378027 (=> (not res!920672) (not e!780665))))

(declare-datatypes ((array!93639 0))(
  ( (array!93640 (arr!45215 (Array (_ BitVec 32) (_ BitVec 64))) (size!45766 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93639)

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378027 (= res!920672 (validKeyInArray!0 (select (arr!45215 a!4094) i!1451)))))

(declare-fun b!1378029 () Bool)

(declare-fun res!920673 () Bool)

(assert (=> b!1378029 (=> (not res!920673) (not e!780665))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378029 (= res!920673 (and (bvslt (size!45766 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45766 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!920671 () Bool)

(assert (=> start!117106 (=> (not res!920671) (not e!780665))))

(assert (=> start!117106 (= res!920671 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45766 a!4094))))))

(assert (=> start!117106 e!780665))

(assert (=> start!117106 true))

(declare-fun array_inv!34160 (array!93639) Bool)

(assert (=> start!117106 (array_inv!34160 a!4094)))

(declare-fun b!1378030 () Bool)

(assert (=> b!1378030 (= e!780665 false)))

(declare-fun lt!606243 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93639 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378030 (= lt!606243 (arrayCountValidKeys!0 (array!93640 (store (arr!45215 a!4094) i!1451 k0!2953) (size!45766 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606244 () (_ BitVec 32))

(assert (=> b!1378030 (= lt!606244 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (= (and start!117106 res!920671) b!1378027))

(assert (= (and b!1378027 res!920672) b!1378028))

(assert (= (and b!1378028 res!920670) b!1378029))

(assert (= (and b!1378029 res!920673) b!1378030))

(declare-fun m!1262531 () Bool)

(assert (=> b!1378028 m!1262531))

(declare-fun m!1262533 () Bool)

(assert (=> b!1378027 m!1262533))

(assert (=> b!1378027 m!1262533))

(declare-fun m!1262535 () Bool)

(assert (=> b!1378027 m!1262535))

(declare-fun m!1262537 () Bool)

(assert (=> start!117106 m!1262537))

(declare-fun m!1262539 () Bool)

(assert (=> b!1378030 m!1262539))

(declare-fun m!1262541 () Bool)

(assert (=> b!1378030 m!1262541))

(declare-fun m!1262543 () Bool)

(assert (=> b!1378030 m!1262543))

(check-sat (not b!1378030) (not b!1378028) (not start!117106) (not b!1378027))
