; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65718 () Bool)

(assert start!65718)

(declare-fun b!753433 () Bool)

(declare-fun e!420253 () Bool)

(declare-fun e!420252 () Bool)

(assert (=> b!753433 (= e!420253 e!420252)))

(declare-fun res!509078 () Bool)

(assert (=> b!753433 (=> (not res!509078) (not e!420252))))

(declare-datatypes ((SeekEntryResult!7639 0))(
  ( (MissingZero!7639 (index!32923 (_ BitVec 32))) (Found!7639 (index!32924 (_ BitVec 32))) (Intermediate!7639 (undefined!8451 Bool) (index!32925 (_ BitVec 32)) (x!63862 (_ BitVec 32))) (Undefined!7639) (MissingVacant!7639 (index!32926 (_ BitVec 32))) )
))
(declare-fun lt!335254 () SeekEntryResult!7639)

(declare-fun lt!335249 () SeekEntryResult!7639)

(assert (=> b!753433 (= res!509078 (= lt!335254 lt!335249))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!41844 0))(
  ( (array!41845 (arr!20032 (Array (_ BitVec 32) (_ BitVec 64))) (size!20453 (_ BitVec 32))) )
))
(declare-fun lt!335252 () array!41844)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!335253 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41844 (_ BitVec 32)) SeekEntryResult!7639)

(assert (=> b!753433 (= lt!335249 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335253 lt!335252 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753433 (= lt!335254 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335253 mask!3328) lt!335253 lt!335252 mask!3328))))

(declare-fun a!3186 () array!41844)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!753433 (= lt!335253 (select (store (arr!20032 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!753433 (= lt!335252 (array!41845 (store (arr!20032 a!3186) i!1173 k0!2102) (size!20453 a!3186)))))

(declare-fun b!753434 () Bool)

(declare-fun e!420250 () Bool)

(declare-fun e!420251 () Bool)

(assert (=> b!753434 (= e!420250 e!420251)))

(declare-fun res!509083 () Bool)

(assert (=> b!753434 (=> res!509083 e!420251)))

(declare-fun lt!335258 () SeekEntryResult!7639)

(declare-fun lt!335256 () SeekEntryResult!7639)

(assert (=> b!753434 (= res!509083 (not (= lt!335258 lt!335256)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41844 (_ BitVec 32)) SeekEntryResult!7639)

(assert (=> b!753434 (= lt!335258 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20032 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!335250 () SeekEntryResult!7639)

(declare-fun b!753435 () Bool)

(declare-fun e!420258 () Bool)

(assert (=> b!753435 (= e!420258 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20032 a!3186) j!159) a!3186 mask!3328) lt!335250))))

(declare-fun b!753436 () Bool)

(declare-fun res!509076 () Bool)

(assert (=> b!753436 (=> (not res!509076) (not e!420253))))

(assert (=> b!753436 (= res!509076 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20032 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!509094 () Bool)

(declare-fun e!420254 () Bool)

(assert (=> start!65718 (=> (not res!509094) (not e!420254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65718 (= res!509094 (validMask!0 mask!3328))))

(assert (=> start!65718 e!420254))

(assert (=> start!65718 true))

(declare-fun array_inv!15806 (array!41844) Bool)

(assert (=> start!65718 (array_inv!15806 a!3186)))

(declare-fun b!753437 () Bool)

(declare-fun res!509079 () Bool)

(declare-fun e!420255 () Bool)

(assert (=> b!753437 (=> (not res!509079) (not e!420255))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!753437 (= res!509079 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20453 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20453 a!3186))))))

(declare-fun b!753438 () Bool)

(declare-fun res!509081 () Bool)

(assert (=> b!753438 (=> (not res!509081) (not e!420254))))

(assert (=> b!753438 (= res!509081 (and (= (size!20453 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20453 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20453 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753439 () Bool)

(declare-datatypes ((Unit!25958 0))(
  ( (Unit!25959) )
))
(declare-fun e!420249 () Unit!25958)

(declare-fun Unit!25960 () Unit!25958)

(assert (=> b!753439 (= e!420249 Unit!25960)))

(assert (=> b!753439 false))

(declare-fun b!753440 () Bool)

(assert (=> b!753440 (= e!420254 e!420255)))

(declare-fun res!509089 () Bool)

(assert (=> b!753440 (=> (not res!509089) (not e!420255))))

(declare-fun lt!335251 () SeekEntryResult!7639)

(assert (=> b!753440 (= res!509089 (or (= lt!335251 (MissingZero!7639 i!1173)) (= lt!335251 (MissingVacant!7639 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41844 (_ BitVec 32)) SeekEntryResult!7639)

(assert (=> b!753440 (= lt!335251 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!753441 () Bool)

(declare-fun e!420247 () Bool)

(declare-fun lt!335247 () SeekEntryResult!7639)

(assert (=> b!753441 (= e!420247 (= lt!335247 lt!335258))))

(declare-fun b!753442 () Bool)

(declare-fun res!509080 () Bool)

(assert (=> b!753442 (=> (not res!509080) (not e!420254))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753442 (= res!509080 (validKeyInArray!0 (select (arr!20032 a!3186) j!159)))))

(declare-fun b!753443 () Bool)

(declare-fun res!509087 () Bool)

(assert (=> b!753443 (=> (not res!509087) (not e!420247))))

(assert (=> b!753443 (= res!509087 (= (seekEntryOrOpen!0 lt!335253 lt!335252 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335253 lt!335252 mask!3328)))))

(declare-fun b!753444 () Bool)

(declare-fun res!509091 () Bool)

(assert (=> b!753444 (=> (not res!509091) (not e!420254))))

(assert (=> b!753444 (= res!509091 (validKeyInArray!0 k0!2102))))

(declare-fun b!753445 () Bool)

(assert (=> b!753445 (= e!420252 (not e!420250))))

(declare-fun res!509088 () Bool)

(assert (=> b!753445 (=> res!509088 e!420250)))

(get-info :version)

(assert (=> b!753445 (= res!509088 (or (not ((_ is Intermediate!7639) lt!335249)) (bvslt x!1131 (x!63862 lt!335249)) (not (= x!1131 (x!63862 lt!335249))) (not (= index!1321 (index!32925 lt!335249)))))))

(declare-fun e!420256 () Bool)

(assert (=> b!753445 e!420256))

(declare-fun res!509086 () Bool)

(assert (=> b!753445 (=> (not res!509086) (not e!420256))))

(assert (=> b!753445 (= res!509086 (= lt!335247 lt!335256))))

(assert (=> b!753445 (= lt!335256 (Found!7639 j!159))))

(assert (=> b!753445 (= lt!335247 (seekEntryOrOpen!0 (select (arr!20032 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41844 (_ BitVec 32)) Bool)

(assert (=> b!753445 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335257 () Unit!25958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41844 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25958)

(assert (=> b!753445 (= lt!335257 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753446 () Bool)

(assert (=> b!753446 (= e!420256 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20032 a!3186) j!159) a!3186 mask!3328) lt!335256))))

(declare-fun b!753447 () Bool)

(declare-fun res!509077 () Bool)

(assert (=> b!753447 (=> (not res!509077) (not e!420255))))

(declare-datatypes ((List!14087 0))(
  ( (Nil!14084) (Cons!14083 (h!15155 (_ BitVec 64)) (t!20410 List!14087)) )
))
(declare-fun arrayNoDuplicates!0 (array!41844 (_ BitVec 32) List!14087) Bool)

(assert (=> b!753447 (= res!509077 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14084))))

(declare-fun b!753448 () Bool)

(declare-fun e!420248 () Bool)

(assert (=> b!753448 (= e!420248 true)))

(assert (=> b!753448 e!420247))

(declare-fun res!509090 () Bool)

(assert (=> b!753448 (=> (not res!509090) (not e!420247))))

(declare-fun lt!335255 () (_ BitVec 64))

(assert (=> b!753448 (= res!509090 (= lt!335255 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335248 () Unit!25958)

(assert (=> b!753448 (= lt!335248 e!420249)))

(declare-fun c!82559 () Bool)

(assert (=> b!753448 (= c!82559 (= lt!335255 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753449 () Bool)

(declare-fun res!509084 () Bool)

(assert (=> b!753449 (=> (not res!509084) (not e!420255))))

(assert (=> b!753449 (= res!509084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!753450 () Bool)

(assert (=> b!753450 (= e!420255 e!420253)))

(declare-fun res!509082 () Bool)

(assert (=> b!753450 (=> (not res!509082) (not e!420253))))

(assert (=> b!753450 (= res!509082 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20032 a!3186) j!159) mask!3328) (select (arr!20032 a!3186) j!159) a!3186 mask!3328) lt!335250))))

(assert (=> b!753450 (= lt!335250 (Intermediate!7639 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753451 () Bool)

(assert (=> b!753451 (= e!420258 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20032 a!3186) j!159) a!3186 mask!3328) (Found!7639 j!159)))))

(declare-fun b!753452 () Bool)

(declare-fun res!509093 () Bool)

(assert (=> b!753452 (=> (not res!509093) (not e!420253))))

(assert (=> b!753452 (= res!509093 e!420258)))

(declare-fun c!82560 () Bool)

(assert (=> b!753452 (= c!82560 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753453 () Bool)

(assert (=> b!753453 (= e!420251 e!420248)))

(declare-fun res!509092 () Bool)

(assert (=> b!753453 (=> res!509092 e!420248)))

(assert (=> b!753453 (= res!509092 (= lt!335255 lt!335253))))

(assert (=> b!753453 (= lt!335255 (select (store (arr!20032 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!753454 () Bool)

(declare-fun res!509085 () Bool)

(assert (=> b!753454 (=> (not res!509085) (not e!420254))))

(declare-fun arrayContainsKey!0 (array!41844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753454 (= res!509085 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753455 () Bool)

(declare-fun Unit!25961 () Unit!25958)

(assert (=> b!753455 (= e!420249 Unit!25961)))

(assert (= (and start!65718 res!509094) b!753438))

(assert (= (and b!753438 res!509081) b!753442))

(assert (= (and b!753442 res!509080) b!753444))

(assert (= (and b!753444 res!509091) b!753454))

(assert (= (and b!753454 res!509085) b!753440))

(assert (= (and b!753440 res!509089) b!753449))

(assert (= (and b!753449 res!509084) b!753447))

(assert (= (and b!753447 res!509077) b!753437))

(assert (= (and b!753437 res!509079) b!753450))

(assert (= (and b!753450 res!509082) b!753436))

(assert (= (and b!753436 res!509076) b!753452))

(assert (= (and b!753452 c!82560) b!753435))

(assert (= (and b!753452 (not c!82560)) b!753451))

(assert (= (and b!753452 res!509093) b!753433))

(assert (= (and b!753433 res!509078) b!753445))

(assert (= (and b!753445 res!509086) b!753446))

(assert (= (and b!753445 (not res!509088)) b!753434))

(assert (= (and b!753434 (not res!509083)) b!753453))

(assert (= (and b!753453 (not res!509092)) b!753448))

(assert (= (and b!753448 c!82559) b!753439))

(assert (= (and b!753448 (not c!82559)) b!753455))

(assert (= (and b!753448 res!509090) b!753443))

(assert (= (and b!753443 res!509087) b!753441))

(declare-fun m!702197 () Bool)

(assert (=> b!753449 m!702197))

(declare-fun m!702199 () Bool)

(assert (=> b!753443 m!702199))

(declare-fun m!702201 () Bool)

(assert (=> b!753443 m!702201))

(declare-fun m!702203 () Bool)

(assert (=> b!753446 m!702203))

(assert (=> b!753446 m!702203))

(declare-fun m!702205 () Bool)

(assert (=> b!753446 m!702205))

(assert (=> b!753442 m!702203))

(assert (=> b!753442 m!702203))

(declare-fun m!702207 () Bool)

(assert (=> b!753442 m!702207))

(assert (=> b!753451 m!702203))

(assert (=> b!753451 m!702203))

(declare-fun m!702209 () Bool)

(assert (=> b!753451 m!702209))

(assert (=> b!753435 m!702203))

(assert (=> b!753435 m!702203))

(declare-fun m!702211 () Bool)

(assert (=> b!753435 m!702211))

(assert (=> b!753434 m!702203))

(assert (=> b!753434 m!702203))

(assert (=> b!753434 m!702209))

(declare-fun m!702213 () Bool)

(assert (=> b!753440 m!702213))

(declare-fun m!702215 () Bool)

(assert (=> b!753454 m!702215))

(assert (=> b!753445 m!702203))

(assert (=> b!753445 m!702203))

(declare-fun m!702217 () Bool)

(assert (=> b!753445 m!702217))

(declare-fun m!702219 () Bool)

(assert (=> b!753445 m!702219))

(declare-fun m!702221 () Bool)

(assert (=> b!753445 m!702221))

(declare-fun m!702223 () Bool)

(assert (=> b!753447 m!702223))

(declare-fun m!702225 () Bool)

(assert (=> start!65718 m!702225))

(declare-fun m!702227 () Bool)

(assert (=> start!65718 m!702227))

(declare-fun m!702229 () Bool)

(assert (=> b!753436 m!702229))

(declare-fun m!702231 () Bool)

(assert (=> b!753444 m!702231))

(declare-fun m!702233 () Bool)

(assert (=> b!753453 m!702233))

(declare-fun m!702235 () Bool)

(assert (=> b!753453 m!702235))

(assert (=> b!753450 m!702203))

(assert (=> b!753450 m!702203))

(declare-fun m!702237 () Bool)

(assert (=> b!753450 m!702237))

(assert (=> b!753450 m!702237))

(assert (=> b!753450 m!702203))

(declare-fun m!702239 () Bool)

(assert (=> b!753450 m!702239))

(assert (=> b!753433 m!702233))

(declare-fun m!702241 () Bool)

(assert (=> b!753433 m!702241))

(declare-fun m!702243 () Bool)

(assert (=> b!753433 m!702243))

(declare-fun m!702245 () Bool)

(assert (=> b!753433 m!702245))

(declare-fun m!702247 () Bool)

(assert (=> b!753433 m!702247))

(assert (=> b!753433 m!702243))

(check-sat (not start!65718) (not b!753445) (not b!753450) (not b!753442) (not b!753449) (not b!753447) (not b!753440) (not b!753435) (not b!753433) (not b!753446) (not b!753454) (not b!753434) (not b!753451) (not b!753443) (not b!753444))
(check-sat)
