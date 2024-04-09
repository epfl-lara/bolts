; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67014 () Bool)

(assert start!67014)

(declare-fun b!772769 () Bool)

(declare-fun res!522692 () Bool)

(declare-fun e!430222 () Bool)

(assert (=> b!772769 (=> (not res!522692) (not e!430222))))

(declare-datatypes ((array!42393 0))(
  ( (array!42394 (arr!20290 (Array (_ BitVec 32) (_ BitVec 64))) (size!20711 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42393)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!772769 (= res!522692 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!772770 () Bool)

(declare-fun res!522687 () Bool)

(declare-fun e!430229 () Bool)

(assert (=> b!772770 (=> (not res!522687) (not e!430229))))

(declare-fun e!430230 () Bool)

(assert (=> b!772770 (= res!522687 e!430230)))

(declare-fun c!85443 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!772770 (= c!85443 (bvsle x!1131 resIntermediateX!5))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!772771 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7897 0))(
  ( (MissingZero!7897 (index!33955 (_ BitVec 32))) (Found!7897 (index!33956 (_ BitVec 32))) (Intermediate!7897 (undefined!8709 Bool) (index!33957 (_ BitVec 32)) (x!64925 (_ BitVec 32))) (Undefined!7897) (MissingVacant!7897 (index!33958 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42393 (_ BitVec 32)) SeekEntryResult!7897)

(assert (=> b!772771 (= e!430230 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20290 a!3186) j!159) a!3186 mask!3328) (Found!7897 j!159)))))

(declare-fun b!772772 () Bool)

(declare-fun res!522688 () Bool)

(assert (=> b!772772 (=> (not res!522688) (not e!430222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!772772 (= res!522688 (validKeyInArray!0 (select (arr!20290 a!3186) j!159)))))

(declare-fun b!772773 () Bool)

(declare-fun res!522697 () Bool)

(declare-fun e!430225 () Bool)

(assert (=> b!772773 (=> (not res!522697) (not e!430225))))

(declare-datatypes ((List!14345 0))(
  ( (Nil!14342) (Cons!14341 (h!15446 (_ BitVec 64)) (t!20668 List!14345)) )
))
(declare-fun arrayNoDuplicates!0 (array!42393 (_ BitVec 32) List!14345) Bool)

(assert (=> b!772773 (= res!522697 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14342))))

(declare-fun b!772774 () Bool)

(declare-fun res!522696 () Bool)

(assert (=> b!772774 (=> (not res!522696) (not e!430225))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42393 (_ BitVec 32)) Bool)

(assert (=> b!772774 (= res!522696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!772775 () Bool)

(assert (=> b!772775 (= e!430225 e!430229)))

(declare-fun res!522694 () Bool)

(assert (=> b!772775 (=> (not res!522694) (not e!430229))))

(declare-fun lt!344082 () SeekEntryResult!7897)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42393 (_ BitVec 32)) SeekEntryResult!7897)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772775 (= res!522694 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20290 a!3186) j!159) mask!3328) (select (arr!20290 a!3186) j!159) a!3186 mask!3328) lt!344082))))

(assert (=> b!772775 (= lt!344082 (Intermediate!7897 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!772776 () Bool)

(declare-fun e!430227 () Bool)

(assert (=> b!772776 (= e!430229 e!430227)))

(declare-fun res!522683 () Bool)

(assert (=> b!772776 (=> (not res!522683) (not e!430227))))

(declare-fun lt!344084 () SeekEntryResult!7897)

(declare-fun lt!344087 () SeekEntryResult!7897)

(assert (=> b!772776 (= res!522683 (= lt!344084 lt!344087))))

(declare-fun lt!344089 () (_ BitVec 64))

(declare-fun lt!344079 () array!42393)

(assert (=> b!772776 (= lt!344087 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344089 lt!344079 mask!3328))))

(assert (=> b!772776 (= lt!344084 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344089 mask!3328) lt!344089 lt!344079 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!772776 (= lt!344089 (select (store (arr!20290 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!772776 (= lt!344079 (array!42394 (store (arr!20290 a!3186) i!1173 k0!2102) (size!20711 a!3186)))))

(declare-fun b!772777 () Bool)

(declare-fun res!522689 () Bool)

(assert (=> b!772777 (=> (not res!522689) (not e!430222))))

(assert (=> b!772777 (= res!522689 (validKeyInArray!0 k0!2102))))

(declare-fun b!772778 () Bool)

(declare-fun e!430224 () Bool)

(declare-fun e!430226 () Bool)

(assert (=> b!772778 (= e!430224 e!430226)))

(declare-fun res!522685 () Bool)

(assert (=> b!772778 (=> (not res!522685) (not e!430226))))

(declare-fun lt!344080 () SeekEntryResult!7897)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42393 (_ BitVec 32)) SeekEntryResult!7897)

(assert (=> b!772778 (= res!522685 (= (seekEntryOrOpen!0 (select (arr!20290 a!3186) j!159) a!3186 mask!3328) lt!344080))))

(assert (=> b!772778 (= lt!344080 (Found!7897 j!159))))

(declare-fun b!772779 () Bool)

(assert (=> b!772779 (= e!430222 e!430225)))

(declare-fun res!522690 () Bool)

(assert (=> b!772779 (=> (not res!522690) (not e!430225))))

(declare-fun lt!344081 () SeekEntryResult!7897)

(assert (=> b!772779 (= res!522690 (or (= lt!344081 (MissingZero!7897 i!1173)) (= lt!344081 (MissingVacant!7897 i!1173))))))

(assert (=> b!772779 (= lt!344081 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!772780 () Bool)

(declare-datatypes ((Unit!26624 0))(
  ( (Unit!26625) )
))
(declare-fun e!430223 () Unit!26624)

(declare-fun Unit!26626 () Unit!26624)

(assert (=> b!772780 (= e!430223 Unit!26626)))

(declare-fun lt!344088 () SeekEntryResult!7897)

(assert (=> b!772780 (= lt!344088 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20290 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!344086 () (_ BitVec 32))

(assert (=> b!772780 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344086 resIntermediateIndex!5 (select (arr!20290 a!3186) j!159) a!3186 mask!3328) (Found!7897 j!159))))

(declare-fun b!772781 () Bool)

(declare-fun res!522693 () Bool)

(assert (=> b!772781 (=> (not res!522693) (not e!430222))))

(assert (=> b!772781 (= res!522693 (and (= (size!20711 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20711 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20711 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!772782 () Bool)

(declare-fun e!430231 () Bool)

(assert (=> b!772782 (= e!430227 (not e!430231))))

(declare-fun res!522682 () Bool)

(assert (=> b!772782 (=> res!522682 e!430231)))

(get-info :version)

(assert (=> b!772782 (= res!522682 (or (not ((_ is Intermediate!7897) lt!344087)) (bvsge x!1131 (x!64925 lt!344087))))))

(assert (=> b!772782 e!430224))

(declare-fun res!522684 () Bool)

(assert (=> b!772782 (=> (not res!522684) (not e!430224))))

(assert (=> b!772782 (= res!522684 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344085 () Unit!26624)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42393 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26624)

(assert (=> b!772782 (= lt!344085 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!522691 () Bool)

(assert (=> start!67014 (=> (not res!522691) (not e!430222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67014 (= res!522691 (validMask!0 mask!3328))))

(assert (=> start!67014 e!430222))

(assert (=> start!67014 true))

(declare-fun array_inv!16064 (array!42393) Bool)

(assert (=> start!67014 (array_inv!16064 a!3186)))

(declare-fun b!772783 () Bool)

(assert (=> b!772783 (= e!430230 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20290 a!3186) j!159) a!3186 mask!3328) lt!344082))))

(declare-fun b!772784 () Bool)

(declare-fun res!522686 () Bool)

(assert (=> b!772784 (=> (not res!522686) (not e!430229))))

(assert (=> b!772784 (= res!522686 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20290 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772785 () Bool)

(declare-fun res!522695 () Bool)

(assert (=> b!772785 (=> (not res!522695) (not e!430225))))

(assert (=> b!772785 (= res!522695 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20711 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20711 a!3186))))))

(declare-fun b!772786 () Bool)

(declare-fun Unit!26627 () Unit!26624)

(assert (=> b!772786 (= e!430223 Unit!26627)))

(assert (=> b!772786 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344086 (select (arr!20290 a!3186) j!159) a!3186 mask!3328) lt!344082)))

(declare-fun b!772787 () Bool)

(assert (=> b!772787 (= e!430231 true)))

(declare-fun lt!344083 () Unit!26624)

(assert (=> b!772787 (= lt!344083 e!430223)))

(declare-fun c!85442 () Bool)

(assert (=> b!772787 (= c!85442 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772787 (= lt!344086 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!772788 () Bool)

(assert (=> b!772788 (= e!430226 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20290 a!3186) j!159) a!3186 mask!3328) lt!344080))))

(assert (= (and start!67014 res!522691) b!772781))

(assert (= (and b!772781 res!522693) b!772772))

(assert (= (and b!772772 res!522688) b!772777))

(assert (= (and b!772777 res!522689) b!772769))

(assert (= (and b!772769 res!522692) b!772779))

(assert (= (and b!772779 res!522690) b!772774))

(assert (= (and b!772774 res!522696) b!772773))

(assert (= (and b!772773 res!522697) b!772785))

(assert (= (and b!772785 res!522695) b!772775))

(assert (= (and b!772775 res!522694) b!772784))

(assert (= (and b!772784 res!522686) b!772770))

(assert (= (and b!772770 c!85443) b!772783))

(assert (= (and b!772770 (not c!85443)) b!772771))

(assert (= (and b!772770 res!522687) b!772776))

(assert (= (and b!772776 res!522683) b!772782))

(assert (= (and b!772782 res!522684) b!772778))

(assert (= (and b!772778 res!522685) b!772788))

(assert (= (and b!772782 (not res!522682)) b!772787))

(assert (= (and b!772787 c!85442) b!772786))

(assert (= (and b!772787 (not c!85442)) b!772780))

(declare-fun m!717647 () Bool)

(assert (=> b!772779 m!717647))

(declare-fun m!717649 () Bool)

(assert (=> b!772778 m!717649))

(assert (=> b!772778 m!717649))

(declare-fun m!717651 () Bool)

(assert (=> b!772778 m!717651))

(assert (=> b!772788 m!717649))

(assert (=> b!772788 m!717649))

(declare-fun m!717653 () Bool)

(assert (=> b!772788 m!717653))

(assert (=> b!772775 m!717649))

(assert (=> b!772775 m!717649))

(declare-fun m!717655 () Bool)

(assert (=> b!772775 m!717655))

(assert (=> b!772775 m!717655))

(assert (=> b!772775 m!717649))

(declare-fun m!717657 () Bool)

(assert (=> b!772775 m!717657))

(declare-fun m!717659 () Bool)

(assert (=> start!67014 m!717659))

(declare-fun m!717661 () Bool)

(assert (=> start!67014 m!717661))

(assert (=> b!772772 m!717649))

(assert (=> b!772772 m!717649))

(declare-fun m!717663 () Bool)

(assert (=> b!772772 m!717663))

(declare-fun m!717665 () Bool)

(assert (=> b!772787 m!717665))

(declare-fun m!717667 () Bool)

(assert (=> b!772782 m!717667))

(declare-fun m!717669 () Bool)

(assert (=> b!772782 m!717669))

(declare-fun m!717671 () Bool)

(assert (=> b!772769 m!717671))

(assert (=> b!772783 m!717649))

(assert (=> b!772783 m!717649))

(declare-fun m!717673 () Bool)

(assert (=> b!772783 m!717673))

(assert (=> b!772786 m!717649))

(assert (=> b!772786 m!717649))

(declare-fun m!717675 () Bool)

(assert (=> b!772786 m!717675))

(assert (=> b!772780 m!717649))

(assert (=> b!772780 m!717649))

(declare-fun m!717677 () Bool)

(assert (=> b!772780 m!717677))

(assert (=> b!772780 m!717649))

(declare-fun m!717679 () Bool)

(assert (=> b!772780 m!717679))

(assert (=> b!772771 m!717649))

(assert (=> b!772771 m!717649))

(assert (=> b!772771 m!717677))

(declare-fun m!717681 () Bool)

(assert (=> b!772784 m!717681))

(declare-fun m!717683 () Bool)

(assert (=> b!772773 m!717683))

(declare-fun m!717685 () Bool)

(assert (=> b!772776 m!717685))

(declare-fun m!717687 () Bool)

(assert (=> b!772776 m!717687))

(declare-fun m!717689 () Bool)

(assert (=> b!772776 m!717689))

(declare-fun m!717691 () Bool)

(assert (=> b!772776 m!717691))

(declare-fun m!717693 () Bool)

(assert (=> b!772776 m!717693))

(assert (=> b!772776 m!717687))

(declare-fun m!717695 () Bool)

(assert (=> b!772777 m!717695))

(declare-fun m!717697 () Bool)

(assert (=> b!772774 m!717697))

(check-sat (not b!772780) (not b!772772) (not start!67014) (not b!772777) (not b!772774) (not b!772775) (not b!772776) (not b!772787) (not b!772779) (not b!772769) (not b!772788) (not b!772778) (not b!772773) (not b!772771) (not b!772786) (not b!772783) (not b!772782))
(check-sat)
