; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65300 () Bool)

(assert start!65300)

(declare-fun b!740845 () Bool)

(declare-fun e!414192 () Bool)

(declare-fun e!414188 () Bool)

(assert (=> b!740845 (= e!414192 e!414188)))

(declare-fun res!498352 () Bool)

(assert (=> b!740845 (=> (not res!498352) (not e!414188))))

(declare-datatypes ((array!41426 0))(
  ( (array!41427 (arr!19823 (Array (_ BitVec 32) (_ BitVec 64))) (size!20244 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41426)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7430 0))(
  ( (MissingZero!7430 (index!32087 (_ BitVec 32))) (Found!7430 (index!32088 (_ BitVec 32))) (Intermediate!7430 (undefined!8242 Bool) (index!32089 (_ BitVec 32)) (x!63093 (_ BitVec 32))) (Undefined!7430) (MissingVacant!7430 (index!32090 (_ BitVec 32))) )
))
(declare-fun lt!329185 () SeekEntryResult!7430)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41426 (_ BitVec 32)) SeekEntryResult!7430)

(assert (=> b!740845 (= res!498352 (= (seekEntryOrOpen!0 (select (arr!19823 a!3186) j!159) a!3186 mask!3328) lt!329185))))

(assert (=> b!740845 (= lt!329185 (Found!7430 j!159))))

(declare-fun b!740846 () Bool)

(declare-fun e!414186 () Bool)

(declare-fun e!414185 () Bool)

(assert (=> b!740846 (= e!414186 e!414185)))

(declare-fun res!498362 () Bool)

(assert (=> b!740846 (=> (not res!498362) (not e!414185))))

(declare-fun lt!329181 () SeekEntryResult!7430)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!740846 (= res!498362 (or (= lt!329181 (MissingZero!7430 i!1173)) (= lt!329181 (MissingVacant!7430 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!740846 (= lt!329181 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!740847 () Bool)

(declare-fun res!498353 () Bool)

(assert (=> b!740847 (=> (not res!498353) (not e!414186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740847 (= res!498353 (validKeyInArray!0 k!2102))))

(declare-fun b!740848 () Bool)

(declare-fun res!498357 () Bool)

(declare-fun e!414181 () Bool)

(assert (=> b!740848 (=> (not res!498357) (not e!414181))))

(declare-fun e!414187 () Bool)

(assert (=> b!740848 (= res!498357 e!414187)))

(declare-fun c!81629 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!740848 (= c!81629 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!498355 () Bool)

(assert (=> start!65300 (=> (not res!498355) (not e!414186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65300 (= res!498355 (validMask!0 mask!3328))))

(assert (=> start!65300 e!414186))

(assert (=> start!65300 true))

(declare-fun array_inv!15597 (array!41426) Bool)

(assert (=> start!65300 (array_inv!15597 a!3186)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!740849 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41426 (_ BitVec 32)) SeekEntryResult!7430)

(assert (=> b!740849 (= e!414188 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19823 a!3186) j!159) a!3186 mask!3328) lt!329185))))

(declare-fun b!740850 () Bool)

(declare-datatypes ((Unit!25338 0))(
  ( (Unit!25339) )
))
(declare-fun e!414190 () Unit!25338)

(declare-fun Unit!25340 () Unit!25338)

(assert (=> b!740850 (= e!414190 Unit!25340)))

(declare-fun lt!329182 () SeekEntryResult!7430)

(declare-fun lt!329188 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41426 (_ BitVec 32)) SeekEntryResult!7430)

(assert (=> b!740850 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329188 (select (arr!19823 a!3186) j!159) a!3186 mask!3328) lt!329182)))

(declare-fun b!740851 () Bool)

(declare-fun Unit!25341 () Unit!25338)

(assert (=> b!740851 (= e!414190 Unit!25341)))

(declare-fun lt!329179 () SeekEntryResult!7430)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!740851 (= lt!329179 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19823 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!329192 () SeekEntryResult!7430)

(assert (=> b!740851 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329188 resIntermediateIndex!5 (select (arr!19823 a!3186) j!159) a!3186 mask!3328) lt!329192)))

(declare-fun b!740852 () Bool)

(declare-fun res!498351 () Bool)

(assert (=> b!740852 (=> (not res!498351) (not e!414186))))

(assert (=> b!740852 (= res!498351 (validKeyInArray!0 (select (arr!19823 a!3186) j!159)))))

(declare-fun b!740853 () Bool)

(assert (=> b!740853 (= e!414187 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19823 a!3186) j!159) a!3186 mask!3328) lt!329182))))

(declare-fun b!740854 () Bool)

(declare-fun res!498360 () Bool)

(assert (=> b!740854 (=> (not res!498360) (not e!414181))))

(assert (=> b!740854 (= res!498360 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19823 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740855 () Bool)

(declare-fun res!498367 () Bool)

(declare-fun e!414182 () Bool)

(assert (=> b!740855 (=> res!498367 e!414182)))

(declare-fun e!414191 () Bool)

(assert (=> b!740855 (= res!498367 e!414191)))

(declare-fun c!81630 () Bool)

(declare-fun lt!329191 () Bool)

(assert (=> b!740855 (= c!81630 lt!329191)))

(declare-fun b!740856 () Bool)

(declare-fun e!414184 () Bool)

(assert (=> b!740856 (= e!414182 e!414184)))

(declare-fun res!498350 () Bool)

(assert (=> b!740856 (=> res!498350 e!414184)))

(assert (=> b!740856 (= res!498350 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun lt!329187 () (_ BitVec 64))

(declare-fun lt!329184 () array!41426)

(assert (=> b!740856 (= (seekEntryOrOpen!0 lt!329187 lt!329184 mask!3328) lt!329192)))

(declare-fun lt!329183 () Unit!25338)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41426 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25338)

(assert (=> b!740856 (= lt!329183 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!329188 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!740857 () Bool)

(declare-fun res!498359 () Bool)

(assert (=> b!740857 (=> (not res!498359) (not e!414186))))

(declare-fun arrayContainsKey!0 (array!41426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740857 (= res!498359 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740858 () Bool)

(assert (=> b!740858 (= e!414191 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329188 resIntermediateIndex!5 (select (arr!19823 a!3186) j!159) a!3186 mask!3328) lt!329192)))))

(declare-fun b!740859 () Bool)

(declare-fun res!498361 () Bool)

(assert (=> b!740859 (=> (not res!498361) (not e!414185))))

(declare-datatypes ((List!13878 0))(
  ( (Nil!13875) (Cons!13874 (h!14946 (_ BitVec 64)) (t!20201 List!13878)) )
))
(declare-fun arrayNoDuplicates!0 (array!41426 (_ BitVec 32) List!13878) Bool)

(assert (=> b!740859 (= res!498361 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13875))))

(declare-fun b!740860 () Bool)

(assert (=> b!740860 (= e!414184 (validKeyInArray!0 lt!329187))))

(declare-fun b!740861 () Bool)

(declare-fun res!498363 () Bool)

(assert (=> b!740861 (=> res!498363 e!414182)))

(declare-fun lt!329186 () SeekEntryResult!7430)

(assert (=> b!740861 (= res!498363 (not (= lt!329186 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329188 lt!329187 lt!329184 mask!3328))))))

(declare-fun b!740862 () Bool)

(declare-fun res!498366 () Bool)

(assert (=> b!740862 (=> (not res!498366) (not e!414185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41426 (_ BitVec 32)) Bool)

(assert (=> b!740862 (= res!498366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!740863 () Bool)

(declare-fun res!498369 () Bool)

(assert (=> b!740863 (=> (not res!498369) (not e!414185))))

(assert (=> b!740863 (= res!498369 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20244 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20244 a!3186))))))

(declare-fun b!740864 () Bool)

(declare-fun e!414180 () Bool)

(declare-fun e!414189 () Bool)

(assert (=> b!740864 (= e!414180 (not e!414189))))

(declare-fun res!498356 () Bool)

(assert (=> b!740864 (=> res!498356 e!414189)))

(declare-fun lt!329190 () SeekEntryResult!7430)

(assert (=> b!740864 (= res!498356 (or (not (is-Intermediate!7430 lt!329190)) (bvsge x!1131 (x!63093 lt!329190))))))

(assert (=> b!740864 (= lt!329192 (Found!7430 j!159))))

(assert (=> b!740864 e!414192))

(declare-fun res!498368 () Bool)

(assert (=> b!740864 (=> (not res!498368) (not e!414192))))

(assert (=> b!740864 (= res!498368 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!329180 () Unit!25338)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41426 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25338)

(assert (=> b!740864 (= lt!329180 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740865 () Bool)

(assert (=> b!740865 (= e!414191 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!329188 (select (arr!19823 a!3186) j!159) a!3186 mask!3328) lt!329182)))))

(declare-fun b!740866 () Bool)

(assert (=> b!740866 (= e!414185 e!414181)))

(declare-fun res!498354 () Bool)

(assert (=> b!740866 (=> (not res!498354) (not e!414181))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740866 (= res!498354 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19823 a!3186) j!159) mask!3328) (select (arr!19823 a!3186) j!159) a!3186 mask!3328) lt!329182))))

(assert (=> b!740866 (= lt!329182 (Intermediate!7430 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740867 () Bool)

(assert (=> b!740867 (= e!414187 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19823 a!3186) j!159) a!3186 mask!3328) (Found!7430 j!159)))))

(declare-fun b!740868 () Bool)

(assert (=> b!740868 (= e!414181 e!414180)))

(declare-fun res!498365 () Bool)

(assert (=> b!740868 (=> (not res!498365) (not e!414180))))

(assert (=> b!740868 (= res!498365 (= lt!329186 lt!329190))))

(assert (=> b!740868 (= lt!329190 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329187 lt!329184 mask!3328))))

(assert (=> b!740868 (= lt!329186 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329187 mask!3328) lt!329187 lt!329184 mask!3328))))

(assert (=> b!740868 (= lt!329187 (select (store (arr!19823 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!740868 (= lt!329184 (array!41427 (store (arr!19823 a!3186) i!1173 k!2102) (size!20244 a!3186)))))

(declare-fun b!740869 () Bool)

(assert (=> b!740869 (= e!414189 e!414182)))

(declare-fun res!498358 () Bool)

(assert (=> b!740869 (=> res!498358 e!414182)))

(assert (=> b!740869 (= res!498358 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!329188 #b00000000000000000000000000000000) (bvsge lt!329188 (size!20244 a!3186))))))

(declare-fun lt!329189 () Unit!25338)

(assert (=> b!740869 (= lt!329189 e!414190)))

(declare-fun c!81628 () Bool)

(assert (=> b!740869 (= c!81628 lt!329191)))

(assert (=> b!740869 (= lt!329191 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740869 (= lt!329188 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740870 () Bool)

(declare-fun res!498364 () Bool)

(assert (=> b!740870 (=> (not res!498364) (not e!414186))))

(assert (=> b!740870 (= res!498364 (and (= (size!20244 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20244 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20244 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65300 res!498355) b!740870))

(assert (= (and b!740870 res!498364) b!740852))

(assert (= (and b!740852 res!498351) b!740847))

(assert (= (and b!740847 res!498353) b!740857))

(assert (= (and b!740857 res!498359) b!740846))

(assert (= (and b!740846 res!498362) b!740862))

(assert (= (and b!740862 res!498366) b!740859))

(assert (= (and b!740859 res!498361) b!740863))

(assert (= (and b!740863 res!498369) b!740866))

(assert (= (and b!740866 res!498354) b!740854))

(assert (= (and b!740854 res!498360) b!740848))

(assert (= (and b!740848 c!81629) b!740853))

(assert (= (and b!740848 (not c!81629)) b!740867))

(assert (= (and b!740848 res!498357) b!740868))

(assert (= (and b!740868 res!498365) b!740864))

(assert (= (and b!740864 res!498368) b!740845))

(assert (= (and b!740845 res!498352) b!740849))

(assert (= (and b!740864 (not res!498356)) b!740869))

(assert (= (and b!740869 c!81628) b!740850))

(assert (= (and b!740869 (not c!81628)) b!740851))

(assert (= (and b!740869 (not res!498358)) b!740855))

(assert (= (and b!740855 c!81630) b!740865))

(assert (= (and b!740855 (not c!81630)) b!740858))

(assert (= (and b!740855 (not res!498367)) b!740861))

(assert (= (and b!740861 (not res!498363)) b!740856))

(assert (= (and b!740856 (not res!498350)) b!740860))

(declare-fun m!691957 () Bool)

(assert (=> start!65300 m!691957))

(declare-fun m!691959 () Bool)

(assert (=> start!65300 m!691959))

(declare-fun m!691961 () Bool)

(assert (=> b!740849 m!691961))

(assert (=> b!740849 m!691961))

(declare-fun m!691963 () Bool)

(assert (=> b!740849 m!691963))

(assert (=> b!740866 m!691961))

(assert (=> b!740866 m!691961))

(declare-fun m!691965 () Bool)

(assert (=> b!740866 m!691965))

(assert (=> b!740866 m!691965))

(assert (=> b!740866 m!691961))

(declare-fun m!691967 () Bool)

(assert (=> b!740866 m!691967))

(declare-fun m!691969 () Bool)

(assert (=> b!740862 m!691969))

(assert (=> b!740867 m!691961))

(assert (=> b!740867 m!691961))

(declare-fun m!691971 () Bool)

(assert (=> b!740867 m!691971))

(declare-fun m!691973 () Bool)

(assert (=> b!740846 m!691973))

(declare-fun m!691975 () Bool)

(assert (=> b!740856 m!691975))

(declare-fun m!691977 () Bool)

(assert (=> b!740856 m!691977))

(declare-fun m!691979 () Bool)

(assert (=> b!740861 m!691979))

(declare-fun m!691981 () Bool)

(assert (=> b!740860 m!691981))

(declare-fun m!691983 () Bool)

(assert (=> b!740857 m!691983))

(declare-fun m!691985 () Bool)

(assert (=> b!740869 m!691985))

(assert (=> b!740865 m!691961))

(assert (=> b!740865 m!691961))

(declare-fun m!691987 () Bool)

(assert (=> b!740865 m!691987))

(declare-fun m!691989 () Bool)

(assert (=> b!740868 m!691989))

(declare-fun m!691991 () Bool)

(assert (=> b!740868 m!691991))

(declare-fun m!691993 () Bool)

(assert (=> b!740868 m!691993))

(declare-fun m!691995 () Bool)

(assert (=> b!740868 m!691995))

(assert (=> b!740868 m!691989))

(declare-fun m!691997 () Bool)

(assert (=> b!740868 m!691997))

(assert (=> b!740851 m!691961))

(assert (=> b!740851 m!691961))

(assert (=> b!740851 m!691971))

(assert (=> b!740851 m!691961))

(declare-fun m!691999 () Bool)

(assert (=> b!740851 m!691999))

(declare-fun m!692001 () Bool)

(assert (=> b!740847 m!692001))

(assert (=> b!740853 m!691961))

(assert (=> b!740853 m!691961))

(declare-fun m!692003 () Bool)

(assert (=> b!740853 m!692003))

(assert (=> b!740850 m!691961))

(assert (=> b!740850 m!691961))

(assert (=> b!740850 m!691987))

(assert (=> b!740858 m!691961))

(assert (=> b!740858 m!691961))

(assert (=> b!740858 m!691999))

(assert (=> b!740852 m!691961))

(assert (=> b!740852 m!691961))

(declare-fun m!692005 () Bool)

(assert (=> b!740852 m!692005))

(declare-fun m!692007 () Bool)

(assert (=> b!740864 m!692007))

(declare-fun m!692009 () Bool)

(assert (=> b!740864 m!692009))

(assert (=> b!740845 m!691961))

(assert (=> b!740845 m!691961))

(declare-fun m!692011 () Bool)

(assert (=> b!740845 m!692011))

(declare-fun m!692013 () Bool)

(assert (=> b!740854 m!692013))

(declare-fun m!692015 () Bool)

(assert (=> b!740859 m!692015))

(push 1)

