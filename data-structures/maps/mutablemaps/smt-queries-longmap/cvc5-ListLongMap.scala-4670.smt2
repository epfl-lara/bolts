; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64954 () Bool)

(assert start!64954)

(declare-fun b!732967 () Bool)

(declare-fun e!410161 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!732967 (= e!410161 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!732968 () Bool)

(declare-fun res!492642 () Bool)

(declare-fun e!410160 () Bool)

(assert (=> b!732968 (=> (not res!492642) (not e!410160))))

(declare-datatypes ((array!41218 0))(
  ( (array!41219 (arr!19722 (Array (_ BitVec 32) (_ BitVec 64))) (size!20143 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41218)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41218 (_ BitVec 32)) Bool)

(assert (=> b!732968 (= res!492642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!732969 () Bool)

(declare-fun res!492636 () Bool)

(declare-fun e!410157 () Bool)

(assert (=> b!732969 (=> (not res!492636) (not e!410157))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732969 (= res!492636 (validKeyInArray!0 (select (arr!19722 a!3186) j!159)))))

(declare-fun b!732970 () Bool)

(declare-fun res!492640 () Bool)

(declare-fun e!410158 () Bool)

(assert (=> b!732970 (=> (not res!492640) (not e!410158))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!732970 (= res!492640 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19722 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732971 () Bool)

(declare-fun e!410159 () Bool)

(assert (=> b!732971 (= e!410159 e!410161)))

(declare-fun res!492645 () Bool)

(assert (=> b!732971 (=> res!492645 e!410161)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!732971 (= res!492645 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324875 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732971 (= lt!324875 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732972 () Bool)

(assert (=> b!732972 (= e!410160 e!410158)))

(declare-fun res!492637 () Bool)

(assert (=> b!732972 (=> (not res!492637) (not e!410158))))

(declare-datatypes ((SeekEntryResult!7329 0))(
  ( (MissingZero!7329 (index!31683 (_ BitVec 32))) (Found!7329 (index!31684 (_ BitVec 32))) (Intermediate!7329 (undefined!8141 Bool) (index!31685 (_ BitVec 32)) (x!62704 (_ BitVec 32))) (Undefined!7329) (MissingVacant!7329 (index!31686 (_ BitVec 32))) )
))
(declare-fun lt!324868 () SeekEntryResult!7329)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41218 (_ BitVec 32)) SeekEntryResult!7329)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732972 (= res!492637 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19722 a!3186) j!159) mask!3328) (select (arr!19722 a!3186) j!159) a!3186 mask!3328) lt!324868))))

(assert (=> b!732972 (= lt!324868 (Intermediate!7329 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732974 () Bool)

(declare-fun e!410163 () Bool)

(declare-fun e!410155 () Bool)

(assert (=> b!732974 (= e!410163 e!410155)))

(declare-fun res!492630 () Bool)

(assert (=> b!732974 (=> (not res!492630) (not e!410155))))

(declare-fun lt!324874 () SeekEntryResult!7329)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41218 (_ BitVec 32)) SeekEntryResult!7329)

(assert (=> b!732974 (= res!492630 (= (seekEntryOrOpen!0 (select (arr!19722 a!3186) j!159) a!3186 mask!3328) lt!324874))))

(assert (=> b!732974 (= lt!324874 (Found!7329 j!159))))

(declare-fun b!732975 () Bool)

(declare-fun res!492641 () Bool)

(assert (=> b!732975 (=> (not res!492641) (not e!410158))))

(declare-fun e!410156 () Bool)

(assert (=> b!732975 (= res!492641 e!410156)))

(declare-fun c!80547 () Bool)

(assert (=> b!732975 (= c!80547 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!732976 () Bool)

(declare-fun res!492644 () Bool)

(assert (=> b!732976 (=> (not res!492644) (not e!410157))))

(assert (=> b!732976 (= res!492644 (and (= (size!20143 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20143 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20143 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732977 () Bool)

(declare-fun res!492643 () Bool)

(assert (=> b!732977 (=> (not res!492643) (not e!410157))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732977 (= res!492643 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732978 () Bool)

(declare-fun res!492639 () Bool)

(assert (=> b!732978 (=> (not res!492639) (not e!410157))))

(assert (=> b!732978 (= res!492639 (validKeyInArray!0 k!2102))))

(declare-fun b!732979 () Bool)

(declare-fun e!410162 () Bool)

(assert (=> b!732979 (= e!410158 e!410162)))

(declare-fun res!492632 () Bool)

(assert (=> b!732979 (=> (not res!492632) (not e!410162))))

(declare-fun lt!324870 () SeekEntryResult!7329)

(declare-fun lt!324867 () SeekEntryResult!7329)

(assert (=> b!732979 (= res!492632 (= lt!324870 lt!324867))))

(declare-fun lt!324869 () array!41218)

(declare-fun lt!324872 () (_ BitVec 64))

(assert (=> b!732979 (= lt!324867 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324872 lt!324869 mask!3328))))

(assert (=> b!732979 (= lt!324870 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324872 mask!3328) lt!324872 lt!324869 mask!3328))))

(assert (=> b!732979 (= lt!324872 (select (store (arr!19722 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!732979 (= lt!324869 (array!41219 (store (arr!19722 a!3186) i!1173 k!2102) (size!20143 a!3186)))))

(declare-fun b!732980 () Bool)

(declare-fun res!492635 () Bool)

(assert (=> b!732980 (=> (not res!492635) (not e!410160))))

(declare-datatypes ((List!13777 0))(
  ( (Nil!13774) (Cons!13773 (h!14839 (_ BitVec 64)) (t!20100 List!13777)) )
))
(declare-fun arrayNoDuplicates!0 (array!41218 (_ BitVec 32) List!13777) Bool)

(assert (=> b!732980 (= res!492635 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13774))))

(declare-fun b!732981 () Bool)

(declare-fun res!492634 () Bool)

(assert (=> b!732981 (=> (not res!492634) (not e!410160))))

(assert (=> b!732981 (= res!492634 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20143 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20143 a!3186))))))

(declare-fun b!732982 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41218 (_ BitVec 32)) SeekEntryResult!7329)

(assert (=> b!732982 (= e!410155 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19722 a!3186) j!159) a!3186 mask!3328) lt!324874))))

(declare-fun b!732983 () Bool)

(assert (=> b!732983 (= e!410162 (not e!410159))))

(declare-fun res!492629 () Bool)

(assert (=> b!732983 (=> res!492629 e!410159)))

(assert (=> b!732983 (= res!492629 (or (not (is-Intermediate!7329 lt!324867)) (bvsge x!1131 (x!62704 lt!324867))))))

(assert (=> b!732983 e!410163))

(declare-fun res!492628 () Bool)

(assert (=> b!732983 (=> (not res!492628) (not e!410163))))

(assert (=> b!732983 (= res!492628 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24976 0))(
  ( (Unit!24977) )
))
(declare-fun lt!324871 () Unit!24976)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41218 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24976)

(assert (=> b!732983 (= lt!324871 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!732984 () Bool)

(declare-fun res!492631 () Bool)

(assert (=> b!732984 (=> res!492631 e!410161)))

(assert (=> b!732984 (= res!492631 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19722 a!3186) j!159) a!3186 mask!3328) (Found!7329 j!159)))))

(declare-fun b!732985 () Bool)

(assert (=> b!732985 (= e!410156 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19722 a!3186) j!159) a!3186 mask!3328) (Found!7329 j!159)))))

(declare-fun b!732986 () Bool)

(assert (=> b!732986 (= e!410157 e!410160)))

(declare-fun res!492638 () Bool)

(assert (=> b!732986 (=> (not res!492638) (not e!410160))))

(declare-fun lt!324873 () SeekEntryResult!7329)

(assert (=> b!732986 (= res!492638 (or (= lt!324873 (MissingZero!7329 i!1173)) (= lt!324873 (MissingVacant!7329 i!1173))))))

(assert (=> b!732986 (= lt!324873 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!492633 () Bool)

(assert (=> start!64954 (=> (not res!492633) (not e!410157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64954 (= res!492633 (validMask!0 mask!3328))))

(assert (=> start!64954 e!410157))

(assert (=> start!64954 true))

(declare-fun array_inv!15496 (array!41218) Bool)

(assert (=> start!64954 (array_inv!15496 a!3186)))

(declare-fun b!732973 () Bool)

(assert (=> b!732973 (= e!410156 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19722 a!3186) j!159) a!3186 mask!3328) lt!324868))))

(assert (= (and start!64954 res!492633) b!732976))

(assert (= (and b!732976 res!492644) b!732969))

(assert (= (and b!732969 res!492636) b!732978))

(assert (= (and b!732978 res!492639) b!732977))

(assert (= (and b!732977 res!492643) b!732986))

(assert (= (and b!732986 res!492638) b!732968))

(assert (= (and b!732968 res!492642) b!732980))

(assert (= (and b!732980 res!492635) b!732981))

(assert (= (and b!732981 res!492634) b!732972))

(assert (= (and b!732972 res!492637) b!732970))

(assert (= (and b!732970 res!492640) b!732975))

(assert (= (and b!732975 c!80547) b!732973))

(assert (= (and b!732975 (not c!80547)) b!732985))

(assert (= (and b!732975 res!492641) b!732979))

(assert (= (and b!732979 res!492632) b!732983))

(assert (= (and b!732983 res!492628) b!732974))

(assert (= (and b!732974 res!492630) b!732982))

(assert (= (and b!732983 (not res!492629)) b!732971))

(assert (= (and b!732971 (not res!492645)) b!732984))

(assert (= (and b!732984 (not res!492631)) b!732967))

(declare-fun m!686017 () Bool)

(assert (=> b!732977 m!686017))

(declare-fun m!686019 () Bool)

(assert (=> b!732985 m!686019))

(assert (=> b!732985 m!686019))

(declare-fun m!686021 () Bool)

(assert (=> b!732985 m!686021))

(declare-fun m!686023 () Bool)

(assert (=> b!732986 m!686023))

(declare-fun m!686025 () Bool)

(assert (=> b!732983 m!686025))

(declare-fun m!686027 () Bool)

(assert (=> b!732983 m!686027))

(assert (=> b!732972 m!686019))

(assert (=> b!732972 m!686019))

(declare-fun m!686029 () Bool)

(assert (=> b!732972 m!686029))

(assert (=> b!732972 m!686029))

(assert (=> b!732972 m!686019))

(declare-fun m!686031 () Bool)

(assert (=> b!732972 m!686031))

(assert (=> b!732982 m!686019))

(assert (=> b!732982 m!686019))

(declare-fun m!686033 () Bool)

(assert (=> b!732982 m!686033))

(assert (=> b!732973 m!686019))

(assert (=> b!732973 m!686019))

(declare-fun m!686035 () Bool)

(assert (=> b!732973 m!686035))

(declare-fun m!686037 () Bool)

(assert (=> b!732978 m!686037))

(assert (=> b!732984 m!686019))

(assert (=> b!732984 m!686019))

(assert (=> b!732984 m!686021))

(declare-fun m!686039 () Bool)

(assert (=> start!64954 m!686039))

(declare-fun m!686041 () Bool)

(assert (=> start!64954 m!686041))

(declare-fun m!686043 () Bool)

(assert (=> b!732980 m!686043))

(declare-fun m!686045 () Bool)

(assert (=> b!732971 m!686045))

(assert (=> b!732969 m!686019))

(assert (=> b!732969 m!686019))

(declare-fun m!686047 () Bool)

(assert (=> b!732969 m!686047))

(assert (=> b!732974 m!686019))

(assert (=> b!732974 m!686019))

(declare-fun m!686049 () Bool)

(assert (=> b!732974 m!686049))

(declare-fun m!686051 () Bool)

(assert (=> b!732970 m!686051))

(declare-fun m!686053 () Bool)

(assert (=> b!732979 m!686053))

(declare-fun m!686055 () Bool)

(assert (=> b!732979 m!686055))

(declare-fun m!686057 () Bool)

(assert (=> b!732979 m!686057))

(assert (=> b!732979 m!686053))

(declare-fun m!686059 () Bool)

(assert (=> b!732979 m!686059))

(declare-fun m!686061 () Bool)

(assert (=> b!732979 m!686061))

(declare-fun m!686063 () Bool)

(assert (=> b!732968 m!686063))

(push 1)

