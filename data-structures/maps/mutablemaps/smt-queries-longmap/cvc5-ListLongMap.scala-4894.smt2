; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67558 () Bool)

(assert start!67558)

(declare-fun b!781213 () Bool)

(declare-fun res!528593 () Bool)

(declare-fun e!434555 () Bool)

(assert (=> b!781213 (=> res!528593 e!434555)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42616 0))(
  ( (array!42617 (arr!20394 (Array (_ BitVec 32) (_ BitVec 64))) (size!20815 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42616)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8001 0))(
  ( (MissingZero!8001 (index!34371 (_ BitVec 32))) (Found!8001 (index!34372 (_ BitVec 32))) (Intermediate!8001 (undefined!8813 Bool) (index!34373 (_ BitVec 32)) (x!65357 (_ BitVec 32))) (Undefined!8001) (MissingVacant!8001 (index!34374 (_ BitVec 32))) )
))
(declare-fun lt!348146 () SeekEntryResult!8001)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42616 (_ BitVec 32)) SeekEntryResult!8001)

(assert (=> b!781213 (= res!528593 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20394 a!3186) j!159) a!3186 mask!3328) lt!348146)))))

(declare-fun b!781214 () Bool)

(declare-fun e!434552 () Bool)

(assert (=> b!781214 (= e!434552 (not e!434555))))

(declare-fun res!528589 () Bool)

(assert (=> b!781214 (=> res!528589 e!434555)))

(declare-fun lt!348151 () SeekEntryResult!8001)

(assert (=> b!781214 (= res!528589 (or (not (is-Intermediate!8001 lt!348151)) (bvslt x!1131 (x!65357 lt!348151)) (not (= x!1131 (x!65357 lt!348151))) (not (= index!1321 (index!34373 lt!348151)))))))

(declare-fun e!434554 () Bool)

(assert (=> b!781214 e!434554))

(declare-fun res!528586 () Bool)

(assert (=> b!781214 (=> (not res!528586) (not e!434554))))

(declare-fun lt!348145 () SeekEntryResult!8001)

(assert (=> b!781214 (= res!528586 (= lt!348145 lt!348146))))

(assert (=> b!781214 (= lt!348146 (Found!8001 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42616 (_ BitVec 32)) SeekEntryResult!8001)

(assert (=> b!781214 (= lt!348145 (seekEntryOrOpen!0 (select (arr!20394 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42616 (_ BitVec 32)) Bool)

(assert (=> b!781214 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26914 0))(
  ( (Unit!26915) )
))
(declare-fun lt!348150 () Unit!26914)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42616 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26914)

(assert (=> b!781214 (= lt!348150 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!781215 () Bool)

(declare-fun e!434550 () Bool)

(assert (=> b!781215 (= e!434550 e!434552)))

(declare-fun res!528591 () Bool)

(assert (=> b!781215 (=> (not res!528591) (not e!434552))))

(declare-fun lt!348154 () SeekEntryResult!8001)

(assert (=> b!781215 (= res!528591 (= lt!348154 lt!348151))))

(declare-fun lt!348147 () array!42616)

(declare-fun lt!348153 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42616 (_ BitVec 32)) SeekEntryResult!8001)

(assert (=> b!781215 (= lt!348151 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348153 lt!348147 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781215 (= lt!348154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348153 mask!3328) lt!348153 lt!348147 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!781215 (= lt!348153 (select (store (arr!20394 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!781215 (= lt!348147 (array!42617 (store (arr!20394 a!3186) i!1173 k!2102) (size!20815 a!3186)))))

(declare-fun e!434557 () Bool)

(declare-fun b!781216 () Bool)

(assert (=> b!781216 (= e!434557 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20394 a!3186) j!159) a!3186 mask!3328) (Found!8001 j!159)))))

(declare-fun b!781217 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!781217 (= e!434554 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20394 a!3186) j!159) a!3186 mask!3328) lt!348146))))

(declare-fun b!781218 () Bool)

(declare-fun res!528588 () Bool)

(declare-fun e!434556 () Bool)

(assert (=> b!781218 (=> (not res!528588) (not e!434556))))

(assert (=> b!781218 (= res!528588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!781219 () Bool)

(declare-fun e!434549 () Unit!26914)

(declare-fun Unit!26916 () Unit!26914)

(assert (=> b!781219 (= e!434549 Unit!26916)))

(assert (=> b!781219 false))

(declare-fun b!781220 () Bool)

(declare-fun res!528590 () Bool)

(declare-fun e!434553 () Bool)

(assert (=> b!781220 (=> (not res!528590) (not e!434553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781220 (= res!528590 (validKeyInArray!0 k!2102))))

(declare-fun b!781221 () Bool)

(assert (=> b!781221 (= e!434556 e!434550)))

(declare-fun res!528585 () Bool)

(assert (=> b!781221 (=> (not res!528585) (not e!434550))))

(declare-fun lt!348152 () SeekEntryResult!8001)

(assert (=> b!781221 (= res!528585 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20394 a!3186) j!159) mask!3328) (select (arr!20394 a!3186) j!159) a!3186 mask!3328) lt!348152))))

(assert (=> b!781221 (= lt!348152 (Intermediate!8001 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781222 () Bool)

(declare-fun res!528599 () Bool)

(assert (=> b!781222 (=> (not res!528599) (not e!434550))))

(assert (=> b!781222 (= res!528599 e!434557)))

(declare-fun c!86721 () Bool)

(assert (=> b!781222 (= c!86721 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781223 () Bool)

(declare-fun res!528598 () Bool)

(assert (=> b!781223 (=> res!528598 e!434555)))

(assert (=> b!781223 (= res!528598 (= (select (store (arr!20394 a!3186) i!1173 k!2102) index!1321) lt!348153))))

(declare-fun b!781224 () Bool)

(assert (=> b!781224 (= e!434557 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20394 a!3186) j!159) a!3186 mask!3328) lt!348152))))

(declare-fun b!781225 () Bool)

(declare-fun res!528600 () Bool)

(assert (=> b!781225 (=> (not res!528600) (not e!434553))))

(assert (=> b!781225 (= res!528600 (validKeyInArray!0 (select (arr!20394 a!3186) j!159)))))

(declare-fun b!781226 () Bool)

(assert (=> b!781226 (= e!434553 e!434556)))

(declare-fun res!528601 () Bool)

(assert (=> b!781226 (=> (not res!528601) (not e!434556))))

(declare-fun lt!348148 () SeekEntryResult!8001)

(assert (=> b!781226 (= res!528601 (or (= lt!348148 (MissingZero!8001 i!1173)) (= lt!348148 (MissingVacant!8001 i!1173))))))

(assert (=> b!781226 (= lt!348148 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!781227 () Bool)

(declare-fun res!528587 () Bool)

(assert (=> b!781227 (=> (not res!528587) (not e!434550))))

(assert (=> b!781227 (= res!528587 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20394 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781228 () Bool)

(declare-fun res!528594 () Bool)

(assert (=> b!781228 (=> (not res!528594) (not e!434553))))

(assert (=> b!781228 (= res!528594 (and (= (size!20815 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20815 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20815 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781229 () Bool)

(declare-fun res!528595 () Bool)

(assert (=> b!781229 (=> (not res!528595) (not e!434556))))

(declare-datatypes ((List!14449 0))(
  ( (Nil!14446) (Cons!14445 (h!15565 (_ BitVec 64)) (t!20772 List!14449)) )
))
(declare-fun arrayNoDuplicates!0 (array!42616 (_ BitVec 32) List!14449) Bool)

(assert (=> b!781229 (= res!528595 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14446))))

(declare-fun b!781230 () Bool)

(declare-fun res!528592 () Bool)

(assert (=> b!781230 (=> (not res!528592) (not e!434556))))

(assert (=> b!781230 (= res!528592 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20815 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20815 a!3186))))))

(declare-fun b!781231 () Bool)

(declare-fun res!528597 () Bool)

(assert (=> b!781231 (=> (not res!528597) (not e!434553))))

(declare-fun arrayContainsKey!0 (array!42616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781231 (= res!528597 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!781232 () Bool)

(declare-fun Unit!26917 () Unit!26914)

(assert (=> b!781232 (= e!434549 Unit!26917)))

(declare-fun res!528596 () Bool)

(assert (=> start!67558 (=> (not res!528596) (not e!434553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67558 (= res!528596 (validMask!0 mask!3328))))

(assert (=> start!67558 e!434553))

(assert (=> start!67558 true))

(declare-fun array_inv!16168 (array!42616) Bool)

(assert (=> start!67558 (array_inv!16168 a!3186)))

(declare-fun b!781233 () Bool)

(assert (=> b!781233 (= e!434555 true)))

(assert (=> b!781233 (= (select (store (arr!20394 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348149 () Unit!26914)

(assert (=> b!781233 (= lt!348149 e!434549)))

(declare-fun c!86720 () Bool)

(assert (=> b!781233 (= c!86720 (= (select (store (arr!20394 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67558 res!528596) b!781228))

(assert (= (and b!781228 res!528594) b!781225))

(assert (= (and b!781225 res!528600) b!781220))

(assert (= (and b!781220 res!528590) b!781231))

(assert (= (and b!781231 res!528597) b!781226))

(assert (= (and b!781226 res!528601) b!781218))

(assert (= (and b!781218 res!528588) b!781229))

(assert (= (and b!781229 res!528595) b!781230))

(assert (= (and b!781230 res!528592) b!781221))

(assert (= (and b!781221 res!528585) b!781227))

(assert (= (and b!781227 res!528587) b!781222))

(assert (= (and b!781222 c!86721) b!781224))

(assert (= (and b!781222 (not c!86721)) b!781216))

(assert (= (and b!781222 res!528599) b!781215))

(assert (= (and b!781215 res!528591) b!781214))

(assert (= (and b!781214 res!528586) b!781217))

(assert (= (and b!781214 (not res!528589)) b!781213))

(assert (= (and b!781213 (not res!528593)) b!781223))

(assert (= (and b!781223 (not res!528598)) b!781233))

(assert (= (and b!781233 c!86720) b!781219))

(assert (= (and b!781233 (not c!86720)) b!781232))

(declare-fun m!724339 () Bool)

(assert (=> b!781223 m!724339))

(declare-fun m!724341 () Bool)

(assert (=> b!781223 m!724341))

(declare-fun m!724343 () Bool)

(assert (=> start!67558 m!724343))

(declare-fun m!724345 () Bool)

(assert (=> start!67558 m!724345))

(declare-fun m!724347 () Bool)

(assert (=> b!781213 m!724347))

(assert (=> b!781213 m!724347))

(declare-fun m!724349 () Bool)

(assert (=> b!781213 m!724349))

(declare-fun m!724351 () Bool)

(assert (=> b!781215 m!724351))

(assert (=> b!781215 m!724351))

(declare-fun m!724353 () Bool)

(assert (=> b!781215 m!724353))

(assert (=> b!781215 m!724339))

(declare-fun m!724355 () Bool)

(assert (=> b!781215 m!724355))

(declare-fun m!724357 () Bool)

(assert (=> b!781215 m!724357))

(assert (=> b!781221 m!724347))

(assert (=> b!781221 m!724347))

(declare-fun m!724359 () Bool)

(assert (=> b!781221 m!724359))

(assert (=> b!781221 m!724359))

(assert (=> b!781221 m!724347))

(declare-fun m!724361 () Bool)

(assert (=> b!781221 m!724361))

(assert (=> b!781233 m!724339))

(assert (=> b!781233 m!724341))

(declare-fun m!724363 () Bool)

(assert (=> b!781218 m!724363))

(declare-fun m!724365 () Bool)

(assert (=> b!781229 m!724365))

(declare-fun m!724367 () Bool)

(assert (=> b!781227 m!724367))

(declare-fun m!724369 () Bool)

(assert (=> b!781226 m!724369))

(assert (=> b!781217 m!724347))

(assert (=> b!781217 m!724347))

(declare-fun m!724371 () Bool)

(assert (=> b!781217 m!724371))

(declare-fun m!724373 () Bool)

(assert (=> b!781220 m!724373))

(declare-fun m!724375 () Bool)

(assert (=> b!781231 m!724375))

(assert (=> b!781224 m!724347))

(assert (=> b!781224 m!724347))

(declare-fun m!724377 () Bool)

(assert (=> b!781224 m!724377))

(assert (=> b!781225 m!724347))

(assert (=> b!781225 m!724347))

(declare-fun m!724379 () Bool)

(assert (=> b!781225 m!724379))

(assert (=> b!781216 m!724347))

(assert (=> b!781216 m!724347))

(assert (=> b!781216 m!724349))

(assert (=> b!781214 m!724347))

(assert (=> b!781214 m!724347))

(declare-fun m!724381 () Bool)

(assert (=> b!781214 m!724381))

(declare-fun m!724383 () Bool)

(assert (=> b!781214 m!724383))

(declare-fun m!724385 () Bool)

(assert (=> b!781214 m!724385))

(push 1)

