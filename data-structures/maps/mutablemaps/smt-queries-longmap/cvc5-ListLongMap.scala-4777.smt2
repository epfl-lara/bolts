; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65740 () Bool)

(assert start!65740)

(declare-fun b!754192 () Bool)

(declare-fun res!509711 () Bool)

(declare-fun e!420649 () Bool)

(assert (=> b!754192 (=> (not res!509711) (not e!420649))))

(declare-fun e!420648 () Bool)

(assert (=> b!754192 (= res!509711 e!420648)))

(declare-fun c!82625 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!754192 (= c!82625 (bvsle x!1131 resIntermediateX!5))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41866 0))(
  ( (array!41867 (arr!20043 (Array (_ BitVec 32) (_ BitVec 64))) (size!20464 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41866)

(declare-fun b!754193 () Bool)

(declare-fun e!420647 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7650 0))(
  ( (MissingZero!7650 (index!32967 (_ BitVec 32))) (Found!7650 (index!32968 (_ BitVec 32))) (Intermediate!7650 (undefined!8462 Bool) (index!32969 (_ BitVec 32)) (x!63905 (_ BitVec 32))) (Undefined!7650) (MissingVacant!7650 (index!32970 (_ BitVec 32))) )
))
(declare-fun lt!335644 () SeekEntryResult!7650)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41866 (_ BitVec 32)) SeekEntryResult!7650)

(assert (=> b!754193 (= e!420647 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20043 a!3186) j!159) a!3186 mask!3328) lt!335644))))

(declare-fun b!754195 () Bool)

(declare-fun e!420644 () Bool)

(declare-fun lt!335654 () SeekEntryResult!7650)

(declare-fun lt!335646 () SeekEntryResult!7650)

(assert (=> b!754195 (= e!420644 (= lt!335654 lt!335646))))

(declare-fun b!754196 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!335653 () SeekEntryResult!7650)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41866 (_ BitVec 32)) SeekEntryResult!7650)

(assert (=> b!754196 (= e!420648 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20043 a!3186) j!159) a!3186 mask!3328) lt!335653))))

(declare-fun b!754197 () Bool)

(assert (=> b!754197 (= e!420648 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20043 a!3186) j!159) a!3186 mask!3328) (Found!7650 j!159)))))

(declare-fun b!754198 () Bool)

(declare-fun res!509705 () Bool)

(assert (=> b!754198 (=> (not res!509705) (not e!420649))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!754198 (= res!509705 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20043 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!754199 () Bool)

(declare-fun res!509707 () Bool)

(declare-fun e!420652 () Bool)

(assert (=> b!754199 (=> (not res!509707) (not e!420652))))

(assert (=> b!754199 (= res!509707 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20464 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20464 a!3186))))))

(declare-fun b!754200 () Bool)

(declare-fun res!509718 () Bool)

(declare-fun e!420645 () Bool)

(assert (=> b!754200 (=> (not res!509718) (not e!420645))))

(assert (=> b!754200 (= res!509718 (and (= (size!20464 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20464 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20464 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754201 () Bool)

(declare-fun e!420643 () Bool)

(assert (=> b!754201 (= e!420643 true)))

(assert (=> b!754201 e!420644))

(declare-fun res!509719 () Bool)

(assert (=> b!754201 (=> (not res!509719) (not e!420644))))

(declare-fun lt!335648 () (_ BitVec 64))

(assert (=> b!754201 (= res!509719 (= lt!335648 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26002 0))(
  ( (Unit!26003) )
))
(declare-fun lt!335643 () Unit!26002)

(declare-fun e!420651 () Unit!26002)

(assert (=> b!754201 (= lt!335643 e!420651)))

(declare-fun c!82626 () Bool)

(assert (=> b!754201 (= c!82626 (= lt!335648 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!754202 () Bool)

(assert (=> b!754202 (= e!420645 e!420652)))

(declare-fun res!509703 () Bool)

(assert (=> b!754202 (=> (not res!509703) (not e!420652))))

(declare-fun lt!335649 () SeekEntryResult!7650)

(assert (=> b!754202 (= res!509703 (or (= lt!335649 (MissingZero!7650 i!1173)) (= lt!335649 (MissingVacant!7650 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41866 (_ BitVec 32)) SeekEntryResult!7650)

(assert (=> b!754202 (= lt!335649 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!754194 () Bool)

(declare-fun res!509717 () Bool)

(assert (=> b!754194 (=> (not res!509717) (not e!420652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41866 (_ BitVec 32)) Bool)

(assert (=> b!754194 (= res!509717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!509714 () Bool)

(assert (=> start!65740 (=> (not res!509714) (not e!420645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65740 (= res!509714 (validMask!0 mask!3328))))

(assert (=> start!65740 e!420645))

(assert (=> start!65740 true))

(declare-fun array_inv!15817 (array!41866) Bool)

(assert (=> start!65740 (array_inv!15817 a!3186)))

(declare-fun b!754203 () Bool)

(declare-fun Unit!26004 () Unit!26002)

(assert (=> b!754203 (= e!420651 Unit!26004)))

(assert (=> b!754203 false))

(declare-fun b!754204 () Bool)

(declare-fun res!509716 () Bool)

(assert (=> b!754204 (=> (not res!509716) (not e!420645))))

(declare-fun arrayContainsKey!0 (array!41866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754204 (= res!509716 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754205 () Bool)

(declare-fun res!509712 () Bool)

(assert (=> b!754205 (=> (not res!509712) (not e!420644))))

(declare-fun lt!335651 () array!41866)

(declare-fun lt!335652 () (_ BitVec 64))

(assert (=> b!754205 (= res!509712 (= (seekEntryOrOpen!0 lt!335652 lt!335651 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335652 lt!335651 mask!3328)))))

(declare-fun b!754206 () Bool)

(declare-fun e!420646 () Bool)

(assert (=> b!754206 (= e!420646 e!420643)))

(declare-fun res!509706 () Bool)

(assert (=> b!754206 (=> res!509706 e!420643)))

(assert (=> b!754206 (= res!509706 (= lt!335648 lt!335652))))

(assert (=> b!754206 (= lt!335648 (select (store (arr!20043 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!754207 () Bool)

(declare-fun e!420653 () Bool)

(declare-fun e!420650 () Bool)

(assert (=> b!754207 (= e!420653 (not e!420650))))

(declare-fun res!509708 () Bool)

(assert (=> b!754207 (=> res!509708 e!420650)))

(declare-fun lt!335647 () SeekEntryResult!7650)

(assert (=> b!754207 (= res!509708 (or (not (is-Intermediate!7650 lt!335647)) (bvslt x!1131 (x!63905 lt!335647)) (not (= x!1131 (x!63905 lt!335647))) (not (= index!1321 (index!32969 lt!335647)))))))

(assert (=> b!754207 e!420647))

(declare-fun res!509715 () Bool)

(assert (=> b!754207 (=> (not res!509715) (not e!420647))))

(assert (=> b!754207 (= res!509715 (= lt!335654 lt!335644))))

(assert (=> b!754207 (= lt!335644 (Found!7650 j!159))))

(assert (=> b!754207 (= lt!335654 (seekEntryOrOpen!0 (select (arr!20043 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!754207 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335645 () Unit!26002)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26002)

(assert (=> b!754207 (= lt!335645 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754208 () Bool)

(declare-fun res!509710 () Bool)

(assert (=> b!754208 (=> (not res!509710) (not e!420645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754208 (= res!509710 (validKeyInArray!0 k!2102))))

(declare-fun b!754209 () Bool)

(assert (=> b!754209 (= e!420652 e!420649)))

(declare-fun res!509709 () Bool)

(assert (=> b!754209 (=> (not res!509709) (not e!420649))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754209 (= res!509709 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20043 a!3186) j!159) mask!3328) (select (arr!20043 a!3186) j!159) a!3186 mask!3328) lt!335653))))

(assert (=> b!754209 (= lt!335653 (Intermediate!7650 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754210 () Bool)

(declare-fun res!509704 () Bool)

(assert (=> b!754210 (=> (not res!509704) (not e!420645))))

(assert (=> b!754210 (= res!509704 (validKeyInArray!0 (select (arr!20043 a!3186) j!159)))))

(declare-fun b!754211 () Bool)

(assert (=> b!754211 (= e!420650 e!420646)))

(declare-fun res!509721 () Bool)

(assert (=> b!754211 (=> res!509721 e!420646)))

(assert (=> b!754211 (= res!509721 (not (= lt!335646 lt!335644)))))

(assert (=> b!754211 (= lt!335646 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20043 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754212 () Bool)

(declare-fun Unit!26005 () Unit!26002)

(assert (=> b!754212 (= e!420651 Unit!26005)))

(declare-fun b!754213 () Bool)

(declare-fun res!509713 () Bool)

(assert (=> b!754213 (=> (not res!509713) (not e!420652))))

(declare-datatypes ((List!14098 0))(
  ( (Nil!14095) (Cons!14094 (h!15166 (_ BitVec 64)) (t!20421 List!14098)) )
))
(declare-fun arrayNoDuplicates!0 (array!41866 (_ BitVec 32) List!14098) Bool)

(assert (=> b!754213 (= res!509713 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14095))))

(declare-fun b!754214 () Bool)

(assert (=> b!754214 (= e!420649 e!420653)))

(declare-fun res!509720 () Bool)

(assert (=> b!754214 (=> (not res!509720) (not e!420653))))

(declare-fun lt!335650 () SeekEntryResult!7650)

(assert (=> b!754214 (= res!509720 (= lt!335650 lt!335647))))

(assert (=> b!754214 (= lt!335647 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335652 lt!335651 mask!3328))))

(assert (=> b!754214 (= lt!335650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335652 mask!3328) lt!335652 lt!335651 mask!3328))))

(assert (=> b!754214 (= lt!335652 (select (store (arr!20043 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!754214 (= lt!335651 (array!41867 (store (arr!20043 a!3186) i!1173 k!2102) (size!20464 a!3186)))))

(assert (= (and start!65740 res!509714) b!754200))

(assert (= (and b!754200 res!509718) b!754210))

(assert (= (and b!754210 res!509704) b!754208))

(assert (= (and b!754208 res!509710) b!754204))

(assert (= (and b!754204 res!509716) b!754202))

(assert (= (and b!754202 res!509703) b!754194))

(assert (= (and b!754194 res!509717) b!754213))

(assert (= (and b!754213 res!509713) b!754199))

(assert (= (and b!754199 res!509707) b!754209))

(assert (= (and b!754209 res!509709) b!754198))

(assert (= (and b!754198 res!509705) b!754192))

(assert (= (and b!754192 c!82625) b!754196))

(assert (= (and b!754192 (not c!82625)) b!754197))

(assert (= (and b!754192 res!509711) b!754214))

(assert (= (and b!754214 res!509720) b!754207))

(assert (= (and b!754207 res!509715) b!754193))

(assert (= (and b!754207 (not res!509708)) b!754211))

(assert (= (and b!754211 (not res!509721)) b!754206))

(assert (= (and b!754206 (not res!509706)) b!754201))

(assert (= (and b!754201 c!82626) b!754203))

(assert (= (and b!754201 (not c!82626)) b!754212))

(assert (= (and b!754201 res!509719) b!754205))

(assert (= (and b!754205 res!509712) b!754195))

(declare-fun m!702769 () Bool)

(assert (=> start!65740 m!702769))

(declare-fun m!702771 () Bool)

(assert (=> start!65740 m!702771))

(declare-fun m!702773 () Bool)

(assert (=> b!754205 m!702773))

(declare-fun m!702775 () Bool)

(assert (=> b!754205 m!702775))

(declare-fun m!702777 () Bool)

(assert (=> b!754196 m!702777))

(assert (=> b!754196 m!702777))

(declare-fun m!702779 () Bool)

(assert (=> b!754196 m!702779))

(declare-fun m!702781 () Bool)

(assert (=> b!754194 m!702781))

(declare-fun m!702783 () Bool)

(assert (=> b!754214 m!702783))

(declare-fun m!702785 () Bool)

(assert (=> b!754214 m!702785))

(declare-fun m!702787 () Bool)

(assert (=> b!754214 m!702787))

(declare-fun m!702789 () Bool)

(assert (=> b!754214 m!702789))

(assert (=> b!754214 m!702783))

(declare-fun m!702791 () Bool)

(assert (=> b!754214 m!702791))

(declare-fun m!702793 () Bool)

(assert (=> b!754213 m!702793))

(assert (=> b!754193 m!702777))

(assert (=> b!754193 m!702777))

(declare-fun m!702795 () Bool)

(assert (=> b!754193 m!702795))

(assert (=> b!754210 m!702777))

(assert (=> b!754210 m!702777))

(declare-fun m!702797 () Bool)

(assert (=> b!754210 m!702797))

(assert (=> b!754209 m!702777))

(assert (=> b!754209 m!702777))

(declare-fun m!702799 () Bool)

(assert (=> b!754209 m!702799))

(assert (=> b!754209 m!702799))

(assert (=> b!754209 m!702777))

(declare-fun m!702801 () Bool)

(assert (=> b!754209 m!702801))

(declare-fun m!702803 () Bool)

(assert (=> b!754198 m!702803))

(declare-fun m!702805 () Bool)

(assert (=> b!754202 m!702805))

(assert (=> b!754211 m!702777))

(assert (=> b!754211 m!702777))

(declare-fun m!702807 () Bool)

(assert (=> b!754211 m!702807))

(declare-fun m!702809 () Bool)

(assert (=> b!754204 m!702809))

(assert (=> b!754206 m!702787))

(declare-fun m!702811 () Bool)

(assert (=> b!754206 m!702811))

(assert (=> b!754197 m!702777))

(assert (=> b!754197 m!702777))

(assert (=> b!754197 m!702807))

(declare-fun m!702813 () Bool)

(assert (=> b!754208 m!702813))

(assert (=> b!754207 m!702777))

(assert (=> b!754207 m!702777))

(declare-fun m!702815 () Bool)

(assert (=> b!754207 m!702815))

(declare-fun m!702817 () Bool)

(assert (=> b!754207 m!702817))

(declare-fun m!702819 () Bool)

(assert (=> b!754207 m!702819))

(push 1)

