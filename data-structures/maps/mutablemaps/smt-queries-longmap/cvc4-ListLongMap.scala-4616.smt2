; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64352 () Bool)

(assert start!64352)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40886 0))(
  ( (array!40887 (arr!19562 (Array (_ BitVec 32) (_ BitVec 64))) (size!19983 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40886)

(declare-fun b!722893 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!405091 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7169 0))(
  ( (MissingZero!7169 (index!31043 (_ BitVec 32))) (Found!7169 (index!31044 (_ BitVec 32))) (Intermediate!7169 (undefined!7981 Bool) (index!31045 (_ BitVec 32)) (x!62067 (_ BitVec 32))) (Undefined!7169) (MissingVacant!7169 (index!31046 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40886 (_ BitVec 32)) SeekEntryResult!7169)

(assert (=> b!722893 (= e!405091 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19562 a!3186) j!159) a!3186 mask!3328) (Found!7169 j!159)))))

(declare-fun b!722894 () Bool)

(declare-fun res!484666 () Bool)

(declare-fun e!405090 () Bool)

(assert (=> b!722894 (=> (not res!484666) (not e!405090))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722894 (= res!484666 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19983 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19983 a!3186))))))

(declare-fun res!484662 () Bool)

(declare-fun e!405093 () Bool)

(assert (=> start!64352 (=> (not res!484662) (not e!405093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64352 (= res!484662 (validMask!0 mask!3328))))

(assert (=> start!64352 e!405093))

(assert (=> start!64352 true))

(declare-fun array_inv!15336 (array!40886) Bool)

(assert (=> start!64352 (array_inv!15336 a!3186)))

(declare-fun b!722895 () Bool)

(declare-fun e!405089 () Bool)

(assert (=> b!722895 (= e!405090 e!405089)))

(declare-fun res!484663 () Bool)

(assert (=> b!722895 (=> (not res!484663) (not e!405089))))

(declare-fun lt!320492 () SeekEntryResult!7169)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40886 (_ BitVec 32)) SeekEntryResult!7169)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722895 (= res!484663 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19562 a!3186) j!159) mask!3328) (select (arr!19562 a!3186) j!159) a!3186 mask!3328) lt!320492))))

(assert (=> b!722895 (= lt!320492 (Intermediate!7169 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722896 () Bool)

(declare-fun res!484671 () Bool)

(assert (=> b!722896 (=> (not res!484671) (not e!405093))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40886 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722896 (= res!484671 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722897 () Bool)

(assert (=> b!722897 (= e!405091 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19562 a!3186) j!159) a!3186 mask!3328) lt!320492))))

(declare-fun b!722898 () Bool)

(assert (=> b!722898 (= e!405089 false)))

(declare-fun lt!320494 () (_ BitVec 64))

(declare-fun lt!320491 () array!40886)

(declare-fun lt!320495 () SeekEntryResult!7169)

(assert (=> b!722898 (= lt!320495 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320494 lt!320491 mask!3328))))

(declare-fun lt!320490 () SeekEntryResult!7169)

(assert (=> b!722898 (= lt!320490 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320494 mask!3328) lt!320494 lt!320491 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722898 (= lt!320494 (select (store (arr!19562 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!722898 (= lt!320491 (array!40887 (store (arr!19562 a!3186) i!1173 k!2102) (size!19983 a!3186)))))

(declare-fun b!722899 () Bool)

(declare-fun res!484665 () Bool)

(assert (=> b!722899 (=> (not res!484665) (not e!405093))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722899 (= res!484665 (validKeyInArray!0 (select (arr!19562 a!3186) j!159)))))

(declare-fun b!722900 () Bool)

(declare-fun res!484661 () Bool)

(assert (=> b!722900 (=> (not res!484661) (not e!405090))))

(declare-datatypes ((List!13617 0))(
  ( (Nil!13614) (Cons!13613 (h!14667 (_ BitVec 64)) (t!19940 List!13617)) )
))
(declare-fun arrayNoDuplicates!0 (array!40886 (_ BitVec 32) List!13617) Bool)

(assert (=> b!722900 (= res!484661 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13614))))

(declare-fun b!722901 () Bool)

(declare-fun res!484664 () Bool)

(assert (=> b!722901 (=> (not res!484664) (not e!405093))))

(assert (=> b!722901 (= res!484664 (validKeyInArray!0 k!2102))))

(declare-fun b!722902 () Bool)

(declare-fun res!484668 () Bool)

(assert (=> b!722902 (=> (not res!484668) (not e!405090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40886 (_ BitVec 32)) Bool)

(assert (=> b!722902 (= res!484668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722903 () Bool)

(assert (=> b!722903 (= e!405093 e!405090)))

(declare-fun res!484670 () Bool)

(assert (=> b!722903 (=> (not res!484670) (not e!405090))))

(declare-fun lt!320493 () SeekEntryResult!7169)

(assert (=> b!722903 (= res!484670 (or (= lt!320493 (MissingZero!7169 i!1173)) (= lt!320493 (MissingVacant!7169 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40886 (_ BitVec 32)) SeekEntryResult!7169)

(assert (=> b!722903 (= lt!320493 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722904 () Bool)

(declare-fun res!484660 () Bool)

(assert (=> b!722904 (=> (not res!484660) (not e!405089))))

(assert (=> b!722904 (= res!484660 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19562 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722905 () Bool)

(declare-fun res!484669 () Bool)

(assert (=> b!722905 (=> (not res!484669) (not e!405093))))

(assert (=> b!722905 (= res!484669 (and (= (size!19983 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19983 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19983 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722906 () Bool)

(declare-fun res!484667 () Bool)

(assert (=> b!722906 (=> (not res!484667) (not e!405089))))

(assert (=> b!722906 (= res!484667 e!405091)))

(declare-fun c!79488 () Bool)

(assert (=> b!722906 (= c!79488 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64352 res!484662) b!722905))

(assert (= (and b!722905 res!484669) b!722899))

(assert (= (and b!722899 res!484665) b!722901))

(assert (= (and b!722901 res!484664) b!722896))

(assert (= (and b!722896 res!484671) b!722903))

(assert (= (and b!722903 res!484670) b!722902))

(assert (= (and b!722902 res!484668) b!722900))

(assert (= (and b!722900 res!484661) b!722894))

(assert (= (and b!722894 res!484666) b!722895))

(assert (= (and b!722895 res!484663) b!722904))

(assert (= (and b!722904 res!484660) b!722906))

(assert (= (and b!722906 c!79488) b!722897))

(assert (= (and b!722906 (not c!79488)) b!722893))

(assert (= (and b!722906 res!484667) b!722898))

(declare-fun m!677465 () Bool)

(assert (=> b!722899 m!677465))

(assert (=> b!722899 m!677465))

(declare-fun m!677467 () Bool)

(assert (=> b!722899 m!677467))

(declare-fun m!677469 () Bool)

(assert (=> start!64352 m!677469))

(declare-fun m!677471 () Bool)

(assert (=> start!64352 m!677471))

(declare-fun m!677473 () Bool)

(assert (=> b!722898 m!677473))

(assert (=> b!722898 m!677473))

(declare-fun m!677475 () Bool)

(assert (=> b!722898 m!677475))

(declare-fun m!677477 () Bool)

(assert (=> b!722898 m!677477))

(declare-fun m!677479 () Bool)

(assert (=> b!722898 m!677479))

(declare-fun m!677481 () Bool)

(assert (=> b!722898 m!677481))

(declare-fun m!677483 () Bool)

(assert (=> b!722896 m!677483))

(declare-fun m!677485 () Bool)

(assert (=> b!722900 m!677485))

(declare-fun m!677487 () Bool)

(assert (=> b!722901 m!677487))

(assert (=> b!722895 m!677465))

(assert (=> b!722895 m!677465))

(declare-fun m!677489 () Bool)

(assert (=> b!722895 m!677489))

(assert (=> b!722895 m!677489))

(assert (=> b!722895 m!677465))

(declare-fun m!677491 () Bool)

(assert (=> b!722895 m!677491))

(assert (=> b!722897 m!677465))

(assert (=> b!722897 m!677465))

(declare-fun m!677493 () Bool)

(assert (=> b!722897 m!677493))

(assert (=> b!722893 m!677465))

(assert (=> b!722893 m!677465))

(declare-fun m!677495 () Bool)

(assert (=> b!722893 m!677495))

(declare-fun m!677497 () Bool)

(assert (=> b!722903 m!677497))

(declare-fun m!677499 () Bool)

(assert (=> b!722904 m!677499))

(declare-fun m!677501 () Bool)

(assert (=> b!722902 m!677501))

(push 1)

