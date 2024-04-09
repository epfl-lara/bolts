; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117094 () Bool)

(assert start!117094)

(declare-fun res!920611 () Bool)

(declare-fun e!780629 () Bool)

(assert (=> start!117094 (=> (not res!920611) (not e!780629))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93627 0))(
  ( (array!93628 (arr!45209 (Array (_ BitVec 32) (_ BitVec 64))) (size!45760 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93627)

(assert (=> start!117094 (= res!920611 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45760 a!4094))))))

(assert (=> start!117094 e!780629))

(assert (=> start!117094 true))

(declare-fun array_inv!34154 (array!93627) Bool)

(assert (=> start!117094 (array_inv!34154 a!4094)))

(declare-fun b!1377968 () Bool)

(declare-fun res!920612 () Bool)

(assert (=> b!1377968 (=> (not res!920612) (not e!780629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377968 (= res!920612 (validKeyInArray!0 (select (arr!45209 a!4094) i!1451)))))

(declare-fun b!1377969 () Bool)

(declare-fun res!920613 () Bool)

(assert (=> b!1377969 (=> (not res!920613) (not e!780629))))

(declare-fun k0!2953 () (_ BitVec 64))

(assert (=> b!1377969 (= res!920613 (not (validKeyInArray!0 k0!2953)))))

(declare-fun b!1377970 () Bool)

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1377970 (= e!780629 (and (bvslt (size!45760 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45760 a!4094)) (bvsge i!1451 from!3466) (bvsgt from!3466 (bvadd #b00000000000000000000000000000001 i!1451))))))

(assert (= (and start!117094 res!920611) b!1377968))

(assert (= (and b!1377968 res!920612) b!1377969))

(assert (= (and b!1377969 res!920613) b!1377970))

(declare-fun m!1262477 () Bool)

(assert (=> start!117094 m!1262477))

(declare-fun m!1262479 () Bool)

(assert (=> b!1377968 m!1262479))

(assert (=> b!1377968 m!1262479))

(declare-fun m!1262481 () Bool)

(assert (=> b!1377968 m!1262481))

(declare-fun m!1262483 () Bool)

(assert (=> b!1377969 m!1262483))

(check-sat (not b!1377968) (not b!1377969) (not start!117094))
(check-sat)
