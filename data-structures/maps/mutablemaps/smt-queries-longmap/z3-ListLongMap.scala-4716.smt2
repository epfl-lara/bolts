; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65376 () Bool)

(assert start!65376)

(declare-fun b!742870 () Bool)

(declare-fun e!415146 () Bool)

(declare-fun e!415141 () Bool)

(assert (=> b!742870 (= e!415146 e!415141)))

(declare-fun res!500146 () Bool)

(assert (=> b!742870 (=> (not res!500146) (not e!415141))))

(declare-datatypes ((array!41502 0))(
  ( (array!41503 (arr!19861 (Array (_ BitVec 32) (_ BitVec 64))) (size!20282 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41502)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7468 0))(
  ( (MissingZero!7468 (index!32239 (_ BitVec 32))) (Found!7468 (index!32240 (_ BitVec 32))) (Intermediate!7468 (undefined!8280 Bool) (index!32241 (_ BitVec 32)) (x!63235 (_ BitVec 32))) (Undefined!7468) (MissingVacant!7468 (index!32242 (_ BitVec 32))) )
))
(declare-fun lt!330034 () SeekEntryResult!7468)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41502 (_ BitVec 32)) SeekEntryResult!7468)

(assert (=> b!742870 (= res!500146 (= (seekEntryOrOpen!0 (select (arr!19861 a!3186) j!159) a!3186 mask!3328) lt!330034))))

(assert (=> b!742870 (= lt!330034 (Found!7468 j!159))))

(declare-fun b!742871 () Bool)

(declare-fun e!415138 () Bool)

(assert (=> b!742871 (= e!415138 true)))

(declare-fun lt!330038 () array!41502)

(declare-fun lt!330036 () (_ BitVec 64))

(declare-fun lt!330030 () SeekEntryResult!7468)

(assert (=> b!742871 (= lt!330030 (seekEntryOrOpen!0 lt!330036 lt!330038 mask!3328))))

(declare-fun b!742872 () Bool)

(declare-fun res!500147 () Bool)

(declare-fun e!415145 () Bool)

(assert (=> b!742872 (=> (not res!500147) (not e!415145))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742872 (= res!500147 (validKeyInArray!0 k0!2102))))

(declare-fun b!742873 () Bool)

(declare-fun res!500158 () Bool)

(declare-fun e!415140 () Bool)

(assert (=> b!742873 (=> (not res!500158) (not e!415140))))

(declare-fun e!415142 () Bool)

(assert (=> b!742873 (= res!500158 e!415142)))

(declare-fun c!81744 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742873 (= c!81744 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742874 () Bool)

(declare-fun res!500148 () Bool)

(assert (=> b!742874 (=> res!500148 e!415138)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41502 (_ BitVec 32)) SeekEntryResult!7468)

(assert (=> b!742874 (= res!500148 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19861 a!3186) j!159) a!3186 mask!3328) (Found!7468 j!159))))))

(declare-fun b!742875 () Bool)

(declare-fun res!500151 () Bool)

(assert (=> b!742875 (=> (not res!500151) (not e!415145))))

(declare-fun arrayContainsKey!0 (array!41502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742875 (= res!500151 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742876 () Bool)

(declare-fun e!415144 () Bool)

(assert (=> b!742876 (= e!415144 (not e!415138))))

(declare-fun res!500159 () Bool)

(assert (=> b!742876 (=> res!500159 e!415138)))

(declare-fun lt!330037 () SeekEntryResult!7468)

(get-info :version)

(assert (=> b!742876 (= res!500159 (or (not ((_ is Intermediate!7468) lt!330037)) (bvslt x!1131 (x!63235 lt!330037)) (not (= x!1131 (x!63235 lt!330037))) (not (= index!1321 (index!32241 lt!330037)))))))

(assert (=> b!742876 e!415146))

(declare-fun res!500155 () Bool)

(assert (=> b!742876 (=> (not res!500155) (not e!415146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41502 (_ BitVec 32)) Bool)

(assert (=> b!742876 (= res!500155 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25416 0))(
  ( (Unit!25417) )
))
(declare-fun lt!330035 () Unit!25416)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41502 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25416)

(assert (=> b!742876 (= lt!330035 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742877 () Bool)

(declare-fun res!500153 () Bool)

(declare-fun e!415143 () Bool)

(assert (=> b!742877 (=> (not res!500153) (not e!415143))))

(declare-datatypes ((List!13916 0))(
  ( (Nil!13913) (Cons!13912 (h!14984 (_ BitVec 64)) (t!20239 List!13916)) )
))
(declare-fun arrayNoDuplicates!0 (array!41502 (_ BitVec 32) List!13916) Bool)

(assert (=> b!742877 (= res!500153 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13913))))

(declare-fun b!742878 () Bool)

(declare-fun res!500160 () Bool)

(assert (=> b!742878 (=> (not res!500160) (not e!415140))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!742878 (= res!500160 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19861 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!500154 () Bool)

(assert (=> start!65376 (=> (not res!500154) (not e!415145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65376 (= res!500154 (validMask!0 mask!3328))))

(assert (=> start!65376 e!415145))

(assert (=> start!65376 true))

(declare-fun array_inv!15635 (array!41502) Bool)

(assert (=> start!65376 (array_inv!15635 a!3186)))

(declare-fun b!742879 () Bool)

(assert (=> b!742879 (= e!415140 e!415144)))

(declare-fun res!500157 () Bool)

(assert (=> b!742879 (=> (not res!500157) (not e!415144))))

(declare-fun lt!330031 () SeekEntryResult!7468)

(assert (=> b!742879 (= res!500157 (= lt!330031 lt!330037))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41502 (_ BitVec 32)) SeekEntryResult!7468)

(assert (=> b!742879 (= lt!330037 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330036 lt!330038 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742879 (= lt!330031 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330036 mask!3328) lt!330036 lt!330038 mask!3328))))

(assert (=> b!742879 (= lt!330036 (select (store (arr!19861 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!742879 (= lt!330038 (array!41503 (store (arr!19861 a!3186) i!1173 k0!2102) (size!20282 a!3186)))))

(declare-fun b!742880 () Bool)

(declare-fun res!500145 () Bool)

(assert (=> b!742880 (=> (not res!500145) (not e!415143))))

(assert (=> b!742880 (= res!500145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!330032 () SeekEntryResult!7468)

(declare-fun b!742881 () Bool)

(assert (=> b!742881 (= e!415142 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19861 a!3186) j!159) a!3186 mask!3328) lt!330032))))

(declare-fun b!742882 () Bool)

(declare-fun res!500143 () Bool)

(assert (=> b!742882 (=> (not res!500143) (not e!415143))))

(assert (=> b!742882 (= res!500143 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20282 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20282 a!3186))))))

(declare-fun b!742883 () Bool)

(declare-fun res!500150 () Bool)

(assert (=> b!742883 (=> (not res!500150) (not e!415145))))

(assert (=> b!742883 (= res!500150 (validKeyInArray!0 (select (arr!19861 a!3186) j!159)))))

(declare-fun b!742884 () Bool)

(assert (=> b!742884 (= e!415143 e!415140)))

(declare-fun res!500156 () Bool)

(assert (=> b!742884 (=> (not res!500156) (not e!415140))))

(assert (=> b!742884 (= res!500156 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19861 a!3186) j!159) mask!3328) (select (arr!19861 a!3186) j!159) a!3186 mask!3328) lt!330032))))

(assert (=> b!742884 (= lt!330032 (Intermediate!7468 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742885 () Bool)

(declare-fun res!500144 () Bool)

(assert (=> b!742885 (=> (not res!500144) (not e!415145))))

(assert (=> b!742885 (= res!500144 (and (= (size!20282 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20282 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20282 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742886 () Bool)

(assert (=> b!742886 (= e!415142 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19861 a!3186) j!159) a!3186 mask!3328) (Found!7468 j!159)))))

(declare-fun b!742887 () Bool)

(declare-fun res!500152 () Bool)

(assert (=> b!742887 (=> res!500152 e!415138)))

(assert (=> b!742887 (= res!500152 (or (not (= (select (store (arr!19861 a!3186) i!1173 k0!2102) index!1321) lt!330036)) (undefined!8280 lt!330037)))))

(declare-fun b!742888 () Bool)

(assert (=> b!742888 (= e!415141 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19861 a!3186) j!159) a!3186 mask!3328) lt!330034))))

(declare-fun b!742889 () Bool)

(assert (=> b!742889 (= e!415145 e!415143)))

(declare-fun res!500149 () Bool)

(assert (=> b!742889 (=> (not res!500149) (not e!415143))))

(declare-fun lt!330033 () SeekEntryResult!7468)

(assert (=> b!742889 (= res!500149 (or (= lt!330033 (MissingZero!7468 i!1173)) (= lt!330033 (MissingVacant!7468 i!1173))))))

(assert (=> b!742889 (= lt!330033 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!65376 res!500154) b!742885))

(assert (= (and b!742885 res!500144) b!742883))

(assert (= (and b!742883 res!500150) b!742872))

(assert (= (and b!742872 res!500147) b!742875))

(assert (= (and b!742875 res!500151) b!742889))

(assert (= (and b!742889 res!500149) b!742880))

(assert (= (and b!742880 res!500145) b!742877))

(assert (= (and b!742877 res!500153) b!742882))

(assert (= (and b!742882 res!500143) b!742884))

(assert (= (and b!742884 res!500156) b!742878))

(assert (= (and b!742878 res!500160) b!742873))

(assert (= (and b!742873 c!81744) b!742881))

(assert (= (and b!742873 (not c!81744)) b!742886))

(assert (= (and b!742873 res!500158) b!742879))

(assert (= (and b!742879 res!500157) b!742876))

(assert (= (and b!742876 res!500155) b!742870))

(assert (= (and b!742870 res!500146) b!742888))

(assert (= (and b!742876 (not res!500159)) b!742874))

(assert (= (and b!742874 (not res!500148)) b!742887))

(assert (= (and b!742887 (not res!500152)) b!742871))

(declare-fun m!693741 () Bool)

(assert (=> start!65376 m!693741))

(declare-fun m!693743 () Bool)

(assert (=> start!65376 m!693743))

(declare-fun m!693745 () Bool)

(assert (=> b!742876 m!693745))

(declare-fun m!693747 () Bool)

(assert (=> b!742876 m!693747))

(declare-fun m!693749 () Bool)

(assert (=> b!742874 m!693749))

(assert (=> b!742874 m!693749))

(declare-fun m!693751 () Bool)

(assert (=> b!742874 m!693751))

(declare-fun m!693753 () Bool)

(assert (=> b!742880 m!693753))

(declare-fun m!693755 () Bool)

(assert (=> b!742871 m!693755))

(declare-fun m!693757 () Bool)

(assert (=> b!742889 m!693757))

(declare-fun m!693759 () Bool)

(assert (=> b!742887 m!693759))

(declare-fun m!693761 () Bool)

(assert (=> b!742887 m!693761))

(assert (=> b!742884 m!693749))

(assert (=> b!742884 m!693749))

(declare-fun m!693763 () Bool)

(assert (=> b!742884 m!693763))

(assert (=> b!742884 m!693763))

(assert (=> b!742884 m!693749))

(declare-fun m!693765 () Bool)

(assert (=> b!742884 m!693765))

(declare-fun m!693767 () Bool)

(assert (=> b!742879 m!693767))

(declare-fun m!693769 () Bool)

(assert (=> b!742879 m!693769))

(assert (=> b!742879 m!693759))

(declare-fun m!693771 () Bool)

(assert (=> b!742879 m!693771))

(assert (=> b!742879 m!693769))

(declare-fun m!693773 () Bool)

(assert (=> b!742879 m!693773))

(assert (=> b!742870 m!693749))

(assert (=> b!742870 m!693749))

(declare-fun m!693775 () Bool)

(assert (=> b!742870 m!693775))

(declare-fun m!693777 () Bool)

(assert (=> b!742877 m!693777))

(assert (=> b!742888 m!693749))

(assert (=> b!742888 m!693749))

(declare-fun m!693779 () Bool)

(assert (=> b!742888 m!693779))

(declare-fun m!693781 () Bool)

(assert (=> b!742878 m!693781))

(assert (=> b!742886 m!693749))

(assert (=> b!742886 m!693749))

(assert (=> b!742886 m!693751))

(assert (=> b!742883 m!693749))

(assert (=> b!742883 m!693749))

(declare-fun m!693783 () Bool)

(assert (=> b!742883 m!693783))

(declare-fun m!693785 () Bool)

(assert (=> b!742872 m!693785))

(declare-fun m!693787 () Bool)

(assert (=> b!742875 m!693787))

(assert (=> b!742881 m!693749))

(assert (=> b!742881 m!693749))

(declare-fun m!693789 () Bool)

(assert (=> b!742881 m!693789))

(check-sat (not b!742889) (not b!742875) (not b!742877) (not b!742879) (not b!742874) (not b!742881) (not b!742872) (not b!742870) (not b!742884) (not start!65376) (not b!742883) (not b!742888) (not b!742876) (not b!742886) (not b!742880) (not b!742871))
(check-sat)
