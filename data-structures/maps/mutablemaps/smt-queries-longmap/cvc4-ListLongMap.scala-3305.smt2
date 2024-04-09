; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45788 () Bool)

(assert start!45788)

(declare-fun b!506425 () Bool)

(declare-fun res!307534 () Bool)

(declare-fun e!296408 () Bool)

(assert (=> b!506425 (=> (not res!307534) (not e!296408))))

(declare-datatypes ((array!32504 0))(
  ( (array!32505 (arr!15629 (Array (_ BitVec 32) (_ BitVec 64))) (size!15993 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32504)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506425 (= res!307534 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!506426 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!296411 () Bool)

(declare-datatypes ((SeekEntryResult!4103 0))(
  ( (MissingZero!4103 (index!18600 (_ BitVec 32))) (Found!4103 (index!18601 (_ BitVec 32))) (Intermediate!4103 (undefined!4915 Bool) (index!18602 (_ BitVec 32)) (x!47627 (_ BitVec 32))) (Undefined!4103) (MissingVacant!4103 (index!18603 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32504 (_ BitVec 32)) SeekEntryResult!4103)

(assert (=> b!506426 (= e!296411 (= (seekEntryOrOpen!0 (select (arr!15629 a!3235) j!176) a!3235 mask!3524) (Found!4103 j!176)))))

(declare-fun b!506427 () Bool)

(declare-fun res!307539 () Bool)

(assert (=> b!506427 (=> (not res!307539) (not e!296408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506427 (= res!307539 (validKeyInArray!0 k!2280))))

(declare-fun b!506429 () Bool)

(declare-fun res!307540 () Bool)

(declare-fun e!296413 () Bool)

(assert (=> b!506429 (=> (not res!307540) (not e!296413))))

(declare-datatypes ((List!9840 0))(
  ( (Nil!9837) (Cons!9836 (h!10713 (_ BitVec 64)) (t!16076 List!9840)) )
))
(declare-fun arrayNoDuplicates!0 (array!32504 (_ BitVec 32) List!9840) Bool)

(assert (=> b!506429 (= res!307540 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9837))))

(declare-fun b!506430 () Bool)

(declare-fun e!296412 () Bool)

(assert (=> b!506430 (= e!296412 true)))

(assert (=> b!506430 false))

(declare-fun b!506431 () Bool)

(declare-fun res!307544 () Bool)

(assert (=> b!506431 (=> (not res!307544) (not e!296413))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32504 (_ BitVec 32)) Bool)

(assert (=> b!506431 (= res!307544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506432 () Bool)

(declare-fun res!307536 () Bool)

(assert (=> b!506432 (=> (not res!307536) (not e!296408))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506432 (= res!307536 (and (= (size!15993 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15993 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15993 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506433 () Bool)

(declare-fun res!307535 () Bool)

(assert (=> b!506433 (=> (not res!307535) (not e!296408))))

(assert (=> b!506433 (= res!307535 (validKeyInArray!0 (select (arr!15629 a!3235) j!176)))))

(declare-fun b!506434 () Bool)

(declare-fun e!296410 () Bool)

(assert (=> b!506434 (= e!296410 e!296412)))

(declare-fun res!307541 () Bool)

(assert (=> b!506434 (=> res!307541 e!296412)))

(declare-fun lt!231155 () Bool)

(declare-fun lt!231158 () SeekEntryResult!4103)

(assert (=> b!506434 (= res!307541 (or (and (not lt!231155) (undefined!4915 lt!231158)) (and (not lt!231155) (not (undefined!4915 lt!231158)))))))

(assert (=> b!506434 (= lt!231155 (not (is-Intermediate!4103 lt!231158)))))

(declare-fun b!506435 () Bool)

(assert (=> b!506435 (= e!296408 e!296413)))

(declare-fun res!307543 () Bool)

(assert (=> b!506435 (=> (not res!307543) (not e!296413))))

(declare-fun lt!231154 () SeekEntryResult!4103)

(assert (=> b!506435 (= res!307543 (or (= lt!231154 (MissingZero!4103 i!1204)) (= lt!231154 (MissingVacant!4103 i!1204))))))

(assert (=> b!506435 (= lt!231154 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506428 () Bool)

(assert (=> b!506428 (= e!296413 (not e!296410))))

(declare-fun res!307538 () Bool)

(assert (=> b!506428 (=> res!307538 e!296410)))

(declare-fun lt!231157 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32504 (_ BitVec 32)) SeekEntryResult!4103)

(assert (=> b!506428 (= res!307538 (= lt!231158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231157 (select (store (arr!15629 a!3235) i!1204 k!2280) j!176) (array!32505 (store (arr!15629 a!3235) i!1204 k!2280) (size!15993 a!3235)) mask!3524)))))

(declare-fun lt!231153 () (_ BitVec 32))

(assert (=> b!506428 (= lt!231158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231153 (select (arr!15629 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506428 (= lt!231157 (toIndex!0 (select (store (arr!15629 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506428 (= lt!231153 (toIndex!0 (select (arr!15629 a!3235) j!176) mask!3524))))

(assert (=> b!506428 e!296411))

(declare-fun res!307537 () Bool)

(assert (=> b!506428 (=> (not res!307537) (not e!296411))))

(assert (=> b!506428 (= res!307537 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15486 0))(
  ( (Unit!15487) )
))
(declare-fun lt!231156 () Unit!15486)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15486)

(assert (=> b!506428 (= lt!231156 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!307542 () Bool)

(assert (=> start!45788 (=> (not res!307542) (not e!296408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45788 (= res!307542 (validMask!0 mask!3524))))

(assert (=> start!45788 e!296408))

(assert (=> start!45788 true))

(declare-fun array_inv!11403 (array!32504) Bool)

(assert (=> start!45788 (array_inv!11403 a!3235)))

(assert (= (and start!45788 res!307542) b!506432))

(assert (= (and b!506432 res!307536) b!506433))

(assert (= (and b!506433 res!307535) b!506427))

(assert (= (and b!506427 res!307539) b!506425))

(assert (= (and b!506425 res!307534) b!506435))

(assert (= (and b!506435 res!307543) b!506431))

(assert (= (and b!506431 res!307544) b!506429))

(assert (= (and b!506429 res!307540) b!506428))

(assert (= (and b!506428 res!307537) b!506426))

(assert (= (and b!506428 (not res!307538)) b!506434))

(assert (= (and b!506434 (not res!307541)) b!506430))

(declare-fun m!487141 () Bool)

(assert (=> b!506431 m!487141))

(declare-fun m!487143 () Bool)

(assert (=> b!506427 m!487143))

(declare-fun m!487145 () Bool)

(assert (=> b!506429 m!487145))

(declare-fun m!487147 () Bool)

(assert (=> b!506433 m!487147))

(assert (=> b!506433 m!487147))

(declare-fun m!487149 () Bool)

(assert (=> b!506433 m!487149))

(declare-fun m!487151 () Bool)

(assert (=> b!506425 m!487151))

(assert (=> b!506426 m!487147))

(assert (=> b!506426 m!487147))

(declare-fun m!487153 () Bool)

(assert (=> b!506426 m!487153))

(declare-fun m!487155 () Bool)

(assert (=> b!506435 m!487155))

(declare-fun m!487157 () Bool)

(assert (=> b!506428 m!487157))

(declare-fun m!487159 () Bool)

(assert (=> b!506428 m!487159))

(declare-fun m!487161 () Bool)

(assert (=> b!506428 m!487161))

(declare-fun m!487163 () Bool)

(assert (=> b!506428 m!487163))

(assert (=> b!506428 m!487157))

(assert (=> b!506428 m!487147))

(declare-fun m!487165 () Bool)

(assert (=> b!506428 m!487165))

(assert (=> b!506428 m!487147))

(declare-fun m!487167 () Bool)

(assert (=> b!506428 m!487167))

(assert (=> b!506428 m!487147))

(declare-fun m!487169 () Bool)

(assert (=> b!506428 m!487169))

(assert (=> b!506428 m!487157))

(declare-fun m!487171 () Bool)

(assert (=> b!506428 m!487171))

(declare-fun m!487173 () Bool)

(assert (=> start!45788 m!487173))

(declare-fun m!487175 () Bool)

(assert (=> start!45788 m!487175))

(push 1)

