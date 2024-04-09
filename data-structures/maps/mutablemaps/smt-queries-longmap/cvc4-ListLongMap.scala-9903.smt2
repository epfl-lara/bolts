; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117210 () Bool)

(assert start!117210)

(declare-fun b!1378821 () Bool)

(declare-fun e!781112 () Bool)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378821 (= e!781112 (and (bvsgt from!3466 #b00000000000000000000000000000000) (or (bvslt (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvslt from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsgt from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))))

(declare-fun res!921465 () Bool)

(assert (=> start!117210 (=> (not res!921465) (not e!781112))))

(declare-datatypes ((array!93743 0))(
  ( (array!93744 (arr!45267 (Array (_ BitVec 32) (_ BitVec 64))) (size!45818 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93743)

(assert (=> start!117210 (= res!921465 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45818 a!4094))))))

(assert (=> start!117210 e!781112))

(assert (=> start!117210 true))

(declare-fun array_inv!34212 (array!93743) Bool)

(assert (=> start!117210 (array_inv!34212 a!4094)))

(declare-fun b!1378822 () Bool)

(declare-fun res!921466 () Bool)

(assert (=> b!1378822 (=> (not res!921466) (not e!781112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378822 (= res!921466 (validKeyInArray!0 (select (arr!45267 a!4094) i!1451)))))

(declare-fun b!1378823 () Bool)

(declare-fun res!921468 () Bool)

(assert (=> b!1378823 (=> (not res!921468) (not e!781112))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378823 (= res!921468 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378824 () Bool)

(declare-fun res!921467 () Bool)

(assert (=> b!1378824 (=> (not res!921467) (not e!781112))))

(assert (=> b!1378824 (= res!921467 (and (bvslt (size!45818 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45818 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378825 () Bool)

(declare-fun res!921464 () Bool)

(assert (=> b!1378825 (=> (not res!921464) (not e!781112))))

(declare-fun arrayCountValidKeys!0 (array!93743 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378825 (= res!921464 (= (arrayCountValidKeys!0 (array!93744 (store (arr!45267 a!4094) i!1451 k!2953) (size!45818 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(assert (= (and start!117210 res!921465) b!1378822))

(assert (= (and b!1378822 res!921466) b!1378823))

(assert (= (and b!1378823 res!921468) b!1378824))

(assert (= (and b!1378824 res!921467) b!1378825))

(assert (= (and b!1378825 res!921464) b!1378821))

(declare-fun m!1263709 () Bool)

(assert (=> start!117210 m!1263709))

(declare-fun m!1263711 () Bool)

(assert (=> b!1378822 m!1263711))

(assert (=> b!1378822 m!1263711))

(declare-fun m!1263713 () Bool)

(assert (=> b!1378822 m!1263713))

(declare-fun m!1263715 () Bool)

(assert (=> b!1378823 m!1263715))

(declare-fun m!1263717 () Bool)

(assert (=> b!1378825 m!1263717))

(declare-fun m!1263719 () Bool)

(assert (=> b!1378825 m!1263719))

(declare-fun m!1263721 () Bool)

(assert (=> b!1378825 m!1263721))

(push 1)

(assert (not b!1378825))

(assert (not b!1378823))

(assert (not b!1378822))

(assert (not start!117210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

