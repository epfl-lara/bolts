; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67270 () Bool)

(assert start!67270)

(declare-fun b!777368 () Bool)

(declare-fun res!525973 () Bool)

(declare-fun e!432580 () Bool)

(assert (=> b!777368 (=> (not res!525973) (not e!432580))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-datatypes ((array!42517 0))(
  ( (array!42518 (arr!20349 (Array (_ BitVec 32) (_ BitVec 64))) (size!20770 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42517)

(assert (=> b!777368 (= res!525973 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20349 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777369 () Bool)

(declare-fun res!525962 () Bool)

(declare-fun e!432585 () Bool)

(assert (=> b!777369 (=> (not res!525962) (not e!432585))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!777369 (= res!525962 (validKeyInArray!0 k!2102))))

(declare-fun b!777370 () Bool)

(declare-fun res!525967 () Bool)

(assert (=> b!777370 (=> (not res!525967) (not e!432585))))

(declare-fun arrayContainsKey!0 (array!42517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!777370 (= res!525967 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!777372 () Bool)

(declare-fun e!432579 () Bool)

(assert (=> b!777372 (= e!432579 true)))

(declare-datatypes ((SeekEntryResult!7956 0))(
  ( (MissingZero!7956 (index!34191 (_ BitVec 32))) (Found!7956 (index!34192 (_ BitVec 32))) (Intermediate!7956 (undefined!8768 Bool) (index!34193 (_ BitVec 32)) (x!65165 (_ BitVec 32))) (Undefined!7956) (MissingVacant!7956 (index!34194 (_ BitVec 32))) )
))
(declare-fun lt!346355 () SeekEntryResult!7956)

(declare-fun lt!346360 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!346357 () array!42517)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42517 (_ BitVec 32)) SeekEntryResult!7956)

(assert (=> b!777372 (= lt!346355 (seekEntryOrOpen!0 lt!346360 lt!346357 mask!3328))))

(declare-fun b!777373 () Bool)

(declare-fun res!525966 () Bool)

(declare-fun e!432578 () Bool)

(assert (=> b!777373 (=> (not res!525966) (not e!432578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42517 (_ BitVec 32)) Bool)

(assert (=> b!777373 (= res!525966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!777374 () Bool)

(declare-fun e!432586 () Bool)

(declare-fun e!432582 () Bool)

(assert (=> b!777374 (= e!432586 e!432582)))

(declare-fun res!525965 () Bool)

(assert (=> b!777374 (=> (not res!525965) (not e!432582))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!346359 () SeekEntryResult!7956)

(assert (=> b!777374 (= res!525965 (= (seekEntryOrOpen!0 (select (arr!20349 a!3186) j!159) a!3186 mask!3328) lt!346359))))

(assert (=> b!777374 (= lt!346359 (Found!7956 j!159))))

(declare-fun b!777375 () Bool)

(declare-fun res!525975 () Bool)

(assert (=> b!777375 (=> (not res!525975) (not e!432578))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!777375 (= res!525975 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20770 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20770 a!3186))))))

(declare-fun b!777376 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42517 (_ BitVec 32)) SeekEntryResult!7956)

(assert (=> b!777376 (= e!432582 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20349 a!3186) j!159) a!3186 mask!3328) lt!346359))))

(declare-fun b!777377 () Bool)

(declare-fun res!525963 () Bool)

(assert (=> b!777377 (=> (not res!525963) (not e!432585))))

(assert (=> b!777377 (= res!525963 (and (= (size!20770 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20770 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20770 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!777378 () Bool)

(declare-fun res!525968 () Bool)

(assert (=> b!777378 (=> res!525968 e!432579)))

(declare-fun lt!346354 () SeekEntryResult!7956)

(assert (=> b!777378 (= res!525968 (or (not (= (select (store (arr!20349 a!3186) i!1173 k!2102) index!1321) lt!346360)) (undefined!8768 lt!346354)))))

(declare-fun b!777379 () Bool)

(declare-fun e!432581 () Bool)

(assert (=> b!777379 (= e!432580 e!432581)))

(declare-fun res!525960 () Bool)

(assert (=> b!777379 (=> (not res!525960) (not e!432581))))

(declare-fun lt!346352 () SeekEntryResult!7956)

(assert (=> b!777379 (= res!525960 (= lt!346352 lt!346354))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42517 (_ BitVec 32)) SeekEntryResult!7956)

(assert (=> b!777379 (= lt!346354 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346360 lt!346357 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!777379 (= lt!346352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346360 mask!3328) lt!346360 lt!346357 mask!3328))))

(assert (=> b!777379 (= lt!346360 (select (store (arr!20349 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!777379 (= lt!346357 (array!42518 (store (arr!20349 a!3186) i!1173 k!2102) (size!20770 a!3186)))))

(declare-fun b!777380 () Bool)

(assert (=> b!777380 (= e!432585 e!432578)))

(declare-fun res!525964 () Bool)

(assert (=> b!777380 (=> (not res!525964) (not e!432578))))

(declare-fun lt!346353 () SeekEntryResult!7956)

(assert (=> b!777380 (= res!525964 (or (= lt!346353 (MissingZero!7956 i!1173)) (= lt!346353 (MissingVacant!7956 i!1173))))))

(assert (=> b!777380 (= lt!346353 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!777381 () Bool)

(assert (=> b!777381 (= e!432578 e!432580)))

(declare-fun res!525969 () Bool)

(assert (=> b!777381 (=> (not res!525969) (not e!432580))))

(declare-fun lt!346356 () SeekEntryResult!7956)

(assert (=> b!777381 (= res!525969 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20349 a!3186) j!159) mask!3328) (select (arr!20349 a!3186) j!159) a!3186 mask!3328) lt!346356))))

(assert (=> b!777381 (= lt!346356 (Intermediate!7956 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!777382 () Bool)

(assert (=> b!777382 (= e!432581 (not e!432579))))

(declare-fun res!525959 () Bool)

(assert (=> b!777382 (=> res!525959 e!432579)))

(assert (=> b!777382 (= res!525959 (or (not (is-Intermediate!7956 lt!346354)) (bvslt x!1131 (x!65165 lt!346354)) (not (= x!1131 (x!65165 lt!346354))) (not (= index!1321 (index!34193 lt!346354)))))))

(assert (=> b!777382 e!432586))

(declare-fun res!525970 () Bool)

(assert (=> b!777382 (=> (not res!525970) (not e!432586))))

(assert (=> b!777382 (= res!525970 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26806 0))(
  ( (Unit!26807) )
))
(declare-fun lt!346358 () Unit!26806)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42517 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26806)

(assert (=> b!777382 (= lt!346358 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!777383 () Bool)

(declare-fun res!525971 () Bool)

(assert (=> b!777383 (=> (not res!525971) (not e!432580))))

(declare-fun e!432584 () Bool)

(assert (=> b!777383 (= res!525971 e!432584)))

(declare-fun c!86106 () Bool)

(assert (=> b!777383 (= c!86106 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!525961 () Bool)

(assert (=> start!67270 (=> (not res!525961) (not e!432585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67270 (= res!525961 (validMask!0 mask!3328))))

(assert (=> start!67270 e!432585))

(assert (=> start!67270 true))

(declare-fun array_inv!16123 (array!42517) Bool)

(assert (=> start!67270 (array_inv!16123 a!3186)))

(declare-fun b!777371 () Bool)

(assert (=> b!777371 (= e!432584 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20349 a!3186) j!159) a!3186 mask!3328) (Found!7956 j!159)))))

(declare-fun b!777384 () Bool)

(declare-fun res!525972 () Bool)

(assert (=> b!777384 (=> (not res!525972) (not e!432585))))

(assert (=> b!777384 (= res!525972 (validKeyInArray!0 (select (arr!20349 a!3186) j!159)))))

(declare-fun b!777385 () Bool)

(declare-fun res!525976 () Bool)

(assert (=> b!777385 (=> (not res!525976) (not e!432578))))

(declare-datatypes ((List!14404 0))(
  ( (Nil!14401) (Cons!14400 (h!15511 (_ BitVec 64)) (t!20727 List!14404)) )
))
(declare-fun arrayNoDuplicates!0 (array!42517 (_ BitVec 32) List!14404) Bool)

(assert (=> b!777385 (= res!525976 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14401))))

(declare-fun b!777386 () Bool)

(assert (=> b!777386 (= e!432584 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20349 a!3186) j!159) a!3186 mask!3328) lt!346356))))

(declare-fun b!777387 () Bool)

(declare-fun res!525974 () Bool)

(assert (=> b!777387 (=> res!525974 e!432579)))

(assert (=> b!777387 (= res!525974 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20349 a!3186) j!159) a!3186 mask!3328) (Found!7956 j!159))))))

(assert (= (and start!67270 res!525961) b!777377))

(assert (= (and b!777377 res!525963) b!777384))

(assert (= (and b!777384 res!525972) b!777369))

(assert (= (and b!777369 res!525962) b!777370))

(assert (= (and b!777370 res!525967) b!777380))

(assert (= (and b!777380 res!525964) b!777373))

(assert (= (and b!777373 res!525966) b!777385))

(assert (= (and b!777385 res!525976) b!777375))

(assert (= (and b!777375 res!525975) b!777381))

(assert (= (and b!777381 res!525969) b!777368))

(assert (= (and b!777368 res!525973) b!777383))

(assert (= (and b!777383 c!86106) b!777386))

(assert (= (and b!777383 (not c!86106)) b!777371))

(assert (= (and b!777383 res!525971) b!777379))

(assert (= (and b!777379 res!525960) b!777382))

(assert (= (and b!777382 res!525970) b!777374))

(assert (= (and b!777374 res!525965) b!777376))

(assert (= (and b!777382 (not res!525959)) b!777387))

(assert (= (and b!777387 (not res!525974)) b!777378))

(assert (= (and b!777378 (not res!525968)) b!777372))

(declare-fun m!721303 () Bool)

(assert (=> b!777382 m!721303))

(declare-fun m!721305 () Bool)

(assert (=> b!777382 m!721305))

(declare-fun m!721307 () Bool)

(assert (=> b!777387 m!721307))

(assert (=> b!777387 m!721307))

(declare-fun m!721309 () Bool)

(assert (=> b!777387 m!721309))

(declare-fun m!721311 () Bool)

(assert (=> b!777385 m!721311))

(assert (=> b!777384 m!721307))

(assert (=> b!777384 m!721307))

(declare-fun m!721313 () Bool)

(assert (=> b!777384 m!721313))

(assert (=> b!777374 m!721307))

(assert (=> b!777374 m!721307))

(declare-fun m!721315 () Bool)

(assert (=> b!777374 m!721315))

(declare-fun m!721317 () Bool)

(assert (=> b!777380 m!721317))

(assert (=> b!777386 m!721307))

(assert (=> b!777386 m!721307))

(declare-fun m!721319 () Bool)

(assert (=> b!777386 m!721319))

(declare-fun m!721321 () Bool)

(assert (=> b!777370 m!721321))

(declare-fun m!721323 () Bool)

(assert (=> b!777369 m!721323))

(assert (=> b!777371 m!721307))

(assert (=> b!777371 m!721307))

(assert (=> b!777371 m!721309))

(declare-fun m!721325 () Bool)

(assert (=> b!777379 m!721325))

(declare-fun m!721327 () Bool)

(assert (=> b!777379 m!721327))

(assert (=> b!777379 m!721325))

(declare-fun m!721329 () Bool)

(assert (=> b!777379 m!721329))

(declare-fun m!721331 () Bool)

(assert (=> b!777379 m!721331))

(declare-fun m!721333 () Bool)

(assert (=> b!777379 m!721333))

(assert (=> b!777381 m!721307))

(assert (=> b!777381 m!721307))

(declare-fun m!721335 () Bool)

(assert (=> b!777381 m!721335))

(assert (=> b!777381 m!721335))

(assert (=> b!777381 m!721307))

(declare-fun m!721337 () Bool)

(assert (=> b!777381 m!721337))

(declare-fun m!721339 () Bool)

(assert (=> start!67270 m!721339))

(declare-fun m!721341 () Bool)

(assert (=> start!67270 m!721341))

(declare-fun m!721343 () Bool)

(assert (=> b!777373 m!721343))

(declare-fun m!721345 () Bool)

(assert (=> b!777372 m!721345))

(assert (=> b!777376 m!721307))

(assert (=> b!777376 m!721307))

(declare-fun m!721347 () Bool)

(assert (=> b!777376 m!721347))

(assert (=> b!777378 m!721327))

(declare-fun m!721349 () Bool)

(assert (=> b!777378 m!721349))

(declare-fun m!721351 () Bool)

(assert (=> b!777368 m!721351))

(push 1)

