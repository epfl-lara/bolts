; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65242 () Bool)

(assert start!65242)

(declare-fun b!738714 () Bool)

(declare-fun e!413129 () Bool)

(declare-fun e!413139 () Bool)

(assert (=> b!738714 (= e!413129 e!413139)))

(declare-fun res!496744 () Bool)

(assert (=> b!738714 (=> res!496744 e!413139)))

(declare-datatypes ((array!41368 0))(
  ( (array!41369 (arr!19794 (Array (_ BitVec 32) (_ BitVec 64))) (size!20215 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41368)

(declare-fun lt!327968 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!738714 (= res!496744 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327968 #b00000000000000000000000000000000) (bvsge lt!327968 (size!20215 a!3186))))))

(declare-datatypes ((Unit!25222 0))(
  ( (Unit!25223) )
))
(declare-fun lt!327963 () Unit!25222)

(declare-fun e!413133 () Unit!25222)

(assert (=> b!738714 (= lt!327963 e!413133)))

(declare-fun c!81369 () Bool)

(declare-fun lt!327973 () Bool)

(assert (=> b!738714 (= c!81369 lt!327973)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738714 (= lt!327973 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738714 (= lt!327968 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!496757 () Bool)

(declare-fun e!413138 () Bool)

(assert (=> start!65242 (=> (not res!496757) (not e!413138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65242 (= res!496757 (validMask!0 mask!3328))))

(assert (=> start!65242 e!413138))

(assert (=> start!65242 true))

(declare-fun array_inv!15568 (array!41368) Bool)

(assert (=> start!65242 (array_inv!15568 a!3186)))

(declare-fun b!738715 () Bool)

(declare-fun res!496750 () Bool)

(declare-fun e!413136 () Bool)

(assert (=> b!738715 (=> (not res!496750) (not e!413136))))

(declare-datatypes ((List!13849 0))(
  ( (Nil!13846) (Cons!13845 (h!14917 (_ BitVec 64)) (t!20172 List!13849)) )
))
(declare-fun arrayNoDuplicates!0 (array!41368 (_ BitVec 32) List!13849) Bool)

(assert (=> b!738715 (= res!496750 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13846))))

(declare-fun b!738716 () Bool)

(declare-fun res!496743 () Bool)

(assert (=> b!738716 (=> res!496743 e!413139)))

(declare-fun e!413134 () Bool)

(assert (=> b!738716 (= res!496743 e!413134)))

(declare-fun c!81368 () Bool)

(assert (=> b!738716 (= c!81368 lt!327973)))

(declare-fun b!738717 () Bool)

(declare-fun Unit!25224 () Unit!25222)

(assert (=> b!738717 (= e!413133 Unit!25224)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7401 0))(
  ( (MissingZero!7401 (index!31971 (_ BitVec 32))) (Found!7401 (index!31972 (_ BitVec 32))) (Intermediate!7401 (undefined!8213 Bool) (index!31973 (_ BitVec 32)) (x!62992 (_ BitVec 32))) (Undefined!7401) (MissingVacant!7401 (index!31974 (_ BitVec 32))) )
))
(declare-fun lt!327962 () SeekEntryResult!7401)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41368 (_ BitVec 32)) SeekEntryResult!7401)

(assert (=> b!738717 (= lt!327962 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19794 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!327967 () SeekEntryResult!7401)

(assert (=> b!738717 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327968 resIntermediateIndex!5 (select (arr!19794 a!3186) j!159) a!3186 mask!3328) lt!327967)))

(declare-fun b!738718 () Bool)

(declare-fun e!413130 () Bool)

(declare-fun e!413137 () Bool)

(assert (=> b!738718 (= e!413130 e!413137)))

(declare-fun res!496751 () Bool)

(assert (=> b!738718 (=> (not res!496751) (not e!413137))))

(declare-fun lt!327964 () SeekEntryResult!7401)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41368 (_ BitVec 32)) SeekEntryResult!7401)

(assert (=> b!738718 (= res!496751 (= (seekEntryOrOpen!0 (select (arr!19794 a!3186) j!159) a!3186 mask!3328) lt!327964))))

(assert (=> b!738718 (= lt!327964 (Found!7401 j!159))))

(declare-fun b!738719 () Bool)

(declare-fun e!413128 () Bool)

(assert (=> b!738719 (= e!413136 e!413128)))

(declare-fun res!496747 () Bool)

(assert (=> b!738719 (=> (not res!496747) (not e!413128))))

(declare-fun lt!327974 () SeekEntryResult!7401)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41368 (_ BitVec 32)) SeekEntryResult!7401)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738719 (= res!496747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19794 a!3186) j!159) mask!3328) (select (arr!19794 a!3186) j!159) a!3186 mask!3328) lt!327974))))

(assert (=> b!738719 (= lt!327974 (Intermediate!7401 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738720 () Bool)

(declare-fun e!413135 () Bool)

(assert (=> b!738720 (= e!413135 (not e!413129))))

(declare-fun res!496754 () Bool)

(assert (=> b!738720 (=> res!496754 e!413129)))

(declare-fun lt!327965 () SeekEntryResult!7401)

(assert (=> b!738720 (= res!496754 (or (not (is-Intermediate!7401 lt!327965)) (bvsge x!1131 (x!62992 lt!327965))))))

(assert (=> b!738720 (= lt!327967 (Found!7401 j!159))))

(assert (=> b!738720 e!413130))

(declare-fun res!496746 () Bool)

(assert (=> b!738720 (=> (not res!496746) (not e!413130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41368 (_ BitVec 32)) Bool)

(assert (=> b!738720 (= res!496746 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327971 () Unit!25222)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41368 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25222)

(assert (=> b!738720 (= lt!327971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738721 () Bool)

(declare-fun res!496753 () Bool)

(assert (=> b!738721 (=> (not res!496753) (not e!413136))))

(assert (=> b!738721 (= res!496753 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20215 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20215 a!3186))))))

(declare-fun b!738722 () Bool)

(declare-fun res!496745 () Bool)

(assert (=> b!738722 (=> (not res!496745) (not e!413138))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738722 (= res!496745 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun e!413132 () Bool)

(declare-fun b!738723 () Bool)

(assert (=> b!738723 (= e!413132 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19794 a!3186) j!159) a!3186 mask!3328) lt!327974))))

(declare-fun b!738724 () Bool)

(assert (=> b!738724 (= e!413134 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327968 (select (arr!19794 a!3186) j!159) a!3186 mask!3328) lt!327974)))))

(declare-fun b!738725 () Bool)

(declare-fun res!496741 () Bool)

(assert (=> b!738725 (=> (not res!496741) (not e!413138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738725 (= res!496741 (validKeyInArray!0 k!2102))))

(declare-fun b!738726 () Bool)

(assert (=> b!738726 (= e!413138 e!413136)))

(declare-fun res!496752 () Bool)

(assert (=> b!738726 (=> (not res!496752) (not e!413136))))

(declare-fun lt!327966 () SeekEntryResult!7401)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!738726 (= res!496752 (or (= lt!327966 (MissingZero!7401 i!1173)) (= lt!327966 (MissingVacant!7401 i!1173))))))

(assert (=> b!738726 (= lt!327966 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!738727 () Bool)

(declare-fun res!496756 () Bool)

(assert (=> b!738727 (=> (not res!496756) (not e!413128))))

(assert (=> b!738727 (= res!496756 e!413132)))

(declare-fun c!81367 () Bool)

(assert (=> b!738727 (= c!81367 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738728 () Bool)

(declare-fun res!496742 () Bool)

(assert (=> b!738728 (=> (not res!496742) (not e!413136))))

(assert (=> b!738728 (= res!496742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738729 () Bool)

(assert (=> b!738729 (= e!413128 e!413135)))

(declare-fun res!496758 () Bool)

(assert (=> b!738729 (=> (not res!496758) (not e!413135))))

(declare-fun lt!327970 () SeekEntryResult!7401)

(assert (=> b!738729 (= res!496758 (= lt!327970 lt!327965))))

(declare-fun lt!327969 () (_ BitVec 64))

(declare-fun lt!327961 () array!41368)

(assert (=> b!738729 (= lt!327965 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327969 lt!327961 mask!3328))))

(assert (=> b!738729 (= lt!327970 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327969 mask!3328) lt!327969 lt!327961 mask!3328))))

(assert (=> b!738729 (= lt!327969 (select (store (arr!19794 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!738729 (= lt!327961 (array!41369 (store (arr!19794 a!3186) i!1173 k!2102) (size!20215 a!3186)))))

(declare-fun b!738730 () Bool)

(assert (=> b!738730 (= e!413139 true)))

(declare-fun lt!327972 () SeekEntryResult!7401)

(assert (=> b!738730 (= lt!327972 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327968 lt!327969 lt!327961 mask!3328))))

(declare-fun b!738731 () Bool)

(assert (=> b!738731 (= e!413132 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19794 a!3186) j!159) a!3186 mask!3328) (Found!7401 j!159)))))

(declare-fun b!738732 () Bool)

(declare-fun res!496749 () Bool)

(assert (=> b!738732 (=> (not res!496749) (not e!413138))))

(assert (=> b!738732 (= res!496749 (validKeyInArray!0 (select (arr!19794 a!3186) j!159)))))

(declare-fun b!738733 () Bool)

(assert (=> b!738733 (= e!413134 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327968 resIntermediateIndex!5 (select (arr!19794 a!3186) j!159) a!3186 mask!3328) lt!327967)))))

(declare-fun b!738734 () Bool)

(declare-fun res!496748 () Bool)

(assert (=> b!738734 (=> (not res!496748) (not e!413138))))

(assert (=> b!738734 (= res!496748 (and (= (size!20215 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20215 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20215 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!738735 () Bool)

(declare-fun Unit!25225 () Unit!25222)

(assert (=> b!738735 (= e!413133 Unit!25225)))

(assert (=> b!738735 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327968 (select (arr!19794 a!3186) j!159) a!3186 mask!3328) lt!327974)))

(declare-fun b!738736 () Bool)

(assert (=> b!738736 (= e!413137 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19794 a!3186) j!159) a!3186 mask!3328) lt!327964))))

(declare-fun b!738737 () Bool)

(declare-fun res!496755 () Bool)

(assert (=> b!738737 (=> (not res!496755) (not e!413128))))

(assert (=> b!738737 (= res!496755 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19794 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!65242 res!496757) b!738734))

(assert (= (and b!738734 res!496748) b!738732))

(assert (= (and b!738732 res!496749) b!738725))

(assert (= (and b!738725 res!496741) b!738722))

(assert (= (and b!738722 res!496745) b!738726))

(assert (= (and b!738726 res!496752) b!738728))

(assert (= (and b!738728 res!496742) b!738715))

(assert (= (and b!738715 res!496750) b!738721))

(assert (= (and b!738721 res!496753) b!738719))

(assert (= (and b!738719 res!496747) b!738737))

(assert (= (and b!738737 res!496755) b!738727))

(assert (= (and b!738727 c!81367) b!738723))

(assert (= (and b!738727 (not c!81367)) b!738731))

(assert (= (and b!738727 res!496756) b!738729))

(assert (= (and b!738729 res!496758) b!738720))

(assert (= (and b!738720 res!496746) b!738718))

(assert (= (and b!738718 res!496751) b!738736))

(assert (= (and b!738720 (not res!496754)) b!738714))

(assert (= (and b!738714 c!81369) b!738735))

(assert (= (and b!738714 (not c!81369)) b!738717))

(assert (= (and b!738714 (not res!496744)) b!738716))

(assert (= (and b!738716 c!81368) b!738724))

(assert (= (and b!738716 (not c!81368)) b!738733))

(assert (= (and b!738716 (not res!496743)) b!738730))

(declare-fun m!690343 () Bool)

(assert (=> b!738728 m!690343))

(declare-fun m!690345 () Bool)

(assert (=> b!738719 m!690345))

(assert (=> b!738719 m!690345))

(declare-fun m!690347 () Bool)

(assert (=> b!738719 m!690347))

(assert (=> b!738719 m!690347))

(assert (=> b!738719 m!690345))

(declare-fun m!690349 () Bool)

(assert (=> b!738719 m!690349))

(declare-fun m!690351 () Bool)

(assert (=> b!738720 m!690351))

(declare-fun m!690353 () Bool)

(assert (=> b!738720 m!690353))

(declare-fun m!690355 () Bool)

(assert (=> b!738725 m!690355))

(declare-fun m!690357 () Bool)

(assert (=> b!738722 m!690357))

(assert (=> b!738724 m!690345))

(assert (=> b!738724 m!690345))

(declare-fun m!690359 () Bool)

(assert (=> b!738724 m!690359))

(declare-fun m!690361 () Bool)

(assert (=> b!738729 m!690361))

(declare-fun m!690363 () Bool)

(assert (=> b!738729 m!690363))

(declare-fun m!690365 () Bool)

(assert (=> b!738729 m!690365))

(declare-fun m!690367 () Bool)

(assert (=> b!738729 m!690367))

(assert (=> b!738729 m!690365))

(declare-fun m!690369 () Bool)

(assert (=> b!738729 m!690369))

(declare-fun m!690371 () Bool)

(assert (=> b!738737 m!690371))

(assert (=> b!738732 m!690345))

(assert (=> b!738732 m!690345))

(declare-fun m!690373 () Bool)

(assert (=> b!738732 m!690373))

(declare-fun m!690375 () Bool)

(assert (=> b!738715 m!690375))

(assert (=> b!738735 m!690345))

(assert (=> b!738735 m!690345))

(assert (=> b!738735 m!690359))

(declare-fun m!690377 () Bool)

(assert (=> start!65242 m!690377))

(declare-fun m!690379 () Bool)

(assert (=> start!65242 m!690379))

(assert (=> b!738723 m!690345))

(assert (=> b!738723 m!690345))

(declare-fun m!690381 () Bool)

(assert (=> b!738723 m!690381))

(assert (=> b!738733 m!690345))

(assert (=> b!738733 m!690345))

(declare-fun m!690383 () Bool)

(assert (=> b!738733 m!690383))

(assert (=> b!738717 m!690345))

(assert (=> b!738717 m!690345))

(declare-fun m!690385 () Bool)

(assert (=> b!738717 m!690385))

(assert (=> b!738717 m!690345))

(assert (=> b!738717 m!690383))

(assert (=> b!738731 m!690345))

(assert (=> b!738731 m!690345))

(assert (=> b!738731 m!690385))

(declare-fun m!690387 () Bool)

(assert (=> b!738730 m!690387))

(assert (=> b!738718 m!690345))

(assert (=> b!738718 m!690345))

(declare-fun m!690389 () Bool)

(assert (=> b!738718 m!690389))

(declare-fun m!690391 () Bool)

(assert (=> b!738714 m!690391))

(declare-fun m!690393 () Bool)

(assert (=> b!738726 m!690393))

(assert (=> b!738736 m!690345))

(assert (=> b!738736 m!690345))

(declare-fun m!690395 () Bool)

(assert (=> b!738736 m!690395))

(push 1)

