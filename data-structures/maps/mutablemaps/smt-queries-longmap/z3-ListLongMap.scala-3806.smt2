; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52210 () Bool)

(assert start!52210)

(declare-fun b!569556 () Bool)

(declare-fun res!359729 () Bool)

(declare-fun e!327612 () Bool)

(assert (=> b!569556 (=> (not res!359729) (not e!327612))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35687 0))(
  ( (array!35688 (arr!17131 (Array (_ BitVec 32) (_ BitVec 64))) (size!17495 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35687)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!569556 (= res!359729 (and (= (size!17495 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17495 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17495 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!359730 () Bool)

(assert (=> start!52210 (=> (not res!359730) (not e!327612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52210 (= res!359730 (validMask!0 mask!3119))))

(assert (=> start!52210 e!327612))

(assert (=> start!52210 true))

(declare-fun array_inv!12905 (array!35687) Bool)

(assert (=> start!52210 (array_inv!12905 a!3118)))

(declare-fun b!569557 () Bool)

(declare-fun e!327611 () Bool)

(declare-fun e!327610 () Bool)

(assert (=> b!569557 (= e!327611 e!327610)))

(declare-fun res!359726 () Bool)

(assert (=> b!569557 (=> (not res!359726) (not e!327610))))

(declare-fun lt!259714 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5587 0))(
  ( (MissingZero!5587 (index!24575 (_ BitVec 32))) (Found!5587 (index!24576 (_ BitVec 32))) (Intermediate!5587 (undefined!6399 Bool) (index!24577 (_ BitVec 32)) (x!53473 (_ BitVec 32))) (Undefined!5587) (MissingVacant!5587 (index!24578 (_ BitVec 32))) )
))
(declare-fun lt!259718 () SeekEntryResult!5587)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35687 (_ BitVec 32)) SeekEntryResult!5587)

(assert (=> b!569557 (= res!359726 (= lt!259718 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259714 (select (store (arr!17131 a!3118) i!1132 k0!1914) j!142) (array!35688 (store (arr!17131 a!3118) i!1132 k0!1914) (size!17495 a!3118)) mask!3119)))))

(declare-fun lt!259716 () (_ BitVec 32))

(assert (=> b!569557 (= lt!259718 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259716 (select (arr!17131 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569557 (= lt!259714 (toIndex!0 (select (store (arr!17131 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!569557 (= lt!259716 (toIndex!0 (select (arr!17131 a!3118) j!142) mask!3119))))

(declare-fun b!569558 () Bool)

(declare-fun res!359727 () Bool)

(assert (=> b!569558 (=> (not res!359727) (not e!327612))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569558 (= res!359727 (validKeyInArray!0 k0!1914))))

(declare-fun b!569559 () Bool)

(declare-fun res!359731 () Bool)

(assert (=> b!569559 (=> (not res!359731) (not e!327611))))

(declare-datatypes ((List!11264 0))(
  ( (Nil!11261) (Cons!11260 (h!12281 (_ BitVec 64)) (t!17500 List!11264)) )
))
(declare-fun arrayNoDuplicates!0 (array!35687 (_ BitVec 32) List!11264) Bool)

(assert (=> b!569559 (= res!359731 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11261))))

(declare-fun b!569560 () Bool)

(assert (=> b!569560 (= e!327612 e!327611)))

(declare-fun res!359732 () Bool)

(assert (=> b!569560 (=> (not res!359732) (not e!327611))))

(declare-fun lt!259715 () SeekEntryResult!5587)

(assert (=> b!569560 (= res!359732 (or (= lt!259715 (MissingZero!5587 i!1132)) (= lt!259715 (MissingVacant!5587 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35687 (_ BitVec 32)) SeekEntryResult!5587)

(assert (=> b!569560 (= lt!259715 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!569561 () Bool)

(declare-fun res!359724 () Bool)

(assert (=> b!569561 (=> (not res!359724) (not e!327611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35687 (_ BitVec 32)) Bool)

(assert (=> b!569561 (= res!359724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569562 () Bool)

(assert (=> b!569562 (= e!327610 (not true))))

(declare-fun lt!259717 () SeekEntryResult!5587)

(get-info :version)

(assert (=> b!569562 (and (= lt!259717 (Found!5587 j!142)) (or (undefined!6399 lt!259718) (not ((_ is Intermediate!5587) lt!259718)) (= (select (arr!17131 a!3118) (index!24577 lt!259718)) (select (arr!17131 a!3118) j!142)) (not (= (select (arr!17131 a!3118) (index!24577 lt!259718)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259717 (MissingZero!5587 (index!24577 lt!259718)))))))

(assert (=> b!569562 (= lt!259717 (seekEntryOrOpen!0 (select (arr!17131 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569562 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17876 0))(
  ( (Unit!17877) )
))
(declare-fun lt!259713 () Unit!17876)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17876)

(assert (=> b!569562 (= lt!259713 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569563 () Bool)

(declare-fun res!359728 () Bool)

(assert (=> b!569563 (=> (not res!359728) (not e!327612))))

(assert (=> b!569563 (= res!359728 (validKeyInArray!0 (select (arr!17131 a!3118) j!142)))))

(declare-fun b!569564 () Bool)

(declare-fun res!359725 () Bool)

(assert (=> b!569564 (=> (not res!359725) (not e!327612))))

(declare-fun arrayContainsKey!0 (array!35687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569564 (= res!359725 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52210 res!359730) b!569556))

(assert (= (and b!569556 res!359729) b!569563))

(assert (= (and b!569563 res!359728) b!569558))

(assert (= (and b!569558 res!359727) b!569564))

(assert (= (and b!569564 res!359725) b!569560))

(assert (= (and b!569560 res!359732) b!569561))

(assert (= (and b!569561 res!359724) b!569559))

(assert (= (and b!569559 res!359731) b!569557))

(assert (= (and b!569557 res!359726) b!569562))

(declare-fun m!548451 () Bool)

(assert (=> b!569561 m!548451))

(declare-fun m!548453 () Bool)

(assert (=> b!569560 m!548453))

(declare-fun m!548455 () Bool)

(assert (=> b!569563 m!548455))

(assert (=> b!569563 m!548455))

(declare-fun m!548457 () Bool)

(assert (=> b!569563 m!548457))

(declare-fun m!548459 () Bool)

(assert (=> b!569564 m!548459))

(assert (=> b!569557 m!548455))

(declare-fun m!548461 () Bool)

(assert (=> b!569557 m!548461))

(assert (=> b!569557 m!548455))

(declare-fun m!548463 () Bool)

(assert (=> b!569557 m!548463))

(declare-fun m!548465 () Bool)

(assert (=> b!569557 m!548465))

(assert (=> b!569557 m!548463))

(declare-fun m!548467 () Bool)

(assert (=> b!569557 m!548467))

(assert (=> b!569557 m!548455))

(declare-fun m!548469 () Bool)

(assert (=> b!569557 m!548469))

(assert (=> b!569557 m!548463))

(declare-fun m!548471 () Bool)

(assert (=> b!569557 m!548471))

(declare-fun m!548473 () Bool)

(assert (=> b!569559 m!548473))

(assert (=> b!569562 m!548455))

(declare-fun m!548475 () Bool)

(assert (=> b!569562 m!548475))

(declare-fun m!548477 () Bool)

(assert (=> b!569562 m!548477))

(declare-fun m!548479 () Bool)

(assert (=> b!569562 m!548479))

(assert (=> b!569562 m!548455))

(declare-fun m!548481 () Bool)

(assert (=> b!569562 m!548481))

(declare-fun m!548483 () Bool)

(assert (=> start!52210 m!548483))

(declare-fun m!548485 () Bool)

(assert (=> start!52210 m!548485))

(declare-fun m!548487 () Bool)

(assert (=> b!569558 m!548487))

(check-sat (not b!569561) (not b!569563) (not b!569557) (not b!569558) (not b!569564) (not b!569560) (not b!569559) (not b!569562) (not start!52210))
(check-sat)
