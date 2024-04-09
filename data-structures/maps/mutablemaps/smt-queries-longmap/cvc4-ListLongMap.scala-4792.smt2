; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65834 () Bool)

(assert start!65834)

(declare-fun b!757435 () Bool)

(declare-fun e!422346 () Bool)

(declare-fun e!422342 () Bool)

(assert (=> b!757435 (= e!422346 e!422342)))

(declare-fun res!512388 () Bool)

(assert (=> b!757435 (=> (not res!512388) (not e!422342))))

(declare-datatypes ((array!41960 0))(
  ( (array!41961 (arr!20090 (Array (_ BitVec 32) (_ BitVec 64))) (size!20511 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41960)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7697 0))(
  ( (MissingZero!7697 (index!33155 (_ BitVec 32))) (Found!7697 (index!33156 (_ BitVec 32))) (Intermediate!7697 (undefined!8509 Bool) (index!33157 (_ BitVec 32)) (x!64072 (_ BitVec 32))) (Undefined!7697) (MissingVacant!7697 (index!33158 (_ BitVec 32))) )
))
(declare-fun lt!337340 () SeekEntryResult!7697)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41960 (_ BitVec 32)) SeekEntryResult!7697)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757435 (= res!512388 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20090 a!3186) j!159) mask!3328) (select (arr!20090 a!3186) j!159) a!3186 mask!3328) lt!337340))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757435 (= lt!337340 (Intermediate!7697 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!757436 () Bool)

(declare-fun e!422335 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41960 (_ BitVec 32)) SeekEntryResult!7697)

(assert (=> b!757436 (= e!422335 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20090 a!3186) j!159) a!3186 mask!3328) (Found!7697 j!159)))))

(declare-fun b!757437 () Bool)

(declare-fun e!422345 () Bool)

(declare-fun lt!337338 () SeekEntryResult!7697)

(declare-fun lt!337345 () SeekEntryResult!7697)

(assert (=> b!757437 (= e!422345 (= lt!337338 lt!337345))))

(declare-fun b!757438 () Bool)

(declare-fun e!422344 () Bool)

(declare-fun e!422343 () Bool)

(assert (=> b!757438 (= e!422344 e!422343)))

(declare-fun res!512400 () Bool)

(assert (=> b!757438 (=> res!512400 e!422343)))

(declare-fun lt!337343 () (_ BitVec 64))

(declare-fun lt!337335 () (_ BitVec 64))

(assert (=> b!757438 (= res!512400 (= lt!337343 lt!337335))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!757438 (= lt!337343 (select (store (arr!20090 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!757439 () Bool)

(assert (=> b!757439 (= e!422343 true)))

(assert (=> b!757439 e!422345))

(declare-fun res!512386 () Bool)

(assert (=> b!757439 (=> (not res!512386) (not e!422345))))

(assert (=> b!757439 (= res!512386 (= lt!337343 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26190 0))(
  ( (Unit!26191) )
))
(declare-fun lt!337346 () Unit!26190)

(declare-fun e!422337 () Unit!26190)

(assert (=> b!757439 (= lt!337346 e!422337)))

(declare-fun c!82908 () Bool)

(assert (=> b!757439 (= c!82908 (= lt!337343 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757440 () Bool)

(declare-fun e!422341 () Bool)

(assert (=> b!757440 (= e!422342 e!422341)))

(declare-fun res!512392 () Bool)

(assert (=> b!757440 (=> (not res!512392) (not e!422341))))

(declare-fun lt!337337 () SeekEntryResult!7697)

(declare-fun lt!337344 () SeekEntryResult!7697)

(assert (=> b!757440 (= res!512392 (= lt!337337 lt!337344))))

(declare-fun lt!337339 () array!41960)

(assert (=> b!757440 (= lt!337344 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337335 lt!337339 mask!3328))))

(assert (=> b!757440 (= lt!337337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337335 mask!3328) lt!337335 lt!337339 mask!3328))))

(assert (=> b!757440 (= lt!337335 (select (store (arr!20090 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!757440 (= lt!337339 (array!41961 (store (arr!20090 a!3186) i!1173 k!2102) (size!20511 a!3186)))))

(declare-fun b!757441 () Bool)

(declare-fun Unit!26192 () Unit!26190)

(assert (=> b!757441 (= e!422337 Unit!26192)))

(assert (=> b!757441 false))

(declare-fun res!512389 () Bool)

(declare-fun e!422336 () Bool)

(assert (=> start!65834 (=> (not res!512389) (not e!422336))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65834 (= res!512389 (validMask!0 mask!3328))))

(assert (=> start!65834 e!422336))

(assert (=> start!65834 true))

(declare-fun array_inv!15864 (array!41960) Bool)

(assert (=> start!65834 (array_inv!15864 a!3186)))

(declare-fun b!757442 () Bool)

(declare-fun res!512384 () Bool)

(assert (=> b!757442 (=> (not res!512384) (not e!422345))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41960 (_ BitVec 32)) SeekEntryResult!7697)

(assert (=> b!757442 (= res!512384 (= (seekEntryOrOpen!0 lt!337335 lt!337339 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337335 lt!337339 mask!3328)))))

(declare-fun b!757443 () Bool)

(declare-fun res!512397 () Bool)

(assert (=> b!757443 (=> (not res!512397) (not e!422346))))

(assert (=> b!757443 (= res!512397 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20511 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20511 a!3186))))))

(declare-fun b!757444 () Bool)

(declare-fun res!512391 () Bool)

(assert (=> b!757444 (=> (not res!512391) (not e!422342))))

(assert (=> b!757444 (= res!512391 e!422335)))

(declare-fun c!82907 () Bool)

(assert (=> b!757444 (= c!82907 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757445 () Bool)

(declare-fun e!422338 () Bool)

(assert (=> b!757445 (= e!422341 (not e!422338))))

(declare-fun res!512382 () Bool)

(assert (=> b!757445 (=> res!512382 e!422338)))

(assert (=> b!757445 (= res!512382 (or (not (is-Intermediate!7697 lt!337344)) (bvslt x!1131 (x!64072 lt!337344)) (not (= x!1131 (x!64072 lt!337344))) (not (= index!1321 (index!33157 lt!337344)))))))

(declare-fun e!422340 () Bool)

(assert (=> b!757445 e!422340))

(declare-fun res!512390 () Bool)

(assert (=> b!757445 (=> (not res!512390) (not e!422340))))

(declare-fun lt!337341 () SeekEntryResult!7697)

(assert (=> b!757445 (= res!512390 (= lt!337338 lt!337341))))

(assert (=> b!757445 (= lt!337341 (Found!7697 j!159))))

(assert (=> b!757445 (= lt!337338 (seekEntryOrOpen!0 (select (arr!20090 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41960 (_ BitVec 32)) Bool)

(assert (=> b!757445 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337336 () Unit!26190)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41960 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26190)

(assert (=> b!757445 (= lt!337336 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757446 () Bool)

(declare-fun res!512395 () Bool)

(assert (=> b!757446 (=> (not res!512395) (not e!422336))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757446 (= res!512395 (validKeyInArray!0 (select (arr!20090 a!3186) j!159)))))

(declare-fun b!757447 () Bool)

(assert (=> b!757447 (= e!422338 e!422344)))

(declare-fun res!512394 () Bool)

(assert (=> b!757447 (=> res!512394 e!422344)))

(assert (=> b!757447 (= res!512394 (not (= lt!337345 lt!337341)))))

(assert (=> b!757447 (= lt!337345 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20090 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757448 () Bool)

(declare-fun Unit!26193 () Unit!26190)

(assert (=> b!757448 (= e!422337 Unit!26193)))

(declare-fun b!757449 () Bool)

(assert (=> b!757449 (= e!422340 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20090 a!3186) j!159) a!3186 mask!3328) lt!337341))))

(declare-fun b!757450 () Bool)

(assert (=> b!757450 (= e!422335 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20090 a!3186) j!159) a!3186 mask!3328) lt!337340))))

(declare-fun b!757451 () Bool)

(declare-fun res!512393 () Bool)

(assert (=> b!757451 (=> (not res!512393) (not e!422346))))

(declare-datatypes ((List!14145 0))(
  ( (Nil!14142) (Cons!14141 (h!15213 (_ BitVec 64)) (t!20468 List!14145)) )
))
(declare-fun arrayNoDuplicates!0 (array!41960 (_ BitVec 32) List!14145) Bool)

(assert (=> b!757451 (= res!512393 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14142))))

(declare-fun b!757452 () Bool)

(declare-fun res!512398 () Bool)

(assert (=> b!757452 (=> (not res!512398) (not e!422342))))

(assert (=> b!757452 (= res!512398 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20090 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757453 () Bool)

(declare-fun res!512399 () Bool)

(assert (=> b!757453 (=> (not res!512399) (not e!422346))))

(assert (=> b!757453 (= res!512399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757454 () Bool)

(declare-fun res!512383 () Bool)

(assert (=> b!757454 (=> (not res!512383) (not e!422336))))

(declare-fun arrayContainsKey!0 (array!41960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757454 (= res!512383 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757455 () Bool)

(declare-fun res!512387 () Bool)

(assert (=> b!757455 (=> (not res!512387) (not e!422336))))

(assert (=> b!757455 (= res!512387 (validKeyInArray!0 k!2102))))

(declare-fun b!757456 () Bool)

(assert (=> b!757456 (= e!422336 e!422346)))

(declare-fun res!512396 () Bool)

(assert (=> b!757456 (=> (not res!512396) (not e!422346))))

(declare-fun lt!337342 () SeekEntryResult!7697)

(assert (=> b!757456 (= res!512396 (or (= lt!337342 (MissingZero!7697 i!1173)) (= lt!337342 (MissingVacant!7697 i!1173))))))

(assert (=> b!757456 (= lt!337342 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!757457 () Bool)

(declare-fun res!512385 () Bool)

(assert (=> b!757457 (=> (not res!512385) (not e!422336))))

(assert (=> b!757457 (= res!512385 (and (= (size!20511 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20511 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20511 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65834 res!512389) b!757457))

(assert (= (and b!757457 res!512385) b!757446))

(assert (= (and b!757446 res!512395) b!757455))

(assert (= (and b!757455 res!512387) b!757454))

(assert (= (and b!757454 res!512383) b!757456))

(assert (= (and b!757456 res!512396) b!757453))

(assert (= (and b!757453 res!512399) b!757451))

(assert (= (and b!757451 res!512393) b!757443))

(assert (= (and b!757443 res!512397) b!757435))

(assert (= (and b!757435 res!512388) b!757452))

(assert (= (and b!757452 res!512398) b!757444))

(assert (= (and b!757444 c!82907) b!757450))

(assert (= (and b!757444 (not c!82907)) b!757436))

(assert (= (and b!757444 res!512391) b!757440))

(assert (= (and b!757440 res!512392) b!757445))

(assert (= (and b!757445 res!512390) b!757449))

(assert (= (and b!757445 (not res!512382)) b!757447))

(assert (= (and b!757447 (not res!512394)) b!757438))

(assert (= (and b!757438 (not res!512400)) b!757439))

(assert (= (and b!757439 c!82908) b!757441))

(assert (= (and b!757439 (not c!82908)) b!757448))

(assert (= (and b!757439 res!512386) b!757442))

(assert (= (and b!757442 res!512384) b!757437))

(declare-fun m!705213 () Bool)

(assert (=> start!65834 m!705213))

(declare-fun m!705215 () Bool)

(assert (=> start!65834 m!705215))

(declare-fun m!705217 () Bool)

(assert (=> b!757451 m!705217))

(declare-fun m!705219 () Bool)

(assert (=> b!757447 m!705219))

(assert (=> b!757447 m!705219))

(declare-fun m!705221 () Bool)

(assert (=> b!757447 m!705221))

(declare-fun m!705223 () Bool)

(assert (=> b!757454 m!705223))

(assert (=> b!757445 m!705219))

(assert (=> b!757445 m!705219))

(declare-fun m!705225 () Bool)

(assert (=> b!757445 m!705225))

(declare-fun m!705227 () Bool)

(assert (=> b!757445 m!705227))

(declare-fun m!705229 () Bool)

(assert (=> b!757445 m!705229))

(declare-fun m!705231 () Bool)

(assert (=> b!757455 m!705231))

(declare-fun m!705233 () Bool)

(assert (=> b!757456 m!705233))

(declare-fun m!705235 () Bool)

(assert (=> b!757438 m!705235))

(declare-fun m!705237 () Bool)

(assert (=> b!757438 m!705237))

(assert (=> b!757449 m!705219))

(assert (=> b!757449 m!705219))

(declare-fun m!705239 () Bool)

(assert (=> b!757449 m!705239))

(declare-fun m!705241 () Bool)

(assert (=> b!757440 m!705241))

(declare-fun m!705243 () Bool)

(assert (=> b!757440 m!705243))

(declare-fun m!705245 () Bool)

(assert (=> b!757440 m!705245))

(assert (=> b!757440 m!705235))

(declare-fun m!705247 () Bool)

(assert (=> b!757440 m!705247))

(assert (=> b!757440 m!705243))

(declare-fun m!705249 () Bool)

(assert (=> b!757453 m!705249))

(assert (=> b!757435 m!705219))

(assert (=> b!757435 m!705219))

(declare-fun m!705251 () Bool)

(assert (=> b!757435 m!705251))

(assert (=> b!757435 m!705251))

(assert (=> b!757435 m!705219))

(declare-fun m!705253 () Bool)

(assert (=> b!757435 m!705253))

(assert (=> b!757446 m!705219))

(assert (=> b!757446 m!705219))

(declare-fun m!705255 () Bool)

(assert (=> b!757446 m!705255))

(assert (=> b!757450 m!705219))

(assert (=> b!757450 m!705219))

(declare-fun m!705257 () Bool)

(assert (=> b!757450 m!705257))

(assert (=> b!757436 m!705219))

(assert (=> b!757436 m!705219))

(assert (=> b!757436 m!705221))

(declare-fun m!705259 () Bool)

(assert (=> b!757452 m!705259))

(declare-fun m!705261 () Bool)

(assert (=> b!757442 m!705261))

(declare-fun m!705263 () Bool)

(assert (=> b!757442 m!705263))

(push 1)

