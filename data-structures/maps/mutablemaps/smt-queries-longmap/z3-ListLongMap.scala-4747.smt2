; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65562 () Bool)

(assert start!65562)

(declare-datatypes ((array!41688 0))(
  ( (array!41689 (arr!19954 (Array (_ BitVec 32) (_ BitVec 64))) (size!20375 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41688)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7561 0))(
  ( (MissingZero!7561 (index!32611 (_ BitVec 32))) (Found!7561 (index!32612 (_ BitVec 32))) (Intermediate!7561 (undefined!8373 Bool) (index!32613 (_ BitVec 32)) (x!63576 (_ BitVec 32))) (Undefined!7561) (MissingVacant!7561 (index!32614 (_ BitVec 32))) )
))
(declare-fun lt!332633 () SeekEntryResult!7561)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!748231 () Bool)

(declare-fun e!417664 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41688 (_ BitVec 32)) SeekEntryResult!7561)

(assert (=> b!748231 (= e!417664 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19954 a!3186) j!159) a!3186 mask!3328) lt!332633))))

(declare-fun b!748232 () Bool)

(declare-fun res!504815 () Bool)

(declare-fun e!417665 () Bool)

(assert (=> b!748232 (=> (not res!504815) (not e!417665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41688 (_ BitVec 32)) Bool)

(assert (=> b!748232 (= res!504815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748233 () Bool)

(declare-fun res!504812 () Bool)

(assert (=> b!748233 (=> (not res!504812) (not e!417665))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748233 (= res!504812 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20375 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20375 a!3186))))))

(declare-fun b!748234 () Bool)

(declare-fun res!504822 () Bool)

(declare-fun e!417663 () Bool)

(assert (=> b!748234 (=> (not res!504822) (not e!417663))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!748234 (= res!504822 (and (= (size!20375 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20375 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20375 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748235 () Bool)

(declare-fun e!417659 () Bool)

(declare-fun e!417658 () Bool)

(assert (=> b!748235 (= e!417659 (not e!417658))))

(declare-fun res!504816 () Bool)

(assert (=> b!748235 (=> res!504816 e!417658)))

(declare-fun lt!332628 () SeekEntryResult!7561)

(get-info :version)

(assert (=> b!748235 (= res!504816 (or (not ((_ is Intermediate!7561) lt!332628)) (bvslt x!1131 (x!63576 lt!332628)) (not (= x!1131 (x!63576 lt!332628))) (not (= index!1321 (index!32613 lt!332628)))))))

(declare-fun e!417662 () Bool)

(assert (=> b!748235 e!417662))

(declare-fun res!504817 () Bool)

(assert (=> b!748235 (=> (not res!504817) (not e!417662))))

(declare-fun lt!332632 () SeekEntryResult!7561)

(declare-fun lt!332631 () SeekEntryResult!7561)

(assert (=> b!748235 (= res!504817 (= lt!332632 lt!332631))))

(assert (=> b!748235 (= lt!332631 (Found!7561 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41688 (_ BitVec 32)) SeekEntryResult!7561)

(assert (=> b!748235 (= lt!332632 (seekEntryOrOpen!0 (select (arr!19954 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!748235 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25646 0))(
  ( (Unit!25647) )
))
(declare-fun lt!332635 () Unit!25646)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41688 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25646)

(assert (=> b!748235 (= lt!332635 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748236 () Bool)

(declare-fun res!504814 () Bool)

(assert (=> b!748236 (=> res!504814 e!417658)))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun lt!332634 () (_ BitVec 64))

(assert (=> b!748236 (= res!504814 (= (select (store (arr!19954 a!3186) i!1173 k0!2102) index!1321) lt!332634))))

(declare-fun b!748237 () Bool)

(declare-fun e!417661 () Unit!25646)

(declare-fun Unit!25648 () Unit!25646)

(assert (=> b!748237 (= e!417661 Unit!25648)))

(assert (=> b!748237 false))

(declare-fun b!748238 () Bool)

(declare-fun e!417666 () Bool)

(assert (=> b!748238 (= e!417666 e!417659)))

(declare-fun res!504818 () Bool)

(assert (=> b!748238 (=> (not res!504818) (not e!417659))))

(declare-fun lt!332630 () SeekEntryResult!7561)

(assert (=> b!748238 (= res!504818 (= lt!332630 lt!332628))))

(declare-fun lt!332636 () array!41688)

(assert (=> b!748238 (= lt!332628 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332634 lt!332636 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748238 (= lt!332630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332634 mask!3328) lt!332634 lt!332636 mask!3328))))

(assert (=> b!748238 (= lt!332634 (select (store (arr!19954 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!748238 (= lt!332636 (array!41689 (store (arr!19954 a!3186) i!1173 k0!2102) (size!20375 a!3186)))))

(declare-fun b!748239 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41688 (_ BitVec 32)) SeekEntryResult!7561)

(assert (=> b!748239 (= e!417662 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19954 a!3186) j!159) a!3186 mask!3328) lt!332631))))

(declare-fun b!748240 () Bool)

(declare-fun res!504813 () Bool)

(assert (=> b!748240 (=> (not res!504813) (not e!417666))))

(assert (=> b!748240 (= res!504813 e!417664)))

(declare-fun c!82092 () Bool)

(assert (=> b!748240 (= c!82092 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748241 () Bool)

(declare-fun res!504810 () Bool)

(assert (=> b!748241 (=> (not res!504810) (not e!417663))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748241 (= res!504810 (validKeyInArray!0 (select (arr!19954 a!3186) j!159)))))

(declare-fun b!748242 () Bool)

(declare-fun res!504819 () Bool)

(assert (=> b!748242 (=> (not res!504819) (not e!417663))))

(assert (=> b!748242 (= res!504819 (validKeyInArray!0 k0!2102))))

(declare-fun b!748243 () Bool)

(declare-fun res!504809 () Bool)

(assert (=> b!748243 (=> (not res!504809) (not e!417666))))

(assert (=> b!748243 (= res!504809 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19954 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748244 () Bool)

(assert (=> b!748244 (= e!417663 e!417665)))

(declare-fun res!504821 () Bool)

(assert (=> b!748244 (=> (not res!504821) (not e!417665))))

(declare-fun lt!332627 () SeekEntryResult!7561)

(assert (=> b!748244 (= res!504821 (or (= lt!332627 (MissingZero!7561 i!1173)) (= lt!332627 (MissingVacant!7561 i!1173))))))

(assert (=> b!748244 (= lt!332627 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!748245 () Bool)

(assert (=> b!748245 (= e!417665 e!417666)))

(declare-fun res!504825 () Bool)

(assert (=> b!748245 (=> (not res!504825) (not e!417666))))

(assert (=> b!748245 (= res!504825 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19954 a!3186) j!159) mask!3328) (select (arr!19954 a!3186) j!159) a!3186 mask!3328) lt!332633))))

(assert (=> b!748245 (= lt!332633 (Intermediate!7561 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748246 () Bool)

(declare-fun res!504823 () Bool)

(assert (=> b!748246 (=> res!504823 e!417658)))

(assert (=> b!748246 (= res!504823 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19954 a!3186) j!159) a!3186 mask!3328) lt!332631)))))

(declare-fun res!504820 () Bool)

(assert (=> start!65562 (=> (not res!504820) (not e!417663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65562 (= res!504820 (validMask!0 mask!3328))))

(assert (=> start!65562 e!417663))

(assert (=> start!65562 true))

(declare-fun array_inv!15728 (array!41688) Bool)

(assert (=> start!65562 (array_inv!15728 a!3186)))

(declare-fun b!748230 () Bool)

(declare-fun res!504811 () Bool)

(assert (=> b!748230 (=> (not res!504811) (not e!417663))))

(declare-fun arrayContainsKey!0 (array!41688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748230 (= res!504811 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!748247 () Bool)

(assert (=> b!748247 (= e!417664 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19954 a!3186) j!159) a!3186 mask!3328) (Found!7561 j!159)))))

(declare-fun b!748248 () Bool)

(assert (=> b!748248 (= e!417658 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!748248 (= (select (store (arr!19954 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332629 () Unit!25646)

(assert (=> b!748248 (= lt!332629 e!417661)))

(declare-fun c!82091 () Bool)

(assert (=> b!748248 (= c!82091 (= (select (store (arr!19954 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748249 () Bool)

(declare-fun res!504824 () Bool)

(assert (=> b!748249 (=> (not res!504824) (not e!417665))))

(declare-datatypes ((List!14009 0))(
  ( (Nil!14006) (Cons!14005 (h!15077 (_ BitVec 64)) (t!20332 List!14009)) )
))
(declare-fun arrayNoDuplicates!0 (array!41688 (_ BitVec 32) List!14009) Bool)

(assert (=> b!748249 (= res!504824 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14006))))

(declare-fun b!748250 () Bool)

(declare-fun Unit!25649 () Unit!25646)

(assert (=> b!748250 (= e!417661 Unit!25649)))

(assert (= (and start!65562 res!504820) b!748234))

(assert (= (and b!748234 res!504822) b!748241))

(assert (= (and b!748241 res!504810) b!748242))

(assert (= (and b!748242 res!504819) b!748230))

(assert (= (and b!748230 res!504811) b!748244))

(assert (= (and b!748244 res!504821) b!748232))

(assert (= (and b!748232 res!504815) b!748249))

(assert (= (and b!748249 res!504824) b!748233))

(assert (= (and b!748233 res!504812) b!748245))

(assert (= (and b!748245 res!504825) b!748243))

(assert (= (and b!748243 res!504809) b!748240))

(assert (= (and b!748240 c!82092) b!748231))

(assert (= (and b!748240 (not c!82092)) b!748247))

(assert (= (and b!748240 res!504813) b!748238))

(assert (= (and b!748238 res!504818) b!748235))

(assert (= (and b!748235 res!504817) b!748239))

(assert (= (and b!748235 (not res!504816)) b!748246))

(assert (= (and b!748246 (not res!504823)) b!748236))

(assert (= (and b!748236 (not res!504814)) b!748248))

(assert (= (and b!748248 c!82091) b!748237))

(assert (= (and b!748248 (not c!82091)) b!748250))

(declare-fun m!698191 () Bool)

(assert (=> start!65562 m!698191))

(declare-fun m!698193 () Bool)

(assert (=> start!65562 m!698193))

(declare-fun m!698195 () Bool)

(assert (=> b!748247 m!698195))

(assert (=> b!748247 m!698195))

(declare-fun m!698197 () Bool)

(assert (=> b!748247 m!698197))

(declare-fun m!698199 () Bool)

(assert (=> b!748232 m!698199))

(assert (=> b!748231 m!698195))

(assert (=> b!748231 m!698195))

(declare-fun m!698201 () Bool)

(assert (=> b!748231 m!698201))

(declare-fun m!698203 () Bool)

(assert (=> b!748230 m!698203))

(assert (=> b!748246 m!698195))

(assert (=> b!748246 m!698195))

(assert (=> b!748246 m!698197))

(assert (=> b!748239 m!698195))

(assert (=> b!748239 m!698195))

(declare-fun m!698205 () Bool)

(assert (=> b!748239 m!698205))

(assert (=> b!748245 m!698195))

(assert (=> b!748245 m!698195))

(declare-fun m!698207 () Bool)

(assert (=> b!748245 m!698207))

(assert (=> b!748245 m!698207))

(assert (=> b!748245 m!698195))

(declare-fun m!698209 () Bool)

(assert (=> b!748245 m!698209))

(assert (=> b!748241 m!698195))

(assert (=> b!748241 m!698195))

(declare-fun m!698211 () Bool)

(assert (=> b!748241 m!698211))

(assert (=> b!748235 m!698195))

(assert (=> b!748235 m!698195))

(declare-fun m!698213 () Bool)

(assert (=> b!748235 m!698213))

(declare-fun m!698215 () Bool)

(assert (=> b!748235 m!698215))

(declare-fun m!698217 () Bool)

(assert (=> b!748235 m!698217))

(declare-fun m!698219 () Bool)

(assert (=> b!748244 m!698219))

(declare-fun m!698221 () Bool)

(assert (=> b!748249 m!698221))

(declare-fun m!698223 () Bool)

(assert (=> b!748242 m!698223))

(declare-fun m!698225 () Bool)

(assert (=> b!748243 m!698225))

(declare-fun m!698227 () Bool)

(assert (=> b!748236 m!698227))

(declare-fun m!698229 () Bool)

(assert (=> b!748236 m!698229))

(assert (=> b!748248 m!698227))

(assert (=> b!748248 m!698229))

(declare-fun m!698231 () Bool)

(assert (=> b!748238 m!698231))

(assert (=> b!748238 m!698227))

(declare-fun m!698233 () Bool)

(assert (=> b!748238 m!698233))

(declare-fun m!698235 () Bool)

(assert (=> b!748238 m!698235))

(assert (=> b!748238 m!698231))

(declare-fun m!698237 () Bool)

(assert (=> b!748238 m!698237))

(check-sat (not b!748245) (not b!748232) (not b!748249) (not b!748231) (not start!65562) (not b!748246) (not b!748247) (not b!748242) (not b!748244) (not b!748239) (not b!748238) (not b!748235) (not b!748230) (not b!748241))
(check-sat)
