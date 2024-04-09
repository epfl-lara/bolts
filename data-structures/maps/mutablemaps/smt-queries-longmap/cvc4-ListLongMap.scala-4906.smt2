; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67700 () Bool)

(assert start!67700)

(declare-fun b!784139 () Bool)

(declare-fun res!530740 () Bool)

(declare-fun e!436002 () Bool)

(assert (=> b!784139 (=> (not res!530740) (not e!436002))))

(declare-datatypes ((array!42695 0))(
  ( (array!42696 (arr!20432 (Array (_ BitVec 32) (_ BitVec 64))) (size!20853 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42695)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!784139 (= res!530740 (and (= (size!20853 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20853 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20853 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784140 () Bool)

(declare-fun e!435999 () Bool)

(assert (=> b!784140 (= e!436002 e!435999)))

(declare-fun res!530743 () Bool)

(assert (=> b!784140 (=> (not res!530743) (not e!435999))))

(declare-datatypes ((SeekEntryResult!8039 0))(
  ( (MissingZero!8039 (index!34523 (_ BitVec 32))) (Found!8039 (index!34524 (_ BitVec 32))) (Intermediate!8039 (undefined!8851 Bool) (index!34525 (_ BitVec 32)) (x!65500 (_ BitVec 32))) (Undefined!8039) (MissingVacant!8039 (index!34526 (_ BitVec 32))) )
))
(declare-fun lt!349568 () SeekEntryResult!8039)

(assert (=> b!784140 (= res!530743 (or (= lt!349568 (MissingZero!8039 i!1173)) (= lt!349568 (MissingVacant!8039 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42695 (_ BitVec 32)) SeekEntryResult!8039)

(assert (=> b!784140 (= lt!349568 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!784141 () Bool)

(declare-fun e!436001 () Bool)

(declare-fun e!435995 () Bool)

(assert (=> b!784141 (= e!436001 e!435995)))

(declare-fun res!530733 () Bool)

(assert (=> b!784141 (=> res!530733 e!435995)))

(declare-fun lt!349573 () SeekEntryResult!8039)

(declare-fun lt!349567 () SeekEntryResult!8039)

(assert (=> b!784141 (= res!530733 (not (= lt!349573 lt!349567)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42695 (_ BitVec 32)) SeekEntryResult!8039)

(assert (=> b!784141 (= lt!349573 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20432 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784142 () Bool)

(declare-fun e!436004 () Bool)

(assert (=> b!784142 (= e!436004 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20432 a!3186) j!159) a!3186 mask!3328) (Found!8039 j!159)))))

(declare-fun b!784143 () Bool)

(declare-fun e!435997 () Bool)

(assert (=> b!784143 (= e!435999 e!435997)))

(declare-fun res!530728 () Bool)

(assert (=> b!784143 (=> (not res!530728) (not e!435997))))

(declare-fun lt!349566 () SeekEntryResult!8039)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42695 (_ BitVec 32)) SeekEntryResult!8039)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784143 (= res!530728 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20432 a!3186) j!159) mask!3328) (select (arr!20432 a!3186) j!159) a!3186 mask!3328) lt!349566))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!784143 (= lt!349566 (Intermediate!8039 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784145 () Bool)

(declare-fun res!530731 () Bool)

(declare-fun e!435998 () Bool)

(assert (=> b!784145 (=> (not res!530731) (not e!435998))))

(declare-fun lt!349563 () array!42695)

(declare-fun lt!349565 () (_ BitVec 64))

(assert (=> b!784145 (= res!530731 (= (seekEntryOrOpen!0 lt!349565 lt!349563 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349565 lt!349563 mask!3328)))))

(declare-fun b!784146 () Bool)

(declare-fun res!530729 () Bool)

(assert (=> b!784146 (=> (not res!530729) (not e!436002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784146 (= res!530729 (validKeyInArray!0 (select (arr!20432 a!3186) j!159)))))

(declare-fun b!784147 () Bool)

(declare-datatypes ((Unit!27066 0))(
  ( (Unit!27067) )
))
(declare-fun e!436005 () Unit!27066)

(declare-fun Unit!27068 () Unit!27066)

(assert (=> b!784147 (= e!436005 Unit!27068)))

(assert (=> b!784147 false))

(declare-fun e!436006 () Bool)

(declare-fun b!784148 () Bool)

(assert (=> b!784148 (= e!436006 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20432 a!3186) j!159) a!3186 mask!3328) lt!349567))))

(declare-fun b!784149 () Bool)

(declare-fun res!530745 () Bool)

(assert (=> b!784149 (=> (not res!530745) (not e!435997))))

(assert (=> b!784149 (= res!530745 e!436004)))

(declare-fun c!87113 () Bool)

(assert (=> b!784149 (= c!87113 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784150 () Bool)

(declare-fun e!435996 () Bool)

(assert (=> b!784150 (= e!435995 e!435996)))

(declare-fun res!530736 () Bool)

(assert (=> b!784150 (=> res!530736 e!435996)))

(declare-fun lt!349562 () (_ BitVec 64))

(assert (=> b!784150 (= res!530736 (= lt!349562 lt!349565))))

(assert (=> b!784150 (= lt!349562 (select (store (arr!20432 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!784151 () Bool)

(declare-fun e!436000 () Bool)

(assert (=> b!784151 (= e!435997 e!436000)))

(declare-fun res!530730 () Bool)

(assert (=> b!784151 (=> (not res!530730) (not e!436000))))

(declare-fun lt!349569 () SeekEntryResult!8039)

(declare-fun lt!349572 () SeekEntryResult!8039)

(assert (=> b!784151 (= res!530730 (= lt!349569 lt!349572))))

(assert (=> b!784151 (= lt!349572 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349565 lt!349563 mask!3328))))

(assert (=> b!784151 (= lt!349569 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349565 mask!3328) lt!349565 lt!349563 mask!3328))))

(assert (=> b!784151 (= lt!349565 (select (store (arr!20432 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!784151 (= lt!349563 (array!42696 (store (arr!20432 a!3186) i!1173 k!2102) (size!20853 a!3186)))))

(declare-fun b!784152 () Bool)

(declare-fun res!530734 () Bool)

(assert (=> b!784152 (=> (not res!530734) (not e!436002))))

(assert (=> b!784152 (= res!530734 (validKeyInArray!0 k!2102))))

(declare-fun b!784153 () Bool)

(declare-fun res!530742 () Bool)

(assert (=> b!784153 (=> (not res!530742) (not e!435999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42695 (_ BitVec 32)) Bool)

(assert (=> b!784153 (= res!530742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!784154 () Bool)

(assert (=> b!784154 (= e!435996 true)))

(assert (=> b!784154 e!435998))

(declare-fun res!530732 () Bool)

(assert (=> b!784154 (=> (not res!530732) (not e!435998))))

(assert (=> b!784154 (= res!530732 (= lt!349562 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349570 () Unit!27066)

(assert (=> b!784154 (= lt!349570 e!436005)))

(declare-fun c!87114 () Bool)

(assert (=> b!784154 (= c!87114 (= lt!349562 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784155 () Bool)

(declare-fun lt!349564 () SeekEntryResult!8039)

(assert (=> b!784155 (= e!435998 (= lt!349564 lt!349573))))

(declare-fun b!784156 () Bool)

(declare-fun res!530739 () Bool)

(assert (=> b!784156 (=> (not res!530739) (not e!435999))))

(assert (=> b!784156 (= res!530739 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20853 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20853 a!3186))))))

(declare-fun b!784157 () Bool)

(declare-fun Unit!27069 () Unit!27066)

(assert (=> b!784157 (= e!436005 Unit!27069)))

(declare-fun b!784144 () Bool)

(declare-fun res!530746 () Bool)

(assert (=> b!784144 (=> (not res!530746) (not e!435999))))

(declare-datatypes ((List!14487 0))(
  ( (Nil!14484) (Cons!14483 (h!15606 (_ BitVec 64)) (t!20810 List!14487)) )
))
(declare-fun arrayNoDuplicates!0 (array!42695 (_ BitVec 32) List!14487) Bool)

(assert (=> b!784144 (= res!530746 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14484))))

(declare-fun res!530744 () Bool)

(assert (=> start!67700 (=> (not res!530744) (not e!436002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67700 (= res!530744 (validMask!0 mask!3328))))

(assert (=> start!67700 e!436002))

(assert (=> start!67700 true))

(declare-fun array_inv!16206 (array!42695) Bool)

(assert (=> start!67700 (array_inv!16206 a!3186)))

(declare-fun b!784158 () Bool)

(assert (=> b!784158 (= e!436004 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20432 a!3186) j!159) a!3186 mask!3328) lt!349566))))

(declare-fun b!784159 () Bool)

(declare-fun res!530735 () Bool)

(assert (=> b!784159 (=> (not res!530735) (not e!436002))))

(declare-fun arrayContainsKey!0 (array!42695 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784159 (= res!530735 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784160 () Bool)

(declare-fun res!530737 () Bool)

(assert (=> b!784160 (=> (not res!530737) (not e!435997))))

(assert (=> b!784160 (= res!530737 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20432 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!784161 () Bool)

(assert (=> b!784161 (= e!436000 (not e!436001))))

(declare-fun res!530741 () Bool)

(assert (=> b!784161 (=> res!530741 e!436001)))

(assert (=> b!784161 (= res!530741 (or (not (is-Intermediate!8039 lt!349572)) (bvslt x!1131 (x!65500 lt!349572)) (not (= x!1131 (x!65500 lt!349572))) (not (= index!1321 (index!34525 lt!349572)))))))

(assert (=> b!784161 e!436006))

(declare-fun res!530738 () Bool)

(assert (=> b!784161 (=> (not res!530738) (not e!436006))))

(assert (=> b!784161 (= res!530738 (= lt!349564 lt!349567))))

(assert (=> b!784161 (= lt!349567 (Found!8039 j!159))))

(assert (=> b!784161 (= lt!349564 (seekEntryOrOpen!0 (select (arr!20432 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!784161 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349571 () Unit!27066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27066)

(assert (=> b!784161 (= lt!349571 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67700 res!530744) b!784139))

(assert (= (and b!784139 res!530740) b!784146))

(assert (= (and b!784146 res!530729) b!784152))

(assert (= (and b!784152 res!530734) b!784159))

(assert (= (and b!784159 res!530735) b!784140))

(assert (= (and b!784140 res!530743) b!784153))

(assert (= (and b!784153 res!530742) b!784144))

(assert (= (and b!784144 res!530746) b!784156))

(assert (= (and b!784156 res!530739) b!784143))

(assert (= (and b!784143 res!530728) b!784160))

(assert (= (and b!784160 res!530737) b!784149))

(assert (= (and b!784149 c!87113) b!784158))

(assert (= (and b!784149 (not c!87113)) b!784142))

(assert (= (and b!784149 res!530745) b!784151))

(assert (= (and b!784151 res!530730) b!784161))

(assert (= (and b!784161 res!530738) b!784148))

(assert (= (and b!784161 (not res!530741)) b!784141))

(assert (= (and b!784141 (not res!530733)) b!784150))

(assert (= (and b!784150 (not res!530736)) b!784154))

(assert (= (and b!784154 c!87114) b!784147))

(assert (= (and b!784154 (not c!87114)) b!784157))

(assert (= (and b!784154 res!530732) b!784145))

(assert (= (and b!784145 res!530731) b!784155))

(declare-fun m!726573 () Bool)

(assert (=> b!784159 m!726573))

(declare-fun m!726575 () Bool)

(assert (=> b!784158 m!726575))

(assert (=> b!784158 m!726575))

(declare-fun m!726577 () Bool)

(assert (=> b!784158 m!726577))

(declare-fun m!726579 () Bool)

(assert (=> b!784144 m!726579))

(declare-fun m!726581 () Bool)

(assert (=> b!784153 m!726581))

(declare-fun m!726583 () Bool)

(assert (=> start!67700 m!726583))

(declare-fun m!726585 () Bool)

(assert (=> start!67700 m!726585))

(assert (=> b!784141 m!726575))

(assert (=> b!784141 m!726575))

(declare-fun m!726587 () Bool)

(assert (=> b!784141 m!726587))

(assert (=> b!784143 m!726575))

(assert (=> b!784143 m!726575))

(declare-fun m!726589 () Bool)

(assert (=> b!784143 m!726589))

(assert (=> b!784143 m!726589))

(assert (=> b!784143 m!726575))

(declare-fun m!726591 () Bool)

(assert (=> b!784143 m!726591))

(assert (=> b!784161 m!726575))

(assert (=> b!784161 m!726575))

(declare-fun m!726593 () Bool)

(assert (=> b!784161 m!726593))

(declare-fun m!726595 () Bool)

(assert (=> b!784161 m!726595))

(declare-fun m!726597 () Bool)

(assert (=> b!784161 m!726597))

(declare-fun m!726599 () Bool)

(assert (=> b!784150 m!726599))

(declare-fun m!726601 () Bool)

(assert (=> b!784150 m!726601))

(assert (=> b!784146 m!726575))

(assert (=> b!784146 m!726575))

(declare-fun m!726603 () Bool)

(assert (=> b!784146 m!726603))

(declare-fun m!726605 () Bool)

(assert (=> b!784140 m!726605))

(declare-fun m!726607 () Bool)

(assert (=> b!784152 m!726607))

(declare-fun m!726609 () Bool)

(assert (=> b!784160 m!726609))

(declare-fun m!726611 () Bool)

(assert (=> b!784151 m!726611))

(assert (=> b!784151 m!726599))

(declare-fun m!726613 () Bool)

(assert (=> b!784151 m!726613))

(declare-fun m!726615 () Bool)

(assert (=> b!784151 m!726615))

(assert (=> b!784151 m!726615))

(declare-fun m!726617 () Bool)

(assert (=> b!784151 m!726617))

(declare-fun m!726619 () Bool)

(assert (=> b!784145 m!726619))

(declare-fun m!726621 () Bool)

(assert (=> b!784145 m!726621))

(assert (=> b!784148 m!726575))

(assert (=> b!784148 m!726575))

(declare-fun m!726623 () Bool)

(assert (=> b!784148 m!726623))

(assert (=> b!784142 m!726575))

(assert (=> b!784142 m!726575))

(assert (=> b!784142 m!726587))

(push 1)

