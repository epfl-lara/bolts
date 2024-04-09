; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65154 () Bool)

(assert start!65154)

(declare-fun b!735546 () Bool)

(declare-fun res!494375 () Bool)

(declare-fun e!411550 () Bool)

(assert (=> b!735546 (=> (not res!494375) (not e!411550))))

(declare-datatypes ((array!41280 0))(
  ( (array!41281 (arr!19750 (Array (_ BitVec 32) (_ BitVec 64))) (size!20171 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41280)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!735546 (= res!494375 (and (= (size!20171 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20171 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20171 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!735547 () Bool)

(declare-fun res!494367 () Bool)

(declare-fun e!411552 () Bool)

(assert (=> b!735547 (=> (not res!494367) (not e!411552))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735547 (= res!494367 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20171 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20171 a!3186))))))

(declare-fun b!735548 () Bool)

(declare-fun e!411544 () Bool)

(assert (=> b!735548 (= e!411544 true)))

(declare-fun lt!326124 () (_ BitVec 32))

(declare-fun lt!326126 () array!41280)

(declare-datatypes ((SeekEntryResult!7357 0))(
  ( (MissingZero!7357 (index!31795 (_ BitVec 32))) (Found!7357 (index!31796 (_ BitVec 32))) (Intermediate!7357 (undefined!8169 Bool) (index!31797 (_ BitVec 32)) (x!62828 (_ BitVec 32))) (Undefined!7357) (MissingVacant!7357 (index!31798 (_ BitVec 32))) )
))
(declare-fun lt!326118 () SeekEntryResult!7357)

(declare-fun lt!326121 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41280 (_ BitVec 32)) SeekEntryResult!7357)

(assert (=> b!735548 (= lt!326118 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326124 lt!326121 lt!326126 mask!3328))))

(declare-fun b!735549 () Bool)

(declare-datatypes ((Unit!25046 0))(
  ( (Unit!25047) )
))
(declare-fun e!411547 () Unit!25046)

(declare-fun Unit!25048 () Unit!25046)

(assert (=> b!735549 (= e!411547 Unit!25048)))

(declare-fun lt!326122 () SeekEntryResult!7357)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41280 (_ BitVec 32)) SeekEntryResult!7357)

(assert (=> b!735549 (= lt!326122 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19750 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!326119 () SeekEntryResult!7357)

(assert (=> b!735549 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326124 resIntermediateIndex!5 (select (arr!19750 a!3186) j!159) a!3186 mask!3328) lt!326119)))

(declare-fun b!735550 () Bool)

(declare-fun res!494380 () Bool)

(declare-fun e!411549 () Bool)

(assert (=> b!735550 (=> (not res!494380) (not e!411549))))

(assert (=> b!735550 (= res!494380 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19750 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735551 () Bool)

(declare-fun e!411554 () Bool)

(assert (=> b!735551 (= e!411554 e!411544)))

(declare-fun res!494377 () Bool)

(assert (=> b!735551 (=> res!494377 e!411544)))

(assert (=> b!735551 (= res!494377 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326124 #b00000000000000000000000000000000) (bvsge lt!326124 (size!20171 a!3186))))))

(declare-fun lt!326114 () Unit!25046)

(assert (=> b!735551 (= lt!326114 e!411547)))

(declare-fun c!80973 () Bool)

(declare-fun lt!326123 () Bool)

(assert (=> b!735551 (= c!80973 lt!326123)))

(assert (=> b!735551 (= lt!326123 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735551 (= lt!326124 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735552 () Bool)

(assert (=> b!735552 (= e!411552 e!411549)))

(declare-fun res!494376 () Bool)

(assert (=> b!735552 (=> (not res!494376) (not e!411549))))

(declare-fun lt!326113 () SeekEntryResult!7357)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735552 (= res!494376 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19750 a!3186) j!159) mask!3328) (select (arr!19750 a!3186) j!159) a!3186 mask!3328) lt!326113))))

(assert (=> b!735552 (= lt!326113 (Intermediate!7357 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!411551 () Bool)

(declare-fun b!735553 () Bool)

(assert (=> b!735553 (= e!411551 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326124 resIntermediateIndex!5 (select (arr!19750 a!3186) j!159) a!3186 mask!3328) lt!326119)))))

(declare-fun lt!326120 () SeekEntryResult!7357)

(declare-fun b!735554 () Bool)

(declare-fun e!411553 () Bool)

(assert (=> b!735554 (= e!411553 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19750 a!3186) j!159) a!3186 mask!3328) lt!326120))))

(declare-fun b!735555 () Bool)

(assert (=> b!735555 (= e!411550 e!411552)))

(declare-fun res!494370 () Bool)

(assert (=> b!735555 (=> (not res!494370) (not e!411552))))

(declare-fun lt!326125 () SeekEntryResult!7357)

(assert (=> b!735555 (= res!494370 (or (= lt!326125 (MissingZero!7357 i!1173)) (= lt!326125 (MissingVacant!7357 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41280 (_ BitVec 32)) SeekEntryResult!7357)

(assert (=> b!735555 (= lt!326125 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!735556 () Bool)

(declare-fun e!411555 () Bool)

(assert (=> b!735556 (= e!411555 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19750 a!3186) j!159) a!3186 mask!3328) lt!326113))))

(declare-fun b!735557 () Bool)

(declare-fun Unit!25049 () Unit!25046)

(assert (=> b!735557 (= e!411547 Unit!25049)))

(assert (=> b!735557 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326124 (select (arr!19750 a!3186) j!159) a!3186 mask!3328) lt!326113)))

(declare-fun b!735558 () Bool)

(declare-fun e!411546 () Bool)

(assert (=> b!735558 (= e!411546 (not e!411554))))

(declare-fun res!494371 () Bool)

(assert (=> b!735558 (=> res!494371 e!411554)))

(declare-fun lt!326116 () SeekEntryResult!7357)

(get-info :version)

(assert (=> b!735558 (= res!494371 (or (not ((_ is Intermediate!7357) lt!326116)) (bvsge x!1131 (x!62828 lt!326116))))))

(assert (=> b!735558 (= lt!326119 (Found!7357 j!159))))

(declare-fun e!411548 () Bool)

(assert (=> b!735558 e!411548))

(declare-fun res!494373 () Bool)

(assert (=> b!735558 (=> (not res!494373) (not e!411548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41280 (_ BitVec 32)) Bool)

(assert (=> b!735558 (= res!494373 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326115 () Unit!25046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41280 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25046)

(assert (=> b!735558 (= lt!326115 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735559 () Bool)

(declare-fun res!494372 () Bool)

(assert (=> b!735559 (=> (not res!494372) (not e!411550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735559 (= res!494372 (validKeyInArray!0 (select (arr!19750 a!3186) j!159)))))

(declare-fun b!735561 () Bool)

(assert (=> b!735561 (= e!411551 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326124 (select (arr!19750 a!3186) j!159) a!3186 mask!3328) lt!326113)))))

(declare-fun b!735562 () Bool)

(declare-fun res!494365 () Bool)

(assert (=> b!735562 (=> (not res!494365) (not e!411552))))

(declare-datatypes ((List!13805 0))(
  ( (Nil!13802) (Cons!13801 (h!14873 (_ BitVec 64)) (t!20128 List!13805)) )
))
(declare-fun arrayNoDuplicates!0 (array!41280 (_ BitVec 32) List!13805) Bool)

(assert (=> b!735562 (= res!494365 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13802))))

(declare-fun b!735563 () Bool)

(declare-fun res!494382 () Bool)

(assert (=> b!735563 (=> (not res!494382) (not e!411550))))

(assert (=> b!735563 (= res!494382 (validKeyInArray!0 k0!2102))))

(declare-fun b!735564 () Bool)

(assert (=> b!735564 (= e!411549 e!411546)))

(declare-fun res!494381 () Bool)

(assert (=> b!735564 (=> (not res!494381) (not e!411546))))

(declare-fun lt!326117 () SeekEntryResult!7357)

(assert (=> b!735564 (= res!494381 (= lt!326117 lt!326116))))

(assert (=> b!735564 (= lt!326116 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326121 lt!326126 mask!3328))))

(assert (=> b!735564 (= lt!326117 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326121 mask!3328) lt!326121 lt!326126 mask!3328))))

(assert (=> b!735564 (= lt!326121 (select (store (arr!19750 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!735564 (= lt!326126 (array!41281 (store (arr!19750 a!3186) i!1173 k0!2102) (size!20171 a!3186)))))

(declare-fun b!735565 () Bool)

(declare-fun res!494378 () Bool)

(assert (=> b!735565 (=> (not res!494378) (not e!411552))))

(assert (=> b!735565 (= res!494378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!735566 () Bool)

(declare-fun res!494374 () Bool)

(assert (=> b!735566 (=> (not res!494374) (not e!411550))))

(declare-fun arrayContainsKey!0 (array!41280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735566 (= res!494374 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!735567 () Bool)

(assert (=> b!735567 (= e!411548 e!411553)))

(declare-fun res!494379 () Bool)

(assert (=> b!735567 (=> (not res!494379) (not e!411553))))

(assert (=> b!735567 (= res!494379 (= (seekEntryOrOpen!0 (select (arr!19750 a!3186) j!159) a!3186 mask!3328) lt!326120))))

(assert (=> b!735567 (= lt!326120 (Found!7357 j!159))))

(declare-fun b!735568 () Bool)

(declare-fun res!494368 () Bool)

(assert (=> b!735568 (=> res!494368 e!411544)))

(assert (=> b!735568 (= res!494368 e!411551)))

(declare-fun c!80972 () Bool)

(assert (=> b!735568 (= c!80972 lt!326123)))

(declare-fun b!735569 () Bool)

(assert (=> b!735569 (= e!411555 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19750 a!3186) j!159) a!3186 mask!3328) (Found!7357 j!159)))))

(declare-fun b!735560 () Bool)

(declare-fun res!494369 () Bool)

(assert (=> b!735560 (=> (not res!494369) (not e!411549))))

(assert (=> b!735560 (= res!494369 e!411555)))

(declare-fun c!80971 () Bool)

(assert (=> b!735560 (= c!80971 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!494366 () Bool)

(assert (=> start!65154 (=> (not res!494366) (not e!411550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65154 (= res!494366 (validMask!0 mask!3328))))

(assert (=> start!65154 e!411550))

(assert (=> start!65154 true))

(declare-fun array_inv!15524 (array!41280) Bool)

(assert (=> start!65154 (array_inv!15524 a!3186)))

(assert (= (and start!65154 res!494366) b!735546))

(assert (= (and b!735546 res!494375) b!735559))

(assert (= (and b!735559 res!494372) b!735563))

(assert (= (and b!735563 res!494382) b!735566))

(assert (= (and b!735566 res!494374) b!735555))

(assert (= (and b!735555 res!494370) b!735565))

(assert (= (and b!735565 res!494378) b!735562))

(assert (= (and b!735562 res!494365) b!735547))

(assert (= (and b!735547 res!494367) b!735552))

(assert (= (and b!735552 res!494376) b!735550))

(assert (= (and b!735550 res!494380) b!735560))

(assert (= (and b!735560 c!80971) b!735556))

(assert (= (and b!735560 (not c!80971)) b!735569))

(assert (= (and b!735560 res!494369) b!735564))

(assert (= (and b!735564 res!494381) b!735558))

(assert (= (and b!735558 res!494373) b!735567))

(assert (= (and b!735567 res!494379) b!735554))

(assert (= (and b!735558 (not res!494371)) b!735551))

(assert (= (and b!735551 c!80973) b!735557))

(assert (= (and b!735551 (not c!80973)) b!735549))

(assert (= (and b!735551 (not res!494377)) b!735568))

(assert (= (and b!735568 c!80972) b!735561))

(assert (= (and b!735568 (not c!80972)) b!735553))

(assert (= (and b!735568 (not res!494368)) b!735548))

(declare-fun m!687967 () Bool)

(assert (=> b!735569 m!687967))

(assert (=> b!735569 m!687967))

(declare-fun m!687969 () Bool)

(assert (=> b!735569 m!687969))

(declare-fun m!687971 () Bool)

(assert (=> b!735555 m!687971))

(assert (=> b!735554 m!687967))

(assert (=> b!735554 m!687967))

(declare-fun m!687973 () Bool)

(assert (=> b!735554 m!687973))

(declare-fun m!687975 () Bool)

(assert (=> b!735558 m!687975))

(declare-fun m!687977 () Bool)

(assert (=> b!735558 m!687977))

(assert (=> b!735553 m!687967))

(assert (=> b!735553 m!687967))

(declare-fun m!687979 () Bool)

(assert (=> b!735553 m!687979))

(assert (=> b!735552 m!687967))

(assert (=> b!735552 m!687967))

(declare-fun m!687981 () Bool)

(assert (=> b!735552 m!687981))

(assert (=> b!735552 m!687981))

(assert (=> b!735552 m!687967))

(declare-fun m!687983 () Bool)

(assert (=> b!735552 m!687983))

(assert (=> b!735567 m!687967))

(assert (=> b!735567 m!687967))

(declare-fun m!687985 () Bool)

(assert (=> b!735567 m!687985))

(assert (=> b!735556 m!687967))

(assert (=> b!735556 m!687967))

(declare-fun m!687987 () Bool)

(assert (=> b!735556 m!687987))

(declare-fun m!687989 () Bool)

(assert (=> start!65154 m!687989))

(declare-fun m!687991 () Bool)

(assert (=> start!65154 m!687991))

(assert (=> b!735559 m!687967))

(assert (=> b!735559 m!687967))

(declare-fun m!687993 () Bool)

(assert (=> b!735559 m!687993))

(declare-fun m!687995 () Bool)

(assert (=> b!735566 m!687995))

(declare-fun m!687997 () Bool)

(assert (=> b!735565 m!687997))

(declare-fun m!687999 () Bool)

(assert (=> b!735551 m!687999))

(declare-fun m!688001 () Bool)

(assert (=> b!735563 m!688001))

(assert (=> b!735549 m!687967))

(assert (=> b!735549 m!687967))

(assert (=> b!735549 m!687969))

(assert (=> b!735549 m!687967))

(assert (=> b!735549 m!687979))

(declare-fun m!688003 () Bool)

(assert (=> b!735562 m!688003))

(declare-fun m!688005 () Bool)

(assert (=> b!735564 m!688005))

(declare-fun m!688007 () Bool)

(assert (=> b!735564 m!688007))

(declare-fun m!688009 () Bool)

(assert (=> b!735564 m!688009))

(declare-fun m!688011 () Bool)

(assert (=> b!735564 m!688011))

(declare-fun m!688013 () Bool)

(assert (=> b!735564 m!688013))

(assert (=> b!735564 m!688005))

(declare-fun m!688015 () Bool)

(assert (=> b!735548 m!688015))

(assert (=> b!735561 m!687967))

(assert (=> b!735561 m!687967))

(declare-fun m!688017 () Bool)

(assert (=> b!735561 m!688017))

(declare-fun m!688019 () Bool)

(assert (=> b!735550 m!688019))

(assert (=> b!735557 m!687967))

(assert (=> b!735557 m!687967))

(assert (=> b!735557 m!688017))

(check-sat (not b!735557) (not b!735554) (not b!735548) (not b!735552) (not b!735556) (not b!735567) (not b!735563) (not b!735569) (not b!735566) (not b!735565) (not b!735559) (not b!735564) (not b!735555) (not start!65154) (not b!735553) (not b!735561) (not b!735562) (not b!735549) (not b!735551) (not b!735558))
(check-sat)
