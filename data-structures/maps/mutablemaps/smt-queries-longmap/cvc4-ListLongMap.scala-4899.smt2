; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67592 () Bool)

(assert start!67592)

(declare-fun b!782284 () Bool)

(declare-fun res!529460 () Bool)

(declare-fun e!435012 () Bool)

(assert (=> b!782284 (=> (not res!529460) (not e!435012))))

(declare-datatypes ((array!42650 0))(
  ( (array!42651 (arr!20411 (Array (_ BitVec 32) (_ BitVec 64))) (size!20832 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42650)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42650 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!782284 (= res!529460 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!782285 () Bool)

(declare-fun res!529465 () Bool)

(declare-fun e!435013 () Bool)

(assert (=> b!782285 (=> (not res!529465) (not e!435013))))

(declare-datatypes ((List!14466 0))(
  ( (Nil!14463) (Cons!14462 (h!15582 (_ BitVec 64)) (t!20789 List!14466)) )
))
(declare-fun arrayNoDuplicates!0 (array!42650 (_ BitVec 32) List!14466) Bool)

(assert (=> b!782285 (= res!529465 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14463))))

(declare-fun b!782286 () Bool)

(declare-datatypes ((Unit!26982 0))(
  ( (Unit!26983) )
))
(declare-fun e!435015 () Unit!26982)

(declare-fun Unit!26984 () Unit!26982)

(assert (=> b!782286 (= e!435015 Unit!26984)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8018 0))(
  ( (MissingZero!8018 (index!34439 (_ BitVec 32))) (Found!8018 (index!34440 (_ BitVec 32))) (Intermediate!8018 (undefined!8830 Bool) (index!34441 (_ BitVec 32)) (x!65414 (_ BitVec 32))) (Undefined!8018) (MissingVacant!8018 (index!34442 (_ BitVec 32))) )
))
(declare-fun lt!348661 () SeekEntryResult!8018)

(declare-fun b!782287 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!435016 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42650 (_ BitVec 32)) SeekEntryResult!8018)

(assert (=> b!782287 (= e!435016 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20411 a!3186) j!159) a!3186 mask!3328) lt!348661))))

(declare-fun b!782288 () Bool)

(declare-fun res!529454 () Bool)

(assert (=> b!782288 (=> (not res!529454) (not e!435013))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!782288 (= res!529454 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20832 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20832 a!3186))))))

(declare-fun b!782289 () Bool)

(declare-fun res!529455 () Bool)

(declare-fun e!435008 () Bool)

(assert (=> b!782289 (=> (not res!529455) (not e!435008))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!782289 (= res!529455 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20411 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!782290 () Bool)

(declare-fun lt!348663 () SeekEntryResult!8018)

(declare-fun e!435011 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42650 (_ BitVec 32)) SeekEntryResult!8018)

(assert (=> b!782290 (= e!435011 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20411 a!3186) j!159) a!3186 mask!3328) lt!348663))))

(declare-fun b!782291 () Bool)

(assert (=> b!782291 (= e!435011 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20411 a!3186) j!159) a!3186 mask!3328) (Found!8018 j!159)))))

(declare-fun b!782292 () Bool)

(declare-fun Unit!26985 () Unit!26982)

(assert (=> b!782292 (= e!435015 Unit!26985)))

(assert (=> b!782292 false))

(declare-fun b!782293 () Bool)

(declare-fun res!529453 () Bool)

(assert (=> b!782293 (=> (not res!529453) (not e!435012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!782293 (= res!529453 (validKeyInArray!0 k!2102))))

(declare-fun b!782295 () Bool)

(declare-fun e!435010 () Bool)

(assert (=> b!782295 (= e!435010 true)))

(assert (=> b!782295 (= (select (store (arr!20411 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348660 () Unit!26982)

(assert (=> b!782295 (= lt!348660 e!435015)))

(declare-fun c!86822 () Bool)

(assert (=> b!782295 (= c!86822 (= (select (store (arr!20411 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782296 () Bool)

(declare-fun e!435014 () Bool)

(assert (=> b!782296 (= e!435014 (not e!435010))))

(declare-fun res!529468 () Bool)

(assert (=> b!782296 (=> res!529468 e!435010)))

(declare-fun lt!348659 () SeekEntryResult!8018)

(assert (=> b!782296 (= res!529468 (or (not (is-Intermediate!8018 lt!348659)) (bvslt x!1131 (x!65414 lt!348659)) (not (= x!1131 (x!65414 lt!348659))) (not (= index!1321 (index!34441 lt!348659)))))))

(assert (=> b!782296 e!435016))

(declare-fun res!529457 () Bool)

(assert (=> b!782296 (=> (not res!529457) (not e!435016))))

(declare-fun lt!348664 () SeekEntryResult!8018)

(assert (=> b!782296 (= res!529457 (= lt!348664 lt!348661))))

(assert (=> b!782296 (= lt!348661 (Found!8018 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42650 (_ BitVec 32)) SeekEntryResult!8018)

(assert (=> b!782296 (= lt!348664 (seekEntryOrOpen!0 (select (arr!20411 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42650 (_ BitVec 32)) Bool)

(assert (=> b!782296 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348655 () Unit!26982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42650 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26982)

(assert (=> b!782296 (= lt!348655 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!782297 () Bool)

(declare-fun res!529463 () Bool)

(assert (=> b!782297 (=> (not res!529463) (not e!435013))))

(assert (=> b!782297 (= res!529463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!782298 () Bool)

(declare-fun res!529459 () Bool)

(assert (=> b!782298 (=> (not res!529459) (not e!435012))))

(assert (=> b!782298 (= res!529459 (validKeyInArray!0 (select (arr!20411 a!3186) j!159)))))

(declare-fun b!782299 () Bool)

(declare-fun res!529458 () Bool)

(assert (=> b!782299 (=> (not res!529458) (not e!435008))))

(assert (=> b!782299 (= res!529458 e!435011)))

(declare-fun c!86823 () Bool)

(assert (=> b!782299 (= c!86823 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!782300 () Bool)

(declare-fun res!529452 () Bool)

(assert (=> b!782300 (=> res!529452 e!435010)))

(declare-fun lt!348662 () (_ BitVec 64))

(assert (=> b!782300 (= res!529452 (= (select (store (arr!20411 a!3186) i!1173 k!2102) index!1321) lt!348662))))

(declare-fun b!782301 () Bool)

(assert (=> b!782301 (= e!435012 e!435013)))

(declare-fun res!529466 () Bool)

(assert (=> b!782301 (=> (not res!529466) (not e!435013))))

(declare-fun lt!348658 () SeekEntryResult!8018)

(assert (=> b!782301 (= res!529466 (or (= lt!348658 (MissingZero!8018 i!1173)) (= lt!348658 (MissingVacant!8018 i!1173))))))

(assert (=> b!782301 (= lt!348658 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!782302 () Bool)

(assert (=> b!782302 (= e!435013 e!435008)))

(declare-fun res!529461 () Bool)

(assert (=> b!782302 (=> (not res!529461) (not e!435008))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!782302 (= res!529461 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20411 a!3186) j!159) mask!3328) (select (arr!20411 a!3186) j!159) a!3186 mask!3328) lt!348663))))

(assert (=> b!782302 (= lt!348663 (Intermediate!8018 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!782294 () Bool)

(declare-fun res!529464 () Bool)

(assert (=> b!782294 (=> res!529464 e!435010)))

(assert (=> b!782294 (= res!529464 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20411 a!3186) j!159) a!3186 mask!3328) lt!348661)))))

(declare-fun res!529462 () Bool)

(assert (=> start!67592 (=> (not res!529462) (not e!435012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67592 (= res!529462 (validMask!0 mask!3328))))

(assert (=> start!67592 e!435012))

(assert (=> start!67592 true))

(declare-fun array_inv!16185 (array!42650) Bool)

(assert (=> start!67592 (array_inv!16185 a!3186)))

(declare-fun b!782303 () Bool)

(declare-fun res!529467 () Bool)

(assert (=> b!782303 (=> (not res!529467) (not e!435012))))

(assert (=> b!782303 (= res!529467 (and (= (size!20832 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20832 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20832 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!782304 () Bool)

(assert (=> b!782304 (= e!435008 e!435014)))

(declare-fun res!529456 () Bool)

(assert (=> b!782304 (=> (not res!529456) (not e!435014))))

(declare-fun lt!348657 () SeekEntryResult!8018)

(assert (=> b!782304 (= res!529456 (= lt!348657 lt!348659))))

(declare-fun lt!348656 () array!42650)

(assert (=> b!782304 (= lt!348659 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348662 lt!348656 mask!3328))))

(assert (=> b!782304 (= lt!348657 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348662 mask!3328) lt!348662 lt!348656 mask!3328))))

(assert (=> b!782304 (= lt!348662 (select (store (arr!20411 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!782304 (= lt!348656 (array!42651 (store (arr!20411 a!3186) i!1173 k!2102) (size!20832 a!3186)))))

(assert (= (and start!67592 res!529462) b!782303))

(assert (= (and b!782303 res!529467) b!782298))

(assert (= (and b!782298 res!529459) b!782293))

(assert (= (and b!782293 res!529453) b!782284))

(assert (= (and b!782284 res!529460) b!782301))

(assert (= (and b!782301 res!529466) b!782297))

(assert (= (and b!782297 res!529463) b!782285))

(assert (= (and b!782285 res!529465) b!782288))

(assert (= (and b!782288 res!529454) b!782302))

(assert (= (and b!782302 res!529461) b!782289))

(assert (= (and b!782289 res!529455) b!782299))

(assert (= (and b!782299 c!86823) b!782290))

(assert (= (and b!782299 (not c!86823)) b!782291))

(assert (= (and b!782299 res!529458) b!782304))

(assert (= (and b!782304 res!529456) b!782296))

(assert (= (and b!782296 res!529457) b!782287))

(assert (= (and b!782296 (not res!529468)) b!782294))

(assert (= (and b!782294 (not res!529464)) b!782300))

(assert (= (and b!782300 (not res!529452)) b!782295))

(assert (= (and b!782295 c!86822) b!782292))

(assert (= (and b!782295 (not c!86822)) b!782286))

(declare-fun m!725155 () Bool)

(assert (=> b!782291 m!725155))

(assert (=> b!782291 m!725155))

(declare-fun m!725157 () Bool)

(assert (=> b!782291 m!725157))

(assert (=> b!782302 m!725155))

(assert (=> b!782302 m!725155))

(declare-fun m!725159 () Bool)

(assert (=> b!782302 m!725159))

(assert (=> b!782302 m!725159))

(assert (=> b!782302 m!725155))

(declare-fun m!725161 () Bool)

(assert (=> b!782302 m!725161))

(declare-fun m!725163 () Bool)

(assert (=> b!782285 m!725163))

(declare-fun m!725165 () Bool)

(assert (=> b!782304 m!725165))

(declare-fun m!725167 () Bool)

(assert (=> b!782304 m!725167))

(declare-fun m!725169 () Bool)

(assert (=> b!782304 m!725169))

(declare-fun m!725171 () Bool)

(assert (=> b!782304 m!725171))

(assert (=> b!782304 m!725171))

(declare-fun m!725173 () Bool)

(assert (=> b!782304 m!725173))

(declare-fun m!725175 () Bool)

(assert (=> b!782289 m!725175))

(assert (=> b!782296 m!725155))

(assert (=> b!782296 m!725155))

(declare-fun m!725177 () Bool)

(assert (=> b!782296 m!725177))

(declare-fun m!725179 () Bool)

(assert (=> b!782296 m!725179))

(declare-fun m!725181 () Bool)

(assert (=> b!782296 m!725181))

(assert (=> b!782287 m!725155))

(assert (=> b!782287 m!725155))

(declare-fun m!725183 () Bool)

(assert (=> b!782287 m!725183))

(assert (=> b!782295 m!725165))

(declare-fun m!725185 () Bool)

(assert (=> b!782295 m!725185))

(assert (=> b!782294 m!725155))

(assert (=> b!782294 m!725155))

(assert (=> b!782294 m!725157))

(declare-fun m!725187 () Bool)

(assert (=> b!782301 m!725187))

(assert (=> b!782300 m!725165))

(assert (=> b!782300 m!725185))

(declare-fun m!725189 () Bool)

(assert (=> b!782284 m!725189))

(declare-fun m!725191 () Bool)

(assert (=> b!782297 m!725191))

(assert (=> b!782298 m!725155))

(assert (=> b!782298 m!725155))

(declare-fun m!725193 () Bool)

(assert (=> b!782298 m!725193))

(declare-fun m!725195 () Bool)

(assert (=> b!782293 m!725195))

(assert (=> b!782290 m!725155))

(assert (=> b!782290 m!725155))

(declare-fun m!725197 () Bool)

(assert (=> b!782290 m!725197))

(declare-fun m!725199 () Bool)

(assert (=> start!67592 m!725199))

(declare-fun m!725201 () Bool)

(assert (=> start!67592 m!725201))

(push 1)

(assert (not b!782284))

(assert (not b!782285))

(assert (not b!782301))

(assert (not b!782291))

(assert (not b!782302))

(assert (not b!782290))

(assert (not b!782297))

(assert (not b!782293))

(assert (not b!782304))

(assert (not b!782287))

(assert (not b!782298))

(assert (not b!782296))

(assert (not start!67592))

(assert (not b!782294))

(check-sat)

