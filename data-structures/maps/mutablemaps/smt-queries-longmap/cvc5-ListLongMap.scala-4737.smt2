; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65500 () Bool)

(assert start!65500)

(declare-fun b!746343 () Bool)

(declare-fun res!503253 () Bool)

(declare-fun e!416814 () Bool)

(assert (=> b!746343 (=> (not res!503253) (not e!416814))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41626 0))(
  ( (array!41627 (arr!19923 (Array (_ BitVec 32) (_ BitVec 64))) (size!20344 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41626)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!746343 (= res!503253 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19923 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7530 0))(
  ( (MissingZero!7530 (index!32487 (_ BitVec 32))) (Found!7530 (index!32488 (_ BitVec 32))) (Intermediate!7530 (undefined!8342 Bool) (index!32489 (_ BitVec 32)) (x!63465 (_ BitVec 32))) (Undefined!7530) (MissingVacant!7530 (index!32490 (_ BitVec 32))) )
))
(declare-fun lt!331703 () SeekEntryResult!7530)

(declare-fun e!416818 () Bool)

(declare-fun b!746344 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41626 (_ BitVec 32)) SeekEntryResult!7530)

(assert (=> b!746344 (= e!416818 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19923 a!3186) j!159) a!3186 mask!3328) lt!331703))))

(declare-fun b!746345 () Bool)

(declare-fun e!416819 () Bool)

(assert (=> b!746345 (= e!416814 e!416819)))

(declare-fun res!503252 () Bool)

(assert (=> b!746345 (=> (not res!503252) (not e!416819))))

(declare-fun lt!331698 () SeekEntryResult!7530)

(declare-fun lt!331702 () SeekEntryResult!7530)

(assert (=> b!746345 (= res!503252 (= lt!331698 lt!331702))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!331701 () (_ BitVec 64))

(declare-fun lt!331699 () array!41626)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41626 (_ BitVec 32)) SeekEntryResult!7530)

(assert (=> b!746345 (= lt!331702 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331701 lt!331699 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746345 (= lt!331698 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331701 mask!3328) lt!331701 lt!331699 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!746345 (= lt!331701 (select (store (arr!19923 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746345 (= lt!331699 (array!41627 (store (arr!19923 a!3186) i!1173 k!2102) (size!20344 a!3186)))))

(declare-fun b!746346 () Bool)

(declare-fun e!416815 () Bool)

(declare-fun e!416813 () Bool)

(assert (=> b!746346 (= e!416815 e!416813)))

(declare-fun res!503248 () Bool)

(assert (=> b!746346 (=> (not res!503248) (not e!416813))))

(declare-fun lt!331697 () SeekEntryResult!7530)

(assert (=> b!746346 (= res!503248 (or (= lt!331697 (MissingZero!7530 i!1173)) (= lt!331697 (MissingVacant!7530 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41626 (_ BitVec 32)) SeekEntryResult!7530)

(assert (=> b!746346 (= lt!331697 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!746347 () Bool)

(declare-fun res!503258 () Bool)

(assert (=> b!746347 (=> (not res!503258) (not e!416813))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41626 (_ BitVec 32)) Bool)

(assert (=> b!746347 (= res!503258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746348 () Bool)

(declare-fun e!416820 () Bool)

(assert (=> b!746348 (= e!416819 (not e!416820))))

(declare-fun res!503247 () Bool)

(assert (=> b!746348 (=> res!503247 e!416820)))

(assert (=> b!746348 (= res!503247 (or (not (is-Intermediate!7530 lt!331702)) (bvslt x!1131 (x!63465 lt!331702)) (not (= x!1131 (x!63465 lt!331702))) (not (= index!1321 (index!32489 lt!331702)))))))

(assert (=> b!746348 e!416818))

(declare-fun res!503259 () Bool)

(assert (=> b!746348 (=> (not res!503259) (not e!416818))))

(declare-fun lt!331705 () SeekEntryResult!7530)

(assert (=> b!746348 (= res!503259 (= lt!331705 lt!331703))))

(assert (=> b!746348 (= lt!331703 (Found!7530 j!159))))

(assert (=> b!746348 (= lt!331705 (seekEntryOrOpen!0 (select (arr!19923 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!746348 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25540 0))(
  ( (Unit!25541) )
))
(declare-fun lt!331704 () Unit!25540)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41626 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25540)

(assert (=> b!746348 (= lt!331704 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!503244 () Bool)

(assert (=> start!65500 (=> (not res!503244) (not e!416815))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65500 (= res!503244 (validMask!0 mask!3328))))

(assert (=> start!65500 e!416815))

(assert (=> start!65500 true))

(declare-fun array_inv!15697 (array!41626) Bool)

(assert (=> start!65500 (array_inv!15697 a!3186)))

(declare-fun b!746349 () Bool)

(declare-fun res!503250 () Bool)

(assert (=> b!746349 (=> (not res!503250) (not e!416814))))

(declare-fun e!416817 () Bool)

(assert (=> b!746349 (= res!503250 e!416817)))

(declare-fun c!81930 () Bool)

(assert (=> b!746349 (= c!81930 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746350 () Bool)

(declare-fun lt!331700 () SeekEntryResult!7530)

(assert (=> b!746350 (= e!416817 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19923 a!3186) j!159) a!3186 mask!3328) lt!331700))))

(declare-fun b!746351 () Bool)

(declare-fun res!503257 () Bool)

(assert (=> b!746351 (=> (not res!503257) (not e!416813))))

(assert (=> b!746351 (= res!503257 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20344 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20344 a!3186))))))

(declare-fun b!746352 () Bool)

(declare-fun res!503249 () Bool)

(assert (=> b!746352 (=> (not res!503249) (not e!416815))))

(assert (=> b!746352 (= res!503249 (and (= (size!20344 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20344 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20344 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746353 () Bool)

(declare-fun res!503251 () Bool)

(assert (=> b!746353 (=> (not res!503251) (not e!416813))))

(declare-datatypes ((List!13978 0))(
  ( (Nil!13975) (Cons!13974 (h!15046 (_ BitVec 64)) (t!20301 List!13978)) )
))
(declare-fun arrayNoDuplicates!0 (array!41626 (_ BitVec 32) List!13978) Bool)

(assert (=> b!746353 (= res!503251 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13975))))

(declare-fun b!746354 () Bool)

(assert (=> b!746354 (= e!416813 e!416814)))

(declare-fun res!503255 () Bool)

(assert (=> b!746354 (=> (not res!503255) (not e!416814))))

(assert (=> b!746354 (= res!503255 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19923 a!3186) j!159) mask!3328) (select (arr!19923 a!3186) j!159) a!3186 mask!3328) lt!331700))))

(assert (=> b!746354 (= lt!331700 (Intermediate!7530 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746355 () Bool)

(assert (=> b!746355 (= e!416817 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19923 a!3186) j!159) a!3186 mask!3328) (Found!7530 j!159)))))

(declare-fun b!746356 () Bool)

(declare-fun e!416812 () Bool)

(assert (=> b!746356 (= e!416820 e!416812)))

(declare-fun res!503256 () Bool)

(assert (=> b!746356 (=> res!503256 e!416812)))

(declare-fun lt!331706 () SeekEntryResult!7530)

(assert (=> b!746356 (= res!503256 (or (not (= lt!331706 lt!331703)) (= (select (store (arr!19923 a!3186) i!1173 k!2102) index!1321) lt!331701) (not (= (select (store (arr!19923 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!746356 (= lt!331706 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19923 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746357 () Bool)

(declare-fun res!503245 () Bool)

(assert (=> b!746357 (=> (not res!503245) (not e!416815))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746357 (= res!503245 (validKeyInArray!0 (select (arr!19923 a!3186) j!159)))))

(declare-fun b!746358 () Bool)

(declare-fun res!503254 () Bool)

(assert (=> b!746358 (=> (not res!503254) (not e!416815))))

(declare-fun arrayContainsKey!0 (array!41626 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746358 (= res!503254 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746359 () Bool)

(declare-fun res!503246 () Bool)

(assert (=> b!746359 (=> (not res!503246) (not e!416815))))

(assert (=> b!746359 (= res!503246 (validKeyInArray!0 k!2102))))

(declare-fun b!746360 () Bool)

(assert (=> b!746360 (= e!416812 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!746360 (= lt!331705 lt!331706)))

(assert (= (and start!65500 res!503244) b!746352))

(assert (= (and b!746352 res!503249) b!746357))

(assert (= (and b!746357 res!503245) b!746359))

(assert (= (and b!746359 res!503246) b!746358))

(assert (= (and b!746358 res!503254) b!746346))

(assert (= (and b!746346 res!503248) b!746347))

(assert (= (and b!746347 res!503258) b!746353))

(assert (= (and b!746353 res!503251) b!746351))

(assert (= (and b!746351 res!503257) b!746354))

(assert (= (and b!746354 res!503255) b!746343))

(assert (= (and b!746343 res!503253) b!746349))

(assert (= (and b!746349 c!81930) b!746350))

(assert (= (and b!746349 (not c!81930)) b!746355))

(assert (= (and b!746349 res!503250) b!746345))

(assert (= (and b!746345 res!503252) b!746348))

(assert (= (and b!746348 res!503259) b!746344))

(assert (= (and b!746348 (not res!503247)) b!746356))

(assert (= (and b!746356 (not res!503256)) b!746360))

(declare-fun m!696697 () Bool)

(assert (=> b!746353 m!696697))

(declare-fun m!696699 () Bool)

(assert (=> b!746357 m!696699))

(assert (=> b!746357 m!696699))

(declare-fun m!696701 () Bool)

(assert (=> b!746357 m!696701))

(declare-fun m!696703 () Bool)

(assert (=> b!746359 m!696703))

(assert (=> b!746344 m!696699))

(assert (=> b!746344 m!696699))

(declare-fun m!696705 () Bool)

(assert (=> b!746344 m!696705))

(assert (=> b!746350 m!696699))

(assert (=> b!746350 m!696699))

(declare-fun m!696707 () Bool)

(assert (=> b!746350 m!696707))

(declare-fun m!696709 () Bool)

(assert (=> b!746347 m!696709))

(declare-fun m!696711 () Bool)

(assert (=> b!746358 m!696711))

(declare-fun m!696713 () Bool)

(assert (=> start!65500 m!696713))

(declare-fun m!696715 () Bool)

(assert (=> start!65500 m!696715))

(declare-fun m!696717 () Bool)

(assert (=> b!746345 m!696717))

(declare-fun m!696719 () Bool)

(assert (=> b!746345 m!696719))

(declare-fun m!696721 () Bool)

(assert (=> b!746345 m!696721))

(declare-fun m!696723 () Bool)

(assert (=> b!746345 m!696723))

(assert (=> b!746345 m!696717))

(declare-fun m!696725 () Bool)

(assert (=> b!746345 m!696725))

(assert (=> b!746355 m!696699))

(assert (=> b!746355 m!696699))

(declare-fun m!696727 () Bool)

(assert (=> b!746355 m!696727))

(declare-fun m!696729 () Bool)

(assert (=> b!746346 m!696729))

(assert (=> b!746356 m!696721))

(declare-fun m!696731 () Bool)

(assert (=> b!746356 m!696731))

(assert (=> b!746356 m!696699))

(assert (=> b!746356 m!696699))

(assert (=> b!746356 m!696727))

(declare-fun m!696733 () Bool)

(assert (=> b!746343 m!696733))

(assert (=> b!746354 m!696699))

(assert (=> b!746354 m!696699))

(declare-fun m!696735 () Bool)

(assert (=> b!746354 m!696735))

(assert (=> b!746354 m!696735))

(assert (=> b!746354 m!696699))

(declare-fun m!696737 () Bool)

(assert (=> b!746354 m!696737))

(assert (=> b!746348 m!696699))

(assert (=> b!746348 m!696699))

(declare-fun m!696739 () Bool)

(assert (=> b!746348 m!696739))

(declare-fun m!696741 () Bool)

(assert (=> b!746348 m!696741))

(declare-fun m!696743 () Bool)

(assert (=> b!746348 m!696743))

(push 1)

(assert (not b!746354))

(assert (not b!746353))

(assert (not b!746350))

(assert (not b!746359))

(assert (not start!65500))

(assert (not b!746356))

(assert (not b!746346))

(assert (not b!746344))

(assert (not b!746345))

(assert (not b!746357))

(assert (not b!746358))

(assert (not b!746347))

(assert (not b!746348))

(assert (not b!746355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

