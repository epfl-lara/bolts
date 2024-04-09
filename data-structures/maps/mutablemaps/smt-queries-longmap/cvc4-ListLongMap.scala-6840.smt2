; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86168 () Bool)

(assert start!86168)

(declare-fun b!997390 () Bool)

(declare-fun res!667501 () Bool)

(declare-fun e!562607 () Bool)

(assert (=> b!997390 (=> (not res!667501) (not e!562607))))

(declare-datatypes ((array!63074 0))(
  ( (array!63075 (arr!30363 (Array (_ BitVec 32) (_ BitVec 64))) (size!30866 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63074)

(declare-datatypes ((List!21165 0))(
  ( (Nil!21162) (Cons!21161 (h!22329 (_ BitVec 64)) (t!30174 List!21165)) )
))
(declare-fun arrayNoDuplicates!0 (array!63074 (_ BitVec 32) List!21165) Bool)

(assert (=> b!997390 (= res!667501 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21162))))

(declare-fun b!997391 () Bool)

(declare-fun res!667503 () Bool)

(declare-fun e!562605 () Bool)

(assert (=> b!997391 (=> (not res!667503) (not e!562605))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997391 (= res!667503 (validKeyInArray!0 (select (arr!30363 a!3219) j!170)))))

(declare-fun b!997393 () Bool)

(declare-fun res!667509 () Bool)

(assert (=> b!997393 (=> (not res!667509) (not e!562607))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997393 (= res!667509 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30866 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30866 a!3219))))))

(declare-fun b!997394 () Bool)

(declare-fun res!667507 () Bool)

(assert (=> b!997394 (=> (not res!667507) (not e!562605))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997394 (= res!667507 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997395 () Bool)

(assert (=> b!997395 (= e!562605 e!562607)))

(declare-fun res!667504 () Bool)

(assert (=> b!997395 (=> (not res!667504) (not e!562607))))

(declare-datatypes ((SeekEntryResult!9295 0))(
  ( (MissingZero!9295 (index!39550 (_ BitVec 32))) (Found!9295 (index!39551 (_ BitVec 32))) (Intermediate!9295 (undefined!10107 Bool) (index!39552 (_ BitVec 32)) (x!87010 (_ BitVec 32))) (Undefined!9295) (MissingVacant!9295 (index!39553 (_ BitVec 32))) )
))
(declare-fun lt!441419 () SeekEntryResult!9295)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997395 (= res!667504 (or (= lt!441419 (MissingVacant!9295 i!1194)) (= lt!441419 (MissingZero!9295 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63074 (_ BitVec 32)) SeekEntryResult!9295)

(assert (=> b!997395 (= lt!441419 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!997396 () Bool)

(declare-fun res!667502 () Bool)

(assert (=> b!997396 (=> (not res!667502) (not e!562605))))

(assert (=> b!997396 (= res!667502 (validKeyInArray!0 k!2224))))

(declare-fun b!997397 () Bool)

(assert (=> b!997397 (= e!562607 false)))

(declare-fun lt!441420 () SeekEntryResult!9295)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63074 (_ BitVec 32)) SeekEntryResult!9295)

(assert (=> b!997397 (= lt!441420 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30363 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!667505 () Bool)

(assert (=> start!86168 (=> (not res!667505) (not e!562605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86168 (= res!667505 (validMask!0 mask!3464))))

(assert (=> start!86168 e!562605))

(declare-fun array_inv!23353 (array!63074) Bool)

(assert (=> start!86168 (array_inv!23353 a!3219)))

(assert (=> start!86168 true))

(declare-fun b!997392 () Bool)

(declare-fun res!667508 () Bool)

(assert (=> b!997392 (=> (not res!667508) (not e!562605))))

(assert (=> b!997392 (= res!667508 (and (= (size!30866 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30866 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30866 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997398 () Bool)

(declare-fun res!667506 () Bool)

(assert (=> b!997398 (=> (not res!667506) (not e!562607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63074 (_ BitVec 32)) Bool)

(assert (=> b!997398 (= res!667506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!997399 () Bool)

(declare-fun res!667510 () Bool)

(assert (=> b!997399 (=> (not res!667510) (not e!562607))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997399 (= res!667510 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30363 a!3219) j!170) mask!3464) (select (arr!30363 a!3219) j!170) a!3219 mask!3464) (Intermediate!9295 false resIndex!38 resX!38)))))

(assert (= (and start!86168 res!667505) b!997392))

(assert (= (and b!997392 res!667508) b!997391))

(assert (= (and b!997391 res!667503) b!997396))

(assert (= (and b!997396 res!667502) b!997394))

(assert (= (and b!997394 res!667507) b!997395))

(assert (= (and b!997395 res!667504) b!997398))

(assert (= (and b!997398 res!667506) b!997390))

(assert (= (and b!997390 res!667501) b!997393))

(assert (= (and b!997393 res!667509) b!997399))

(assert (= (and b!997399 res!667510) b!997397))

(declare-fun m!924309 () Bool)

(assert (=> start!86168 m!924309))

(declare-fun m!924311 () Bool)

(assert (=> start!86168 m!924311))

(declare-fun m!924313 () Bool)

(assert (=> b!997396 m!924313))

(declare-fun m!924315 () Bool)

(assert (=> b!997394 m!924315))

(declare-fun m!924317 () Bool)

(assert (=> b!997397 m!924317))

(assert (=> b!997397 m!924317))

(declare-fun m!924319 () Bool)

(assert (=> b!997397 m!924319))

(declare-fun m!924321 () Bool)

(assert (=> b!997390 m!924321))

(declare-fun m!924323 () Bool)

(assert (=> b!997395 m!924323))

(declare-fun m!924325 () Bool)

(assert (=> b!997398 m!924325))

(assert (=> b!997399 m!924317))

(assert (=> b!997399 m!924317))

(declare-fun m!924327 () Bool)

(assert (=> b!997399 m!924327))

(assert (=> b!997399 m!924327))

(assert (=> b!997399 m!924317))

(declare-fun m!924329 () Bool)

(assert (=> b!997399 m!924329))

(assert (=> b!997391 m!924317))

(assert (=> b!997391 m!924317))

(declare-fun m!924331 () Bool)

(assert (=> b!997391 m!924331))

(push 1)

(assert (not b!997391))

(assert (not b!997395))

(assert (not b!997390))

(assert (not start!86168))

(assert (not b!997394))

(assert (not b!997397))

