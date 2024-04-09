; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65712 () Bool)

(assert start!65712)

(declare-fun b!753226 () Bool)

(declare-fun e!420144 () Bool)

(declare-fun e!420147 () Bool)

(assert (=> b!753226 (= e!420144 e!420147)))

(declare-fun res!508914 () Bool)

(assert (=> b!753226 (=> (not res!508914) (not e!420147))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41838 0))(
  ( (array!41839 (arr!20029 (Array (_ BitVec 32) (_ BitVec 64))) (size!20450 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41838)

(declare-datatypes ((SeekEntryResult!7636 0))(
  ( (MissingZero!7636 (index!32911 (_ BitVec 32))) (Found!7636 (index!32912 (_ BitVec 32))) (Intermediate!7636 (undefined!8448 Bool) (index!32913 (_ BitVec 32)) (x!63851 (_ BitVec 32))) (Undefined!7636) (MissingVacant!7636 (index!32914 (_ BitVec 32))) )
))
(declare-fun lt!335145 () SeekEntryResult!7636)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41838 (_ BitVec 32)) SeekEntryResult!7636)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753226 (= res!508914 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20029 a!3186) j!159) mask!3328) (select (arr!20029 a!3186) j!159) a!3186 mask!3328) lt!335145))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!753226 (= lt!335145 (Intermediate!7636 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753228 () Bool)

(declare-fun res!508921 () Bool)

(assert (=> b!753228 (=> (not res!508921) (not e!420144))))

(declare-datatypes ((List!14084 0))(
  ( (Nil!14081) (Cons!14080 (h!15152 (_ BitVec 64)) (t!20407 List!14084)) )
))
(declare-fun arrayNoDuplicates!0 (array!41838 (_ BitVec 32) List!14084) Bool)

(assert (=> b!753228 (= res!508921 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14081))))

(declare-fun b!753229 () Bool)

(declare-fun e!420142 () Bool)

(declare-fun e!420148 () Bool)

(assert (=> b!753229 (= e!420142 e!420148)))

(declare-fun res!508910 () Bool)

(assert (=> b!753229 (=> res!508910 e!420148)))

(declare-fun lt!335149 () (_ BitVec 64))

(declare-fun lt!335150 () (_ BitVec 64))

(assert (=> b!753229 (= res!508910 (= lt!335149 lt!335150))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!753229 (= lt!335149 (select (store (arr!20029 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!753230 () Bool)

(declare-fun e!420143 () Bool)

(assert (=> b!753230 (= e!420143 e!420144)))

(declare-fun res!508908 () Bool)

(assert (=> b!753230 (=> (not res!508908) (not e!420144))))

(declare-fun lt!335141 () SeekEntryResult!7636)

(assert (=> b!753230 (= res!508908 (or (= lt!335141 (MissingZero!7636 i!1173)) (= lt!335141 (MissingVacant!7636 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41838 (_ BitVec 32)) SeekEntryResult!7636)

(assert (=> b!753230 (= lt!335141 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!753231 () Bool)

(declare-fun res!508905 () Bool)

(assert (=> b!753231 (=> (not res!508905) (not e!420143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753231 (= res!508905 (validKeyInArray!0 (select (arr!20029 a!3186) j!159)))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!420141 () Bool)

(declare-fun b!753232 () Bool)

(assert (=> b!753232 (= e!420141 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20029 a!3186) j!159) a!3186 mask!3328) lt!335145))))

(declare-fun b!753233 () Bool)

(declare-datatypes ((Unit!25946 0))(
  ( (Unit!25947) )
))
(declare-fun e!420140 () Unit!25946)

(declare-fun Unit!25948 () Unit!25946)

(assert (=> b!753233 (= e!420140 Unit!25948)))

(declare-fun b!753234 () Bool)

(assert (=> b!753234 (= e!420148 true)))

(declare-fun e!420150 () Bool)

(assert (=> b!753234 e!420150))

(declare-fun res!508912 () Bool)

(assert (=> b!753234 (=> (not res!508912) (not e!420150))))

(assert (=> b!753234 (= res!508912 (= lt!335149 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335139 () Unit!25946)

(assert (=> b!753234 (= lt!335139 e!420140)))

(declare-fun c!82541 () Bool)

(assert (=> b!753234 (= c!82541 (= lt!335149 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753235 () Bool)

(declare-fun res!508911 () Bool)

(assert (=> b!753235 (=> (not res!508911) (not e!420144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41838 (_ BitVec 32)) Bool)

(assert (=> b!753235 (= res!508911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!753236 () Bool)

(declare-fun res!508920 () Bool)

(assert (=> b!753236 (=> (not res!508920) (not e!420144))))

(assert (=> b!753236 (= res!508920 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20450 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20450 a!3186))))))

(declare-fun b!753237 () Bool)

(declare-fun res!508913 () Bool)

(assert (=> b!753237 (=> (not res!508913) (not e!420143))))

(assert (=> b!753237 (= res!508913 (and (= (size!20450 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20450 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20450 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753238 () Bool)

(declare-fun res!508922 () Bool)

(assert (=> b!753238 (=> (not res!508922) (not e!420143))))

(declare-fun arrayContainsKey!0 (array!41838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753238 (= res!508922 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753239 () Bool)

(declare-fun res!508907 () Bool)

(assert (=> b!753239 (=> (not res!508907) (not e!420147))))

(assert (=> b!753239 (= res!508907 e!420141)))

(declare-fun c!82542 () Bool)

(assert (=> b!753239 (= c!82542 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753240 () Bool)

(declare-fun e!420139 () Bool)

(declare-fun e!420149 () Bool)

(assert (=> b!753240 (= e!420139 (not e!420149))))

(declare-fun res!508916 () Bool)

(assert (=> b!753240 (=> res!508916 e!420149)))

(declare-fun lt!335146 () SeekEntryResult!7636)

(get-info :version)

(assert (=> b!753240 (= res!508916 (or (not ((_ is Intermediate!7636) lt!335146)) (bvslt x!1131 (x!63851 lt!335146)) (not (= x!1131 (x!63851 lt!335146))) (not (= index!1321 (index!32913 lt!335146)))))))

(declare-fun e!420146 () Bool)

(assert (=> b!753240 e!420146))

(declare-fun res!508915 () Bool)

(assert (=> b!753240 (=> (not res!508915) (not e!420146))))

(declare-fun lt!335143 () SeekEntryResult!7636)

(declare-fun lt!335148 () SeekEntryResult!7636)

(assert (=> b!753240 (= res!508915 (= lt!335143 lt!335148))))

(assert (=> b!753240 (= lt!335148 (Found!7636 j!159))))

(assert (=> b!753240 (= lt!335143 (seekEntryOrOpen!0 (select (arr!20029 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!753240 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335140 () Unit!25946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41838 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25946)

(assert (=> b!753240 (= lt!335140 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753241 () Bool)

(assert (=> b!753241 (= e!420149 e!420142)))

(declare-fun res!508918 () Bool)

(assert (=> b!753241 (=> res!508918 e!420142)))

(declare-fun lt!335147 () SeekEntryResult!7636)

(assert (=> b!753241 (= res!508918 (not (= lt!335147 lt!335148)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41838 (_ BitVec 32)) SeekEntryResult!7636)

(assert (=> b!753241 (= lt!335147 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20029 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753227 () Bool)

(declare-fun Unit!25949 () Unit!25946)

(assert (=> b!753227 (= e!420140 Unit!25949)))

(assert (=> b!753227 false))

(declare-fun res!508906 () Bool)

(assert (=> start!65712 (=> (not res!508906) (not e!420143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65712 (= res!508906 (validMask!0 mask!3328))))

(assert (=> start!65712 e!420143))

(assert (=> start!65712 true))

(declare-fun array_inv!15803 (array!41838) Bool)

(assert (=> start!65712 (array_inv!15803 a!3186)))

(declare-fun b!753242 () Bool)

(assert (=> b!753242 (= e!420150 (= lt!335143 lt!335147))))

(declare-fun b!753243 () Bool)

(declare-fun res!508923 () Bool)

(assert (=> b!753243 (=> (not res!508923) (not e!420143))))

(assert (=> b!753243 (= res!508923 (validKeyInArray!0 k0!2102))))

(declare-fun b!753244 () Bool)

(declare-fun res!508917 () Bool)

(assert (=> b!753244 (=> (not res!508917) (not e!420150))))

(declare-fun lt!335144 () array!41838)

(assert (=> b!753244 (= res!508917 (= (seekEntryOrOpen!0 lt!335150 lt!335144 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335150 lt!335144 mask!3328)))))

(declare-fun b!753245 () Bool)

(assert (=> b!753245 (= e!420147 e!420139)))

(declare-fun res!508919 () Bool)

(assert (=> b!753245 (=> (not res!508919) (not e!420139))))

(declare-fun lt!335142 () SeekEntryResult!7636)

(assert (=> b!753245 (= res!508919 (= lt!335142 lt!335146))))

(assert (=> b!753245 (= lt!335146 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335150 lt!335144 mask!3328))))

(assert (=> b!753245 (= lt!335142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335150 mask!3328) lt!335150 lt!335144 mask!3328))))

(assert (=> b!753245 (= lt!335150 (select (store (arr!20029 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!753245 (= lt!335144 (array!41839 (store (arr!20029 a!3186) i!1173 k0!2102) (size!20450 a!3186)))))

(declare-fun b!753246 () Bool)

(assert (=> b!753246 (= e!420141 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20029 a!3186) j!159) a!3186 mask!3328) (Found!7636 j!159)))))

(declare-fun b!753247 () Bool)

(declare-fun res!508909 () Bool)

(assert (=> b!753247 (=> (not res!508909) (not e!420147))))

(assert (=> b!753247 (= res!508909 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20029 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!753248 () Bool)

(assert (=> b!753248 (= e!420146 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20029 a!3186) j!159) a!3186 mask!3328) lt!335148))))

(assert (= (and start!65712 res!508906) b!753237))

(assert (= (and b!753237 res!508913) b!753231))

(assert (= (and b!753231 res!508905) b!753243))

(assert (= (and b!753243 res!508923) b!753238))

(assert (= (and b!753238 res!508922) b!753230))

(assert (= (and b!753230 res!508908) b!753235))

(assert (= (and b!753235 res!508911) b!753228))

(assert (= (and b!753228 res!508921) b!753236))

(assert (= (and b!753236 res!508920) b!753226))

(assert (= (and b!753226 res!508914) b!753247))

(assert (= (and b!753247 res!508909) b!753239))

(assert (= (and b!753239 c!82542) b!753232))

(assert (= (and b!753239 (not c!82542)) b!753246))

(assert (= (and b!753239 res!508907) b!753245))

(assert (= (and b!753245 res!508919) b!753240))

(assert (= (and b!753240 res!508915) b!753248))

(assert (= (and b!753240 (not res!508916)) b!753241))

(assert (= (and b!753241 (not res!508918)) b!753229))

(assert (= (and b!753229 (not res!508910)) b!753234))

(assert (= (and b!753234 c!82541) b!753227))

(assert (= (and b!753234 (not c!82541)) b!753233))

(assert (= (and b!753234 res!508912) b!753244))

(assert (= (and b!753244 res!508917) b!753242))

(declare-fun m!702041 () Bool)

(assert (=> b!753240 m!702041))

(assert (=> b!753240 m!702041))

(declare-fun m!702043 () Bool)

(assert (=> b!753240 m!702043))

(declare-fun m!702045 () Bool)

(assert (=> b!753240 m!702045))

(declare-fun m!702047 () Bool)

(assert (=> b!753240 m!702047))

(assert (=> b!753246 m!702041))

(assert (=> b!753246 m!702041))

(declare-fun m!702049 () Bool)

(assert (=> b!753246 m!702049))

(assert (=> b!753248 m!702041))

(assert (=> b!753248 m!702041))

(declare-fun m!702051 () Bool)

(assert (=> b!753248 m!702051))

(declare-fun m!702053 () Bool)

(assert (=> b!753235 m!702053))

(declare-fun m!702055 () Bool)

(assert (=> start!65712 m!702055))

(declare-fun m!702057 () Bool)

(assert (=> start!65712 m!702057))

(assert (=> b!753226 m!702041))

(assert (=> b!753226 m!702041))

(declare-fun m!702059 () Bool)

(assert (=> b!753226 m!702059))

(assert (=> b!753226 m!702059))

(assert (=> b!753226 m!702041))

(declare-fun m!702061 () Bool)

(assert (=> b!753226 m!702061))

(assert (=> b!753232 m!702041))

(assert (=> b!753232 m!702041))

(declare-fun m!702063 () Bool)

(assert (=> b!753232 m!702063))

(declare-fun m!702065 () Bool)

(assert (=> b!753229 m!702065))

(declare-fun m!702067 () Bool)

(assert (=> b!753229 m!702067))

(declare-fun m!702069 () Bool)

(assert (=> b!753243 m!702069))

(assert (=> b!753231 m!702041))

(assert (=> b!753231 m!702041))

(declare-fun m!702071 () Bool)

(assert (=> b!753231 m!702071))

(assert (=> b!753241 m!702041))

(assert (=> b!753241 m!702041))

(assert (=> b!753241 m!702049))

(declare-fun m!702073 () Bool)

(assert (=> b!753244 m!702073))

(declare-fun m!702075 () Bool)

(assert (=> b!753244 m!702075))

(declare-fun m!702077 () Bool)

(assert (=> b!753230 m!702077))

(declare-fun m!702079 () Bool)

(assert (=> b!753238 m!702079))

(declare-fun m!702081 () Bool)

(assert (=> b!753245 m!702081))

(declare-fun m!702083 () Bool)

(assert (=> b!753245 m!702083))

(assert (=> b!753245 m!702081))

(declare-fun m!702085 () Bool)

(assert (=> b!753245 m!702085))

(assert (=> b!753245 m!702065))

(declare-fun m!702087 () Bool)

(assert (=> b!753245 m!702087))

(declare-fun m!702089 () Bool)

(assert (=> b!753228 m!702089))

(declare-fun m!702091 () Bool)

(assert (=> b!753247 m!702091))

(check-sat (not b!753246) (not b!753228) (not b!753240) (not b!753235) (not b!753232) (not b!753238) (not b!753241) (not b!753226) (not b!753231) (not b!753245) (not b!753248) (not b!753243) (not start!65712) (not b!753244) (not b!753230))
(check-sat)
