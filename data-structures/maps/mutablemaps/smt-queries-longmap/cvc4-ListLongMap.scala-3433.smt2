; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47732 () Bool)

(assert start!47732)

(declare-fun b!524767 () Bool)

(declare-fun e!306016 () Bool)

(declare-fun e!306019 () Bool)

(assert (=> b!524767 (= e!306016 e!306019)))

(declare-fun res!321755 () Bool)

(assert (=> b!524767 (=> (not res!321755) (not e!306019))))

(declare-datatypes ((SeekEntryResult!4487 0))(
  ( (MissingZero!4487 (index!20160 (_ BitVec 32))) (Found!4487 (index!20161 (_ BitVec 32))) (Intermediate!4487 (undefined!5299 Bool) (index!20162 (_ BitVec 32)) (x!49167 (_ BitVec 32))) (Undefined!4487) (MissingVacant!4487 (index!20163 (_ BitVec 32))) )
))
(declare-fun lt!241018 () SeekEntryResult!4487)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524767 (= res!321755 (or (= lt!241018 (MissingZero!4487 i!1204)) (= lt!241018 (MissingVacant!4487 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33329 0))(
  ( (array!33330 (arr!16013 (Array (_ BitVec 32) (_ BitVec 64))) (size!16377 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33329)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33329 (_ BitVec 32)) SeekEntryResult!4487)

(assert (=> b!524767 (= lt!241018 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524768 () Bool)

(declare-fun e!306014 () Bool)

(assert (=> b!524768 (= e!306014 true)))

(declare-fun lt!241019 () SeekEntryResult!4487)

(assert (=> b!524768 (= (index!20162 lt!241019) i!1204)))

(declare-datatypes ((Unit!16414 0))(
  ( (Unit!16415) )
))
(declare-fun lt!241024 () Unit!16414)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!241017 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33329 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16414)

(assert (=> b!524768 (= lt!241024 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241017 #b00000000000000000000000000000000 (index!20162 lt!241019) (x!49167 lt!241019) mask!3524))))

(assert (=> b!524768 (and (or (= (select (arr!16013 a!3235) (index!20162 lt!241019)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16013 a!3235) (index!20162 lt!241019)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16013 a!3235) (index!20162 lt!241019)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16013 a!3235) (index!20162 lt!241019)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241025 () Unit!16414)

(declare-fun e!306017 () Unit!16414)

(assert (=> b!524768 (= lt!241025 e!306017)))

(declare-fun c!61814 () Bool)

(assert (=> b!524768 (= c!61814 (= (select (arr!16013 a!3235) (index!20162 lt!241019)) (select (arr!16013 a!3235) j!176)))))

(assert (=> b!524768 (and (bvslt (x!49167 lt!241019) #b01111111111111111111111111111110) (or (= (select (arr!16013 a!3235) (index!20162 lt!241019)) (select (arr!16013 a!3235) j!176)) (= (select (arr!16013 a!3235) (index!20162 lt!241019)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16013 a!3235) (index!20162 lt!241019)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524769 () Bool)

(declare-fun res!321754 () Bool)

(assert (=> b!524769 (=> (not res!321754) (not e!306016))))

(assert (=> b!524769 (= res!321754 (and (= (size!16377 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16377 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16377 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524770 () Bool)

(assert (=> b!524770 (= e!306019 (not e!306014))))

(declare-fun res!321760 () Bool)

(assert (=> b!524770 (=> res!321760 e!306014)))

(declare-fun lt!241022 () (_ BitVec 32))

(declare-fun lt!241020 () array!33329)

(declare-fun lt!241023 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33329 (_ BitVec 32)) SeekEntryResult!4487)

(assert (=> b!524770 (= res!321760 (= lt!241019 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241022 lt!241023 lt!241020 mask!3524)))))

(assert (=> b!524770 (= lt!241019 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241017 (select (arr!16013 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524770 (= lt!241022 (toIndex!0 lt!241023 mask!3524))))

(assert (=> b!524770 (= lt!241023 (select (store (arr!16013 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524770 (= lt!241017 (toIndex!0 (select (arr!16013 a!3235) j!176) mask!3524))))

(assert (=> b!524770 (= lt!241020 (array!33330 (store (arr!16013 a!3235) i!1204 k!2280) (size!16377 a!3235)))))

(declare-fun e!306013 () Bool)

(assert (=> b!524770 e!306013))

(declare-fun res!321752 () Bool)

(assert (=> b!524770 (=> (not res!321752) (not e!306013))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33329 (_ BitVec 32)) Bool)

(assert (=> b!524770 (= res!321752 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241016 () Unit!16414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33329 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16414)

(assert (=> b!524770 (= lt!241016 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524771 () Bool)

(declare-fun e!306018 () Bool)

(assert (=> b!524771 (= e!306018 false)))

(declare-fun res!321757 () Bool)

(assert (=> start!47732 (=> (not res!321757) (not e!306016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47732 (= res!321757 (validMask!0 mask!3524))))

(assert (=> start!47732 e!306016))

(assert (=> start!47732 true))

(declare-fun array_inv!11787 (array!33329) Bool)

(assert (=> start!47732 (array_inv!11787 a!3235)))

(declare-fun b!524772 () Bool)

(declare-fun res!321750 () Bool)

(assert (=> b!524772 (=> (not res!321750) (not e!306016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524772 (= res!321750 (validKeyInArray!0 (select (arr!16013 a!3235) j!176)))))

(declare-fun b!524773 () Bool)

(declare-fun res!321756 () Bool)

(assert (=> b!524773 (=> (not res!321756) (not e!306016))))

(declare-fun arrayContainsKey!0 (array!33329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524773 (= res!321756 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524774 () Bool)

(declare-fun res!321751 () Bool)

(assert (=> b!524774 (=> (not res!321751) (not e!306016))))

(assert (=> b!524774 (= res!321751 (validKeyInArray!0 k!2280))))

(declare-fun b!524775 () Bool)

(declare-fun Unit!16416 () Unit!16414)

(assert (=> b!524775 (= e!306017 Unit!16416)))

(declare-fun lt!241021 () Unit!16414)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33329 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16414)

(assert (=> b!524775 (= lt!241021 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241017 #b00000000000000000000000000000000 (index!20162 lt!241019) (x!49167 lt!241019) mask!3524))))

(declare-fun res!321759 () Bool)

(assert (=> b!524775 (= res!321759 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241017 lt!241023 lt!241020 mask!3524) (Intermediate!4487 false (index!20162 lt!241019) (x!49167 lt!241019))))))

(assert (=> b!524775 (=> (not res!321759) (not e!306018))))

(assert (=> b!524775 e!306018))

(declare-fun b!524776 () Bool)

(declare-fun res!321753 () Bool)

(assert (=> b!524776 (=> (not res!321753) (not e!306019))))

(assert (=> b!524776 (= res!321753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524777 () Bool)

(declare-fun res!321758 () Bool)

(assert (=> b!524777 (=> res!321758 e!306014)))

(assert (=> b!524777 (= res!321758 (or (undefined!5299 lt!241019) (not (is-Intermediate!4487 lt!241019))))))

(declare-fun b!524778 () Bool)

(declare-fun Unit!16417 () Unit!16414)

(assert (=> b!524778 (= e!306017 Unit!16417)))

(declare-fun b!524779 () Bool)

(assert (=> b!524779 (= e!306013 (= (seekEntryOrOpen!0 (select (arr!16013 a!3235) j!176) a!3235 mask!3524) (Found!4487 j!176)))))

(declare-fun b!524780 () Bool)

(declare-fun res!321761 () Bool)

(assert (=> b!524780 (=> (not res!321761) (not e!306019))))

(declare-datatypes ((List!10224 0))(
  ( (Nil!10221) (Cons!10220 (h!11151 (_ BitVec 64)) (t!16460 List!10224)) )
))
(declare-fun arrayNoDuplicates!0 (array!33329 (_ BitVec 32) List!10224) Bool)

(assert (=> b!524780 (= res!321761 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10221))))

(assert (= (and start!47732 res!321757) b!524769))

(assert (= (and b!524769 res!321754) b!524772))

(assert (= (and b!524772 res!321750) b!524774))

(assert (= (and b!524774 res!321751) b!524773))

(assert (= (and b!524773 res!321756) b!524767))

(assert (= (and b!524767 res!321755) b!524776))

(assert (= (and b!524776 res!321753) b!524780))

(assert (= (and b!524780 res!321761) b!524770))

(assert (= (and b!524770 res!321752) b!524779))

(assert (= (and b!524770 (not res!321760)) b!524777))

(assert (= (and b!524777 (not res!321758)) b!524768))

(assert (= (and b!524768 c!61814) b!524775))

(assert (= (and b!524768 (not c!61814)) b!524778))

(assert (= (and b!524775 res!321759) b!524771))

(declare-fun m!505439 () Bool)

(assert (=> b!524770 m!505439))

(declare-fun m!505441 () Bool)

(assert (=> b!524770 m!505441))

(declare-fun m!505443 () Bool)

(assert (=> b!524770 m!505443))

(declare-fun m!505445 () Bool)

(assert (=> b!524770 m!505445))

(declare-fun m!505447 () Bool)

(assert (=> b!524770 m!505447))

(assert (=> b!524770 m!505445))

(declare-fun m!505449 () Bool)

(assert (=> b!524770 m!505449))

(declare-fun m!505451 () Bool)

(assert (=> b!524770 m!505451))

(assert (=> b!524770 m!505445))

(declare-fun m!505453 () Bool)

(assert (=> b!524770 m!505453))

(declare-fun m!505455 () Bool)

(assert (=> b!524770 m!505455))

(declare-fun m!505457 () Bool)

(assert (=> b!524773 m!505457))

(declare-fun m!505459 () Bool)

(assert (=> b!524776 m!505459))

(declare-fun m!505461 () Bool)

(assert (=> b!524774 m!505461))

(declare-fun m!505463 () Bool)

(assert (=> start!47732 m!505463))

(declare-fun m!505465 () Bool)

(assert (=> start!47732 m!505465))

(declare-fun m!505467 () Bool)

(assert (=> b!524768 m!505467))

(declare-fun m!505469 () Bool)

(assert (=> b!524768 m!505469))

(assert (=> b!524768 m!505445))

(assert (=> b!524779 m!505445))

(assert (=> b!524779 m!505445))

(declare-fun m!505471 () Bool)

(assert (=> b!524779 m!505471))

(assert (=> b!524772 m!505445))

(assert (=> b!524772 m!505445))

(declare-fun m!505473 () Bool)

(assert (=> b!524772 m!505473))

(declare-fun m!505475 () Bool)

(assert (=> b!524780 m!505475))

(declare-fun m!505477 () Bool)

(assert (=> b!524767 m!505477))

(declare-fun m!505479 () Bool)

(assert (=> b!524775 m!505479))

(declare-fun m!505481 () Bool)

(assert (=> b!524775 m!505481))

(push 1)

