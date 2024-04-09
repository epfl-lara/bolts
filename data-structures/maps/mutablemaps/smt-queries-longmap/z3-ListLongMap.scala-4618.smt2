; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64362 () Bool)

(assert start!64362)

(declare-fun b!723117 () Bool)

(declare-fun res!484861 () Bool)

(declare-fun e!405180 () Bool)

(assert (=> b!723117 (=> (not res!484861) (not e!405180))))

(declare-datatypes ((array!40896 0))(
  ( (array!40897 (arr!19567 (Array (_ BitVec 32) (_ BitVec 64))) (size!19988 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40896)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723117 (= res!484861 (validKeyInArray!0 (select (arr!19567 a!3186) j!159)))))

(declare-datatypes ((SeekEntryResult!7174 0))(
  ( (MissingZero!7174 (index!31063 (_ BitVec 32))) (Found!7174 (index!31064 (_ BitVec 32))) (Intermediate!7174 (undefined!7986 Bool) (index!31065 (_ BitVec 32)) (x!62088 (_ BitVec 32))) (Undefined!7174) (MissingVacant!7174 (index!31066 (_ BitVec 32))) )
))
(declare-fun lt!320570 () SeekEntryResult!7174)

(declare-fun b!723118 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!405178 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40896 (_ BitVec 32)) SeekEntryResult!7174)

(assert (=> b!723118 (= e!405178 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19567 a!3186) j!159) a!3186 mask!3328) lt!320570))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!723119 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40896 (_ BitVec 32)) SeekEntryResult!7174)

(assert (=> b!723119 (= e!405178 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19567 a!3186) j!159) a!3186 mask!3328) (Found!7174 j!159)))))

(declare-fun b!723120 () Bool)

(declare-fun res!484865 () Bool)

(assert (=> b!723120 (=> (not res!484865) (not e!405180))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723120 (= res!484865 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723121 () Bool)

(declare-fun res!484866 () Bool)

(declare-fun e!405182 () Bool)

(assert (=> b!723121 (=> (not res!484866) (not e!405182))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723121 (= res!484866 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19988 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19988 a!3186))))))

(declare-fun b!723122 () Bool)

(declare-fun e!405181 () Bool)

(declare-fun e!405183 () Bool)

(assert (=> b!723122 (= e!405181 e!405183)))

(declare-fun res!484859 () Bool)

(assert (=> b!723122 (=> (not res!484859) (not e!405183))))

(declare-fun lt!320568 () array!40896)

(declare-fun lt!320567 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723122 (= res!484859 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320567 mask!3328) lt!320567 lt!320568 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320567 lt!320568 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723122 (= lt!320567 (select (store (arr!19567 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!723122 (= lt!320568 (array!40897 (store (arr!19567 a!3186) i!1173 k0!2102) (size!19988 a!3186)))))

(declare-fun b!723123 () Bool)

(declare-fun res!484854 () Bool)

(assert (=> b!723123 (=> (not res!484854) (not e!405181))))

(assert (=> b!723123 (= res!484854 e!405178)))

(declare-fun c!79503 () Bool)

(assert (=> b!723123 (= c!79503 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723124 () Bool)

(assert (=> b!723124 (= e!405183 (not (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40896 (_ BitVec 32)) Bool)

(assert (=> b!723124 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!24666 0))(
  ( (Unit!24667) )
))
(declare-fun lt!320569 () Unit!24666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40896 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24666)

(assert (=> b!723124 (= lt!320569 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723125 () Bool)

(declare-fun res!484864 () Bool)

(assert (=> b!723125 (=> (not res!484864) (not e!405180))))

(assert (=> b!723125 (= res!484864 (and (= (size!19988 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19988 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19988 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!484856 () Bool)

(assert (=> start!64362 (=> (not res!484856) (not e!405180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64362 (= res!484856 (validMask!0 mask!3328))))

(assert (=> start!64362 e!405180))

(assert (=> start!64362 true))

(declare-fun array_inv!15341 (array!40896) Bool)

(assert (=> start!64362 (array_inv!15341 a!3186)))

(declare-fun b!723126 () Bool)

(assert (=> b!723126 (= e!405182 e!405181)))

(declare-fun res!484860 () Bool)

(assert (=> b!723126 (=> (not res!484860) (not e!405181))))

(assert (=> b!723126 (= res!484860 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19567 a!3186) j!159) mask!3328) (select (arr!19567 a!3186) j!159) a!3186 mask!3328) lt!320570))))

(assert (=> b!723126 (= lt!320570 (Intermediate!7174 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723127 () Bool)

(declare-fun res!484857 () Bool)

(assert (=> b!723127 (=> (not res!484857) (not e!405182))))

(declare-datatypes ((List!13622 0))(
  ( (Nil!13619) (Cons!13618 (h!14672 (_ BitVec 64)) (t!19945 List!13622)) )
))
(declare-fun arrayNoDuplicates!0 (array!40896 (_ BitVec 32) List!13622) Bool)

(assert (=> b!723127 (= res!484857 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13619))))

(declare-fun b!723128 () Bool)

(declare-fun res!484858 () Bool)

(assert (=> b!723128 (=> (not res!484858) (not e!405180))))

(assert (=> b!723128 (= res!484858 (validKeyInArray!0 k0!2102))))

(declare-fun b!723129 () Bool)

(assert (=> b!723129 (= e!405180 e!405182)))

(declare-fun res!484855 () Bool)

(assert (=> b!723129 (=> (not res!484855) (not e!405182))))

(declare-fun lt!320566 () SeekEntryResult!7174)

(assert (=> b!723129 (= res!484855 (or (= lt!320566 (MissingZero!7174 i!1173)) (= lt!320566 (MissingVacant!7174 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40896 (_ BitVec 32)) SeekEntryResult!7174)

(assert (=> b!723129 (= lt!320566 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!723130 () Bool)

(declare-fun res!484862 () Bool)

(assert (=> b!723130 (=> (not res!484862) (not e!405182))))

(assert (=> b!723130 (= res!484862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723131 () Bool)

(declare-fun res!484863 () Bool)

(assert (=> b!723131 (=> (not res!484863) (not e!405181))))

(assert (=> b!723131 (= res!484863 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19567 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64362 res!484856) b!723125))

(assert (= (and b!723125 res!484864) b!723117))

(assert (= (and b!723117 res!484861) b!723128))

(assert (= (and b!723128 res!484858) b!723120))

(assert (= (and b!723120 res!484865) b!723129))

(assert (= (and b!723129 res!484855) b!723130))

(assert (= (and b!723130 res!484862) b!723127))

(assert (= (and b!723127 res!484857) b!723121))

(assert (= (and b!723121 res!484866) b!723126))

(assert (= (and b!723126 res!484860) b!723131))

(assert (= (and b!723131 res!484863) b!723123))

(assert (= (and b!723123 c!79503) b!723118))

(assert (= (and b!723123 (not c!79503)) b!723119))

(assert (= (and b!723123 res!484854) b!723122))

(assert (= (and b!723122 res!484859) b!723124))

(declare-fun m!677671 () Bool)

(assert (=> b!723129 m!677671))

(declare-fun m!677673 () Bool)

(assert (=> b!723118 m!677673))

(assert (=> b!723118 m!677673))

(declare-fun m!677675 () Bool)

(assert (=> b!723118 m!677675))

(declare-fun m!677677 () Bool)

(assert (=> start!64362 m!677677))

(declare-fun m!677679 () Bool)

(assert (=> start!64362 m!677679))

(declare-fun m!677681 () Bool)

(assert (=> b!723122 m!677681))

(declare-fun m!677683 () Bool)

(assert (=> b!723122 m!677683))

(declare-fun m!677685 () Bool)

(assert (=> b!723122 m!677685))

(declare-fun m!677687 () Bool)

(assert (=> b!723122 m!677687))

(assert (=> b!723122 m!677681))

(declare-fun m!677689 () Bool)

(assert (=> b!723122 m!677689))

(assert (=> b!723117 m!677673))

(assert (=> b!723117 m!677673))

(declare-fun m!677691 () Bool)

(assert (=> b!723117 m!677691))

(declare-fun m!677693 () Bool)

(assert (=> b!723127 m!677693))

(assert (=> b!723119 m!677673))

(assert (=> b!723119 m!677673))

(declare-fun m!677695 () Bool)

(assert (=> b!723119 m!677695))

(assert (=> b!723126 m!677673))

(assert (=> b!723126 m!677673))

(declare-fun m!677697 () Bool)

(assert (=> b!723126 m!677697))

(assert (=> b!723126 m!677697))

(assert (=> b!723126 m!677673))

(declare-fun m!677699 () Bool)

(assert (=> b!723126 m!677699))

(declare-fun m!677701 () Bool)

(assert (=> b!723130 m!677701))

(declare-fun m!677703 () Bool)

(assert (=> b!723131 m!677703))

(declare-fun m!677705 () Bool)

(assert (=> b!723120 m!677705))

(declare-fun m!677707 () Bool)

(assert (=> b!723128 m!677707))

(declare-fun m!677709 () Bool)

(assert (=> b!723124 m!677709))

(declare-fun m!677711 () Bool)

(assert (=> b!723124 m!677711))

(check-sat (not b!723117) (not b!723124) (not start!64362) (not b!723120) (not b!723128) (not b!723122) (not b!723127) (not b!723118) (not b!723129) (not b!723119) (not b!723130) (not b!723126))
(check-sat)
