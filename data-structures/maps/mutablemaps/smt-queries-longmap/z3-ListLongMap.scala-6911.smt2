; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86916 () Bool)

(assert start!86916)

(declare-fun res!676272 () Bool)

(declare-fun e!566913 () Bool)

(assert (=> start!86916 (=> (not res!676272) (not e!566913))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86916 (= res!676272 (validMask!0 mask!3464))))

(assert (=> start!86916 e!566913))

(declare-datatypes ((array!63516 0))(
  ( (array!63517 (arr!30575 (Array (_ BitVec 32) (_ BitVec 64))) (size!31078 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63516)

(declare-fun array_inv!23565 (array!63516) Bool)

(assert (=> start!86916 (array_inv!23565 a!3219)))

(assert (=> start!86916 true))

(declare-fun b!1007217 () Bool)

(declare-fun e!566917 () Bool)

(declare-fun e!566916 () Bool)

(assert (=> b!1007217 (= e!566917 e!566916)))

(declare-fun res!676274 () Bool)

(assert (=> b!1007217 (=> (not res!676274) (not e!566916))))

(declare-fun lt!445104 () array!63516)

(declare-fun lt!445103 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9507 0))(
  ( (MissingZero!9507 (index!40398 (_ BitVec 32))) (Found!9507 (index!40399 (_ BitVec 32))) (Intermediate!9507 (undefined!10319 Bool) (index!40400 (_ BitVec 32)) (x!87826 (_ BitVec 32))) (Undefined!9507) (MissingVacant!9507 (index!40401 (_ BitVec 32))) )
))
(declare-fun lt!445100 () SeekEntryResult!9507)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63516 (_ BitVec 32)) SeekEntryResult!9507)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007217 (= res!676274 (not (= lt!445100 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445103 mask!3464) lt!445103 lt!445104 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1007217 (= lt!445103 (select (store (arr!30575 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1007217 (= lt!445104 (array!63517 (store (arr!30575 a!3219) i!1194 k0!2224) (size!31078 a!3219)))))

(declare-fun b!1007218 () Bool)

(declare-fun res!676277 () Bool)

(declare-fun e!566918 () Bool)

(assert (=> b!1007218 (=> (not res!676277) (not e!566918))))

(declare-datatypes ((List!21377 0))(
  ( (Nil!21374) (Cons!21373 (h!22559 (_ BitVec 64)) (t!30386 List!21377)) )
))
(declare-fun arrayNoDuplicates!0 (array!63516 (_ BitVec 32) List!21377) Bool)

(assert (=> b!1007218 (= res!676277 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21374))))

(declare-fun b!1007219 () Bool)

(declare-fun res!676278 () Bool)

(assert (=> b!1007219 (=> (not res!676278) (not e!566916))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445099 () SeekEntryResult!9507)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1007219 (= res!676278 (not (= lt!445099 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445103 lt!445104 mask!3464))))))

(declare-fun b!1007220 () Bool)

(declare-fun e!566915 () Bool)

(assert (=> b!1007220 (= e!566918 e!566915)))

(declare-fun res!676266 () Bool)

(assert (=> b!1007220 (=> (not res!676266) (not e!566915))))

(declare-fun lt!445101 () SeekEntryResult!9507)

(assert (=> b!1007220 (= res!676266 (= lt!445100 lt!445101))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007220 (= lt!445101 (Intermediate!9507 false resIndex!38 resX!38))))

(assert (=> b!1007220 (= lt!445100 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30575 a!3219) j!170) mask!3464) (select (arr!30575 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007221 () Bool)

(declare-fun res!676270 () Bool)

(assert (=> b!1007221 (=> (not res!676270) (not e!566918))))

(assert (=> b!1007221 (= res!676270 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31078 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31078 a!3219))))))

(declare-fun b!1007222 () Bool)

(declare-fun res!676275 () Bool)

(assert (=> b!1007222 (=> (not res!676275) (not e!566913))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007222 (= res!676275 (validKeyInArray!0 (select (arr!30575 a!3219) j!170)))))

(declare-fun b!1007223 () Bool)

(assert (=> b!1007223 (= e!566913 e!566918)))

(declare-fun res!676279 () Bool)

(assert (=> b!1007223 (=> (not res!676279) (not e!566918))))

(declare-fun lt!445098 () SeekEntryResult!9507)

(assert (=> b!1007223 (= res!676279 (or (= lt!445098 (MissingVacant!9507 i!1194)) (= lt!445098 (MissingZero!9507 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63516 (_ BitVec 32)) SeekEntryResult!9507)

(assert (=> b!1007223 (= lt!445098 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1007224 () Bool)

(declare-fun res!676273 () Bool)

(assert (=> b!1007224 (=> (not res!676273) (not e!566916))))

(assert (=> b!1007224 (= res!676273 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1007225 () Bool)

(assert (=> b!1007225 (= e!566915 e!566917)))

(declare-fun res!676276 () Bool)

(assert (=> b!1007225 (=> (not res!676276) (not e!566917))))

(assert (=> b!1007225 (= res!676276 (= lt!445099 lt!445101))))

(assert (=> b!1007225 (= lt!445099 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30575 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007226 () Bool)

(declare-fun res!676269 () Bool)

(assert (=> b!1007226 (=> (not res!676269) (not e!566918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63516 (_ BitVec 32)) Bool)

(assert (=> b!1007226 (= res!676269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007227 () Bool)

(declare-fun res!676271 () Bool)

(assert (=> b!1007227 (=> (not res!676271) (not e!566913))))

(assert (=> b!1007227 (= res!676271 (and (= (size!31078 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31078 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31078 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007228 () Bool)

(declare-fun res!676267 () Bool)

(assert (=> b!1007228 (=> (not res!676267) (not e!566913))))

(assert (=> b!1007228 (= res!676267 (validKeyInArray!0 k0!2224))))

(declare-fun b!1007229 () Bool)

(assert (=> b!1007229 (= e!566916 false)))

(declare-fun lt!445102 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007229 (= lt!445102 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007230 () Bool)

(declare-fun res!676268 () Bool)

(assert (=> b!1007230 (=> (not res!676268) (not e!566913))))

(declare-fun arrayContainsKey!0 (array!63516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007230 (= res!676268 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86916 res!676272) b!1007227))

(assert (= (and b!1007227 res!676271) b!1007222))

(assert (= (and b!1007222 res!676275) b!1007228))

(assert (= (and b!1007228 res!676267) b!1007230))

(assert (= (and b!1007230 res!676268) b!1007223))

(assert (= (and b!1007223 res!676279) b!1007226))

(assert (= (and b!1007226 res!676269) b!1007218))

(assert (= (and b!1007218 res!676277) b!1007221))

(assert (= (and b!1007221 res!676270) b!1007220))

(assert (= (and b!1007220 res!676266) b!1007225))

(assert (= (and b!1007225 res!676276) b!1007217))

(assert (= (and b!1007217 res!676274) b!1007219))

(assert (= (and b!1007219 res!676278) b!1007224))

(assert (= (and b!1007224 res!676273) b!1007229))

(declare-fun m!932235 () Bool)

(assert (=> start!86916 m!932235))

(declare-fun m!932237 () Bool)

(assert (=> start!86916 m!932237))

(declare-fun m!932239 () Bool)

(assert (=> b!1007229 m!932239))

(declare-fun m!932241 () Bool)

(assert (=> b!1007220 m!932241))

(assert (=> b!1007220 m!932241))

(declare-fun m!932243 () Bool)

(assert (=> b!1007220 m!932243))

(assert (=> b!1007220 m!932243))

(assert (=> b!1007220 m!932241))

(declare-fun m!932245 () Bool)

(assert (=> b!1007220 m!932245))

(declare-fun m!932247 () Bool)

(assert (=> b!1007228 m!932247))

(declare-fun m!932249 () Bool)

(assert (=> b!1007217 m!932249))

(assert (=> b!1007217 m!932249))

(declare-fun m!932251 () Bool)

(assert (=> b!1007217 m!932251))

(declare-fun m!932253 () Bool)

(assert (=> b!1007217 m!932253))

(declare-fun m!932255 () Bool)

(assert (=> b!1007217 m!932255))

(assert (=> b!1007222 m!932241))

(assert (=> b!1007222 m!932241))

(declare-fun m!932257 () Bool)

(assert (=> b!1007222 m!932257))

(declare-fun m!932259 () Bool)

(assert (=> b!1007230 m!932259))

(declare-fun m!932261 () Bool)

(assert (=> b!1007226 m!932261))

(declare-fun m!932263 () Bool)

(assert (=> b!1007223 m!932263))

(declare-fun m!932265 () Bool)

(assert (=> b!1007218 m!932265))

(assert (=> b!1007225 m!932241))

(assert (=> b!1007225 m!932241))

(declare-fun m!932267 () Bool)

(assert (=> b!1007225 m!932267))

(declare-fun m!932269 () Bool)

(assert (=> b!1007219 m!932269))

(check-sat (not b!1007218) (not b!1007217) (not b!1007219) (not start!86916) (not b!1007226) (not b!1007225) (not b!1007229) (not b!1007230) (not b!1007228) (not b!1007220) (not b!1007223) (not b!1007222))
(check-sat)
