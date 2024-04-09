; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65288 () Bool)

(assert start!65288)

(declare-fun b!740387 () Bool)

(declare-datatypes ((Unit!25314 0))(
  ( (Unit!25315) )
))
(declare-fun e!413960 () Unit!25314)

(declare-fun Unit!25316 () Unit!25314)

(assert (=> b!740387 (= e!413960 Unit!25316)))

(declare-datatypes ((array!41414 0))(
  ( (array!41415 (arr!19817 (Array (_ BitVec 32) (_ BitVec 64))) (size!20238 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41414)

(declare-fun lt!328940 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7424 0))(
  ( (MissingZero!7424 (index!32063 (_ BitVec 32))) (Found!7424 (index!32064 (_ BitVec 32))) (Intermediate!7424 (undefined!8236 Bool) (index!32065 (_ BitVec 32)) (x!63071 (_ BitVec 32))) (Undefined!7424) (MissingVacant!7424 (index!32066 (_ BitVec 32))) )
))
(declare-fun lt!328938 () SeekEntryResult!7424)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41414 (_ BitVec 32)) SeekEntryResult!7424)

(assert (=> b!740387 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328940 (select (arr!19817 a!3186) j!159) a!3186 mask!3328) lt!328938)))

(declare-fun b!740388 () Bool)

(declare-fun res!498017 () Bool)

(declare-fun e!413966 () Bool)

(assert (=> b!740388 (=> res!498017 e!413966)))

(declare-fun lt!328931 () array!41414)

(declare-fun lt!328933 () (_ BitVec 64))

(declare-fun lt!328932 () SeekEntryResult!7424)

(assert (=> b!740388 (= res!498017 (not (= lt!328932 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328940 lt!328933 lt!328931 mask!3328))))))

(declare-fun e!413963 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!740389 () Bool)

(assert (=> b!740389 (= e!413963 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19817 a!3186) j!159) a!3186 mask!3328) lt!328938))))

(declare-fun b!740390 () Bool)

(declare-fun res!498005 () Bool)

(assert (=> b!740390 (=> res!498005 e!413966)))

(declare-fun e!413957 () Bool)

(assert (=> b!740390 (= res!498005 e!413957)))

(declare-fun c!81574 () Bool)

(declare-fun lt!328935 () Bool)

(assert (=> b!740390 (= c!81574 lt!328935)))

(declare-fun b!740391 () Bool)

(declare-fun e!413959 () Bool)

(declare-fun e!413961 () Bool)

(assert (=> b!740391 (= e!413959 (not e!413961))))

(declare-fun res!498007 () Bool)

(assert (=> b!740391 (=> res!498007 e!413961)))

(declare-fun lt!328930 () SeekEntryResult!7424)

(assert (=> b!740391 (= res!498007 (or (not (is-Intermediate!7424 lt!328930)) (bvsge x!1131 (x!63071 lt!328930))))))

(declare-fun lt!328928 () SeekEntryResult!7424)

(assert (=> b!740391 (= lt!328928 (Found!7424 j!159))))

(declare-fun e!413962 () Bool)

(assert (=> b!740391 e!413962))

(declare-fun res!498003 () Bool)

(assert (=> b!740391 (=> (not res!498003) (not e!413962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41414 (_ BitVec 32)) Bool)

(assert (=> b!740391 (= res!498003 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328927 () Unit!25314)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41414 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25314)

(assert (=> b!740391 (= lt!328927 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740392 () Bool)

(declare-fun e!413956 () Bool)

(declare-fun e!413958 () Bool)

(assert (=> b!740392 (= e!413956 e!413958)))

(declare-fun res!498006 () Bool)

(assert (=> b!740392 (=> (not res!498006) (not e!413958))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740392 (= res!498006 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19817 a!3186) j!159) mask!3328) (select (arr!19817 a!3186) j!159) a!3186 mask!3328) lt!328938))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!740392 (= lt!328938 (Intermediate!7424 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740393 () Bool)

(declare-fun res!498011 () Bool)

(declare-fun e!413965 () Bool)

(assert (=> b!740393 (=> (not res!498011) (not e!413965))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!740393 (= res!498011 (and (= (size!20238 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20238 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20238 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740394 () Bool)

(declare-fun res!498015 () Bool)

(assert (=> b!740394 (=> (not res!498015) (not e!413956))))

(declare-datatypes ((List!13872 0))(
  ( (Nil!13869) (Cons!13868 (h!14940 (_ BitVec 64)) (t!20195 List!13872)) )
))
(declare-fun arrayNoDuplicates!0 (array!41414 (_ BitVec 32) List!13872) Bool)

(assert (=> b!740394 (= res!498015 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13869))))

(declare-fun b!740395 () Bool)

(assert (=> b!740395 (= e!413965 e!413956)))

(declare-fun res!498009 () Bool)

(assert (=> b!740395 (=> (not res!498009) (not e!413956))))

(declare-fun lt!328939 () SeekEntryResult!7424)

(assert (=> b!740395 (= res!498009 (or (= lt!328939 (MissingZero!7424 i!1173)) (= lt!328939 (MissingVacant!7424 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41414 (_ BitVec 32)) SeekEntryResult!7424)

(assert (=> b!740395 (= lt!328939 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!740396 () Bool)

(declare-fun res!498018 () Bool)

(assert (=> b!740396 (=> (not res!498018) (not e!413958))))

(assert (=> b!740396 (= res!498018 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19817 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740397 () Bool)

(declare-fun e!413967 () Bool)

(assert (=> b!740397 (= e!413962 e!413967)))

(declare-fun res!498001 () Bool)

(assert (=> b!740397 (=> (not res!498001) (not e!413967))))

(declare-fun lt!328937 () SeekEntryResult!7424)

(assert (=> b!740397 (= res!498001 (= (seekEntryOrOpen!0 (select (arr!19817 a!3186) j!159) a!3186 mask!3328) lt!328937))))

(assert (=> b!740397 (= lt!328937 (Found!7424 j!159))))

(declare-fun b!740398 () Bool)

(declare-fun Unit!25317 () Unit!25314)

(assert (=> b!740398 (= e!413960 Unit!25317)))

(declare-fun lt!328934 () SeekEntryResult!7424)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41414 (_ BitVec 32)) SeekEntryResult!7424)

(assert (=> b!740398 (= lt!328934 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19817 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!740398 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328940 resIntermediateIndex!5 (select (arr!19817 a!3186) j!159) a!3186 mask!3328) lt!328928)))

(declare-fun b!740399 () Bool)

(assert (=> b!740399 (= e!413958 e!413959)))

(declare-fun res!498012 () Bool)

(assert (=> b!740399 (=> (not res!498012) (not e!413959))))

(assert (=> b!740399 (= res!498012 (= lt!328932 lt!328930))))

(assert (=> b!740399 (= lt!328930 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328933 lt!328931 mask!3328))))

(assert (=> b!740399 (= lt!328932 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328933 mask!3328) lt!328933 lt!328931 mask!3328))))

(assert (=> b!740399 (= lt!328933 (select (store (arr!19817 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!740399 (= lt!328931 (array!41415 (store (arr!19817 a!3186) i!1173 k!2102) (size!20238 a!3186)))))

(declare-fun b!740400 () Bool)

(assert (=> b!740400 (= e!413961 e!413966)))

(declare-fun res!498016 () Bool)

(assert (=> b!740400 (=> res!498016 e!413966)))

(assert (=> b!740400 (= res!498016 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328940 #b00000000000000000000000000000000) (bvsge lt!328940 (size!20238 a!3186))))))

(declare-fun lt!328936 () Unit!25314)

(assert (=> b!740400 (= lt!328936 e!413960)))

(declare-fun c!81576 () Bool)

(assert (=> b!740400 (= c!81576 lt!328935)))

(assert (=> b!740400 (= lt!328935 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740400 (= lt!328940 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740401 () Bool)

(assert (=> b!740401 (= e!413966 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!740401 (= (seekEntryOrOpen!0 lt!328933 lt!328931 mask!3328) lt!328928)))

(declare-fun lt!328929 () Unit!25314)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41414 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25314)

(assert (=> b!740401 (= lt!328929 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!328940 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!740402 () Bool)

(declare-fun res!498004 () Bool)

(assert (=> b!740402 (=> (not res!498004) (not e!413958))))

(assert (=> b!740402 (= res!498004 e!413963)))

(declare-fun c!81575 () Bool)

(assert (=> b!740402 (= c!81575 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740403 () Bool)

(declare-fun res!498008 () Bool)

(assert (=> b!740403 (=> (not res!498008) (not e!413956))))

(assert (=> b!740403 (= res!498008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!740404 () Bool)

(assert (=> b!740404 (= e!413957 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328940 resIntermediateIndex!5 (select (arr!19817 a!3186) j!159) a!3186 mask!3328) lt!328928)))))

(declare-fun res!498000 () Bool)

(assert (=> start!65288 (=> (not res!498000) (not e!413965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65288 (= res!498000 (validMask!0 mask!3328))))

(assert (=> start!65288 e!413965))

(assert (=> start!65288 true))

(declare-fun array_inv!15591 (array!41414) Bool)

(assert (=> start!65288 (array_inv!15591 a!3186)))

(declare-fun b!740405 () Bool)

(assert (=> b!740405 (= e!413957 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328940 (select (arr!19817 a!3186) j!159) a!3186 mask!3328) lt!328938)))))

(declare-fun b!740406 () Bool)

(declare-fun res!498013 () Bool)

(assert (=> b!740406 (=> (not res!498013) (not e!413965))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740406 (= res!498013 (validKeyInArray!0 k!2102))))

(declare-fun b!740407 () Bool)

(declare-fun res!498014 () Bool)

(assert (=> b!740407 (=> (not res!498014) (not e!413965))))

(assert (=> b!740407 (= res!498014 (validKeyInArray!0 (select (arr!19817 a!3186) j!159)))))

(declare-fun b!740408 () Bool)

(assert (=> b!740408 (= e!413963 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19817 a!3186) j!159) a!3186 mask!3328) (Found!7424 j!159)))))

(declare-fun b!740409 () Bool)

(declare-fun res!498010 () Bool)

(assert (=> b!740409 (=> (not res!498010) (not e!413956))))

(assert (=> b!740409 (= res!498010 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20238 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20238 a!3186))))))

(declare-fun b!740410 () Bool)

(declare-fun res!498002 () Bool)

(assert (=> b!740410 (=> (not res!498002) (not e!413965))))

(declare-fun arrayContainsKey!0 (array!41414 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740410 (= res!498002 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740411 () Bool)

(assert (=> b!740411 (= e!413967 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19817 a!3186) j!159) a!3186 mask!3328) lt!328937))))

(assert (= (and start!65288 res!498000) b!740393))

(assert (= (and b!740393 res!498011) b!740407))

(assert (= (and b!740407 res!498014) b!740406))

(assert (= (and b!740406 res!498013) b!740410))

(assert (= (and b!740410 res!498002) b!740395))

(assert (= (and b!740395 res!498009) b!740403))

(assert (= (and b!740403 res!498008) b!740394))

(assert (= (and b!740394 res!498015) b!740409))

(assert (= (and b!740409 res!498010) b!740392))

(assert (= (and b!740392 res!498006) b!740396))

(assert (= (and b!740396 res!498018) b!740402))

(assert (= (and b!740402 c!81575) b!740389))

(assert (= (and b!740402 (not c!81575)) b!740408))

(assert (= (and b!740402 res!498004) b!740399))

(assert (= (and b!740399 res!498012) b!740391))

(assert (= (and b!740391 res!498003) b!740397))

(assert (= (and b!740397 res!498001) b!740411))

(assert (= (and b!740391 (not res!498007)) b!740400))

(assert (= (and b!740400 c!81576) b!740387))

(assert (= (and b!740400 (not c!81576)) b!740398))

(assert (= (and b!740400 (not res!498016)) b!740390))

(assert (= (and b!740390 c!81574) b!740405))

(assert (= (and b!740390 (not c!81574)) b!740404))

(assert (= (and b!740390 (not res!498005)) b!740388))

(assert (= (and b!740388 (not res!498017)) b!740401))

(declare-fun m!691605 () Bool)

(assert (=> b!740387 m!691605))

(assert (=> b!740387 m!691605))

(declare-fun m!691607 () Bool)

(assert (=> b!740387 m!691607))

(declare-fun m!691609 () Bool)

(assert (=> b!740400 m!691609))

(declare-fun m!691611 () Bool)

(assert (=> b!740395 m!691611))

(assert (=> b!740392 m!691605))

(assert (=> b!740392 m!691605))

(declare-fun m!691613 () Bool)

(assert (=> b!740392 m!691613))

(assert (=> b!740392 m!691613))

(assert (=> b!740392 m!691605))

(declare-fun m!691615 () Bool)

(assert (=> b!740392 m!691615))

(declare-fun m!691617 () Bool)

(assert (=> b!740396 m!691617))

(declare-fun m!691619 () Bool)

(assert (=> b!740391 m!691619))

(declare-fun m!691621 () Bool)

(assert (=> b!740391 m!691621))

(assert (=> b!740411 m!691605))

(assert (=> b!740411 m!691605))

(declare-fun m!691623 () Bool)

(assert (=> b!740411 m!691623))

(assert (=> b!740397 m!691605))

(assert (=> b!740397 m!691605))

(declare-fun m!691625 () Bool)

(assert (=> b!740397 m!691625))

(assert (=> b!740404 m!691605))

(assert (=> b!740404 m!691605))

(declare-fun m!691627 () Bool)

(assert (=> b!740404 m!691627))

(assert (=> b!740408 m!691605))

(assert (=> b!740408 m!691605))

(declare-fun m!691629 () Bool)

(assert (=> b!740408 m!691629))

(declare-fun m!691631 () Bool)

(assert (=> b!740406 m!691631))

(declare-fun m!691633 () Bool)

(assert (=> b!740399 m!691633))

(declare-fun m!691635 () Bool)

(assert (=> b!740399 m!691635))

(declare-fun m!691637 () Bool)

(assert (=> b!740399 m!691637))

(declare-fun m!691639 () Bool)

(assert (=> b!740399 m!691639))

(assert (=> b!740399 m!691633))

(declare-fun m!691641 () Bool)

(assert (=> b!740399 m!691641))

(declare-fun m!691643 () Bool)

(assert (=> b!740401 m!691643))

(declare-fun m!691645 () Bool)

(assert (=> b!740401 m!691645))

(declare-fun m!691647 () Bool)

(assert (=> b!740403 m!691647))

(declare-fun m!691649 () Bool)

(assert (=> b!740388 m!691649))

(declare-fun m!691651 () Bool)

(assert (=> start!65288 m!691651))

(declare-fun m!691653 () Bool)

(assert (=> start!65288 m!691653))

(assert (=> b!740407 m!691605))

(assert (=> b!740407 m!691605))

(declare-fun m!691655 () Bool)

(assert (=> b!740407 m!691655))

(assert (=> b!740405 m!691605))

(assert (=> b!740405 m!691605))

(assert (=> b!740405 m!691607))

(assert (=> b!740389 m!691605))

(assert (=> b!740389 m!691605))

(declare-fun m!691657 () Bool)

(assert (=> b!740389 m!691657))

(declare-fun m!691659 () Bool)

(assert (=> b!740410 m!691659))

(declare-fun m!691661 () Bool)

(assert (=> b!740394 m!691661))

(assert (=> b!740398 m!691605))

(assert (=> b!740398 m!691605))

(assert (=> b!740398 m!691629))

(assert (=> b!740398 m!691605))

(assert (=> b!740398 m!691627))

(push 1)

