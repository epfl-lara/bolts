; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64342 () Bool)

(assert start!64342)

(declare-fun b!722683 () Bool)

(declare-fun e!405017 () Bool)

(assert (=> b!722683 (= e!405017 false)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!320401 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!40876 0))(
  ( (array!40877 (arr!19557 (Array (_ BitVec 32) (_ BitVec 64))) (size!19978 (_ BitVec 32))) )
))
(declare-fun lt!320403 () array!40876)

(declare-datatypes ((SeekEntryResult!7164 0))(
  ( (MissingZero!7164 (index!31023 (_ BitVec 32))) (Found!7164 (index!31024 (_ BitVec 32))) (Intermediate!7164 (undefined!7976 Bool) (index!31025 (_ BitVec 32)) (x!62054 (_ BitVec 32))) (Undefined!7164) (MissingVacant!7164 (index!31026 (_ BitVec 32))) )
))
(declare-fun lt!320402 () SeekEntryResult!7164)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40876 (_ BitVec 32)) SeekEntryResult!7164)

(assert (=> b!722683 (= lt!320402 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320401 lt!320403 mask!3328))))

(declare-fun lt!320404 () SeekEntryResult!7164)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722683 (= lt!320404 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320401 mask!3328) lt!320401 lt!320403 mask!3328))))

(declare-fun a!3186 () array!40876)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!722683 (= lt!320401 (select (store (arr!19557 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!722683 (= lt!320403 (array!40877 (store (arr!19557 a!3186) i!1173 k!2102) (size!19978 a!3186)))))

(declare-fun b!722684 () Bool)

(declare-fun res!484488 () Bool)

(declare-fun e!405015 () Bool)

(assert (=> b!722684 (=> (not res!484488) (not e!405015))))

(declare-fun arrayContainsKey!0 (array!40876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722684 (= res!484488 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722685 () Bool)

(declare-fun e!405018 () Bool)

(assert (=> b!722685 (= e!405018 e!405017)))

(declare-fun res!484481 () Bool)

(assert (=> b!722685 (=> (not res!484481) (not e!405017))))

(declare-fun lt!320405 () SeekEntryResult!7164)

(assert (=> b!722685 (= res!484481 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19557 a!3186) j!159) mask!3328) (select (arr!19557 a!3186) j!159) a!3186 mask!3328) lt!320405))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722685 (= lt!320405 (Intermediate!7164 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722686 () Bool)

(declare-fun res!484487 () Bool)

(assert (=> b!722686 (=> (not res!484487) (not e!405017))))

(declare-fun e!405014 () Bool)

(assert (=> b!722686 (= res!484487 e!405014)))

(declare-fun c!79473 () Bool)

(assert (=> b!722686 (= c!79473 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!484480 () Bool)

(assert (=> start!64342 (=> (not res!484480) (not e!405015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64342 (= res!484480 (validMask!0 mask!3328))))

(assert (=> start!64342 e!405015))

(assert (=> start!64342 true))

(declare-fun array_inv!15331 (array!40876) Bool)

(assert (=> start!64342 (array_inv!15331 a!3186)))

(declare-fun b!722687 () Bool)

(assert (=> b!722687 (= e!405015 e!405018)))

(declare-fun res!484486 () Bool)

(assert (=> b!722687 (=> (not res!484486) (not e!405018))))

(declare-fun lt!320400 () SeekEntryResult!7164)

(assert (=> b!722687 (= res!484486 (or (= lt!320400 (MissingZero!7164 i!1173)) (= lt!320400 (MissingVacant!7164 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40876 (_ BitVec 32)) SeekEntryResult!7164)

(assert (=> b!722687 (= lt!320400 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722688 () Bool)

(declare-fun res!484482 () Bool)

(assert (=> b!722688 (=> (not res!484482) (not e!405015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722688 (= res!484482 (validKeyInArray!0 (select (arr!19557 a!3186) j!159)))))

(declare-fun b!722689 () Bool)

(declare-fun res!484485 () Bool)

(assert (=> b!722689 (=> (not res!484485) (not e!405015))))

(assert (=> b!722689 (= res!484485 (validKeyInArray!0 k!2102))))

(declare-fun b!722690 () Bool)

(declare-fun res!484490 () Bool)

(assert (=> b!722690 (=> (not res!484490) (not e!405018))))

(declare-datatypes ((List!13612 0))(
  ( (Nil!13609) (Cons!13608 (h!14662 (_ BitVec 64)) (t!19935 List!13612)) )
))
(declare-fun arrayNoDuplicates!0 (array!40876 (_ BitVec 32) List!13612) Bool)

(assert (=> b!722690 (= res!484490 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13609))))

(declare-fun b!722691 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40876 (_ BitVec 32)) SeekEntryResult!7164)

(assert (=> b!722691 (= e!405014 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19557 a!3186) j!159) a!3186 mask!3328) (Found!7164 j!159)))))

(declare-fun b!722692 () Bool)

(declare-fun res!484484 () Bool)

(assert (=> b!722692 (=> (not res!484484) (not e!405015))))

(assert (=> b!722692 (= res!484484 (and (= (size!19978 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19978 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19978 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722693 () Bool)

(declare-fun res!484483 () Bool)

(assert (=> b!722693 (=> (not res!484483) (not e!405018))))

(assert (=> b!722693 (= res!484483 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19978 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19978 a!3186))))))

(declare-fun b!722694 () Bool)

(declare-fun res!484491 () Bool)

(assert (=> b!722694 (=> (not res!484491) (not e!405017))))

(assert (=> b!722694 (= res!484491 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19557 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722695 () Bool)

(assert (=> b!722695 (= e!405014 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19557 a!3186) j!159) a!3186 mask!3328) lt!320405))))

(declare-fun b!722696 () Bool)

(declare-fun res!484489 () Bool)

(assert (=> b!722696 (=> (not res!484489) (not e!405018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40876 (_ BitVec 32)) Bool)

(assert (=> b!722696 (= res!484489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64342 res!484480) b!722692))

(assert (= (and b!722692 res!484484) b!722688))

(assert (= (and b!722688 res!484482) b!722689))

(assert (= (and b!722689 res!484485) b!722684))

(assert (= (and b!722684 res!484488) b!722687))

(assert (= (and b!722687 res!484486) b!722696))

(assert (= (and b!722696 res!484489) b!722690))

(assert (= (and b!722690 res!484490) b!722693))

(assert (= (and b!722693 res!484483) b!722685))

(assert (= (and b!722685 res!484481) b!722694))

(assert (= (and b!722694 res!484491) b!722686))

(assert (= (and b!722686 c!79473) b!722695))

(assert (= (and b!722686 (not c!79473)) b!722691))

(assert (= (and b!722686 res!484487) b!722683))

(declare-fun m!677275 () Bool)

(assert (=> b!722688 m!677275))

(assert (=> b!722688 m!677275))

(declare-fun m!677277 () Bool)

(assert (=> b!722688 m!677277))

(declare-fun m!677279 () Bool)

(assert (=> start!64342 m!677279))

(declare-fun m!677281 () Bool)

(assert (=> start!64342 m!677281))

(assert (=> b!722691 m!677275))

(assert (=> b!722691 m!677275))

(declare-fun m!677283 () Bool)

(assert (=> b!722691 m!677283))

(declare-fun m!677285 () Bool)

(assert (=> b!722689 m!677285))

(declare-fun m!677287 () Bool)

(assert (=> b!722683 m!677287))

(declare-fun m!677289 () Bool)

(assert (=> b!722683 m!677289))

(declare-fun m!677291 () Bool)

(assert (=> b!722683 m!677291))

(assert (=> b!722683 m!677287))

(declare-fun m!677293 () Bool)

(assert (=> b!722683 m!677293))

(declare-fun m!677295 () Bool)

(assert (=> b!722683 m!677295))

(declare-fun m!677297 () Bool)

(assert (=> b!722687 m!677297))

(declare-fun m!677299 () Bool)

(assert (=> b!722696 m!677299))

(assert (=> b!722695 m!677275))

(assert (=> b!722695 m!677275))

(declare-fun m!677301 () Bool)

(assert (=> b!722695 m!677301))

(declare-fun m!677303 () Bool)

(assert (=> b!722690 m!677303))

(declare-fun m!677305 () Bool)

(assert (=> b!722684 m!677305))

(assert (=> b!722685 m!677275))

(assert (=> b!722685 m!677275))

(declare-fun m!677307 () Bool)

(assert (=> b!722685 m!677307))

(assert (=> b!722685 m!677307))

(assert (=> b!722685 m!677275))

(declare-fun m!677309 () Bool)

(assert (=> b!722685 m!677309))

(declare-fun m!677311 () Bool)

(assert (=> b!722694 m!677311))

(push 1)

