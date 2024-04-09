; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67682 () Bool)

(assert start!67682)

(declare-fun b!783519 () Bool)

(declare-fun res!530224 () Bool)

(declare-fun e!435679 () Bool)

(assert (=> b!783519 (=> (not res!530224) (not e!435679))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42677 0))(
  ( (array!42678 (arr!20423 (Array (_ BitVec 32) (_ BitVec 64))) (size!20844 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42677)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783519 (= res!530224 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20423 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783520 () Bool)

(declare-fun e!435673 () Bool)

(assert (=> b!783520 (= e!435673 e!435679)))

(declare-fun res!530219 () Bool)

(assert (=> b!783520 (=> (not res!530219) (not e!435679))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8030 0))(
  ( (MissingZero!8030 (index!34487 (_ BitVec 32))) (Found!8030 (index!34488 (_ BitVec 32))) (Intermediate!8030 (undefined!8842 Bool) (index!34489 (_ BitVec 32)) (x!65467 (_ BitVec 32))) (Undefined!8030) (MissingVacant!8030 (index!34490 (_ BitVec 32))) )
))
(declare-fun lt!349244 () SeekEntryResult!8030)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42677 (_ BitVec 32)) SeekEntryResult!8030)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783520 (= res!530219 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20423 a!3186) j!159) mask!3328) (select (arr!20423 a!3186) j!159) a!3186 mask!3328) lt!349244))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783520 (= lt!349244 (Intermediate!8030 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783521 () Bool)

(declare-fun res!530228 () Bool)

(declare-fun e!435677 () Bool)

(assert (=> b!783521 (=> (not res!530228) (not e!435677))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783521 (= res!530228 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783522 () Bool)

(declare-fun res!530227 () Bool)

(assert (=> b!783522 (=> (not res!530227) (not e!435673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42677 (_ BitVec 32)) Bool)

(assert (=> b!783522 (= res!530227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783523 () Bool)

(declare-fun res!530223 () Bool)

(assert (=> b!783523 (=> (not res!530223) (not e!435677))))

(assert (=> b!783523 (= res!530223 (and (= (size!20844 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20844 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20844 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783524 () Bool)

(declare-fun res!530216 () Bool)

(assert (=> b!783524 (=> (not res!530216) (not e!435673))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!783524 (= res!530216 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20844 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20844 a!3186))))))

(declare-fun b!783525 () Bool)

(declare-datatypes ((Unit!27030 0))(
  ( (Unit!27031) )
))
(declare-fun e!435675 () Unit!27030)

(declare-fun Unit!27032 () Unit!27030)

(assert (=> b!783525 (= e!435675 Unit!27032)))

(declare-fun b!783526 () Bool)

(declare-fun e!435671 () Bool)

(declare-fun lt!349245 () SeekEntryResult!8030)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42677 (_ BitVec 32)) SeekEntryResult!8030)

(assert (=> b!783526 (= e!435671 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20423 a!3186) j!159) a!3186 mask!3328) lt!349245))))

(declare-fun b!783527 () Bool)

(declare-fun res!530229 () Bool)

(assert (=> b!783527 (=> (not res!530229) (not e!435677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783527 (= res!530229 (validKeyInArray!0 k!2102))))

(declare-fun b!783528 () Bool)

(assert (=> b!783528 (= e!435677 e!435673)))

(declare-fun res!530232 () Bool)

(assert (=> b!783528 (=> (not res!530232) (not e!435673))))

(declare-fun lt!349243 () SeekEntryResult!8030)

(assert (=> b!783528 (= res!530232 (or (= lt!349243 (MissingZero!8030 i!1173)) (= lt!349243 (MissingVacant!8030 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42677 (_ BitVec 32)) SeekEntryResult!8030)

(assert (=> b!783528 (= lt!349243 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!783529 () Bool)

(declare-fun e!435676 () Bool)

(declare-fun e!435680 () Bool)

(assert (=> b!783529 (= e!435676 e!435680)))

(declare-fun res!530226 () Bool)

(assert (=> b!783529 (=> res!530226 e!435680)))

(declare-fun lt!349249 () (_ BitVec 64))

(declare-fun lt!349241 () (_ BitVec 64))

(assert (=> b!783529 (= res!530226 (= lt!349249 lt!349241))))

(assert (=> b!783529 (= lt!349249 (select (store (arr!20423 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!783530 () Bool)

(declare-fun e!435672 () Bool)

(assert (=> b!783530 (= e!435679 e!435672)))

(declare-fun res!530218 () Bool)

(assert (=> b!783530 (=> (not res!530218) (not e!435672))))

(declare-fun lt!349238 () SeekEntryResult!8030)

(declare-fun lt!349240 () SeekEntryResult!8030)

(assert (=> b!783530 (= res!530218 (= lt!349238 lt!349240))))

(declare-fun lt!349239 () array!42677)

(assert (=> b!783530 (= lt!349240 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349241 lt!349239 mask!3328))))

(assert (=> b!783530 (= lt!349238 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349241 mask!3328) lt!349241 lt!349239 mask!3328))))

(assert (=> b!783530 (= lt!349241 (select (store (arr!20423 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!783530 (= lt!349239 (array!42678 (store (arr!20423 a!3186) i!1173 k!2102) (size!20844 a!3186)))))

(declare-fun b!783531 () Bool)

(declare-fun res!530230 () Bool)

(assert (=> b!783531 (=> (not res!530230) (not e!435679))))

(declare-fun e!435681 () Bool)

(assert (=> b!783531 (= res!530230 e!435681)))

(declare-fun c!87059 () Bool)

(assert (=> b!783531 (= c!87059 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783532 () Bool)

(declare-fun e!435682 () Bool)

(assert (=> b!783532 (= e!435672 (not e!435682))))

(declare-fun res!530233 () Bool)

(assert (=> b!783532 (=> res!530233 e!435682)))

(assert (=> b!783532 (= res!530233 (or (not (is-Intermediate!8030 lt!349240)) (bvslt x!1131 (x!65467 lt!349240)) (not (= x!1131 (x!65467 lt!349240))) (not (= index!1321 (index!34489 lt!349240)))))))

(assert (=> b!783532 e!435671))

(declare-fun res!530225 () Bool)

(assert (=> b!783532 (=> (not res!530225) (not e!435671))))

(declare-fun lt!349248 () SeekEntryResult!8030)

(assert (=> b!783532 (= res!530225 (= lt!349248 lt!349245))))

(assert (=> b!783532 (= lt!349245 (Found!8030 j!159))))

(assert (=> b!783532 (= lt!349248 (seekEntryOrOpen!0 (select (arr!20423 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!783532 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349247 () Unit!27030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27030)

(assert (=> b!783532 (= lt!349247 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!530231 () Bool)

(assert (=> start!67682 (=> (not res!530231) (not e!435677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67682 (= res!530231 (validMask!0 mask!3328))))

(assert (=> start!67682 e!435677))

(assert (=> start!67682 true))

(declare-fun array_inv!16197 (array!42677) Bool)

(assert (=> start!67682 (array_inv!16197 a!3186)))

(declare-fun b!783533 () Bool)

(assert (=> b!783533 (= e!435682 e!435676)))

(declare-fun res!530221 () Bool)

(assert (=> b!783533 (=> res!530221 e!435676)))

(declare-fun lt!349246 () SeekEntryResult!8030)

(assert (=> b!783533 (= res!530221 (not (= lt!349246 lt!349245)))))

(assert (=> b!783533 (= lt!349246 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20423 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!783534 () Bool)

(assert (=> b!783534 (= e!435680 (= lt!349248 lt!349246))))

(declare-fun e!435674 () Bool)

(assert (=> b!783534 e!435674))

(declare-fun res!530217 () Bool)

(assert (=> b!783534 (=> (not res!530217) (not e!435674))))

(assert (=> b!783534 (= res!530217 (= lt!349249 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349242 () Unit!27030)

(assert (=> b!783534 (= lt!349242 e!435675)))

(declare-fun c!87060 () Bool)

(assert (=> b!783534 (= c!87060 (= lt!349249 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783535 () Bool)

(declare-fun res!530220 () Bool)

(assert (=> b!783535 (=> (not res!530220) (not e!435677))))

(assert (=> b!783535 (= res!530220 (validKeyInArray!0 (select (arr!20423 a!3186) j!159)))))

(declare-fun b!783536 () Bool)

(assert (=> b!783536 (= e!435674 (= (seekEntryOrOpen!0 lt!349241 lt!349239 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349241 lt!349239 mask!3328)))))

(declare-fun b!783537 () Bool)

(declare-fun res!530222 () Bool)

(assert (=> b!783537 (=> (not res!530222) (not e!435673))))

(declare-datatypes ((List!14478 0))(
  ( (Nil!14475) (Cons!14474 (h!15597 (_ BitVec 64)) (t!20801 List!14478)) )
))
(declare-fun arrayNoDuplicates!0 (array!42677 (_ BitVec 32) List!14478) Bool)

(assert (=> b!783537 (= res!530222 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14475))))

(declare-fun b!783538 () Bool)

(assert (=> b!783538 (= e!435681 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20423 a!3186) j!159) a!3186 mask!3328) (Found!8030 j!159)))))

(declare-fun b!783539 () Bool)

(assert (=> b!783539 (= e!435681 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20423 a!3186) j!159) a!3186 mask!3328) lt!349244))))

(declare-fun b!783540 () Bool)

(declare-fun Unit!27033 () Unit!27030)

(assert (=> b!783540 (= e!435675 Unit!27033)))

(assert (=> b!783540 false))

(assert (= (and start!67682 res!530231) b!783523))

(assert (= (and b!783523 res!530223) b!783535))

(assert (= (and b!783535 res!530220) b!783527))

(assert (= (and b!783527 res!530229) b!783521))

(assert (= (and b!783521 res!530228) b!783528))

(assert (= (and b!783528 res!530232) b!783522))

(assert (= (and b!783522 res!530227) b!783537))

(assert (= (and b!783537 res!530222) b!783524))

(assert (= (and b!783524 res!530216) b!783520))

(assert (= (and b!783520 res!530219) b!783519))

(assert (= (and b!783519 res!530224) b!783531))

(assert (= (and b!783531 c!87059) b!783539))

(assert (= (and b!783531 (not c!87059)) b!783538))

(assert (= (and b!783531 res!530230) b!783530))

(assert (= (and b!783530 res!530218) b!783532))

(assert (= (and b!783532 res!530225) b!783526))

(assert (= (and b!783532 (not res!530233)) b!783533))

(assert (= (and b!783533 (not res!530221)) b!783529))

(assert (= (and b!783529 (not res!530226)) b!783534))

(assert (= (and b!783534 c!87060) b!783540))

(assert (= (and b!783534 (not c!87060)) b!783525))

(assert (= (and b!783534 res!530217) b!783536))

(declare-fun m!726105 () Bool)

(assert (=> b!783530 m!726105))

(declare-fun m!726107 () Bool)

(assert (=> b!783530 m!726107))

(declare-fun m!726109 () Bool)

(assert (=> b!783530 m!726109))

(declare-fun m!726111 () Bool)

(assert (=> b!783530 m!726111))

(assert (=> b!783530 m!726105))

(declare-fun m!726113 () Bool)

(assert (=> b!783530 m!726113))

(declare-fun m!726115 () Bool)

(assert (=> b!783520 m!726115))

(assert (=> b!783520 m!726115))

(declare-fun m!726117 () Bool)

(assert (=> b!783520 m!726117))

(assert (=> b!783520 m!726117))

(assert (=> b!783520 m!726115))

(declare-fun m!726119 () Bool)

(assert (=> b!783520 m!726119))

(assert (=> b!783535 m!726115))

(assert (=> b!783535 m!726115))

(declare-fun m!726121 () Bool)

(assert (=> b!783535 m!726121))

(assert (=> b!783533 m!726115))

(assert (=> b!783533 m!726115))

(declare-fun m!726123 () Bool)

(assert (=> b!783533 m!726123))

(assert (=> b!783538 m!726115))

(assert (=> b!783538 m!726115))

(assert (=> b!783538 m!726123))

(declare-fun m!726125 () Bool)

(assert (=> b!783527 m!726125))

(declare-fun m!726127 () Bool)

(assert (=> b!783528 m!726127))

(declare-fun m!726129 () Bool)

(assert (=> start!67682 m!726129))

(declare-fun m!726131 () Bool)

(assert (=> start!67682 m!726131))

(assert (=> b!783529 m!726109))

(declare-fun m!726133 () Bool)

(assert (=> b!783529 m!726133))

(declare-fun m!726135 () Bool)

(assert (=> b!783522 m!726135))

(assert (=> b!783539 m!726115))

(assert (=> b!783539 m!726115))

(declare-fun m!726137 () Bool)

(assert (=> b!783539 m!726137))

(declare-fun m!726139 () Bool)

(assert (=> b!783519 m!726139))

(declare-fun m!726141 () Bool)

(assert (=> b!783537 m!726141))

(declare-fun m!726143 () Bool)

(assert (=> b!783521 m!726143))

(assert (=> b!783532 m!726115))

(assert (=> b!783532 m!726115))

(declare-fun m!726145 () Bool)

(assert (=> b!783532 m!726145))

(declare-fun m!726147 () Bool)

(assert (=> b!783532 m!726147))

(declare-fun m!726149 () Bool)

(assert (=> b!783532 m!726149))

(assert (=> b!783526 m!726115))

(assert (=> b!783526 m!726115))

(declare-fun m!726151 () Bool)

(assert (=> b!783526 m!726151))

(declare-fun m!726153 () Bool)

(assert (=> b!783536 m!726153))

(declare-fun m!726155 () Bool)

(assert (=> b!783536 m!726155))

(push 1)

