; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65490 () Bool)

(assert start!65490)

(declare-fun res!503004 () Bool)

(declare-fun e!416677 () Bool)

(assert (=> start!65490 (=> (not res!503004) (not e!416677))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65490 (= res!503004 (validMask!0 mask!3328))))

(assert (=> start!65490 e!416677))

(assert (=> start!65490 true))

(declare-datatypes ((array!41616 0))(
  ( (array!41617 (arr!19918 (Array (_ BitVec 32) (_ BitVec 64))) (size!20339 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41616)

(declare-fun array_inv!15692 (array!41616) Bool)

(assert (=> start!65490 (array_inv!15692 a!3186)))

(declare-fun b!746073 () Bool)

(declare-fun e!416683 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!746073 (= e!416683 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-datatypes ((SeekEntryResult!7525 0))(
  ( (MissingZero!7525 (index!32467 (_ BitVec 32))) (Found!7525 (index!32468 (_ BitVec 32))) (Intermediate!7525 (undefined!8337 Bool) (index!32469 (_ BitVec 32)) (x!63444 (_ BitVec 32))) (Undefined!7525) (MissingVacant!7525 (index!32470 (_ BitVec 32))) )
))
(declare-fun lt!331556 () SeekEntryResult!7525)

(declare-fun lt!331553 () SeekEntryResult!7525)

(assert (=> b!746073 (= lt!331556 lt!331553)))

(declare-fun b!746074 () Bool)

(declare-fun res!503007 () Bool)

(assert (=> b!746074 (=> (not res!503007) (not e!416677))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!746074 (= res!503007 (and (= (size!20339 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20339 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20339 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746075 () Bool)

(declare-fun e!416685 () Bool)

(declare-fun e!416678 () Bool)

(assert (=> b!746075 (= e!416685 (not e!416678))))

(declare-fun res!503016 () Bool)

(assert (=> b!746075 (=> res!503016 e!416678)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!331551 () SeekEntryResult!7525)

(get-info :version)

(assert (=> b!746075 (= res!503016 (or (not ((_ is Intermediate!7525) lt!331551)) (bvslt x!1131 (x!63444 lt!331551)) (not (= x!1131 (x!63444 lt!331551))) (not (= index!1321 (index!32469 lt!331551)))))))

(declare-fun e!416682 () Bool)

(assert (=> b!746075 e!416682))

(declare-fun res!503014 () Bool)

(assert (=> b!746075 (=> (not res!503014) (not e!416682))))

(declare-fun lt!331555 () SeekEntryResult!7525)

(assert (=> b!746075 (= res!503014 (= lt!331556 lt!331555))))

(assert (=> b!746075 (= lt!331555 (Found!7525 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41616 (_ BitVec 32)) SeekEntryResult!7525)

(assert (=> b!746075 (= lt!331556 (seekEntryOrOpen!0 (select (arr!19918 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41616 (_ BitVec 32)) Bool)

(assert (=> b!746075 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25530 0))(
  ( (Unit!25531) )
))
(declare-fun lt!331554 () Unit!25530)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41616 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25530)

(assert (=> b!746075 (= lt!331554 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746076 () Bool)

(assert (=> b!746076 (= e!416678 e!416683)))

(declare-fun res!503019 () Bool)

(assert (=> b!746076 (=> res!503019 e!416683)))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun lt!331552 () (_ BitVec 64))

(assert (=> b!746076 (= res!503019 (or (not (= lt!331553 lt!331555)) (= (select (store (arr!19918 a!3186) i!1173 k0!2102) index!1321) lt!331552) (not (= (select (store (arr!19918 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41616 (_ BitVec 32)) SeekEntryResult!7525)

(assert (=> b!746076 (= lt!331553 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19918 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746077 () Bool)

(declare-fun res!503008 () Bool)

(declare-fun e!416681 () Bool)

(assert (=> b!746077 (=> (not res!503008) (not e!416681))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746077 (= res!503008 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20339 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20339 a!3186))))))

(declare-fun b!746078 () Bool)

(declare-fun res!503011 () Bool)

(assert (=> b!746078 (=> (not res!503011) (not e!416681))))

(declare-datatypes ((List!13973 0))(
  ( (Nil!13970) (Cons!13969 (h!15041 (_ BitVec 64)) (t!20296 List!13973)) )
))
(declare-fun arrayNoDuplicates!0 (array!41616 (_ BitVec 32) List!13973) Bool)

(assert (=> b!746078 (= res!503011 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13970))))

(declare-fun b!746079 () Bool)

(declare-fun res!503006 () Bool)

(declare-fun e!416679 () Bool)

(assert (=> b!746079 (=> (not res!503006) (not e!416679))))

(declare-fun e!416684 () Bool)

(assert (=> b!746079 (= res!503006 e!416684)))

(declare-fun c!81915 () Bool)

(assert (=> b!746079 (= c!81915 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746080 () Bool)

(assert (=> b!746080 (= e!416679 e!416685)))

(declare-fun res!503005 () Bool)

(assert (=> b!746080 (=> (not res!503005) (not e!416685))))

(declare-fun lt!331550 () SeekEntryResult!7525)

(assert (=> b!746080 (= res!503005 (= lt!331550 lt!331551))))

(declare-fun lt!331547 () array!41616)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41616 (_ BitVec 32)) SeekEntryResult!7525)

(assert (=> b!746080 (= lt!331551 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331552 lt!331547 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746080 (= lt!331550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331552 mask!3328) lt!331552 lt!331547 mask!3328))))

(assert (=> b!746080 (= lt!331552 (select (store (arr!19918 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!746080 (= lt!331547 (array!41617 (store (arr!19918 a!3186) i!1173 k0!2102) (size!20339 a!3186)))))

(declare-fun b!746081 () Bool)

(declare-fun res!503012 () Bool)

(assert (=> b!746081 (=> (not res!503012) (not e!416677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746081 (= res!503012 (validKeyInArray!0 k0!2102))))

(declare-fun b!746082 () Bool)

(declare-fun res!503015 () Bool)

(assert (=> b!746082 (=> (not res!503015) (not e!416677))))

(declare-fun arrayContainsKey!0 (array!41616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746082 (= res!503015 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746083 () Bool)

(assert (=> b!746083 (= e!416684 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19918 a!3186) j!159) a!3186 mask!3328) (Found!7525 j!159)))))

(declare-fun b!746084 () Bool)

(assert (=> b!746084 (= e!416681 e!416679)))

(declare-fun res!503013 () Bool)

(assert (=> b!746084 (=> (not res!503013) (not e!416679))))

(declare-fun lt!331548 () SeekEntryResult!7525)

(assert (=> b!746084 (= res!503013 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19918 a!3186) j!159) mask!3328) (select (arr!19918 a!3186) j!159) a!3186 mask!3328) lt!331548))))

(assert (=> b!746084 (= lt!331548 (Intermediate!7525 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746085 () Bool)

(assert (=> b!746085 (= e!416677 e!416681)))

(declare-fun res!503010 () Bool)

(assert (=> b!746085 (=> (not res!503010) (not e!416681))))

(declare-fun lt!331549 () SeekEntryResult!7525)

(assert (=> b!746085 (= res!503010 (or (= lt!331549 (MissingZero!7525 i!1173)) (= lt!331549 (MissingVacant!7525 i!1173))))))

(assert (=> b!746085 (= lt!331549 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!746086 () Bool)

(declare-fun res!503017 () Bool)

(assert (=> b!746086 (=> (not res!503017) (not e!416679))))

(assert (=> b!746086 (= res!503017 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19918 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746087 () Bool)

(declare-fun res!503018 () Bool)

(assert (=> b!746087 (=> (not res!503018) (not e!416681))))

(assert (=> b!746087 (= res!503018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746088 () Bool)

(assert (=> b!746088 (= e!416682 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19918 a!3186) j!159) a!3186 mask!3328) lt!331555))))

(declare-fun b!746089 () Bool)

(assert (=> b!746089 (= e!416684 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19918 a!3186) j!159) a!3186 mask!3328) lt!331548))))

(declare-fun b!746090 () Bool)

(declare-fun res!503009 () Bool)

(assert (=> b!746090 (=> (not res!503009) (not e!416677))))

(assert (=> b!746090 (= res!503009 (validKeyInArray!0 (select (arr!19918 a!3186) j!159)))))

(assert (= (and start!65490 res!503004) b!746074))

(assert (= (and b!746074 res!503007) b!746090))

(assert (= (and b!746090 res!503009) b!746081))

(assert (= (and b!746081 res!503012) b!746082))

(assert (= (and b!746082 res!503015) b!746085))

(assert (= (and b!746085 res!503010) b!746087))

(assert (= (and b!746087 res!503018) b!746078))

(assert (= (and b!746078 res!503011) b!746077))

(assert (= (and b!746077 res!503008) b!746084))

(assert (= (and b!746084 res!503013) b!746086))

(assert (= (and b!746086 res!503017) b!746079))

(assert (= (and b!746079 c!81915) b!746089))

(assert (= (and b!746079 (not c!81915)) b!746083))

(assert (= (and b!746079 res!503006) b!746080))

(assert (= (and b!746080 res!503005) b!746075))

(assert (= (and b!746075 res!503014) b!746088))

(assert (= (and b!746075 (not res!503016)) b!746076))

(assert (= (and b!746076 (not res!503019)) b!746073))

(declare-fun m!696457 () Bool)

(assert (=> b!746082 m!696457))

(declare-fun m!696459 () Bool)

(assert (=> b!746085 m!696459))

(declare-fun m!696461 () Bool)

(assert (=> b!746078 m!696461))

(declare-fun m!696463 () Bool)

(assert (=> start!65490 m!696463))

(declare-fun m!696465 () Bool)

(assert (=> start!65490 m!696465))

(declare-fun m!696467 () Bool)

(assert (=> b!746081 m!696467))

(declare-fun m!696469 () Bool)

(assert (=> b!746083 m!696469))

(assert (=> b!746083 m!696469))

(declare-fun m!696471 () Bool)

(assert (=> b!746083 m!696471))

(assert (=> b!746075 m!696469))

(assert (=> b!746075 m!696469))

(declare-fun m!696473 () Bool)

(assert (=> b!746075 m!696473))

(declare-fun m!696475 () Bool)

(assert (=> b!746075 m!696475))

(declare-fun m!696477 () Bool)

(assert (=> b!746075 m!696477))

(declare-fun m!696479 () Bool)

(assert (=> b!746080 m!696479))

(declare-fun m!696481 () Bool)

(assert (=> b!746080 m!696481))

(declare-fun m!696483 () Bool)

(assert (=> b!746080 m!696483))

(declare-fun m!696485 () Bool)

(assert (=> b!746080 m!696485))

(assert (=> b!746080 m!696479))

(declare-fun m!696487 () Bool)

(assert (=> b!746080 m!696487))

(assert (=> b!746089 m!696469))

(assert (=> b!746089 m!696469))

(declare-fun m!696489 () Bool)

(assert (=> b!746089 m!696489))

(assert (=> b!746084 m!696469))

(assert (=> b!746084 m!696469))

(declare-fun m!696491 () Bool)

(assert (=> b!746084 m!696491))

(assert (=> b!746084 m!696491))

(assert (=> b!746084 m!696469))

(declare-fun m!696493 () Bool)

(assert (=> b!746084 m!696493))

(assert (=> b!746088 m!696469))

(assert (=> b!746088 m!696469))

(declare-fun m!696495 () Bool)

(assert (=> b!746088 m!696495))

(assert (=> b!746076 m!696483))

(declare-fun m!696497 () Bool)

(assert (=> b!746076 m!696497))

(assert (=> b!746076 m!696469))

(assert (=> b!746076 m!696469))

(assert (=> b!746076 m!696471))

(assert (=> b!746090 m!696469))

(assert (=> b!746090 m!696469))

(declare-fun m!696499 () Bool)

(assert (=> b!746090 m!696499))

(declare-fun m!696501 () Bool)

(assert (=> b!746086 m!696501))

(declare-fun m!696503 () Bool)

(assert (=> b!746087 m!696503))

(check-sat (not b!746076) (not start!65490) (not b!746084) (not b!746087) (not b!746090) (not b!746089) (not b!746085) (not b!746078) (not b!746083) (not b!746075) (not b!746082) (not b!746080) (not b!746088) (not b!746081))
(check-sat)
