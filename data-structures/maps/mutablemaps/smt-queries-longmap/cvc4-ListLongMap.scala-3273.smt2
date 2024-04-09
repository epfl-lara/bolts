; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45596 () Bool)

(assert start!45596)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!501677 () Bool)

(declare-datatypes ((array!32312 0))(
  ( (array!32313 (arr!15533 (Array (_ BitVec 32) (_ BitVec 64))) (size!15897 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32312)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!293885 () Bool)

(declare-datatypes ((SeekEntryResult!4007 0))(
  ( (MissingZero!4007 (index!18216 (_ BitVec 32))) (Found!4007 (index!18217 (_ BitVec 32))) (Intermediate!4007 (undefined!4819 Bool) (index!18218 (_ BitVec 32)) (x!47275 (_ BitVec 32))) (Undefined!4007) (MissingVacant!4007 (index!18219 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32312 (_ BitVec 32)) SeekEntryResult!4007)

(assert (=> b!501677 (= e!293885 (= (seekEntryOrOpen!0 (select (arr!15533 a!3235) j!176) a!3235 mask!3524) (Found!4007 j!176)))))

(declare-fun b!501678 () Bool)

(declare-fun res!303320 () Bool)

(declare-fun e!293892 () Bool)

(assert (=> b!501678 (=> (not res!303320) (not e!293892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501678 (= res!303320 (validKeyInArray!0 (select (arr!15533 a!3235) j!176)))))

(declare-fun b!501679 () Bool)

(declare-fun res!303311 () Bool)

(declare-fun e!293890 () Bool)

(assert (=> b!501679 (=> res!303311 e!293890)))

(declare-fun lt!227972 () SeekEntryResult!4007)

(assert (=> b!501679 (= res!303311 (or (undefined!4819 lt!227972) (not (is-Intermediate!4007 lt!227972))))))

(declare-fun b!501680 () Bool)

(declare-fun e!293886 () Bool)

(assert (=> b!501680 (= e!293886 false)))

(declare-fun b!501681 () Bool)

(declare-datatypes ((Unit!15118 0))(
  ( (Unit!15119) )
))
(declare-fun e!293893 () Unit!15118)

(declare-fun Unit!15120 () Unit!15118)

(assert (=> b!501681 (= e!293893 Unit!15120)))

(declare-fun lt!227975 () (_ BitVec 32))

(declare-fun lt!227976 () Unit!15118)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32312 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15118)

(assert (=> b!501681 (= lt!227976 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227975 #b00000000000000000000000000000000 (index!18218 lt!227972) (x!47275 lt!227972) mask!3524))))

(declare-fun res!303318 () Bool)

(declare-fun lt!227971 () array!32312)

(declare-fun lt!227979 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32312 (_ BitVec 32)) SeekEntryResult!4007)

(assert (=> b!501681 (= res!303318 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227975 lt!227979 lt!227971 mask!3524) (Intermediate!4007 false (index!18218 lt!227972) (x!47275 lt!227972))))))

(assert (=> b!501681 (=> (not res!303318) (not e!293886))))

(assert (=> b!501681 e!293886))

(declare-fun b!501682 () Bool)

(declare-fun e!293889 () Bool)

(assert (=> b!501682 (= e!293889 (not e!293890))))

(declare-fun res!303321 () Bool)

(assert (=> b!501682 (=> res!303321 e!293890)))

(declare-fun lt!227980 () (_ BitVec 32))

(assert (=> b!501682 (= res!303321 (= lt!227972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227980 lt!227979 lt!227971 mask!3524)))))

(assert (=> b!501682 (= lt!227972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227975 (select (arr!15533 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501682 (= lt!227980 (toIndex!0 lt!227979 mask!3524))))

(assert (=> b!501682 (= lt!227979 (select (store (arr!15533 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!501682 (= lt!227975 (toIndex!0 (select (arr!15533 a!3235) j!176) mask!3524))))

(assert (=> b!501682 (= lt!227971 (array!32313 (store (arr!15533 a!3235) i!1204 k!2280) (size!15897 a!3235)))))

(assert (=> b!501682 e!293885))

(declare-fun res!303319 () Bool)

(assert (=> b!501682 (=> (not res!303319) (not e!293885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32312 (_ BitVec 32)) Bool)

(assert (=> b!501682 (= res!303319 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227981 () Unit!15118)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32312 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15118)

(assert (=> b!501682 (= lt!227981 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501683 () Bool)

(declare-fun e!293888 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32312 (_ BitVec 32)) SeekEntryResult!4007)

(assert (=> b!501683 (= e!293888 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!227975 (index!18218 lt!227972) (select (arr!15533 a!3235) j!176) a!3235 mask!3524) (Found!4007 j!176))))))

(declare-fun b!501684 () Bool)

(declare-fun res!303310 () Bool)

(declare-fun e!293891 () Bool)

(assert (=> b!501684 (=> res!303310 e!293891)))

(assert (=> b!501684 (= res!303310 e!293888)))

(declare-fun res!303309 () Bool)

(assert (=> b!501684 (=> (not res!303309) (not e!293888))))

(assert (=> b!501684 (= res!303309 (bvsgt #b00000000000000000000000000000000 (x!47275 lt!227972)))))

(declare-fun b!501685 () Bool)

(assert (=> b!501685 (= e!293891 true)))

(declare-fun lt!227973 () SeekEntryResult!4007)

(assert (=> b!501685 (= lt!227973 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227975 lt!227979 lt!227971 mask!3524))))

(declare-fun b!501686 () Bool)

(declare-fun res!303322 () Bool)

(assert (=> b!501686 (=> (not res!303322) (not e!293889))))

(assert (=> b!501686 (= res!303322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501687 () Bool)

(assert (=> b!501687 (= e!293892 e!293889)))

(declare-fun res!303316 () Bool)

(assert (=> b!501687 (=> (not res!303316) (not e!293889))))

(declare-fun lt!227977 () SeekEntryResult!4007)

(assert (=> b!501687 (= res!303316 (or (= lt!227977 (MissingZero!4007 i!1204)) (= lt!227977 (MissingVacant!4007 i!1204))))))

(assert (=> b!501687 (= lt!227977 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!501688 () Bool)

(declare-fun res!303323 () Bool)

(assert (=> b!501688 (=> (not res!303323) (not e!293889))))

(declare-datatypes ((List!9744 0))(
  ( (Nil!9741) (Cons!9740 (h!10617 (_ BitVec 64)) (t!15980 List!9744)) )
))
(declare-fun arrayNoDuplicates!0 (array!32312 (_ BitVec 32) List!9744) Bool)

(assert (=> b!501688 (= res!303323 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9741))))

(declare-fun b!501689 () Bool)

(declare-fun res!303313 () Bool)

(assert (=> b!501689 (=> (not res!303313) (not e!293892))))

(assert (=> b!501689 (= res!303313 (and (= (size!15897 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15897 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15897 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501690 () Bool)

(declare-fun res!303315 () Bool)

(assert (=> b!501690 (=> (not res!303315) (not e!293892))))

(assert (=> b!501690 (= res!303315 (validKeyInArray!0 k!2280))))

(declare-fun b!501676 () Bool)

(declare-fun Unit!15121 () Unit!15118)

(assert (=> b!501676 (= e!293893 Unit!15121)))

(declare-fun res!303314 () Bool)

(assert (=> start!45596 (=> (not res!303314) (not e!293892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45596 (= res!303314 (validMask!0 mask!3524))))

(assert (=> start!45596 e!293892))

(assert (=> start!45596 true))

(declare-fun array_inv!11307 (array!32312) Bool)

(assert (=> start!45596 (array_inv!11307 a!3235)))

(declare-fun b!501691 () Bool)

(assert (=> b!501691 (= e!293890 e!293891)))

(declare-fun res!303312 () Bool)

(assert (=> b!501691 (=> res!303312 e!293891)))

(assert (=> b!501691 (= res!303312 (or (bvsgt (x!47275 lt!227972) #b01111111111111111111111111111110) (bvslt lt!227975 #b00000000000000000000000000000000) (bvsge lt!227975 (size!15897 a!3235)) (bvslt (index!18218 lt!227972) #b00000000000000000000000000000000) (bvsge (index!18218 lt!227972) (size!15897 a!3235)) (not (= lt!227972 (Intermediate!4007 false (index!18218 lt!227972) (x!47275 lt!227972))))))))

(assert (=> b!501691 (= (index!18218 lt!227972) i!1204)))

(declare-fun lt!227978 () Unit!15118)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32312 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15118)

(assert (=> b!501691 (= lt!227978 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!227975 #b00000000000000000000000000000000 (index!18218 lt!227972) (x!47275 lt!227972) mask!3524))))

(assert (=> b!501691 (and (or (= (select (arr!15533 a!3235) (index!18218 lt!227972)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15533 a!3235) (index!18218 lt!227972)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15533 a!3235) (index!18218 lt!227972)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15533 a!3235) (index!18218 lt!227972)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227974 () Unit!15118)

(assert (=> b!501691 (= lt!227974 e!293893)))

(declare-fun c!59462 () Bool)

(assert (=> b!501691 (= c!59462 (= (select (arr!15533 a!3235) (index!18218 lt!227972)) (select (arr!15533 a!3235) j!176)))))

(assert (=> b!501691 (and (bvslt (x!47275 lt!227972) #b01111111111111111111111111111110) (or (= (select (arr!15533 a!3235) (index!18218 lt!227972)) (select (arr!15533 a!3235) j!176)) (= (select (arr!15533 a!3235) (index!18218 lt!227972)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15533 a!3235) (index!18218 lt!227972)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501692 () Bool)

(declare-fun res!303317 () Bool)

(assert (=> b!501692 (=> (not res!303317) (not e!293892))))

(declare-fun arrayContainsKey!0 (array!32312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501692 (= res!303317 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45596 res!303314) b!501689))

(assert (= (and b!501689 res!303313) b!501678))

(assert (= (and b!501678 res!303320) b!501690))

(assert (= (and b!501690 res!303315) b!501692))

(assert (= (and b!501692 res!303317) b!501687))

(assert (= (and b!501687 res!303316) b!501686))

(assert (= (and b!501686 res!303322) b!501688))

(assert (= (and b!501688 res!303323) b!501682))

(assert (= (and b!501682 res!303319) b!501677))

(assert (= (and b!501682 (not res!303321)) b!501679))

(assert (= (and b!501679 (not res!303311)) b!501691))

(assert (= (and b!501691 c!59462) b!501681))

(assert (= (and b!501691 (not c!59462)) b!501676))

(assert (= (and b!501681 res!303318) b!501680))

(assert (= (and b!501691 (not res!303312)) b!501684))

(assert (= (and b!501684 res!303309) b!501683))

(assert (= (and b!501684 (not res!303310)) b!501685))

(declare-fun m!482703 () Bool)

(assert (=> b!501682 m!482703))

(declare-fun m!482705 () Bool)

(assert (=> b!501682 m!482705))

(declare-fun m!482707 () Bool)

(assert (=> b!501682 m!482707))

(declare-fun m!482709 () Bool)

(assert (=> b!501682 m!482709))

(declare-fun m!482711 () Bool)

(assert (=> b!501682 m!482711))

(declare-fun m!482713 () Bool)

(assert (=> b!501682 m!482713))

(declare-fun m!482715 () Bool)

(assert (=> b!501682 m!482715))

(assert (=> b!501682 m!482703))

(declare-fun m!482717 () Bool)

(assert (=> b!501682 m!482717))

(assert (=> b!501682 m!482703))

(declare-fun m!482719 () Bool)

(assert (=> b!501682 m!482719))

(declare-fun m!482721 () Bool)

(assert (=> b!501687 m!482721))

(declare-fun m!482723 () Bool)

(assert (=> b!501692 m!482723))

(assert (=> b!501677 m!482703))

(assert (=> b!501677 m!482703))

(declare-fun m!482725 () Bool)

(assert (=> b!501677 m!482725))

(declare-fun m!482727 () Bool)

(assert (=> b!501691 m!482727))

(declare-fun m!482729 () Bool)

(assert (=> b!501691 m!482729))

(assert (=> b!501691 m!482703))

(declare-fun m!482731 () Bool)

(assert (=> b!501686 m!482731))

(declare-fun m!482733 () Bool)

(assert (=> b!501685 m!482733))

(declare-fun m!482735 () Bool)

(assert (=> b!501688 m!482735))

(declare-fun m!482737 () Bool)

(assert (=> b!501690 m!482737))

(assert (=> b!501683 m!482703))

(assert (=> b!501683 m!482703))

(declare-fun m!482739 () Bool)

(assert (=> b!501683 m!482739))

(declare-fun m!482741 () Bool)

(assert (=> b!501681 m!482741))

(assert (=> b!501681 m!482733))

(declare-fun m!482743 () Bool)

(assert (=> start!45596 m!482743))

(declare-fun m!482745 () Bool)

(assert (=> start!45596 m!482745))

(assert (=> b!501678 m!482703))

(assert (=> b!501678 m!482703))

(declare-fun m!482747 () Bool)

(assert (=> b!501678 m!482747))

(push 1)

