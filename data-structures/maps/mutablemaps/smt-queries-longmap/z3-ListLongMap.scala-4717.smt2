; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65382 () Bool)

(assert start!65382)

(declare-fun b!743055 () Bool)

(declare-fun res!500324 () Bool)

(declare-fun e!415220 () Bool)

(assert (=> b!743055 (=> res!500324 e!415220)))

(declare-datatypes ((array!41508 0))(
  ( (array!41509 (arr!19864 (Array (_ BitVec 32) (_ BitVec 64))) (size!20285 (_ BitVec 32))) )
))
(declare-fun lt!330113 () array!41508)

(declare-fun lt!330107 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7471 0))(
  ( (MissingZero!7471 (index!32251 (_ BitVec 32))) (Found!7471 (index!32252 (_ BitVec 32))) (Intermediate!7471 (undefined!8283 Bool) (index!32253 (_ BitVec 32)) (x!63246 (_ BitVec 32))) (Undefined!7471) (MissingVacant!7471 (index!32254 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41508 (_ BitVec 32)) SeekEntryResult!7471)

(assert (=> b!743055 (= res!500324 (not (= (seekEntryOrOpen!0 lt!330107 lt!330113 mask!3328) (Found!7471 index!1321))))))

(declare-fun b!743056 () Bool)

(declare-fun res!500328 () Bool)

(declare-fun e!415221 () Bool)

(assert (=> b!743056 (=> (not res!500328) (not e!415221))))

(declare-fun a!3186 () array!41508)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743056 (= res!500328 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743057 () Bool)

(declare-fun e!415224 () Bool)

(declare-fun e!415226 () Bool)

(assert (=> b!743057 (= e!415224 e!415226)))

(declare-fun res!500310 () Bool)

(assert (=> b!743057 (=> (not res!500310) (not e!415226))))

(declare-fun lt!330112 () SeekEntryResult!7471)

(declare-fun lt!330106 () SeekEntryResult!7471)

(assert (=> b!743057 (= res!500310 (= lt!330112 lt!330106))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41508 (_ BitVec 32)) SeekEntryResult!7471)

(assert (=> b!743057 (= lt!330106 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330107 lt!330113 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743057 (= lt!330112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330107 mask!3328) lt!330107 lt!330113 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!743057 (= lt!330107 (select (store (arr!19864 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!743057 (= lt!330113 (array!41509 (store (arr!19864 a!3186) i!1173 k0!2102) (size!20285 a!3186)))))

(declare-fun b!743058 () Bool)

(declare-fun res!500318 () Bool)

(assert (=> b!743058 (=> (not res!500318) (not e!415221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743058 (= res!500318 (validKeyInArray!0 k0!2102))))

(declare-fun lt!330109 () SeekEntryResult!7471)

(declare-fun e!415219 () Bool)

(declare-fun b!743059 () Bool)

(assert (=> b!743059 (= e!415219 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19864 a!3186) j!159) a!3186 mask!3328) lt!330109))))

(declare-fun res!500326 () Bool)

(assert (=> start!65382 (=> (not res!500326) (not e!415221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65382 (= res!500326 (validMask!0 mask!3328))))

(assert (=> start!65382 e!415221))

(assert (=> start!65382 true))

(declare-fun array_inv!15638 (array!41508) Bool)

(assert (=> start!65382 (array_inv!15638 a!3186)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!415223 () Bool)

(declare-fun b!743060 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!330111 () SeekEntryResult!7471)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41508 (_ BitVec 32)) SeekEntryResult!7471)

(assert (=> b!743060 (= e!415223 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19864 a!3186) j!159) a!3186 mask!3328) lt!330111))))

(declare-fun b!743061 () Bool)

(declare-fun res!500311 () Bool)

(assert (=> b!743061 (=> res!500311 e!415220)))

(assert (=> b!743061 (= res!500311 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19864 a!3186) j!159) a!3186 mask!3328) (Found!7471 j!159))))))

(declare-fun b!743062 () Bool)

(declare-fun res!500321 () Bool)

(declare-fun e!415227 () Bool)

(assert (=> b!743062 (=> (not res!500321) (not e!415227))))

(assert (=> b!743062 (= res!500321 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20285 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20285 a!3186))))))

(declare-fun b!743063 () Bool)

(assert (=> b!743063 (= e!415221 e!415227)))

(declare-fun res!500319 () Bool)

(assert (=> b!743063 (=> (not res!500319) (not e!415227))))

(declare-fun lt!330110 () SeekEntryResult!7471)

(assert (=> b!743063 (= res!500319 (or (= lt!330110 (MissingZero!7471 i!1173)) (= lt!330110 (MissingVacant!7471 i!1173))))))

(assert (=> b!743063 (= lt!330110 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!743064 () Bool)

(declare-fun res!500313 () Bool)

(assert (=> b!743064 (=> (not res!500313) (not e!415224))))

(assert (=> b!743064 (= res!500313 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19864 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743065 () Bool)

(assert (=> b!743065 (= e!415227 e!415224)))

(declare-fun res!500312 () Bool)

(assert (=> b!743065 (=> (not res!500312) (not e!415224))))

(assert (=> b!743065 (= res!500312 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19864 a!3186) j!159) mask!3328) (select (arr!19864 a!3186) j!159) a!3186 mask!3328) lt!330109))))

(assert (=> b!743065 (= lt!330109 (Intermediate!7471 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743066 () Bool)

(declare-fun res!500327 () Bool)

(assert (=> b!743066 (=> (not res!500327) (not e!415221))))

(assert (=> b!743066 (= res!500327 (validKeyInArray!0 (select (arr!19864 a!3186) j!159)))))

(declare-fun b!743067 () Bool)

(declare-fun res!500325 () Bool)

(assert (=> b!743067 (=> (not res!500325) (not e!415227))))

(declare-datatypes ((List!13919 0))(
  ( (Nil!13916) (Cons!13915 (h!14987 (_ BitVec 64)) (t!20242 List!13919)) )
))
(declare-fun arrayNoDuplicates!0 (array!41508 (_ BitVec 32) List!13919) Bool)

(assert (=> b!743067 (= res!500325 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13916))))

(declare-fun b!743068 () Bool)

(assert (=> b!743068 (= e!415226 (not e!415220))))

(declare-fun res!500316 () Bool)

(assert (=> b!743068 (=> res!500316 e!415220)))

(get-info :version)

(assert (=> b!743068 (= res!500316 (or (not ((_ is Intermediate!7471) lt!330106)) (bvslt x!1131 (x!63246 lt!330106)) (not (= x!1131 (x!63246 lt!330106))) (not (= index!1321 (index!32253 lt!330106)))))))

(declare-fun e!415225 () Bool)

(assert (=> b!743068 e!415225))

(declare-fun res!500315 () Bool)

(assert (=> b!743068 (=> (not res!500315) (not e!415225))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41508 (_ BitVec 32)) Bool)

(assert (=> b!743068 (= res!500315 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25422 0))(
  ( (Unit!25423) )
))
(declare-fun lt!330108 () Unit!25422)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25422)

(assert (=> b!743068 (= lt!330108 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743069 () Bool)

(assert (=> b!743069 (= e!415225 e!415223)))

(declare-fun res!500314 () Bool)

(assert (=> b!743069 (=> (not res!500314) (not e!415223))))

(assert (=> b!743069 (= res!500314 (= (seekEntryOrOpen!0 (select (arr!19864 a!3186) j!159) a!3186 mask!3328) lt!330111))))

(assert (=> b!743069 (= lt!330111 (Found!7471 j!159))))

(declare-fun b!743070 () Bool)

(assert (=> b!743070 (= e!415220 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!743071 () Bool)

(declare-fun res!500322 () Bool)

(assert (=> b!743071 (=> (not res!500322) (not e!415227))))

(assert (=> b!743071 (= res!500322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!743072 () Bool)

(declare-fun res!500323 () Bool)

(assert (=> b!743072 (=> res!500323 e!415220)))

(assert (=> b!743072 (= res!500323 (or (not (= (select (store (arr!19864 a!3186) i!1173 k0!2102) index!1321) lt!330107)) (undefined!8283 lt!330106)))))

(declare-fun b!743073 () Bool)

(declare-fun res!500320 () Bool)

(assert (=> b!743073 (=> (not res!500320) (not e!415224))))

(assert (=> b!743073 (= res!500320 e!415219)))

(declare-fun c!81753 () Bool)

(assert (=> b!743073 (= c!81753 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743074 () Bool)

(assert (=> b!743074 (= e!415219 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19864 a!3186) j!159) a!3186 mask!3328) (Found!7471 j!159)))))

(declare-fun b!743075 () Bool)

(declare-fun res!500317 () Bool)

(assert (=> b!743075 (=> (not res!500317) (not e!415221))))

(assert (=> b!743075 (= res!500317 (and (= (size!20285 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20285 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20285 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65382 res!500326) b!743075))

(assert (= (and b!743075 res!500317) b!743066))

(assert (= (and b!743066 res!500327) b!743058))

(assert (= (and b!743058 res!500318) b!743056))

(assert (= (and b!743056 res!500328) b!743063))

(assert (= (and b!743063 res!500319) b!743071))

(assert (= (and b!743071 res!500322) b!743067))

(assert (= (and b!743067 res!500325) b!743062))

(assert (= (and b!743062 res!500321) b!743065))

(assert (= (and b!743065 res!500312) b!743064))

(assert (= (and b!743064 res!500313) b!743073))

(assert (= (and b!743073 c!81753) b!743059))

(assert (= (and b!743073 (not c!81753)) b!743074))

(assert (= (and b!743073 res!500320) b!743057))

(assert (= (and b!743057 res!500310) b!743068))

(assert (= (and b!743068 res!500315) b!743069))

(assert (= (and b!743069 res!500314) b!743060))

(assert (= (and b!743068 (not res!500316)) b!743061))

(assert (= (and b!743061 (not res!500311)) b!743072))

(assert (= (and b!743072 (not res!500323)) b!743055))

(assert (= (and b!743055 (not res!500324)) b!743070))

(declare-fun m!693891 () Bool)

(assert (=> b!743064 m!693891))

(declare-fun m!693893 () Bool)

(assert (=> b!743069 m!693893))

(assert (=> b!743069 m!693893))

(declare-fun m!693895 () Bool)

(assert (=> b!743069 m!693895))

(declare-fun m!693897 () Bool)

(assert (=> b!743072 m!693897))

(declare-fun m!693899 () Bool)

(assert (=> b!743072 m!693899))

(declare-fun m!693901 () Bool)

(assert (=> b!743058 m!693901))

(assert (=> b!743061 m!693893))

(assert (=> b!743061 m!693893))

(declare-fun m!693903 () Bool)

(assert (=> b!743061 m!693903))

(declare-fun m!693905 () Bool)

(assert (=> b!743068 m!693905))

(declare-fun m!693907 () Bool)

(assert (=> b!743068 m!693907))

(declare-fun m!693909 () Bool)

(assert (=> b!743057 m!693909))

(assert (=> b!743057 m!693897))

(assert (=> b!743057 m!693909))

(declare-fun m!693911 () Bool)

(assert (=> b!743057 m!693911))

(declare-fun m!693913 () Bool)

(assert (=> b!743057 m!693913))

(declare-fun m!693915 () Bool)

(assert (=> b!743057 m!693915))

(assert (=> b!743074 m!693893))

(assert (=> b!743074 m!693893))

(assert (=> b!743074 m!693903))

(declare-fun m!693917 () Bool)

(assert (=> b!743067 m!693917))

(declare-fun m!693919 () Bool)

(assert (=> b!743063 m!693919))

(assert (=> b!743060 m!693893))

(assert (=> b!743060 m!693893))

(declare-fun m!693921 () Bool)

(assert (=> b!743060 m!693921))

(declare-fun m!693923 () Bool)

(assert (=> b!743071 m!693923))

(declare-fun m!693925 () Bool)

(assert (=> b!743055 m!693925))

(assert (=> b!743059 m!693893))

(assert (=> b!743059 m!693893))

(declare-fun m!693927 () Bool)

(assert (=> b!743059 m!693927))

(declare-fun m!693929 () Bool)

(assert (=> b!743056 m!693929))

(assert (=> b!743066 m!693893))

(assert (=> b!743066 m!693893))

(declare-fun m!693931 () Bool)

(assert (=> b!743066 m!693931))

(assert (=> b!743065 m!693893))

(assert (=> b!743065 m!693893))

(declare-fun m!693933 () Bool)

(assert (=> b!743065 m!693933))

(assert (=> b!743065 m!693933))

(assert (=> b!743065 m!693893))

(declare-fun m!693935 () Bool)

(assert (=> b!743065 m!693935))

(declare-fun m!693937 () Bool)

(assert (=> start!65382 m!693937))

(declare-fun m!693939 () Bool)

(assert (=> start!65382 m!693939))

(check-sat (not b!743074) (not b!743065) (not b!743066) (not b!743055) (not b!743071) (not b!743060) (not b!743069) (not b!743063) (not b!743057) (not b!743061) (not b!743056) (not b!743058) (not b!743059) (not b!743067) (not b!743068) (not start!65382))
(check-sat)
