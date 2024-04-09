; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48396 () Bool)

(assert start!48396)

(declare-fun b!531410 () Bool)

(declare-fun res!327054 () Bool)

(declare-fun e!309547 () Bool)

(assert (=> b!531410 (=> (not res!327054) (not e!309547))))

(declare-datatypes ((array!33660 0))(
  ( (array!33661 (arr!16168 (Array (_ BitVec 32) (_ BitVec 64))) (size!16532 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33660)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33660 (_ BitVec 32)) Bool)

(assert (=> b!531410 (= res!327054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531411 () Bool)

(declare-fun res!327055 () Bool)

(declare-fun e!309545 () Bool)

(assert (=> b!531411 (=> (not res!327055) (not e!309545))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531411 (= res!327055 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531412 () Bool)

(declare-fun res!327051 () Bool)

(assert (=> b!531412 (=> (not res!327051) (not e!309545))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531412 (= res!327051 (validKeyInArray!0 (select (arr!16168 a!3154) j!147)))))

(declare-fun b!531413 () Bool)

(declare-fun res!327052 () Bool)

(assert (=> b!531413 (=> (not res!327052) (not e!309545))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531413 (= res!327052 (and (= (size!16532 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16532 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16532 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531414 () Bool)

(assert (=> b!531414 (= e!309547 false)))

(declare-fun lt!245003 () Bool)

(declare-datatypes ((List!10340 0))(
  ( (Nil!10337) (Cons!10336 (h!11276 (_ BitVec 64)) (t!16576 List!10340)) )
))
(declare-fun arrayNoDuplicates!0 (array!33660 (_ BitVec 32) List!10340) Bool)

(assert (=> b!531414 (= lt!245003 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10337))))

(declare-fun res!327056 () Bool)

(assert (=> start!48396 (=> (not res!327056) (not e!309545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48396 (= res!327056 (validMask!0 mask!3216))))

(assert (=> start!48396 e!309545))

(assert (=> start!48396 true))

(declare-fun array_inv!11942 (array!33660) Bool)

(assert (=> start!48396 (array_inv!11942 a!3154)))

(declare-fun b!531415 () Bool)

(declare-fun res!327050 () Bool)

(assert (=> b!531415 (=> (not res!327050) (not e!309545))))

(assert (=> b!531415 (= res!327050 (validKeyInArray!0 k0!1998))))

(declare-fun b!531416 () Bool)

(assert (=> b!531416 (= e!309545 e!309547)))

(declare-fun res!327053 () Bool)

(assert (=> b!531416 (=> (not res!327053) (not e!309547))))

(declare-datatypes ((SeekEntryResult!4633 0))(
  ( (MissingZero!4633 (index!20756 (_ BitVec 32))) (Found!4633 (index!20757 (_ BitVec 32))) (Intermediate!4633 (undefined!5445 Bool) (index!20758 (_ BitVec 32)) (x!49762 (_ BitVec 32))) (Undefined!4633) (MissingVacant!4633 (index!20759 (_ BitVec 32))) )
))
(declare-fun lt!245002 () SeekEntryResult!4633)

(assert (=> b!531416 (= res!327053 (or (= lt!245002 (MissingZero!4633 i!1153)) (= lt!245002 (MissingVacant!4633 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33660 (_ BitVec 32)) SeekEntryResult!4633)

(assert (=> b!531416 (= lt!245002 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(assert (= (and start!48396 res!327056) b!531413))

(assert (= (and b!531413 res!327052) b!531412))

(assert (= (and b!531412 res!327051) b!531415))

(assert (= (and b!531415 res!327050) b!531411))

(assert (= (and b!531411 res!327055) b!531416))

(assert (= (and b!531416 res!327053) b!531410))

(assert (= (and b!531410 res!327054) b!531414))

(declare-fun m!511831 () Bool)

(assert (=> b!531416 m!511831))

(declare-fun m!511833 () Bool)

(assert (=> b!531411 m!511833))

(declare-fun m!511835 () Bool)

(assert (=> b!531414 m!511835))

(declare-fun m!511837 () Bool)

(assert (=> b!531412 m!511837))

(assert (=> b!531412 m!511837))

(declare-fun m!511839 () Bool)

(assert (=> b!531412 m!511839))

(declare-fun m!511841 () Bool)

(assert (=> b!531410 m!511841))

(declare-fun m!511843 () Bool)

(assert (=> b!531415 m!511843))

(declare-fun m!511845 () Bool)

(assert (=> start!48396 m!511845))

(declare-fun m!511847 () Bool)

(assert (=> start!48396 m!511847))

(check-sat (not b!531415) (not b!531416) (not b!531414) (not b!531410) (not b!531412) (not start!48396) (not b!531411))
(check-sat)
