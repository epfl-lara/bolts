; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64660 () Bool)

(assert start!64660)

(declare-fun b!727962 () Bool)

(declare-fun e!407542 () Bool)

(declare-fun e!407545 () Bool)

(assert (=> b!727962 (= e!407542 e!407545)))

(declare-fun res!488657 () Bool)

(assert (=> b!727962 (=> (not res!488657) (not e!407545))))

(declare-datatypes ((SeekEntryResult!7254 0))(
  ( (MissingZero!7254 (index!31383 (_ BitVec 32))) (Found!7254 (index!31384 (_ BitVec 32))) (Intermediate!7254 (undefined!8066 Bool) (index!31385 (_ BitVec 32)) (x!62405 (_ BitVec 32))) (Undefined!7254) (MissingVacant!7254 (index!31386 (_ BitVec 32))) )
))
(declare-fun lt!322454 () SeekEntryResult!7254)

(declare-fun lt!322452 () SeekEntryResult!7254)

(assert (=> b!727962 (= res!488657 (= lt!322454 lt!322452))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!41062 0))(
  ( (array!41063 (arr!19647 (Array (_ BitVec 32) (_ BitVec 64))) (size!20068 (_ BitVec 32))) )
))
(declare-fun lt!322456 () array!41062)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!322450 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41062 (_ BitVec 32)) SeekEntryResult!7254)

(assert (=> b!727962 (= lt!322452 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322450 lt!322456 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727962 (= lt!322454 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322450 mask!3328) lt!322450 lt!322456 mask!3328))))

(declare-fun a!3186 () array!41062)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!727962 (= lt!322450 (select (store (arr!19647 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!727962 (= lt!322456 (array!41063 (store (arr!19647 a!3186) i!1173 k!2102) (size!20068 a!3186)))))

(declare-fun res!488662 () Bool)

(declare-fun e!407544 () Bool)

(assert (=> start!64660 (=> (not res!488662) (not e!407544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64660 (= res!488662 (validMask!0 mask!3328))))

(assert (=> start!64660 e!407544))

(assert (=> start!64660 true))

(declare-fun array_inv!15421 (array!41062) Bool)

(assert (=> start!64660 (array_inv!15421 a!3186)))

(declare-fun b!727963 () Bool)

(declare-fun res!488667 () Bool)

(declare-fun e!407549 () Bool)

(assert (=> b!727963 (=> (not res!488667) (not e!407549))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!727963 (= res!488667 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20068 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20068 a!3186))))))

(declare-fun b!727964 () Bool)

(declare-fun res!488670 () Bool)

(assert (=> b!727964 (=> (not res!488670) (not e!407542))))

(declare-fun e!407547 () Bool)

(assert (=> b!727964 (= res!488670 e!407547)))

(declare-fun c!80028 () Bool)

(assert (=> b!727964 (= c!80028 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!727965 () Bool)

(declare-fun e!407548 () Bool)

(declare-fun e!407546 () Bool)

(assert (=> b!727965 (= e!407548 e!407546)))

(declare-fun res!488663 () Bool)

(assert (=> b!727965 (=> (not res!488663) (not e!407546))))

(declare-fun lt!322457 () SeekEntryResult!7254)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41062 (_ BitVec 32)) SeekEntryResult!7254)

(assert (=> b!727965 (= res!488663 (= (seekEntryOrOpen!0 (select (arr!19647 a!3186) j!159) a!3186 mask!3328) lt!322457))))

(assert (=> b!727965 (= lt!322457 (Found!7254 j!159))))

(declare-fun b!727966 () Bool)

(assert (=> b!727966 (= e!407544 e!407549)))

(declare-fun res!488668 () Bool)

(assert (=> b!727966 (=> (not res!488668) (not e!407549))))

(declare-fun lt!322449 () SeekEntryResult!7254)

(assert (=> b!727966 (= res!488668 (or (= lt!322449 (MissingZero!7254 i!1173)) (= lt!322449 (MissingVacant!7254 i!1173))))))

(assert (=> b!727966 (= lt!322449 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!727967 () Bool)

(assert (=> b!727967 (= e!407549 e!407542)))

(declare-fun res!488659 () Bool)

(assert (=> b!727967 (=> (not res!488659) (not e!407542))))

(declare-fun lt!322455 () SeekEntryResult!7254)

(assert (=> b!727967 (= res!488659 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19647 a!3186) j!159) mask!3328) (select (arr!19647 a!3186) j!159) a!3186 mask!3328) lt!322455))))

(assert (=> b!727967 (= lt!322455 (Intermediate!7254 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!727968 () Bool)

(declare-fun e!407543 () Bool)

(assert (=> b!727968 (= e!407545 (not e!407543))))

(declare-fun res!488655 () Bool)

(assert (=> b!727968 (=> res!488655 e!407543)))

(assert (=> b!727968 (= res!488655 (or (not (is-Intermediate!7254 lt!322452)) (bvsge x!1131 (x!62405 lt!322452))))))

(assert (=> b!727968 e!407548))

(declare-fun res!488656 () Bool)

(assert (=> b!727968 (=> (not res!488656) (not e!407548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41062 (_ BitVec 32)) Bool)

(assert (=> b!727968 (= res!488656 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24826 0))(
  ( (Unit!24827) )
))
(declare-fun lt!322451 () Unit!24826)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41062 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24826)

(assert (=> b!727968 (= lt!322451 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!727969 () Bool)

(declare-fun res!488660 () Bool)

(assert (=> b!727969 (=> (not res!488660) (not e!407549))))

(declare-datatypes ((List!13702 0))(
  ( (Nil!13699) (Cons!13698 (h!14758 (_ BitVec 64)) (t!20025 List!13702)) )
))
(declare-fun arrayNoDuplicates!0 (array!41062 (_ BitVec 32) List!13702) Bool)

(assert (=> b!727969 (= res!488660 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13699))))

(declare-fun b!727970 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41062 (_ BitVec 32)) SeekEntryResult!7254)

(assert (=> b!727970 (= e!407547 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19647 a!3186) j!159) a!3186 mask!3328) (Found!7254 j!159)))))

(declare-fun b!727971 () Bool)

(declare-fun res!488661 () Bool)

(assert (=> b!727971 (=> (not res!488661) (not e!407542))))

(assert (=> b!727971 (= res!488661 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19647 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727972 () Bool)

(assert (=> b!727972 (= e!407547 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19647 a!3186) j!159) a!3186 mask!3328) lt!322455))))

(declare-fun b!727973 () Bool)

(declare-fun res!488658 () Bool)

(assert (=> b!727973 (=> (not res!488658) (not e!407549))))

(assert (=> b!727973 (= res!488658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!727974 () Bool)

(declare-fun res!488669 () Bool)

(assert (=> b!727974 (=> (not res!488669) (not e!407544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!727974 (= res!488669 (validKeyInArray!0 k!2102))))

(declare-fun b!727975 () Bool)

(assert (=> b!727975 (= e!407543 true)))

(declare-fun lt!322453 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727975 (= lt!322453 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!727976 () Bool)

(declare-fun res!488665 () Bool)

(assert (=> b!727976 (=> (not res!488665) (not e!407544))))

(declare-fun arrayContainsKey!0 (array!41062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!727976 (= res!488665 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!727977 () Bool)

(declare-fun res!488666 () Bool)

(assert (=> b!727977 (=> (not res!488666) (not e!407544))))

(assert (=> b!727977 (= res!488666 (and (= (size!20068 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20068 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20068 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!727978 () Bool)

(declare-fun res!488664 () Bool)

(assert (=> b!727978 (=> (not res!488664) (not e!407544))))

(assert (=> b!727978 (= res!488664 (validKeyInArray!0 (select (arr!19647 a!3186) j!159)))))

(declare-fun b!727979 () Bool)

(assert (=> b!727979 (= e!407546 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19647 a!3186) j!159) a!3186 mask!3328) lt!322457))))

(assert (= (and start!64660 res!488662) b!727977))

(assert (= (and b!727977 res!488666) b!727978))

(assert (= (and b!727978 res!488664) b!727974))

(assert (= (and b!727974 res!488669) b!727976))

(assert (= (and b!727976 res!488665) b!727966))

(assert (= (and b!727966 res!488668) b!727973))

(assert (= (and b!727973 res!488658) b!727969))

(assert (= (and b!727969 res!488660) b!727963))

(assert (= (and b!727963 res!488667) b!727967))

(assert (= (and b!727967 res!488659) b!727971))

(assert (= (and b!727971 res!488661) b!727964))

(assert (= (and b!727964 c!80028) b!727972))

(assert (= (and b!727964 (not c!80028)) b!727970))

(assert (= (and b!727964 res!488670) b!727962))

(assert (= (and b!727962 res!488657) b!727968))

(assert (= (and b!727968 res!488656) b!727965))

(assert (= (and b!727965 res!488663) b!727979))

(assert (= (and b!727968 (not res!488655)) b!727975))

(declare-fun m!681853 () Bool)

(assert (=> b!727969 m!681853))

(declare-fun m!681855 () Bool)

(assert (=> start!64660 m!681855))

(declare-fun m!681857 () Bool)

(assert (=> start!64660 m!681857))

(declare-fun m!681859 () Bool)

(assert (=> b!727972 m!681859))

(assert (=> b!727972 m!681859))

(declare-fun m!681861 () Bool)

(assert (=> b!727972 m!681861))

(declare-fun m!681863 () Bool)

(assert (=> b!727962 m!681863))

(declare-fun m!681865 () Bool)

(assert (=> b!727962 m!681865))

(assert (=> b!727962 m!681863))

(declare-fun m!681867 () Bool)

(assert (=> b!727962 m!681867))

(declare-fun m!681869 () Bool)

(assert (=> b!727962 m!681869))

(declare-fun m!681871 () Bool)

(assert (=> b!727962 m!681871))

(assert (=> b!727978 m!681859))

(assert (=> b!727978 m!681859))

(declare-fun m!681873 () Bool)

(assert (=> b!727978 m!681873))

(assert (=> b!727970 m!681859))

(assert (=> b!727970 m!681859))

(declare-fun m!681875 () Bool)

(assert (=> b!727970 m!681875))

(declare-fun m!681877 () Bool)

(assert (=> b!727975 m!681877))

(assert (=> b!727965 m!681859))

(assert (=> b!727965 m!681859))

(declare-fun m!681879 () Bool)

(assert (=> b!727965 m!681879))

(declare-fun m!681881 () Bool)

(assert (=> b!727971 m!681881))

(declare-fun m!681883 () Bool)

(assert (=> b!727968 m!681883))

(declare-fun m!681885 () Bool)

(assert (=> b!727968 m!681885))

(assert (=> b!727967 m!681859))

(assert (=> b!727967 m!681859))

(declare-fun m!681887 () Bool)

(assert (=> b!727967 m!681887))

(assert (=> b!727967 m!681887))

(assert (=> b!727967 m!681859))

(declare-fun m!681889 () Bool)

(assert (=> b!727967 m!681889))

(declare-fun m!681891 () Bool)

(assert (=> b!727973 m!681891))

(declare-fun m!681893 () Bool)

(assert (=> b!727976 m!681893))

(assert (=> b!727979 m!681859))

(assert (=> b!727979 m!681859))

(declare-fun m!681895 () Bool)

(assert (=> b!727979 m!681895))

(declare-fun m!681897 () Bool)

(assert (=> b!727966 m!681897))

(declare-fun m!681899 () Bool)

(assert (=> b!727974 m!681899))

(push 1)

