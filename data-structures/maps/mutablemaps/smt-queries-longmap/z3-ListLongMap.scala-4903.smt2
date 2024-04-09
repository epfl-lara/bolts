; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67680 () Bool)

(assert start!67680)

(declare-fun res!530162 () Bool)

(declare-fun e!435638 () Bool)

(assert (=> start!67680 (=> (not res!530162) (not e!435638))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67680 (= res!530162 (validMask!0 mask!3328))))

(assert (=> start!67680 e!435638))

(assert (=> start!67680 true))

(declare-datatypes ((array!42675 0))(
  ( (array!42676 (arr!20422 (Array (_ BitVec 32) (_ BitVec 64))) (size!20843 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42675)

(declare-fun array_inv!16196 (array!42675) Bool)

(assert (=> start!67680 (array_inv!16196 a!3186)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!783453 () Bool)

(declare-fun lt!349206 () (_ BitVec 64))

(declare-fun e!435639 () Bool)

(declare-fun lt!349205 () array!42675)

(declare-datatypes ((SeekEntryResult!8029 0))(
  ( (MissingZero!8029 (index!34483 (_ BitVec 32))) (Found!8029 (index!34484 (_ BitVec 32))) (Intermediate!8029 (undefined!8841 Bool) (index!34485 (_ BitVec 32)) (x!65466 (_ BitVec 32))) (Undefined!8029) (MissingVacant!8029 (index!34486 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42675 (_ BitVec 32)) SeekEntryResult!8029)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42675 (_ BitVec 32)) SeekEntryResult!8029)

(assert (=> b!783453 (= e!435639 (= (seekEntryOrOpen!0 lt!349206 lt!349205 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349206 lt!349205 mask!3328)))))

(declare-fun b!783454 () Bool)

(declare-fun e!435644 () Bool)

(declare-fun e!435636 () Bool)

(assert (=> b!783454 (= e!435644 e!435636)))

(declare-fun res!530164 () Bool)

(assert (=> b!783454 (=> (not res!530164) (not e!435636))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!349204 () SeekEntryResult!8029)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42675 (_ BitVec 32)) SeekEntryResult!8029)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783454 (= res!530164 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20422 a!3186) j!159) mask!3328) (select (arr!20422 a!3186) j!159) a!3186 mask!3328) lt!349204))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783454 (= lt!349204 (Intermediate!8029 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783455 () Bool)

(declare-fun res!530163 () Bool)

(assert (=> b!783455 (=> (not res!530163) (not e!435638))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783455 (= res!530163 (validKeyInArray!0 (select (arr!20422 a!3186) j!159)))))

(declare-fun b!783456 () Bool)

(declare-fun e!435640 () Bool)

(declare-fun e!435642 () Bool)

(assert (=> b!783456 (= e!435640 (not e!435642))))

(declare-fun res!530171 () Bool)

(assert (=> b!783456 (=> res!530171 e!435642)))

(declare-fun lt!349209 () SeekEntryResult!8029)

(get-info :version)

(assert (=> b!783456 (= res!530171 (or (not ((_ is Intermediate!8029) lt!349209)) (bvslt x!1131 (x!65466 lt!349209)) (not (= x!1131 (x!65466 lt!349209))) (not (= index!1321 (index!34485 lt!349209)))))))

(declare-fun e!435641 () Bool)

(assert (=> b!783456 e!435641))

(declare-fun res!530175 () Bool)

(assert (=> b!783456 (=> (not res!530175) (not e!435641))))

(declare-fun lt!349211 () SeekEntryResult!8029)

(declare-fun lt!349210 () SeekEntryResult!8029)

(assert (=> b!783456 (= res!530175 (= lt!349211 lt!349210))))

(assert (=> b!783456 (= lt!349210 (Found!8029 j!159))))

(assert (=> b!783456 (= lt!349211 (seekEntryOrOpen!0 (select (arr!20422 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42675 (_ BitVec 32)) Bool)

(assert (=> b!783456 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27026 0))(
  ( (Unit!27027) )
))
(declare-fun lt!349208 () Unit!27026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27026)

(assert (=> b!783456 (= lt!349208 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783457 () Bool)

(declare-fun res!530170 () Bool)

(assert (=> b!783457 (=> (not res!530170) (not e!435636))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783457 (= res!530170 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20422 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!435637 () Bool)

(declare-fun b!783458 () Bool)

(assert (=> b!783458 (= e!435637 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20422 a!3186) j!159) a!3186 mask!3328) lt!349204))))

(declare-fun b!783459 () Bool)

(declare-fun res!530169 () Bool)

(assert (=> b!783459 (=> (not res!530169) (not e!435638))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783459 (= res!530169 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783460 () Bool)

(declare-fun res!530172 () Bool)

(assert (=> b!783460 (=> (not res!530172) (not e!435638))))

(assert (=> b!783460 (= res!530172 (validKeyInArray!0 k0!2102))))

(declare-fun b!783461 () Bool)

(declare-fun res!530177 () Bool)

(assert (=> b!783461 (=> (not res!530177) (not e!435638))))

(assert (=> b!783461 (= res!530177 (and (= (size!20843 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20843 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20843 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783462 () Bool)

(declare-fun res!530179 () Bool)

(assert (=> b!783462 (=> (not res!530179) (not e!435644))))

(assert (=> b!783462 (= res!530179 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20843 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20843 a!3186))))))

(declare-fun b!783463 () Bool)

(assert (=> b!783463 (= e!435638 e!435644)))

(declare-fun res!530165 () Bool)

(assert (=> b!783463 (=> (not res!530165) (not e!435644))))

(declare-fun lt!349203 () SeekEntryResult!8029)

(assert (=> b!783463 (= res!530165 (or (= lt!349203 (MissingZero!8029 i!1173)) (= lt!349203 (MissingVacant!8029 i!1173))))))

(assert (=> b!783463 (= lt!349203 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!783464 () Bool)

(declare-fun res!530168 () Bool)

(assert (=> b!783464 (=> (not res!530168) (not e!435644))))

(assert (=> b!783464 (= res!530168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783465 () Bool)

(assert (=> b!783465 (= e!435637 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20422 a!3186) j!159) a!3186 mask!3328) (Found!8029 j!159)))))

(declare-fun b!783466 () Bool)

(assert (=> b!783466 (= e!435641 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20422 a!3186) j!159) a!3186 mask!3328) lt!349210))))

(declare-fun b!783467 () Bool)

(declare-fun e!435635 () Bool)

(assert (=> b!783467 (= e!435642 e!435635)))

(declare-fun res!530167 () Bool)

(assert (=> b!783467 (=> res!530167 e!435635)))

(declare-fun lt!349212 () SeekEntryResult!8029)

(assert (=> b!783467 (= res!530167 (not (= lt!349212 lt!349210)))))

(assert (=> b!783467 (= lt!349212 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20422 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!783468 () Bool)

(assert (=> b!783468 (= e!435636 e!435640)))

(declare-fun res!530178 () Bool)

(assert (=> b!783468 (=> (not res!530178) (not e!435640))))

(declare-fun lt!349213 () SeekEntryResult!8029)

(assert (=> b!783468 (= res!530178 (= lt!349213 lt!349209))))

(assert (=> b!783468 (= lt!349209 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349206 lt!349205 mask!3328))))

(assert (=> b!783468 (= lt!349213 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349206 mask!3328) lt!349206 lt!349205 mask!3328))))

(assert (=> b!783468 (= lt!349206 (select (store (arr!20422 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!783468 (= lt!349205 (array!42676 (store (arr!20422 a!3186) i!1173 k0!2102) (size!20843 a!3186)))))

(declare-fun b!783469 () Bool)

(declare-fun e!435643 () Bool)

(assert (=> b!783469 (= e!435643 (= lt!349211 lt!349212))))

(assert (=> b!783469 e!435639))

(declare-fun res!530173 () Bool)

(assert (=> b!783469 (=> (not res!530173) (not e!435639))))

(declare-fun lt!349207 () (_ BitVec 64))

(assert (=> b!783469 (= res!530173 (= lt!349207 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349202 () Unit!27026)

(declare-fun e!435646 () Unit!27026)

(assert (=> b!783469 (= lt!349202 e!435646)))

(declare-fun c!87053 () Bool)

(assert (=> b!783469 (= c!87053 (= lt!349207 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783470 () Bool)

(declare-fun res!530176 () Bool)

(assert (=> b!783470 (=> (not res!530176) (not e!435636))))

(assert (=> b!783470 (= res!530176 e!435637)))

(declare-fun c!87054 () Bool)

(assert (=> b!783470 (= c!87054 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783471 () Bool)

(declare-fun Unit!27028 () Unit!27026)

(assert (=> b!783471 (= e!435646 Unit!27028)))

(declare-fun b!783472 () Bool)

(declare-fun Unit!27029 () Unit!27026)

(assert (=> b!783472 (= e!435646 Unit!27029)))

(assert (=> b!783472 false))

(declare-fun b!783473 () Bool)

(declare-fun res!530166 () Bool)

(assert (=> b!783473 (=> (not res!530166) (not e!435644))))

(declare-datatypes ((List!14477 0))(
  ( (Nil!14474) (Cons!14473 (h!15596 (_ BitVec 64)) (t!20800 List!14477)) )
))
(declare-fun arrayNoDuplicates!0 (array!42675 (_ BitVec 32) List!14477) Bool)

(assert (=> b!783473 (= res!530166 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14474))))

(declare-fun b!783474 () Bool)

(assert (=> b!783474 (= e!435635 e!435643)))

(declare-fun res!530174 () Bool)

(assert (=> b!783474 (=> res!530174 e!435643)))

(assert (=> b!783474 (= res!530174 (= lt!349207 lt!349206))))

(assert (=> b!783474 (= lt!349207 (select (store (arr!20422 a!3186) i!1173 k0!2102) index!1321))))

(assert (= (and start!67680 res!530162) b!783461))

(assert (= (and b!783461 res!530177) b!783455))

(assert (= (and b!783455 res!530163) b!783460))

(assert (= (and b!783460 res!530172) b!783459))

(assert (= (and b!783459 res!530169) b!783463))

(assert (= (and b!783463 res!530165) b!783464))

(assert (= (and b!783464 res!530168) b!783473))

(assert (= (and b!783473 res!530166) b!783462))

(assert (= (and b!783462 res!530179) b!783454))

(assert (= (and b!783454 res!530164) b!783457))

(assert (= (and b!783457 res!530170) b!783470))

(assert (= (and b!783470 c!87054) b!783458))

(assert (= (and b!783470 (not c!87054)) b!783465))

(assert (= (and b!783470 res!530176) b!783468))

(assert (= (and b!783468 res!530178) b!783456))

(assert (= (and b!783456 res!530175) b!783466))

(assert (= (and b!783456 (not res!530171)) b!783467))

(assert (= (and b!783467 (not res!530167)) b!783474))

(assert (= (and b!783474 (not res!530174)) b!783469))

(assert (= (and b!783469 c!87053) b!783472))

(assert (= (and b!783469 (not c!87053)) b!783471))

(assert (= (and b!783469 res!530173) b!783453))

(declare-fun m!726053 () Bool)

(assert (=> b!783459 m!726053))

(declare-fun m!726055 () Bool)

(assert (=> b!783455 m!726055))

(assert (=> b!783455 m!726055))

(declare-fun m!726057 () Bool)

(assert (=> b!783455 m!726057))

(declare-fun m!726059 () Bool)

(assert (=> start!67680 m!726059))

(declare-fun m!726061 () Bool)

(assert (=> start!67680 m!726061))

(declare-fun m!726063 () Bool)

(assert (=> b!783457 m!726063))

(declare-fun m!726065 () Bool)

(assert (=> b!783473 m!726065))

(assert (=> b!783466 m!726055))

(assert (=> b!783466 m!726055))

(declare-fun m!726067 () Bool)

(assert (=> b!783466 m!726067))

(declare-fun m!726069 () Bool)

(assert (=> b!783463 m!726069))

(declare-fun m!726071 () Bool)

(assert (=> b!783468 m!726071))

(declare-fun m!726073 () Bool)

(assert (=> b!783468 m!726073))

(assert (=> b!783468 m!726071))

(declare-fun m!726075 () Bool)

(assert (=> b!783468 m!726075))

(declare-fun m!726077 () Bool)

(assert (=> b!783468 m!726077))

(declare-fun m!726079 () Bool)

(assert (=> b!783468 m!726079))

(assert (=> b!783465 m!726055))

(assert (=> b!783465 m!726055))

(declare-fun m!726081 () Bool)

(assert (=> b!783465 m!726081))

(assert (=> b!783467 m!726055))

(assert (=> b!783467 m!726055))

(assert (=> b!783467 m!726081))

(declare-fun m!726083 () Bool)

(assert (=> b!783464 m!726083))

(declare-fun m!726085 () Bool)

(assert (=> b!783453 m!726085))

(declare-fun m!726087 () Bool)

(assert (=> b!783453 m!726087))

(assert (=> b!783474 m!726077))

(declare-fun m!726089 () Bool)

(assert (=> b!783474 m!726089))

(declare-fun m!726091 () Bool)

(assert (=> b!783460 m!726091))

(assert (=> b!783456 m!726055))

(assert (=> b!783456 m!726055))

(declare-fun m!726093 () Bool)

(assert (=> b!783456 m!726093))

(declare-fun m!726095 () Bool)

(assert (=> b!783456 m!726095))

(declare-fun m!726097 () Bool)

(assert (=> b!783456 m!726097))

(assert (=> b!783458 m!726055))

(assert (=> b!783458 m!726055))

(declare-fun m!726099 () Bool)

(assert (=> b!783458 m!726099))

(assert (=> b!783454 m!726055))

(assert (=> b!783454 m!726055))

(declare-fun m!726101 () Bool)

(assert (=> b!783454 m!726101))

(assert (=> b!783454 m!726101))

(assert (=> b!783454 m!726055))

(declare-fun m!726103 () Bool)

(assert (=> b!783454 m!726103))

(check-sat (not b!783468) (not b!783467) (not b!783460) (not b!783464) (not b!783455) (not b!783453) (not b!783456) (not b!783458) (not b!783454) (not b!783459) (not b!783466) (not b!783463) (not b!783465) (not b!783473) (not start!67680))
(check-sat)
