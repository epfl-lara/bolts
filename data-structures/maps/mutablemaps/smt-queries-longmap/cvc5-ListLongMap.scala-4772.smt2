; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65710 () Bool)

(assert start!65710)

(declare-fun b!753157 () Bool)

(declare-fun e!420107 () Bool)

(declare-fun e!420109 () Bool)

(assert (=> b!753157 (= e!420107 e!420109)))

(declare-fun res!508857 () Bool)

(assert (=> b!753157 (=> (not res!508857) (not e!420109))))

(declare-datatypes ((SeekEntryResult!7635 0))(
  ( (MissingZero!7635 (index!32907 (_ BitVec 32))) (Found!7635 (index!32908 (_ BitVec 32))) (Intermediate!7635 (undefined!8447 Bool) (index!32909 (_ BitVec 32)) (x!63850 (_ BitVec 32))) (Undefined!7635) (MissingVacant!7635 (index!32910 (_ BitVec 32))) )
))
(declare-fun lt!335104 () SeekEntryResult!7635)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753157 (= res!508857 (or (= lt!335104 (MissingZero!7635 i!1173)) (= lt!335104 (MissingVacant!7635 i!1173))))))

(declare-datatypes ((array!41836 0))(
  ( (array!41837 (arr!20028 (Array (_ BitVec 32) (_ BitVec 64))) (size!20449 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41836)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41836 (_ BitVec 32)) SeekEntryResult!7635)

(assert (=> b!753157 (= lt!335104 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!753158 () Bool)

(declare-fun res!508848 () Bool)

(assert (=> b!753158 (=> (not res!508848) (not e!420107))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753158 (= res!508848 (validKeyInArray!0 (select (arr!20028 a!3186) j!159)))))

(declare-fun b!753159 () Bool)

(declare-fun e!420104 () Bool)

(declare-fun e!420114 () Bool)

(assert (=> b!753159 (= e!420104 (not e!420114))))

(declare-fun res!508859 () Bool)

(assert (=> b!753159 (=> res!508859 e!420114)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!335112 () SeekEntryResult!7635)

(assert (=> b!753159 (= res!508859 (or (not (is-Intermediate!7635 lt!335112)) (bvslt x!1131 (x!63850 lt!335112)) (not (= x!1131 (x!63850 lt!335112))) (not (= index!1321 (index!32909 lt!335112)))))))

(declare-fun e!420113 () Bool)

(assert (=> b!753159 e!420113))

(declare-fun res!508865 () Bool)

(assert (=> b!753159 (=> (not res!508865) (not e!420113))))

(declare-fun lt!335107 () SeekEntryResult!7635)

(declare-fun lt!335106 () SeekEntryResult!7635)

(assert (=> b!753159 (= res!508865 (= lt!335107 lt!335106))))

(assert (=> b!753159 (= lt!335106 (Found!7635 j!159))))

(assert (=> b!753159 (= lt!335107 (seekEntryOrOpen!0 (select (arr!20028 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41836 (_ BitVec 32)) Bool)

(assert (=> b!753159 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25942 0))(
  ( (Unit!25943) )
))
(declare-fun lt!335105 () Unit!25942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41836 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25942)

(assert (=> b!753159 (= lt!335105 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753160 () Bool)

(declare-fun e!420110 () Bool)

(declare-fun e!420112 () Bool)

(assert (=> b!753160 (= e!420110 e!420112)))

(declare-fun res!508858 () Bool)

(assert (=> b!753160 (=> res!508858 e!420112)))

(declare-fun lt!335109 () (_ BitVec 64))

(declare-fun lt!335111 () (_ BitVec 64))

(assert (=> b!753160 (= res!508858 (= lt!335109 lt!335111))))

(assert (=> b!753160 (= lt!335109 (select (store (arr!20028 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!753161 () Bool)

(declare-fun res!508860 () Bool)

(assert (=> b!753161 (=> (not res!508860) (not e!420109))))

(assert (=> b!753161 (= res!508860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!753163 () Bool)

(declare-fun res!508855 () Bool)

(declare-fun e!420106 () Bool)

(assert (=> b!753163 (=> (not res!508855) (not e!420106))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!753163 (= res!508855 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20028 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!753164 () Bool)

(declare-fun res!508852 () Bool)

(assert (=> b!753164 (=> (not res!508852) (not e!420109))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!753164 (= res!508852 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20449 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20449 a!3186))))))

(declare-fun b!753165 () Bool)

(assert (=> b!753165 (= e!420112 true)))

(declare-fun e!420108 () Bool)

(assert (=> b!753165 e!420108))

(declare-fun res!508850 () Bool)

(assert (=> b!753165 (=> (not res!508850) (not e!420108))))

(assert (=> b!753165 (= res!508850 (= lt!335109 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335113 () Unit!25942)

(declare-fun e!420105 () Unit!25942)

(assert (=> b!753165 (= lt!335113 e!420105)))

(declare-fun c!82536 () Bool)

(assert (=> b!753165 (= c!82536 (= lt!335109 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753166 () Bool)

(assert (=> b!753166 (= e!420109 e!420106)))

(declare-fun res!508856 () Bool)

(assert (=> b!753166 (=> (not res!508856) (not e!420106))))

(declare-fun lt!335114 () SeekEntryResult!7635)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41836 (_ BitVec 32)) SeekEntryResult!7635)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753166 (= res!508856 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20028 a!3186) j!159) mask!3328) (select (arr!20028 a!3186) j!159) a!3186 mask!3328) lt!335114))))

(assert (=> b!753166 (= lt!335114 (Intermediate!7635 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753167 () Bool)

(assert (=> b!753167 (= e!420114 e!420110)))

(declare-fun res!508866 () Bool)

(assert (=> b!753167 (=> res!508866 e!420110)))

(declare-fun lt!335110 () SeekEntryResult!7635)

(assert (=> b!753167 (= res!508866 (not (= lt!335110 lt!335106)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41836 (_ BitVec 32)) SeekEntryResult!7635)

(assert (=> b!753167 (= lt!335110 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20028 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753168 () Bool)

(declare-fun res!508851 () Bool)

(assert (=> b!753168 (=> (not res!508851) (not e!420108))))

(declare-fun lt!335103 () array!41836)

(assert (=> b!753168 (= res!508851 (= (seekEntryOrOpen!0 lt!335111 lt!335103 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335111 lt!335103 mask!3328)))))

(declare-fun e!420103 () Bool)

(declare-fun b!753169 () Bool)

(assert (=> b!753169 (= e!420103 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20028 a!3186) j!159) a!3186 mask!3328) lt!335114))))

(declare-fun b!753170 () Bool)

(assert (=> b!753170 (= e!420106 e!420104)))

(declare-fun res!508864 () Bool)

(assert (=> b!753170 (=> (not res!508864) (not e!420104))))

(declare-fun lt!335108 () SeekEntryResult!7635)

(assert (=> b!753170 (= res!508864 (= lt!335108 lt!335112))))

(assert (=> b!753170 (= lt!335112 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335111 lt!335103 mask!3328))))

(assert (=> b!753170 (= lt!335108 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335111 mask!3328) lt!335111 lt!335103 mask!3328))))

(assert (=> b!753170 (= lt!335111 (select (store (arr!20028 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!753170 (= lt!335103 (array!41837 (store (arr!20028 a!3186) i!1173 k!2102) (size!20449 a!3186)))))

(declare-fun res!508849 () Bool)

(assert (=> start!65710 (=> (not res!508849) (not e!420107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65710 (= res!508849 (validMask!0 mask!3328))))

(assert (=> start!65710 e!420107))

(assert (=> start!65710 true))

(declare-fun array_inv!15802 (array!41836) Bool)

(assert (=> start!65710 (array_inv!15802 a!3186)))

(declare-fun b!753162 () Bool)

(assert (=> b!753162 (= e!420103 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20028 a!3186) j!159) a!3186 mask!3328) (Found!7635 j!159)))))

(declare-fun b!753171 () Bool)

(declare-fun res!508862 () Bool)

(assert (=> b!753171 (=> (not res!508862) (not e!420107))))

(declare-fun arrayContainsKey!0 (array!41836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753171 (= res!508862 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753172 () Bool)

(assert (=> b!753172 (= e!420108 (= lt!335107 lt!335110))))

(declare-fun b!753173 () Bool)

(declare-fun Unit!25944 () Unit!25942)

(assert (=> b!753173 (= e!420105 Unit!25944)))

(declare-fun b!753174 () Bool)

(assert (=> b!753174 (= e!420113 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20028 a!3186) j!159) a!3186 mask!3328) lt!335106))))

(declare-fun b!753175 () Bool)

(declare-fun res!508853 () Bool)

(assert (=> b!753175 (=> (not res!508853) (not e!420106))))

(assert (=> b!753175 (= res!508853 e!420103)))

(declare-fun c!82535 () Bool)

(assert (=> b!753175 (= c!82535 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753176 () Bool)

(declare-fun res!508863 () Bool)

(assert (=> b!753176 (=> (not res!508863) (not e!420107))))

(assert (=> b!753176 (= res!508863 (validKeyInArray!0 k!2102))))

(declare-fun b!753177 () Bool)

(declare-fun res!508854 () Bool)

(assert (=> b!753177 (=> (not res!508854) (not e!420109))))

(declare-datatypes ((List!14083 0))(
  ( (Nil!14080) (Cons!14079 (h!15151 (_ BitVec 64)) (t!20406 List!14083)) )
))
(declare-fun arrayNoDuplicates!0 (array!41836 (_ BitVec 32) List!14083) Bool)

(assert (=> b!753177 (= res!508854 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14080))))

(declare-fun b!753178 () Bool)

(declare-fun Unit!25945 () Unit!25942)

(assert (=> b!753178 (= e!420105 Unit!25945)))

(assert (=> b!753178 false))

(declare-fun b!753179 () Bool)

(declare-fun res!508861 () Bool)

(assert (=> b!753179 (=> (not res!508861) (not e!420107))))

(assert (=> b!753179 (= res!508861 (and (= (size!20449 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20449 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20449 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65710 res!508849) b!753179))

(assert (= (and b!753179 res!508861) b!753158))

(assert (= (and b!753158 res!508848) b!753176))

(assert (= (and b!753176 res!508863) b!753171))

(assert (= (and b!753171 res!508862) b!753157))

(assert (= (and b!753157 res!508857) b!753161))

(assert (= (and b!753161 res!508860) b!753177))

(assert (= (and b!753177 res!508854) b!753164))

(assert (= (and b!753164 res!508852) b!753166))

(assert (= (and b!753166 res!508856) b!753163))

(assert (= (and b!753163 res!508855) b!753175))

(assert (= (and b!753175 c!82535) b!753169))

(assert (= (and b!753175 (not c!82535)) b!753162))

(assert (= (and b!753175 res!508853) b!753170))

(assert (= (and b!753170 res!508864) b!753159))

(assert (= (and b!753159 res!508865) b!753174))

(assert (= (and b!753159 (not res!508859)) b!753167))

(assert (= (and b!753167 (not res!508866)) b!753160))

(assert (= (and b!753160 (not res!508858)) b!753165))

(assert (= (and b!753165 c!82536) b!753178))

(assert (= (and b!753165 (not c!82536)) b!753173))

(assert (= (and b!753165 res!508850) b!753168))

(assert (= (and b!753168 res!508851) b!753172))

(declare-fun m!701989 () Bool)

(assert (=> b!753157 m!701989))

(declare-fun m!701991 () Bool)

(assert (=> start!65710 m!701991))

(declare-fun m!701993 () Bool)

(assert (=> start!65710 m!701993))

(declare-fun m!701995 () Bool)

(assert (=> b!753170 m!701995))

(declare-fun m!701997 () Bool)

(assert (=> b!753170 m!701997))

(declare-fun m!701999 () Bool)

(assert (=> b!753170 m!701999))

(declare-fun m!702001 () Bool)

(assert (=> b!753170 m!702001))

(assert (=> b!753170 m!701995))

(declare-fun m!702003 () Bool)

(assert (=> b!753170 m!702003))

(declare-fun m!702005 () Bool)

(assert (=> b!753158 m!702005))

(assert (=> b!753158 m!702005))

(declare-fun m!702007 () Bool)

(assert (=> b!753158 m!702007))

(assert (=> b!753162 m!702005))

(assert (=> b!753162 m!702005))

(declare-fun m!702009 () Bool)

(assert (=> b!753162 m!702009))

(assert (=> b!753167 m!702005))

(assert (=> b!753167 m!702005))

(assert (=> b!753167 m!702009))

(declare-fun m!702011 () Bool)

(assert (=> b!753177 m!702011))

(declare-fun m!702013 () Bool)

(assert (=> b!753176 m!702013))

(assert (=> b!753166 m!702005))

(assert (=> b!753166 m!702005))

(declare-fun m!702015 () Bool)

(assert (=> b!753166 m!702015))

(assert (=> b!753166 m!702015))

(assert (=> b!753166 m!702005))

(declare-fun m!702017 () Bool)

(assert (=> b!753166 m!702017))

(assert (=> b!753174 m!702005))

(assert (=> b!753174 m!702005))

(declare-fun m!702019 () Bool)

(assert (=> b!753174 m!702019))

(declare-fun m!702021 () Bool)

(assert (=> b!753163 m!702021))

(assert (=> b!753169 m!702005))

(assert (=> b!753169 m!702005))

(declare-fun m!702023 () Bool)

(assert (=> b!753169 m!702023))

(declare-fun m!702025 () Bool)

(assert (=> b!753161 m!702025))

(assert (=> b!753160 m!701999))

(declare-fun m!702027 () Bool)

(assert (=> b!753160 m!702027))

(assert (=> b!753159 m!702005))

(assert (=> b!753159 m!702005))

(declare-fun m!702029 () Bool)

(assert (=> b!753159 m!702029))

(declare-fun m!702031 () Bool)

(assert (=> b!753159 m!702031))

(declare-fun m!702033 () Bool)

(assert (=> b!753159 m!702033))

(declare-fun m!702035 () Bool)

(assert (=> b!753171 m!702035))

(declare-fun m!702037 () Bool)

(assert (=> b!753168 m!702037))

(declare-fun m!702039 () Bool)

(assert (=> b!753168 m!702039))

(push 1)

