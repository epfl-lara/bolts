; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66296 () Bool)

(assert start!66296)

(declare-fun b!763579 () Bool)

(declare-fun res!516678 () Bool)

(declare-fun e!425414 () Bool)

(assert (=> b!763579 (=> (not res!516678) (not e!425414))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42154 0))(
  ( (array!42155 (arr!20181 (Array (_ BitVec 32) (_ BitVec 64))) (size!20602 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42154)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!763579 (= res!516678 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20602 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20602 a!3186))))))

(declare-fun b!763580 () Bool)

(declare-fun res!516681 () Bool)

(assert (=> b!763580 (=> (not res!516681) (not e!425414))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42154 (_ BitVec 32)) Bool)

(assert (=> b!763580 (= res!516681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!763581 () Bool)

(declare-fun res!516680 () Bool)

(declare-fun e!425410 () Bool)

(assert (=> b!763581 (=> (not res!516680) (not e!425410))))

(declare-fun e!425413 () Bool)

(assert (=> b!763581 (= res!516680 e!425413)))

(declare-fun c!83838 () Bool)

(assert (=> b!763581 (= c!83838 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!516682 () Bool)

(declare-fun e!425411 () Bool)

(assert (=> start!66296 (=> (not res!516682) (not e!425411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66296 (= res!516682 (validMask!0 mask!3328))))

(assert (=> start!66296 e!425411))

(assert (=> start!66296 true))

(declare-fun array_inv!15955 (array!42154) Bool)

(assert (=> start!66296 (array_inv!15955 a!3186)))

(declare-fun b!763582 () Bool)

(assert (=> b!763582 (= e!425411 e!425414)))

(declare-fun res!516677 () Bool)

(assert (=> b!763582 (=> (not res!516677) (not e!425414))))

(declare-datatypes ((SeekEntryResult!7788 0))(
  ( (MissingZero!7788 (index!33519 (_ BitVec 32))) (Found!7788 (index!33520 (_ BitVec 32))) (Intermediate!7788 (undefined!8600 Bool) (index!33521 (_ BitVec 32)) (x!64449 (_ BitVec 32))) (Undefined!7788) (MissingVacant!7788 (index!33522 (_ BitVec 32))) )
))
(declare-fun lt!339872 () SeekEntryResult!7788)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!763582 (= res!516677 (or (= lt!339872 (MissingZero!7788 i!1173)) (= lt!339872 (MissingVacant!7788 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42154 (_ BitVec 32)) SeekEntryResult!7788)

(assert (=> b!763582 (= lt!339872 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!763583 () Bool)

(assert (=> b!763583 (= e!425414 e!425410)))

(declare-fun res!516687 () Bool)

(assert (=> b!763583 (=> (not res!516687) (not e!425410))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!339871 () SeekEntryResult!7788)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42154 (_ BitVec 32)) SeekEntryResult!7788)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!763583 (= res!516687 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20181 a!3186) j!159) mask!3328) (select (arr!20181 a!3186) j!159) a!3186 mask!3328) lt!339871))))

(assert (=> b!763583 (= lt!339871 (Intermediate!7788 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!763584 () Bool)

(declare-fun res!516676 () Bool)

(assert (=> b!763584 (=> (not res!516676) (not e!425410))))

(assert (=> b!763584 (= res!516676 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20181 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!763585 () Bool)

(assert (=> b!763585 (= e!425413 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20181 a!3186) j!159) a!3186 mask!3328) lt!339871))))

(declare-fun b!763586 () Bool)

(declare-fun res!516684 () Bool)

(assert (=> b!763586 (=> (not res!516684) (not e!425411))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!763586 (= res!516684 (validKeyInArray!0 k!2102))))

(declare-fun b!763587 () Bool)

(declare-fun res!516685 () Bool)

(assert (=> b!763587 (=> (not res!516685) (not e!425411))))

(declare-fun arrayContainsKey!0 (array!42154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!763587 (= res!516685 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!763588 () Bool)

(declare-fun res!516686 () Bool)

(assert (=> b!763588 (=> (not res!516686) (not e!425414))))

(declare-datatypes ((List!14236 0))(
  ( (Nil!14233) (Cons!14232 (h!15316 (_ BitVec 64)) (t!20559 List!14236)) )
))
(declare-fun arrayNoDuplicates!0 (array!42154 (_ BitVec 32) List!14236) Bool)

(assert (=> b!763588 (= res!516686 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14233))))

(declare-fun b!763589 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42154 (_ BitVec 32)) SeekEntryResult!7788)

(assert (=> b!763589 (= e!425413 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20181 a!3186) j!159) a!3186 mask!3328) (Found!7788 j!159)))))

(declare-fun b!763590 () Bool)

(declare-fun res!516683 () Bool)

(assert (=> b!763590 (=> (not res!516683) (not e!425411))))

(assert (=> b!763590 (= res!516683 (validKeyInArray!0 (select (arr!20181 a!3186) j!159)))))

(declare-fun b!763591 () Bool)

(declare-fun res!516679 () Bool)

(assert (=> b!763591 (=> (not res!516679) (not e!425411))))

(assert (=> b!763591 (= res!516679 (and (= (size!20602 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20602 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20602 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!763592 () Bool)

(assert (=> b!763592 (= e!425410 false)))

(declare-fun lt!339870 () array!42154)

(declare-fun lt!339874 () SeekEntryResult!7788)

(declare-fun lt!339873 () (_ BitVec 64))

(assert (=> b!763592 (= lt!339874 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339873 lt!339870 mask!3328))))

(declare-fun lt!339869 () SeekEntryResult!7788)

(assert (=> b!763592 (= lt!339869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339873 mask!3328) lt!339873 lt!339870 mask!3328))))

(assert (=> b!763592 (= lt!339873 (select (store (arr!20181 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!763592 (= lt!339870 (array!42155 (store (arr!20181 a!3186) i!1173 k!2102) (size!20602 a!3186)))))

(assert (= (and start!66296 res!516682) b!763591))

(assert (= (and b!763591 res!516679) b!763590))

(assert (= (and b!763590 res!516683) b!763586))

(assert (= (and b!763586 res!516684) b!763587))

(assert (= (and b!763587 res!516685) b!763582))

(assert (= (and b!763582 res!516677) b!763580))

(assert (= (and b!763580 res!516681) b!763588))

(assert (= (and b!763588 res!516686) b!763579))

(assert (= (and b!763579 res!516678) b!763583))

(assert (= (and b!763583 res!516687) b!763584))

(assert (= (and b!763584 res!516676) b!763581))

(assert (= (and b!763581 c!83838) b!763585))

(assert (= (and b!763581 (not c!83838)) b!763589))

(assert (= (and b!763581 res!516680) b!763592))

(declare-fun m!710111 () Bool)

(assert (=> b!763584 m!710111))

(declare-fun m!710113 () Bool)

(assert (=> b!763582 m!710113))

(declare-fun m!710115 () Bool)

(assert (=> b!763583 m!710115))

(assert (=> b!763583 m!710115))

(declare-fun m!710117 () Bool)

(assert (=> b!763583 m!710117))

(assert (=> b!763583 m!710117))

(assert (=> b!763583 m!710115))

(declare-fun m!710119 () Bool)

(assert (=> b!763583 m!710119))

(assert (=> b!763590 m!710115))

(assert (=> b!763590 m!710115))

(declare-fun m!710121 () Bool)

(assert (=> b!763590 m!710121))

(assert (=> b!763585 m!710115))

(assert (=> b!763585 m!710115))

(declare-fun m!710123 () Bool)

(assert (=> b!763585 m!710123))

(assert (=> b!763589 m!710115))

(assert (=> b!763589 m!710115))

(declare-fun m!710125 () Bool)

(assert (=> b!763589 m!710125))

(declare-fun m!710127 () Bool)

(assert (=> b!763586 m!710127))

(declare-fun m!710129 () Bool)

(assert (=> b!763592 m!710129))

(declare-fun m!710131 () Bool)

(assert (=> b!763592 m!710131))

(declare-fun m!710133 () Bool)

(assert (=> b!763592 m!710133))

(assert (=> b!763592 m!710131))

(declare-fun m!710135 () Bool)

(assert (=> b!763592 m!710135))

(declare-fun m!710137 () Bool)

(assert (=> b!763592 m!710137))

(declare-fun m!710139 () Bool)

(assert (=> b!763587 m!710139))

(declare-fun m!710141 () Bool)

(assert (=> start!66296 m!710141))

(declare-fun m!710143 () Bool)

(assert (=> start!66296 m!710143))

(declare-fun m!710145 () Bool)

(assert (=> b!763588 m!710145))

(declare-fun m!710147 () Bool)

(assert (=> b!763580 m!710147))

(push 1)

