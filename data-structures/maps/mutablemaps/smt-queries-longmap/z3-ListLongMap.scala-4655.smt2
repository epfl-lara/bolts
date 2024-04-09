; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64722 () Bool)

(assert start!64722)

(declare-fun b!729636 () Bool)

(declare-fun res!490147 () Bool)

(declare-fun e!408386 () Bool)

(assert (=> b!729636 (=> (not res!490147) (not e!408386))))

(declare-datatypes ((array!41124 0))(
  ( (array!41125 (arr!19678 (Array (_ BitVec 32) (_ BitVec 64))) (size!20099 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41124)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41124 (_ BitVec 32)) Bool)

(assert (=> b!729636 (= res!490147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729637 () Bool)

(declare-fun e!408381 () Bool)

(assert (=> b!729637 (= e!408386 e!408381)))

(declare-fun res!490145 () Bool)

(assert (=> b!729637 (=> (not res!490145) (not e!408381))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7285 0))(
  ( (MissingZero!7285 (index!31507 (_ BitVec 32))) (Found!7285 (index!31508 (_ BitVec 32))) (Intermediate!7285 (undefined!8097 Bool) (index!31509 (_ BitVec 32)) (x!62516 (_ BitVec 32))) (Undefined!7285) (MissingVacant!7285 (index!31510 (_ BitVec 32))) )
))
(declare-fun lt!323291 () SeekEntryResult!7285)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41124 (_ BitVec 32)) SeekEntryResult!7285)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729637 (= res!490145 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19678 a!3186) j!159) mask!3328) (select (arr!19678 a!3186) j!159) a!3186 mask!3328) lt!323291))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!729637 (= lt!323291 (Intermediate!7285 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729638 () Bool)

(declare-fun e!408383 () Bool)

(declare-fun e!408382 () Bool)

(assert (=> b!729638 (= e!408383 (not e!408382))))

(declare-fun res!490153 () Bool)

(assert (=> b!729638 (=> res!490153 e!408382)))

(declare-fun lt!323288 () SeekEntryResult!7285)

(declare-fun x!1131 () (_ BitVec 32))

(get-info :version)

(assert (=> b!729638 (= res!490153 (or (not ((_ is Intermediate!7285) lt!323288)) (bvsge x!1131 (x!62516 lt!323288))))))

(declare-fun e!408384 () Bool)

(assert (=> b!729638 e!408384))

(declare-fun res!490158 () Bool)

(assert (=> b!729638 (=> (not res!490158) (not e!408384))))

(assert (=> b!729638 (= res!490158 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24888 0))(
  ( (Unit!24889) )
))
(declare-fun lt!323294 () Unit!24888)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41124 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24888)

(assert (=> b!729638 (= lt!323294 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729639 () Bool)

(declare-fun res!490146 () Bool)

(assert (=> b!729639 (=> (not res!490146) (not e!408386))))

(declare-datatypes ((List!13733 0))(
  ( (Nil!13730) (Cons!13729 (h!14789 (_ BitVec 64)) (t!20056 List!13733)) )
))
(declare-fun arrayNoDuplicates!0 (array!41124 (_ BitVec 32) List!13733) Bool)

(assert (=> b!729639 (= res!490146 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13730))))

(declare-fun b!729640 () Bool)

(declare-fun e!408387 () Bool)

(declare-fun lt!323290 () SeekEntryResult!7285)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41124 (_ BitVec 32)) SeekEntryResult!7285)

(assert (=> b!729640 (= e!408387 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19678 a!3186) j!159) a!3186 mask!3328) lt!323290))))

(declare-fun res!490154 () Bool)

(declare-fun e!408385 () Bool)

(assert (=> start!64722 (=> (not res!490154) (not e!408385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64722 (= res!490154 (validMask!0 mask!3328))))

(assert (=> start!64722 e!408385))

(assert (=> start!64722 true))

(declare-fun array_inv!15452 (array!41124) Bool)

(assert (=> start!64722 (array_inv!15452 a!3186)))

(declare-fun b!729641 () Bool)

(declare-fun res!490143 () Bool)

(assert (=> b!729641 (=> (not res!490143) (not e!408385))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729641 (= res!490143 (and (= (size!20099 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20099 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20099 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!408379 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!729642 () Bool)

(assert (=> b!729642 (= e!408379 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19678 a!3186) j!159) a!3186 mask!3328) (Found!7285 j!159)))))

(declare-fun b!729643 () Bool)

(assert (=> b!729643 (= e!408382 true)))

(declare-fun lt!323287 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729643 (= lt!323287 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729644 () Bool)

(declare-fun res!490152 () Bool)

(assert (=> b!729644 (=> (not res!490152) (not e!408386))))

(assert (=> b!729644 (= res!490152 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20099 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20099 a!3186))))))

(declare-fun b!729645 () Bool)

(declare-fun res!490155 () Bool)

(assert (=> b!729645 (=> (not res!490155) (not e!408385))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729645 (= res!490155 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!729646 () Bool)

(declare-fun res!490144 () Bool)

(assert (=> b!729646 (=> (not res!490144) (not e!408381))))

(assert (=> b!729646 (= res!490144 e!408379)))

(declare-fun c!80121 () Bool)

(assert (=> b!729646 (= c!80121 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729647 () Bool)

(assert (=> b!729647 (= e!408379 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19678 a!3186) j!159) a!3186 mask!3328) lt!323291))))

(declare-fun b!729648 () Bool)

(declare-fun res!490151 () Bool)

(assert (=> b!729648 (=> (not res!490151) (not e!408385))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729648 (= res!490151 (validKeyInArray!0 (select (arr!19678 a!3186) j!159)))))

(declare-fun b!729649 () Bool)

(declare-fun res!490149 () Bool)

(assert (=> b!729649 (=> (not res!490149) (not e!408385))))

(assert (=> b!729649 (= res!490149 (validKeyInArray!0 k0!2102))))

(declare-fun b!729650 () Bool)

(assert (=> b!729650 (= e!408385 e!408386)))

(declare-fun res!490148 () Bool)

(assert (=> b!729650 (=> (not res!490148) (not e!408386))))

(declare-fun lt!323286 () SeekEntryResult!7285)

(assert (=> b!729650 (= res!490148 (or (= lt!323286 (MissingZero!7285 i!1173)) (= lt!323286 (MissingVacant!7285 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41124 (_ BitVec 32)) SeekEntryResult!7285)

(assert (=> b!729650 (= lt!323286 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!729651 () Bool)

(declare-fun res!490156 () Bool)

(assert (=> b!729651 (=> (not res!490156) (not e!408381))))

(assert (=> b!729651 (= res!490156 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19678 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729652 () Bool)

(assert (=> b!729652 (= e!408381 e!408383)))

(declare-fun res!490150 () Bool)

(assert (=> b!729652 (=> (not res!490150) (not e!408383))))

(declare-fun lt!323293 () SeekEntryResult!7285)

(assert (=> b!729652 (= res!490150 (= lt!323293 lt!323288))))

(declare-fun lt!323289 () array!41124)

(declare-fun lt!323292 () (_ BitVec 64))

(assert (=> b!729652 (= lt!323288 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323292 lt!323289 mask!3328))))

(assert (=> b!729652 (= lt!323293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323292 mask!3328) lt!323292 lt!323289 mask!3328))))

(assert (=> b!729652 (= lt!323292 (select (store (arr!19678 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!729652 (= lt!323289 (array!41125 (store (arr!19678 a!3186) i!1173 k0!2102) (size!20099 a!3186)))))

(declare-fun b!729653 () Bool)

(assert (=> b!729653 (= e!408384 e!408387)))

(declare-fun res!490157 () Bool)

(assert (=> b!729653 (=> (not res!490157) (not e!408387))))

(assert (=> b!729653 (= res!490157 (= (seekEntryOrOpen!0 (select (arr!19678 a!3186) j!159) a!3186 mask!3328) lt!323290))))

(assert (=> b!729653 (= lt!323290 (Found!7285 j!159))))

(assert (= (and start!64722 res!490154) b!729641))

(assert (= (and b!729641 res!490143) b!729648))

(assert (= (and b!729648 res!490151) b!729649))

(assert (= (and b!729649 res!490149) b!729645))

(assert (= (and b!729645 res!490155) b!729650))

(assert (= (and b!729650 res!490148) b!729636))

(assert (= (and b!729636 res!490147) b!729639))

(assert (= (and b!729639 res!490146) b!729644))

(assert (= (and b!729644 res!490152) b!729637))

(assert (= (and b!729637 res!490145) b!729651))

(assert (= (and b!729651 res!490156) b!729646))

(assert (= (and b!729646 c!80121) b!729647))

(assert (= (and b!729646 (not c!80121)) b!729642))

(assert (= (and b!729646 res!490144) b!729652))

(assert (= (and b!729652 res!490150) b!729638))

(assert (= (and b!729638 res!490158) b!729653))

(assert (= (and b!729653 res!490157) b!729640))

(assert (= (and b!729638 (not res!490153)) b!729643))

(declare-fun m!683341 () Bool)

(assert (=> start!64722 m!683341))

(declare-fun m!683343 () Bool)

(assert (=> start!64722 m!683343))

(declare-fun m!683345 () Bool)

(assert (=> b!729638 m!683345))

(declare-fun m!683347 () Bool)

(assert (=> b!729638 m!683347))

(declare-fun m!683349 () Bool)

(assert (=> b!729636 m!683349))

(declare-fun m!683351 () Bool)

(assert (=> b!729640 m!683351))

(assert (=> b!729640 m!683351))

(declare-fun m!683353 () Bool)

(assert (=> b!729640 m!683353))

(declare-fun m!683355 () Bool)

(assert (=> b!729639 m!683355))

(assert (=> b!729637 m!683351))

(assert (=> b!729637 m!683351))

(declare-fun m!683357 () Bool)

(assert (=> b!729637 m!683357))

(assert (=> b!729637 m!683357))

(assert (=> b!729637 m!683351))

(declare-fun m!683359 () Bool)

(assert (=> b!729637 m!683359))

(assert (=> b!729648 m!683351))

(assert (=> b!729648 m!683351))

(declare-fun m!683361 () Bool)

(assert (=> b!729648 m!683361))

(declare-fun m!683363 () Bool)

(assert (=> b!729645 m!683363))

(declare-fun m!683365 () Bool)

(assert (=> b!729650 m!683365))

(declare-fun m!683367 () Bool)

(assert (=> b!729643 m!683367))

(declare-fun m!683369 () Bool)

(assert (=> b!729649 m!683369))

(declare-fun m!683371 () Bool)

(assert (=> b!729651 m!683371))

(assert (=> b!729647 m!683351))

(assert (=> b!729647 m!683351))

(declare-fun m!683373 () Bool)

(assert (=> b!729647 m!683373))

(assert (=> b!729653 m!683351))

(assert (=> b!729653 m!683351))

(declare-fun m!683375 () Bool)

(assert (=> b!729653 m!683375))

(assert (=> b!729642 m!683351))

(assert (=> b!729642 m!683351))

(declare-fun m!683377 () Bool)

(assert (=> b!729642 m!683377))

(declare-fun m!683379 () Bool)

(assert (=> b!729652 m!683379))

(declare-fun m!683381 () Bool)

(assert (=> b!729652 m!683381))

(declare-fun m!683383 () Bool)

(assert (=> b!729652 m!683383))

(declare-fun m!683385 () Bool)

(assert (=> b!729652 m!683385))

(declare-fun m!683387 () Bool)

(assert (=> b!729652 m!683387))

(assert (=> b!729652 m!683379))

(check-sat (not b!729639) (not b!729640) (not b!729648) (not b!729636) (not start!64722) (not b!729637) (not b!729643) (not b!729652) (not b!729649) (not b!729645) (not b!729653) (not b!729642) (not b!729650) (not b!729647) (not b!729638))
(check-sat)
