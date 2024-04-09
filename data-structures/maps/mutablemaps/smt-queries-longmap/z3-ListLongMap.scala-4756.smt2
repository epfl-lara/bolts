; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65616 () Bool)

(assert start!65616)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41742 0))(
  ( (array!41743 (arr!19981 (Array (_ BitVec 32) (_ BitVec 64))) (size!20402 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41742)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!418482 () Bool)

(declare-datatypes ((SeekEntryResult!7588 0))(
  ( (MissingZero!7588 (index!32719 (_ BitVec 32))) (Found!7588 (index!32720 (_ BitVec 32))) (Intermediate!7588 (undefined!8400 Bool) (index!32721 (_ BitVec 32)) (x!63675 (_ BitVec 32))) (Undefined!7588) (MissingVacant!7588 (index!32722 (_ BitVec 32))) )
))
(declare-fun lt!333480 () SeekEntryResult!7588)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!749981 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41742 (_ BitVec 32)) SeekEntryResult!7588)

(assert (=> b!749981 (= e!418482 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19981 a!3186) j!159) a!3186 mask!3328) lt!333480))))

(declare-fun b!749982 () Bool)

(declare-fun res!506245 () Bool)

(declare-fun e!418478 () Bool)

(assert (=> b!749982 (=> (not res!506245) (not e!418478))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!749982 (= res!506245 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20402 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20402 a!3186))))))

(declare-fun b!749983 () Bool)

(declare-fun e!418488 () Bool)

(declare-fun e!418486 () Bool)

(assert (=> b!749983 (= e!418488 e!418486)))

(declare-fun res!506243 () Bool)

(assert (=> b!749983 (=> res!506243 e!418486)))

(declare-fun lt!333482 () (_ BitVec 64))

(declare-fun lt!333483 () (_ BitVec 64))

(assert (=> b!749983 (= res!506243 (= lt!333482 lt!333483))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!749983 (= lt!333482 (select (store (arr!19981 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!749985 () Bool)

(declare-datatypes ((Unit!25754 0))(
  ( (Unit!25755) )
))
(declare-fun e!418480 () Unit!25754)

(declare-fun Unit!25756 () Unit!25754)

(assert (=> b!749985 (= e!418480 Unit!25756)))

(assert (=> b!749985 false))

(declare-fun b!749986 () Bool)

(declare-fun res!506241 () Bool)

(declare-fun e!418485 () Bool)

(assert (=> b!749986 (=> (not res!506241) (not e!418485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749986 (= res!506241 (validKeyInArray!0 (select (arr!19981 a!3186) j!159)))))

(declare-fun b!749987 () Bool)

(declare-fun e!418481 () Bool)

(assert (=> b!749987 (= e!418478 e!418481)))

(declare-fun res!506237 () Bool)

(assert (=> b!749987 (=> (not res!506237) (not e!418481))))

(declare-fun lt!333486 () SeekEntryResult!7588)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41742 (_ BitVec 32)) SeekEntryResult!7588)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749987 (= res!506237 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19981 a!3186) j!159) mask!3328) (select (arr!19981 a!3186) j!159) a!3186 mask!3328) lt!333486))))

(assert (=> b!749987 (= lt!333486 (Intermediate!7588 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749988 () Bool)

(declare-fun res!506249 () Bool)

(assert (=> b!749988 (=> res!506249 e!418488)))

(assert (=> b!749988 (= res!506249 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19981 a!3186) j!159) a!3186 mask!3328) lt!333480)))))

(declare-fun b!749989 () Bool)

(declare-fun res!506250 () Bool)

(assert (=> b!749989 (=> (not res!506250) (not e!418478))))

(declare-datatypes ((List!14036 0))(
  ( (Nil!14033) (Cons!14032 (h!15104 (_ BitVec 64)) (t!20359 List!14036)) )
))
(declare-fun arrayNoDuplicates!0 (array!41742 (_ BitVec 32) List!14036) Bool)

(assert (=> b!749989 (= res!506250 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14033))))

(declare-fun b!749990 () Bool)

(declare-fun e!418484 () Bool)

(assert (=> b!749990 (= e!418484 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19981 a!3186) j!159) a!3186 mask!3328) (Found!7588 j!159)))))

(declare-fun b!749991 () Bool)

(declare-fun res!506239 () Bool)

(assert (=> b!749991 (=> (not res!506239) (not e!418481))))

(assert (=> b!749991 (= res!506239 e!418484)))

(declare-fun c!82254 () Bool)

(assert (=> b!749991 (= c!82254 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749992 () Bool)

(declare-fun e!418483 () Bool)

(assert (=> b!749992 (= e!418481 e!418483)))

(declare-fun res!506238 () Bool)

(assert (=> b!749992 (=> (not res!506238) (not e!418483))))

(declare-fun lt!333478 () SeekEntryResult!7588)

(declare-fun lt!333485 () SeekEntryResult!7588)

(assert (=> b!749992 (= res!506238 (= lt!333478 lt!333485))))

(declare-fun lt!333488 () array!41742)

(assert (=> b!749992 (= lt!333485 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333483 lt!333488 mask!3328))))

(assert (=> b!749992 (= lt!333478 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333483 mask!3328) lt!333483 lt!333488 mask!3328))))

(assert (=> b!749992 (= lt!333483 (select (store (arr!19981 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!749992 (= lt!333488 (array!41743 (store (arr!19981 a!3186) i!1173 k0!2102) (size!20402 a!3186)))))

(declare-fun b!749993 () Bool)

(declare-fun res!506253 () Bool)

(assert (=> b!749993 (=> (not res!506253) (not e!418481))))

(assert (=> b!749993 (= res!506253 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19981 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749994 () Bool)

(declare-fun res!506244 () Bool)

(assert (=> b!749994 (=> (not res!506244) (not e!418485))))

(assert (=> b!749994 (= res!506244 (validKeyInArray!0 k0!2102))))

(declare-fun b!749984 () Bool)

(assert (=> b!749984 (= e!418483 (not e!418488))))

(declare-fun res!506242 () Bool)

(assert (=> b!749984 (=> res!506242 e!418488)))

(get-info :version)

(assert (=> b!749984 (= res!506242 (or (not ((_ is Intermediate!7588) lt!333485)) (bvslt x!1131 (x!63675 lt!333485)) (not (= x!1131 (x!63675 lt!333485))) (not (= index!1321 (index!32721 lt!333485)))))))

(assert (=> b!749984 e!418482))

(declare-fun res!506236 () Bool)

(assert (=> b!749984 (=> (not res!506236) (not e!418482))))

(declare-fun lt!333479 () SeekEntryResult!7588)

(assert (=> b!749984 (= res!506236 (= lt!333479 lt!333480))))

(assert (=> b!749984 (= lt!333480 (Found!7588 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41742 (_ BitVec 32)) SeekEntryResult!7588)

(assert (=> b!749984 (= lt!333479 (seekEntryOrOpen!0 (select (arr!19981 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41742 (_ BitVec 32)) Bool)

(assert (=> b!749984 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333481 () Unit!25754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41742 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25754)

(assert (=> b!749984 (= lt!333481 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!506252 () Bool)

(assert (=> start!65616 (=> (not res!506252) (not e!418485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65616 (= res!506252 (validMask!0 mask!3328))))

(assert (=> start!65616 e!418485))

(assert (=> start!65616 true))

(declare-fun array_inv!15755 (array!41742) Bool)

(assert (=> start!65616 (array_inv!15755 a!3186)))

(declare-fun b!749995 () Bool)

(declare-fun res!506246 () Bool)

(assert (=> b!749995 (=> (not res!506246) (not e!418485))))

(declare-fun arrayContainsKey!0 (array!41742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749995 (= res!506246 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749996 () Bool)

(declare-fun res!506251 () Bool)

(assert (=> b!749996 (=> (not res!506251) (not e!418478))))

(assert (=> b!749996 (= res!506251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749997 () Bool)

(assert (=> b!749997 (= e!418486 true)))

(declare-fun e!418487 () Bool)

(assert (=> b!749997 e!418487))

(declare-fun res!506247 () Bool)

(assert (=> b!749997 (=> (not res!506247) (not e!418487))))

(assert (=> b!749997 (= res!506247 (= lt!333482 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333484 () Unit!25754)

(assert (=> b!749997 (= lt!333484 e!418480)))

(declare-fun c!82253 () Bool)

(assert (=> b!749997 (= c!82253 (= lt!333482 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749998 () Bool)

(assert (=> b!749998 (= e!418484 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19981 a!3186) j!159) a!3186 mask!3328) lt!333486))))

(declare-fun b!749999 () Bool)

(assert (=> b!749999 (= e!418485 e!418478)))

(declare-fun res!506240 () Bool)

(assert (=> b!749999 (=> (not res!506240) (not e!418478))))

(declare-fun lt!333487 () SeekEntryResult!7588)

(assert (=> b!749999 (= res!506240 (or (= lt!333487 (MissingZero!7588 i!1173)) (= lt!333487 (MissingVacant!7588 i!1173))))))

(assert (=> b!749999 (= lt!333487 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!750000 () Bool)

(declare-fun Unit!25757 () Unit!25754)

(assert (=> b!750000 (= e!418480 Unit!25757)))

(declare-fun b!750001 () Bool)

(declare-fun res!506248 () Bool)

(assert (=> b!750001 (=> (not res!506248) (not e!418485))))

(assert (=> b!750001 (= res!506248 (and (= (size!20402 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20402 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20402 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750002 () Bool)

(assert (=> b!750002 (= e!418487 (= (seekEntryOrOpen!0 lt!333483 lt!333488 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333483 lt!333488 mask!3328)))))

(assert (= (and start!65616 res!506252) b!750001))

(assert (= (and b!750001 res!506248) b!749986))

(assert (= (and b!749986 res!506241) b!749994))

(assert (= (and b!749994 res!506244) b!749995))

(assert (= (and b!749995 res!506246) b!749999))

(assert (= (and b!749999 res!506240) b!749996))

(assert (= (and b!749996 res!506251) b!749989))

(assert (= (and b!749989 res!506250) b!749982))

(assert (= (and b!749982 res!506245) b!749987))

(assert (= (and b!749987 res!506237) b!749993))

(assert (= (and b!749993 res!506253) b!749991))

(assert (= (and b!749991 c!82254) b!749998))

(assert (= (and b!749991 (not c!82254)) b!749990))

(assert (= (and b!749991 res!506239) b!749992))

(assert (= (and b!749992 res!506238) b!749984))

(assert (= (and b!749984 res!506236) b!749981))

(assert (= (and b!749984 (not res!506242)) b!749988))

(assert (= (and b!749988 (not res!506249)) b!749983))

(assert (= (and b!749983 (not res!506243)) b!749997))

(assert (= (and b!749997 c!82253) b!749985))

(assert (= (and b!749997 (not c!82253)) b!750000))

(assert (= (and b!749997 res!506247) b!750002))

(declare-fun m!699545 () Bool)

(assert (=> b!749998 m!699545))

(assert (=> b!749998 m!699545))

(declare-fun m!699547 () Bool)

(assert (=> b!749998 m!699547))

(assert (=> b!749988 m!699545))

(assert (=> b!749988 m!699545))

(declare-fun m!699549 () Bool)

(assert (=> b!749988 m!699549))

(assert (=> b!749987 m!699545))

(assert (=> b!749987 m!699545))

(declare-fun m!699551 () Bool)

(assert (=> b!749987 m!699551))

(assert (=> b!749987 m!699551))

(assert (=> b!749987 m!699545))

(declare-fun m!699553 () Bool)

(assert (=> b!749987 m!699553))

(declare-fun m!699555 () Bool)

(assert (=> b!749992 m!699555))

(declare-fun m!699557 () Bool)

(assert (=> b!749992 m!699557))

(assert (=> b!749992 m!699557))

(declare-fun m!699559 () Bool)

(assert (=> b!749992 m!699559))

(declare-fun m!699561 () Bool)

(assert (=> b!749992 m!699561))

(declare-fun m!699563 () Bool)

(assert (=> b!749992 m!699563))

(declare-fun m!699565 () Bool)

(assert (=> b!749996 m!699565))

(assert (=> b!749986 m!699545))

(assert (=> b!749986 m!699545))

(declare-fun m!699567 () Bool)

(assert (=> b!749986 m!699567))

(declare-fun m!699569 () Bool)

(assert (=> b!749994 m!699569))

(declare-fun m!699571 () Bool)

(assert (=> b!750002 m!699571))

(declare-fun m!699573 () Bool)

(assert (=> b!750002 m!699573))

(declare-fun m!699575 () Bool)

(assert (=> b!749993 m!699575))

(assert (=> b!749981 m!699545))

(assert (=> b!749981 m!699545))

(declare-fun m!699577 () Bool)

(assert (=> b!749981 m!699577))

(declare-fun m!699579 () Bool)

(assert (=> b!749999 m!699579))

(declare-fun m!699581 () Bool)

(assert (=> start!65616 m!699581))

(declare-fun m!699583 () Bool)

(assert (=> start!65616 m!699583))

(declare-fun m!699585 () Bool)

(assert (=> b!749989 m!699585))

(assert (=> b!749990 m!699545))

(assert (=> b!749990 m!699545))

(assert (=> b!749990 m!699549))

(assert (=> b!749983 m!699561))

(declare-fun m!699587 () Bool)

(assert (=> b!749983 m!699587))

(declare-fun m!699589 () Bool)

(assert (=> b!749995 m!699589))

(assert (=> b!749984 m!699545))

(assert (=> b!749984 m!699545))

(declare-fun m!699591 () Bool)

(assert (=> b!749984 m!699591))

(declare-fun m!699593 () Bool)

(assert (=> b!749984 m!699593))

(declare-fun m!699595 () Bool)

(assert (=> b!749984 m!699595))

(check-sat (not b!749994) (not b!749995) (not b!749988) (not b!749996) (not b!749984) (not b!749998) (not b!749999) (not b!749992) (not b!750002) (not b!749990) (not b!749986) (not b!749981) (not start!65616) (not b!749987) (not b!749989))
(check-sat)
