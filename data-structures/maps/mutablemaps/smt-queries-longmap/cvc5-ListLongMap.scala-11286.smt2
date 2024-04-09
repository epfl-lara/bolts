; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131608 () Bool)

(assert start!131608)

(declare-fun b!1541325 () Bool)

(declare-fun res!1057989 () Bool)

(declare-fun e!857282 () Bool)

(assert (=> b!1541325 (=> (not res!1057989) (not e!857282))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-datatypes ((array!102423 0))(
  ( (array!102424 (arr!49414 (Array (_ BitVec 32) (_ BitVec 64))) (size!49965 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102423)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(assert (=> b!1541325 (= res!1057989 (and (= (size!49965 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49965 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49965 a!3920))))))

(declare-fun b!1541326 () Bool)

(declare-fun res!1057986 () Bool)

(assert (=> b!1541326 (=> (not res!1057986) (not e!857282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102423 (_ BitVec 32)) Bool)

(assert (=> b!1541326 (= res!1057986 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541327 () Bool)

(declare-fun res!1057987 () Bool)

(assert (=> b!1541327 (=> (not res!1057987) (not e!857282))))

(assert (=> b!1541327 (= res!1057987 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49965 a!3920))))))

(declare-fun b!1541328 () Bool)

(declare-fun res!1057985 () Bool)

(assert (=> b!1541328 (=> (not res!1057985) (not e!857282))))

(assert (=> b!1541328 (= res!1057985 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun res!1057988 () Bool)

(assert (=> start!131608 (=> (not res!1057988) (not e!857282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131608 (= res!1057988 (validMask!0 mask!4052))))

(assert (=> start!131608 e!857282))

(assert (=> start!131608 true))

(declare-fun array_inv!38359 (array!102423) Bool)

(assert (=> start!131608 (array_inv!38359 a!3920)))

(declare-fun b!1541329 () Bool)

(assert (=> b!1541329 (= e!857282 (not true))))

(assert (=> b!1541329 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51428 0))(
  ( (Unit!51429) )
))
(declare-fun lt!665611 () Unit!51428)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102423 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51428)

(assert (=> b!1541329 (= lt!665611 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(assert (= (and start!131608 res!1057988) b!1541325))

(assert (= (and b!1541325 res!1057989) b!1541326))

(assert (= (and b!1541326 res!1057986) b!1541327))

(assert (= (and b!1541327 res!1057987) b!1541328))

(assert (= (and b!1541328 res!1057985) b!1541329))

(declare-fun m!1423359 () Bool)

(assert (=> b!1541326 m!1423359))

(declare-fun m!1423361 () Bool)

(assert (=> b!1541328 m!1423361))

(declare-fun m!1423363 () Bool)

(assert (=> start!131608 m!1423363))

(declare-fun m!1423365 () Bool)

(assert (=> start!131608 m!1423365))

(declare-fun m!1423367 () Bool)

(assert (=> b!1541329 m!1423367))

(declare-fun m!1423369 () Bool)

(assert (=> b!1541329 m!1423369))

(push 1)

(assert (not b!1541326))

(assert (not b!1541329))

(assert (not b!1541328))

(assert (not start!131608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

