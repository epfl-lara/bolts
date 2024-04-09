; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117308 () Bool)

(assert start!117308)

(declare-fun b!1379501 () Bool)

(declare-fun res!922050 () Bool)

(declare-fun e!781501 () Bool)

(assert (=> b!1379501 (=> (not res!922050) (not e!781501))))

(declare-datatypes ((array!93820 0))(
  ( (array!93821 (arr!45304 (Array (_ BitVec 32) (_ BitVec 64))) (size!45855 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93820)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379501 (= res!922050 (validKeyInArray!0 (select (arr!45304 a!4094) i!1451)))))

(declare-fun b!1379502 () Bool)

(declare-fun res!922053 () Bool)

(declare-fun e!781502 () Bool)

(assert (=> b!1379502 (=> (not res!922053) (not e!781502))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379502 (= res!922053 (bvsle from!3466 #b00000000000000000000000000000000))))

(declare-fun b!1379503 () Bool)

(declare-fun res!922049 () Bool)

(assert (=> b!1379503 (=> (not res!922049) (not e!781501))))

(assert (=> b!1379503 (= res!922049 (and (bvslt (size!45855 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45855 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379504 () Bool)

(assert (=> b!1379504 (= e!781501 e!781502)))

(declare-fun res!922051 () Bool)

(assert (=> b!1379504 (=> (not res!922051) (not e!781502))))

(declare-fun lt!607612 () array!93820)

(declare-fun arrayCountValidKeys!0 (array!93820 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379504 (= res!922051 (= (arrayCountValidKeys!0 lt!607612 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1379504 (= lt!607612 (array!93821 (store (arr!45304 a!4094) i!1451 k!2953) (size!45855 a!4094)))))

(declare-fun b!1379505 () Bool)

(declare-fun res!922048 () Bool)

(assert (=> b!1379505 (=> (not res!922048) (not e!781501))))

(assert (=> b!1379505 (= res!922048 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1379506 () Bool)

(assert (=> b!1379506 (= e!781502 (not (= (arrayCountValidKeys!0 lt!607612 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))))

(declare-fun res!922052 () Bool)

(assert (=> start!117308 (=> (not res!922052) (not e!781501))))

(assert (=> start!117308 (= res!922052 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45855 a!4094))))))

(assert (=> start!117308 e!781501))

(assert (=> start!117308 true))

(declare-fun array_inv!34249 (array!93820) Bool)

(assert (=> start!117308 (array_inv!34249 a!4094)))

(assert (= (and start!117308 res!922052) b!1379501))

(assert (= (and b!1379501 res!922050) b!1379505))

(assert (= (and b!1379505 res!922048) b!1379503))

(assert (= (and b!1379503 res!922049) b!1379504))

(assert (= (and b!1379504 res!922051) b!1379502))

(assert (= (and b!1379502 res!922053) b!1379506))

(declare-fun m!1264719 () Bool)

(assert (=> b!1379506 m!1264719))

(declare-fun m!1264721 () Bool)

(assert (=> b!1379506 m!1264721))

(declare-fun m!1264723 () Bool)

(assert (=> b!1379501 m!1264723))

(assert (=> b!1379501 m!1264723))

(declare-fun m!1264725 () Bool)

(assert (=> b!1379501 m!1264725))

(declare-fun m!1264727 () Bool)

(assert (=> b!1379504 m!1264727))

(declare-fun m!1264729 () Bool)

(assert (=> b!1379504 m!1264729))

(declare-fun m!1264731 () Bool)

(assert (=> b!1379504 m!1264731))

(declare-fun m!1264733 () Bool)

(assert (=> start!117308 m!1264733))

(declare-fun m!1264735 () Bool)

(assert (=> b!1379505 m!1264735))

(push 1)

(assert (not b!1379506))

(assert (not b!1379504))

(assert (not start!117308))

(assert (not b!1379505))

(assert (not b!1379501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

