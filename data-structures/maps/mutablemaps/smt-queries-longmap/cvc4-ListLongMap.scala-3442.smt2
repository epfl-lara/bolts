; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47786 () Bool)

(assert start!47786)

(declare-fun b!525901 () Bool)

(declare-datatypes ((Unit!16522 0))(
  ( (Unit!16523) )
))
(declare-fun e!306582 () Unit!16522)

(declare-fun Unit!16524 () Unit!16522)

(assert (=> b!525901 (= e!306582 Unit!16524)))

(declare-fun b!525902 () Bool)

(declare-fun res!322724 () Bool)

(declare-fun e!306580 () Bool)

(assert (=> b!525902 (=> res!322724 e!306580)))

(declare-datatypes ((SeekEntryResult!4514 0))(
  ( (MissingZero!4514 (index!20268 (_ BitVec 32))) (Found!4514 (index!20269 (_ BitVec 32))) (Intermediate!4514 (undefined!5326 Bool) (index!20270 (_ BitVec 32)) (x!49266 (_ BitVec 32))) (Undefined!4514) (MissingVacant!4514 (index!20271 (_ BitVec 32))) )
))
(declare-fun lt!241835 () SeekEntryResult!4514)

(assert (=> b!525902 (= res!322724 (or (undefined!5326 lt!241835) (not (is-Intermediate!4514 lt!241835))))))

(declare-fun b!525903 () Bool)

(declare-fun e!306581 () Bool)

(assert (=> b!525903 (= e!306581 false)))

(declare-fun b!525904 () Bool)

(declare-fun Unit!16525 () Unit!16522)

(assert (=> b!525904 (= e!306582 Unit!16525)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!241827 () Unit!16522)

(declare-datatypes ((array!33383 0))(
  ( (array!33384 (arr!16040 (Array (_ BitVec 32) (_ BitVec 64))) (size!16404 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33383)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!241830 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33383 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16522)

(assert (=> b!525904 (= lt!241827 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241830 #b00000000000000000000000000000000 (index!20270 lt!241835) (x!49266 lt!241835) mask!3524))))

(declare-fun lt!241826 () (_ BitVec 64))

(declare-fun lt!241834 () array!33383)

(declare-fun res!322725 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33383 (_ BitVec 32)) SeekEntryResult!4514)

(assert (=> b!525904 (= res!322725 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241830 lt!241826 lt!241834 mask!3524) (Intermediate!4514 false (index!20270 lt!241835) (x!49266 lt!241835))))))

(assert (=> b!525904 (=> (not res!322725) (not e!306581))))

(assert (=> b!525904 e!306581))

(declare-fun b!525905 () Bool)

(declare-fun e!306585 () Bool)

(declare-fun e!306584 () Bool)

(assert (=> b!525905 (= e!306585 e!306584)))

(declare-fun res!322727 () Bool)

(assert (=> b!525905 (=> (not res!322727) (not e!306584))))

(declare-fun lt!241829 () SeekEntryResult!4514)

(assert (=> b!525905 (= res!322727 (or (= lt!241829 (MissingZero!4514 i!1204)) (= lt!241829 (MissingVacant!4514 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33383 (_ BitVec 32)) SeekEntryResult!4514)

(assert (=> b!525905 (= lt!241829 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525907 () Bool)

(declare-fun res!322730 () Bool)

(assert (=> b!525907 (=> (not res!322730) (not e!306584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33383 (_ BitVec 32)) Bool)

(assert (=> b!525907 (= res!322730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525908 () Bool)

(assert (=> b!525908 (= e!306584 (not e!306580))))

(declare-fun res!322729 () Bool)

(assert (=> b!525908 (=> res!322729 e!306580)))

(declare-fun lt!241828 () (_ BitVec 32))

(assert (=> b!525908 (= res!322729 (= lt!241835 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241828 lt!241826 lt!241834 mask!3524)))))

(assert (=> b!525908 (= lt!241835 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241830 (select (arr!16040 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525908 (= lt!241828 (toIndex!0 lt!241826 mask!3524))))

(assert (=> b!525908 (= lt!241826 (select (store (arr!16040 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525908 (= lt!241830 (toIndex!0 (select (arr!16040 a!3235) j!176) mask!3524))))

(assert (=> b!525908 (= lt!241834 (array!33384 (store (arr!16040 a!3235) i!1204 k!2280) (size!16404 a!3235)))))

(declare-fun e!306586 () Bool)

(assert (=> b!525908 e!306586))

(declare-fun res!322728 () Bool)

(assert (=> b!525908 (=> (not res!322728) (not e!306586))))

(assert (=> b!525908 (= res!322728 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241831 () Unit!16522)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33383 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16522)

(assert (=> b!525908 (= lt!241831 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525909 () Bool)

(declare-fun res!322731 () Bool)

(assert (=> b!525909 (=> (not res!322731) (not e!306585))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525909 (= res!322731 (validKeyInArray!0 (select (arr!16040 a!3235) j!176)))))

(declare-fun b!525910 () Bool)

(declare-fun res!322723 () Bool)

(assert (=> b!525910 (=> (not res!322723) (not e!306585))))

(assert (=> b!525910 (= res!322723 (validKeyInArray!0 k!2280))))

(declare-fun b!525911 () Bool)

(declare-fun res!322732 () Bool)

(assert (=> b!525911 (=> (not res!322732) (not e!306584))))

(declare-datatypes ((List!10251 0))(
  ( (Nil!10248) (Cons!10247 (h!11178 (_ BitVec 64)) (t!16487 List!10251)) )
))
(declare-fun arrayNoDuplicates!0 (array!33383 (_ BitVec 32) List!10251) Bool)

(assert (=> b!525911 (= res!322732 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10248))))

(declare-fun b!525912 () Bool)

(assert (=> b!525912 (= e!306586 (= (seekEntryOrOpen!0 (select (arr!16040 a!3235) j!176) a!3235 mask!3524) (Found!4514 j!176)))))

(declare-fun b!525906 () Bool)

(assert (=> b!525906 (= e!306580 true)))

(assert (=> b!525906 (= (index!20270 lt!241835) i!1204)))

(declare-fun lt!241833 () Unit!16522)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33383 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16522)

(assert (=> b!525906 (= lt!241833 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241830 #b00000000000000000000000000000000 (index!20270 lt!241835) (x!49266 lt!241835) mask!3524))))

(assert (=> b!525906 (and (or (= (select (arr!16040 a!3235) (index!20270 lt!241835)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16040 a!3235) (index!20270 lt!241835)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16040 a!3235) (index!20270 lt!241835)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16040 a!3235) (index!20270 lt!241835)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241832 () Unit!16522)

(assert (=> b!525906 (= lt!241832 e!306582)))

(declare-fun c!61895 () Bool)

(assert (=> b!525906 (= c!61895 (= (select (arr!16040 a!3235) (index!20270 lt!241835)) (select (arr!16040 a!3235) j!176)))))

(assert (=> b!525906 (and (bvslt (x!49266 lt!241835) #b01111111111111111111111111111110) (or (= (select (arr!16040 a!3235) (index!20270 lt!241835)) (select (arr!16040 a!3235) j!176)) (= (select (arr!16040 a!3235) (index!20270 lt!241835)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16040 a!3235) (index!20270 lt!241835)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!322733 () Bool)

(assert (=> start!47786 (=> (not res!322733) (not e!306585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47786 (= res!322733 (validMask!0 mask!3524))))

(assert (=> start!47786 e!306585))

(assert (=> start!47786 true))

(declare-fun array_inv!11814 (array!33383) Bool)

(assert (=> start!47786 (array_inv!11814 a!3235)))

(declare-fun b!525913 () Bool)

(declare-fun res!322726 () Bool)

(assert (=> b!525913 (=> (not res!322726) (not e!306585))))

(declare-fun arrayContainsKey!0 (array!33383 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525913 (= res!322726 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525914 () Bool)

(declare-fun res!322722 () Bool)

(assert (=> b!525914 (=> (not res!322722) (not e!306585))))

(assert (=> b!525914 (= res!322722 (and (= (size!16404 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16404 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16404 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47786 res!322733) b!525914))

(assert (= (and b!525914 res!322722) b!525909))

(assert (= (and b!525909 res!322731) b!525910))

(assert (= (and b!525910 res!322723) b!525913))

(assert (= (and b!525913 res!322726) b!525905))

(assert (= (and b!525905 res!322727) b!525907))

(assert (= (and b!525907 res!322730) b!525911))

(assert (= (and b!525911 res!322732) b!525908))

(assert (= (and b!525908 res!322728) b!525912))

(assert (= (and b!525908 (not res!322729)) b!525902))

(assert (= (and b!525902 (not res!322724)) b!525906))

(assert (= (and b!525906 c!61895) b!525904))

(assert (= (and b!525906 (not c!61895)) b!525901))

(assert (= (and b!525904 res!322725) b!525903))

(declare-fun m!506627 () Bool)

(assert (=> start!47786 m!506627))

(declare-fun m!506629 () Bool)

(assert (=> start!47786 m!506629))

(declare-fun m!506631 () Bool)

(assert (=> b!525905 m!506631))

(declare-fun m!506633 () Bool)

(assert (=> b!525912 m!506633))

(assert (=> b!525912 m!506633))

(declare-fun m!506635 () Bool)

(assert (=> b!525912 m!506635))

(declare-fun m!506637 () Bool)

(assert (=> b!525913 m!506637))

(assert (=> b!525909 m!506633))

(assert (=> b!525909 m!506633))

(declare-fun m!506639 () Bool)

(assert (=> b!525909 m!506639))

(declare-fun m!506641 () Bool)

(assert (=> b!525906 m!506641))

(declare-fun m!506643 () Bool)

(assert (=> b!525906 m!506643))

(assert (=> b!525906 m!506633))

(declare-fun m!506645 () Bool)

(assert (=> b!525908 m!506645))

(declare-fun m!506647 () Bool)

(assert (=> b!525908 m!506647))

(declare-fun m!506649 () Bool)

(assert (=> b!525908 m!506649))

(assert (=> b!525908 m!506633))

(declare-fun m!506651 () Bool)

(assert (=> b!525908 m!506651))

(assert (=> b!525908 m!506633))

(declare-fun m!506653 () Bool)

(assert (=> b!525908 m!506653))

(declare-fun m!506655 () Bool)

(assert (=> b!525908 m!506655))

(assert (=> b!525908 m!506633))

(declare-fun m!506657 () Bool)

(assert (=> b!525908 m!506657))

(declare-fun m!506659 () Bool)

(assert (=> b!525908 m!506659))

(declare-fun m!506661 () Bool)

(assert (=> b!525910 m!506661))

(declare-fun m!506663 () Bool)

(assert (=> b!525904 m!506663))

(declare-fun m!506665 () Bool)

(assert (=> b!525904 m!506665))

(declare-fun m!506667 () Bool)

(assert (=> b!525911 m!506667))

(declare-fun m!506669 () Bool)

(assert (=> b!525907 m!506669))

(push 1)

