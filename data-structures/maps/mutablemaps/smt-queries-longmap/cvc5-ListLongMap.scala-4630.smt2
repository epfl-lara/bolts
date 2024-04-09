; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64498 () Bool)

(assert start!64498)

(declare-fun res!486444 () Bool)

(declare-fun e!406151 () Bool)

(assert (=> start!64498 (=> (not res!486444) (not e!406151))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64498 (= res!486444 (validMask!0 mask!3328))))

(assert (=> start!64498 e!406151))

(assert (=> start!64498 true))

(declare-datatypes ((array!40969 0))(
  ( (array!40970 (arr!19602 (Array (_ BitVec 32) (_ BitVec 64))) (size!20023 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40969)

(declare-fun array_inv!15376 (array!40969) Bool)

(assert (=> start!64498 (array_inv!15376 a!3186)))

(declare-fun b!725185 () Bool)

(declare-fun res!486446 () Bool)

(assert (=> b!725185 (=> (not res!486446) (not e!406151))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40969 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725185 (= res!486446 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725186 () Bool)

(declare-fun e!406147 () Bool)

(declare-fun e!406150 () Bool)

(assert (=> b!725186 (= e!406147 e!406150)))

(declare-fun res!486443 () Bool)

(assert (=> b!725186 (=> (not res!486443) (not e!406150))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7209 0))(
  ( (MissingZero!7209 (index!31203 (_ BitVec 32))) (Found!7209 (index!31204 (_ BitVec 32))) (Intermediate!7209 (undefined!8021 Bool) (index!31205 (_ BitVec 32)) (x!62228 (_ BitVec 32))) (Undefined!7209) (MissingVacant!7209 (index!31206 (_ BitVec 32))) )
))
(declare-fun lt!321262 () SeekEntryResult!7209)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40969 (_ BitVec 32)) SeekEntryResult!7209)

(assert (=> b!725186 (= res!486443 (= (seekEntryOrOpen!0 (select (arr!19602 a!3186) j!159) a!3186 mask!3328) lt!321262))))

(assert (=> b!725186 (= lt!321262 (Found!7209 j!159))))

(declare-fun b!725187 () Bool)

(declare-fun res!486440 () Bool)

(declare-fun e!406146 () Bool)

(assert (=> b!725187 (=> (not res!486440) (not e!406146))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725187 (= res!486440 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19602 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725188 () Bool)

(declare-fun e!406149 () Bool)

(assert (=> b!725188 (= e!406151 e!406149)))

(declare-fun res!486451 () Bool)

(assert (=> b!725188 (=> (not res!486451) (not e!406149))))

(declare-fun lt!321265 () SeekEntryResult!7209)

(assert (=> b!725188 (= res!486451 (or (= lt!321265 (MissingZero!7209 i!1173)) (= lt!321265 (MissingVacant!7209 i!1173))))))

(assert (=> b!725188 (= lt!321265 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725189 () Bool)

(declare-fun res!486448 () Bool)

(assert (=> b!725189 (=> (not res!486448) (not e!406149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40969 (_ BitVec 32)) Bool)

(assert (=> b!725189 (= res!486448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725190 () Bool)

(declare-fun e!406148 () Bool)

(assert (=> b!725190 (= e!406146 e!406148)))

(declare-fun res!486445 () Bool)

(assert (=> b!725190 (=> (not res!486445) (not e!406148))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!321263 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!321261 () array!40969)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40969 (_ BitVec 32)) SeekEntryResult!7209)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725190 (= res!486445 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321263 mask!3328) lt!321263 lt!321261 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321263 lt!321261 mask!3328)))))

(assert (=> b!725190 (= lt!321263 (select (store (arr!19602 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725190 (= lt!321261 (array!40970 (store (arr!19602 a!3186) i!1173 k!2102) (size!20023 a!3186)))))

(declare-fun b!725191 () Bool)

(declare-fun res!486453 () Bool)

(assert (=> b!725191 (=> (not res!486453) (not e!406146))))

(declare-fun e!406152 () Bool)

(assert (=> b!725191 (= res!486453 e!406152)))

(declare-fun c!79746 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725191 (= c!79746 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725192 () Bool)

(declare-fun res!486447 () Bool)

(assert (=> b!725192 (=> (not res!486447) (not e!406149))))

(declare-datatypes ((List!13657 0))(
  ( (Nil!13654) (Cons!13653 (h!14710 (_ BitVec 64)) (t!19980 List!13657)) )
))
(declare-fun arrayNoDuplicates!0 (array!40969 (_ BitVec 32) List!13657) Bool)

(assert (=> b!725192 (= res!486447 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13654))))

(declare-fun b!725193 () Bool)

(assert (=> b!725193 (= e!406148 (not (bvsge mask!3328 #b00000000000000000000000000000000)))))

(assert (=> b!725193 e!406147))

(declare-fun res!486449 () Bool)

(assert (=> b!725193 (=> (not res!486449) (not e!406147))))

(assert (=> b!725193 (= res!486449 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24736 0))(
  ( (Unit!24737) )
))
(declare-fun lt!321264 () Unit!24736)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40969 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24736)

(assert (=> b!725193 (= lt!321264 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725194 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40969 (_ BitVec 32)) SeekEntryResult!7209)

(assert (=> b!725194 (= e!406150 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19602 a!3186) j!159) a!3186 mask!3328) lt!321262))))

(declare-fun b!725195 () Bool)

(assert (=> b!725195 (= e!406149 e!406146)))

(declare-fun res!486442 () Bool)

(assert (=> b!725195 (=> (not res!486442) (not e!406146))))

(declare-fun lt!321266 () SeekEntryResult!7209)

(assert (=> b!725195 (= res!486442 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19602 a!3186) j!159) mask!3328) (select (arr!19602 a!3186) j!159) a!3186 mask!3328) lt!321266))))

(assert (=> b!725195 (= lt!321266 (Intermediate!7209 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725196 () Bool)

(declare-fun res!486439 () Bool)

(assert (=> b!725196 (=> (not res!486439) (not e!406151))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725196 (= res!486439 (validKeyInArray!0 (select (arr!19602 a!3186) j!159)))))

(declare-fun b!725197 () Bool)

(assert (=> b!725197 (= e!406152 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19602 a!3186) j!159) a!3186 mask!3328) lt!321266))))

(declare-fun b!725198 () Bool)

(declare-fun res!486452 () Bool)

(assert (=> b!725198 (=> (not res!486452) (not e!406151))))

(assert (=> b!725198 (= res!486452 (and (= (size!20023 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20023 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20023 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725199 () Bool)

(declare-fun res!486450 () Bool)

(assert (=> b!725199 (=> (not res!486450) (not e!406151))))

(assert (=> b!725199 (= res!486450 (validKeyInArray!0 k!2102))))

(declare-fun b!725200 () Bool)

(declare-fun res!486441 () Bool)

(assert (=> b!725200 (=> (not res!486441) (not e!406149))))

(assert (=> b!725200 (= res!486441 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20023 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20023 a!3186))))))

(declare-fun b!725201 () Bool)

(assert (=> b!725201 (= e!406152 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19602 a!3186) j!159) a!3186 mask!3328) (Found!7209 j!159)))))

(assert (= (and start!64498 res!486444) b!725198))

(assert (= (and b!725198 res!486452) b!725196))

(assert (= (and b!725196 res!486439) b!725199))

(assert (= (and b!725199 res!486450) b!725185))

(assert (= (and b!725185 res!486446) b!725188))

(assert (= (and b!725188 res!486451) b!725189))

(assert (= (and b!725189 res!486448) b!725192))

(assert (= (and b!725192 res!486447) b!725200))

(assert (= (and b!725200 res!486441) b!725195))

(assert (= (and b!725195 res!486442) b!725187))

(assert (= (and b!725187 res!486440) b!725191))

(assert (= (and b!725191 c!79746) b!725197))

(assert (= (and b!725191 (not c!79746)) b!725201))

(assert (= (and b!725191 res!486453) b!725190))

(assert (= (and b!725190 res!486445) b!725193))

(assert (= (and b!725193 res!486449) b!725186))

(assert (= (and b!725186 res!486443) b!725194))

(declare-fun m!679459 () Bool)

(assert (=> b!725187 m!679459))

(declare-fun m!679461 () Bool)

(assert (=> b!725201 m!679461))

(assert (=> b!725201 m!679461))

(declare-fun m!679463 () Bool)

(assert (=> b!725201 m!679463))

(declare-fun m!679465 () Bool)

(assert (=> start!64498 m!679465))

(declare-fun m!679467 () Bool)

(assert (=> start!64498 m!679467))

(declare-fun m!679469 () Bool)

(assert (=> b!725193 m!679469))

(declare-fun m!679471 () Bool)

(assert (=> b!725193 m!679471))

(assert (=> b!725186 m!679461))

(assert (=> b!725186 m!679461))

(declare-fun m!679473 () Bool)

(assert (=> b!725186 m!679473))

(declare-fun m!679475 () Bool)

(assert (=> b!725190 m!679475))

(declare-fun m!679477 () Bool)

(assert (=> b!725190 m!679477))

(declare-fun m!679479 () Bool)

(assert (=> b!725190 m!679479))

(declare-fun m!679481 () Bool)

(assert (=> b!725190 m!679481))

(assert (=> b!725190 m!679481))

(declare-fun m!679483 () Bool)

(assert (=> b!725190 m!679483))

(declare-fun m!679485 () Bool)

(assert (=> b!725188 m!679485))

(declare-fun m!679487 () Bool)

(assert (=> b!725189 m!679487))

(assert (=> b!725194 m!679461))

(assert (=> b!725194 m!679461))

(declare-fun m!679489 () Bool)

(assert (=> b!725194 m!679489))

(assert (=> b!725197 m!679461))

(assert (=> b!725197 m!679461))

(declare-fun m!679491 () Bool)

(assert (=> b!725197 m!679491))

(assert (=> b!725196 m!679461))

(assert (=> b!725196 m!679461))

(declare-fun m!679493 () Bool)

(assert (=> b!725196 m!679493))

(assert (=> b!725195 m!679461))

(assert (=> b!725195 m!679461))

(declare-fun m!679495 () Bool)

(assert (=> b!725195 m!679495))

(assert (=> b!725195 m!679495))

(assert (=> b!725195 m!679461))

(declare-fun m!679497 () Bool)

(assert (=> b!725195 m!679497))

(declare-fun m!679499 () Bool)

(assert (=> b!725199 m!679499))

(declare-fun m!679501 () Bool)

(assert (=> b!725185 m!679501))

(declare-fun m!679503 () Bool)

(assert (=> b!725192 m!679503))

(push 1)

