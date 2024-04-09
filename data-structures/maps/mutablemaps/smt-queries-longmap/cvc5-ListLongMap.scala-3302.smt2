; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45766 () Bool)

(assert start!45766)

(declare-fun b!506013 () Bool)

(declare-fun res!307150 () Bool)

(declare-fun e!296183 () Bool)

(assert (=> b!506013 (=> (not res!307150) (not e!296183))))

(declare-datatypes ((array!32482 0))(
  ( (array!32483 (arr!15618 (Array (_ BitVec 32) (_ BitVec 64))) (size!15982 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32482)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506013 (= res!307150 (validKeyInArray!0 (select (arr!15618 a!3235) j!176)))))

(declare-fun b!506014 () Bool)

(declare-fun res!307146 () Bool)

(assert (=> b!506014 (=> (not res!307146) (not e!296183))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!506014 (= res!307146 (and (= (size!15982 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15982 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15982 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506015 () Bool)

(declare-fun res!307136 () Bool)

(assert (=> b!506015 (=> (not res!307136) (not e!296183))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!506015 (= res!307136 (validKeyInArray!0 k!2280))))

(declare-fun b!506016 () Bool)

(declare-fun e!296185 () Bool)

(assert (=> b!506016 (= e!296183 e!296185)))

(declare-fun res!307138 () Bool)

(assert (=> b!506016 (=> (not res!307138) (not e!296185))))

(declare-datatypes ((SeekEntryResult!4092 0))(
  ( (MissingZero!4092 (index!18556 (_ BitVec 32))) (Found!4092 (index!18557 (_ BitVec 32))) (Intermediate!4092 (undefined!4904 Bool) (index!18558 (_ BitVec 32)) (x!47592 (_ BitVec 32))) (Undefined!4092) (MissingVacant!4092 (index!18559 (_ BitVec 32))) )
))
(declare-fun lt!230913 () SeekEntryResult!4092)

(assert (=> b!506016 (= res!307138 (or (= lt!230913 (MissingZero!4092 i!1204)) (= lt!230913 (MissingVacant!4092 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32482 (_ BitVec 32)) SeekEntryResult!4092)

(assert (=> b!506016 (= lt!230913 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506017 () Bool)

(declare-datatypes ((Unit!15458 0))(
  ( (Unit!15459) )
))
(declare-fun e!296188 () Unit!15458)

(declare-fun Unit!15460 () Unit!15458)

(assert (=> b!506017 (= e!296188 Unit!15460)))

(declare-fun lt!230916 () Unit!15458)

(declare-fun lt!230906 () (_ BitVec 32))

(declare-fun lt!230914 () SeekEntryResult!4092)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32482 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15458)

(assert (=> b!506017 (= lt!230916 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230906 #b00000000000000000000000000000000 (index!18558 lt!230914) (x!47592 lt!230914) mask!3524))))

(declare-fun lt!230915 () array!32482)

(declare-fun lt!230909 () (_ BitVec 64))

(declare-fun res!307149 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32482 (_ BitVec 32)) SeekEntryResult!4092)

(assert (=> b!506017 (= res!307149 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230906 lt!230909 lt!230915 mask!3524) (Intermediate!4092 false (index!18558 lt!230914) (x!47592 lt!230914))))))

(declare-fun e!296187 () Bool)

(assert (=> b!506017 (=> (not res!307149) (not e!296187))))

(assert (=> b!506017 e!296187))

(declare-fun b!506018 () Bool)

(declare-fun e!296182 () Bool)

(assert (=> b!506018 (= e!296185 (not e!296182))))

(declare-fun res!307144 () Bool)

(assert (=> b!506018 (=> res!307144 e!296182)))

(declare-fun lt!230912 () SeekEntryResult!4092)

(assert (=> b!506018 (= res!307144 (or (= lt!230914 lt!230912) (undefined!4904 lt!230914) (not (is-Intermediate!4092 lt!230914))))))

(declare-fun lt!230911 () (_ BitVec 32))

(assert (=> b!506018 (= lt!230912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230911 lt!230909 lt!230915 mask!3524))))

(assert (=> b!506018 (= lt!230914 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230906 (select (arr!15618 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506018 (= lt!230911 (toIndex!0 lt!230909 mask!3524))))

(assert (=> b!506018 (= lt!230909 (select (store (arr!15618 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!506018 (= lt!230906 (toIndex!0 (select (arr!15618 a!3235) j!176) mask!3524))))

(assert (=> b!506018 (= lt!230915 (array!32483 (store (arr!15618 a!3235) i!1204 k!2280) (size!15982 a!3235)))))

(declare-fun lt!230908 () SeekEntryResult!4092)

(assert (=> b!506018 (= lt!230908 (Found!4092 j!176))))

(declare-fun e!296184 () Bool)

(assert (=> b!506018 e!296184))

(declare-fun res!307148 () Bool)

(assert (=> b!506018 (=> (not res!307148) (not e!296184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32482 (_ BitVec 32)) Bool)

(assert (=> b!506018 (= res!307148 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230918 () Unit!15458)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15458)

(assert (=> b!506018 (= lt!230918 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506019 () Bool)

(declare-fun e!296189 () Bool)

(declare-fun e!296191 () Bool)

(assert (=> b!506019 (= e!296189 e!296191)))

(declare-fun res!307141 () Bool)

(assert (=> b!506019 (=> res!307141 e!296191)))

(assert (=> b!506019 (= res!307141 (bvslt mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!506019 (= (seekEntryOrOpen!0 lt!230909 lt!230915 mask!3524) lt!230908)))

(declare-fun lt!230917 () Unit!15458)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32482 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15458)

(assert (=> b!506019 (= lt!230917 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230906 #b00000000000000000000000000000000 (index!18558 lt!230914) (x!47592 lt!230914) mask!3524))))

(declare-fun b!506020 () Bool)

(declare-fun res!307143 () Bool)

(assert (=> b!506020 (=> (not res!307143) (not e!296185))))

(declare-datatypes ((List!9829 0))(
  ( (Nil!9826) (Cons!9825 (h!10702 (_ BitVec 64)) (t!16065 List!9829)) )
))
(declare-fun arrayNoDuplicates!0 (array!32482 (_ BitVec 32) List!9829) Bool)

(assert (=> b!506020 (= res!307143 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9826))))

(declare-fun b!506021 () Bool)

(declare-fun e!296190 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32482 (_ BitVec 32)) SeekEntryResult!4092)

(assert (=> b!506021 (= e!296190 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230906 (index!18558 lt!230914) (select (arr!15618 a!3235) j!176) a!3235 mask!3524) lt!230908)))))

(declare-fun res!307142 () Bool)

(assert (=> start!45766 (=> (not res!307142) (not e!296183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45766 (= res!307142 (validMask!0 mask!3524))))

(assert (=> start!45766 e!296183))

(assert (=> start!45766 true))

(declare-fun array_inv!11392 (array!32482) Bool)

(assert (=> start!45766 (array_inv!11392 a!3235)))

(declare-fun b!506022 () Bool)

(assert (=> b!506022 (= e!296191 (validKeyInArray!0 lt!230909))))

(declare-fun b!506023 () Bool)

(assert (=> b!506023 (= e!296184 (= (seekEntryOrOpen!0 (select (arr!15618 a!3235) j!176) a!3235 mask!3524) (Found!4092 j!176)))))

(declare-fun b!506024 () Bool)

(declare-fun res!307151 () Bool)

(assert (=> b!506024 (=> (not res!307151) (not e!296185))))

(assert (=> b!506024 (= res!307151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506025 () Bool)

(declare-fun res!307145 () Bool)

(assert (=> b!506025 (=> res!307145 e!296189)))

(assert (=> b!506025 (= res!307145 e!296190)))

(declare-fun res!307140 () Bool)

(assert (=> b!506025 (=> (not res!307140) (not e!296190))))

(assert (=> b!506025 (= res!307140 (bvsgt #b00000000000000000000000000000000 (x!47592 lt!230914)))))

(declare-fun b!506026 () Bool)

(assert (=> b!506026 (= e!296187 false)))

(declare-fun b!506027 () Bool)

(assert (=> b!506027 (= e!296182 e!296189)))

(declare-fun res!307139 () Bool)

(assert (=> b!506027 (=> res!307139 e!296189)))

(assert (=> b!506027 (= res!307139 (or (bvsgt (x!47592 lt!230914) #b01111111111111111111111111111110) (bvslt lt!230906 #b00000000000000000000000000000000) (bvsge lt!230906 (size!15982 a!3235)) (bvslt (index!18558 lt!230914) #b00000000000000000000000000000000) (bvsge (index!18558 lt!230914) (size!15982 a!3235)) (not (= lt!230914 (Intermediate!4092 false (index!18558 lt!230914) (x!47592 lt!230914))))))))

(assert (=> b!506027 (= (index!18558 lt!230914) i!1204)))

(declare-fun lt!230907 () Unit!15458)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32482 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15458)

(assert (=> b!506027 (= lt!230907 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230906 #b00000000000000000000000000000000 (index!18558 lt!230914) (x!47592 lt!230914) mask!3524))))

(assert (=> b!506027 (and (or (= (select (arr!15618 a!3235) (index!18558 lt!230914)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15618 a!3235) (index!18558 lt!230914)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15618 a!3235) (index!18558 lt!230914)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15618 a!3235) (index!18558 lt!230914)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230910 () Unit!15458)

(assert (=> b!506027 (= lt!230910 e!296188)))

(declare-fun c!59717 () Bool)

(assert (=> b!506027 (= c!59717 (= (select (arr!15618 a!3235) (index!18558 lt!230914)) (select (arr!15618 a!3235) j!176)))))

(assert (=> b!506027 (and (bvslt (x!47592 lt!230914) #b01111111111111111111111111111110) (or (= (select (arr!15618 a!3235) (index!18558 lt!230914)) (select (arr!15618 a!3235) j!176)) (= (select (arr!15618 a!3235) (index!18558 lt!230914)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15618 a!3235) (index!18558 lt!230914)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!506028 () Bool)

(declare-fun res!307137 () Bool)

(assert (=> b!506028 (=> (not res!307137) (not e!296183))))

(declare-fun arrayContainsKey!0 (array!32482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506028 (= res!307137 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506029 () Bool)

(declare-fun Unit!15461 () Unit!15458)

(assert (=> b!506029 (= e!296188 Unit!15461)))

(declare-fun b!506030 () Bool)

(declare-fun res!307147 () Bool)

(assert (=> b!506030 (=> res!307147 e!296189)))

(assert (=> b!506030 (= res!307147 (not (= lt!230912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230906 lt!230909 lt!230915 mask!3524))))))

(assert (= (and start!45766 res!307142) b!506014))

(assert (= (and b!506014 res!307146) b!506013))

(assert (= (and b!506013 res!307150) b!506015))

(assert (= (and b!506015 res!307136) b!506028))

(assert (= (and b!506028 res!307137) b!506016))

(assert (= (and b!506016 res!307138) b!506024))

(assert (= (and b!506024 res!307151) b!506020))

(assert (= (and b!506020 res!307143) b!506018))

(assert (= (and b!506018 res!307148) b!506023))

(assert (= (and b!506018 (not res!307144)) b!506027))

(assert (= (and b!506027 c!59717) b!506017))

(assert (= (and b!506027 (not c!59717)) b!506029))

(assert (= (and b!506017 res!307149) b!506026))

(assert (= (and b!506027 (not res!307139)) b!506025))

(assert (= (and b!506025 res!307140) b!506021))

(assert (= (and b!506025 (not res!307145)) b!506030))

(assert (= (and b!506030 (not res!307147)) b!506019))

(assert (= (and b!506019 (not res!307141)) b!506022))

(declare-fun m!486697 () Bool)

(assert (=> b!506019 m!486697))

(declare-fun m!486699 () Bool)

(assert (=> b!506019 m!486699))

(declare-fun m!486701 () Bool)

(assert (=> b!506023 m!486701))

(assert (=> b!506023 m!486701))

(declare-fun m!486703 () Bool)

(assert (=> b!506023 m!486703))

(declare-fun m!486705 () Bool)

(assert (=> b!506016 m!486705))

(declare-fun m!486707 () Bool)

(assert (=> b!506024 m!486707))

(declare-fun m!486709 () Bool)

(assert (=> b!506028 m!486709))

(declare-fun m!486711 () Bool)

(assert (=> b!506015 m!486711))

(declare-fun m!486713 () Bool)

(assert (=> b!506027 m!486713))

(declare-fun m!486715 () Bool)

(assert (=> b!506027 m!486715))

(assert (=> b!506027 m!486701))

(declare-fun m!486717 () Bool)

(assert (=> b!506017 m!486717))

(declare-fun m!486719 () Bool)

(assert (=> b!506017 m!486719))

(declare-fun m!486721 () Bool)

(assert (=> b!506022 m!486721))

(declare-fun m!486723 () Bool)

(assert (=> b!506018 m!486723))

(assert (=> b!506018 m!486701))

(declare-fun m!486725 () Bool)

(assert (=> b!506018 m!486725))

(declare-fun m!486727 () Bool)

(assert (=> b!506018 m!486727))

(assert (=> b!506018 m!486701))

(declare-fun m!486729 () Bool)

(assert (=> b!506018 m!486729))

(assert (=> b!506018 m!486701))

(declare-fun m!486731 () Bool)

(assert (=> b!506018 m!486731))

(declare-fun m!486733 () Bool)

(assert (=> b!506018 m!486733))

(declare-fun m!486735 () Bool)

(assert (=> b!506018 m!486735))

(declare-fun m!486737 () Bool)

(assert (=> b!506018 m!486737))

(declare-fun m!486739 () Bool)

(assert (=> b!506020 m!486739))

(assert (=> b!506021 m!486701))

(assert (=> b!506021 m!486701))

(declare-fun m!486741 () Bool)

(assert (=> b!506021 m!486741))

(assert (=> b!506013 m!486701))

(assert (=> b!506013 m!486701))

(declare-fun m!486743 () Bool)

(assert (=> b!506013 m!486743))

(assert (=> b!506030 m!486719))

(declare-fun m!486745 () Bool)

(assert (=> start!45766 m!486745))

(declare-fun m!486747 () Bool)

(assert (=> start!45766 m!486747))

(push 1)

