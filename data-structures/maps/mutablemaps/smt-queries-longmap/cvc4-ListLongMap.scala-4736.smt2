; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65498 () Bool)

(assert start!65498)

(declare-fun b!746289 () Bool)

(declare-fun res!503210 () Bool)

(declare-fun e!416787 () Bool)

(assert (=> b!746289 (=> (not res!503210) (not e!416787))))

(declare-datatypes ((array!41624 0))(
  ( (array!41625 (arr!19922 (Array (_ BitVec 32) (_ BitVec 64))) (size!20343 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41624)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!746289 (= res!503210 (and (= (size!20343 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20343 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20343 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746290 () Bool)

(declare-fun res!503207 () Bool)

(assert (=> b!746290 (=> (not res!503207) (not e!416787))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746290 (= res!503207 (validKeyInArray!0 k!2102))))

(declare-fun b!746291 () Bool)

(declare-fun res!503205 () Bool)

(declare-fun e!416792 () Bool)

(assert (=> b!746291 (=> (not res!503205) (not e!416792))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746291 (= res!503205 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20343 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20343 a!3186))))))

(declare-fun b!746292 () Bool)

(assert (=> b!746292 (= e!416787 e!416792)))

(declare-fun res!503202 () Bool)

(assert (=> b!746292 (=> (not res!503202) (not e!416792))))

(declare-datatypes ((SeekEntryResult!7529 0))(
  ( (MissingZero!7529 (index!32483 (_ BitVec 32))) (Found!7529 (index!32484 (_ BitVec 32))) (Intermediate!7529 (undefined!8341 Bool) (index!32485 (_ BitVec 32)) (x!63456 (_ BitVec 32))) (Undefined!7529) (MissingVacant!7529 (index!32486 (_ BitVec 32))) )
))
(declare-fun lt!331669 () SeekEntryResult!7529)

(assert (=> b!746292 (= res!503202 (or (= lt!331669 (MissingZero!7529 i!1173)) (= lt!331669 (MissingVacant!7529 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41624 (_ BitVec 32)) SeekEntryResult!7529)

(assert (=> b!746292 (= lt!331669 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!746293 () Bool)

(declare-fun e!416785 () Bool)

(assert (=> b!746293 (= e!416792 e!416785)))

(declare-fun res!503197 () Bool)

(assert (=> b!746293 (=> (not res!503197) (not e!416785))))

(declare-fun lt!331667 () SeekEntryResult!7529)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41624 (_ BitVec 32)) SeekEntryResult!7529)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746293 (= res!503197 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19922 a!3186) j!159) mask!3328) (select (arr!19922 a!3186) j!159) a!3186 mask!3328) lt!331667))))

(assert (=> b!746293 (= lt!331667 (Intermediate!7529 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746294 () Bool)

(declare-fun e!416791 () Bool)

(declare-fun e!416789 () Bool)

(assert (=> b!746294 (= e!416791 (not e!416789))))

(declare-fun res!503209 () Bool)

(assert (=> b!746294 (=> res!503209 e!416789)))

(declare-fun lt!331671 () SeekEntryResult!7529)

(assert (=> b!746294 (= res!503209 (or (not (is-Intermediate!7529 lt!331671)) (bvslt x!1131 (x!63456 lt!331671)) (not (= x!1131 (x!63456 lt!331671))) (not (= index!1321 (index!32485 lt!331671)))))))

(declare-fun e!416793 () Bool)

(assert (=> b!746294 e!416793))

(declare-fun res!503196 () Bool)

(assert (=> b!746294 (=> (not res!503196) (not e!416793))))

(declare-fun lt!331668 () SeekEntryResult!7529)

(declare-fun lt!331675 () SeekEntryResult!7529)

(assert (=> b!746294 (= res!503196 (= lt!331668 lt!331675))))

(assert (=> b!746294 (= lt!331675 (Found!7529 j!159))))

(assert (=> b!746294 (= lt!331668 (seekEntryOrOpen!0 (select (arr!19922 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41624 (_ BitVec 32)) Bool)

(assert (=> b!746294 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25538 0))(
  ( (Unit!25539) )
))
(declare-fun lt!331676 () Unit!25538)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25538)

(assert (=> b!746294 (= lt!331676 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746295 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41624 (_ BitVec 32)) SeekEntryResult!7529)

(assert (=> b!746295 (= e!416793 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19922 a!3186) j!159) a!3186 mask!3328) lt!331675))))

(declare-fun e!416786 () Bool)

(declare-fun b!746296 () Bool)

(assert (=> b!746296 (= e!416786 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19922 a!3186) j!159) a!3186 mask!3328) lt!331667))))

(declare-fun b!746297 () Bool)

(declare-fun e!416788 () Bool)

(assert (=> b!746297 (= e!416789 e!416788)))

(declare-fun res!503198 () Bool)

(assert (=> b!746297 (=> res!503198 e!416788)))

(declare-fun lt!331670 () (_ BitVec 64))

(declare-fun lt!331674 () SeekEntryResult!7529)

(assert (=> b!746297 (= res!503198 (or (not (= lt!331674 lt!331675)) (= (select (store (arr!19922 a!3186) i!1173 k!2102) index!1321) lt!331670) (not (= (select (store (arr!19922 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!746297 (= lt!331674 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19922 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746298 () Bool)

(assert (=> b!746298 (= e!416788 true)))

(assert (=> b!746298 (= lt!331668 lt!331674)))

(declare-fun b!746299 () Bool)

(declare-fun res!503206 () Bool)

(assert (=> b!746299 (=> (not res!503206) (not e!416785))))

(assert (=> b!746299 (= res!503206 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19922 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746300 () Bool)

(assert (=> b!746300 (= e!416785 e!416791)))

(declare-fun res!503200 () Bool)

(assert (=> b!746300 (=> (not res!503200) (not e!416791))))

(declare-fun lt!331673 () SeekEntryResult!7529)

(assert (=> b!746300 (= res!503200 (= lt!331673 lt!331671))))

(declare-fun lt!331672 () array!41624)

(assert (=> b!746300 (= lt!331671 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331670 lt!331672 mask!3328))))

(assert (=> b!746300 (= lt!331673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331670 mask!3328) lt!331670 lt!331672 mask!3328))))

(assert (=> b!746300 (= lt!331670 (select (store (arr!19922 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746300 (= lt!331672 (array!41625 (store (arr!19922 a!3186) i!1173 k!2102) (size!20343 a!3186)))))

(declare-fun b!746301 () Bool)

(declare-fun res!503204 () Bool)

(assert (=> b!746301 (=> (not res!503204) (not e!416787))))

(declare-fun arrayContainsKey!0 (array!41624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746301 (= res!503204 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746302 () Bool)

(declare-fun res!503203 () Bool)

(assert (=> b!746302 (=> (not res!503203) (not e!416787))))

(assert (=> b!746302 (= res!503203 (validKeyInArray!0 (select (arr!19922 a!3186) j!159)))))

(declare-fun b!746303 () Bool)

(declare-fun res!503201 () Bool)

(assert (=> b!746303 (=> (not res!503201) (not e!416785))))

(assert (=> b!746303 (= res!503201 e!416786)))

(declare-fun c!81927 () Bool)

(assert (=> b!746303 (= c!81927 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!503211 () Bool)

(assert (=> start!65498 (=> (not res!503211) (not e!416787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65498 (= res!503211 (validMask!0 mask!3328))))

(assert (=> start!65498 e!416787))

(assert (=> start!65498 true))

(declare-fun array_inv!15696 (array!41624) Bool)

(assert (=> start!65498 (array_inv!15696 a!3186)))

(declare-fun b!746304 () Bool)

(declare-fun res!503208 () Bool)

(assert (=> b!746304 (=> (not res!503208) (not e!416792))))

(declare-datatypes ((List!13977 0))(
  ( (Nil!13974) (Cons!13973 (h!15045 (_ BitVec 64)) (t!20300 List!13977)) )
))
(declare-fun arrayNoDuplicates!0 (array!41624 (_ BitVec 32) List!13977) Bool)

(assert (=> b!746304 (= res!503208 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13974))))

(declare-fun b!746305 () Bool)

(assert (=> b!746305 (= e!416786 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19922 a!3186) j!159) a!3186 mask!3328) (Found!7529 j!159)))))

(declare-fun b!746306 () Bool)

(declare-fun res!503199 () Bool)

(assert (=> b!746306 (=> (not res!503199) (not e!416792))))

(assert (=> b!746306 (= res!503199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65498 res!503211) b!746289))

(assert (= (and b!746289 res!503210) b!746302))

(assert (= (and b!746302 res!503203) b!746290))

(assert (= (and b!746290 res!503207) b!746301))

(assert (= (and b!746301 res!503204) b!746292))

(assert (= (and b!746292 res!503202) b!746306))

(assert (= (and b!746306 res!503199) b!746304))

(assert (= (and b!746304 res!503208) b!746291))

(assert (= (and b!746291 res!503205) b!746293))

(assert (= (and b!746293 res!503197) b!746299))

(assert (= (and b!746299 res!503206) b!746303))

(assert (= (and b!746303 c!81927) b!746296))

(assert (= (and b!746303 (not c!81927)) b!746305))

(assert (= (and b!746303 res!503201) b!746300))

(assert (= (and b!746300 res!503200) b!746294))

(assert (= (and b!746294 res!503196) b!746295))

(assert (= (and b!746294 (not res!503209)) b!746297))

(assert (= (and b!746297 (not res!503198)) b!746298))

(declare-fun m!696649 () Bool)

(assert (=> b!746290 m!696649))

(declare-fun m!696651 () Bool)

(assert (=> b!746302 m!696651))

(assert (=> b!746302 m!696651))

(declare-fun m!696653 () Bool)

(assert (=> b!746302 m!696653))

(declare-fun m!696655 () Bool)

(assert (=> b!746304 m!696655))

(declare-fun m!696657 () Bool)

(assert (=> b!746300 m!696657))

(assert (=> b!746300 m!696657))

(declare-fun m!696659 () Bool)

(assert (=> b!746300 m!696659))

(declare-fun m!696661 () Bool)

(assert (=> b!746300 m!696661))

(declare-fun m!696663 () Bool)

(assert (=> b!746300 m!696663))

(declare-fun m!696665 () Bool)

(assert (=> b!746300 m!696665))

(declare-fun m!696667 () Bool)

(assert (=> b!746301 m!696667))

(declare-fun m!696669 () Bool)

(assert (=> b!746306 m!696669))

(assert (=> b!746293 m!696651))

(assert (=> b!746293 m!696651))

(declare-fun m!696671 () Bool)

(assert (=> b!746293 m!696671))

(assert (=> b!746293 m!696671))

(assert (=> b!746293 m!696651))

(declare-fun m!696673 () Bool)

(assert (=> b!746293 m!696673))

(declare-fun m!696675 () Bool)

(assert (=> start!65498 m!696675))

(declare-fun m!696677 () Bool)

(assert (=> start!65498 m!696677))

(assert (=> b!746295 m!696651))

(assert (=> b!746295 m!696651))

(declare-fun m!696679 () Bool)

(assert (=> b!746295 m!696679))

(declare-fun m!696681 () Bool)

(assert (=> b!746292 m!696681))

(declare-fun m!696683 () Bool)

(assert (=> b!746299 m!696683))

(assert (=> b!746297 m!696665))

(declare-fun m!696685 () Bool)

(assert (=> b!746297 m!696685))

(assert (=> b!746297 m!696651))

(assert (=> b!746297 m!696651))

(declare-fun m!696687 () Bool)

(assert (=> b!746297 m!696687))

(assert (=> b!746296 m!696651))

(assert (=> b!746296 m!696651))

(declare-fun m!696689 () Bool)

(assert (=> b!746296 m!696689))

(assert (=> b!746294 m!696651))

(assert (=> b!746294 m!696651))

(declare-fun m!696691 () Bool)

(assert (=> b!746294 m!696691))

(declare-fun m!696693 () Bool)

(assert (=> b!746294 m!696693))

(declare-fun m!696695 () Bool)

(assert (=> b!746294 m!696695))

(assert (=> b!746305 m!696651))

(assert (=> b!746305 m!696651))

(assert (=> b!746305 m!696687))

(push 1)

