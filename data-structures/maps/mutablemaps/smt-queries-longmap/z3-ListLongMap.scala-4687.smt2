; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65202 () Bool)

(assert start!65202)

(declare-datatypes ((array!41328 0))(
  ( (array!41329 (arr!19774 (Array (_ BitVec 32) (_ BitVec 64))) (size!20195 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41328)

(declare-fun b!737274 () Bool)

(declare-fun lt!327133 () (_ BitVec 32))

(declare-fun e!412416 () Bool)

(declare-datatypes ((SeekEntryResult!7381 0))(
  ( (MissingZero!7381 (index!31891 (_ BitVec 32))) (Found!7381 (index!31892 (_ BitVec 32))) (Intermediate!7381 (undefined!8193 Bool) (index!31893 (_ BitVec 32)) (x!62916 (_ BitVec 32))) (Undefined!7381) (MissingVacant!7381 (index!31894 (_ BitVec 32))) )
))
(declare-fun lt!327127 () SeekEntryResult!7381)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41328 (_ BitVec 32)) SeekEntryResult!7381)

(assert (=> b!737274 (= e!412416 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327133 (select (arr!19774 a!3186) j!159) a!3186 mask!3328) lt!327127)))))

(declare-fun b!737275 () Bool)

(declare-fun e!412418 () Bool)

(declare-fun e!412415 () Bool)

(assert (=> b!737275 (= e!412418 (not e!412415))))

(declare-fun res!495666 () Bool)

(assert (=> b!737275 (=> res!495666 e!412415)))

(declare-fun lt!327122 () SeekEntryResult!7381)

(get-info :version)

(assert (=> b!737275 (= res!495666 (or (not ((_ is Intermediate!7381) lt!327122)) (bvsge x!1131 (x!62916 lt!327122))))))

(declare-fun lt!327126 () SeekEntryResult!7381)

(assert (=> b!737275 (= lt!327126 (Found!7381 j!159))))

(declare-fun e!412417 () Bool)

(assert (=> b!737275 e!412417))

(declare-fun res!495678 () Bool)

(assert (=> b!737275 (=> (not res!495678) (not e!412417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41328 (_ BitVec 32)) Bool)

(assert (=> b!737275 (= res!495678 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25142 0))(
  ( (Unit!25143) )
))
(declare-fun lt!327121 () Unit!25142)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41328 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25142)

(assert (=> b!737275 (= lt!327121 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737276 () Bool)

(declare-fun res!495672 () Bool)

(declare-fun e!412411 () Bool)

(assert (=> b!737276 (=> res!495672 e!412411)))

(assert (=> b!737276 (= res!495672 e!412416)))

(declare-fun c!81187 () Bool)

(declare-fun lt!327130 () Bool)

(assert (=> b!737276 (= c!81187 lt!327130)))

(declare-fun b!737277 () Bool)

(declare-fun res!495670 () Bool)

(declare-fun e!412413 () Bool)

(assert (=> b!737277 (=> (not res!495670) (not e!412413))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737277 (= res!495670 (validKeyInArray!0 k0!2102))))

(declare-fun b!737278 () Bool)

(declare-fun e!412419 () Unit!25142)

(declare-fun Unit!25144 () Unit!25142)

(assert (=> b!737278 (= e!412419 Unit!25144)))

(assert (=> b!737278 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327133 (select (arr!19774 a!3186) j!159) a!3186 mask!3328) lt!327127)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!737280 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41328 (_ BitVec 32)) SeekEntryResult!7381)

(assert (=> b!737280 (= e!412416 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327133 resIntermediateIndex!5 (select (arr!19774 a!3186) j!159) a!3186 mask!3328) lt!327126)))))

(declare-fun b!737281 () Bool)

(declare-fun e!412412 () Bool)

(declare-fun e!412414 () Bool)

(assert (=> b!737281 (= e!412412 e!412414)))

(declare-fun res!495663 () Bool)

(assert (=> b!737281 (=> (not res!495663) (not e!412414))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737281 (= res!495663 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19774 a!3186) j!159) mask!3328) (select (arr!19774 a!3186) j!159) a!3186 mask!3328) lt!327127))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!737281 (= lt!327127 (Intermediate!7381 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!737282 () Bool)

(assert (=> b!737282 (= e!412413 e!412412)))

(declare-fun res!495664 () Bool)

(assert (=> b!737282 (=> (not res!495664) (not e!412412))))

(declare-fun lt!327134 () SeekEntryResult!7381)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!737282 (= res!495664 (or (= lt!327134 (MissingZero!7381 i!1173)) (= lt!327134 (MissingVacant!7381 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41328 (_ BitVec 32)) SeekEntryResult!7381)

(assert (=> b!737282 (= lt!327134 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!737283 () Bool)

(declare-fun res!495671 () Bool)

(assert (=> b!737283 (=> (not res!495671) (not e!412414))))

(declare-fun e!412409 () Bool)

(assert (=> b!737283 (= res!495671 e!412409)))

(declare-fun c!81188 () Bool)

(assert (=> b!737283 (= c!81188 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!737284 () Bool)

(declare-fun res!495662 () Bool)

(assert (=> b!737284 (=> (not res!495662) (not e!412412))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!737284 (= res!495662 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20195 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20195 a!3186))))))

(declare-fun b!737285 () Bool)

(assert (=> b!737285 (= e!412414 e!412418)))

(declare-fun res!495673 () Bool)

(assert (=> b!737285 (=> (not res!495673) (not e!412418))))

(declare-fun lt!327132 () SeekEntryResult!7381)

(assert (=> b!737285 (= res!495673 (= lt!327132 lt!327122))))

(declare-fun lt!327131 () array!41328)

(declare-fun lt!327125 () (_ BitVec 64))

(assert (=> b!737285 (= lt!327122 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327125 lt!327131 mask!3328))))

(assert (=> b!737285 (= lt!327132 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327125 mask!3328) lt!327125 lt!327131 mask!3328))))

(assert (=> b!737285 (= lt!327125 (select (store (arr!19774 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!737285 (= lt!327131 (array!41329 (store (arr!19774 a!3186) i!1173 k0!2102) (size!20195 a!3186)))))

(declare-fun b!737286 () Bool)

(declare-fun res!495676 () Bool)

(assert (=> b!737286 (=> (not res!495676) (not e!412413))))

(declare-fun arrayContainsKey!0 (array!41328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737286 (= res!495676 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!737287 () Bool)

(assert (=> b!737287 (= e!412409 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19774 a!3186) j!159) a!3186 mask!3328) lt!327127))))

(declare-fun b!737288 () Bool)

(declare-fun Unit!25145 () Unit!25142)

(assert (=> b!737288 (= e!412419 Unit!25145)))

(declare-fun lt!327124 () SeekEntryResult!7381)

(assert (=> b!737288 (= lt!327124 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19774 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!737288 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327133 resIntermediateIndex!5 (select (arr!19774 a!3186) j!159) a!3186 mask!3328) lt!327126)))

(declare-fun b!737289 () Bool)

(assert (=> b!737289 (= e!412411 true)))

(declare-fun lt!327123 () SeekEntryResult!7381)

(assert (=> b!737289 (= lt!327123 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327133 lt!327125 lt!327131 mask!3328))))

(declare-fun b!737290 () Bool)

(declare-fun e!412410 () Bool)

(assert (=> b!737290 (= e!412417 e!412410)))

(declare-fun res!495669 () Bool)

(assert (=> b!737290 (=> (not res!495669) (not e!412410))))

(declare-fun lt!327129 () SeekEntryResult!7381)

(assert (=> b!737290 (= res!495669 (= (seekEntryOrOpen!0 (select (arr!19774 a!3186) j!159) a!3186 mask!3328) lt!327129))))

(assert (=> b!737290 (= lt!327129 (Found!7381 j!159))))

(declare-fun b!737291 () Bool)

(declare-fun res!495675 () Bool)

(assert (=> b!737291 (=> (not res!495675) (not e!412414))))

(assert (=> b!737291 (= res!495675 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19774 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!737292 () Bool)

(assert (=> b!737292 (= e!412410 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19774 a!3186) j!159) a!3186 mask!3328) lt!327129))))

(declare-fun res!495674 () Bool)

(assert (=> start!65202 (=> (not res!495674) (not e!412413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65202 (= res!495674 (validMask!0 mask!3328))))

(assert (=> start!65202 e!412413))

(assert (=> start!65202 true))

(declare-fun array_inv!15548 (array!41328) Bool)

(assert (=> start!65202 (array_inv!15548 a!3186)))

(declare-fun b!737279 () Bool)

(assert (=> b!737279 (= e!412409 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19774 a!3186) j!159) a!3186 mask!3328) (Found!7381 j!159)))))

(declare-fun b!737293 () Bool)

(assert (=> b!737293 (= e!412415 e!412411)))

(declare-fun res!495665 () Bool)

(assert (=> b!737293 (=> res!495665 e!412411)))

(assert (=> b!737293 (= res!495665 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327133 #b00000000000000000000000000000000) (bvsge lt!327133 (size!20195 a!3186))))))

(declare-fun lt!327128 () Unit!25142)

(assert (=> b!737293 (= lt!327128 e!412419)))

(declare-fun c!81189 () Bool)

(assert (=> b!737293 (= c!81189 lt!327130)))

(assert (=> b!737293 (= lt!327130 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737293 (= lt!327133 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!737294 () Bool)

(declare-fun res!495667 () Bool)

(assert (=> b!737294 (=> (not res!495667) (not e!412413))))

(assert (=> b!737294 (= res!495667 (validKeyInArray!0 (select (arr!19774 a!3186) j!159)))))

(declare-fun b!737295 () Bool)

(declare-fun res!495677 () Bool)

(assert (=> b!737295 (=> (not res!495677) (not e!412412))))

(declare-datatypes ((List!13829 0))(
  ( (Nil!13826) (Cons!13825 (h!14897 (_ BitVec 64)) (t!20152 List!13829)) )
))
(declare-fun arrayNoDuplicates!0 (array!41328 (_ BitVec 32) List!13829) Bool)

(assert (=> b!737295 (= res!495677 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13826))))

(declare-fun b!737296 () Bool)

(declare-fun res!495661 () Bool)

(assert (=> b!737296 (=> (not res!495661) (not e!412412))))

(assert (=> b!737296 (= res!495661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737297 () Bool)

(declare-fun res!495668 () Bool)

(assert (=> b!737297 (=> (not res!495668) (not e!412413))))

(assert (=> b!737297 (= res!495668 (and (= (size!20195 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20195 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20195 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65202 res!495674) b!737297))

(assert (= (and b!737297 res!495668) b!737294))

(assert (= (and b!737294 res!495667) b!737277))

(assert (= (and b!737277 res!495670) b!737286))

(assert (= (and b!737286 res!495676) b!737282))

(assert (= (and b!737282 res!495664) b!737296))

(assert (= (and b!737296 res!495661) b!737295))

(assert (= (and b!737295 res!495677) b!737284))

(assert (= (and b!737284 res!495662) b!737281))

(assert (= (and b!737281 res!495663) b!737291))

(assert (= (and b!737291 res!495675) b!737283))

(assert (= (and b!737283 c!81188) b!737287))

(assert (= (and b!737283 (not c!81188)) b!737279))

(assert (= (and b!737283 res!495671) b!737285))

(assert (= (and b!737285 res!495673) b!737275))

(assert (= (and b!737275 res!495678) b!737290))

(assert (= (and b!737290 res!495669) b!737292))

(assert (= (and b!737275 (not res!495666)) b!737293))

(assert (= (and b!737293 c!81189) b!737278))

(assert (= (and b!737293 (not c!81189)) b!737288))

(assert (= (and b!737293 (not res!495665)) b!737276))

(assert (= (and b!737276 c!81187) b!737274))

(assert (= (and b!737276 (not c!81187)) b!737280))

(assert (= (and b!737276 (not res!495672)) b!737289))

(declare-fun m!689263 () Bool)

(assert (=> b!737274 m!689263))

(assert (=> b!737274 m!689263))

(declare-fun m!689265 () Bool)

(assert (=> b!737274 m!689265))

(declare-fun m!689267 () Bool)

(assert (=> b!737296 m!689267))

(assert (=> b!737281 m!689263))

(assert (=> b!737281 m!689263))

(declare-fun m!689269 () Bool)

(assert (=> b!737281 m!689269))

(assert (=> b!737281 m!689269))

(assert (=> b!737281 m!689263))

(declare-fun m!689271 () Bool)

(assert (=> b!737281 m!689271))

(declare-fun m!689273 () Bool)

(assert (=> b!737293 m!689273))

(assert (=> b!737294 m!689263))

(assert (=> b!737294 m!689263))

(declare-fun m!689275 () Bool)

(assert (=> b!737294 m!689275))

(assert (=> b!737287 m!689263))

(assert (=> b!737287 m!689263))

(declare-fun m!689277 () Bool)

(assert (=> b!737287 m!689277))

(declare-fun m!689279 () Bool)

(assert (=> b!737282 m!689279))

(assert (=> b!737278 m!689263))

(assert (=> b!737278 m!689263))

(assert (=> b!737278 m!689265))

(declare-fun m!689281 () Bool)

(assert (=> b!737286 m!689281))

(assert (=> b!737279 m!689263))

(assert (=> b!737279 m!689263))

(declare-fun m!689283 () Bool)

(assert (=> b!737279 m!689283))

(declare-fun m!689285 () Bool)

(assert (=> b!737275 m!689285))

(declare-fun m!689287 () Bool)

(assert (=> b!737275 m!689287))

(declare-fun m!689289 () Bool)

(assert (=> start!65202 m!689289))

(declare-fun m!689291 () Bool)

(assert (=> start!65202 m!689291))

(assert (=> b!737280 m!689263))

(assert (=> b!737280 m!689263))

(declare-fun m!689293 () Bool)

(assert (=> b!737280 m!689293))

(assert (=> b!737290 m!689263))

(assert (=> b!737290 m!689263))

(declare-fun m!689295 () Bool)

(assert (=> b!737290 m!689295))

(assert (=> b!737292 m!689263))

(assert (=> b!737292 m!689263))

(declare-fun m!689297 () Bool)

(assert (=> b!737292 m!689297))

(assert (=> b!737288 m!689263))

(assert (=> b!737288 m!689263))

(assert (=> b!737288 m!689283))

(assert (=> b!737288 m!689263))

(assert (=> b!737288 m!689293))

(declare-fun m!689299 () Bool)

(assert (=> b!737291 m!689299))

(declare-fun m!689301 () Bool)

(assert (=> b!737295 m!689301))

(declare-fun m!689303 () Bool)

(assert (=> b!737289 m!689303))

(declare-fun m!689305 () Bool)

(assert (=> b!737285 m!689305))

(declare-fun m!689307 () Bool)

(assert (=> b!737285 m!689307))

(declare-fun m!689309 () Bool)

(assert (=> b!737285 m!689309))

(declare-fun m!689311 () Bool)

(assert (=> b!737285 m!689311))

(assert (=> b!737285 m!689305))

(declare-fun m!689313 () Bool)

(assert (=> b!737285 m!689313))

(declare-fun m!689315 () Bool)

(assert (=> b!737277 m!689315))

(check-sat (not b!737280) (not b!737274) (not b!737293) (not b!737277) (not b!737296) (not b!737282) (not b!737279) (not b!737278) (not b!737285) (not b!737289) (not b!737286) (not b!737290) (not b!737295) (not b!737288) (not b!737294) (not start!65202) (not b!737287) (not b!737275) (not b!737292) (not b!737281))
(check-sat)
