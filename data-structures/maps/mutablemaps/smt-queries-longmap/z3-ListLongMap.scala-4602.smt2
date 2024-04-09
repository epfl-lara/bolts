; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64206 () Bool)

(assert start!64206)

(declare-fun res!483028 () Bool)

(declare-fun e!404244 () Bool)

(assert (=> start!64206 (=> (not res!483028) (not e!404244))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64206 (= res!483028 (validMask!0 mask!3328))))

(assert (=> start!64206 e!404244))

(assert (=> start!64206 true))

(declare-datatypes ((array!40797 0))(
  ( (array!40798 (arr!19519 (Array (_ BitVec 32) (_ BitVec 64))) (size!19940 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40797)

(declare-fun array_inv!15293 (array!40797) Bool)

(assert (=> start!64206 (array_inv!15293 a!3186)))

(declare-fun b!720781 () Bool)

(declare-fun res!483023 () Bool)

(assert (=> b!720781 (=> (not res!483023) (not e!404244))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720781 (= res!483023 (validKeyInArray!0 (select (arr!19519 a!3186) j!159)))))

(declare-fun b!720782 () Bool)

(declare-fun e!404243 () Bool)

(declare-fun e!404242 () Bool)

(assert (=> b!720782 (= e!404243 e!404242)))

(declare-fun res!483029 () Bool)

(assert (=> b!720782 (=> (not res!483029) (not e!404242))))

(declare-datatypes ((SeekEntryResult!7126 0))(
  ( (MissingZero!7126 (index!30871 (_ BitVec 32))) (Found!7126 (index!30872 (_ BitVec 32))) (Intermediate!7126 (undefined!7938 Bool) (index!30873 (_ BitVec 32)) (x!61903 (_ BitVec 32))) (Undefined!7126) (MissingVacant!7126 (index!30874 (_ BitVec 32))) )
))
(declare-fun lt!319880 () SeekEntryResult!7126)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40797 (_ BitVec 32)) SeekEntryResult!7126)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720782 (= res!483029 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19519 a!3186) j!159) mask!3328) (select (arr!19519 a!3186) j!159) a!3186 mask!3328) lt!319880))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720782 (= lt!319880 (Intermediate!7126 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!720783 () Bool)

(declare-fun res!483022 () Bool)

(assert (=> b!720783 (=> (not res!483022) (not e!404242))))

(declare-fun e!404241 () Bool)

(assert (=> b!720783 (= res!483022 e!404241)))

(declare-fun c!79251 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!720783 (= c!79251 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720784 () Bool)

(assert (=> b!720784 (= e!404242 false)))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun lt!319878 () (_ BitVec 32))

(assert (=> b!720784 (= lt!319878 (toIndex!0 (select (store (arr!19519 a!3186) i!1173 k0!2102) j!159) mask!3328))))

(declare-fun b!720785 () Bool)

(declare-fun res!483020 () Bool)

(assert (=> b!720785 (=> (not res!483020) (not e!404244))))

(declare-fun arrayContainsKey!0 (array!40797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720785 (= res!483020 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!720786 () Bool)

(declare-fun res!483019 () Bool)

(assert (=> b!720786 (=> (not res!483019) (not e!404244))))

(assert (=> b!720786 (= res!483019 (and (= (size!19940 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19940 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19940 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720787 () Bool)

(declare-fun res!483021 () Bool)

(assert (=> b!720787 (=> (not res!483021) (not e!404242))))

(assert (=> b!720787 (= res!483021 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19519 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720788 () Bool)

(declare-fun res!483030 () Bool)

(assert (=> b!720788 (=> (not res!483030) (not e!404244))))

(assert (=> b!720788 (= res!483030 (validKeyInArray!0 k0!2102))))

(declare-fun b!720789 () Bool)

(declare-fun res!483026 () Bool)

(assert (=> b!720789 (=> (not res!483026) (not e!404243))))

(declare-datatypes ((List!13574 0))(
  ( (Nil!13571) (Cons!13570 (h!14621 (_ BitVec 64)) (t!19897 List!13574)) )
))
(declare-fun arrayNoDuplicates!0 (array!40797 (_ BitVec 32) List!13574) Bool)

(assert (=> b!720789 (= res!483026 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13571))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!720790 () Bool)

(assert (=> b!720790 (= e!404241 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19519 a!3186) j!159) a!3186 mask!3328) lt!319880))))

(declare-fun b!720791 () Bool)

(declare-fun res!483024 () Bool)

(assert (=> b!720791 (=> (not res!483024) (not e!404243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40797 (_ BitVec 32)) Bool)

(assert (=> b!720791 (= res!483024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720792 () Bool)

(declare-fun res!483025 () Bool)

(assert (=> b!720792 (=> (not res!483025) (not e!404243))))

(assert (=> b!720792 (= res!483025 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19940 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19940 a!3186))))))

(declare-fun b!720793 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40797 (_ BitVec 32)) SeekEntryResult!7126)

(assert (=> b!720793 (= e!404241 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19519 a!3186) j!159) a!3186 mask!3328) (Found!7126 j!159)))))

(declare-fun b!720794 () Bool)

(assert (=> b!720794 (= e!404244 e!404243)))

(declare-fun res!483027 () Bool)

(assert (=> b!720794 (=> (not res!483027) (not e!404243))))

(declare-fun lt!319879 () SeekEntryResult!7126)

(assert (=> b!720794 (= res!483027 (or (= lt!319879 (MissingZero!7126 i!1173)) (= lt!319879 (MissingVacant!7126 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40797 (_ BitVec 32)) SeekEntryResult!7126)

(assert (=> b!720794 (= lt!319879 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!64206 res!483028) b!720786))

(assert (= (and b!720786 res!483019) b!720781))

(assert (= (and b!720781 res!483023) b!720788))

(assert (= (and b!720788 res!483030) b!720785))

(assert (= (and b!720785 res!483020) b!720794))

(assert (= (and b!720794 res!483027) b!720791))

(assert (= (and b!720791 res!483024) b!720789))

(assert (= (and b!720789 res!483026) b!720792))

(assert (= (and b!720792 res!483025) b!720782))

(assert (= (and b!720782 res!483029) b!720787))

(assert (= (and b!720787 res!483021) b!720783))

(assert (= (and b!720783 c!79251) b!720790))

(assert (= (and b!720783 (not c!79251)) b!720793))

(assert (= (and b!720783 res!483022) b!720784))

(declare-fun m!675869 () Bool)

(assert (=> b!720785 m!675869))

(declare-fun m!675871 () Bool)

(assert (=> b!720790 m!675871))

(assert (=> b!720790 m!675871))

(declare-fun m!675873 () Bool)

(assert (=> b!720790 m!675873))

(declare-fun m!675875 () Bool)

(assert (=> b!720794 m!675875))

(assert (=> b!720793 m!675871))

(assert (=> b!720793 m!675871))

(declare-fun m!675877 () Bool)

(assert (=> b!720793 m!675877))

(declare-fun m!675879 () Bool)

(assert (=> b!720789 m!675879))

(declare-fun m!675881 () Bool)

(assert (=> start!64206 m!675881))

(declare-fun m!675883 () Bool)

(assert (=> start!64206 m!675883))

(declare-fun m!675885 () Bool)

(assert (=> b!720791 m!675885))

(declare-fun m!675887 () Bool)

(assert (=> b!720787 m!675887))

(assert (=> b!720782 m!675871))

(assert (=> b!720782 m!675871))

(declare-fun m!675889 () Bool)

(assert (=> b!720782 m!675889))

(assert (=> b!720782 m!675889))

(assert (=> b!720782 m!675871))

(declare-fun m!675891 () Bool)

(assert (=> b!720782 m!675891))

(assert (=> b!720781 m!675871))

(assert (=> b!720781 m!675871))

(declare-fun m!675893 () Bool)

(assert (=> b!720781 m!675893))

(declare-fun m!675895 () Bool)

(assert (=> b!720784 m!675895))

(declare-fun m!675897 () Bool)

(assert (=> b!720784 m!675897))

(assert (=> b!720784 m!675897))

(declare-fun m!675899 () Bool)

(assert (=> b!720784 m!675899))

(declare-fun m!675901 () Bool)

(assert (=> b!720788 m!675901))

(check-sat (not b!720789) (not b!720785) (not start!64206) (not b!720784) (not b!720791) (not b!720782) (not b!720793) (not b!720788) (not b!720781) (not b!720790) (not b!720794))
(check-sat)
