; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48146 () Bool)

(assert start!48146)

(declare-fun b!530008 () Bool)

(declare-fun res!325873 () Bool)

(declare-fun e!308827 () Bool)

(assert (=> b!530008 (=> (not res!325873) (not e!308827))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33542 0))(
  ( (array!33543 (arr!16115 (Array (_ BitVec 32) (_ BitVec 64))) (size!16479 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33542)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!530008 (= res!325873 (and (= (size!16479 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16479 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16479 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!530009 () Bool)

(declare-fun res!325871 () Bool)

(declare-fun e!308826 () Bool)

(assert (=> b!530009 (=> (not res!325871) (not e!308826))))

(declare-datatypes ((List!10326 0))(
  ( (Nil!10323) (Cons!10322 (h!11262 (_ BitVec 64)) (t!16562 List!10326)) )
))
(declare-fun arrayNoDuplicates!0 (array!33542 (_ BitVec 32) List!10326) Bool)

(assert (=> b!530009 (= res!325871 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10323))))

(declare-fun b!530010 () Bool)

(declare-fun res!325864 () Bool)

(assert (=> b!530010 (=> (not res!325864) (not e!308827))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530010 (= res!325864 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun e!308825 () Bool)

(declare-fun b!530011 () Bool)

(declare-datatypes ((SeekEntryResult!4589 0))(
  ( (MissingZero!4589 (index!20580 (_ BitVec 32))) (Found!4589 (index!20581 (_ BitVec 32))) (Intermediate!4589 (undefined!5401 Bool) (index!20582 (_ BitVec 32)) (x!49574 (_ BitVec 32))) (Undefined!4589) (MissingVacant!4589 (index!20583 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33542 (_ BitVec 32)) SeekEntryResult!4589)

(assert (=> b!530011 (= e!308825 (= (seekEntryOrOpen!0 (select (arr!16115 a!3235) j!176) a!3235 mask!3524) (Found!4589 j!176)))))

(declare-fun b!530012 () Bool)

(declare-fun res!325866 () Bool)

(assert (=> b!530012 (=> (not res!325866) (not e!308826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33542 (_ BitVec 32)) Bool)

(assert (=> b!530012 (= res!325866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!530013 () Bool)

(declare-fun e!308829 () Bool)

(assert (=> b!530013 (= e!308829 true)))

(declare-fun lt!244555 () (_ BitVec 64))

(declare-fun lt!244550 () SeekEntryResult!4589)

(declare-fun lt!244552 () array!33542)

(assert (=> b!530013 (= lt!244550 (seekEntryOrOpen!0 lt!244555 lt!244552 mask!3524))))

(assert (=> b!530013 false))

(declare-fun b!530014 () Bool)

(declare-fun e!308830 () Bool)

(assert (=> b!530014 (= e!308830 e!308829)))

(declare-fun res!325868 () Bool)

(assert (=> b!530014 (=> res!325868 e!308829)))

(declare-fun lt!244549 () Bool)

(declare-fun lt!244553 () SeekEntryResult!4589)

(assert (=> b!530014 (= res!325868 (or (and (not lt!244549) (undefined!5401 lt!244553)) (and (not lt!244549) (not (undefined!5401 lt!244553)))))))

(assert (=> b!530014 (= lt!244549 (not (is-Intermediate!4589 lt!244553)))))

(declare-fun b!530015 () Bool)

(declare-fun res!325867 () Bool)

(assert (=> b!530015 (=> (not res!325867) (not e!308827))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530015 (= res!325867 (validKeyInArray!0 k!2280))))

(declare-fun res!325872 () Bool)

(assert (=> start!48146 (=> (not res!325872) (not e!308827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48146 (= res!325872 (validMask!0 mask!3524))))

(assert (=> start!48146 e!308827))

(assert (=> start!48146 true))

(declare-fun array_inv!11889 (array!33542) Bool)

(assert (=> start!48146 (array_inv!11889 a!3235)))

(declare-fun b!530016 () Bool)

(assert (=> b!530016 (= e!308827 e!308826)))

(declare-fun res!325869 () Bool)

(assert (=> b!530016 (=> (not res!325869) (not e!308826))))

(declare-fun lt!244556 () SeekEntryResult!4589)

(assert (=> b!530016 (= res!325869 (or (= lt!244556 (MissingZero!4589 i!1204)) (= lt!244556 (MissingVacant!4589 i!1204))))))

(assert (=> b!530016 (= lt!244556 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!530017 () Bool)

(declare-fun res!325874 () Bool)

(assert (=> b!530017 (=> (not res!325874) (not e!308827))))

(assert (=> b!530017 (= res!325874 (validKeyInArray!0 (select (arr!16115 a!3235) j!176)))))

(declare-fun b!530018 () Bool)

(assert (=> b!530018 (= e!308826 (not e!308830))))

(declare-fun res!325865 () Bool)

(assert (=> b!530018 (=> res!325865 e!308830)))

(declare-fun lt!244551 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33542 (_ BitVec 32)) SeekEntryResult!4589)

(assert (=> b!530018 (= res!325865 (= lt!244553 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244551 lt!244555 lt!244552 mask!3524)))))

(declare-fun lt!244554 () (_ BitVec 32))

(assert (=> b!530018 (= lt!244553 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244554 (select (arr!16115 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!530018 (= lt!244551 (toIndex!0 lt!244555 mask!3524))))

(assert (=> b!530018 (= lt!244555 (select (store (arr!16115 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!530018 (= lt!244554 (toIndex!0 (select (arr!16115 a!3235) j!176) mask!3524))))

(assert (=> b!530018 (= lt!244552 (array!33543 (store (arr!16115 a!3235) i!1204 k!2280) (size!16479 a!3235)))))

(assert (=> b!530018 e!308825))

(declare-fun res!325870 () Bool)

(assert (=> b!530018 (=> (not res!325870) (not e!308825))))

(assert (=> b!530018 (= res!325870 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16782 0))(
  ( (Unit!16783) )
))
(declare-fun lt!244548 () Unit!16782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33542 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16782)

(assert (=> b!530018 (= lt!244548 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!48146 res!325872) b!530008))

(assert (= (and b!530008 res!325873) b!530017))

(assert (= (and b!530017 res!325874) b!530015))

(assert (= (and b!530015 res!325867) b!530010))

(assert (= (and b!530010 res!325864) b!530016))

(assert (= (and b!530016 res!325869) b!530012))

(assert (= (and b!530012 res!325866) b!530009))

(assert (= (and b!530009 res!325871) b!530018))

(assert (= (and b!530018 res!325870) b!530011))

(assert (= (and b!530018 (not res!325865)) b!530014))

(assert (= (and b!530014 (not res!325868)) b!530013))

(declare-fun m!510593 () Bool)

(assert (=> b!530018 m!510593))

(declare-fun m!510595 () Bool)

(assert (=> b!530018 m!510595))

(declare-fun m!510597 () Bool)

(assert (=> b!530018 m!510597))

(declare-fun m!510599 () Bool)

(assert (=> b!530018 m!510599))

(declare-fun m!510601 () Bool)

(assert (=> b!530018 m!510601))

(declare-fun m!510603 () Bool)

(assert (=> b!530018 m!510603))

(assert (=> b!530018 m!510601))

(declare-fun m!510605 () Bool)

(assert (=> b!530018 m!510605))

(assert (=> b!530018 m!510601))

(declare-fun m!510607 () Bool)

(assert (=> b!530018 m!510607))

(declare-fun m!510609 () Bool)

(assert (=> b!530018 m!510609))

(assert (=> b!530017 m!510601))

(assert (=> b!530017 m!510601))

(declare-fun m!510611 () Bool)

(assert (=> b!530017 m!510611))

(declare-fun m!510613 () Bool)

(assert (=> b!530009 m!510613))

(declare-fun m!510615 () Bool)

(assert (=> start!48146 m!510615))

(declare-fun m!510617 () Bool)

(assert (=> start!48146 m!510617))

(assert (=> b!530011 m!510601))

(assert (=> b!530011 m!510601))

(declare-fun m!510619 () Bool)

(assert (=> b!530011 m!510619))

(declare-fun m!510621 () Bool)

(assert (=> b!530015 m!510621))

(declare-fun m!510623 () Bool)

(assert (=> b!530013 m!510623))

(declare-fun m!510625 () Bool)

(assert (=> b!530016 m!510625))

(declare-fun m!510627 () Bool)

(assert (=> b!530010 m!510627))

(declare-fun m!510629 () Bool)

(assert (=> b!530012 m!510629))

(push 1)

