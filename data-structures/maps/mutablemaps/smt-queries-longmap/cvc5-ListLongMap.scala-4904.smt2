; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67684 () Bool)

(assert start!67684)

(declare-fun b!783587 () Bool)

(declare-fun res!530281 () Bool)

(declare-fun e!435718 () Bool)

(assert (=> b!783587 (=> (not res!530281) (not e!435718))))

(declare-datatypes ((array!42679 0))(
  ( (array!42680 (arr!20424 (Array (_ BitVec 32) (_ BitVec 64))) (size!20845 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42679)

(declare-datatypes ((List!14479 0))(
  ( (Nil!14476) (Cons!14475 (h!15598 (_ BitVec 64)) (t!20802 List!14479)) )
))
(declare-fun arrayNoDuplicates!0 (array!42679 (_ BitVec 32) List!14479) Bool)

(assert (=> b!783587 (= res!530281 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14476))))

(declare-fun b!783588 () Bool)

(declare-fun res!530278 () Bool)

(declare-fun e!435716 () Bool)

(assert (=> b!783588 (=> (not res!530278) (not e!435716))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!783588 (= res!530278 (and (= (size!20845 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20845 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20845 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!435715 () Bool)

(declare-datatypes ((SeekEntryResult!8031 0))(
  ( (MissingZero!8031 (index!34491 (_ BitVec 32))) (Found!8031 (index!34492 (_ BitVec 32))) (Intermediate!8031 (undefined!8843 Bool) (index!34493 (_ BitVec 32)) (x!65476 (_ BitVec 32))) (Undefined!8031) (MissingVacant!8031 (index!34494 (_ BitVec 32))) )
))
(declare-fun lt!349279 () SeekEntryResult!8031)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!783589 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42679 (_ BitVec 32)) SeekEntryResult!8031)

(assert (=> b!783589 (= e!435715 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20424 a!3186) j!159) a!3186 mask!3328) lt!349279))))

(declare-fun res!530275 () Bool)

(assert (=> start!67684 (=> (not res!530275) (not e!435716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67684 (= res!530275 (validMask!0 mask!3328))))

(assert (=> start!67684 e!435716))

(assert (=> start!67684 true))

(declare-fun array_inv!16198 (array!42679) Bool)

(assert (=> start!67684 (array_inv!16198 a!3186)))

(declare-fun b!783590 () Bool)

(assert (=> b!783590 (= e!435716 e!435718)))

(declare-fun res!530283 () Bool)

(assert (=> b!783590 (=> (not res!530283) (not e!435718))))

(declare-fun lt!349275 () SeekEntryResult!8031)

(assert (=> b!783590 (= res!530283 (or (= lt!349275 (MissingZero!8031 i!1173)) (= lt!349275 (MissingVacant!8031 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42679 (_ BitVec 32)) SeekEntryResult!8031)

(assert (=> b!783590 (= lt!349275 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!783591 () Bool)

(declare-fun res!530285 () Bool)

(declare-fun e!435708 () Bool)

(assert (=> b!783591 (=> (not res!530285) (not e!435708))))

(assert (=> b!783591 (= res!530285 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20424 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783592 () Bool)

(declare-fun e!435707 () Bool)

(declare-fun lt!349278 () SeekEntryResult!8031)

(declare-fun lt!349276 () SeekEntryResult!8031)

(assert (=> b!783592 (= e!435707 (= lt!349278 lt!349276))))

(declare-fun b!783593 () Bool)

(declare-datatypes ((Unit!27034 0))(
  ( (Unit!27035) )
))
(declare-fun e!435709 () Unit!27034)

(declare-fun Unit!27036 () Unit!27034)

(assert (=> b!783593 (= e!435709 Unit!27036)))

(declare-fun b!783594 () Bool)

(declare-fun res!530280 () Bool)

(assert (=> b!783594 (=> (not res!530280) (not e!435718))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!783594 (= res!530280 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20845 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20845 a!3186))))))

(declare-fun b!783595 () Bool)

(declare-fun e!435711 () Bool)

(declare-fun e!435710 () Bool)

(assert (=> b!783595 (= e!435711 e!435710)))

(declare-fun res!530277 () Bool)

(assert (=> b!783595 (=> res!530277 e!435710)))

(declare-fun lt!349284 () (_ BitVec 64))

(declare-fun lt!349282 () (_ BitVec 64))

(assert (=> b!783595 (= res!530277 (= lt!349284 lt!349282))))

(assert (=> b!783595 (= lt!349284 (select (store (arr!20424 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!783596 () Bool)

(assert (=> b!783596 (= e!435710 true)))

(assert (=> b!783596 e!435707))

(declare-fun res!530288 () Bool)

(assert (=> b!783596 (=> (not res!530288) (not e!435707))))

(assert (=> b!783596 (= res!530288 (= lt!349284 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349283 () Unit!27034)

(assert (=> b!783596 (= lt!349283 e!435709)))

(declare-fun c!87066 () Bool)

(assert (=> b!783596 (= c!87066 (= lt!349284 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783597 () Bool)

(declare-fun Unit!27037 () Unit!27034)

(assert (=> b!783597 (= e!435709 Unit!27037)))

(assert (=> b!783597 false))

(declare-fun b!783598 () Bool)

(declare-fun e!435713 () Bool)

(assert (=> b!783598 (= e!435713 e!435711)))

(declare-fun res!530274 () Bool)

(assert (=> b!783598 (=> res!530274 e!435711)))

(assert (=> b!783598 (= res!530274 (not (= lt!349276 lt!349279)))))

(assert (=> b!783598 (= lt!349276 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20424 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!783599 () Bool)

(declare-fun e!435712 () Bool)

(assert (=> b!783599 (= e!435708 e!435712)))

(declare-fun res!530276 () Bool)

(assert (=> b!783599 (=> (not res!530276) (not e!435712))))

(declare-fun lt!349285 () SeekEntryResult!8031)

(declare-fun lt!349280 () SeekEntryResult!8031)

(assert (=> b!783599 (= res!530276 (= lt!349285 lt!349280))))

(declare-fun lt!349277 () array!42679)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42679 (_ BitVec 32)) SeekEntryResult!8031)

(assert (=> b!783599 (= lt!349280 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349282 lt!349277 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783599 (= lt!349285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349282 mask!3328) lt!349282 lt!349277 mask!3328))))

(assert (=> b!783599 (= lt!349282 (select (store (arr!20424 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!783599 (= lt!349277 (array!42680 (store (arr!20424 a!3186) i!1173 k!2102) (size!20845 a!3186)))))

(declare-fun b!783600 () Bool)

(declare-fun e!435714 () Bool)

(assert (=> b!783600 (= e!435714 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20424 a!3186) j!159) a!3186 mask!3328) (Found!8031 j!159)))))

(declare-fun b!783601 () Bool)

(declare-fun res!530290 () Bool)

(assert (=> b!783601 (=> (not res!530290) (not e!435708))))

(assert (=> b!783601 (= res!530290 e!435714)))

(declare-fun c!87065 () Bool)

(assert (=> b!783601 (= c!87065 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783602 () Bool)

(declare-fun lt!349274 () SeekEntryResult!8031)

(assert (=> b!783602 (= e!435714 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20424 a!3186) j!159) a!3186 mask!3328) lt!349274))))

(declare-fun b!783603 () Bool)

(declare-fun res!530286 () Bool)

(assert (=> b!783603 (=> (not res!530286) (not e!435707))))

(assert (=> b!783603 (= res!530286 (= (seekEntryOrOpen!0 lt!349282 lt!349277 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349282 lt!349277 mask!3328)))))

(declare-fun b!783604 () Bool)

(declare-fun res!530279 () Bool)

(assert (=> b!783604 (=> (not res!530279) (not e!435716))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783604 (= res!530279 (validKeyInArray!0 (select (arr!20424 a!3186) j!159)))))

(declare-fun b!783605 () Bool)

(assert (=> b!783605 (= e!435712 (not e!435713))))

(declare-fun res!530273 () Bool)

(assert (=> b!783605 (=> res!530273 e!435713)))

(assert (=> b!783605 (= res!530273 (or (not (is-Intermediate!8031 lt!349280)) (bvslt x!1131 (x!65476 lt!349280)) (not (= x!1131 (x!65476 lt!349280))) (not (= index!1321 (index!34493 lt!349280)))))))

(assert (=> b!783605 e!435715))

(declare-fun res!530284 () Bool)

(assert (=> b!783605 (=> (not res!530284) (not e!435715))))

(assert (=> b!783605 (= res!530284 (= lt!349278 lt!349279))))

(assert (=> b!783605 (= lt!349279 (Found!8031 j!159))))

(assert (=> b!783605 (= lt!349278 (seekEntryOrOpen!0 (select (arr!20424 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42679 (_ BitVec 32)) Bool)

(assert (=> b!783605 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349281 () Unit!27034)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27034)

(assert (=> b!783605 (= lt!349281 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783606 () Bool)

(declare-fun res!530272 () Bool)

(assert (=> b!783606 (=> (not res!530272) (not e!435718))))

(assert (=> b!783606 (= res!530272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783607 () Bool)

(declare-fun res!530282 () Bool)

(assert (=> b!783607 (=> (not res!530282) (not e!435716))))

(declare-fun arrayContainsKey!0 (array!42679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783607 (= res!530282 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783608 () Bool)

(declare-fun res!530289 () Bool)

(assert (=> b!783608 (=> (not res!530289) (not e!435716))))

(assert (=> b!783608 (= res!530289 (validKeyInArray!0 k!2102))))

(declare-fun b!783609 () Bool)

(assert (=> b!783609 (= e!435718 e!435708)))

(declare-fun res!530287 () Bool)

(assert (=> b!783609 (=> (not res!530287) (not e!435708))))

(assert (=> b!783609 (= res!530287 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20424 a!3186) j!159) mask!3328) (select (arr!20424 a!3186) j!159) a!3186 mask!3328) lt!349274))))

(assert (=> b!783609 (= lt!349274 (Intermediate!8031 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!67684 res!530275) b!783588))

(assert (= (and b!783588 res!530278) b!783604))

(assert (= (and b!783604 res!530279) b!783608))

(assert (= (and b!783608 res!530289) b!783607))

(assert (= (and b!783607 res!530282) b!783590))

(assert (= (and b!783590 res!530283) b!783606))

(assert (= (and b!783606 res!530272) b!783587))

(assert (= (and b!783587 res!530281) b!783594))

(assert (= (and b!783594 res!530280) b!783609))

(assert (= (and b!783609 res!530287) b!783591))

(assert (= (and b!783591 res!530285) b!783601))

(assert (= (and b!783601 c!87065) b!783602))

(assert (= (and b!783601 (not c!87065)) b!783600))

(assert (= (and b!783601 res!530290) b!783599))

(assert (= (and b!783599 res!530276) b!783605))

(assert (= (and b!783605 res!530284) b!783589))

(assert (= (and b!783605 (not res!530273)) b!783598))

(assert (= (and b!783598 (not res!530274)) b!783595))

(assert (= (and b!783595 (not res!530277)) b!783596))

(assert (= (and b!783596 c!87066) b!783597))

(assert (= (and b!783596 (not c!87066)) b!783593))

(assert (= (and b!783596 res!530288) b!783603))

(assert (= (and b!783603 res!530286) b!783592))

(declare-fun m!726157 () Bool)

(assert (=> b!783599 m!726157))

(declare-fun m!726159 () Bool)

(assert (=> b!783599 m!726159))

(declare-fun m!726161 () Bool)

(assert (=> b!783599 m!726161))

(declare-fun m!726163 () Bool)

(assert (=> b!783599 m!726163))

(declare-fun m!726165 () Bool)

(assert (=> b!783599 m!726165))

(assert (=> b!783599 m!726157))

(declare-fun m!726167 () Bool)

(assert (=> b!783598 m!726167))

(assert (=> b!783598 m!726167))

(declare-fun m!726169 () Bool)

(assert (=> b!783598 m!726169))

(assert (=> b!783602 m!726167))

(assert (=> b!783602 m!726167))

(declare-fun m!726171 () Bool)

(assert (=> b!783602 m!726171))

(declare-fun m!726173 () Bool)

(assert (=> b!783606 m!726173))

(declare-fun m!726175 () Bool)

(assert (=> b!783607 m!726175))

(declare-fun m!726177 () Bool)

(assert (=> b!783590 m!726177))

(assert (=> b!783595 m!726161))

(declare-fun m!726179 () Bool)

(assert (=> b!783595 m!726179))

(declare-fun m!726181 () Bool)

(assert (=> b!783591 m!726181))

(declare-fun m!726183 () Bool)

(assert (=> b!783603 m!726183))

(declare-fun m!726185 () Bool)

(assert (=> b!783603 m!726185))

(declare-fun m!726187 () Bool)

(assert (=> start!67684 m!726187))

(declare-fun m!726189 () Bool)

(assert (=> start!67684 m!726189))

(assert (=> b!783609 m!726167))

(assert (=> b!783609 m!726167))

(declare-fun m!726191 () Bool)

(assert (=> b!783609 m!726191))

(assert (=> b!783609 m!726191))

(assert (=> b!783609 m!726167))

(declare-fun m!726193 () Bool)

(assert (=> b!783609 m!726193))

(declare-fun m!726195 () Bool)

(assert (=> b!783608 m!726195))

(assert (=> b!783589 m!726167))

(assert (=> b!783589 m!726167))

(declare-fun m!726197 () Bool)

(assert (=> b!783589 m!726197))

(assert (=> b!783600 m!726167))

(assert (=> b!783600 m!726167))

(assert (=> b!783600 m!726169))

(declare-fun m!726199 () Bool)

(assert (=> b!783587 m!726199))

(assert (=> b!783605 m!726167))

(assert (=> b!783605 m!726167))

(declare-fun m!726201 () Bool)

(assert (=> b!783605 m!726201))

(declare-fun m!726203 () Bool)

(assert (=> b!783605 m!726203))

(declare-fun m!726205 () Bool)

(assert (=> b!783605 m!726205))

(assert (=> b!783604 m!726167))

(assert (=> b!783604 m!726167))

(declare-fun m!726207 () Bool)

(assert (=> b!783604 m!726207))

(push 1)

