; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65216 () Bool)

(assert start!65216)

(declare-fun b!737778 () Bool)

(declare-datatypes ((Unit!25170 0))(
  ( (Unit!25171) )
))
(declare-fun e!412663 () Unit!25170)

(declare-fun Unit!25172 () Unit!25170)

(assert (=> b!737778 (= e!412663 Unit!25172)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41342 0))(
  ( (array!41343 (arr!19781 (Array (_ BitVec 32) (_ BitVec 64))) (size!20202 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41342)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7388 0))(
  ( (MissingZero!7388 (index!31919 (_ BitVec 32))) (Found!7388 (index!31920 (_ BitVec 32))) (Intermediate!7388 (undefined!8200 Bool) (index!31921 (_ BitVec 32)) (x!62939 (_ BitVec 32))) (Undefined!7388) (MissingVacant!7388 (index!31922 (_ BitVec 32))) )
))
(declare-fun lt!327428 () SeekEntryResult!7388)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41342 (_ BitVec 32)) SeekEntryResult!7388)

(assert (=> b!737778 (= lt!327428 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19781 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!327427 () (_ BitVec 32))

(declare-fun lt!327426 () SeekEntryResult!7388)

(assert (=> b!737778 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327427 resIntermediateIndex!5 (select (arr!19781 a!3186) j!159) a!3186 mask!3328) lt!327426)))

(declare-fun b!737779 () Bool)

(declare-fun res!496053 () Bool)

(declare-fun e!412667 () Bool)

(assert (=> b!737779 (=> (not res!496053) (not e!412667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41342 (_ BitVec 32)) Bool)

(assert (=> b!737779 (= res!496053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737780 () Bool)

(declare-fun e!412668 () Bool)

(assert (=> b!737780 (= e!412668 true)))

(declare-fun lt!327417 () (_ BitVec 64))

(declare-fun lt!327425 () SeekEntryResult!7388)

(declare-fun lt!327418 () array!41342)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41342 (_ BitVec 32)) SeekEntryResult!7388)

(assert (=> b!737780 (= lt!327425 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327427 lt!327417 lt!327418 mask!3328))))

(declare-fun res!496040 () Bool)

(declare-fun e!412661 () Bool)

(assert (=> start!65216 (=> (not res!496040) (not e!412661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65216 (= res!496040 (validMask!0 mask!3328))))

(assert (=> start!65216 e!412661))

(assert (=> start!65216 true))

(declare-fun array_inv!15555 (array!41342) Bool)

(assert (=> start!65216 (array_inv!15555 a!3186)))

(declare-fun e!412665 () Bool)

(declare-fun b!737781 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!327416 () SeekEntryResult!7388)

(assert (=> b!737781 (= e!412665 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19781 a!3186) j!159) a!3186 mask!3328) lt!327416))))

(declare-fun b!737782 () Bool)

(declare-fun Unit!25173 () Unit!25170)

(assert (=> b!737782 (= e!412663 Unit!25173)))

(declare-fun lt!327420 () SeekEntryResult!7388)

(assert (=> b!737782 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327427 (select (arr!19781 a!3186) j!159) a!3186 mask!3328) lt!327420)))

(declare-fun b!737783 () Bool)

(declare-fun e!412660 () Bool)

(assert (=> b!737783 (= e!412667 e!412660)))

(declare-fun res!496052 () Bool)

(assert (=> b!737783 (=> (not res!496052) (not e!412660))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737783 (= res!496052 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19781 a!3186) j!159) mask!3328) (select (arr!19781 a!3186) j!159) a!3186 mask!3328) lt!327420))))

(assert (=> b!737783 (= lt!327420 (Intermediate!7388 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!737784 () Bool)

(declare-fun res!496047 () Bool)

(assert (=> b!737784 (=> (not res!496047) (not e!412667))))

(declare-datatypes ((List!13836 0))(
  ( (Nil!13833) (Cons!13832 (h!14904 (_ BitVec 64)) (t!20159 List!13836)) )
))
(declare-fun arrayNoDuplicates!0 (array!41342 (_ BitVec 32) List!13836) Bool)

(assert (=> b!737784 (= res!496047 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13833))))

(declare-fun b!737785 () Bool)

(declare-fun e!412662 () Bool)

(assert (=> b!737785 (= e!412662 e!412668)))

(declare-fun res!496046 () Bool)

(assert (=> b!737785 (=> res!496046 e!412668)))

(assert (=> b!737785 (= res!496046 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327427 #b00000000000000000000000000000000) (bvsge lt!327427 (size!20202 a!3186))))))

(declare-fun lt!327419 () Unit!25170)

(assert (=> b!737785 (= lt!327419 e!412663)))

(declare-fun c!81250 () Bool)

(declare-fun lt!327422 () Bool)

(assert (=> b!737785 (= c!81250 lt!327422)))

(assert (=> b!737785 (= lt!327422 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737785 (= lt!327427 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!737786 () Bool)

(declare-fun res!496039 () Bool)

(assert (=> b!737786 (=> (not res!496039) (not e!412660))))

(declare-fun e!412666 () Bool)

(assert (=> b!737786 (= res!496039 e!412666)))

(declare-fun c!81251 () Bool)

(assert (=> b!737786 (= c!81251 (bvsle x!1131 resIntermediateX!5))))

(declare-fun e!412664 () Bool)

(declare-fun b!737787 () Bool)

(assert (=> b!737787 (= e!412664 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327427 resIntermediateIndex!5 (select (arr!19781 a!3186) j!159) a!3186 mask!3328) lt!327426)))))

(declare-fun b!737788 () Bool)

(declare-fun e!412671 () Bool)

(assert (=> b!737788 (= e!412671 e!412665)))

(declare-fun res!496049 () Bool)

(assert (=> b!737788 (=> (not res!496049) (not e!412665))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41342 (_ BitVec 32)) SeekEntryResult!7388)

(assert (=> b!737788 (= res!496049 (= (seekEntryOrOpen!0 (select (arr!19781 a!3186) j!159) a!3186 mask!3328) lt!327416))))

(assert (=> b!737788 (= lt!327416 (Found!7388 j!159))))

(declare-fun b!737789 () Bool)

(assert (=> b!737789 (= e!412666 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19781 a!3186) j!159) a!3186 mask!3328) lt!327420))))

(declare-fun b!737790 () Bool)

(declare-fun res!496055 () Bool)

(assert (=> b!737790 (=> (not res!496055) (not e!412661))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737790 (= res!496055 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!737791 () Bool)

(declare-fun res!496045 () Bool)

(assert (=> b!737791 (=> (not res!496045) (not e!412661))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!737791 (= res!496045 (and (= (size!20202 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20202 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20202 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!737792 () Bool)

(declare-fun e!412670 () Bool)

(assert (=> b!737792 (= e!412670 (not e!412662))))

(declare-fun res!496044 () Bool)

(assert (=> b!737792 (=> res!496044 e!412662)))

(declare-fun lt!327424 () SeekEntryResult!7388)

(assert (=> b!737792 (= res!496044 (or (not (is-Intermediate!7388 lt!327424)) (bvsge x!1131 (x!62939 lt!327424))))))

(assert (=> b!737792 (= lt!327426 (Found!7388 j!159))))

(assert (=> b!737792 e!412671))

(declare-fun res!496050 () Bool)

(assert (=> b!737792 (=> (not res!496050) (not e!412671))))

(assert (=> b!737792 (= res!496050 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327415 () Unit!25170)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41342 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25170)

(assert (=> b!737792 (= lt!327415 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737793 () Bool)

(assert (=> b!737793 (= e!412660 e!412670)))

(declare-fun res!496051 () Bool)

(assert (=> b!737793 (=> (not res!496051) (not e!412670))))

(declare-fun lt!327421 () SeekEntryResult!7388)

(assert (=> b!737793 (= res!496051 (= lt!327421 lt!327424))))

(assert (=> b!737793 (= lt!327424 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327417 lt!327418 mask!3328))))

(assert (=> b!737793 (= lt!327421 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327417 mask!3328) lt!327417 lt!327418 mask!3328))))

(assert (=> b!737793 (= lt!327417 (select (store (arr!19781 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!737793 (= lt!327418 (array!41343 (store (arr!19781 a!3186) i!1173 k!2102) (size!20202 a!3186)))))

(declare-fun b!737794 () Bool)

(assert (=> b!737794 (= e!412661 e!412667)))

(declare-fun res!496056 () Bool)

(assert (=> b!737794 (=> (not res!496056) (not e!412667))))

(declare-fun lt!327423 () SeekEntryResult!7388)

(assert (=> b!737794 (= res!496056 (or (= lt!327423 (MissingZero!7388 i!1173)) (= lt!327423 (MissingVacant!7388 i!1173))))))

(assert (=> b!737794 (= lt!327423 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!737795 () Bool)

(declare-fun res!496048 () Bool)

(assert (=> b!737795 (=> res!496048 e!412668)))

(assert (=> b!737795 (= res!496048 e!412664)))

(declare-fun c!81252 () Bool)

(assert (=> b!737795 (= c!81252 lt!327422)))

(declare-fun b!737796 () Bool)

(declare-fun res!496054 () Bool)

(assert (=> b!737796 (=> (not res!496054) (not e!412661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737796 (= res!496054 (validKeyInArray!0 (select (arr!19781 a!3186) j!159)))))

(declare-fun b!737797 () Bool)

(assert (=> b!737797 (= e!412666 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19781 a!3186) j!159) a!3186 mask!3328) (Found!7388 j!159)))))

(declare-fun b!737798 () Bool)

(declare-fun res!496043 () Bool)

(assert (=> b!737798 (=> (not res!496043) (not e!412660))))

(assert (=> b!737798 (= res!496043 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19781 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!737799 () Bool)

(declare-fun res!496042 () Bool)

(assert (=> b!737799 (=> (not res!496042) (not e!412667))))

(assert (=> b!737799 (= res!496042 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20202 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20202 a!3186))))))

(declare-fun b!737800 () Bool)

(declare-fun res!496041 () Bool)

(assert (=> b!737800 (=> (not res!496041) (not e!412661))))

(assert (=> b!737800 (= res!496041 (validKeyInArray!0 k!2102))))

(declare-fun b!737801 () Bool)

(assert (=> b!737801 (= e!412664 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327427 (select (arr!19781 a!3186) j!159) a!3186 mask!3328) lt!327420)))))

(assert (= (and start!65216 res!496040) b!737791))

(assert (= (and b!737791 res!496045) b!737796))

(assert (= (and b!737796 res!496054) b!737800))

(assert (= (and b!737800 res!496041) b!737790))

(assert (= (and b!737790 res!496055) b!737794))

(assert (= (and b!737794 res!496056) b!737779))

(assert (= (and b!737779 res!496053) b!737784))

(assert (= (and b!737784 res!496047) b!737799))

(assert (= (and b!737799 res!496042) b!737783))

(assert (= (and b!737783 res!496052) b!737798))

(assert (= (and b!737798 res!496043) b!737786))

(assert (= (and b!737786 c!81251) b!737789))

(assert (= (and b!737786 (not c!81251)) b!737797))

(assert (= (and b!737786 res!496039) b!737793))

(assert (= (and b!737793 res!496051) b!737792))

(assert (= (and b!737792 res!496050) b!737788))

(assert (= (and b!737788 res!496049) b!737781))

(assert (= (and b!737792 (not res!496044)) b!737785))

(assert (= (and b!737785 c!81250) b!737782))

(assert (= (and b!737785 (not c!81250)) b!737778))

(assert (= (and b!737785 (not res!496046)) b!737795))

(assert (= (and b!737795 c!81252) b!737801))

(assert (= (and b!737795 (not c!81252)) b!737787))

(assert (= (and b!737795 (not res!496048)) b!737780))

(declare-fun m!689641 () Bool)

(assert (=> b!737797 m!689641))

(assert (=> b!737797 m!689641))

(declare-fun m!689643 () Bool)

(assert (=> b!737797 m!689643))

(assert (=> b!737788 m!689641))

(assert (=> b!737788 m!689641))

(declare-fun m!689645 () Bool)

(assert (=> b!737788 m!689645))

(declare-fun m!689647 () Bool)

(assert (=> b!737794 m!689647))

(declare-fun m!689649 () Bool)

(assert (=> b!737780 m!689649))

(assert (=> b!737787 m!689641))

(assert (=> b!737787 m!689641))

(declare-fun m!689651 () Bool)

(assert (=> b!737787 m!689651))

(assert (=> b!737783 m!689641))

(assert (=> b!737783 m!689641))

(declare-fun m!689653 () Bool)

(assert (=> b!737783 m!689653))

(assert (=> b!737783 m!689653))

(assert (=> b!737783 m!689641))

(declare-fun m!689655 () Bool)

(assert (=> b!737783 m!689655))

(declare-fun m!689657 () Bool)

(assert (=> start!65216 m!689657))

(declare-fun m!689659 () Bool)

(assert (=> start!65216 m!689659))

(declare-fun m!689661 () Bool)

(assert (=> b!737792 m!689661))

(declare-fun m!689663 () Bool)

(assert (=> b!737792 m!689663))

(assert (=> b!737801 m!689641))

(assert (=> b!737801 m!689641))

(declare-fun m!689665 () Bool)

(assert (=> b!737801 m!689665))

(declare-fun m!689667 () Bool)

(assert (=> b!737798 m!689667))

(declare-fun m!689669 () Bool)

(assert (=> b!737790 m!689669))

(declare-fun m!689671 () Bool)

(assert (=> b!737793 m!689671))

(declare-fun m!689673 () Bool)

(assert (=> b!737793 m!689673))

(assert (=> b!737793 m!689671))

(declare-fun m!689675 () Bool)

(assert (=> b!737793 m!689675))

(declare-fun m!689677 () Bool)

(assert (=> b!737793 m!689677))

(declare-fun m!689679 () Bool)

(assert (=> b!737793 m!689679))

(declare-fun m!689681 () Bool)

(assert (=> b!737800 m!689681))

(assert (=> b!737781 m!689641))

(assert (=> b!737781 m!689641))

(declare-fun m!689683 () Bool)

(assert (=> b!737781 m!689683))

(assert (=> b!737796 m!689641))

(assert (=> b!737796 m!689641))

(declare-fun m!689685 () Bool)

(assert (=> b!737796 m!689685))

(declare-fun m!689687 () Bool)

(assert (=> b!737785 m!689687))

(declare-fun m!689689 () Bool)

(assert (=> b!737779 m!689689))

(declare-fun m!689691 () Bool)

(assert (=> b!737784 m!689691))

(assert (=> b!737778 m!689641))

(assert (=> b!737778 m!689641))

(assert (=> b!737778 m!689643))

(assert (=> b!737778 m!689641))

(assert (=> b!737778 m!689651))

(assert (=> b!737782 m!689641))

(assert (=> b!737782 m!689641))

(assert (=> b!737782 m!689665))

(assert (=> b!737789 m!689641))

(assert (=> b!737789 m!689641))

(declare-fun m!689693 () Bool)

(assert (=> b!737789 m!689693))

(push 1)

