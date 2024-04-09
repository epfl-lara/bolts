; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64212 () Bool)

(assert start!64212)

(declare-fun b!720907 () Bool)

(declare-fun res!483128 () Bool)

(declare-fun e!404287 () Bool)

(assert (=> b!720907 (=> (not res!483128) (not e!404287))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720907 (= res!483128 (validKeyInArray!0 k0!2102))))

(declare-fun b!720908 () Bool)

(declare-fun res!483136 () Bool)

(assert (=> b!720908 (=> (not res!483136) (not e!404287))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!40803 0))(
  ( (array!40804 (arr!19522 (Array (_ BitVec 32) (_ BitVec 64))) (size!19943 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40803)

(assert (=> b!720908 (= res!483136 (and (= (size!19943 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19943 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19943 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720909 () Bool)

(declare-fun e!404289 () Bool)

(assert (=> b!720909 (= e!404287 e!404289)))

(declare-fun res!483127 () Bool)

(assert (=> b!720909 (=> (not res!483127) (not e!404289))))

(declare-datatypes ((SeekEntryResult!7129 0))(
  ( (MissingZero!7129 (index!30883 (_ BitVec 32))) (Found!7129 (index!30884 (_ BitVec 32))) (Intermediate!7129 (undefined!7941 Bool) (index!30885 (_ BitVec 32)) (x!61914 (_ BitVec 32))) (Undefined!7129) (MissingVacant!7129 (index!30886 (_ BitVec 32))) )
))
(declare-fun lt!319906 () SeekEntryResult!7129)

(assert (=> b!720909 (= res!483127 (or (= lt!319906 (MissingZero!7129 i!1173)) (= lt!319906 (MissingVacant!7129 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40803 (_ BitVec 32)) SeekEntryResult!7129)

(assert (=> b!720909 (= lt!319906 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!720910 () Bool)

(declare-fun e!404288 () Bool)

(assert (=> b!720910 (= e!404289 e!404288)))

(declare-fun res!483132 () Bool)

(assert (=> b!720910 (=> (not res!483132) (not e!404288))))

(declare-fun lt!319905 () SeekEntryResult!7129)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40803 (_ BitVec 32)) SeekEntryResult!7129)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720910 (= res!483132 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19522 a!3186) j!159) mask!3328) (select (arr!19522 a!3186) j!159) a!3186 mask!3328) lt!319905))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720910 (= lt!319905 (Intermediate!7129 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!483130 () Bool)

(assert (=> start!64212 (=> (not res!483130) (not e!404287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64212 (= res!483130 (validMask!0 mask!3328))))

(assert (=> start!64212 e!404287))

(assert (=> start!64212 true))

(declare-fun array_inv!15296 (array!40803) Bool)

(assert (=> start!64212 (array_inv!15296 a!3186)))

(declare-fun b!720911 () Bool)

(declare-fun res!483135 () Bool)

(assert (=> b!720911 (=> (not res!483135) (not e!404289))))

(declare-datatypes ((List!13577 0))(
  ( (Nil!13574) (Cons!13573 (h!14624 (_ BitVec 64)) (t!19900 List!13577)) )
))
(declare-fun arrayNoDuplicates!0 (array!40803 (_ BitVec 32) List!13577) Bool)

(assert (=> b!720911 (= res!483135 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13574))))

(declare-fun b!720912 () Bool)

(declare-fun res!483129 () Bool)

(assert (=> b!720912 (=> (not res!483129) (not e!404287))))

(declare-fun arrayContainsKey!0 (array!40803 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720912 (= res!483129 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!720913 () Bool)

(declare-fun res!483134 () Bool)

(assert (=> b!720913 (=> (not res!483134) (not e!404288))))

(declare-fun e!404285 () Bool)

(assert (=> b!720913 (= res!483134 e!404285)))

(declare-fun c!79260 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!720913 (= c!79260 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720914 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40803 (_ BitVec 32)) SeekEntryResult!7129)

(assert (=> b!720914 (= e!404285 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19522 a!3186) j!159) a!3186 mask!3328) (Found!7129 j!159)))))

(declare-fun b!720915 () Bool)

(declare-fun res!483131 () Bool)

(assert (=> b!720915 (=> (not res!483131) (not e!404289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40803 (_ BitVec 32)) Bool)

(assert (=> b!720915 (= res!483131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720916 () Bool)

(declare-fun lt!319907 () (_ BitVec 32))

(assert (=> b!720916 (= e!404288 (and (bvsge mask!3328 #b00000000000000000000000000000000) (or (bvslt lt!319907 #b00000000000000000000000000000000) (bvsge lt!319907 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(assert (=> b!720916 (= lt!319907 (toIndex!0 (select (store (arr!19522 a!3186) i!1173 k0!2102) j!159) mask!3328))))

(declare-fun b!720917 () Bool)

(declare-fun res!483137 () Bool)

(assert (=> b!720917 (=> (not res!483137) (not e!404289))))

(assert (=> b!720917 (= res!483137 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19943 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19943 a!3186))))))

(declare-fun b!720918 () Bool)

(assert (=> b!720918 (= e!404285 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19522 a!3186) j!159) a!3186 mask!3328) lt!319905))))

(declare-fun b!720919 () Bool)

(declare-fun res!483138 () Bool)

(assert (=> b!720919 (=> (not res!483138) (not e!404288))))

(assert (=> b!720919 (= res!483138 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19522 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720920 () Bool)

(declare-fun res!483133 () Bool)

(assert (=> b!720920 (=> (not res!483133) (not e!404287))))

(assert (=> b!720920 (= res!483133 (validKeyInArray!0 (select (arr!19522 a!3186) j!159)))))

(assert (= (and start!64212 res!483130) b!720908))

(assert (= (and b!720908 res!483136) b!720920))

(assert (= (and b!720920 res!483133) b!720907))

(assert (= (and b!720907 res!483128) b!720912))

(assert (= (and b!720912 res!483129) b!720909))

(assert (= (and b!720909 res!483127) b!720915))

(assert (= (and b!720915 res!483131) b!720911))

(assert (= (and b!720911 res!483135) b!720917))

(assert (= (and b!720917 res!483137) b!720910))

(assert (= (and b!720910 res!483132) b!720919))

(assert (= (and b!720919 res!483138) b!720913))

(assert (= (and b!720913 c!79260) b!720918))

(assert (= (and b!720913 (not c!79260)) b!720914))

(assert (= (and b!720913 res!483134) b!720916))

(declare-fun m!675971 () Bool)

(assert (=> b!720918 m!675971))

(assert (=> b!720918 m!675971))

(declare-fun m!675973 () Bool)

(assert (=> b!720918 m!675973))

(declare-fun m!675975 () Bool)

(assert (=> b!720909 m!675975))

(declare-fun m!675977 () Bool)

(assert (=> b!720911 m!675977))

(assert (=> b!720914 m!675971))

(assert (=> b!720914 m!675971))

(declare-fun m!675979 () Bool)

(assert (=> b!720914 m!675979))

(declare-fun m!675981 () Bool)

(assert (=> b!720919 m!675981))

(declare-fun m!675983 () Bool)

(assert (=> b!720916 m!675983))

(declare-fun m!675985 () Bool)

(assert (=> b!720916 m!675985))

(assert (=> b!720916 m!675985))

(declare-fun m!675987 () Bool)

(assert (=> b!720916 m!675987))

(assert (=> b!720920 m!675971))

(assert (=> b!720920 m!675971))

(declare-fun m!675989 () Bool)

(assert (=> b!720920 m!675989))

(declare-fun m!675991 () Bool)

(assert (=> b!720912 m!675991))

(declare-fun m!675993 () Bool)

(assert (=> start!64212 m!675993))

(declare-fun m!675995 () Bool)

(assert (=> start!64212 m!675995))

(declare-fun m!675997 () Bool)

(assert (=> b!720915 m!675997))

(assert (=> b!720910 m!675971))

(assert (=> b!720910 m!675971))

(declare-fun m!675999 () Bool)

(assert (=> b!720910 m!675999))

(assert (=> b!720910 m!675999))

(assert (=> b!720910 m!675971))

(declare-fun m!676001 () Bool)

(assert (=> b!720910 m!676001))

(declare-fun m!676003 () Bool)

(assert (=> b!720907 m!676003))

(check-sat (not b!720918) (not b!720909) (not b!720914) (not b!720916) (not start!64212) (not b!720915) (not b!720910) (not b!720920) (not b!720911) (not b!720912) (not b!720907))
(check-sat)
(get-model)

(declare-fun d!99119 () Bool)

(declare-fun e!404321 () Bool)

(assert (=> d!99119 e!404321))

(declare-fun c!79272 () Bool)

(declare-fun lt!319927 () SeekEntryResult!7129)

(get-info :version)

(assert (=> d!99119 (= c!79272 (and ((_ is Intermediate!7129) lt!319927) (undefined!7941 lt!319927)))))

(declare-fun e!404325 () SeekEntryResult!7129)

(assert (=> d!99119 (= lt!319927 e!404325)))

(declare-fun c!79274 () Bool)

(assert (=> d!99119 (= c!79274 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!319928 () (_ BitVec 64))

(assert (=> d!99119 (= lt!319928 (select (arr!19522 a!3186) index!1321))))

(assert (=> d!99119 (validMask!0 mask!3328)))

(assert (=> d!99119 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19522 a!3186) j!159) a!3186 mask!3328) lt!319927)))

(declare-fun b!720987 () Bool)

(declare-fun e!404322 () SeekEntryResult!7129)

(assert (=> b!720987 (= e!404325 e!404322)))

(declare-fun c!79273 () Bool)

(assert (=> b!720987 (= c!79273 (or (= lt!319928 (select (arr!19522 a!3186) j!159)) (= (bvadd lt!319928 lt!319928) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720988 () Bool)

(assert (=> b!720988 (= e!404322 (Intermediate!7129 false index!1321 x!1131))))

(declare-fun b!720989 () Bool)

(assert (=> b!720989 (and (bvsge (index!30885 lt!319927) #b00000000000000000000000000000000) (bvslt (index!30885 lt!319927) (size!19943 a!3186)))))

(declare-fun res!483187 () Bool)

(assert (=> b!720989 (= res!483187 (= (select (arr!19522 a!3186) (index!30885 lt!319927)) (select (arr!19522 a!3186) j!159)))))

(declare-fun e!404323 () Bool)

(assert (=> b!720989 (=> res!483187 e!404323)))

(declare-fun e!404324 () Bool)

(assert (=> b!720989 (= e!404324 e!404323)))

(declare-fun b!720990 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720990 (= e!404322 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19522 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!720992 () Bool)

(assert (=> b!720992 (and (bvsge (index!30885 lt!319927) #b00000000000000000000000000000000) (bvslt (index!30885 lt!319927) (size!19943 a!3186)))))

(assert (=> b!720992 (= e!404323 (= (select (arr!19522 a!3186) (index!30885 lt!319927)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!720994 () Bool)

(assert (=> b!720994 (and (bvsge (index!30885 lt!319927) #b00000000000000000000000000000000) (bvslt (index!30885 lt!319927) (size!19943 a!3186)))))

(declare-fun res!483185 () Bool)

(assert (=> b!720994 (= res!483185 (= (select (arr!19522 a!3186) (index!30885 lt!319927)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!720994 (=> res!483185 e!404323)))

(declare-fun b!720995 () Bool)

(assert (=> b!720995 (= e!404321 e!404324)))

(declare-fun res!483186 () Bool)

(assert (=> b!720995 (= res!483186 (and ((_ is Intermediate!7129) lt!319927) (not (undefined!7941 lt!319927)) (bvslt (x!61914 lt!319927) #b01111111111111111111111111111110) (bvsge (x!61914 lt!319927) #b00000000000000000000000000000000) (bvsge (x!61914 lt!319927) x!1131)))))

(assert (=> b!720995 (=> (not res!483186) (not e!404324))))

(declare-fun b!720996 () Bool)

(assert (=> b!720996 (= e!404325 (Intermediate!7129 true index!1321 x!1131))))

(declare-fun b!720997 () Bool)

(assert (=> b!720997 (= e!404321 (bvsge (x!61914 lt!319927) #b01111111111111111111111111111110))))

(assert (= (and d!99119 c!79274) b!720996))

(assert (= (and d!99119 (not c!79274)) b!720987))

(assert (= (and b!720987 c!79273) b!720988))

(assert (= (and b!720987 (not c!79273)) b!720990))

(assert (= (and d!99119 c!79272) b!720997))

(assert (= (and d!99119 (not c!79272)) b!720995))

(assert (= (and b!720995 res!483186) b!720989))

(assert (= (and b!720989 (not res!483187)) b!720994))

(assert (= (and b!720994 (not res!483185)) b!720992))

(declare-fun m!676039 () Bool)

(assert (=> b!720990 m!676039))

(assert (=> b!720990 m!676039))

(assert (=> b!720990 m!675971))

(declare-fun m!676041 () Bool)

(assert (=> b!720990 m!676041))

(declare-fun m!676043 () Bool)

(assert (=> d!99119 m!676043))

(assert (=> d!99119 m!675993))

(declare-fun m!676045 () Bool)

(assert (=> b!720989 m!676045))

(assert (=> b!720994 m!676045))

(assert (=> b!720992 m!676045))

(assert (=> b!720918 d!99119))

(declare-fun d!99125 () Bool)

(declare-fun res!483194 () Bool)

(declare-fun e!404333 () Bool)

(assert (=> d!99125 (=> res!483194 e!404333)))

(assert (=> d!99125 (= res!483194 (= (select (arr!19522 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!99125 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!404333)))

(declare-fun b!721006 () Bool)

(declare-fun e!404334 () Bool)

(assert (=> b!721006 (= e!404333 e!404334)))

(declare-fun res!483195 () Bool)

(assert (=> b!721006 (=> (not res!483195) (not e!404334))))

(assert (=> b!721006 (= res!483195 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19943 a!3186)))))

(declare-fun b!721007 () Bool)

(assert (=> b!721007 (= e!404334 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99125 (not res!483194)) b!721006))

(assert (= (and b!721006 res!483195) b!721007))

(declare-fun m!676059 () Bool)

(assert (=> d!99125 m!676059))

(declare-fun m!676061 () Bool)

(assert (=> b!721007 m!676061))

(assert (=> b!720912 d!99125))

(declare-fun d!99129 () Bool)

(assert (=> d!99129 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!720907 d!99129))

(declare-fun b!721038 () Bool)

(declare-fun e!404351 () SeekEntryResult!7129)

(assert (=> b!721038 (= e!404351 Undefined!7129)))

(declare-fun b!721039 () Bool)

(declare-fun e!404352 () SeekEntryResult!7129)

(assert (=> b!721039 (= e!404351 e!404352)))

(declare-fun c!79293 () Bool)

(declare-fun lt!319948 () (_ BitVec 64))

(assert (=> b!721039 (= c!79293 (= lt!319948 (select (arr!19522 a!3186) j!159)))))

(declare-fun e!404350 () SeekEntryResult!7129)

(declare-fun b!721040 () Bool)

(assert (=> b!721040 (= e!404350 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19522 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!721041 () Bool)

(assert (=> b!721041 (= e!404352 (Found!7129 index!1321))))

(declare-fun b!721042 () Bool)

(assert (=> b!721042 (= e!404350 (MissingVacant!7129 resIntermediateIndex!5))))

(declare-fun lt!319949 () SeekEntryResult!7129)

(declare-fun d!99133 () Bool)

(assert (=> d!99133 (and (or ((_ is Undefined!7129) lt!319949) (not ((_ is Found!7129) lt!319949)) (and (bvsge (index!30884 lt!319949) #b00000000000000000000000000000000) (bvslt (index!30884 lt!319949) (size!19943 a!3186)))) (or ((_ is Undefined!7129) lt!319949) ((_ is Found!7129) lt!319949) (not ((_ is MissingVacant!7129) lt!319949)) (not (= (index!30886 lt!319949) resIntermediateIndex!5)) (and (bvsge (index!30886 lt!319949) #b00000000000000000000000000000000) (bvslt (index!30886 lt!319949) (size!19943 a!3186)))) (or ((_ is Undefined!7129) lt!319949) (ite ((_ is Found!7129) lt!319949) (= (select (arr!19522 a!3186) (index!30884 lt!319949)) (select (arr!19522 a!3186) j!159)) (and ((_ is MissingVacant!7129) lt!319949) (= (index!30886 lt!319949) resIntermediateIndex!5) (= (select (arr!19522 a!3186) (index!30886 lt!319949)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99133 (= lt!319949 e!404351)))

(declare-fun c!79292 () Bool)

(assert (=> d!99133 (= c!79292 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99133 (= lt!319948 (select (arr!19522 a!3186) index!1321))))

(assert (=> d!99133 (validMask!0 mask!3328)))

(assert (=> d!99133 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19522 a!3186) j!159) a!3186 mask!3328) lt!319949)))

(declare-fun b!721043 () Bool)

(declare-fun c!79291 () Bool)

(assert (=> b!721043 (= c!79291 (= lt!319948 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!721043 (= e!404352 e!404350)))

(assert (= (and d!99133 c!79292) b!721038))

(assert (= (and d!99133 (not c!79292)) b!721039))

(assert (= (and b!721039 c!79293) b!721041))

(assert (= (and b!721039 (not c!79293)) b!721043))

(assert (= (and b!721043 c!79291) b!721042))

(assert (= (and b!721043 (not c!79291)) b!721040))

(assert (=> b!721040 m!676039))

(assert (=> b!721040 m!676039))

(assert (=> b!721040 m!675971))

(declare-fun m!676073 () Bool)

(assert (=> b!721040 m!676073))

(declare-fun m!676075 () Bool)

(assert (=> d!99133 m!676075))

(declare-fun m!676077 () Bool)

(assert (=> d!99133 m!676077))

(assert (=> d!99133 m!676043))

(assert (=> d!99133 m!675993))

(assert (=> b!720914 d!99133))

(declare-fun b!721076 () Bool)

(declare-fun e!404368 () SeekEntryResult!7129)

(declare-fun lt!319968 () SeekEntryResult!7129)

(assert (=> b!721076 (= e!404368 (Found!7129 (index!30885 lt!319968)))))

(declare-fun b!721077 () Bool)

(declare-fun e!404370 () SeekEntryResult!7129)

(assert (=> b!721077 (= e!404370 (MissingZero!7129 (index!30885 lt!319968)))))

(declare-fun d!99141 () Bool)

(declare-fun lt!319967 () SeekEntryResult!7129)

(assert (=> d!99141 (and (or ((_ is Undefined!7129) lt!319967) (not ((_ is Found!7129) lt!319967)) (and (bvsge (index!30884 lt!319967) #b00000000000000000000000000000000) (bvslt (index!30884 lt!319967) (size!19943 a!3186)))) (or ((_ is Undefined!7129) lt!319967) ((_ is Found!7129) lt!319967) (not ((_ is MissingZero!7129) lt!319967)) (and (bvsge (index!30883 lt!319967) #b00000000000000000000000000000000) (bvslt (index!30883 lt!319967) (size!19943 a!3186)))) (or ((_ is Undefined!7129) lt!319967) ((_ is Found!7129) lt!319967) ((_ is MissingZero!7129) lt!319967) (not ((_ is MissingVacant!7129) lt!319967)) (and (bvsge (index!30886 lt!319967) #b00000000000000000000000000000000) (bvslt (index!30886 lt!319967) (size!19943 a!3186)))) (or ((_ is Undefined!7129) lt!319967) (ite ((_ is Found!7129) lt!319967) (= (select (arr!19522 a!3186) (index!30884 lt!319967)) k0!2102) (ite ((_ is MissingZero!7129) lt!319967) (= (select (arr!19522 a!3186) (index!30883 lt!319967)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7129) lt!319967) (= (select (arr!19522 a!3186) (index!30886 lt!319967)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!404369 () SeekEntryResult!7129)

(assert (=> d!99141 (= lt!319967 e!404369)))

(declare-fun c!79310 () Bool)

(assert (=> d!99141 (= c!79310 (and ((_ is Intermediate!7129) lt!319968) (undefined!7941 lt!319968)))))

(assert (=> d!99141 (= lt!319968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!99141 (validMask!0 mask!3328)))

(assert (=> d!99141 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!319967)))

(declare-fun b!721078 () Bool)

(declare-fun c!79311 () Bool)

(declare-fun lt!319966 () (_ BitVec 64))

(assert (=> b!721078 (= c!79311 (= lt!319966 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!721078 (= e!404368 e!404370)))

(declare-fun b!721079 () Bool)

(assert (=> b!721079 (= e!404369 Undefined!7129)))

(declare-fun b!721080 () Bool)

(assert (=> b!721080 (= e!404369 e!404368)))

(assert (=> b!721080 (= lt!319966 (select (arr!19522 a!3186) (index!30885 lt!319968)))))

(declare-fun c!79309 () Bool)

(assert (=> b!721080 (= c!79309 (= lt!319966 k0!2102))))

(declare-fun b!721081 () Bool)

(assert (=> b!721081 (= e!404370 (seekKeyOrZeroReturnVacant!0 (x!61914 lt!319968) (index!30885 lt!319968) (index!30885 lt!319968) k0!2102 a!3186 mask!3328))))

(assert (= (and d!99141 c!79310) b!721079))

(assert (= (and d!99141 (not c!79310)) b!721080))

(assert (= (and b!721080 c!79309) b!721076))

(assert (= (and b!721080 (not c!79309)) b!721078))

(assert (= (and b!721078 c!79311) b!721077))

(assert (= (and b!721078 (not c!79311)) b!721081))

(assert (=> d!99141 m!675993))

(declare-fun m!676089 () Bool)

(assert (=> d!99141 m!676089))

(declare-fun m!676091 () Bool)

(assert (=> d!99141 m!676091))

(declare-fun m!676093 () Bool)

(assert (=> d!99141 m!676093))

(declare-fun m!676095 () Bool)

(assert (=> d!99141 m!676095))

(declare-fun m!676097 () Bool)

(assert (=> d!99141 m!676097))

(assert (=> d!99141 m!676095))

(declare-fun m!676099 () Bool)

(assert (=> b!721080 m!676099))

(declare-fun m!676101 () Bool)

(assert (=> b!721081 m!676101))

(assert (=> b!720909 d!99141))

(declare-fun d!99149 () Bool)

(declare-fun e!404375 () Bool)

(assert (=> d!99149 e!404375))

(declare-fun c!79316 () Bool)

(declare-fun lt!319969 () SeekEntryResult!7129)

(assert (=> d!99149 (= c!79316 (and ((_ is Intermediate!7129) lt!319969) (undefined!7941 lt!319969)))))

(declare-fun e!404379 () SeekEntryResult!7129)

(assert (=> d!99149 (= lt!319969 e!404379)))

(declare-fun c!79318 () Bool)

(assert (=> d!99149 (= c!79318 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!319970 () (_ BitVec 64))

(assert (=> d!99149 (= lt!319970 (select (arr!19522 a!3186) (toIndex!0 (select (arr!19522 a!3186) j!159) mask!3328)))))

(assert (=> d!99149 (validMask!0 mask!3328)))

(assert (=> d!99149 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19522 a!3186) j!159) mask!3328) (select (arr!19522 a!3186) j!159) a!3186 mask!3328) lt!319969)))

(declare-fun b!721090 () Bool)

(declare-fun e!404376 () SeekEntryResult!7129)

(assert (=> b!721090 (= e!404379 e!404376)))

(declare-fun c!79317 () Bool)

(assert (=> b!721090 (= c!79317 (or (= lt!319970 (select (arr!19522 a!3186) j!159)) (= (bvadd lt!319970 lt!319970) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721091 () Bool)

(assert (=> b!721091 (= e!404376 (Intermediate!7129 false (toIndex!0 (select (arr!19522 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!721092 () Bool)

(assert (=> b!721092 (and (bvsge (index!30885 lt!319969) #b00000000000000000000000000000000) (bvslt (index!30885 lt!319969) (size!19943 a!3186)))))

(declare-fun res!483199 () Bool)

(assert (=> b!721092 (= res!483199 (= (select (arr!19522 a!3186) (index!30885 lt!319969)) (select (arr!19522 a!3186) j!159)))))

(declare-fun e!404377 () Bool)

(assert (=> b!721092 (=> res!483199 e!404377)))

(declare-fun e!404378 () Bool)

(assert (=> b!721092 (= e!404378 e!404377)))

(declare-fun b!721093 () Bool)

(assert (=> b!721093 (= e!404376 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19522 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19522 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!721094 () Bool)

(assert (=> b!721094 (and (bvsge (index!30885 lt!319969) #b00000000000000000000000000000000) (bvslt (index!30885 lt!319969) (size!19943 a!3186)))))

(assert (=> b!721094 (= e!404377 (= (select (arr!19522 a!3186) (index!30885 lt!319969)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!721095 () Bool)

(assert (=> b!721095 (and (bvsge (index!30885 lt!319969) #b00000000000000000000000000000000) (bvslt (index!30885 lt!319969) (size!19943 a!3186)))))

(declare-fun res!483197 () Bool)

(assert (=> b!721095 (= res!483197 (= (select (arr!19522 a!3186) (index!30885 lt!319969)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!721095 (=> res!483197 e!404377)))

(declare-fun b!721096 () Bool)

(assert (=> b!721096 (= e!404375 e!404378)))

(declare-fun res!483198 () Bool)

(assert (=> b!721096 (= res!483198 (and ((_ is Intermediate!7129) lt!319969) (not (undefined!7941 lt!319969)) (bvslt (x!61914 lt!319969) #b01111111111111111111111111111110) (bvsge (x!61914 lt!319969) #b00000000000000000000000000000000) (bvsge (x!61914 lt!319969) #b00000000000000000000000000000000)))))

(assert (=> b!721096 (=> (not res!483198) (not e!404378))))

(declare-fun b!721097 () Bool)

(assert (=> b!721097 (= e!404379 (Intermediate!7129 true (toIndex!0 (select (arr!19522 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!721098 () Bool)

(assert (=> b!721098 (= e!404375 (bvsge (x!61914 lt!319969) #b01111111111111111111111111111110))))

(assert (= (and d!99149 c!79318) b!721097))

(assert (= (and d!99149 (not c!79318)) b!721090))

(assert (= (and b!721090 c!79317) b!721091))

(assert (= (and b!721090 (not c!79317)) b!721093))

(assert (= (and d!99149 c!79316) b!721098))

(assert (= (and d!99149 (not c!79316)) b!721096))

(assert (= (and b!721096 res!483198) b!721092))

(assert (= (and b!721092 (not res!483199)) b!721095))

(assert (= (and b!721095 (not res!483197)) b!721094))

(assert (=> b!721093 m!675999))

(declare-fun m!676103 () Bool)

(assert (=> b!721093 m!676103))

(assert (=> b!721093 m!676103))

(assert (=> b!721093 m!675971))

(declare-fun m!676105 () Bool)

(assert (=> b!721093 m!676105))

(assert (=> d!99149 m!675999))

(declare-fun m!676107 () Bool)

(assert (=> d!99149 m!676107))

(assert (=> d!99149 m!675993))

(declare-fun m!676109 () Bool)

(assert (=> b!721092 m!676109))

(assert (=> b!721095 m!676109))

(assert (=> b!721094 m!676109))

(assert (=> b!720910 d!99149))

(declare-fun d!99151 () Bool)

(declare-fun lt!319984 () (_ BitVec 32))

(declare-fun lt!319983 () (_ BitVec 32))

(assert (=> d!99151 (= lt!319984 (bvmul (bvxor lt!319983 (bvlshr lt!319983 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99151 (= lt!319983 ((_ extract 31 0) (bvand (bvxor (select (arr!19522 a!3186) j!159) (bvlshr (select (arr!19522 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99151 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!483206 (let ((h!14627 ((_ extract 31 0) (bvand (bvxor (select (arr!19522 a!3186) j!159) (bvlshr (select (arr!19522 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!61922 (bvmul (bvxor h!14627 (bvlshr h!14627 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!61922 (bvlshr x!61922 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!483206 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!483206 #b00000000000000000000000000000000))))))

(assert (=> d!99151 (= (toIndex!0 (select (arr!19522 a!3186) j!159) mask!3328) (bvand (bvxor lt!319984 (bvlshr lt!319984 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!720910 d!99151))

(declare-fun d!99155 () Bool)

(assert (=> d!99155 (= (validKeyInArray!0 (select (arr!19522 a!3186) j!159)) (and (not (= (select (arr!19522 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19522 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!720920 d!99155))

(declare-fun d!99157 () Bool)

(declare-fun res!483214 () Bool)

(declare-fun e!404407 () Bool)

(assert (=> d!99157 (=> res!483214 e!404407)))

(assert (=> d!99157 (= res!483214 (bvsge #b00000000000000000000000000000000 (size!19943 a!3186)))))

(assert (=> d!99157 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!404407)))

(declare-fun bm!34770 () Bool)

(declare-fun call!34773 () Bool)

(assert (=> bm!34770 (= call!34773 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!721142 () Bool)

(declare-fun e!404408 () Bool)

(declare-fun e!404406 () Bool)

(assert (=> b!721142 (= e!404408 e!404406)))

(declare-fun lt!319994 () (_ BitVec 64))

(assert (=> b!721142 (= lt!319994 (select (arr!19522 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24654 0))(
  ( (Unit!24655) )
))
(declare-fun lt!319996 () Unit!24654)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40803 (_ BitVec 64) (_ BitVec 32)) Unit!24654)

(assert (=> b!721142 (= lt!319996 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319994 #b00000000000000000000000000000000))))

(assert (=> b!721142 (arrayContainsKey!0 a!3186 lt!319994 #b00000000000000000000000000000000)))

(declare-fun lt!319995 () Unit!24654)

(assert (=> b!721142 (= lt!319995 lt!319996)))

(declare-fun res!483215 () Bool)

(assert (=> b!721142 (= res!483215 (= (seekEntryOrOpen!0 (select (arr!19522 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7129 #b00000000000000000000000000000000)))))

(assert (=> b!721142 (=> (not res!483215) (not e!404406))))

(declare-fun b!721143 () Bool)

(assert (=> b!721143 (= e!404406 call!34773)))

(declare-fun b!721144 () Bool)

(assert (=> b!721144 (= e!404408 call!34773)))

(declare-fun b!721145 () Bool)

(assert (=> b!721145 (= e!404407 e!404408)))

(declare-fun c!79335 () Bool)

(assert (=> b!721145 (= c!79335 (validKeyInArray!0 (select (arr!19522 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99157 (not res!483214)) b!721145))

(assert (= (and b!721145 c!79335) b!721142))

(assert (= (and b!721145 (not c!79335)) b!721144))

(assert (= (and b!721142 res!483215) b!721143))

(assert (= (or b!721143 b!721144) bm!34770))

(declare-fun m!676129 () Bool)

(assert (=> bm!34770 m!676129))

(assert (=> b!721142 m!676059))

(declare-fun m!676131 () Bool)

(assert (=> b!721142 m!676131))

(declare-fun m!676133 () Bool)

(assert (=> b!721142 m!676133))

(assert (=> b!721142 m!676059))

(declare-fun m!676135 () Bool)

(assert (=> b!721142 m!676135))

(assert (=> b!721145 m!676059))

(assert (=> b!721145 m!676059))

(declare-fun m!676137 () Bool)

(assert (=> b!721145 m!676137))

(assert (=> b!720915 d!99157))

(declare-fun d!99167 () Bool)

(declare-fun lt!319998 () (_ BitVec 32))

(declare-fun lt!319997 () (_ BitVec 32))

(assert (=> d!99167 (= lt!319998 (bvmul (bvxor lt!319997 (bvlshr lt!319997 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99167 (= lt!319997 ((_ extract 31 0) (bvand (bvxor (select (store (arr!19522 a!3186) i!1173 k0!2102) j!159) (bvlshr (select (store (arr!19522 a!3186) i!1173 k0!2102) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99167 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!483206 (let ((h!14627 ((_ extract 31 0) (bvand (bvxor (select (store (arr!19522 a!3186) i!1173 k0!2102) j!159) (bvlshr (select (store (arr!19522 a!3186) i!1173 k0!2102) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!61922 (bvmul (bvxor h!14627 (bvlshr h!14627 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!61922 (bvlshr x!61922 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!483206 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!483206 #b00000000000000000000000000000000))))))

(assert (=> d!99167 (= (toIndex!0 (select (store (arr!19522 a!3186) i!1173 k0!2102) j!159) mask!3328) (bvand (bvxor lt!319998 (bvlshr lt!319998 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!720916 d!99167))

(declare-fun b!721164 () Bool)

(declare-fun e!404423 () Bool)

(declare-fun call!34776 () Bool)

(assert (=> b!721164 (= e!404423 call!34776)))

(declare-fun b!721165 () Bool)

(declare-fun e!404421 () Bool)

(assert (=> b!721165 (= e!404421 e!404423)))

(declare-fun c!79342 () Bool)

(assert (=> b!721165 (= c!79342 (validKeyInArray!0 (select (arr!19522 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!721166 () Bool)

(declare-fun e!404424 () Bool)

(declare-fun contains!4045 (List!13577 (_ BitVec 64)) Bool)

(assert (=> b!721166 (= e!404424 (contains!4045 Nil!13574 (select (arr!19522 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!99169 () Bool)

(declare-fun res!483222 () Bool)

(declare-fun e!404422 () Bool)

(assert (=> d!99169 (=> res!483222 e!404422)))

(assert (=> d!99169 (= res!483222 (bvsge #b00000000000000000000000000000000 (size!19943 a!3186)))))

(assert (=> d!99169 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13574) e!404422)))

(declare-fun b!721167 () Bool)

(assert (=> b!721167 (= e!404422 e!404421)))

(declare-fun res!483224 () Bool)

(assert (=> b!721167 (=> (not res!483224) (not e!404421))))

(assert (=> b!721167 (= res!483224 (not e!404424))))

(declare-fun res!483223 () Bool)

(assert (=> b!721167 (=> (not res!483223) (not e!404424))))

(assert (=> b!721167 (= res!483223 (validKeyInArray!0 (select (arr!19522 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!721168 () Bool)

(assert (=> b!721168 (= e!404423 call!34776)))

(declare-fun bm!34773 () Bool)

(assert (=> bm!34773 (= call!34776 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79342 (Cons!13573 (select (arr!19522 a!3186) #b00000000000000000000000000000000) Nil!13574) Nil!13574)))))

(assert (= (and d!99169 (not res!483222)) b!721167))

(assert (= (and b!721167 res!483223) b!721166))

(assert (= (and b!721167 res!483224) b!721165))

(assert (= (and b!721165 c!79342) b!721168))

(assert (= (and b!721165 (not c!79342)) b!721164))

(assert (= (or b!721168 b!721164) bm!34773))

(assert (=> b!721165 m!676059))

(assert (=> b!721165 m!676059))

(assert (=> b!721165 m!676137))

(assert (=> b!721166 m!676059))

(assert (=> b!721166 m!676059))

(declare-fun m!676139 () Bool)

(assert (=> b!721166 m!676139))

(assert (=> b!721167 m!676059))

(assert (=> b!721167 m!676059))

(assert (=> b!721167 m!676137))

(assert (=> bm!34773 m!676059))

(declare-fun m!676141 () Bool)

(assert (=> bm!34773 m!676141))

(assert (=> b!720911 d!99169))

(declare-fun d!99171 () Bool)

(assert (=> d!99171 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64212 d!99171))

(declare-fun d!99175 () Bool)

(assert (=> d!99175 (= (array_inv!15296 a!3186) (bvsge (size!19943 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64212 d!99175))

(check-sat (not b!721081) (not b!721093) (not b!721145) (not b!721040) (not d!99141) (not d!99149) (not b!721007) (not bm!34773) (not b!721142) (not d!99133) (not b!721167) (not b!721166) (not b!721165) (not b!720990) (not d!99119) (not bm!34770))
(check-sat)
