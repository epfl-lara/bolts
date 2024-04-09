; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36442 () Bool)

(assert start!36442)

(declare-fun b!364141 () Bool)

(declare-fun res!203455 () Bool)

(declare-fun e!222943 () Bool)

(assert (=> b!364141 (=> (not res!203455) (not e!222943))))

(declare-datatypes ((array!20684 0))(
  ( (array!20685 (arr!9818 (Array (_ BitVec 32) (_ BitVec 64))) (size!10170 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20684)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364141 (= res!203455 (not (validKeyInArray!0 (select (arr!9818 a!4289) i!1472))))))

(declare-fun b!364144 () Bool)

(assert (=> b!364144 (= e!222943 false)))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168436 () (_ BitVec 32))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20684 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364144 (= lt!168436 (arrayCountValidKeys!0 (array!20685 (store (arr!9818 a!4289) i!1472 k0!2974) (size!10170 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168437 () (_ BitVec 32))

(assert (=> b!364144 (= lt!168437 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364143 () Bool)

(declare-fun res!203452 () Bool)

(assert (=> b!364143 (=> (not res!203452) (not e!222943))))

(assert (=> b!364143 (= res!203452 (and (bvslt (size!10170 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10170 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!203453 () Bool)

(assert (=> start!36442 (=> (not res!203453) (not e!222943))))

(assert (=> start!36442 (= res!203453 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10170 a!4289))))))

(assert (=> start!36442 e!222943))

(assert (=> start!36442 true))

(declare-fun array_inv!7256 (array!20684) Bool)

(assert (=> start!36442 (array_inv!7256 a!4289)))

(declare-fun b!364142 () Bool)

(declare-fun res!203454 () Bool)

(assert (=> b!364142 (=> (not res!203454) (not e!222943))))

(assert (=> b!364142 (= res!203454 (validKeyInArray!0 k0!2974))))

(assert (= (and start!36442 res!203453) b!364141))

(assert (= (and b!364141 res!203455) b!364142))

(assert (= (and b!364142 res!203454) b!364143))

(assert (= (and b!364143 res!203452) b!364144))

(declare-fun m!361689 () Bool)

(assert (=> b!364141 m!361689))

(assert (=> b!364141 m!361689))

(declare-fun m!361691 () Bool)

(assert (=> b!364141 m!361691))

(declare-fun m!361693 () Bool)

(assert (=> b!364144 m!361693))

(declare-fun m!361695 () Bool)

(assert (=> b!364144 m!361695))

(declare-fun m!361697 () Bool)

(assert (=> b!364144 m!361697))

(declare-fun m!361699 () Bool)

(assert (=> start!36442 m!361699))

(declare-fun m!361701 () Bool)

(assert (=> b!364142 m!361701))

(check-sat (not start!36442) (not b!364144) (not b!364142) (not b!364141))
