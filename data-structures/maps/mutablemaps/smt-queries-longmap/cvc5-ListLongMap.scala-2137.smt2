; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36122 () Bool)

(assert start!36122)

(declare-fun b!362091 () Bool)

(declare-fun res!201532 () Bool)

(declare-fun e!221791 () Bool)

(assert (=> b!362091 (=> (not res!201532) (not e!221791))))

(declare-datatypes ((array!20400 0))(
  ( (array!20401 (arr!9679 (Array (_ BitVec 32) (_ BitVec 64))) (size!10031 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20400)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362091 (= res!201532 (and (bvslt (size!10031 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10031 a!4337))))))

(declare-fun b!362090 () Bool)

(declare-fun res!201535 () Bool)

(assert (=> b!362090 (=> (not res!201535) (not e!221791))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362090 (= res!201535 (validKeyInArray!0 k!2980))))

(declare-fun b!362092 () Bool)

(assert (=> b!362092 (= e!221791 false)))

(declare-fun lt!166616 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20400 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362092 (= lt!166616 (arrayCountValidKeys!0 (array!20401 (store (arr!9679 a!4337) i!1478 k!2980) (size!10031 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166615 () (_ BitVec 32))

(assert (=> b!362092 (= lt!166615 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362089 () Bool)

(declare-fun res!201534 () Bool)

(assert (=> b!362089 (=> (not res!201534) (not e!221791))))

(assert (=> b!362089 (= res!201534 (not (validKeyInArray!0 (select (arr!9679 a!4337) i!1478))))))

(declare-fun res!201533 () Bool)

(assert (=> start!36122 (=> (not res!201533) (not e!221791))))

(assert (=> start!36122 (= res!201533 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10031 a!4337))))))

(assert (=> start!36122 e!221791))

(assert (=> start!36122 true))

(declare-fun array_inv!7117 (array!20400) Bool)

(assert (=> start!36122 (array_inv!7117 a!4337)))

(assert (= (and start!36122 res!201533) b!362089))

(assert (= (and b!362089 res!201534) b!362090))

(assert (= (and b!362090 res!201535) b!362091))

(assert (= (and b!362091 res!201532) b!362092))

(declare-fun m!358645 () Bool)

(assert (=> b!362090 m!358645))

(declare-fun m!358647 () Bool)

(assert (=> b!362092 m!358647))

(declare-fun m!358649 () Bool)

(assert (=> b!362092 m!358649))

(declare-fun m!358651 () Bool)

(assert (=> b!362092 m!358651))

(declare-fun m!358653 () Bool)

(assert (=> b!362089 m!358653))

(assert (=> b!362089 m!358653))

(declare-fun m!358655 () Bool)

(assert (=> b!362089 m!358655))

(declare-fun m!358657 () Bool)

(assert (=> start!36122 m!358657))

(push 1)

(assert (not b!362090))

(assert (not b!362092))

(assert (not start!36122))

(assert (not b!362089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

