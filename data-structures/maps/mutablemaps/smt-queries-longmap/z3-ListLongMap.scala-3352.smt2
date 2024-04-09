; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46116 () Bool)

(assert start!46116)

(declare-fun b!510534 () Bool)

(declare-fun res!311530 () Bool)

(declare-fun e!298389 () Bool)

(assert (=> b!510534 (=> (not res!311530) (not e!298389))))

(declare-datatypes ((array!32787 0))(
  ( (array!32788 (arr!15769 (Array (_ BitVec 32) (_ BitVec 64))) (size!16133 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32787)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510534 (= res!311530 (validKeyInArray!0 (select (arr!15769 a!3235) j!176)))))

(declare-fun b!510535 () Bool)

(declare-fun res!311533 () Bool)

(assert (=> b!510535 (=> (not res!311533) (not e!298389))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510535 (= res!311533 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510536 () Bool)

(declare-fun res!311532 () Bool)

(declare-fun e!298390 () Bool)

(assert (=> b!510536 (=> (not res!311532) (not e!298390))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32787 (_ BitVec 32)) Bool)

(assert (=> b!510536 (= res!311532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510537 () Bool)

(declare-fun e!298387 () Bool)

(assert (=> b!510537 (= e!298387 true)))

(declare-datatypes ((SeekEntryResult!4243 0))(
  ( (MissingZero!4243 (index!19160 (_ BitVec 32))) (Found!4243 (index!19161 (_ BitVec 32))) (Intermediate!4243 (undefined!5055 Bool) (index!19162 (_ BitVec 32)) (x!48143 (_ BitVec 32))) (Undefined!4243) (MissingVacant!4243 (index!19163 (_ BitVec 32))) )
))
(declare-fun lt!233539 () SeekEntryResult!4243)

(declare-fun lt!233540 () array!32787)

(declare-fun lt!233542 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32787 (_ BitVec 32)) SeekEntryResult!4243)

(assert (=> b!510537 (= lt!233539 (seekEntryOrOpen!0 lt!233542 lt!233540 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((Unit!15736 0))(
  ( (Unit!15737) )
))
(declare-fun lt!233541 () Unit!15736)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32787 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15736)

(assert (=> b!510537 (= lt!233541 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!510538 () Bool)

(assert (=> b!510538 (= e!298390 (not e!298387))))

(declare-fun res!311534 () Bool)

(assert (=> b!510538 (=> res!311534 e!298387)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32787 (_ BitVec 32)) SeekEntryResult!4243)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510538 (= res!311534 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15769 a!3235) j!176) mask!3524) (select (arr!15769 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233542 mask!3524) lt!233542 lt!233540 mask!3524))))))

(assert (=> b!510538 (= lt!233542 (select (store (arr!15769 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!510538 (= lt!233540 (array!32788 (store (arr!15769 a!3235) i!1204 k0!2280) (size!16133 a!3235)))))

(assert (=> b!510538 (= lt!233539 (Found!4243 j!176))))

(assert (=> b!510538 (= lt!233539 (seekEntryOrOpen!0 (select (arr!15769 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!510538 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233538 () Unit!15736)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15736)

(assert (=> b!510538 (= lt!233538 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510539 () Bool)

(declare-fun res!311537 () Bool)

(assert (=> b!510539 (=> (not res!311537) (not e!298389))))

(assert (=> b!510539 (= res!311537 (and (= (size!16133 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16133 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16133 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510540 () Bool)

(declare-fun res!311529 () Bool)

(assert (=> b!510540 (=> (not res!311529) (not e!298390))))

(declare-datatypes ((List!9980 0))(
  ( (Nil!9977) (Cons!9976 (h!10853 (_ BitVec 64)) (t!16216 List!9980)) )
))
(declare-fun arrayNoDuplicates!0 (array!32787 (_ BitVec 32) List!9980) Bool)

(assert (=> b!510540 (= res!311529 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9977))))

(declare-fun b!510541 () Bool)

(declare-fun res!311535 () Bool)

(assert (=> b!510541 (=> (not res!311535) (not e!298389))))

(assert (=> b!510541 (= res!311535 (validKeyInArray!0 k0!2280))))

(declare-fun b!510542 () Bool)

(assert (=> b!510542 (= e!298389 e!298390)))

(declare-fun res!311531 () Bool)

(assert (=> b!510542 (=> (not res!311531) (not e!298390))))

(declare-fun lt!233543 () SeekEntryResult!4243)

(assert (=> b!510542 (= res!311531 (or (= lt!233543 (MissingZero!4243 i!1204)) (= lt!233543 (MissingVacant!4243 i!1204))))))

(assert (=> b!510542 (= lt!233543 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!311536 () Bool)

(assert (=> start!46116 (=> (not res!311536) (not e!298389))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46116 (= res!311536 (validMask!0 mask!3524))))

(assert (=> start!46116 e!298389))

(assert (=> start!46116 true))

(declare-fun array_inv!11543 (array!32787) Bool)

(assert (=> start!46116 (array_inv!11543 a!3235)))

(assert (= (and start!46116 res!311536) b!510539))

(assert (= (and b!510539 res!311537) b!510534))

(assert (= (and b!510534 res!311530) b!510541))

(assert (= (and b!510541 res!311535) b!510535))

(assert (= (and b!510535 res!311533) b!510542))

(assert (= (and b!510542 res!311531) b!510536))

(assert (= (and b!510536 res!311532) b!510540))

(assert (= (and b!510540 res!311529) b!510538))

(assert (= (and b!510538 (not res!311534)) b!510537))

(declare-fun m!491975 () Bool)

(assert (=> b!510535 m!491975))

(declare-fun m!491977 () Bool)

(assert (=> b!510537 m!491977))

(declare-fun m!491979 () Bool)

(assert (=> b!510537 m!491979))

(declare-fun m!491981 () Bool)

(assert (=> start!46116 m!491981))

(declare-fun m!491983 () Bool)

(assert (=> start!46116 m!491983))

(declare-fun m!491985 () Bool)

(assert (=> b!510536 m!491985))

(declare-fun m!491987 () Bool)

(assert (=> b!510540 m!491987))

(declare-fun m!491989 () Bool)

(assert (=> b!510542 m!491989))

(declare-fun m!491991 () Bool)

(assert (=> b!510541 m!491991))

(declare-fun m!491993 () Bool)

(assert (=> b!510534 m!491993))

(assert (=> b!510534 m!491993))

(declare-fun m!491995 () Bool)

(assert (=> b!510534 m!491995))

(declare-fun m!491997 () Bool)

(assert (=> b!510538 m!491997))

(declare-fun m!491999 () Bool)

(assert (=> b!510538 m!491999))

(declare-fun m!492001 () Bool)

(assert (=> b!510538 m!492001))

(declare-fun m!492003 () Bool)

(assert (=> b!510538 m!492003))

(assert (=> b!510538 m!491993))

(declare-fun m!492005 () Bool)

(assert (=> b!510538 m!492005))

(declare-fun m!492007 () Bool)

(assert (=> b!510538 m!492007))

(assert (=> b!510538 m!491993))

(declare-fun m!492009 () Bool)

(assert (=> b!510538 m!492009))

(assert (=> b!510538 m!491993))

(declare-fun m!492011 () Bool)

(assert (=> b!510538 m!492011))

(assert (=> b!510538 m!491993))

(assert (=> b!510538 m!492003))

(assert (=> b!510538 m!492007))

(declare-fun m!492013 () Bool)

(assert (=> b!510538 m!492013))

(check-sat (not b!510536) (not b!510542) (not b!510534) (not start!46116) (not b!510535) (not b!510541) (not b!510537) (not b!510540) (not b!510538))
(check-sat)
