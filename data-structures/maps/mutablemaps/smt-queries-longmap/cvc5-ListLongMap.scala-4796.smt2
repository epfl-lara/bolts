; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65854 () Bool)

(assert start!65854)

(declare-fun b!758123 () Bool)

(declare-fun e!422701 () Bool)

(declare-fun e!422698 () Bool)

(assert (=> b!758123 (= e!422701 (not e!422698))))

(declare-fun res!512953 () Bool)

(assert (=> b!758123 (=> res!512953 e!422698)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7707 0))(
  ( (MissingZero!7707 (index!33195 (_ BitVec 32))) (Found!7707 (index!33196 (_ BitVec 32))) (Intermediate!7707 (undefined!8519 Bool) (index!33197 (_ BitVec 32)) (x!64114 (_ BitVec 32))) (Undefined!7707) (MissingVacant!7707 (index!33198 (_ BitVec 32))) )
))
(declare-fun lt!337709 () SeekEntryResult!7707)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!758123 (= res!512953 (or (not (is-Intermediate!7707 lt!337709)) (bvslt x!1131 (x!64114 lt!337709)) (not (= x!1131 (x!64114 lt!337709))) (not (= index!1321 (index!33197 lt!337709)))))))

(declare-fun e!422697 () Bool)

(assert (=> b!758123 e!422697))

(declare-fun res!512965 () Bool)

(assert (=> b!758123 (=> (not res!512965) (not e!422697))))

(declare-fun lt!337713 () SeekEntryResult!7707)

(declare-fun lt!337710 () SeekEntryResult!7707)

(assert (=> b!758123 (= res!512965 (= lt!337713 lt!337710))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!758123 (= lt!337710 (Found!7707 j!159))))

(declare-datatypes ((array!41980 0))(
  ( (array!41981 (arr!20100 (Array (_ BitVec 32) (_ BitVec 64))) (size!20521 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41980)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41980 (_ BitVec 32)) SeekEntryResult!7707)

(assert (=> b!758123 (= lt!337713 (seekEntryOrOpen!0 (select (arr!20100 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41980 (_ BitVec 32)) Bool)

(assert (=> b!758123 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26230 0))(
  ( (Unit!26231) )
))
(declare-fun lt!337714 () Unit!26230)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41980 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26230)

(assert (=> b!758123 (= lt!337714 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!758124 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41980 (_ BitVec 32)) SeekEntryResult!7707)

(assert (=> b!758124 (= e!422697 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20100 a!3186) j!159) a!3186 mask!3328) lt!337710))))

(declare-fun e!422703 () Bool)

(declare-fun b!758125 () Bool)

(assert (=> b!758125 (= e!422703 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20100 a!3186) j!159) a!3186 mask!3328) (Found!7707 j!159)))))

(declare-fun lt!337703 () SeekEntryResult!7707)

(declare-fun b!758126 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41980 (_ BitVec 32)) SeekEntryResult!7707)

(assert (=> b!758126 (= e!422703 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20100 a!3186) j!159) a!3186 mask!3328) lt!337703))))

(declare-fun b!758127 () Bool)

(declare-fun e!422704 () Bool)

(assert (=> b!758127 (= e!422704 true)))

(declare-fun lt!337711 () SeekEntryResult!7707)

(declare-fun lt!337705 () SeekEntryResult!7707)

(assert (=> b!758127 (= lt!337711 lt!337705)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lt!337708 () Unit!26230)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!41980 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26230)

(assert (=> b!758127 (= lt!337708 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!758128 () Bool)

(declare-fun res!512961 () Bool)

(declare-fun e!422705 () Bool)

(assert (=> b!758128 (=> (not res!512961) (not e!422705))))

(assert (=> b!758128 (= res!512961 e!422703)))

(declare-fun c!82968 () Bool)

(assert (=> b!758128 (= c!82968 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758129 () Bool)

(declare-fun e!422702 () Bool)

(declare-fun e!422699 () Bool)

(assert (=> b!758129 (= e!422702 e!422699)))

(declare-fun res!512962 () Bool)

(assert (=> b!758129 (=> (not res!512962) (not e!422699))))

(declare-fun lt!337712 () SeekEntryResult!7707)

(assert (=> b!758129 (= res!512962 (or (= lt!337712 (MissingZero!7707 i!1173)) (= lt!337712 (MissingVacant!7707 i!1173))))))

(assert (=> b!758129 (= lt!337712 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!758130 () Bool)

(declare-fun res!512950 () Bool)

(assert (=> b!758130 (=> (not res!512950) (not e!422699))))

(assert (=> b!758130 (= res!512950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!758131 () Bool)

(declare-fun res!512952 () Bool)

(assert (=> b!758131 (=> (not res!512952) (not e!422702))))

(assert (=> b!758131 (= res!512952 (and (= (size!20521 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20521 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20521 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758133 () Bool)

(declare-fun e!422695 () Bool)

(declare-fun e!422696 () Bool)

(assert (=> b!758133 (= e!422695 e!422696)))

(declare-fun res!512951 () Bool)

(assert (=> b!758133 (=> res!512951 e!422696)))

(declare-fun lt!337701 () (_ BitVec 64))

(declare-fun lt!337715 () (_ BitVec 64))

(assert (=> b!758133 (= res!512951 (= lt!337701 lt!337715))))

(assert (=> b!758133 (= lt!337701 (select (store (arr!20100 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!758134 () Bool)

(assert (=> b!758134 (= e!422696 e!422704)))

(declare-fun res!512964 () Bool)

(assert (=> b!758134 (=> res!512964 e!422704)))

(assert (=> b!758134 (= res!512964 (or (not (= (select (arr!20100 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!337702 () SeekEntryResult!7707)

(assert (=> b!758134 (and (= lt!337702 lt!337711) (= lt!337713 lt!337705))))

(declare-fun lt!337706 () array!41980)

(assert (=> b!758134 (= lt!337711 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337715 lt!337706 mask!3328))))

(assert (=> b!758134 (= lt!337702 (seekEntryOrOpen!0 lt!337715 lt!337706 mask!3328))))

(assert (=> b!758134 (= lt!337701 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!337707 () Unit!26230)

(declare-fun e!422700 () Unit!26230)

(assert (=> b!758134 (= lt!337707 e!422700)))

(declare-fun c!82967 () Bool)

(assert (=> b!758134 (= c!82967 (= lt!337701 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758135 () Bool)

(assert (=> b!758135 (= e!422699 e!422705)))

(declare-fun res!512957 () Bool)

(assert (=> b!758135 (=> (not res!512957) (not e!422705))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758135 (= res!512957 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20100 a!3186) j!159) mask!3328) (select (arr!20100 a!3186) j!159) a!3186 mask!3328) lt!337703))))

(assert (=> b!758135 (= lt!337703 (Intermediate!7707 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758136 () Bool)

(assert (=> b!758136 (= e!422705 e!422701)))

(declare-fun res!512958 () Bool)

(assert (=> b!758136 (=> (not res!512958) (not e!422701))))

(declare-fun lt!337704 () SeekEntryResult!7707)

(assert (=> b!758136 (= res!512958 (= lt!337704 lt!337709))))

(assert (=> b!758136 (= lt!337709 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337715 lt!337706 mask!3328))))

(assert (=> b!758136 (= lt!337704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337715 mask!3328) lt!337715 lt!337706 mask!3328))))

(assert (=> b!758136 (= lt!337715 (select (store (arr!20100 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!758136 (= lt!337706 (array!41981 (store (arr!20100 a!3186) i!1173 k!2102) (size!20521 a!3186)))))

(declare-fun b!758137 () Bool)

(declare-fun Unit!26232 () Unit!26230)

(assert (=> b!758137 (= e!422700 Unit!26232)))

(assert (=> b!758137 false))

(declare-fun b!758138 () Bool)

(declare-fun res!512954 () Bool)

(assert (=> b!758138 (=> (not res!512954) (not e!422699))))

(declare-datatypes ((List!14155 0))(
  ( (Nil!14152) (Cons!14151 (h!15223 (_ BitVec 64)) (t!20478 List!14155)) )
))
(declare-fun arrayNoDuplicates!0 (array!41980 (_ BitVec 32) List!14155) Bool)

(assert (=> b!758138 (= res!512954 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14152))))

(declare-fun b!758139 () Bool)

(declare-fun res!512955 () Bool)

(assert (=> b!758139 (=> (not res!512955) (not e!422702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758139 (= res!512955 (validKeyInArray!0 k!2102))))

(declare-fun b!758140 () Bool)

(declare-fun Unit!26233 () Unit!26230)

(assert (=> b!758140 (= e!422700 Unit!26233)))

(declare-fun b!758141 () Bool)

(declare-fun res!512956 () Bool)

(assert (=> b!758141 (=> (not res!512956) (not e!422699))))

(assert (=> b!758141 (= res!512956 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20521 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20521 a!3186))))))

(declare-fun b!758142 () Bool)

(declare-fun res!512959 () Bool)

(assert (=> b!758142 (=> (not res!512959) (not e!422702))))

(assert (=> b!758142 (= res!512959 (validKeyInArray!0 (select (arr!20100 a!3186) j!159)))))

(declare-fun res!512967 () Bool)

(assert (=> start!65854 (=> (not res!512967) (not e!422702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65854 (= res!512967 (validMask!0 mask!3328))))

(assert (=> start!65854 e!422702))

(assert (=> start!65854 true))

(declare-fun array_inv!15874 (array!41980) Bool)

(assert (=> start!65854 (array_inv!15874 a!3186)))

(declare-fun b!758132 () Bool)

(declare-fun res!512963 () Bool)

(assert (=> b!758132 (=> (not res!512963) (not e!422705))))

(assert (=> b!758132 (= res!512963 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20100 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758143 () Bool)

(assert (=> b!758143 (= e!422698 e!422695)))

(declare-fun res!512966 () Bool)

(assert (=> b!758143 (=> res!512966 e!422695)))

(assert (=> b!758143 (= res!512966 (not (= lt!337705 lt!337710)))))

(assert (=> b!758143 (= lt!337705 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20100 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!758144 () Bool)

(declare-fun res!512960 () Bool)

(assert (=> b!758144 (=> (not res!512960) (not e!422702))))

(declare-fun arrayContainsKey!0 (array!41980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758144 (= res!512960 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65854 res!512967) b!758131))

(assert (= (and b!758131 res!512952) b!758142))

(assert (= (and b!758142 res!512959) b!758139))

(assert (= (and b!758139 res!512955) b!758144))

(assert (= (and b!758144 res!512960) b!758129))

(assert (= (and b!758129 res!512962) b!758130))

(assert (= (and b!758130 res!512950) b!758138))

(assert (= (and b!758138 res!512954) b!758141))

(assert (= (and b!758141 res!512956) b!758135))

(assert (= (and b!758135 res!512957) b!758132))

(assert (= (and b!758132 res!512963) b!758128))

(assert (= (and b!758128 c!82968) b!758126))

(assert (= (and b!758128 (not c!82968)) b!758125))

(assert (= (and b!758128 res!512961) b!758136))

(assert (= (and b!758136 res!512958) b!758123))

(assert (= (and b!758123 res!512965) b!758124))

(assert (= (and b!758123 (not res!512953)) b!758143))

(assert (= (and b!758143 (not res!512966)) b!758133))

(assert (= (and b!758133 (not res!512951)) b!758134))

(assert (= (and b!758134 c!82967) b!758137))

(assert (= (and b!758134 (not c!82967)) b!758140))

(assert (= (and b!758134 (not res!512964)) b!758127))

(declare-fun m!705733 () Bool)

(assert (=> start!65854 m!705733))

(declare-fun m!705735 () Bool)

(assert (=> start!65854 m!705735))

(declare-fun m!705737 () Bool)

(assert (=> b!758126 m!705737))

(assert (=> b!758126 m!705737))

(declare-fun m!705739 () Bool)

(assert (=> b!758126 m!705739))

(assert (=> b!758135 m!705737))

(assert (=> b!758135 m!705737))

(declare-fun m!705741 () Bool)

(assert (=> b!758135 m!705741))

(assert (=> b!758135 m!705741))

(assert (=> b!758135 m!705737))

(declare-fun m!705743 () Bool)

(assert (=> b!758135 m!705743))

(declare-fun m!705745 () Bool)

(assert (=> b!758139 m!705745))

(declare-fun m!705747 () Bool)

(assert (=> b!758138 m!705747))

(declare-fun m!705749 () Bool)

(assert (=> b!758133 m!705749))

(declare-fun m!705751 () Bool)

(assert (=> b!758133 m!705751))

(assert (=> b!758143 m!705737))

(assert (=> b!758143 m!705737))

(declare-fun m!705753 () Bool)

(assert (=> b!758143 m!705753))

(assert (=> b!758124 m!705737))

(assert (=> b!758124 m!705737))

(declare-fun m!705755 () Bool)

(assert (=> b!758124 m!705755))

(declare-fun m!705757 () Bool)

(assert (=> b!758130 m!705757))

(assert (=> b!758142 m!705737))

(assert (=> b!758142 m!705737))

(declare-fun m!705759 () Bool)

(assert (=> b!758142 m!705759))

(assert (=> b!758123 m!705737))

(assert (=> b!758123 m!705737))

(declare-fun m!705761 () Bool)

(assert (=> b!758123 m!705761))

(declare-fun m!705763 () Bool)

(assert (=> b!758123 m!705763))

(declare-fun m!705765 () Bool)

(assert (=> b!758123 m!705765))

(assert (=> b!758125 m!705737))

(assert (=> b!758125 m!705737))

(assert (=> b!758125 m!705753))

(declare-fun m!705767 () Bool)

(assert (=> b!758127 m!705767))

(declare-fun m!705769 () Bool)

(assert (=> b!758136 m!705769))

(assert (=> b!758136 m!705749))

(declare-fun m!705771 () Bool)

(assert (=> b!758136 m!705771))

(declare-fun m!705773 () Bool)

(assert (=> b!758136 m!705773))

(assert (=> b!758136 m!705773))

(declare-fun m!705775 () Bool)

(assert (=> b!758136 m!705775))

(declare-fun m!705777 () Bool)

(assert (=> b!758129 m!705777))

(declare-fun m!705779 () Bool)

(assert (=> b!758134 m!705779))

(declare-fun m!705781 () Bool)

(assert (=> b!758134 m!705781))

(declare-fun m!705783 () Bool)

(assert (=> b!758134 m!705783))

(declare-fun m!705785 () Bool)

(assert (=> b!758132 m!705785))

(declare-fun m!705787 () Bool)

(assert (=> b!758144 m!705787))

(push 1)

