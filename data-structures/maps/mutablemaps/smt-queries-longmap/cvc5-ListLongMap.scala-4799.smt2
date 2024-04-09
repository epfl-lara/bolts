; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65872 () Bool)

(assert start!65872)

(declare-fun b!758719 () Bool)

(declare-fun e!423023 () Bool)

(declare-fun e!423025 () Bool)

(assert (=> b!758719 (= e!423023 e!423025)))

(declare-fun res!513443 () Bool)

(assert (=> b!758719 (=> (not res!513443) (not e!423025))))

(declare-datatypes ((array!41998 0))(
  ( (array!41999 (arr!20109 (Array (_ BitVec 32) (_ BitVec 64))) (size!20530 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41998)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7716 0))(
  ( (MissingZero!7716 (index!33231 (_ BitVec 32))) (Found!7716 (index!33232 (_ BitVec 32))) (Intermediate!7716 (undefined!8528 Bool) (index!33233 (_ BitVec 32)) (x!64147 (_ BitVec 32))) (Undefined!7716) (MissingVacant!7716 (index!33234 (_ BitVec 32))) )
))
(declare-fun lt!338116 () SeekEntryResult!7716)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41998 (_ BitVec 32)) SeekEntryResult!7716)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758719 (= res!513443 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20109 a!3186) j!159) mask!3328) (select (arr!20109 a!3186) j!159) a!3186 mask!3328) lt!338116))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!758719 (= lt!338116 (Intermediate!7716 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758720 () Bool)

(declare-datatypes ((Unit!26266 0))(
  ( (Unit!26267) )
))
(declare-fun e!423026 () Unit!26266)

(declare-fun Unit!26268 () Unit!26266)

(assert (=> b!758720 (= e!423026 Unit!26268)))

(assert (=> b!758720 false))

(declare-fun b!758721 () Bool)

(declare-fun e!423021 () Bool)

(declare-fun lt!338106 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758721 (= e!423021 (validKeyInArray!0 lt!338106))))

(declare-fun b!758722 () Bool)

(declare-fun res!513451 () Bool)

(assert (=> b!758722 (=> (not res!513451) (not e!423025))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!758722 (= res!513451 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20109 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758723 () Bool)

(declare-fun Unit!26269 () Unit!26266)

(assert (=> b!758723 (= e!423026 Unit!26269)))

(declare-fun b!758725 () Bool)

(declare-fun res!513454 () Bool)

(assert (=> b!758725 (=> (not res!513454) (not e!423023))))

(declare-datatypes ((List!14164 0))(
  ( (Nil!14161) (Cons!14160 (h!15232 (_ BitVec 64)) (t!20487 List!14164)) )
))
(declare-fun arrayNoDuplicates!0 (array!41998 (_ BitVec 32) List!14164) Bool)

(assert (=> b!758725 (= res!513454 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14161))))

(declare-fun b!758726 () Bool)

(declare-fun e!423030 () Bool)

(assert (=> b!758726 (= e!423030 e!423023)))

(declare-fun res!513450 () Bool)

(assert (=> b!758726 (=> (not res!513450) (not e!423023))))

(declare-fun lt!338118 () SeekEntryResult!7716)

(assert (=> b!758726 (= res!513450 (or (= lt!338118 (MissingZero!7716 i!1173)) (= lt!338118 (MissingVacant!7716 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41998 (_ BitVec 32)) SeekEntryResult!7716)

(assert (=> b!758726 (= lt!338118 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun e!423029 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!758727 () Bool)

(assert (=> b!758727 (= e!423029 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20109 a!3186) j!159) a!3186 mask!3328) lt!338116))))

(declare-fun b!758728 () Bool)

(declare-fun res!513452 () Bool)

(assert (=> b!758728 (=> (not res!513452) (not e!423023))))

(assert (=> b!758728 (= res!513452 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20530 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20530 a!3186))))))

(declare-fun b!758729 () Bool)

(declare-fun res!513439 () Bool)

(assert (=> b!758729 (=> (not res!513439) (not e!423030))))

(assert (=> b!758729 (= res!513439 (and (= (size!20530 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20530 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20530 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758730 () Bool)

(declare-fun e!423033 () Bool)

(declare-fun e!423022 () Bool)

(assert (=> b!758730 (= e!423033 e!423022)))

(declare-fun res!513456 () Bool)

(assert (=> b!758730 (=> res!513456 e!423022)))

(declare-fun lt!338108 () (_ BitVec 64))

(assert (=> b!758730 (= res!513456 (= lt!338108 lt!338106))))

(assert (=> b!758730 (= lt!338108 (select (store (arr!20109 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!758731 () Bool)

(declare-fun e!423031 () Bool)

(assert (=> b!758731 (= e!423025 e!423031)))

(declare-fun res!513455 () Bool)

(assert (=> b!758731 (=> (not res!513455) (not e!423031))))

(declare-fun lt!338112 () SeekEntryResult!7716)

(declare-fun lt!338107 () SeekEntryResult!7716)

(assert (=> b!758731 (= res!513455 (= lt!338112 lt!338107))))

(declare-fun lt!338114 () array!41998)

(assert (=> b!758731 (= lt!338107 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338106 lt!338114 mask!3328))))

(assert (=> b!758731 (= lt!338112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338106 mask!3328) lt!338106 lt!338114 mask!3328))))

(assert (=> b!758731 (= lt!338106 (select (store (arr!20109 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!758731 (= lt!338114 (array!41999 (store (arr!20109 a!3186) i!1173 k!2102) (size!20530 a!3186)))))

(declare-fun b!758732 () Bool)

(declare-fun e!423027 () Bool)

(assert (=> b!758732 (= e!423027 e!423033)))

(declare-fun res!513440 () Bool)

(assert (=> b!758732 (=> res!513440 e!423033)))

(declare-fun lt!338111 () SeekEntryResult!7716)

(declare-fun lt!338109 () SeekEntryResult!7716)

(assert (=> b!758732 (= res!513440 (not (= lt!338111 lt!338109)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41998 (_ BitVec 32)) SeekEntryResult!7716)

(assert (=> b!758732 (= lt!338111 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20109 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!758733 () Bool)

(declare-fun res!513441 () Bool)

(assert (=> b!758733 (=> (not res!513441) (not e!423030))))

(assert (=> b!758733 (= res!513441 (validKeyInArray!0 k!2102))))

(declare-fun e!423032 () Bool)

(declare-fun b!758734 () Bool)

(assert (=> b!758734 (= e!423032 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20109 a!3186) j!159) a!3186 mask!3328) lt!338109))))

(declare-fun b!758735 () Bool)

(declare-fun res!513447 () Bool)

(assert (=> b!758735 (=> (not res!513447) (not e!423025))))

(assert (=> b!758735 (= res!513447 e!423029)))

(declare-fun c!83022 () Bool)

(assert (=> b!758735 (= c!83022 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758736 () Bool)

(assert (=> b!758736 (= e!423031 (not e!423027))))

(declare-fun res!513448 () Bool)

(assert (=> b!758736 (=> res!513448 e!423027)))

(assert (=> b!758736 (= res!513448 (or (not (is-Intermediate!7716 lt!338107)) (bvslt x!1131 (x!64147 lt!338107)) (not (= x!1131 (x!64147 lt!338107))) (not (= index!1321 (index!33233 lt!338107)))))))

(assert (=> b!758736 e!423032))

(declare-fun res!513446 () Bool)

(assert (=> b!758736 (=> (not res!513446) (not e!423032))))

(declare-fun lt!338117 () SeekEntryResult!7716)

(assert (=> b!758736 (= res!513446 (= lt!338117 lt!338109))))

(assert (=> b!758736 (= lt!338109 (Found!7716 j!159))))

(assert (=> b!758736 (= lt!338117 (seekEntryOrOpen!0 (select (arr!20109 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41998 (_ BitVec 32)) Bool)

(assert (=> b!758736 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!338115 () Unit!26266)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41998 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26266)

(assert (=> b!758736 (= lt!338115 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758737 () Bool)

(declare-fun res!513438 () Bool)

(assert (=> b!758737 (=> (not res!513438) (not e!423030))))

(assert (=> b!758737 (= res!513438 (validKeyInArray!0 (select (arr!20109 a!3186) j!159)))))

(declare-fun res!513442 () Bool)

(assert (=> start!65872 (=> (not res!513442) (not e!423030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65872 (= res!513442 (validMask!0 mask!3328))))

(assert (=> start!65872 e!423030))

(assert (=> start!65872 true))

(declare-fun array_inv!15883 (array!41998) Bool)

(assert (=> start!65872 (array_inv!15883 a!3186)))

(declare-fun b!758724 () Bool)

(declare-fun res!513444 () Bool)

(assert (=> b!758724 (=> (not res!513444) (not e!423030))))

(declare-fun arrayContainsKey!0 (array!41998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758724 (= res!513444 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758738 () Bool)

(declare-fun e!423024 () Bool)

(assert (=> b!758738 (= e!423022 e!423024)))

(declare-fun res!513445 () Bool)

(assert (=> b!758738 (=> res!513445 e!423024)))

(assert (=> b!758738 (= res!513445 (or (not (= (select (arr!20109 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!338120 () SeekEntryResult!7716)

(declare-fun lt!338110 () SeekEntryResult!7716)

(assert (=> b!758738 (and (= lt!338120 lt!338110) (= lt!338117 lt!338111))))

(assert (=> b!758738 (= lt!338110 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!338106 lt!338114 mask!3328))))

(assert (=> b!758738 (= lt!338120 (seekEntryOrOpen!0 lt!338106 lt!338114 mask!3328))))

(assert (=> b!758738 (= lt!338108 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!338113 () Unit!26266)

(assert (=> b!758738 (= lt!338113 e!423026)))

(declare-fun c!83021 () Bool)

(assert (=> b!758738 (= c!83021 (= lt!338108 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758739 () Bool)

(assert (=> b!758739 (= e!423029 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20109 a!3186) j!159) a!3186 mask!3328) (Found!7716 j!159)))))

(declare-fun b!758740 () Bool)

(assert (=> b!758740 (= e!423024 e!423021)))

(declare-fun res!513453 () Bool)

(assert (=> b!758740 (=> res!513453 e!423021)))

(assert (=> b!758740 (= res!513453 (bvslt mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!758740 (= lt!338110 lt!338111)))

(declare-fun lt!338119 () Unit!26266)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!41998 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26266)

(assert (=> b!758740 (= lt!338119 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!758741 () Bool)

(declare-fun res!513449 () Bool)

(assert (=> b!758741 (=> (not res!513449) (not e!423023))))

(assert (=> b!758741 (= res!513449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65872 res!513442) b!758729))

(assert (= (and b!758729 res!513439) b!758737))

(assert (= (and b!758737 res!513438) b!758733))

(assert (= (and b!758733 res!513441) b!758724))

(assert (= (and b!758724 res!513444) b!758726))

(assert (= (and b!758726 res!513450) b!758741))

(assert (= (and b!758741 res!513449) b!758725))

(assert (= (and b!758725 res!513454) b!758728))

(assert (= (and b!758728 res!513452) b!758719))

(assert (= (and b!758719 res!513443) b!758722))

(assert (= (and b!758722 res!513451) b!758735))

(assert (= (and b!758735 c!83022) b!758727))

(assert (= (and b!758735 (not c!83022)) b!758739))

(assert (= (and b!758735 res!513447) b!758731))

(assert (= (and b!758731 res!513455) b!758736))

(assert (= (and b!758736 res!513446) b!758734))

(assert (= (and b!758736 (not res!513448)) b!758732))

(assert (= (and b!758732 (not res!513440)) b!758730))

(assert (= (and b!758730 (not res!513456)) b!758738))

(assert (= (and b!758738 c!83021) b!758720))

(assert (= (and b!758738 (not c!83021)) b!758723))

(assert (= (and b!758738 (not res!513445)) b!758740))

(assert (= (and b!758740 (not res!513453)) b!758721))

(declare-fun m!706237 () Bool)

(assert (=> b!758726 m!706237))

(declare-fun m!706239 () Bool)

(assert (=> b!758736 m!706239))

(assert (=> b!758736 m!706239))

(declare-fun m!706241 () Bool)

(assert (=> b!758736 m!706241))

(declare-fun m!706243 () Bool)

(assert (=> b!758736 m!706243))

(declare-fun m!706245 () Bool)

(assert (=> b!758736 m!706245))

(declare-fun m!706247 () Bool)

(assert (=> b!758722 m!706247))

(declare-fun m!706249 () Bool)

(assert (=> b!758738 m!706249))

(declare-fun m!706251 () Bool)

(assert (=> b!758738 m!706251))

(declare-fun m!706253 () Bool)

(assert (=> b!758738 m!706253))

(declare-fun m!706255 () Bool)

(assert (=> b!758721 m!706255))

(assert (=> b!758727 m!706239))

(assert (=> b!758727 m!706239))

(declare-fun m!706257 () Bool)

(assert (=> b!758727 m!706257))

(declare-fun m!706259 () Bool)

(assert (=> b!758730 m!706259))

(declare-fun m!706261 () Bool)

(assert (=> b!758730 m!706261))

(declare-fun m!706263 () Bool)

(assert (=> b!758741 m!706263))

(declare-fun m!706265 () Bool)

(assert (=> b!758740 m!706265))

(assert (=> b!758731 m!706259))

(declare-fun m!706267 () Bool)

(assert (=> b!758731 m!706267))

(declare-fun m!706269 () Bool)

(assert (=> b!758731 m!706269))

(declare-fun m!706271 () Bool)

(assert (=> b!758731 m!706271))

(assert (=> b!758731 m!706271))

(declare-fun m!706273 () Bool)

(assert (=> b!758731 m!706273))

(declare-fun m!706275 () Bool)

(assert (=> b!758733 m!706275))

(assert (=> b!758732 m!706239))

(assert (=> b!758732 m!706239))

(declare-fun m!706277 () Bool)

(assert (=> b!758732 m!706277))

(assert (=> b!758734 m!706239))

(assert (=> b!758734 m!706239))

(declare-fun m!706279 () Bool)

(assert (=> b!758734 m!706279))

(declare-fun m!706281 () Bool)

(assert (=> b!758724 m!706281))

(assert (=> b!758719 m!706239))

(assert (=> b!758719 m!706239))

(declare-fun m!706283 () Bool)

(assert (=> b!758719 m!706283))

(assert (=> b!758719 m!706283))

(assert (=> b!758719 m!706239))

(declare-fun m!706285 () Bool)

(assert (=> b!758719 m!706285))

(assert (=> b!758737 m!706239))

(assert (=> b!758737 m!706239))

(declare-fun m!706287 () Bool)

(assert (=> b!758737 m!706287))

(assert (=> b!758739 m!706239))

(assert (=> b!758739 m!706239))

(assert (=> b!758739 m!706277))

(declare-fun m!706289 () Bool)

(assert (=> start!65872 m!706289))

(declare-fun m!706291 () Bool)

(assert (=> start!65872 m!706291))

(declare-fun m!706293 () Bool)

(assert (=> b!758725 m!706293))

(push 1)

