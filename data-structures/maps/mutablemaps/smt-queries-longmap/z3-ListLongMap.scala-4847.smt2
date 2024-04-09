; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66798 () Bool)

(assert start!66798)

(declare-datatypes ((array!42315 0))(
  ( (array!42316 (arr!20254 (Array (_ BitVec 32) (_ BitVec 64))) (size!20675 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42315)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7861 0))(
  ( (MissingZero!7861 (index!33811 (_ BitVec 32))) (Found!7861 (index!33812 (_ BitVec 32))) (Intermediate!7861 (undefined!8673 Bool) (index!33813 (_ BitVec 32)) (x!64769 (_ BitVec 32))) (Undefined!7861) (MissingVacant!7861 (index!33814 (_ BitVec 32))) )
))
(declare-fun lt!342529 () SeekEntryResult!7861)

(declare-fun b!769685 () Bool)

(declare-fun e!428596 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42315 (_ BitVec 32)) SeekEntryResult!7861)

(assert (=> b!769685 (= e!428596 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20254 a!3186) j!159) a!3186 mask!3328) lt!342529))))

(declare-fun b!769686 () Bool)

(declare-fun e!428594 () Bool)

(declare-fun e!428599 () Bool)

(assert (=> b!769686 (= e!428594 e!428599)))

(declare-fun res!520694 () Bool)

(assert (=> b!769686 (=> (not res!520694) (not e!428599))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769686 (= res!520694 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20254 a!3186) j!159) mask!3328) (select (arr!20254 a!3186) j!159) a!3186 mask!3328) lt!342529))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!769686 (= lt!342529 (Intermediate!7861 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769687 () Bool)

(declare-datatypes ((Unit!26480 0))(
  ( (Unit!26481) )
))
(declare-fun e!428595 () Unit!26480)

(declare-fun Unit!26482 () Unit!26480)

(assert (=> b!769687 (= e!428595 Unit!26482)))

(declare-fun lt!342527 () SeekEntryResult!7861)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42315 (_ BitVec 32)) SeekEntryResult!7861)

(assert (=> b!769687 (= lt!342527 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20254 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!342521 () (_ BitVec 32))

(assert (=> b!769687 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342521 resIntermediateIndex!5 (select (arr!20254 a!3186) j!159) a!3186 mask!3328) (Found!7861 j!159))))

(declare-fun b!769688 () Bool)

(declare-fun res!520685 () Bool)

(assert (=> b!769688 (=> (not res!520685) (not e!428599))))

(assert (=> b!769688 (= res!520685 e!428596)))

(declare-fun c!84896 () Bool)

(assert (=> b!769688 (= c!84896 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769689 () Bool)

(declare-fun res!520696 () Bool)

(assert (=> b!769689 (=> (not res!520696) (not e!428594))))

(assert (=> b!769689 (= res!520696 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20675 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20675 a!3186))))))

(declare-fun res!520690 () Bool)

(declare-fun e!428598 () Bool)

(assert (=> start!66798 (=> (not res!520690) (not e!428598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66798 (= res!520690 (validMask!0 mask!3328))))

(assert (=> start!66798 e!428598))

(assert (=> start!66798 true))

(declare-fun array_inv!16028 (array!42315) Bool)

(assert (=> start!66798 (array_inv!16028 a!3186)))

(declare-fun b!769690 () Bool)

(declare-fun e!428592 () Bool)

(declare-fun e!428593 () Bool)

(assert (=> b!769690 (= e!428592 e!428593)))

(declare-fun res!520698 () Bool)

(assert (=> b!769690 (=> (not res!520698) (not e!428593))))

(declare-fun lt!342524 () SeekEntryResult!7861)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42315 (_ BitVec 32)) SeekEntryResult!7861)

(assert (=> b!769690 (= res!520698 (= (seekEntryOrOpen!0 (select (arr!20254 a!3186) j!159) a!3186 mask!3328) lt!342524))))

(assert (=> b!769690 (= lt!342524 (Found!7861 j!159))))

(declare-fun b!769691 () Bool)

(declare-fun res!520689 () Bool)

(assert (=> b!769691 (=> (not res!520689) (not e!428598))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769691 (= res!520689 (validKeyInArray!0 k0!2102))))

(declare-fun b!769692 () Bool)

(assert (=> b!769692 (= e!428593 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20254 a!3186) j!159) a!3186 mask!3328) lt!342524))))

(declare-fun b!769693 () Bool)

(declare-fun res!520691 () Bool)

(assert (=> b!769693 (=> (not res!520691) (not e!428594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42315 (_ BitVec 32)) Bool)

(assert (=> b!769693 (= res!520691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769694 () Bool)

(assert (=> b!769694 (= e!428596 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20254 a!3186) j!159) a!3186 mask!3328) (Found!7861 j!159)))))

(declare-fun b!769695 () Bool)

(declare-fun e!428597 () Bool)

(assert (=> b!769695 (= e!428597 true)))

(declare-fun lt!342523 () Unit!26480)

(assert (=> b!769695 (= lt!342523 e!428595)))

(declare-fun c!84897 () Bool)

(assert (=> b!769695 (= c!84897 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769695 (= lt!342521 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769696 () Bool)

(declare-fun res!520699 () Bool)

(assert (=> b!769696 (=> (not res!520699) (not e!428599))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769696 (= res!520699 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20254 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769697 () Bool)

(assert (=> b!769697 (= e!428598 e!428594)))

(declare-fun res!520692 () Bool)

(assert (=> b!769697 (=> (not res!520692) (not e!428594))))

(declare-fun lt!342525 () SeekEntryResult!7861)

(assert (=> b!769697 (= res!520692 (or (= lt!342525 (MissingZero!7861 i!1173)) (= lt!342525 (MissingVacant!7861 i!1173))))))

(assert (=> b!769697 (= lt!342525 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!769698 () Bool)

(declare-fun Unit!26483 () Unit!26480)

(assert (=> b!769698 (= e!428595 Unit!26483)))

(assert (=> b!769698 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342521 (select (arr!20254 a!3186) j!159) a!3186 mask!3328) lt!342529)))

(declare-fun b!769699 () Bool)

(declare-fun e!428591 () Bool)

(assert (=> b!769699 (= e!428591 (not e!428597))))

(declare-fun res!520686 () Bool)

(assert (=> b!769699 (=> res!520686 e!428597)))

(declare-fun lt!342528 () SeekEntryResult!7861)

(get-info :version)

(assert (=> b!769699 (= res!520686 (or (not ((_ is Intermediate!7861) lt!342528)) (bvsge x!1131 (x!64769 lt!342528))))))

(assert (=> b!769699 e!428592))

(declare-fun res!520688 () Bool)

(assert (=> b!769699 (=> (not res!520688) (not e!428592))))

(assert (=> b!769699 (= res!520688 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342526 () Unit!26480)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26480)

(assert (=> b!769699 (= lt!342526 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769700 () Bool)

(declare-fun res!520695 () Bool)

(assert (=> b!769700 (=> (not res!520695) (not e!428598))))

(assert (=> b!769700 (= res!520695 (validKeyInArray!0 (select (arr!20254 a!3186) j!159)))))

(declare-fun b!769701 () Bool)

(declare-fun res!520693 () Bool)

(assert (=> b!769701 (=> (not res!520693) (not e!428598))))

(assert (=> b!769701 (= res!520693 (and (= (size!20675 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20675 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20675 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769702 () Bool)

(assert (=> b!769702 (= e!428599 e!428591)))

(declare-fun res!520684 () Bool)

(assert (=> b!769702 (=> (not res!520684) (not e!428591))))

(declare-fun lt!342522 () SeekEntryResult!7861)

(assert (=> b!769702 (= res!520684 (= lt!342522 lt!342528))))

(declare-fun lt!342520 () (_ BitVec 64))

(declare-fun lt!342519 () array!42315)

(assert (=> b!769702 (= lt!342528 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342520 lt!342519 mask!3328))))

(assert (=> b!769702 (= lt!342522 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342520 mask!3328) lt!342520 lt!342519 mask!3328))))

(assert (=> b!769702 (= lt!342520 (select (store (arr!20254 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!769702 (= lt!342519 (array!42316 (store (arr!20254 a!3186) i!1173 k0!2102) (size!20675 a!3186)))))

(declare-fun b!769703 () Bool)

(declare-fun res!520687 () Bool)

(assert (=> b!769703 (=> (not res!520687) (not e!428598))))

(declare-fun arrayContainsKey!0 (array!42315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769703 (= res!520687 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769704 () Bool)

(declare-fun res!520697 () Bool)

(assert (=> b!769704 (=> (not res!520697) (not e!428594))))

(declare-datatypes ((List!14309 0))(
  ( (Nil!14306) (Cons!14305 (h!15404 (_ BitVec 64)) (t!20632 List!14309)) )
))
(declare-fun arrayNoDuplicates!0 (array!42315 (_ BitVec 32) List!14309) Bool)

(assert (=> b!769704 (= res!520697 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14306))))

(assert (= (and start!66798 res!520690) b!769701))

(assert (= (and b!769701 res!520693) b!769700))

(assert (= (and b!769700 res!520695) b!769691))

(assert (= (and b!769691 res!520689) b!769703))

(assert (= (and b!769703 res!520687) b!769697))

(assert (= (and b!769697 res!520692) b!769693))

(assert (= (and b!769693 res!520691) b!769704))

(assert (= (and b!769704 res!520697) b!769689))

(assert (= (and b!769689 res!520696) b!769686))

(assert (= (and b!769686 res!520694) b!769696))

(assert (= (and b!769696 res!520699) b!769688))

(assert (= (and b!769688 c!84896) b!769685))

(assert (= (and b!769688 (not c!84896)) b!769694))

(assert (= (and b!769688 res!520685) b!769702))

(assert (= (and b!769702 res!520684) b!769699))

(assert (= (and b!769699 res!520688) b!769690))

(assert (= (and b!769690 res!520698) b!769692))

(assert (= (and b!769699 (not res!520686)) b!769695))

(assert (= (and b!769695 c!84897) b!769698))

(assert (= (and b!769695 (not c!84897)) b!769687))

(declare-fun m!715127 () Bool)

(assert (=> start!66798 m!715127))

(declare-fun m!715129 () Bool)

(assert (=> start!66798 m!715129))

(declare-fun m!715131 () Bool)

(assert (=> b!769702 m!715131))

(assert (=> b!769702 m!715131))

(declare-fun m!715133 () Bool)

(assert (=> b!769702 m!715133))

(declare-fun m!715135 () Bool)

(assert (=> b!769702 m!715135))

(declare-fun m!715137 () Bool)

(assert (=> b!769702 m!715137))

(declare-fun m!715139 () Bool)

(assert (=> b!769702 m!715139))

(declare-fun m!715141 () Bool)

(assert (=> b!769697 m!715141))

(declare-fun m!715143 () Bool)

(assert (=> b!769690 m!715143))

(assert (=> b!769690 m!715143))

(declare-fun m!715145 () Bool)

(assert (=> b!769690 m!715145))

(assert (=> b!769685 m!715143))

(assert (=> b!769685 m!715143))

(declare-fun m!715147 () Bool)

(assert (=> b!769685 m!715147))

(declare-fun m!715149 () Bool)

(assert (=> b!769703 m!715149))

(declare-fun m!715151 () Bool)

(assert (=> b!769693 m!715151))

(declare-fun m!715153 () Bool)

(assert (=> b!769695 m!715153))

(assert (=> b!769687 m!715143))

(assert (=> b!769687 m!715143))

(declare-fun m!715155 () Bool)

(assert (=> b!769687 m!715155))

(assert (=> b!769687 m!715143))

(declare-fun m!715157 () Bool)

(assert (=> b!769687 m!715157))

(assert (=> b!769692 m!715143))

(assert (=> b!769692 m!715143))

(declare-fun m!715159 () Bool)

(assert (=> b!769692 m!715159))

(assert (=> b!769694 m!715143))

(assert (=> b!769694 m!715143))

(assert (=> b!769694 m!715155))

(declare-fun m!715161 () Bool)

(assert (=> b!769699 m!715161))

(declare-fun m!715163 () Bool)

(assert (=> b!769699 m!715163))

(declare-fun m!715165 () Bool)

(assert (=> b!769691 m!715165))

(declare-fun m!715167 () Bool)

(assert (=> b!769704 m!715167))

(assert (=> b!769686 m!715143))

(assert (=> b!769686 m!715143))

(declare-fun m!715169 () Bool)

(assert (=> b!769686 m!715169))

(assert (=> b!769686 m!715169))

(assert (=> b!769686 m!715143))

(declare-fun m!715171 () Bool)

(assert (=> b!769686 m!715171))

(assert (=> b!769698 m!715143))

(assert (=> b!769698 m!715143))

(declare-fun m!715173 () Bool)

(assert (=> b!769698 m!715173))

(declare-fun m!715175 () Bool)

(assert (=> b!769696 m!715175))

(assert (=> b!769700 m!715143))

(assert (=> b!769700 m!715143))

(declare-fun m!715177 () Bool)

(assert (=> b!769700 m!715177))

(check-sat (not b!769692) (not b!769694) (not b!769702) (not b!769691) (not b!769699) (not b!769697) (not b!769700) (not b!769704) (not b!769685) (not b!769687) (not b!769695) (not b!769693) (not b!769686) (not b!769690) (not b!769703) (not b!769698) (not start!66798))
(check-sat)
