; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131610 () Bool)

(assert start!131610)

(declare-fun res!1058001 () Bool)

(declare-fun e!857288 () Bool)

(assert (=> start!131610 (=> (not res!1058001) (not e!857288))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131610 (= res!1058001 (validMask!0 mask!4052))))

(assert (=> start!131610 e!857288))

(assert (=> start!131610 true))

(declare-datatypes ((array!102425 0))(
  ( (array!102426 (arr!49415 (Array (_ BitVec 32) (_ BitVec 64))) (size!49966 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102425)

(declare-fun array_inv!38360 (array!102425) Bool)

(assert (=> start!131610 (array_inv!38360 a!3920)))

(declare-fun b!1541340 () Bool)

(declare-fun res!1058002 () Bool)

(assert (=> b!1541340 (=> (not res!1058002) (not e!857288))))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102425 (_ BitVec 32)) Bool)

(assert (=> b!1541340 (= res!1058002 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541341 () Bool)

(declare-fun res!1058004 () Bool)

(assert (=> b!1541341 (=> (not res!1058004) (not e!857288))))

(assert (=> b!1541341 (= res!1058004 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1541342 () Bool)

(declare-fun res!1058000 () Bool)

(assert (=> b!1541342 (=> (not res!1058000) (not e!857288))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1541342 (= res!1058000 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49966 a!3920))))))

(declare-fun b!1541343 () Bool)

(assert (=> b!1541343 (= e!857288 (not true))))

(assert (=> b!1541343 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51430 0))(
  ( (Unit!51431) )
))
(declare-fun lt!665614 () Unit!51430)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102425 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51430)

(assert (=> b!1541343 (= lt!665614 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(declare-fun b!1541344 () Bool)

(declare-fun res!1058003 () Bool)

(assert (=> b!1541344 (=> (not res!1058003) (not e!857288))))

(assert (=> b!1541344 (= res!1058003 (and (= (size!49966 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49966 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49966 a!3920))))))

(assert (= (and start!131610 res!1058001) b!1541344))

(assert (= (and b!1541344 res!1058003) b!1541340))

(assert (= (and b!1541340 res!1058002) b!1541342))

(assert (= (and b!1541342 res!1058000) b!1541341))

(assert (= (and b!1541341 res!1058004) b!1541343))

(declare-fun m!1423371 () Bool)

(assert (=> start!131610 m!1423371))

(declare-fun m!1423373 () Bool)

(assert (=> start!131610 m!1423373))

(declare-fun m!1423375 () Bool)

(assert (=> b!1541340 m!1423375))

(declare-fun m!1423377 () Bool)

(assert (=> b!1541341 m!1423377))

(declare-fun m!1423379 () Bool)

(assert (=> b!1541343 m!1423379))

(declare-fun m!1423381 () Bool)

(assert (=> b!1541343 m!1423381))

(check-sat (not b!1541343) (not start!131610) (not b!1541340) (not b!1541341))
