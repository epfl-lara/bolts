; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47908 () Bool)

(assert start!47908)

(declare-fun b!527278 () Bool)

(declare-fun res!323751 () Bool)

(declare-fun e!307318 () Bool)

(assert (=> b!527278 (=> (not res!323751) (not e!307318))))

(declare-datatypes ((array!33436 0))(
  ( (array!33437 (arr!16065 (Array (_ BitVec 32) (_ BitVec 64))) (size!16429 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33436)

(declare-datatypes ((List!10276 0))(
  ( (Nil!10273) (Cons!10272 (h!11206 (_ BitVec 64)) (t!16512 List!10276)) )
))
(declare-fun arrayNoDuplicates!0 (array!33436 (_ BitVec 32) List!10276) Bool)

(assert (=> b!527278 (= res!323751 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10273))))

(declare-fun b!527279 () Bool)

(declare-fun e!307319 () Bool)

(assert (=> b!527279 (= e!307319 e!307318)))

(declare-fun res!323758 () Bool)

(assert (=> b!527279 (=> (not res!323758) (not e!307318))))

(declare-datatypes ((SeekEntryResult!4539 0))(
  ( (MissingZero!4539 (index!20374 (_ BitVec 32))) (Found!4539 (index!20375 (_ BitVec 32))) (Intermediate!4539 (undefined!5351 Bool) (index!20376 (_ BitVec 32)) (x!49375 (_ BitVec 32))) (Undefined!4539) (MissingVacant!4539 (index!20377 (_ BitVec 32))) )
))
(declare-fun lt!242737 () SeekEntryResult!4539)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!527279 (= res!323758 (or (= lt!242737 (MissingZero!4539 i!1204)) (= lt!242737 (MissingVacant!4539 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33436 (_ BitVec 32)) SeekEntryResult!4539)

(assert (=> b!527279 (= lt!242737 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!527280 () Bool)

(declare-fun res!323754 () Bool)

(assert (=> b!527280 (=> (not res!323754) (not e!307319))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527280 (= res!323754 (validKeyInArray!0 (select (arr!16065 a!3235) j!176)))))

(declare-fun b!527281 () Bool)

(declare-fun res!323753 () Bool)

(declare-fun e!307315 () Bool)

(assert (=> b!527281 (=> res!323753 e!307315)))

(declare-fun lt!242733 () SeekEntryResult!4539)

(assert (=> b!527281 (= res!323753 (or (undefined!5351 lt!242733) (not (is-Intermediate!4539 lt!242733))))))

(declare-fun b!527282 () Bool)

(declare-datatypes ((Unit!16622 0))(
  ( (Unit!16623) )
))
(declare-fun e!307320 () Unit!16622)

(declare-fun Unit!16624 () Unit!16622)

(assert (=> b!527282 (= e!307320 Unit!16624)))

(declare-fun lt!242738 () (_ BitVec 32))

(declare-fun lt!242732 () Unit!16622)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33436 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16622)

(assert (=> b!527282 (= lt!242732 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242738 #b00000000000000000000000000000000 (index!20376 lt!242733) (x!49375 lt!242733) mask!3524))))

(declare-fun res!323759 () Bool)

(declare-fun lt!242735 () (_ BitVec 64))

(declare-fun lt!242729 () array!33436)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33436 (_ BitVec 32)) SeekEntryResult!4539)

(assert (=> b!527282 (= res!323759 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242738 lt!242735 lt!242729 mask!3524) (Intermediate!4539 false (index!20376 lt!242733) (x!49375 lt!242733))))))

(declare-fun e!307321 () Bool)

(assert (=> b!527282 (=> (not res!323759) (not e!307321))))

(assert (=> b!527282 e!307321))

(declare-fun b!527283 () Bool)

(declare-fun res!323750 () Bool)

(assert (=> b!527283 (=> (not res!323750) (not e!307319))))

(assert (=> b!527283 (= res!323750 (and (= (size!16429 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16429 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16429 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527284 () Bool)

(assert (=> b!527284 (= e!307321 false)))

(declare-fun b!527285 () Bool)

(declare-fun res!323749 () Bool)

(assert (=> b!527285 (=> (not res!323749) (not e!307318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33436 (_ BitVec 32)) Bool)

(assert (=> b!527285 (= res!323749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!323752 () Bool)

(assert (=> start!47908 (=> (not res!323752) (not e!307319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47908 (= res!323752 (validMask!0 mask!3524))))

(assert (=> start!47908 e!307319))

(assert (=> start!47908 true))

(declare-fun array_inv!11839 (array!33436) Bool)

(assert (=> start!47908 (array_inv!11839 a!3235)))

(declare-fun b!527286 () Bool)

(assert (=> b!527286 (= e!307315 (or (bvsgt (x!49375 lt!242733) #b01111111111111111111111111111110) (bvslt lt!242738 #b00000000000000000000000000000000) (bvsge lt!242738 (size!16429 a!3235)) (bvslt (index!20376 lt!242733) #b00000000000000000000000000000000) (bvsge (index!20376 lt!242733) (size!16429 a!3235)) (= lt!242733 (Intermediate!4539 false (index!20376 lt!242733) (x!49375 lt!242733)))))))

(assert (=> b!527286 (= (index!20376 lt!242733) i!1204)))

(declare-fun lt!242730 () Unit!16622)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33436 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16622)

(assert (=> b!527286 (= lt!242730 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242738 #b00000000000000000000000000000000 (index!20376 lt!242733) (x!49375 lt!242733) mask!3524))))

(assert (=> b!527286 (and (or (= (select (arr!16065 a!3235) (index!20376 lt!242733)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16065 a!3235) (index!20376 lt!242733)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16065 a!3235) (index!20376 lt!242733)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16065 a!3235) (index!20376 lt!242733)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242731 () Unit!16622)

(assert (=> b!527286 (= lt!242731 e!307320)))

(declare-fun c!62072 () Bool)

(assert (=> b!527286 (= c!62072 (= (select (arr!16065 a!3235) (index!20376 lt!242733)) (select (arr!16065 a!3235) j!176)))))

(assert (=> b!527286 (and (bvslt (x!49375 lt!242733) #b01111111111111111111111111111110) (or (= (select (arr!16065 a!3235) (index!20376 lt!242733)) (select (arr!16065 a!3235) j!176)) (= (select (arr!16065 a!3235) (index!20376 lt!242733)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16065 a!3235) (index!20376 lt!242733)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527287 () Bool)

(declare-fun e!307316 () Bool)

(assert (=> b!527287 (= e!307316 (= (seekEntryOrOpen!0 (select (arr!16065 a!3235) j!176) a!3235 mask!3524) (Found!4539 j!176)))))

(declare-fun b!527288 () Bool)

(declare-fun Unit!16625 () Unit!16622)

(assert (=> b!527288 (= e!307320 Unit!16625)))

(declare-fun b!527289 () Bool)

(declare-fun res!323748 () Bool)

(assert (=> b!527289 (=> (not res!323748) (not e!307319))))

(assert (=> b!527289 (= res!323748 (validKeyInArray!0 k!2280))))

(declare-fun b!527290 () Bool)

(declare-fun res!323757 () Bool)

(assert (=> b!527290 (=> (not res!323757) (not e!307319))))

(declare-fun arrayContainsKey!0 (array!33436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527290 (= res!323757 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527291 () Bool)

(assert (=> b!527291 (= e!307318 (not e!307315))))

(declare-fun res!323756 () Bool)

(assert (=> b!527291 (=> res!323756 e!307315)))

(declare-fun lt!242734 () (_ BitVec 32))

(assert (=> b!527291 (= res!323756 (= lt!242733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242734 lt!242735 lt!242729 mask!3524)))))

(assert (=> b!527291 (= lt!242733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242738 (select (arr!16065 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527291 (= lt!242734 (toIndex!0 lt!242735 mask!3524))))

(assert (=> b!527291 (= lt!242735 (select (store (arr!16065 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!527291 (= lt!242738 (toIndex!0 (select (arr!16065 a!3235) j!176) mask!3524))))

(assert (=> b!527291 (= lt!242729 (array!33437 (store (arr!16065 a!3235) i!1204 k!2280) (size!16429 a!3235)))))

(assert (=> b!527291 e!307316))

(declare-fun res!323755 () Bool)

(assert (=> b!527291 (=> (not res!323755) (not e!307316))))

(assert (=> b!527291 (= res!323755 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242736 () Unit!16622)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33436 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16622)

(assert (=> b!527291 (= lt!242736 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!47908 res!323752) b!527283))

(assert (= (and b!527283 res!323750) b!527280))

(assert (= (and b!527280 res!323754) b!527289))

(assert (= (and b!527289 res!323748) b!527290))

(assert (= (and b!527290 res!323757) b!527279))

(assert (= (and b!527279 res!323758) b!527285))

(assert (= (and b!527285 res!323749) b!527278))

(assert (= (and b!527278 res!323751) b!527291))

(assert (= (and b!527291 res!323755) b!527287))

(assert (= (and b!527291 (not res!323756)) b!527281))

(assert (= (and b!527281 (not res!323753)) b!527286))

(assert (= (and b!527286 c!62072) b!527282))

(assert (= (and b!527286 (not c!62072)) b!527288))

(assert (= (and b!527282 res!323759) b!527284))

(declare-fun m!507967 () Bool)

(assert (=> b!527279 m!507967))

(declare-fun m!507969 () Bool)

(assert (=> b!527282 m!507969))

(declare-fun m!507971 () Bool)

(assert (=> b!527282 m!507971))

(declare-fun m!507973 () Bool)

(assert (=> b!527278 m!507973))

(declare-fun m!507975 () Bool)

(assert (=> b!527280 m!507975))

(assert (=> b!527280 m!507975))

(declare-fun m!507977 () Bool)

(assert (=> b!527280 m!507977))

(declare-fun m!507979 () Bool)

(assert (=> b!527286 m!507979))

(declare-fun m!507981 () Bool)

(assert (=> b!527286 m!507981))

(assert (=> b!527286 m!507975))

(assert (=> b!527287 m!507975))

(assert (=> b!527287 m!507975))

(declare-fun m!507983 () Bool)

(assert (=> b!527287 m!507983))

(declare-fun m!507985 () Bool)

(assert (=> start!47908 m!507985))

(declare-fun m!507987 () Bool)

(assert (=> start!47908 m!507987))

(declare-fun m!507989 () Bool)

(assert (=> b!527289 m!507989))

(declare-fun m!507991 () Bool)

(assert (=> b!527285 m!507991))

(declare-fun m!507993 () Bool)

(assert (=> b!527291 m!507993))

(declare-fun m!507995 () Bool)

(assert (=> b!527291 m!507995))

(declare-fun m!507997 () Bool)

(assert (=> b!527291 m!507997))

(declare-fun m!507999 () Bool)

(assert (=> b!527291 m!507999))

(assert (=> b!527291 m!507975))

(declare-fun m!508001 () Bool)

(assert (=> b!527291 m!508001))

(assert (=> b!527291 m!507975))

(declare-fun m!508003 () Bool)

(assert (=> b!527291 m!508003))

(assert (=> b!527291 m!507975))

(declare-fun m!508005 () Bool)

(assert (=> b!527291 m!508005))

(declare-fun m!508007 () Bool)

(assert (=> b!527291 m!508007))

(declare-fun m!508009 () Bool)

(assert (=> b!527290 m!508009))

(push 1)

