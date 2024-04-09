; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46734 () Bool)

(assert start!46734)

(declare-fun b!515614 () Bool)

(declare-fun res!315336 () Bool)

(declare-fun e!301011 () Bool)

(assert (=> b!515614 (=> (not res!315336) (not e!301011))))

(declare-datatypes ((array!33006 0))(
  ( (array!33007 (arr!15868 (Array (_ BitVec 32) (_ BitVec 64))) (size!16232 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33006)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33006 (_ BitVec 32)) Bool)

(assert (=> b!515614 (= res!315336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515615 () Bool)

(declare-fun e!301008 () Bool)

(assert (=> b!515615 (= e!301008 true)))

(declare-datatypes ((SeekEntryResult!4342 0))(
  ( (MissingZero!4342 (index!19556 (_ BitVec 32))) (Found!4342 (index!19557 (_ BitVec 32))) (Intermediate!4342 (undefined!5154 Bool) (index!19558 (_ BitVec 32)) (x!48548 (_ BitVec 32))) (Undefined!4342) (MissingVacant!4342 (index!19559 (_ BitVec 32))) )
))
(declare-fun lt!236095 () SeekEntryResult!4342)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515615 (and (bvslt (x!48548 lt!236095) #b01111111111111111111111111111110) (or (= (select (arr!15868 a!3235) (index!19558 lt!236095)) (select (arr!15868 a!3235) j!176)) (= (select (arr!15868 a!3235) (index!19558 lt!236095)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15868 a!3235) (index!19558 lt!236095)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!301010 () Bool)

(declare-fun b!515616 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33006 (_ BitVec 32)) SeekEntryResult!4342)

(assert (=> b!515616 (= e!301010 (= (seekEntryOrOpen!0 (select (arr!15868 a!3235) j!176) a!3235 mask!3524) (Found!4342 j!176)))))

(declare-fun res!315333 () Bool)

(declare-fun e!301009 () Bool)

(assert (=> start!46734 (=> (not res!315333) (not e!301009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46734 (= res!315333 (validMask!0 mask!3524))))

(assert (=> start!46734 e!301009))

(assert (=> start!46734 true))

(declare-fun array_inv!11642 (array!33006) Bool)

(assert (=> start!46734 (array_inv!11642 a!3235)))

(declare-fun b!515617 () Bool)

(declare-fun res!315329 () Bool)

(assert (=> b!515617 (=> (not res!315329) (not e!301009))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515617 (= res!315329 (validKeyInArray!0 (select (arr!15868 a!3235) j!176)))))

(declare-fun b!515618 () Bool)

(assert (=> b!515618 (= e!301009 e!301011)))

(declare-fun res!315331 () Bool)

(assert (=> b!515618 (=> (not res!315331) (not e!301011))))

(declare-fun lt!236092 () SeekEntryResult!4342)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515618 (= res!315331 (or (= lt!236092 (MissingZero!4342 i!1204)) (= lt!236092 (MissingVacant!4342 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!515618 (= lt!236092 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!515619 () Bool)

(declare-fun res!315338 () Bool)

(assert (=> b!515619 (=> (not res!315338) (not e!301011))))

(declare-datatypes ((List!10079 0))(
  ( (Nil!10076) (Cons!10075 (h!10973 (_ BitVec 64)) (t!16315 List!10079)) )
))
(declare-fun arrayNoDuplicates!0 (array!33006 (_ BitVec 32) List!10079) Bool)

(assert (=> b!515619 (= res!315338 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10076))))

(declare-fun b!515620 () Bool)

(declare-fun res!315337 () Bool)

(assert (=> b!515620 (=> res!315337 e!301008)))

(get-info :version)

(assert (=> b!515620 (= res!315337 (or (undefined!5154 lt!236095) (not ((_ is Intermediate!4342) lt!236095))))))

(declare-fun b!515621 () Bool)

(declare-fun res!315335 () Bool)

(assert (=> b!515621 (=> (not res!315335) (not e!301009))))

(declare-fun arrayContainsKey!0 (array!33006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515621 (= res!315335 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515622 () Bool)

(declare-fun res!315334 () Bool)

(assert (=> b!515622 (=> (not res!315334) (not e!301009))))

(assert (=> b!515622 (= res!315334 (validKeyInArray!0 k0!2280))))

(declare-fun b!515623 () Bool)

(assert (=> b!515623 (= e!301011 (not e!301008))))

(declare-fun res!315330 () Bool)

(assert (=> b!515623 (=> res!315330 e!301008)))

(declare-fun lt!236096 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33006 (_ BitVec 32)) SeekEntryResult!4342)

(assert (=> b!515623 (= res!315330 (= lt!236095 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236096 (select (store (arr!15868 a!3235) i!1204 k0!2280) j!176) (array!33007 (store (arr!15868 a!3235) i!1204 k0!2280) (size!16232 a!3235)) mask!3524)))))

(declare-fun lt!236093 () (_ BitVec 32))

(assert (=> b!515623 (= lt!236095 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236093 (select (arr!15868 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515623 (= lt!236096 (toIndex!0 (select (store (arr!15868 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!515623 (= lt!236093 (toIndex!0 (select (arr!15868 a!3235) j!176) mask!3524))))

(assert (=> b!515623 e!301010))

(declare-fun res!315332 () Bool)

(assert (=> b!515623 (=> (not res!315332) (not e!301010))))

(assert (=> b!515623 (= res!315332 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15934 0))(
  ( (Unit!15935) )
))
(declare-fun lt!236094 () Unit!15934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33006 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15934)

(assert (=> b!515623 (= lt!236094 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515624 () Bool)

(declare-fun res!315328 () Bool)

(assert (=> b!515624 (=> (not res!315328) (not e!301009))))

(assert (=> b!515624 (= res!315328 (and (= (size!16232 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16232 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16232 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46734 res!315333) b!515624))

(assert (= (and b!515624 res!315328) b!515617))

(assert (= (and b!515617 res!315329) b!515622))

(assert (= (and b!515622 res!315334) b!515621))

(assert (= (and b!515621 res!315335) b!515618))

(assert (= (and b!515618 res!315331) b!515614))

(assert (= (and b!515614 res!315336) b!515619))

(assert (= (and b!515619 res!315338) b!515623))

(assert (= (and b!515623 res!315332) b!515616))

(assert (= (and b!515623 (not res!315330)) b!515620))

(assert (= (and b!515620 (not res!315337)) b!515615))

(declare-fun m!497043 () Bool)

(assert (=> b!515617 m!497043))

(assert (=> b!515617 m!497043))

(declare-fun m!497045 () Bool)

(assert (=> b!515617 m!497045))

(declare-fun m!497047 () Bool)

(assert (=> start!46734 m!497047))

(declare-fun m!497049 () Bool)

(assert (=> start!46734 m!497049))

(declare-fun m!497051 () Bool)

(assert (=> b!515621 m!497051))

(declare-fun m!497053 () Bool)

(assert (=> b!515614 m!497053))

(declare-fun m!497055 () Bool)

(assert (=> b!515615 m!497055))

(assert (=> b!515615 m!497043))

(declare-fun m!497057 () Bool)

(assert (=> b!515623 m!497057))

(declare-fun m!497059 () Bool)

(assert (=> b!515623 m!497059))

(declare-fun m!497061 () Bool)

(assert (=> b!515623 m!497061))

(assert (=> b!515623 m!497043))

(declare-fun m!497063 () Bool)

(assert (=> b!515623 m!497063))

(assert (=> b!515623 m!497043))

(assert (=> b!515623 m!497061))

(declare-fun m!497065 () Bool)

(assert (=> b!515623 m!497065))

(assert (=> b!515623 m!497043))

(declare-fun m!497067 () Bool)

(assert (=> b!515623 m!497067))

(declare-fun m!497069 () Bool)

(assert (=> b!515623 m!497069))

(assert (=> b!515623 m!497061))

(declare-fun m!497071 () Bool)

(assert (=> b!515623 m!497071))

(assert (=> b!515616 m!497043))

(assert (=> b!515616 m!497043))

(declare-fun m!497073 () Bool)

(assert (=> b!515616 m!497073))

(declare-fun m!497075 () Bool)

(assert (=> b!515618 m!497075))

(declare-fun m!497077 () Bool)

(assert (=> b!515619 m!497077))

(declare-fun m!497079 () Bool)

(assert (=> b!515622 m!497079))

(check-sat (not b!515618) (not b!515616) (not start!46734) (not b!515623) (not b!515617) (not b!515622) (not b!515621) (not b!515619) (not b!515614))
(check-sat)
