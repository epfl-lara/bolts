; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47782 () Bool)

(assert start!47782)

(declare-fun e!306541 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33379 0))(
  ( (array!33380 (arr!16038 (Array (_ BitVec 32) (_ BitVec 64))) (size!16402 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33379)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!525817 () Bool)

(declare-datatypes ((SeekEntryResult!4512 0))(
  ( (MissingZero!4512 (index!20260 (_ BitVec 32))) (Found!4512 (index!20261 (_ BitVec 32))) (Intermediate!4512 (undefined!5324 Bool) (index!20262 (_ BitVec 32)) (x!49264 (_ BitVec 32))) (Undefined!4512) (MissingVacant!4512 (index!20263 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33379 (_ BitVec 32)) SeekEntryResult!4512)

(assert (=> b!525817 (= e!306541 (= (seekEntryOrOpen!0 (select (arr!16038 a!3235) j!176) a!3235 mask!3524) (Found!4512 j!176)))))

(declare-fun b!525818 () Bool)

(declare-fun res!322655 () Bool)

(declare-fun e!306543 () Bool)

(assert (=> b!525818 (=> (not res!322655) (not e!306543))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525818 (= res!322655 (and (= (size!16402 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16402 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16402 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525819 () Bool)

(declare-fun res!322651 () Bool)

(declare-fun e!306540 () Bool)

(assert (=> b!525819 (=> (not res!322651) (not e!306540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33379 (_ BitVec 32)) Bool)

(assert (=> b!525819 (= res!322651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525820 () Bool)

(assert (=> b!525820 (= e!306543 e!306540)))

(declare-fun res!322656 () Bool)

(assert (=> b!525820 (=> (not res!322656) (not e!306540))))

(declare-fun lt!241775 () SeekEntryResult!4512)

(assert (=> b!525820 (= res!322656 (or (= lt!241775 (MissingZero!4512 i!1204)) (= lt!241775 (MissingVacant!4512 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!525820 (= lt!241775 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525821 () Bool)

(declare-fun res!322654 () Bool)

(assert (=> b!525821 (=> (not res!322654) (not e!306543))))

(declare-fun arrayContainsKey!0 (array!33379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525821 (= res!322654 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525822 () Bool)

(declare-fun res!322659 () Bool)

(assert (=> b!525822 (=> (not res!322659) (not e!306543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525822 (= res!322659 (validKeyInArray!0 (select (arr!16038 a!3235) j!176)))))

(declare-fun b!525823 () Bool)

(declare-fun res!322661 () Bool)

(assert (=> b!525823 (=> (not res!322661) (not e!306543))))

(assert (=> b!525823 (= res!322661 (validKeyInArray!0 k!2280))))

(declare-fun b!525824 () Bool)

(declare-datatypes ((Unit!16514 0))(
  ( (Unit!16515) )
))
(declare-fun e!306539 () Unit!16514)

(declare-fun Unit!16516 () Unit!16514)

(assert (=> b!525824 (= e!306539 Unit!16516)))

(declare-fun lt!241767 () (_ BitVec 32))

(declare-fun lt!241774 () SeekEntryResult!4512)

(declare-fun lt!241768 () Unit!16514)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33379 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16514)

(assert (=> b!525824 (= lt!241768 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241767 #b00000000000000000000000000000000 (index!20262 lt!241774) (x!49264 lt!241774) mask!3524))))

(declare-fun res!322653 () Bool)

(declare-fun lt!241766 () array!33379)

(declare-fun lt!241769 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33379 (_ BitVec 32)) SeekEntryResult!4512)

(assert (=> b!525824 (= res!322653 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241767 lt!241769 lt!241766 mask!3524) (Intermediate!4512 false (index!20262 lt!241774) (x!49264 lt!241774))))))

(declare-fun e!306544 () Bool)

(assert (=> b!525824 (=> (not res!322653) (not e!306544))))

(assert (=> b!525824 e!306544))

(declare-fun res!322657 () Bool)

(assert (=> start!47782 (=> (not res!322657) (not e!306543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47782 (= res!322657 (validMask!0 mask!3524))))

(assert (=> start!47782 e!306543))

(assert (=> start!47782 true))

(declare-fun array_inv!11812 (array!33379) Bool)

(assert (=> start!47782 (array_inv!11812 a!3235)))

(declare-fun b!525825 () Bool)

(declare-fun Unit!16517 () Unit!16514)

(assert (=> b!525825 (= e!306539 Unit!16517)))

(declare-fun b!525826 () Bool)

(declare-fun res!322650 () Bool)

(declare-fun e!306538 () Bool)

(assert (=> b!525826 (=> res!322650 e!306538)))

(assert (=> b!525826 (= res!322650 (or (undefined!5324 lt!241774) (not (is-Intermediate!4512 lt!241774))))))

(declare-fun b!525827 () Bool)

(declare-fun res!322652 () Bool)

(assert (=> b!525827 (=> (not res!322652) (not e!306540))))

(declare-datatypes ((List!10249 0))(
  ( (Nil!10246) (Cons!10245 (h!11176 (_ BitVec 64)) (t!16485 List!10249)) )
))
(declare-fun arrayNoDuplicates!0 (array!33379 (_ BitVec 32) List!10249) Bool)

(assert (=> b!525827 (= res!322652 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10246))))

(declare-fun b!525828 () Bool)

(assert (=> b!525828 (= e!306540 (not e!306538))))

(declare-fun res!322658 () Bool)

(assert (=> b!525828 (=> res!322658 e!306538)))

(declare-fun lt!241772 () (_ BitVec 32))

(assert (=> b!525828 (= res!322658 (= lt!241774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241772 lt!241769 lt!241766 mask!3524)))))

(assert (=> b!525828 (= lt!241774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241767 (select (arr!16038 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525828 (= lt!241772 (toIndex!0 lt!241769 mask!3524))))

(assert (=> b!525828 (= lt!241769 (select (store (arr!16038 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525828 (= lt!241767 (toIndex!0 (select (arr!16038 a!3235) j!176) mask!3524))))

(assert (=> b!525828 (= lt!241766 (array!33380 (store (arr!16038 a!3235) i!1204 k!2280) (size!16402 a!3235)))))

(assert (=> b!525828 e!306541))

(declare-fun res!322660 () Bool)

(assert (=> b!525828 (=> (not res!322660) (not e!306541))))

(assert (=> b!525828 (= res!322660 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241770 () Unit!16514)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33379 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16514)

(assert (=> b!525828 (= lt!241770 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525829 () Bool)

(assert (=> b!525829 (= e!306538 true)))

(assert (=> b!525829 (= (index!20262 lt!241774) i!1204)))

(declare-fun lt!241773 () Unit!16514)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33379 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16514)

(assert (=> b!525829 (= lt!241773 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241767 #b00000000000000000000000000000000 (index!20262 lt!241774) (x!49264 lt!241774) mask!3524))))

(assert (=> b!525829 (and (or (= (select (arr!16038 a!3235) (index!20262 lt!241774)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16038 a!3235) (index!20262 lt!241774)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16038 a!3235) (index!20262 lt!241774)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16038 a!3235) (index!20262 lt!241774)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241771 () Unit!16514)

(assert (=> b!525829 (= lt!241771 e!306539)))

(declare-fun c!61889 () Bool)

(assert (=> b!525829 (= c!61889 (= (select (arr!16038 a!3235) (index!20262 lt!241774)) (select (arr!16038 a!3235) j!176)))))

(assert (=> b!525829 (and (bvslt (x!49264 lt!241774) #b01111111111111111111111111111110) (or (= (select (arr!16038 a!3235) (index!20262 lt!241774)) (select (arr!16038 a!3235) j!176)) (= (select (arr!16038 a!3235) (index!20262 lt!241774)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16038 a!3235) (index!20262 lt!241774)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!525830 () Bool)

(assert (=> b!525830 (= e!306544 false)))

(assert (= (and start!47782 res!322657) b!525818))

(assert (= (and b!525818 res!322655) b!525822))

(assert (= (and b!525822 res!322659) b!525823))

(assert (= (and b!525823 res!322661) b!525821))

(assert (= (and b!525821 res!322654) b!525820))

(assert (= (and b!525820 res!322656) b!525819))

(assert (= (and b!525819 res!322651) b!525827))

(assert (= (and b!525827 res!322652) b!525828))

(assert (= (and b!525828 res!322660) b!525817))

(assert (= (and b!525828 (not res!322658)) b!525826))

(assert (= (and b!525826 (not res!322650)) b!525829))

(assert (= (and b!525829 c!61889) b!525824))

(assert (= (and b!525829 (not c!61889)) b!525825))

(assert (= (and b!525824 res!322653) b!525830))

(declare-fun m!506539 () Bool)

(assert (=> b!525827 m!506539))

(declare-fun m!506541 () Bool)

(assert (=> b!525822 m!506541))

(assert (=> b!525822 m!506541))

(declare-fun m!506543 () Bool)

(assert (=> b!525822 m!506543))

(declare-fun m!506545 () Bool)

(assert (=> b!525823 m!506545))

(declare-fun m!506547 () Bool)

(assert (=> b!525828 m!506547))

(declare-fun m!506549 () Bool)

(assert (=> b!525828 m!506549))

(declare-fun m!506551 () Bool)

(assert (=> b!525828 m!506551))

(declare-fun m!506553 () Bool)

(assert (=> b!525828 m!506553))

(assert (=> b!525828 m!506541))

(declare-fun m!506555 () Bool)

(assert (=> b!525828 m!506555))

(declare-fun m!506557 () Bool)

(assert (=> b!525828 m!506557))

(assert (=> b!525828 m!506541))

(declare-fun m!506559 () Bool)

(assert (=> b!525828 m!506559))

(assert (=> b!525828 m!506541))

(declare-fun m!506561 () Bool)

(assert (=> b!525828 m!506561))

(declare-fun m!506563 () Bool)

(assert (=> b!525819 m!506563))

(declare-fun m!506565 () Bool)

(assert (=> b!525829 m!506565))

(declare-fun m!506567 () Bool)

(assert (=> b!525829 m!506567))

(assert (=> b!525829 m!506541))

(declare-fun m!506569 () Bool)

(assert (=> b!525820 m!506569))

(declare-fun m!506571 () Bool)

(assert (=> b!525824 m!506571))

(declare-fun m!506573 () Bool)

(assert (=> b!525824 m!506573))

(declare-fun m!506575 () Bool)

(assert (=> b!525821 m!506575))

(assert (=> b!525817 m!506541))

(assert (=> b!525817 m!506541))

(declare-fun m!506577 () Bool)

(assert (=> b!525817 m!506577))

(declare-fun m!506579 () Bool)

(assert (=> start!47782 m!506579))

(declare-fun m!506581 () Bool)

(assert (=> start!47782 m!506581))

(push 1)

