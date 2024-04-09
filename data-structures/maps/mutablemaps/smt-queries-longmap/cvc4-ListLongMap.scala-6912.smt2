; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86924 () Bool)

(assert start!86924)

(declare-fun b!1007385 () Bool)

(declare-fun e!566988 () Bool)

(declare-fun e!566986 () Bool)

(assert (=> b!1007385 (= e!566988 e!566986)))

(declare-fun res!676435 () Bool)

(assert (=> b!1007385 (=> (not res!676435) (not e!566986))))

(declare-datatypes ((SeekEntryResult!9511 0))(
  ( (MissingZero!9511 (index!40414 (_ BitVec 32))) (Found!9511 (index!40415 (_ BitVec 32))) (Intermediate!9511 (undefined!10323 Bool) (index!40416 (_ BitVec 32)) (x!87838 (_ BitVec 32))) (Undefined!9511) (MissingVacant!9511 (index!40417 (_ BitVec 32))) )
))
(declare-fun lt!445187 () SeekEntryResult!9511)

(declare-fun lt!445184 () SeekEntryResult!9511)

(assert (=> b!1007385 (= res!676435 (= lt!445187 lt!445184))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007385 (= lt!445184 (Intermediate!9511 false resIndex!38 resX!38))))

(declare-datatypes ((array!63524 0))(
  ( (array!63525 (arr!30579 (Array (_ BitVec 32) (_ BitVec 64))) (size!31082 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63524)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63524 (_ BitVec 32)) SeekEntryResult!9511)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007385 (= lt!445187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30579 a!3219) j!170) mask!3464) (select (arr!30579 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007386 () Bool)

(declare-fun e!566990 () Bool)

(assert (=> b!1007386 (= e!566986 e!566990)))

(declare-fun res!676445 () Bool)

(assert (=> b!1007386 (=> (not res!676445) (not e!566990))))

(declare-fun lt!445186 () SeekEntryResult!9511)

(assert (=> b!1007386 (= res!676445 (= lt!445186 lt!445184))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1007386 (= lt!445186 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30579 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007387 () Bool)

(declare-fun res!676447 () Bool)

(declare-fun e!566985 () Bool)

(assert (=> b!1007387 (=> (not res!676447) (not e!566985))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007387 (= res!676447 (and (= (size!31082 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31082 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31082 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007388 () Bool)

(declare-fun res!676442 () Bool)

(assert (=> b!1007388 (=> (not res!676442) (not e!566988))))

(assert (=> b!1007388 (= res!676442 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31082 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31082 a!3219))))))

(declare-fun b!1007389 () Bool)

(declare-fun e!566987 () Bool)

(assert (=> b!1007389 (= e!566990 e!566987)))

(declare-fun res!676440 () Bool)

(assert (=> b!1007389 (=> (not res!676440) (not e!566987))))

(declare-fun lt!445188 () array!63524)

(declare-fun lt!445185 () (_ BitVec 64))

(assert (=> b!1007389 (= res!676440 (not (= lt!445187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445185 mask!3464) lt!445185 lt!445188 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1007389 (= lt!445185 (select (store (arr!30579 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007389 (= lt!445188 (array!63525 (store (arr!30579 a!3219) i!1194 k!2224) (size!31082 a!3219)))))

(declare-fun b!1007390 () Bool)

(declare-fun res!676443 () Bool)

(assert (=> b!1007390 (=> (not res!676443) (not e!566985))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007390 (= res!676443 (validKeyInArray!0 k!2224))))

(declare-fun b!1007392 () Bool)

(declare-fun res!676436 () Bool)

(assert (=> b!1007392 (=> (not res!676436) (not e!566985))))

(assert (=> b!1007392 (= res!676436 (validKeyInArray!0 (select (arr!30579 a!3219) j!170)))))

(declare-fun b!1007393 () Bool)

(declare-fun res!676446 () Bool)

(assert (=> b!1007393 (=> (not res!676446) (not e!566987))))

(assert (=> b!1007393 (= res!676446 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007394 () Bool)

(declare-fun res!676439 () Bool)

(assert (=> b!1007394 (=> (not res!676439) (not e!566985))))

(declare-fun arrayContainsKey!0 (array!63524 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007394 (= res!676439 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1007395 () Bool)

(declare-fun res!676441 () Bool)

(assert (=> b!1007395 (=> (not res!676441) (not e!566988))))

(declare-datatypes ((List!21381 0))(
  ( (Nil!21378) (Cons!21377 (h!22563 (_ BitVec 64)) (t!30390 List!21381)) )
))
(declare-fun arrayNoDuplicates!0 (array!63524 (_ BitVec 32) List!21381) Bool)

(assert (=> b!1007395 (= res!676441 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21378))))

(declare-fun b!1007396 () Bool)

(assert (=> b!1007396 (= e!566985 e!566988)))

(declare-fun res!676438 () Bool)

(assert (=> b!1007396 (=> (not res!676438) (not e!566988))))

(declare-fun lt!445182 () SeekEntryResult!9511)

(assert (=> b!1007396 (= res!676438 (or (= lt!445182 (MissingVacant!9511 i!1194)) (= lt!445182 (MissingZero!9511 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63524 (_ BitVec 32)) SeekEntryResult!9511)

(assert (=> b!1007396 (= lt!445182 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007397 () Bool)

(declare-fun res!676437 () Bool)

(assert (=> b!1007397 (=> (not res!676437) (not e!566988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63524 (_ BitVec 32)) Bool)

(assert (=> b!1007397 (= res!676437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007398 () Bool)

(declare-fun res!676444 () Bool)

(assert (=> b!1007398 (=> (not res!676444) (not e!566987))))

(assert (=> b!1007398 (= res!676444 (not (= lt!445186 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445185 lt!445188 mask!3464))))))

(declare-fun res!676434 () Bool)

(assert (=> start!86924 (=> (not res!676434) (not e!566985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86924 (= res!676434 (validMask!0 mask!3464))))

(assert (=> start!86924 e!566985))

(declare-fun array_inv!23569 (array!63524) Bool)

(assert (=> start!86924 (array_inv!23569 a!3219)))

(assert (=> start!86924 true))

(declare-fun b!1007391 () Bool)

(assert (=> b!1007391 (= e!566987 false)))

(declare-fun lt!445183 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007391 (= lt!445183 (nextIndex!0 index!1507 x!1245 mask!3464))))

(assert (= (and start!86924 res!676434) b!1007387))

(assert (= (and b!1007387 res!676447) b!1007392))

(assert (= (and b!1007392 res!676436) b!1007390))

(assert (= (and b!1007390 res!676443) b!1007394))

(assert (= (and b!1007394 res!676439) b!1007396))

(assert (= (and b!1007396 res!676438) b!1007397))

(assert (= (and b!1007397 res!676437) b!1007395))

(assert (= (and b!1007395 res!676441) b!1007388))

(assert (= (and b!1007388 res!676442) b!1007385))

(assert (= (and b!1007385 res!676435) b!1007386))

(assert (= (and b!1007386 res!676445) b!1007389))

(assert (= (and b!1007389 res!676440) b!1007398))

(assert (= (and b!1007398 res!676444) b!1007393))

(assert (= (and b!1007393 res!676446) b!1007391))

(declare-fun m!932379 () Bool)

(assert (=> b!1007398 m!932379))

(declare-fun m!932381 () Bool)

(assert (=> b!1007394 m!932381))

(declare-fun m!932383 () Bool)

(assert (=> b!1007396 m!932383))

(declare-fun m!932385 () Bool)

(assert (=> b!1007391 m!932385))

(declare-fun m!932387 () Bool)

(assert (=> start!86924 m!932387))

(declare-fun m!932389 () Bool)

(assert (=> start!86924 m!932389))

(declare-fun m!932391 () Bool)

(assert (=> b!1007395 m!932391))

(declare-fun m!932393 () Bool)

(assert (=> b!1007385 m!932393))

(assert (=> b!1007385 m!932393))

(declare-fun m!932395 () Bool)

(assert (=> b!1007385 m!932395))

(assert (=> b!1007385 m!932395))

(assert (=> b!1007385 m!932393))

(declare-fun m!932397 () Bool)

(assert (=> b!1007385 m!932397))

(assert (=> b!1007386 m!932393))

(assert (=> b!1007386 m!932393))

(declare-fun m!932399 () Bool)

(assert (=> b!1007386 m!932399))

(declare-fun m!932401 () Bool)

(assert (=> b!1007389 m!932401))

(assert (=> b!1007389 m!932401))

(declare-fun m!932403 () Bool)

(assert (=> b!1007389 m!932403))

(declare-fun m!932405 () Bool)

(assert (=> b!1007389 m!932405))

(declare-fun m!932407 () Bool)

(assert (=> b!1007389 m!932407))

(assert (=> b!1007392 m!932393))

(assert (=> b!1007392 m!932393))

(declare-fun m!932409 () Bool)

(assert (=> b!1007392 m!932409))

(declare-fun m!932411 () Bool)

(assert (=> b!1007390 m!932411))

(declare-fun m!932413 () Bool)

(assert (=> b!1007397 m!932413))

(push 1)

