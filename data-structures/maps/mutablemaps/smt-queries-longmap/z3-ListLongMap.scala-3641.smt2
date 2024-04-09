; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50242 () Bool)

(assert start!50242)

(declare-fun b!549550 () Bool)

(declare-fun res!342849 () Bool)

(declare-fun e!317349 () Bool)

(assert (=> b!549550 (=> (not res!342849) (not e!317349))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549550 (= res!342849 (validKeyInArray!0 k0!1914))))

(declare-fun b!549551 () Bool)

(declare-fun res!342851 () Bool)

(declare-fun e!317348 () Bool)

(assert (=> b!549551 (=> (not res!342851) (not e!317348))))

(declare-datatypes ((array!34649 0))(
  ( (array!34650 (arr!16636 (Array (_ BitVec 32) (_ BitVec 64))) (size!17000 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34649)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34649 (_ BitVec 32)) Bool)

(assert (=> b!549551 (= res!342851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549552 () Bool)

(declare-fun res!342846 () Bool)

(assert (=> b!549552 (=> (not res!342846) (not e!317348))))

(declare-datatypes ((List!10769 0))(
  ( (Nil!10766) (Cons!10765 (h!11738 (_ BitVec 64)) (t!17005 List!10769)) )
))
(declare-fun arrayNoDuplicates!0 (array!34649 (_ BitVec 32) List!10769) Bool)

(assert (=> b!549552 (= res!342846 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10766))))

(declare-fun b!549553 () Bool)

(declare-fun res!342844 () Bool)

(assert (=> b!549553 (=> (not res!342844) (not e!317349))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549553 (= res!342844 (and (= (size!17000 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17000 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17000 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549554 () Bool)

(declare-fun res!342845 () Bool)

(assert (=> b!549554 (=> (not res!342845) (not e!317349))))

(declare-fun arrayContainsKey!0 (array!34649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549554 (= res!342845 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549555 () Bool)

(assert (=> b!549555 (= e!317348 false)))

(declare-fun lt!250283 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5092 0))(
  ( (MissingZero!5092 (index!22595 (_ BitVec 32))) (Found!5092 (index!22596 (_ BitVec 32))) (Intermediate!5092 (undefined!5904 Bool) (index!22597 (_ BitVec 32)) (x!51553 (_ BitVec 32))) (Undefined!5092) (MissingVacant!5092 (index!22598 (_ BitVec 32))) )
))
(declare-fun lt!250284 () SeekEntryResult!5092)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34649 (_ BitVec 32)) SeekEntryResult!5092)

(assert (=> b!549555 (= lt!250284 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250283 (select (store (arr!16636 a!3118) i!1132 k0!1914) j!142) (array!34650 (store (arr!16636 a!3118) i!1132 k0!1914) (size!17000 a!3118)) mask!3119))))

(declare-fun lt!250282 () (_ BitVec 32))

(declare-fun lt!250285 () SeekEntryResult!5092)

(assert (=> b!549555 (= lt!250285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250282 (select (arr!16636 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549555 (= lt!250283 (toIndex!0 (select (store (arr!16636 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!549555 (= lt!250282 (toIndex!0 (select (arr!16636 a!3118) j!142) mask!3119))))

(declare-fun b!549556 () Bool)

(declare-fun res!342848 () Bool)

(assert (=> b!549556 (=> (not res!342848) (not e!317349))))

(assert (=> b!549556 (= res!342848 (validKeyInArray!0 (select (arr!16636 a!3118) j!142)))))

(declare-fun b!549557 () Bool)

(assert (=> b!549557 (= e!317349 e!317348)))

(declare-fun res!342847 () Bool)

(assert (=> b!549557 (=> (not res!342847) (not e!317348))))

(declare-fun lt!250286 () SeekEntryResult!5092)

(assert (=> b!549557 (= res!342847 (or (= lt!250286 (MissingZero!5092 i!1132)) (= lt!250286 (MissingVacant!5092 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34649 (_ BitVec 32)) SeekEntryResult!5092)

(assert (=> b!549557 (= lt!250286 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!342850 () Bool)

(assert (=> start!50242 (=> (not res!342850) (not e!317349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50242 (= res!342850 (validMask!0 mask!3119))))

(assert (=> start!50242 e!317349))

(assert (=> start!50242 true))

(declare-fun array_inv!12410 (array!34649) Bool)

(assert (=> start!50242 (array_inv!12410 a!3118)))

(assert (= (and start!50242 res!342850) b!549553))

(assert (= (and b!549553 res!342844) b!549556))

(assert (= (and b!549556 res!342848) b!549550))

(assert (= (and b!549550 res!342849) b!549554))

(assert (= (and b!549554 res!342845) b!549557))

(assert (= (and b!549557 res!342847) b!549551))

(assert (= (and b!549551 res!342851) b!549552))

(assert (= (and b!549552 res!342846) b!549555))

(declare-fun m!526513 () Bool)

(assert (=> b!549552 m!526513))

(declare-fun m!526515 () Bool)

(assert (=> b!549557 m!526515))

(declare-fun m!526517 () Bool)

(assert (=> b!549554 m!526517))

(declare-fun m!526519 () Bool)

(assert (=> b!549556 m!526519))

(assert (=> b!549556 m!526519))

(declare-fun m!526521 () Bool)

(assert (=> b!549556 m!526521))

(assert (=> b!549555 m!526519))

(declare-fun m!526523 () Bool)

(assert (=> b!549555 m!526523))

(assert (=> b!549555 m!526519))

(declare-fun m!526525 () Bool)

(assert (=> b!549555 m!526525))

(assert (=> b!549555 m!526519))

(declare-fun m!526527 () Bool)

(assert (=> b!549555 m!526527))

(assert (=> b!549555 m!526525))

(declare-fun m!526529 () Bool)

(assert (=> b!549555 m!526529))

(declare-fun m!526531 () Bool)

(assert (=> b!549555 m!526531))

(assert (=> b!549555 m!526525))

(declare-fun m!526533 () Bool)

(assert (=> b!549555 m!526533))

(declare-fun m!526535 () Bool)

(assert (=> start!50242 m!526535))

(declare-fun m!526537 () Bool)

(assert (=> start!50242 m!526537))

(declare-fun m!526539 () Bool)

(assert (=> b!549551 m!526539))

(declare-fun m!526541 () Bool)

(assert (=> b!549550 m!526541))

(check-sat (not b!549550) (not b!549551) (not b!549556) (not b!549557) (not b!549555) (not b!549554) (not b!549552) (not start!50242))
(check-sat)
