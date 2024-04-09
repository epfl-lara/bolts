; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64720 () Bool)

(assert start!64720)

(declare-fun b!729582 () Bool)

(declare-fun res!490108 () Bool)

(declare-fun e!408354 () Bool)

(assert (=> b!729582 (=> (not res!490108) (not e!408354))))

(declare-datatypes ((array!41122 0))(
  ( (array!41123 (arr!19677 (Array (_ BitVec 32) (_ BitVec 64))) (size!20098 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41122)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729582 (= res!490108 (validKeyInArray!0 (select (arr!19677 a!3186) j!159)))))

(declare-fun b!729583 () Bool)

(declare-fun e!408358 () Bool)

(declare-fun e!408356 () Bool)

(assert (=> b!729583 (= e!408358 e!408356)))

(declare-fun res!490097 () Bool)

(assert (=> b!729583 (=> (not res!490097) (not e!408356))))

(declare-datatypes ((SeekEntryResult!7284 0))(
  ( (MissingZero!7284 (index!31503 (_ BitVec 32))) (Found!7284 (index!31504 (_ BitVec 32))) (Intermediate!7284 (undefined!8096 Bool) (index!31505 (_ BitVec 32)) (x!62515 (_ BitVec 32))) (Undefined!7284) (MissingVacant!7284 (index!31506 (_ BitVec 32))) )
))
(declare-fun lt!323262 () SeekEntryResult!7284)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41122 (_ BitVec 32)) SeekEntryResult!7284)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729583 (= res!490097 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19677 a!3186) j!159) mask!3328) (select (arr!19677 a!3186) j!159) a!3186 mask!3328) lt!323262))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!729583 (= lt!323262 (Intermediate!7284 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729584 () Bool)

(declare-fun res!490103 () Bool)

(assert (=> b!729584 (=> (not res!490103) (not e!408356))))

(declare-fun e!408352 () Bool)

(assert (=> b!729584 (= res!490103 e!408352)))

(declare-fun c!80118 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!729584 (= c!80118 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729586 () Bool)

(declare-fun res!490110 () Bool)

(assert (=> b!729586 (=> (not res!490110) (not e!408358))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!729586 (= res!490110 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20098 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20098 a!3186))))))

(declare-fun b!729587 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41122 (_ BitVec 32)) SeekEntryResult!7284)

(assert (=> b!729587 (= e!408352 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19677 a!3186) j!159) a!3186 mask!3328) (Found!7284 j!159)))))

(declare-fun b!729588 () Bool)

(declare-fun e!408355 () Bool)

(declare-fun e!408357 () Bool)

(assert (=> b!729588 (= e!408355 e!408357)))

(declare-fun res!490101 () Bool)

(assert (=> b!729588 (=> (not res!490101) (not e!408357))))

(declare-fun lt!323265 () SeekEntryResult!7284)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41122 (_ BitVec 32)) SeekEntryResult!7284)

(assert (=> b!729588 (= res!490101 (= (seekEntryOrOpen!0 (select (arr!19677 a!3186) j!159) a!3186 mask!3328) lt!323265))))

(assert (=> b!729588 (= lt!323265 (Found!7284 j!159))))

(declare-fun b!729589 () Bool)

(declare-fun res!490104 () Bool)

(assert (=> b!729589 (=> (not res!490104) (not e!408354))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729589 (= res!490104 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!729590 () Bool)

(declare-fun res!490095 () Bool)

(assert (=> b!729590 (=> (not res!490095) (not e!408358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41122 (_ BitVec 32)) Bool)

(assert (=> b!729590 (= res!490095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729591 () Bool)

(assert (=> b!729591 (= e!408352 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19677 a!3186) j!159) a!3186 mask!3328) lt!323262))))

(declare-fun b!729592 () Bool)

(declare-fun res!490096 () Bool)

(assert (=> b!729592 (=> (not res!490096) (not e!408354))))

(assert (=> b!729592 (= res!490096 (validKeyInArray!0 k!2102))))

(declare-fun b!729593 () Bool)

(declare-fun res!490105 () Bool)

(assert (=> b!729593 (=> (not res!490105) (not e!408356))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729593 (= res!490105 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19677 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729585 () Bool)

(assert (=> b!729585 (= e!408354 e!408358)))

(declare-fun res!490099 () Bool)

(assert (=> b!729585 (=> (not res!490099) (not e!408358))))

(declare-fun lt!323263 () SeekEntryResult!7284)

(assert (=> b!729585 (= res!490099 (or (= lt!323263 (MissingZero!7284 i!1173)) (= lt!323263 (MissingVacant!7284 i!1173))))))

(assert (=> b!729585 (= lt!323263 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!490107 () Bool)

(assert (=> start!64720 (=> (not res!490107) (not e!408354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64720 (= res!490107 (validMask!0 mask!3328))))

(assert (=> start!64720 e!408354))

(assert (=> start!64720 true))

(declare-fun array_inv!15451 (array!41122) Bool)

(assert (=> start!64720 (array_inv!15451 a!3186)))

(declare-fun b!729594 () Bool)

(assert (=> b!729594 (= e!408357 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19677 a!3186) j!159) a!3186 mask!3328) lt!323265))))

(declare-fun b!729595 () Bool)

(declare-fun e!408360 () Bool)

(assert (=> b!729595 (= e!408360 true)))

(declare-fun lt!323266 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729595 (= lt!323266 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729596 () Bool)

(declare-fun e!408353 () Bool)

(assert (=> b!729596 (= e!408356 e!408353)))

(declare-fun res!490106 () Bool)

(assert (=> b!729596 (=> (not res!490106) (not e!408353))))

(declare-fun lt!323264 () SeekEntryResult!7284)

(declare-fun lt!323260 () SeekEntryResult!7284)

(assert (=> b!729596 (= res!490106 (= lt!323264 lt!323260))))

(declare-fun lt!323261 () array!41122)

(declare-fun lt!323259 () (_ BitVec 64))

(assert (=> b!729596 (= lt!323260 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323259 lt!323261 mask!3328))))

(assert (=> b!729596 (= lt!323264 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323259 mask!3328) lt!323259 lt!323261 mask!3328))))

(assert (=> b!729596 (= lt!323259 (select (store (arr!19677 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729596 (= lt!323261 (array!41123 (store (arr!19677 a!3186) i!1173 k!2102) (size!20098 a!3186)))))

(declare-fun b!729597 () Bool)

(declare-fun res!490098 () Bool)

(assert (=> b!729597 (=> (not res!490098) (not e!408358))))

(declare-datatypes ((List!13732 0))(
  ( (Nil!13729) (Cons!13728 (h!14788 (_ BitVec 64)) (t!20055 List!13732)) )
))
(declare-fun arrayNoDuplicates!0 (array!41122 (_ BitVec 32) List!13732) Bool)

(assert (=> b!729597 (= res!490098 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13729))))

(declare-fun b!729598 () Bool)

(declare-fun res!490109 () Bool)

(assert (=> b!729598 (=> (not res!490109) (not e!408354))))

(assert (=> b!729598 (= res!490109 (and (= (size!20098 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20098 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20098 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729599 () Bool)

(assert (=> b!729599 (= e!408353 (not e!408360))))

(declare-fun res!490100 () Bool)

(assert (=> b!729599 (=> res!490100 e!408360)))

(assert (=> b!729599 (= res!490100 (or (not (is-Intermediate!7284 lt!323260)) (bvsge x!1131 (x!62515 lt!323260))))))

(assert (=> b!729599 e!408355))

(declare-fun res!490102 () Bool)

(assert (=> b!729599 (=> (not res!490102) (not e!408355))))

(assert (=> b!729599 (= res!490102 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24886 0))(
  ( (Unit!24887) )
))
(declare-fun lt!323267 () Unit!24886)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41122 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24886)

(assert (=> b!729599 (= lt!323267 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!64720 res!490107) b!729598))

(assert (= (and b!729598 res!490109) b!729582))

(assert (= (and b!729582 res!490108) b!729592))

(assert (= (and b!729592 res!490096) b!729589))

(assert (= (and b!729589 res!490104) b!729585))

(assert (= (and b!729585 res!490099) b!729590))

(assert (= (and b!729590 res!490095) b!729597))

(assert (= (and b!729597 res!490098) b!729586))

(assert (= (and b!729586 res!490110) b!729583))

(assert (= (and b!729583 res!490097) b!729593))

(assert (= (and b!729593 res!490105) b!729584))

(assert (= (and b!729584 c!80118) b!729591))

(assert (= (and b!729584 (not c!80118)) b!729587))

(assert (= (and b!729584 res!490103) b!729596))

(assert (= (and b!729596 res!490106) b!729599))

(assert (= (and b!729599 res!490102) b!729588))

(assert (= (and b!729588 res!490101) b!729594))

(assert (= (and b!729599 (not res!490100)) b!729595))

(declare-fun m!683293 () Bool)

(assert (=> b!729582 m!683293))

(assert (=> b!729582 m!683293))

(declare-fun m!683295 () Bool)

(assert (=> b!729582 m!683295))

(assert (=> b!729591 m!683293))

(assert (=> b!729591 m!683293))

(declare-fun m!683297 () Bool)

(assert (=> b!729591 m!683297))

(declare-fun m!683299 () Bool)

(assert (=> b!729590 m!683299))

(assert (=> b!729588 m!683293))

(assert (=> b!729588 m!683293))

(declare-fun m!683301 () Bool)

(assert (=> b!729588 m!683301))

(declare-fun m!683303 () Bool)

(assert (=> b!729592 m!683303))

(declare-fun m!683305 () Bool)

(assert (=> start!64720 m!683305))

(declare-fun m!683307 () Bool)

(assert (=> start!64720 m!683307))

(assert (=> b!729583 m!683293))

(assert (=> b!729583 m!683293))

(declare-fun m!683309 () Bool)

(assert (=> b!729583 m!683309))

(assert (=> b!729583 m!683309))

(assert (=> b!729583 m!683293))

(declare-fun m!683311 () Bool)

(assert (=> b!729583 m!683311))

(declare-fun m!683313 () Bool)

(assert (=> b!729595 m!683313))

(assert (=> b!729594 m!683293))

(assert (=> b!729594 m!683293))

(declare-fun m!683315 () Bool)

(assert (=> b!729594 m!683315))

(declare-fun m!683317 () Bool)

(assert (=> b!729585 m!683317))

(assert (=> b!729587 m!683293))

(assert (=> b!729587 m!683293))

(declare-fun m!683319 () Bool)

(assert (=> b!729587 m!683319))

(declare-fun m!683321 () Bool)

(assert (=> b!729597 m!683321))

(declare-fun m!683323 () Bool)

(assert (=> b!729593 m!683323))

(declare-fun m!683325 () Bool)

(assert (=> b!729589 m!683325))

(declare-fun m!683327 () Bool)

(assert (=> b!729596 m!683327))

(declare-fun m!683329 () Bool)

(assert (=> b!729596 m!683329))

(assert (=> b!729596 m!683327))

(declare-fun m!683331 () Bool)

(assert (=> b!729596 m!683331))

(declare-fun m!683333 () Bool)

(assert (=> b!729596 m!683333))

(declare-fun m!683335 () Bool)

(assert (=> b!729596 m!683335))

(declare-fun m!683337 () Bool)

(assert (=> b!729599 m!683337))

(declare-fun m!683339 () Bool)

(assert (=> b!729599 m!683339))

(push 1)

