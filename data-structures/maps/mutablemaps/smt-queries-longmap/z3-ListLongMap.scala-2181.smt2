; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36430 () Bool)

(assert start!36430)

(declare-fun b!364065 () Bool)

(declare-fun res!203378 () Bool)

(declare-fun e!222907 () Bool)

(assert (=> b!364065 (=> (not res!203378) (not e!222907))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20672 0))(
  ( (array!20673 (arr!9812 (Array (_ BitVec 32) (_ BitVec 64))) (size!10164 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20672)

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20672 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364065 (= res!203378 (= (arrayCountValidKeys!0 (array!20673 (store (arr!9812 a!4289) i!1472 k0!2974) (size!10164 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun b!364066 () Bool)

(declare-fun res!203380 () Bool)

(assert (=> b!364066 (=> (not res!203380) (not e!222907))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364066 (= res!203380 (validKeyInArray!0 k0!2974))))

(declare-fun b!364067 () Bool)

(declare-fun res!203377 () Bool)

(assert (=> b!364067 (=> (not res!203377) (not e!222907))))

(assert (=> b!364067 (= res!203377 (and (bvslt (size!10164 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10164 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364068 () Bool)

(declare-fun res!203376 () Bool)

(assert (=> b!364068 (=> (not res!203376) (not e!222907))))

(assert (=> b!364068 (= res!203376 (not (validKeyInArray!0 (select (arr!9812 a!4289) i!1472))))))

(declare-fun res!203379 () Bool)

(assert (=> start!36430 (=> (not res!203379) (not e!222907))))

(assert (=> start!36430 (= res!203379 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10164 a!4289))))))

(assert (=> start!36430 e!222907))

(assert (=> start!36430 true))

(declare-fun array_inv!7250 (array!20672) Bool)

(assert (=> start!36430 (array_inv!7250 a!4289)))

(declare-fun b!364069 () Bool)

(assert (=> b!364069 (= e!222907 (and (bvsle from!3650 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(assert (= (and start!36430 res!203379) b!364068))

(assert (= (and b!364068 res!203376) b!364066))

(assert (= (and b!364066 res!203380) b!364067))

(assert (= (and b!364067 res!203377) b!364065))

(assert (= (and b!364065 res!203378) b!364069))

(declare-fun m!361605 () Bool)

(assert (=> b!364065 m!361605))

(declare-fun m!361607 () Bool)

(assert (=> b!364065 m!361607))

(declare-fun m!361609 () Bool)

(assert (=> b!364065 m!361609))

(declare-fun m!361611 () Bool)

(assert (=> b!364066 m!361611))

(declare-fun m!361613 () Bool)

(assert (=> b!364068 m!361613))

(assert (=> b!364068 m!361613))

(declare-fun m!361615 () Bool)

(assert (=> b!364068 m!361615))

(declare-fun m!361617 () Bool)

(assert (=> start!36430 m!361617))

(check-sat (not start!36430) (not b!364065) (not b!364066) (not b!364068))
(check-sat)
