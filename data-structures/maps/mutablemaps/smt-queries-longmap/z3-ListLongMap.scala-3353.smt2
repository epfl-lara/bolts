; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46122 () Bool)

(assert start!46122)

(declare-fun b!510615 () Bool)

(declare-fun res!311616 () Bool)

(declare-fun e!298423 () Bool)

(assert (=> b!510615 (=> (not res!311616) (not e!298423))))

(declare-datatypes ((array!32793 0))(
  ( (array!32794 (arr!15772 (Array (_ BitVec 32) (_ BitVec 64))) (size!16136 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32793)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510615 (= res!311616 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!298426 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!510617 () Bool)

(declare-datatypes ((SeekEntryResult!4246 0))(
  ( (MissingZero!4246 (index!19172 (_ BitVec 32))) (Found!4246 (index!19173 (_ BitVec 32))) (Intermediate!4246 (undefined!5058 Bool) (index!19174 (_ BitVec 32)) (x!48154 (_ BitVec 32))) (Undefined!4246) (MissingVacant!4246 (index!19175 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32793 (_ BitVec 32)) SeekEntryResult!4246)

(assert (=> b!510617 (= e!298426 (= (seekEntryOrOpen!0 (select (arr!15772 a!3235) j!176) a!3235 mask!3524) (Found!4246 j!176)))))

(declare-fun b!510618 () Bool)

(declare-fun res!311611 () Bool)

(assert (=> b!510618 (=> (not res!311611) (not e!298423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510618 (= res!311611 (validKeyInArray!0 k0!2280))))

(declare-fun b!510619 () Bool)

(declare-fun res!311615 () Bool)

(assert (=> b!510619 (=> (not res!311615) (not e!298423))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510619 (= res!311615 (and (= (size!16136 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16136 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16136 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510620 () Bool)

(declare-fun e!298424 () Bool)

(assert (=> b!510620 (= e!298424 (not true))))

(declare-fun lt!233592 () (_ BitVec 32))

(declare-fun lt!233595 () SeekEntryResult!4246)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32793 (_ BitVec 32)) SeekEntryResult!4246)

(assert (=> b!510620 (= lt!233595 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233592 (select (store (arr!15772 a!3235) i!1204 k0!2280) j!176) (array!32794 (store (arr!15772 a!3235) i!1204 k0!2280) (size!16136 a!3235)) mask!3524))))

(declare-fun lt!233596 () SeekEntryResult!4246)

(declare-fun lt!233597 () (_ BitVec 32))

(assert (=> b!510620 (= lt!233596 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233597 (select (arr!15772 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510620 (= lt!233592 (toIndex!0 (select (store (arr!15772 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!510620 (= lt!233597 (toIndex!0 (select (arr!15772 a!3235) j!176) mask!3524))))

(assert (=> b!510620 e!298426))

(declare-fun res!311618 () Bool)

(assert (=> b!510620 (=> (not res!311618) (not e!298426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32793 (_ BitVec 32)) Bool)

(assert (=> b!510620 (= res!311618 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15742 0))(
  ( (Unit!15743) )
))
(declare-fun lt!233594 () Unit!15742)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15742)

(assert (=> b!510620 (= lt!233594 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510621 () Bool)

(declare-fun res!311617 () Bool)

(assert (=> b!510621 (=> (not res!311617) (not e!298424))))

(declare-datatypes ((List!9983 0))(
  ( (Nil!9980) (Cons!9979 (h!10856 (_ BitVec 64)) (t!16219 List!9983)) )
))
(declare-fun arrayNoDuplicates!0 (array!32793 (_ BitVec 32) List!9983) Bool)

(assert (=> b!510621 (= res!311617 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9980))))

(declare-fun b!510622 () Bool)

(assert (=> b!510622 (= e!298423 e!298424)))

(declare-fun res!311613 () Bool)

(assert (=> b!510622 (=> (not res!311613) (not e!298424))))

(declare-fun lt!233593 () SeekEntryResult!4246)

(assert (=> b!510622 (= res!311613 (or (= lt!233593 (MissingZero!4246 i!1204)) (= lt!233593 (MissingVacant!4246 i!1204))))))

(assert (=> b!510622 (= lt!233593 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!510623 () Bool)

(declare-fun res!311610 () Bool)

(assert (=> b!510623 (=> (not res!311610) (not e!298423))))

(assert (=> b!510623 (= res!311610 (validKeyInArray!0 (select (arr!15772 a!3235) j!176)))))

(declare-fun res!311614 () Bool)

(assert (=> start!46122 (=> (not res!311614) (not e!298423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46122 (= res!311614 (validMask!0 mask!3524))))

(assert (=> start!46122 e!298423))

(assert (=> start!46122 true))

(declare-fun array_inv!11546 (array!32793) Bool)

(assert (=> start!46122 (array_inv!11546 a!3235)))

(declare-fun b!510616 () Bool)

(declare-fun res!311612 () Bool)

(assert (=> b!510616 (=> (not res!311612) (not e!298424))))

(assert (=> b!510616 (= res!311612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46122 res!311614) b!510619))

(assert (= (and b!510619 res!311615) b!510623))

(assert (= (and b!510623 res!311610) b!510618))

(assert (= (and b!510618 res!311611) b!510615))

(assert (= (and b!510615 res!311616) b!510622))

(assert (= (and b!510622 res!311613) b!510616))

(assert (= (and b!510616 res!311612) b!510621))

(assert (= (and b!510621 res!311617) b!510620))

(assert (= (and b!510620 res!311618) b!510617))

(declare-fun m!492091 () Bool)

(assert (=> b!510621 m!492091))

(declare-fun m!492093 () Bool)

(assert (=> b!510617 m!492093))

(assert (=> b!510617 m!492093))

(declare-fun m!492095 () Bool)

(assert (=> b!510617 m!492095))

(assert (=> b!510623 m!492093))

(assert (=> b!510623 m!492093))

(declare-fun m!492097 () Bool)

(assert (=> b!510623 m!492097))

(declare-fun m!492099 () Bool)

(assert (=> start!46122 m!492099))

(declare-fun m!492101 () Bool)

(assert (=> start!46122 m!492101))

(declare-fun m!492103 () Bool)

(assert (=> b!510618 m!492103))

(declare-fun m!492105 () Bool)

(assert (=> b!510616 m!492105))

(declare-fun m!492107 () Bool)

(assert (=> b!510620 m!492107))

(declare-fun m!492109 () Bool)

(assert (=> b!510620 m!492109))

(declare-fun m!492111 () Bool)

(assert (=> b!510620 m!492111))

(assert (=> b!510620 m!492111))

(declare-fun m!492113 () Bool)

(assert (=> b!510620 m!492113))

(assert (=> b!510620 m!492093))

(declare-fun m!492115 () Bool)

(assert (=> b!510620 m!492115))

(assert (=> b!510620 m!492093))

(declare-fun m!492117 () Bool)

(assert (=> b!510620 m!492117))

(assert (=> b!510620 m!492093))

(declare-fun m!492119 () Bool)

(assert (=> b!510620 m!492119))

(assert (=> b!510620 m!492111))

(declare-fun m!492121 () Bool)

(assert (=> b!510620 m!492121))

(declare-fun m!492123 () Bool)

(assert (=> b!510615 m!492123))

(declare-fun m!492125 () Bool)

(assert (=> b!510622 m!492125))

(check-sat (not b!510616) (not b!510618) (not b!510615) (not b!510621) (not b!510622) (not b!510620) (not b!510617) (not b!510623) (not start!46122))
(check-sat)
