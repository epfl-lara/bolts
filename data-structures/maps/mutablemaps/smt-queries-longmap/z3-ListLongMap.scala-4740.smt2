; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65520 () Bool)

(assert start!65520)

(declare-datatypes ((SeekEntryResult!7540 0))(
  ( (MissingZero!7540 (index!32527 (_ BitVec 32))) (Found!7540 (index!32528 (_ BitVec 32))) (Intermediate!7540 (undefined!8352 Bool) (index!32529 (_ BitVec 32)) (x!63499 (_ BitVec 32))) (Undefined!7540) (MissingVacant!7540 (index!32530 (_ BitVec 32))) )
))
(declare-fun lt!332004 () SeekEntryResult!7540)

(declare-datatypes ((array!41646 0))(
  ( (array!41647 (arr!19933 (Array (_ BitVec 32) (_ BitVec 64))) (size!20354 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41646)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!417084 () Bool)

(declare-fun b!746898 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41646 (_ BitVec 32)) SeekEntryResult!7540)

(assert (=> b!746898 (= e!417084 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19933 a!3186) j!159) a!3186 mask!3328) lt!332004))))

(declare-fun b!746899 () Bool)

(declare-fun e!417087 () Bool)

(declare-fun e!417086 () Bool)

(assert (=> b!746899 (= e!417087 e!417086)))

(declare-fun res!503732 () Bool)

(assert (=> b!746899 (=> (not res!503732) (not e!417086))))

(declare-fun lt!331998 () SeekEntryResult!7540)

(declare-fun lt!331999 () SeekEntryResult!7540)

(assert (=> b!746899 (= res!503732 (= lt!331998 lt!331999))))

(declare-fun lt!332003 () (_ BitVec 64))

(declare-fun lt!332002 () array!41646)

(assert (=> b!746899 (= lt!331999 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332003 lt!332002 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746899 (= lt!331998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332003 mask!3328) lt!332003 lt!332002 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!746899 (= lt!332003 (select (store (arr!19933 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!746899 (= lt!332002 (array!41647 (store (arr!19933 a!3186) i!1173 k0!2102) (size!20354 a!3186)))))

(declare-fun b!746900 () Bool)

(declare-fun res!503739 () Bool)

(declare-fun e!417083 () Bool)

(assert (=> b!746900 (=> (not res!503739) (not e!417083))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746900 (= res!503739 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20354 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20354 a!3186))))))

(declare-fun b!746901 () Bool)

(declare-fun res!503744 () Bool)

(assert (=> b!746901 (=> (not res!503744) (not e!417087))))

(assert (=> b!746901 (= res!503744 e!417084)))

(declare-fun c!81966 () Bool)

(assert (=> b!746901 (= c!81966 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746902 () Bool)

(declare-fun e!417089 () Bool)

(assert (=> b!746902 (= e!417089 e!417083)))

(declare-fun res!503735 () Bool)

(assert (=> b!746902 (=> (not res!503735) (not e!417083))))

(declare-fun lt!332001 () SeekEntryResult!7540)

(assert (=> b!746902 (= res!503735 (or (= lt!332001 (MissingZero!7540 i!1173)) (= lt!332001 (MissingVacant!7540 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41646 (_ BitVec 32)) SeekEntryResult!7540)

(assert (=> b!746902 (= lt!332001 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!746903 () Bool)

(declare-datatypes ((Unit!25562 0))(
  ( (Unit!25563) )
))
(declare-fun e!417088 () Unit!25562)

(declare-fun Unit!25564 () Unit!25562)

(assert (=> b!746903 (= e!417088 Unit!25564)))

(declare-fun b!746904 () Bool)

(declare-fun res!503729 () Bool)

(assert (=> b!746904 (=> (not res!503729) (not e!417087))))

(assert (=> b!746904 (= res!503729 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19933 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!503734 () Bool)

(assert (=> start!65520 (=> (not res!503734) (not e!417089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65520 (= res!503734 (validMask!0 mask!3328))))

(assert (=> start!65520 e!417089))

(assert (=> start!65520 true))

(declare-fun array_inv!15707 (array!41646) Bool)

(assert (=> start!65520 (array_inv!15707 a!3186)))

(declare-fun b!746905 () Bool)

(declare-fun res!503733 () Bool)

(assert (=> b!746905 (=> (not res!503733) (not e!417089))))

(declare-fun arrayContainsKey!0 (array!41646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746905 (= res!503733 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746906 () Bool)

(declare-fun res!503741 () Bool)

(assert (=> b!746906 (=> (not res!503741) (not e!417089))))

(assert (=> b!746906 (= res!503741 (and (= (size!20354 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20354 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20354 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746907 () Bool)

(declare-fun res!503743 () Bool)

(assert (=> b!746907 (=> (not res!503743) (not e!417089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746907 (= res!503743 (validKeyInArray!0 (select (arr!19933 a!3186) j!159)))))

(declare-fun b!746908 () Bool)

(declare-fun res!503740 () Bool)

(assert (=> b!746908 (=> (not res!503740) (not e!417089))))

(assert (=> b!746908 (= res!503740 (validKeyInArray!0 k0!2102))))

(declare-fun b!746909 () Bool)

(declare-fun Unit!25565 () Unit!25562)

(assert (=> b!746909 (= e!417088 Unit!25565)))

(assert (=> b!746909 false))

(declare-fun b!746910 () Bool)

(declare-fun e!417090 () Bool)

(assert (=> b!746910 (= e!417090 true)))

(assert (=> b!746910 (= (select (store (arr!19933 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!331997 () Unit!25562)

(assert (=> b!746910 (= lt!331997 e!417088)))

(declare-fun c!81965 () Bool)

(assert (=> b!746910 (= c!81965 (= (select (store (arr!19933 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!746911 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41646 (_ BitVec 32)) SeekEntryResult!7540)

(assert (=> b!746911 (= e!417084 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19933 a!3186) j!159) a!3186 mask!3328) (Found!7540 j!159)))))

(declare-fun lt!332006 () SeekEntryResult!7540)

(declare-fun e!417082 () Bool)

(declare-fun b!746912 () Bool)

(assert (=> b!746912 (= e!417082 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19933 a!3186) j!159) a!3186 mask!3328) lt!332006))))

(declare-fun b!746913 () Bool)

(declare-fun res!503745 () Bool)

(assert (=> b!746913 (=> res!503745 e!417090)))

(assert (=> b!746913 (= res!503745 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19933 a!3186) j!159) a!3186 mask!3328) lt!332006)))))

(declare-fun b!746914 () Bool)

(assert (=> b!746914 (= e!417086 (not e!417090))))

(declare-fun res!503731 () Bool)

(assert (=> b!746914 (=> res!503731 e!417090)))

(get-info :version)

(assert (=> b!746914 (= res!503731 (or (not ((_ is Intermediate!7540) lt!331999)) (bvslt x!1131 (x!63499 lt!331999)) (not (= x!1131 (x!63499 lt!331999))) (not (= index!1321 (index!32529 lt!331999)))))))

(assert (=> b!746914 e!417082))

(declare-fun res!503736 () Bool)

(assert (=> b!746914 (=> (not res!503736) (not e!417082))))

(declare-fun lt!332000 () SeekEntryResult!7540)

(assert (=> b!746914 (= res!503736 (= lt!332000 lt!332006))))

(assert (=> b!746914 (= lt!332006 (Found!7540 j!159))))

(assert (=> b!746914 (= lt!332000 (seekEntryOrOpen!0 (select (arr!19933 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41646 (_ BitVec 32)) Bool)

(assert (=> b!746914 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332005 () Unit!25562)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25562)

(assert (=> b!746914 (= lt!332005 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746915 () Bool)

(declare-fun res!503730 () Bool)

(assert (=> b!746915 (=> (not res!503730) (not e!417083))))

(assert (=> b!746915 (= res!503730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746916 () Bool)

(declare-fun res!503737 () Bool)

(assert (=> b!746916 (=> (not res!503737) (not e!417083))))

(declare-datatypes ((List!13988 0))(
  ( (Nil!13985) (Cons!13984 (h!15056 (_ BitVec 64)) (t!20311 List!13988)) )
))
(declare-fun arrayNoDuplicates!0 (array!41646 (_ BitVec 32) List!13988) Bool)

(assert (=> b!746916 (= res!503737 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13985))))

(declare-fun b!746917 () Bool)

(declare-fun res!503742 () Bool)

(assert (=> b!746917 (=> res!503742 e!417090)))

(assert (=> b!746917 (= res!503742 (= (select (store (arr!19933 a!3186) i!1173 k0!2102) index!1321) lt!332003))))

(declare-fun b!746918 () Bool)

(assert (=> b!746918 (= e!417083 e!417087)))

(declare-fun res!503738 () Bool)

(assert (=> b!746918 (=> (not res!503738) (not e!417087))))

(assert (=> b!746918 (= res!503738 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19933 a!3186) j!159) mask!3328) (select (arr!19933 a!3186) j!159) a!3186 mask!3328) lt!332004))))

(assert (=> b!746918 (= lt!332004 (Intermediate!7540 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65520 res!503734) b!746906))

(assert (= (and b!746906 res!503741) b!746907))

(assert (= (and b!746907 res!503743) b!746908))

(assert (= (and b!746908 res!503740) b!746905))

(assert (= (and b!746905 res!503733) b!746902))

(assert (= (and b!746902 res!503735) b!746915))

(assert (= (and b!746915 res!503730) b!746916))

(assert (= (and b!746916 res!503737) b!746900))

(assert (= (and b!746900 res!503739) b!746918))

(assert (= (and b!746918 res!503738) b!746904))

(assert (= (and b!746904 res!503729) b!746901))

(assert (= (and b!746901 c!81966) b!746898))

(assert (= (and b!746901 (not c!81966)) b!746911))

(assert (= (and b!746901 res!503744) b!746899))

(assert (= (and b!746899 res!503732) b!746914))

(assert (= (and b!746914 res!503736) b!746912))

(assert (= (and b!746914 (not res!503731)) b!746913))

(assert (= (and b!746913 (not res!503745)) b!746917))

(assert (= (and b!746917 (not res!503742)) b!746910))

(assert (= (and b!746910 c!81965) b!746909))

(assert (= (and b!746910 (not c!81965)) b!746903))

(declare-fun m!697177 () Bool)

(assert (=> b!746915 m!697177))

(declare-fun m!697179 () Bool)

(assert (=> b!746899 m!697179))

(declare-fun m!697181 () Bool)

(assert (=> b!746899 m!697181))

(declare-fun m!697183 () Bool)

(assert (=> b!746899 m!697183))

(declare-fun m!697185 () Bool)

(assert (=> b!746899 m!697185))

(declare-fun m!697187 () Bool)

(assert (=> b!746899 m!697187))

(assert (=> b!746899 m!697183))

(declare-fun m!697189 () Bool)

(assert (=> b!746911 m!697189))

(assert (=> b!746911 m!697189))

(declare-fun m!697191 () Bool)

(assert (=> b!746911 m!697191))

(declare-fun m!697193 () Bool)

(assert (=> b!746905 m!697193))

(declare-fun m!697195 () Bool)

(assert (=> start!65520 m!697195))

(declare-fun m!697197 () Bool)

(assert (=> start!65520 m!697197))

(assert (=> b!746914 m!697189))

(assert (=> b!746914 m!697189))

(declare-fun m!697199 () Bool)

(assert (=> b!746914 m!697199))

(declare-fun m!697201 () Bool)

(assert (=> b!746914 m!697201))

(declare-fun m!697203 () Bool)

(assert (=> b!746914 m!697203))

(assert (=> b!746910 m!697181))

(declare-fun m!697205 () Bool)

(assert (=> b!746910 m!697205))

(declare-fun m!697207 () Bool)

(assert (=> b!746904 m!697207))

(assert (=> b!746918 m!697189))

(assert (=> b!746918 m!697189))

(declare-fun m!697209 () Bool)

(assert (=> b!746918 m!697209))

(assert (=> b!746918 m!697209))

(assert (=> b!746918 m!697189))

(declare-fun m!697211 () Bool)

(assert (=> b!746918 m!697211))

(declare-fun m!697213 () Bool)

(assert (=> b!746908 m!697213))

(declare-fun m!697215 () Bool)

(assert (=> b!746902 m!697215))

(assert (=> b!746898 m!697189))

(assert (=> b!746898 m!697189))

(declare-fun m!697217 () Bool)

(assert (=> b!746898 m!697217))

(declare-fun m!697219 () Bool)

(assert (=> b!746916 m!697219))

(assert (=> b!746913 m!697189))

(assert (=> b!746913 m!697189))

(assert (=> b!746913 m!697191))

(assert (=> b!746912 m!697189))

(assert (=> b!746912 m!697189))

(declare-fun m!697221 () Bool)

(assert (=> b!746912 m!697221))

(assert (=> b!746907 m!697189))

(assert (=> b!746907 m!697189))

(declare-fun m!697223 () Bool)

(assert (=> b!746907 m!697223))

(assert (=> b!746917 m!697181))

(assert (=> b!746917 m!697205))

(check-sat (not b!746908) (not b!746914) (not b!746913) (not b!746915) (not b!746907) (not start!65520) (not b!746905) (not b!746898) (not b!746916) (not b!746899) (not b!746912) (not b!746911) (not b!746902) (not b!746918))
(check-sat)
