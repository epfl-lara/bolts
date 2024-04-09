; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65128 () Bool)

(assert start!65128)

(declare-fun b!734690 () Bool)

(declare-fun e!411113 () Bool)

(declare-fun e!411108 () Bool)

(assert (=> b!734690 (= e!411113 e!411108)))

(declare-fun res!493688 () Bool)

(assert (=> b!734690 (=> (not res!493688) (not e!411108))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((array!41254 0))(
  ( (array!41255 (arr!19737 (Array (_ BitVec 32) (_ BitVec 64))) (size!20158 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41254)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7344 0))(
  ( (MissingZero!7344 (index!31743 (_ BitVec 32))) (Found!7344 (index!31744 (_ BitVec 32))) (Intermediate!7344 (undefined!8156 Bool) (index!31745 (_ BitVec 32)) (x!62783 (_ BitVec 32))) (Undefined!7344) (MissingVacant!7344 (index!31746 (_ BitVec 32))) )
))
(declare-fun lt!325639 () SeekEntryResult!7344)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41254 (_ BitVec 32)) SeekEntryResult!7344)

(assert (=> b!734690 (= res!493688 (= (seekEntryOrOpen!0 (select (arr!19737 a!3186) j!159) a!3186 mask!3328) lt!325639))))

(assert (=> b!734690 (= lt!325639 (Found!7344 j!159))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!734691 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41254 (_ BitVec 32)) SeekEntryResult!7344)

(assert (=> b!734691 (= e!411108 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19737 a!3186) j!159) a!3186 mask!3328) lt!325639))))

(declare-fun b!734692 () Bool)

(declare-fun res!493684 () Bool)

(declare-fun e!411110 () Bool)

(assert (=> b!734692 (=> (not res!493684) (not e!411110))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!734692 (= res!493684 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!734693 () Bool)

(declare-fun e!411116 () Bool)

(declare-fun e!411109 () Bool)

(assert (=> b!734693 (= e!411116 e!411109)))

(declare-fun res!493682 () Bool)

(assert (=> b!734693 (=> (not res!493682) (not e!411109))))

(declare-fun lt!325635 () SeekEntryResult!7344)

(declare-fun lt!325632 () SeekEntryResult!7344)

(assert (=> b!734693 (= res!493682 (= lt!325635 lt!325632))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!325633 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!325638 () array!41254)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41254 (_ BitVec 32)) SeekEntryResult!7344)

(assert (=> b!734693 (= lt!325632 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325633 lt!325638 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734693 (= lt!325635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325633 mask!3328) lt!325633 lt!325638 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!734693 (= lt!325633 (select (store (arr!19737 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!734693 (= lt!325638 (array!41255 (store (arr!19737 a!3186) i!1173 k!2102) (size!20158 a!3186)))))

(declare-fun res!493681 () Bool)

(assert (=> start!65128 (=> (not res!493681) (not e!411110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65128 (= res!493681 (validMask!0 mask!3328))))

(assert (=> start!65128 e!411110))

(assert (=> start!65128 true))

(declare-fun array_inv!15511 (array!41254) Bool)

(assert (=> start!65128 (array_inv!15511 a!3186)))

(declare-fun b!734694 () Bool)

(declare-fun e!411114 () Bool)

(assert (=> b!734694 (= e!411114 true)))

(declare-fun lt!325636 () SeekEntryResult!7344)

(assert (=> b!734694 (= lt!325636 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19737 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!734695 () Bool)

(declare-fun e!411111 () Bool)

(assert (=> b!734695 (= e!411111 e!411114)))

(declare-fun res!493694 () Bool)

(assert (=> b!734695 (=> res!493694 e!411114)))

(assert (=> b!734695 (= res!493694 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!325640 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!734695 (= lt!325640 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!734696 () Bool)

(declare-fun e!411115 () Bool)

(assert (=> b!734696 (= e!411115 e!411116)))

(declare-fun res!493685 () Bool)

(assert (=> b!734696 (=> (not res!493685) (not e!411116))))

(declare-fun lt!325631 () SeekEntryResult!7344)

(assert (=> b!734696 (= res!493685 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19737 a!3186) j!159) mask!3328) (select (arr!19737 a!3186) j!159) a!3186 mask!3328) lt!325631))))

(assert (=> b!734696 (= lt!325631 (Intermediate!7344 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!734697 () Bool)

(declare-fun res!493679 () Bool)

(assert (=> b!734697 (=> (not res!493679) (not e!411116))))

(assert (=> b!734697 (= res!493679 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19737 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!734698 () Bool)

(assert (=> b!734698 (= e!411109 (not e!411111))))

(declare-fun res!493683 () Bool)

(assert (=> b!734698 (=> res!493683 e!411111)))

(assert (=> b!734698 (= res!493683 (or (not (is-Intermediate!7344 lt!325632)) (bvsge x!1131 (x!62783 lt!325632))))))

(assert (=> b!734698 e!411113))

(declare-fun res!493690 () Bool)

(assert (=> b!734698 (=> (not res!493690) (not e!411113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41254 (_ BitVec 32)) Bool)

(assert (=> b!734698 (= res!493690 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25006 0))(
  ( (Unit!25007) )
))
(declare-fun lt!325637 () Unit!25006)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41254 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25006)

(assert (=> b!734698 (= lt!325637 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!734699 () Bool)

(declare-fun res!493693 () Bool)

(assert (=> b!734699 (=> (not res!493693) (not e!411115))))

(assert (=> b!734699 (= res!493693 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20158 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20158 a!3186))))))

(declare-fun b!734700 () Bool)

(declare-fun res!493692 () Bool)

(assert (=> b!734700 (=> (not res!493692) (not e!411115))))

(assert (=> b!734700 (= res!493692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!411112 () Bool)

(declare-fun b!734701 () Bool)

(assert (=> b!734701 (= e!411112 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19737 a!3186) j!159) a!3186 mask!3328) lt!325631))))

(declare-fun b!734702 () Bool)

(assert (=> b!734702 (= e!411110 e!411115)))

(declare-fun res!493691 () Bool)

(assert (=> b!734702 (=> (not res!493691) (not e!411115))))

(declare-fun lt!325634 () SeekEntryResult!7344)

(assert (=> b!734702 (= res!493691 (or (= lt!325634 (MissingZero!7344 i!1173)) (= lt!325634 (MissingVacant!7344 i!1173))))))

(assert (=> b!734702 (= lt!325634 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!734703 () Bool)

(declare-fun res!493686 () Bool)

(assert (=> b!734703 (=> (not res!493686) (not e!411115))))

(declare-datatypes ((List!13792 0))(
  ( (Nil!13789) (Cons!13788 (h!14860 (_ BitVec 64)) (t!20115 List!13792)) )
))
(declare-fun arrayNoDuplicates!0 (array!41254 (_ BitVec 32) List!13792) Bool)

(assert (=> b!734703 (= res!493686 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13789))))

(declare-fun b!734704 () Bool)

(declare-fun res!493687 () Bool)

(assert (=> b!734704 (=> (not res!493687) (not e!411110))))

(assert (=> b!734704 (= res!493687 (and (= (size!20158 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20158 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20158 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!734705 () Bool)

(declare-fun res!493695 () Bool)

(assert (=> b!734705 (=> (not res!493695) (not e!411116))))

(assert (=> b!734705 (= res!493695 e!411112)))

(declare-fun c!80886 () Bool)

(assert (=> b!734705 (= c!80886 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!734706 () Bool)

(declare-fun res!493680 () Bool)

(assert (=> b!734706 (=> (not res!493680) (not e!411110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!734706 (= res!493680 (validKeyInArray!0 (select (arr!19737 a!3186) j!159)))))

(declare-fun b!734707 () Bool)

(declare-fun res!493689 () Bool)

(assert (=> b!734707 (=> (not res!493689) (not e!411110))))

(assert (=> b!734707 (= res!493689 (validKeyInArray!0 k!2102))))

(declare-fun b!734708 () Bool)

(assert (=> b!734708 (= e!411112 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19737 a!3186) j!159) a!3186 mask!3328) (Found!7344 j!159)))))

(assert (= (and start!65128 res!493681) b!734704))

(assert (= (and b!734704 res!493687) b!734706))

(assert (= (and b!734706 res!493680) b!734707))

(assert (= (and b!734707 res!493689) b!734692))

(assert (= (and b!734692 res!493684) b!734702))

(assert (= (and b!734702 res!493691) b!734700))

(assert (= (and b!734700 res!493692) b!734703))

(assert (= (and b!734703 res!493686) b!734699))

(assert (= (and b!734699 res!493693) b!734696))

(assert (= (and b!734696 res!493685) b!734697))

(assert (= (and b!734697 res!493679) b!734705))

(assert (= (and b!734705 c!80886) b!734701))

(assert (= (and b!734705 (not c!80886)) b!734708))

(assert (= (and b!734705 res!493695) b!734693))

(assert (= (and b!734693 res!493682) b!734698))

(assert (= (and b!734698 res!493690) b!734690))

(assert (= (and b!734690 res!493688) b!734691))

(assert (= (and b!734698 (not res!493683)) b!734695))

(assert (= (and b!734695 (not res!493694)) b!734694))

(declare-fun m!687301 () Bool)

(assert (=> b!734701 m!687301))

(assert (=> b!734701 m!687301))

(declare-fun m!687303 () Bool)

(assert (=> b!734701 m!687303))

(declare-fun m!687305 () Bool)

(assert (=> b!734697 m!687305))

(declare-fun m!687307 () Bool)

(assert (=> b!734703 m!687307))

(assert (=> b!734694 m!687301))

(assert (=> b!734694 m!687301))

(declare-fun m!687309 () Bool)

(assert (=> b!734694 m!687309))

(assert (=> b!734706 m!687301))

(assert (=> b!734706 m!687301))

(declare-fun m!687311 () Bool)

(assert (=> b!734706 m!687311))

(declare-fun m!687313 () Bool)

(assert (=> b!734702 m!687313))

(declare-fun m!687315 () Bool)

(assert (=> b!734707 m!687315))

(declare-fun m!687317 () Bool)

(assert (=> b!734693 m!687317))

(declare-fun m!687319 () Bool)

(assert (=> b!734693 m!687319))

(declare-fun m!687321 () Bool)

(assert (=> b!734693 m!687321))

(declare-fun m!687323 () Bool)

(assert (=> b!734693 m!687323))

(declare-fun m!687325 () Bool)

(assert (=> b!734693 m!687325))

(assert (=> b!734693 m!687317))

(assert (=> b!734691 m!687301))

(assert (=> b!734691 m!687301))

(declare-fun m!687327 () Bool)

(assert (=> b!734691 m!687327))

(assert (=> b!734690 m!687301))

(assert (=> b!734690 m!687301))

(declare-fun m!687329 () Bool)

(assert (=> b!734690 m!687329))

(declare-fun m!687331 () Bool)

(assert (=> b!734700 m!687331))

(declare-fun m!687333 () Bool)

(assert (=> b!734695 m!687333))

(assert (=> b!734696 m!687301))

(assert (=> b!734696 m!687301))

(declare-fun m!687335 () Bool)

(assert (=> b!734696 m!687335))

(assert (=> b!734696 m!687335))

(assert (=> b!734696 m!687301))

(declare-fun m!687337 () Bool)

(assert (=> b!734696 m!687337))

(declare-fun m!687339 () Bool)

(assert (=> b!734692 m!687339))

(declare-fun m!687341 () Bool)

(assert (=> b!734698 m!687341))

(declare-fun m!687343 () Bool)

(assert (=> b!734698 m!687343))

(assert (=> b!734708 m!687301))

(assert (=> b!734708 m!687301))

(assert (=> b!734708 m!687309))

(declare-fun m!687345 () Bool)

(assert (=> start!65128 m!687345))

(declare-fun m!687347 () Bool)

(assert (=> start!65128 m!687347))

(push 1)

