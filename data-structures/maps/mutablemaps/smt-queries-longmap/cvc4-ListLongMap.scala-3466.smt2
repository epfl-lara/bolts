; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48140 () Bool)

(assert start!48140)

(declare-fun b!529909 () Bool)

(declare-fun e!308772 () Bool)

(declare-fun e!308776 () Bool)

(assert (=> b!529909 (= e!308772 e!308776)))

(declare-fun res!325774 () Bool)

(assert (=> b!529909 (=> res!325774 e!308776)))

(declare-fun lt!244470 () Bool)

(declare-datatypes ((SeekEntryResult!4586 0))(
  ( (MissingZero!4586 (index!20568 (_ BitVec 32))) (Found!4586 (index!20569 (_ BitVec 32))) (Intermediate!4586 (undefined!5398 Bool) (index!20570 (_ BitVec 32)) (x!49563 (_ BitVec 32))) (Undefined!4586) (MissingVacant!4586 (index!20571 (_ BitVec 32))) )
))
(declare-fun lt!244474 () SeekEntryResult!4586)

(assert (=> b!529909 (= res!325774 (or (and (not lt!244470) (undefined!5398 lt!244474)) (and (not lt!244470) (not (undefined!5398 lt!244474)))))))

(assert (=> b!529909 (= lt!244470 (not (is-Intermediate!4586 lt!244474)))))

(declare-fun b!529910 () Bool)

(assert (=> b!529910 (= e!308776 true)))

(declare-fun lt!244469 () SeekEntryResult!4586)

(declare-datatypes ((array!33536 0))(
  ( (array!33537 (arr!16112 (Array (_ BitVec 32) (_ BitVec 64))) (size!16476 (_ BitVec 32))) )
))
(declare-fun lt!244472 () array!33536)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!244473 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33536 (_ BitVec 32)) SeekEntryResult!4586)

(assert (=> b!529910 (= lt!244469 (seekEntryOrOpen!0 lt!244473 lt!244472 mask!3524))))

(assert (=> b!529910 false))

(declare-fun b!529911 () Bool)

(declare-fun res!325769 () Bool)

(declare-fun e!308774 () Bool)

(assert (=> b!529911 (=> (not res!325769) (not e!308774))))

(declare-fun a!3235 () array!33536)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529911 (= res!325769 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529913 () Bool)

(declare-fun res!325771 () Bool)

(declare-fun e!308771 () Bool)

(assert (=> b!529913 (=> (not res!325771) (not e!308771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33536 (_ BitVec 32)) Bool)

(assert (=> b!529913 (= res!325771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529914 () Bool)

(assert (=> b!529914 (= e!308774 e!308771)))

(declare-fun res!325775 () Bool)

(assert (=> b!529914 (=> (not res!325775) (not e!308771))))

(declare-fun lt!244471 () SeekEntryResult!4586)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!529914 (= res!325775 (or (= lt!244471 (MissingZero!4586 i!1204)) (= lt!244471 (MissingVacant!4586 i!1204))))))

(assert (=> b!529914 (= lt!244471 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!308775 () Bool)

(declare-fun b!529915 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!529915 (= e!308775 (= (seekEntryOrOpen!0 (select (arr!16112 a!3235) j!176) a!3235 mask!3524) (Found!4586 j!176)))))

(declare-fun b!529916 () Bool)

(declare-fun res!325772 () Bool)

(assert (=> b!529916 (=> (not res!325772) (not e!308774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529916 (= res!325772 (validKeyInArray!0 (select (arr!16112 a!3235) j!176)))))

(declare-fun b!529917 () Bool)

(declare-fun res!325768 () Bool)

(assert (=> b!529917 (=> (not res!325768) (not e!308774))))

(assert (=> b!529917 (= res!325768 (validKeyInArray!0 k!2280))))

(declare-fun b!529918 () Bool)

(assert (=> b!529918 (= e!308771 (not e!308772))))

(declare-fun res!325770 () Bool)

(assert (=> b!529918 (=> res!325770 e!308772)))

(declare-fun lt!244475 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33536 (_ BitVec 32)) SeekEntryResult!4586)

(assert (=> b!529918 (= res!325770 (= lt!244474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244475 lt!244473 lt!244472 mask!3524)))))

(declare-fun lt!244467 () (_ BitVec 32))

(assert (=> b!529918 (= lt!244474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244467 (select (arr!16112 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529918 (= lt!244475 (toIndex!0 lt!244473 mask!3524))))

(assert (=> b!529918 (= lt!244473 (select (store (arr!16112 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!529918 (= lt!244467 (toIndex!0 (select (arr!16112 a!3235) j!176) mask!3524))))

(assert (=> b!529918 (= lt!244472 (array!33537 (store (arr!16112 a!3235) i!1204 k!2280) (size!16476 a!3235)))))

(assert (=> b!529918 e!308775))

(declare-fun res!325766 () Bool)

(assert (=> b!529918 (=> (not res!325766) (not e!308775))))

(assert (=> b!529918 (= res!325766 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16776 0))(
  ( (Unit!16777) )
))
(declare-fun lt!244468 () Unit!16776)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33536 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16776)

(assert (=> b!529918 (= lt!244468 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529919 () Bool)

(declare-fun res!325773 () Bool)

(assert (=> b!529919 (=> (not res!325773) (not e!308774))))

(assert (=> b!529919 (= res!325773 (and (= (size!16476 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16476 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16476 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!325767 () Bool)

(assert (=> start!48140 (=> (not res!325767) (not e!308774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48140 (= res!325767 (validMask!0 mask!3524))))

(assert (=> start!48140 e!308774))

(assert (=> start!48140 true))

(declare-fun array_inv!11886 (array!33536) Bool)

(assert (=> start!48140 (array_inv!11886 a!3235)))

(declare-fun b!529912 () Bool)

(declare-fun res!325765 () Bool)

(assert (=> b!529912 (=> (not res!325765) (not e!308771))))

(declare-datatypes ((List!10323 0))(
  ( (Nil!10320) (Cons!10319 (h!11259 (_ BitVec 64)) (t!16559 List!10323)) )
))
(declare-fun arrayNoDuplicates!0 (array!33536 (_ BitVec 32) List!10323) Bool)

(assert (=> b!529912 (= res!325765 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10320))))

(assert (= (and start!48140 res!325767) b!529919))

(assert (= (and b!529919 res!325773) b!529916))

(assert (= (and b!529916 res!325772) b!529917))

(assert (= (and b!529917 res!325768) b!529911))

(assert (= (and b!529911 res!325769) b!529914))

(assert (= (and b!529914 res!325775) b!529913))

(assert (= (and b!529913 res!325771) b!529912))

(assert (= (and b!529912 res!325765) b!529918))

(assert (= (and b!529918 res!325766) b!529915))

(assert (= (and b!529918 (not res!325770)) b!529909))

(assert (= (and b!529909 (not res!325774)) b!529910))

(declare-fun m!510479 () Bool)

(assert (=> b!529916 m!510479))

(assert (=> b!529916 m!510479))

(declare-fun m!510481 () Bool)

(assert (=> b!529916 m!510481))

(declare-fun m!510483 () Bool)

(assert (=> b!529918 m!510483))

(declare-fun m!510485 () Bool)

(assert (=> b!529918 m!510485))

(assert (=> b!529918 m!510479))

(declare-fun m!510487 () Bool)

(assert (=> b!529918 m!510487))

(assert (=> b!529918 m!510479))

(declare-fun m!510489 () Bool)

(assert (=> b!529918 m!510489))

(declare-fun m!510491 () Bool)

(assert (=> b!529918 m!510491))

(declare-fun m!510493 () Bool)

(assert (=> b!529918 m!510493))

(declare-fun m!510495 () Bool)

(assert (=> b!529918 m!510495))

(assert (=> b!529918 m!510479))

(declare-fun m!510497 () Bool)

(assert (=> b!529918 m!510497))

(declare-fun m!510499 () Bool)

(assert (=> b!529914 m!510499))

(declare-fun m!510501 () Bool)

(assert (=> b!529910 m!510501))

(declare-fun m!510503 () Bool)

(assert (=> b!529912 m!510503))

(declare-fun m!510505 () Bool)

(assert (=> b!529913 m!510505))

(declare-fun m!510507 () Bool)

(assert (=> start!48140 m!510507))

(declare-fun m!510509 () Bool)

(assert (=> start!48140 m!510509))

(assert (=> b!529915 m!510479))

(assert (=> b!529915 m!510479))

(declare-fun m!510511 () Bool)

(assert (=> b!529915 m!510511))

(declare-fun m!510513 () Bool)

(assert (=> b!529917 m!510513))

(declare-fun m!510515 () Bool)

(assert (=> b!529911 m!510515))

(push 1)

