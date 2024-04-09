; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86600 () Bool)

(assert start!86600)

(declare-fun b!1003459 () Bool)

(declare-fun e!565203 () Bool)

(declare-fun e!565204 () Bool)

(assert (=> b!1003459 (= e!565203 e!565204)))

(declare-fun res!673106 () Bool)

(assert (=> b!1003459 (=> (not res!673106) (not e!565204))))

(declare-datatypes ((array!63353 0))(
  ( (array!63354 (arr!30498 (Array (_ BitVec 32) (_ BitVec 64))) (size!31001 (_ BitVec 32))) )
))
(declare-fun lt!443698 () array!63353)

(declare-fun lt!443700 () (_ BitVec 64))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9430 0))(
  ( (MissingZero!9430 (index!40090 (_ BitVec 32))) (Found!9430 (index!40091 (_ BitVec 32))) (Intermediate!9430 (undefined!10242 Bool) (index!40092 (_ BitVec 32)) (x!87523 (_ BitVec 32))) (Undefined!9430) (MissingVacant!9430 (index!40093 (_ BitVec 32))) )
))
(declare-fun lt!443701 () SeekEntryResult!9430)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63353 (_ BitVec 32)) SeekEntryResult!9430)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003459 (= res!673106 (not (= lt!443701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443700 mask!3464) lt!443700 lt!443698 mask!3464))))))

(declare-fun a!3219 () array!63353)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1003459 (= lt!443700 (select (store (arr!30498 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003459 (= lt!443698 (array!63354 (store (arr!30498 a!3219) i!1194 k!2224) (size!31001 a!3219)))))

(declare-fun b!1003460 () Bool)

(declare-fun res!673098 () Bool)

(declare-fun e!565207 () Bool)

(assert (=> b!1003460 (=> (not res!673098) (not e!565207))))

(declare-fun arrayContainsKey!0 (array!63353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003460 (= res!673098 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003461 () Bool)

(declare-fun res!673097 () Bool)

(assert (=> b!1003461 (=> (not res!673097) (not e!565207))))

(assert (=> b!1003461 (= res!673097 (and (= (size!31001 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31001 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31001 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003462 () Bool)

(declare-fun res!673100 () Bool)

(assert (=> b!1003462 (=> (not res!673100) (not e!565207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003462 (= res!673100 (validKeyInArray!0 (select (arr!30498 a!3219) j!170)))))

(declare-fun b!1003463 () Bool)

(declare-fun res!673104 () Bool)

(declare-fun e!565206 () Bool)

(assert (=> b!1003463 (=> (not res!673104) (not e!565206))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003463 (= res!673104 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31001 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31001 a!3219))))))

(declare-fun b!1003464 () Bool)

(declare-fun e!565205 () Bool)

(assert (=> b!1003464 (= e!565204 e!565205)))

(declare-fun res!673094 () Bool)

(assert (=> b!1003464 (=> (not res!673094) (not e!565205))))

(declare-fun lt!443703 () (_ BitVec 32))

(assert (=> b!1003464 (= res!673094 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443703 #b00000000000000000000000000000000) (bvslt lt!443703 (size!31001 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003464 (= lt!443703 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003465 () Bool)

(declare-fun res!673103 () Bool)

(assert (=> b!1003465 (=> (not res!673103) (not e!565207))))

(assert (=> b!1003465 (= res!673103 (validKeyInArray!0 k!2224))))

(declare-fun b!1003466 () Bool)

(assert (=> b!1003466 (= e!565207 e!565206)))

(declare-fun res!673102 () Bool)

(assert (=> b!1003466 (=> (not res!673102) (not e!565206))))

(declare-fun lt!443697 () SeekEntryResult!9430)

(assert (=> b!1003466 (= res!673102 (or (= lt!443697 (MissingVacant!9430 i!1194)) (= lt!443697 (MissingZero!9430 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63353 (_ BitVec 32)) SeekEntryResult!9430)

(assert (=> b!1003466 (= lt!443697 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003468 () Bool)

(declare-fun res!673105 () Bool)

(assert (=> b!1003468 (=> (not res!673105) (not e!565204))))

(declare-fun lt!443699 () SeekEntryResult!9430)

(assert (=> b!1003468 (= res!673105 (not (= lt!443699 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443700 lt!443698 mask!3464))))))

(declare-fun b!1003469 () Bool)

(declare-fun e!565202 () Bool)

(assert (=> b!1003469 (= e!565202 e!565203)))

(declare-fun res!673101 () Bool)

(assert (=> b!1003469 (=> (not res!673101) (not e!565203))))

(declare-fun lt!443702 () SeekEntryResult!9430)

(assert (=> b!1003469 (= res!673101 (= lt!443699 lt!443702))))

(assert (=> b!1003469 (= lt!443699 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30498 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003470 () Bool)

(declare-fun res!673096 () Bool)

(assert (=> b!1003470 (=> (not res!673096) (not e!565204))))

(assert (=> b!1003470 (= res!673096 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003471 () Bool)

(declare-fun res!673095 () Bool)

(assert (=> b!1003471 (=> (not res!673095) (not e!565206))))

(declare-datatypes ((List!21300 0))(
  ( (Nil!21297) (Cons!21296 (h!22473 (_ BitVec 64)) (t!30309 List!21300)) )
))
(declare-fun arrayNoDuplicates!0 (array!63353 (_ BitVec 32) List!21300) Bool)

(assert (=> b!1003471 (= res!673095 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21297))))

(declare-fun b!1003472 () Bool)

(declare-fun res!673107 () Bool)

(assert (=> b!1003472 (=> (not res!673107) (not e!565206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63353 (_ BitVec 32)) Bool)

(assert (=> b!1003472 (= res!673107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003473 () Bool)

(assert (=> b!1003473 (= e!565205 false)))

(declare-fun lt!443696 () SeekEntryResult!9430)

(assert (=> b!1003473 (= lt!443696 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443703 lt!443700 lt!443698 mask!3464))))

(declare-fun b!1003474 () Bool)

(assert (=> b!1003474 (= e!565206 e!565202)))

(declare-fun res!673099 () Bool)

(assert (=> b!1003474 (=> (not res!673099) (not e!565202))))

(assert (=> b!1003474 (= res!673099 (= lt!443701 lt!443702))))

(assert (=> b!1003474 (= lt!443702 (Intermediate!9430 false resIndex!38 resX!38))))

(assert (=> b!1003474 (= lt!443701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30498 a!3219) j!170) mask!3464) (select (arr!30498 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003467 () Bool)

(declare-fun res!673108 () Bool)

(assert (=> b!1003467 (=> (not res!673108) (not e!565205))))

(assert (=> b!1003467 (= res!673108 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443703 (select (arr!30498 a!3219) j!170) a!3219 mask!3464) lt!443702))))

(declare-fun res!673093 () Bool)

(assert (=> start!86600 (=> (not res!673093) (not e!565207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86600 (= res!673093 (validMask!0 mask!3464))))

(assert (=> start!86600 e!565207))

(declare-fun array_inv!23488 (array!63353) Bool)

(assert (=> start!86600 (array_inv!23488 a!3219)))

(assert (=> start!86600 true))

(assert (= (and start!86600 res!673093) b!1003461))

(assert (= (and b!1003461 res!673097) b!1003462))

(assert (= (and b!1003462 res!673100) b!1003465))

(assert (= (and b!1003465 res!673103) b!1003460))

(assert (= (and b!1003460 res!673098) b!1003466))

(assert (= (and b!1003466 res!673102) b!1003472))

(assert (= (and b!1003472 res!673107) b!1003471))

(assert (= (and b!1003471 res!673095) b!1003463))

(assert (= (and b!1003463 res!673104) b!1003474))

(assert (= (and b!1003474 res!673099) b!1003469))

(assert (= (and b!1003469 res!673101) b!1003459))

(assert (= (and b!1003459 res!673106) b!1003468))

(assert (= (and b!1003468 res!673105) b!1003470))

(assert (= (and b!1003470 res!673096) b!1003464))

(assert (= (and b!1003464 res!673094) b!1003467))

(assert (= (and b!1003467 res!673108) b!1003473))

(declare-fun m!929261 () Bool)

(assert (=> b!1003469 m!929261))

(assert (=> b!1003469 m!929261))

(declare-fun m!929263 () Bool)

(assert (=> b!1003469 m!929263))

(declare-fun m!929265 () Bool)

(assert (=> b!1003460 m!929265))

(declare-fun m!929267 () Bool)

(assert (=> b!1003465 m!929267))

(declare-fun m!929269 () Bool)

(assert (=> b!1003472 m!929269))

(declare-fun m!929271 () Bool)

(assert (=> start!86600 m!929271))

(declare-fun m!929273 () Bool)

(assert (=> start!86600 m!929273))

(declare-fun m!929275 () Bool)

(assert (=> b!1003464 m!929275))

(assert (=> b!1003474 m!929261))

(assert (=> b!1003474 m!929261))

(declare-fun m!929277 () Bool)

(assert (=> b!1003474 m!929277))

(assert (=> b!1003474 m!929277))

(assert (=> b!1003474 m!929261))

(declare-fun m!929279 () Bool)

(assert (=> b!1003474 m!929279))

(declare-fun m!929281 () Bool)

(assert (=> b!1003466 m!929281))

(assert (=> b!1003462 m!929261))

(assert (=> b!1003462 m!929261))

(declare-fun m!929283 () Bool)

(assert (=> b!1003462 m!929283))

(declare-fun m!929285 () Bool)

(assert (=> b!1003473 m!929285))

(declare-fun m!929287 () Bool)

(assert (=> b!1003459 m!929287))

(assert (=> b!1003459 m!929287))

(declare-fun m!929289 () Bool)

(assert (=> b!1003459 m!929289))

(declare-fun m!929291 () Bool)

(assert (=> b!1003459 m!929291))

(declare-fun m!929293 () Bool)

(assert (=> b!1003459 m!929293))

(assert (=> b!1003467 m!929261))

(assert (=> b!1003467 m!929261))

(declare-fun m!929295 () Bool)

(assert (=> b!1003467 m!929295))

(declare-fun m!929297 () Bool)

(assert (=> b!1003468 m!929297))

(declare-fun m!929299 () Bool)

(assert (=> b!1003471 m!929299))

(push 1)

