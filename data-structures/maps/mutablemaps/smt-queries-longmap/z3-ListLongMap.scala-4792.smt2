; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65832 () Bool)

(assert start!65832)

(declare-fun b!757366 () Bool)

(declare-fun e!422307 () Bool)

(declare-fun e!422301 () Bool)

(assert (=> b!757366 (= e!422307 e!422301)))

(declare-fun res!512333 () Bool)

(assert (=> b!757366 (=> (not res!512333) (not e!422301))))

(declare-datatypes ((SeekEntryResult!7696 0))(
  ( (MissingZero!7696 (index!33151 (_ BitVec 32))) (Found!7696 (index!33152 (_ BitVec 32))) (Intermediate!7696 (undefined!8508 Bool) (index!33153 (_ BitVec 32)) (x!64071 (_ BitVec 32))) (Undefined!7696) (MissingVacant!7696 (index!33154 (_ BitVec 32))) )
))
(declare-fun lt!337310 () SeekEntryResult!7696)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!757366 (= res!512333 (or (= lt!337310 (MissingZero!7696 i!1173)) (= lt!337310 (MissingVacant!7696 i!1173))))))

(declare-datatypes ((array!41958 0))(
  ( (array!41959 (arr!20089 (Array (_ BitVec 32) (_ BitVec 64))) (size!20510 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41958)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41958 (_ BitVec 32)) SeekEntryResult!7696)

(assert (=> b!757366 (= lt!337310 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!757367 () Bool)

(declare-fun res!512327 () Bool)

(assert (=> b!757367 (=> (not res!512327) (not e!422301))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757367 (= res!512327 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20510 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20510 a!3186))))))

(declare-fun b!757368 () Bool)

(declare-fun res!512338 () Bool)

(assert (=> b!757368 (=> (not res!512338) (not e!422301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41958 (_ BitVec 32)) Bool)

(assert (=> b!757368 (= res!512338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757370 () Bool)

(declare-fun e!422310 () Bool)

(assert (=> b!757370 (= e!422301 e!422310)))

(declare-fun res!512339 () Bool)

(assert (=> b!757370 (=> (not res!512339) (not e!422310))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!337301 () SeekEntryResult!7696)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41958 (_ BitVec 32)) SeekEntryResult!7696)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757370 (= res!512339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20089 a!3186) j!159) mask!3328) (select (arr!20089 a!3186) j!159) a!3186 mask!3328) lt!337301))))

(assert (=> b!757370 (= lt!337301 (Intermediate!7696 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757371 () Bool)

(declare-fun e!422304 () Bool)

(assert (=> b!757371 (= e!422310 e!422304)))

(declare-fun res!512328 () Bool)

(assert (=> b!757371 (=> (not res!512328) (not e!422304))))

(declare-fun lt!337308 () SeekEntryResult!7696)

(declare-fun lt!337305 () SeekEntryResult!7696)

(assert (=> b!757371 (= res!512328 (= lt!337308 lt!337305))))

(declare-fun lt!337300 () array!41958)

(declare-fun lt!337299 () (_ BitVec 64))

(assert (=> b!757371 (= lt!337305 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337299 lt!337300 mask!3328))))

(assert (=> b!757371 (= lt!337308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337299 mask!3328) lt!337299 lt!337300 mask!3328))))

(assert (=> b!757371 (= lt!337299 (select (store (arr!20089 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!757371 (= lt!337300 (array!41959 (store (arr!20089 a!3186) i!1173 k0!2102) (size!20510 a!3186)))))

(declare-fun b!757372 () Bool)

(declare-fun e!422309 () Bool)

(declare-fun lt!337302 () SeekEntryResult!7696)

(declare-fun lt!337309 () SeekEntryResult!7696)

(assert (=> b!757372 (= e!422309 (= lt!337302 lt!337309))))

(declare-fun b!757373 () Bool)

(declare-fun res!512334 () Bool)

(assert (=> b!757373 (=> (not res!512334) (not e!422310))))

(declare-fun e!422300 () Bool)

(assert (=> b!757373 (= res!512334 e!422300)))

(declare-fun c!82901 () Bool)

(assert (=> b!757373 (= c!82901 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757374 () Bool)

(declare-datatypes ((Unit!26186 0))(
  ( (Unit!26187) )
))
(declare-fun e!422306 () Unit!26186)

(declare-fun Unit!26188 () Unit!26186)

(assert (=> b!757374 (= e!422306 Unit!26188)))

(declare-fun b!757375 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41958 (_ BitVec 32)) SeekEntryResult!7696)

(assert (=> b!757375 (= e!422300 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20089 a!3186) j!159) a!3186 mask!3328) (Found!7696 j!159)))))

(declare-fun b!757376 () Bool)

(declare-fun res!512331 () Bool)

(assert (=> b!757376 (=> (not res!512331) (not e!422307))))

(assert (=> b!757376 (= res!512331 (and (= (size!20510 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20510 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20510 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757377 () Bool)

(declare-fun res!512341 () Bool)

(assert (=> b!757377 (=> (not res!512341) (not e!422310))))

(assert (=> b!757377 (= res!512341 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20089 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757378 () Bool)

(declare-fun res!512330 () Bool)

(assert (=> b!757378 (=> (not res!512330) (not e!422307))))

(declare-fun arrayContainsKey!0 (array!41958 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757378 (= res!512330 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757379 () Bool)

(declare-fun res!512332 () Bool)

(assert (=> b!757379 (=> (not res!512332) (not e!422309))))

(assert (=> b!757379 (= res!512332 (= (seekEntryOrOpen!0 lt!337299 lt!337300 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337299 lt!337300 mask!3328)))))

(declare-fun b!757380 () Bool)

(declare-fun res!512343 () Bool)

(assert (=> b!757380 (=> (not res!512343) (not e!422301))))

(declare-datatypes ((List!14144 0))(
  ( (Nil!14141) (Cons!14140 (h!15212 (_ BitVec 64)) (t!20467 List!14144)) )
))
(declare-fun arrayNoDuplicates!0 (array!41958 (_ BitVec 32) List!14144) Bool)

(assert (=> b!757380 (= res!512343 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14141))))

(declare-fun b!757381 () Bool)

(declare-fun e!422305 () Bool)

(declare-fun e!422308 () Bool)

(assert (=> b!757381 (= e!422305 e!422308)))

(declare-fun res!512336 () Bool)

(assert (=> b!757381 (=> res!512336 e!422308)))

(declare-fun lt!337306 () SeekEntryResult!7696)

(assert (=> b!757381 (= res!512336 (not (= lt!337309 lt!337306)))))

(assert (=> b!757381 (= lt!337309 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20089 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757382 () Bool)

(declare-fun e!422303 () Bool)

(assert (=> b!757382 (= e!422303 true)))

(assert (=> b!757382 e!422309))

(declare-fun res!512325 () Bool)

(assert (=> b!757382 (=> (not res!512325) (not e!422309))))

(declare-fun lt!337307 () (_ BitVec 64))

(assert (=> b!757382 (= res!512325 (= lt!337307 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337304 () Unit!26186)

(assert (=> b!757382 (= lt!337304 e!422306)))

(declare-fun c!82902 () Bool)

(assert (=> b!757382 (= c!82902 (= lt!337307 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!422302 () Bool)

(declare-fun b!757383 () Bool)

(assert (=> b!757383 (= e!422302 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20089 a!3186) j!159) a!3186 mask!3328) lt!337306))))

(declare-fun b!757369 () Bool)

(declare-fun res!512329 () Bool)

(assert (=> b!757369 (=> (not res!512329) (not e!422307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757369 (= res!512329 (validKeyInArray!0 (select (arr!20089 a!3186) j!159)))))

(declare-fun res!512340 () Bool)

(assert (=> start!65832 (=> (not res!512340) (not e!422307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65832 (= res!512340 (validMask!0 mask!3328))))

(assert (=> start!65832 e!422307))

(assert (=> start!65832 true))

(declare-fun array_inv!15863 (array!41958) Bool)

(assert (=> start!65832 (array_inv!15863 a!3186)))

(declare-fun b!757384 () Bool)

(assert (=> b!757384 (= e!422300 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20089 a!3186) j!159) a!3186 mask!3328) lt!337301))))

(declare-fun b!757385 () Bool)

(declare-fun Unit!26189 () Unit!26186)

(assert (=> b!757385 (= e!422306 Unit!26189)))

(assert (=> b!757385 false))

(declare-fun b!757386 () Bool)

(assert (=> b!757386 (= e!422308 e!422303)))

(declare-fun res!512342 () Bool)

(assert (=> b!757386 (=> res!512342 e!422303)))

(assert (=> b!757386 (= res!512342 (= lt!337307 lt!337299))))

(assert (=> b!757386 (= lt!337307 (select (store (arr!20089 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!757387 () Bool)

(assert (=> b!757387 (= e!422304 (not e!422305))))

(declare-fun res!512326 () Bool)

(assert (=> b!757387 (=> res!512326 e!422305)))

(get-info :version)

(assert (=> b!757387 (= res!512326 (or (not ((_ is Intermediate!7696) lt!337305)) (bvslt x!1131 (x!64071 lt!337305)) (not (= x!1131 (x!64071 lt!337305))) (not (= index!1321 (index!33153 lt!337305)))))))

(assert (=> b!757387 e!422302))

(declare-fun res!512337 () Bool)

(assert (=> b!757387 (=> (not res!512337) (not e!422302))))

(assert (=> b!757387 (= res!512337 (= lt!337302 lt!337306))))

(assert (=> b!757387 (= lt!337306 (Found!7696 j!159))))

(assert (=> b!757387 (= lt!337302 (seekEntryOrOpen!0 (select (arr!20089 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!757387 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337303 () Unit!26186)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41958 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26186)

(assert (=> b!757387 (= lt!337303 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757388 () Bool)

(declare-fun res!512335 () Bool)

(assert (=> b!757388 (=> (not res!512335) (not e!422307))))

(assert (=> b!757388 (= res!512335 (validKeyInArray!0 k0!2102))))

(assert (= (and start!65832 res!512340) b!757376))

(assert (= (and b!757376 res!512331) b!757369))

(assert (= (and b!757369 res!512329) b!757388))

(assert (= (and b!757388 res!512335) b!757378))

(assert (= (and b!757378 res!512330) b!757366))

(assert (= (and b!757366 res!512333) b!757368))

(assert (= (and b!757368 res!512338) b!757380))

(assert (= (and b!757380 res!512343) b!757367))

(assert (= (and b!757367 res!512327) b!757370))

(assert (= (and b!757370 res!512339) b!757377))

(assert (= (and b!757377 res!512341) b!757373))

(assert (= (and b!757373 c!82901) b!757384))

(assert (= (and b!757373 (not c!82901)) b!757375))

(assert (= (and b!757373 res!512334) b!757371))

(assert (= (and b!757371 res!512328) b!757387))

(assert (= (and b!757387 res!512337) b!757383))

(assert (= (and b!757387 (not res!512326)) b!757381))

(assert (= (and b!757381 (not res!512336)) b!757386))

(assert (= (and b!757386 (not res!512342)) b!757382))

(assert (= (and b!757382 c!82902) b!757385))

(assert (= (and b!757382 (not c!82902)) b!757374))

(assert (= (and b!757382 res!512325) b!757379))

(assert (= (and b!757379 res!512332) b!757372))

(declare-fun m!705161 () Bool)

(assert (=> b!757387 m!705161))

(assert (=> b!757387 m!705161))

(declare-fun m!705163 () Bool)

(assert (=> b!757387 m!705163))

(declare-fun m!705165 () Bool)

(assert (=> b!757387 m!705165))

(declare-fun m!705167 () Bool)

(assert (=> b!757387 m!705167))

(declare-fun m!705169 () Bool)

(assert (=> b!757379 m!705169))

(declare-fun m!705171 () Bool)

(assert (=> b!757379 m!705171))

(assert (=> b!757370 m!705161))

(assert (=> b!757370 m!705161))

(declare-fun m!705173 () Bool)

(assert (=> b!757370 m!705173))

(assert (=> b!757370 m!705173))

(assert (=> b!757370 m!705161))

(declare-fun m!705175 () Bool)

(assert (=> b!757370 m!705175))

(declare-fun m!705177 () Bool)

(assert (=> b!757380 m!705177))

(assert (=> b!757381 m!705161))

(assert (=> b!757381 m!705161))

(declare-fun m!705179 () Bool)

(assert (=> b!757381 m!705179))

(assert (=> b!757369 m!705161))

(assert (=> b!757369 m!705161))

(declare-fun m!705181 () Bool)

(assert (=> b!757369 m!705181))

(declare-fun m!705183 () Bool)

(assert (=> start!65832 m!705183))

(declare-fun m!705185 () Bool)

(assert (=> start!65832 m!705185))

(declare-fun m!705187 () Bool)

(assert (=> b!757371 m!705187))

(declare-fun m!705189 () Bool)

(assert (=> b!757371 m!705189))

(declare-fun m!705191 () Bool)

(assert (=> b!757371 m!705191))

(assert (=> b!757371 m!705189))

(declare-fun m!705193 () Bool)

(assert (=> b!757371 m!705193))

(declare-fun m!705195 () Bool)

(assert (=> b!757371 m!705195))

(declare-fun m!705197 () Bool)

(assert (=> b!757378 m!705197))

(assert (=> b!757383 m!705161))

(assert (=> b!757383 m!705161))

(declare-fun m!705199 () Bool)

(assert (=> b!757383 m!705199))

(assert (=> b!757386 m!705191))

(declare-fun m!705201 () Bool)

(assert (=> b!757386 m!705201))

(assert (=> b!757384 m!705161))

(assert (=> b!757384 m!705161))

(declare-fun m!705203 () Bool)

(assert (=> b!757384 m!705203))

(declare-fun m!705205 () Bool)

(assert (=> b!757388 m!705205))

(declare-fun m!705207 () Bool)

(assert (=> b!757377 m!705207))

(assert (=> b!757375 m!705161))

(assert (=> b!757375 m!705161))

(assert (=> b!757375 m!705179))

(declare-fun m!705209 () Bool)

(assert (=> b!757368 m!705209))

(declare-fun m!705211 () Bool)

(assert (=> b!757366 m!705211))

(check-sat (not b!757366) (not b!757378) (not b!757381) (not b!757375) (not b!757371) (not start!65832) (not b!757387) (not b!757383) (not b!757384) (not b!757380) (not b!757368) (not b!757370) (not b!757388) (not b!757379) (not b!757369))
(check-sat)
