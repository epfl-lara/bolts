; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65318 () Bool)

(assert start!65318)

(declare-fun b!741313 () Bool)

(declare-fun res!498771 () Bool)

(declare-fun e!414406 () Bool)

(assert (=> b!741313 (=> (not res!498771) (not e!414406))))

(declare-fun e!414407 () Bool)

(assert (=> b!741313 (= res!498771 e!414407)))

(declare-fun c!81657 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741313 (= c!81657 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741314 () Bool)

(declare-fun res!498761 () Bool)

(declare-fun e!414404 () Bool)

(assert (=> b!741314 (=> (not res!498761) (not e!414404))))

(declare-datatypes ((array!41444 0))(
  ( (array!41445 (arr!19832 (Array (_ BitVec 32) (_ BitVec 64))) (size!20253 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41444)

(declare-datatypes ((List!13887 0))(
  ( (Nil!13884) (Cons!13883 (h!14955 (_ BitVec 64)) (t!20210 List!13887)) )
))
(declare-fun arrayNoDuplicates!0 (array!41444 (_ BitVec 32) List!13887) Bool)

(assert (=> b!741314 (= res!498761 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13884))))

(declare-fun b!741315 () Bool)

(declare-fun res!498770 () Bool)

(assert (=> b!741315 (=> (not res!498770) (not e!414404))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41444 (_ BitVec 32)) Bool)

(assert (=> b!741315 (= res!498770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741316 () Bool)

(assert (=> b!741316 (= e!414404 e!414406)))

(declare-fun res!498766 () Bool)

(assert (=> b!741316 (=> (not res!498766) (not e!414406))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7439 0))(
  ( (MissingZero!7439 (index!32123 (_ BitVec 32))) (Found!7439 (index!32124 (_ BitVec 32))) (Intermediate!7439 (undefined!8251 Bool) (index!32125 (_ BitVec 32)) (x!63126 (_ BitVec 32))) (Undefined!7439) (MissingVacant!7439 (index!32126 (_ BitVec 32))) )
))
(declare-fun lt!329369 () SeekEntryResult!7439)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41444 (_ BitVec 32)) SeekEntryResult!7439)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741316 (= res!498766 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19832 a!3186) j!159) mask!3328) (select (arr!19832 a!3186) j!159) a!3186 mask!3328) lt!329369))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!741316 (= lt!329369 (Intermediate!7439 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741317 () Bool)

(declare-fun e!414401 () Bool)

(assert (=> b!741317 (= e!414401 e!414404)))

(declare-fun res!498774 () Bool)

(assert (=> b!741317 (=> (not res!498774) (not e!414404))))

(declare-fun lt!329372 () SeekEntryResult!7439)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741317 (= res!498774 (or (= lt!329372 (MissingZero!7439 i!1173)) (= lt!329372 (MissingVacant!7439 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41444 (_ BitVec 32)) SeekEntryResult!7439)

(assert (=> b!741317 (= lt!329372 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741318 () Bool)

(declare-fun res!498765 () Bool)

(assert (=> b!741318 (=> (not res!498765) (not e!414401))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741318 (= res!498765 (validKeyInArray!0 k!2102))))

(declare-fun b!741319 () Bool)

(declare-fun res!498760 () Bool)

(assert (=> b!741319 (=> (not res!498760) (not e!414401))))

(declare-fun arrayContainsKey!0 (array!41444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741319 (= res!498760 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741320 () Bool)

(declare-fun res!498767 () Bool)

(assert (=> b!741320 (=> (not res!498767) (not e!414406))))

(assert (=> b!741320 (= res!498767 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19832 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741321 () Bool)

(declare-fun res!498773 () Bool)

(assert (=> b!741321 (=> (not res!498773) (not e!414404))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!741321 (= res!498773 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20253 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20253 a!3186))))))

(declare-fun b!741322 () Bool)

(declare-fun e!414408 () Bool)

(assert (=> b!741322 (= e!414408 (not true))))

(declare-fun e!414403 () Bool)

(assert (=> b!741322 e!414403))

(declare-fun res!498769 () Bool)

(assert (=> b!741322 (=> (not res!498769) (not e!414403))))

(assert (=> b!741322 (= res!498769 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25358 0))(
  ( (Unit!25359) )
))
(declare-fun lt!329371 () Unit!25358)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41444 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25358)

(assert (=> b!741322 (= lt!329371 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741323 () Bool)

(declare-fun res!498768 () Bool)

(assert (=> b!741323 (=> (not res!498768) (not e!414401))))

(assert (=> b!741323 (= res!498768 (validKeyInArray!0 (select (arr!19832 a!3186) j!159)))))

(declare-fun b!741324 () Bool)

(declare-fun e!414402 () Bool)

(assert (=> b!741324 (= e!414403 e!414402)))

(declare-fun res!498762 () Bool)

(assert (=> b!741324 (=> (not res!498762) (not e!414402))))

(declare-fun lt!329367 () SeekEntryResult!7439)

(assert (=> b!741324 (= res!498762 (= (seekEntryOrOpen!0 (select (arr!19832 a!3186) j!159) a!3186 mask!3328) lt!329367))))

(assert (=> b!741324 (= lt!329367 (Found!7439 j!159))))

(declare-fun b!741325 () Bool)

(assert (=> b!741325 (= e!414407 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19832 a!3186) j!159) a!3186 mask!3328) lt!329369))))

(declare-fun b!741326 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41444 (_ BitVec 32)) SeekEntryResult!7439)

(assert (=> b!741326 (= e!414407 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19832 a!3186) j!159) a!3186 mask!3328) (Found!7439 j!159)))))

(declare-fun b!741327 () Bool)

(assert (=> b!741327 (= e!414402 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19832 a!3186) j!159) a!3186 mask!3328) lt!329367))))

(declare-fun res!498772 () Bool)

(assert (=> start!65318 (=> (not res!498772) (not e!414401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65318 (= res!498772 (validMask!0 mask!3328))))

(assert (=> start!65318 e!414401))

(assert (=> start!65318 true))

(declare-fun array_inv!15606 (array!41444) Bool)

(assert (=> start!65318 (array_inv!15606 a!3186)))

(declare-fun b!741328 () Bool)

(assert (=> b!741328 (= e!414406 e!414408)))

(declare-fun res!498763 () Bool)

(assert (=> b!741328 (=> (not res!498763) (not e!414408))))

(declare-fun lt!329368 () array!41444)

(declare-fun lt!329370 () (_ BitVec 64))

(assert (=> b!741328 (= res!498763 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329370 mask!3328) lt!329370 lt!329368 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329370 lt!329368 mask!3328)))))

(assert (=> b!741328 (= lt!329370 (select (store (arr!19832 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741328 (= lt!329368 (array!41445 (store (arr!19832 a!3186) i!1173 k!2102) (size!20253 a!3186)))))

(declare-fun b!741329 () Bool)

(declare-fun res!498764 () Bool)

(assert (=> b!741329 (=> (not res!498764) (not e!414401))))

(assert (=> b!741329 (= res!498764 (and (= (size!20253 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20253 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20253 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65318 res!498772) b!741329))

(assert (= (and b!741329 res!498764) b!741323))

(assert (= (and b!741323 res!498768) b!741318))

(assert (= (and b!741318 res!498765) b!741319))

(assert (= (and b!741319 res!498760) b!741317))

(assert (= (and b!741317 res!498774) b!741315))

(assert (= (and b!741315 res!498770) b!741314))

(assert (= (and b!741314 res!498761) b!741321))

(assert (= (and b!741321 res!498773) b!741316))

(assert (= (and b!741316 res!498766) b!741320))

(assert (= (and b!741320 res!498767) b!741313))

(assert (= (and b!741313 c!81657) b!741325))

(assert (= (and b!741313 (not c!81657)) b!741326))

(assert (= (and b!741313 res!498771) b!741328))

(assert (= (and b!741328 res!498763) b!741322))

(assert (= (and b!741322 res!498769) b!741324))

(assert (= (and b!741324 res!498762) b!741327))

(declare-fun m!692385 () Bool)

(assert (=> b!741327 m!692385))

(assert (=> b!741327 m!692385))

(declare-fun m!692387 () Bool)

(assert (=> b!741327 m!692387))

(declare-fun m!692389 () Bool)

(assert (=> b!741322 m!692389))

(declare-fun m!692391 () Bool)

(assert (=> b!741322 m!692391))

(declare-fun m!692393 () Bool)

(assert (=> start!65318 m!692393))

(declare-fun m!692395 () Bool)

(assert (=> start!65318 m!692395))

(assert (=> b!741326 m!692385))

(assert (=> b!741326 m!692385))

(declare-fun m!692397 () Bool)

(assert (=> b!741326 m!692397))

(declare-fun m!692399 () Bool)

(assert (=> b!741315 m!692399))

(declare-fun m!692401 () Bool)

(assert (=> b!741317 m!692401))

(assert (=> b!741323 m!692385))

(assert (=> b!741323 m!692385))

(declare-fun m!692403 () Bool)

(assert (=> b!741323 m!692403))

(declare-fun m!692405 () Bool)

(assert (=> b!741314 m!692405))

(assert (=> b!741324 m!692385))

(assert (=> b!741324 m!692385))

(declare-fun m!692407 () Bool)

(assert (=> b!741324 m!692407))

(assert (=> b!741316 m!692385))

(assert (=> b!741316 m!692385))

(declare-fun m!692409 () Bool)

(assert (=> b!741316 m!692409))

(assert (=> b!741316 m!692409))

(assert (=> b!741316 m!692385))

(declare-fun m!692411 () Bool)

(assert (=> b!741316 m!692411))

(declare-fun m!692413 () Bool)

(assert (=> b!741319 m!692413))

(declare-fun m!692415 () Bool)

(assert (=> b!741320 m!692415))

(declare-fun m!692417 () Bool)

(assert (=> b!741318 m!692417))

(assert (=> b!741325 m!692385))

(assert (=> b!741325 m!692385))

(declare-fun m!692419 () Bool)

(assert (=> b!741325 m!692419))

(declare-fun m!692421 () Bool)

(assert (=> b!741328 m!692421))

(declare-fun m!692423 () Bool)

(assert (=> b!741328 m!692423))

(declare-fun m!692425 () Bool)

(assert (=> b!741328 m!692425))

(declare-fun m!692427 () Bool)

(assert (=> b!741328 m!692427))

(assert (=> b!741328 m!692423))

(declare-fun m!692429 () Bool)

(assert (=> b!741328 m!692429))

(push 1)

