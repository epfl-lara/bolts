; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65496 () Bool)

(assert start!65496)

(declare-fun b!746235 () Bool)

(declare-fun res!503157 () Bool)

(declare-fun e!416762 () Bool)

(assert (=> b!746235 (=> (not res!503157) (not e!416762))))

(declare-datatypes ((array!41622 0))(
  ( (array!41623 (arr!19921 (Array (_ BitVec 32) (_ BitVec 64))) (size!20342 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41622)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41622 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746235 (= res!503157 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746237 () Bool)

(declare-fun e!416763 () Bool)

(declare-fun e!416761 () Bool)

(assert (=> b!746237 (= e!416763 e!416761)))

(declare-fun res!503152 () Bool)

(assert (=> b!746237 (=> res!503152 e!416761)))

(declare-datatypes ((SeekEntryResult!7528 0))(
  ( (MissingZero!7528 (index!32479 (_ BitVec 32))) (Found!7528 (index!32480 (_ BitVec 32))) (Intermediate!7528 (undefined!8340 Bool) (index!32481 (_ BitVec 32)) (x!63455 (_ BitVec 32))) (Undefined!7528) (MissingVacant!7528 (index!32482 (_ BitVec 32))) )
))
(declare-fun lt!331643 () SeekEntryResult!7528)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!331640 () SeekEntryResult!7528)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!331644 () (_ BitVec 64))

(assert (=> b!746237 (= res!503152 (or (not (= lt!331640 lt!331643)) (= (select (store (arr!19921 a!3186) i!1173 k0!2102) index!1321) lt!331644) (not (= (select (store (arr!19921 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41622 (_ BitVec 32)) SeekEntryResult!7528)

(assert (=> b!746237 (= lt!331640 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19921 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746238 () Bool)

(declare-fun res!503158 () Bool)

(declare-fun e!416760 () Bool)

(assert (=> b!746238 (=> (not res!503158) (not e!416760))))

(declare-datatypes ((List!13976 0))(
  ( (Nil!13973) (Cons!13972 (h!15044 (_ BitVec 64)) (t!20299 List!13976)) )
))
(declare-fun arrayNoDuplicates!0 (array!41622 (_ BitVec 32) List!13976) Bool)

(assert (=> b!746238 (= res!503158 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13973))))

(declare-fun e!416764 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!746239 () Bool)

(assert (=> b!746239 (= e!416764 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19921 a!3186) j!159) a!3186 mask!3328) lt!331643))))

(declare-fun b!746240 () Bool)

(declare-fun res!503161 () Bool)

(assert (=> b!746240 (=> (not res!503161) (not e!416762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746240 (= res!503161 (validKeyInArray!0 k0!2102))))

(declare-fun b!746241 () Bool)

(declare-fun e!416758 () Bool)

(declare-fun e!416766 () Bool)

(assert (=> b!746241 (= e!416758 e!416766)))

(declare-fun res!503154 () Bool)

(assert (=> b!746241 (=> (not res!503154) (not e!416766))))

(declare-fun lt!331639 () SeekEntryResult!7528)

(declare-fun lt!331646 () SeekEntryResult!7528)

(assert (=> b!746241 (= res!503154 (= lt!331639 lt!331646))))

(declare-fun lt!331637 () array!41622)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41622 (_ BitVec 32)) SeekEntryResult!7528)

(assert (=> b!746241 (= lt!331646 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331644 lt!331637 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746241 (= lt!331639 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331644 mask!3328) lt!331644 lt!331637 mask!3328))))

(assert (=> b!746241 (= lt!331644 (select (store (arr!19921 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!746241 (= lt!331637 (array!41623 (store (arr!19921 a!3186) i!1173 k0!2102) (size!20342 a!3186)))))

(declare-fun b!746242 () Bool)

(assert (=> b!746242 (= e!416762 e!416760)))

(declare-fun res!503159 () Bool)

(assert (=> b!746242 (=> (not res!503159) (not e!416760))))

(declare-fun lt!331641 () SeekEntryResult!7528)

(assert (=> b!746242 (= res!503159 (or (= lt!331641 (MissingZero!7528 i!1173)) (= lt!331641 (MissingVacant!7528 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41622 (_ BitVec 32)) SeekEntryResult!7528)

(assert (=> b!746242 (= lt!331641 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!746243 () Bool)

(declare-fun e!416759 () Bool)

(assert (=> b!746243 (= e!416759 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19921 a!3186) j!159) a!3186 mask!3328) (Found!7528 j!159)))))

(declare-fun b!746244 () Bool)

(assert (=> b!746244 (= e!416766 (not e!416763))))

(declare-fun res!503156 () Bool)

(assert (=> b!746244 (=> res!503156 e!416763)))

(get-info :version)

(assert (=> b!746244 (= res!503156 (or (not ((_ is Intermediate!7528) lt!331646)) (bvslt x!1131 (x!63455 lt!331646)) (not (= x!1131 (x!63455 lt!331646))) (not (= index!1321 (index!32481 lt!331646)))))))

(assert (=> b!746244 e!416764))

(declare-fun res!503149 () Bool)

(assert (=> b!746244 (=> (not res!503149) (not e!416764))))

(declare-fun lt!331642 () SeekEntryResult!7528)

(assert (=> b!746244 (= res!503149 (= lt!331642 lt!331643))))

(assert (=> b!746244 (= lt!331643 (Found!7528 j!159))))

(assert (=> b!746244 (= lt!331642 (seekEntryOrOpen!0 (select (arr!19921 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41622 (_ BitVec 32)) Bool)

(assert (=> b!746244 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25536 0))(
  ( (Unit!25537) )
))
(declare-fun lt!331645 () Unit!25536)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25536)

(assert (=> b!746244 (= lt!331645 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746245 () Bool)

(declare-fun lt!331638 () SeekEntryResult!7528)

(assert (=> b!746245 (= e!416759 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19921 a!3186) j!159) a!3186 mask!3328) lt!331638))))

(declare-fun b!746236 () Bool)

(declare-fun res!503150 () Bool)

(assert (=> b!746236 (=> (not res!503150) (not e!416758))))

(assert (=> b!746236 (= res!503150 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19921 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!503151 () Bool)

(assert (=> start!65496 (=> (not res!503151) (not e!416762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65496 (= res!503151 (validMask!0 mask!3328))))

(assert (=> start!65496 e!416762))

(assert (=> start!65496 true))

(declare-fun array_inv!15695 (array!41622) Bool)

(assert (=> start!65496 (array_inv!15695 a!3186)))

(declare-fun b!746246 () Bool)

(assert (=> b!746246 (= e!416760 e!416758)))

(declare-fun res!503162 () Bool)

(assert (=> b!746246 (=> (not res!503162) (not e!416758))))

(assert (=> b!746246 (= res!503162 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19921 a!3186) j!159) mask!3328) (select (arr!19921 a!3186) j!159) a!3186 mask!3328) lt!331638))))

(assert (=> b!746246 (= lt!331638 (Intermediate!7528 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746247 () Bool)

(assert (=> b!746247 (= e!416761 true)))

(assert (=> b!746247 (= lt!331642 lt!331640)))

(declare-fun b!746248 () Bool)

(declare-fun res!503163 () Bool)

(assert (=> b!746248 (=> (not res!503163) (not e!416762))))

(assert (=> b!746248 (= res!503163 (and (= (size!20342 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20342 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20342 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746249 () Bool)

(declare-fun res!503148 () Bool)

(assert (=> b!746249 (=> (not res!503148) (not e!416760))))

(assert (=> b!746249 (= res!503148 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20342 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20342 a!3186))))))

(declare-fun b!746250 () Bool)

(declare-fun res!503155 () Bool)

(assert (=> b!746250 (=> (not res!503155) (not e!416760))))

(assert (=> b!746250 (= res!503155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746251 () Bool)

(declare-fun res!503153 () Bool)

(assert (=> b!746251 (=> (not res!503153) (not e!416762))))

(assert (=> b!746251 (= res!503153 (validKeyInArray!0 (select (arr!19921 a!3186) j!159)))))

(declare-fun b!746252 () Bool)

(declare-fun res!503160 () Bool)

(assert (=> b!746252 (=> (not res!503160) (not e!416758))))

(assert (=> b!746252 (= res!503160 e!416759)))

(declare-fun c!81924 () Bool)

(assert (=> b!746252 (= c!81924 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65496 res!503151) b!746248))

(assert (= (and b!746248 res!503163) b!746251))

(assert (= (and b!746251 res!503153) b!746240))

(assert (= (and b!746240 res!503161) b!746235))

(assert (= (and b!746235 res!503157) b!746242))

(assert (= (and b!746242 res!503159) b!746250))

(assert (= (and b!746250 res!503155) b!746238))

(assert (= (and b!746238 res!503158) b!746249))

(assert (= (and b!746249 res!503148) b!746246))

(assert (= (and b!746246 res!503162) b!746236))

(assert (= (and b!746236 res!503150) b!746252))

(assert (= (and b!746252 c!81924) b!746245))

(assert (= (and b!746252 (not c!81924)) b!746243))

(assert (= (and b!746252 res!503160) b!746241))

(assert (= (and b!746241 res!503154) b!746244))

(assert (= (and b!746244 res!503149) b!746239))

(assert (= (and b!746244 (not res!503156)) b!746237))

(assert (= (and b!746237 (not res!503152)) b!746247))

(declare-fun m!696601 () Bool)

(assert (=> b!746240 m!696601))

(declare-fun m!696603 () Bool)

(assert (=> b!746236 m!696603))

(declare-fun m!696605 () Bool)

(assert (=> b!746251 m!696605))

(assert (=> b!746251 m!696605))

(declare-fun m!696607 () Bool)

(assert (=> b!746251 m!696607))

(declare-fun m!696609 () Bool)

(assert (=> start!65496 m!696609))

(declare-fun m!696611 () Bool)

(assert (=> start!65496 m!696611))

(declare-fun m!696613 () Bool)

(assert (=> b!746242 m!696613))

(assert (=> b!746243 m!696605))

(assert (=> b!746243 m!696605))

(declare-fun m!696615 () Bool)

(assert (=> b!746243 m!696615))

(assert (=> b!746239 m!696605))

(assert (=> b!746239 m!696605))

(declare-fun m!696617 () Bool)

(assert (=> b!746239 m!696617))

(declare-fun m!696619 () Bool)

(assert (=> b!746238 m!696619))

(declare-fun m!696621 () Bool)

(assert (=> b!746250 m!696621))

(declare-fun m!696623 () Bool)

(assert (=> b!746237 m!696623))

(declare-fun m!696625 () Bool)

(assert (=> b!746237 m!696625))

(assert (=> b!746237 m!696605))

(assert (=> b!746237 m!696605))

(assert (=> b!746237 m!696615))

(declare-fun m!696627 () Bool)

(assert (=> b!746235 m!696627))

(assert (=> b!746246 m!696605))

(assert (=> b!746246 m!696605))

(declare-fun m!696629 () Bool)

(assert (=> b!746246 m!696629))

(assert (=> b!746246 m!696629))

(assert (=> b!746246 m!696605))

(declare-fun m!696631 () Bool)

(assert (=> b!746246 m!696631))

(assert (=> b!746244 m!696605))

(assert (=> b!746244 m!696605))

(declare-fun m!696633 () Bool)

(assert (=> b!746244 m!696633))

(declare-fun m!696635 () Bool)

(assert (=> b!746244 m!696635))

(declare-fun m!696637 () Bool)

(assert (=> b!746244 m!696637))

(declare-fun m!696639 () Bool)

(assert (=> b!746241 m!696639))

(declare-fun m!696641 () Bool)

(assert (=> b!746241 m!696641))

(assert (=> b!746241 m!696641))

(declare-fun m!696643 () Bool)

(assert (=> b!746241 m!696643))

(assert (=> b!746241 m!696623))

(declare-fun m!696645 () Bool)

(assert (=> b!746241 m!696645))

(assert (=> b!746245 m!696605))

(assert (=> b!746245 m!696605))

(declare-fun m!696647 () Bool)

(assert (=> b!746245 m!696647))

(check-sat (not b!746245) (not b!746237) (not b!746238) (not start!65496) (not b!746243) (not b!746241) (not b!746240) (not b!746251) (not b!746242) (not b!746246) (not b!746244) (not b!746235) (not b!746250) (not b!746239))
(check-sat)
