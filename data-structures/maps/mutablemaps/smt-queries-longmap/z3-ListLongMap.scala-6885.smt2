; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86598 () Bool)

(assert start!86598)

(declare-fun b!1003411 () Bool)

(declare-fun e!565183 () Bool)

(declare-fun e!565184 () Bool)

(assert (=> b!1003411 (= e!565183 e!565184)))

(declare-fun res!673052 () Bool)

(assert (=> b!1003411 (=> (not res!673052) (not e!565184))))

(declare-datatypes ((SeekEntryResult!9429 0))(
  ( (MissingZero!9429 (index!40086 (_ BitVec 32))) (Found!9429 (index!40087 (_ BitVec 32))) (Intermediate!9429 (undefined!10241 Bool) (index!40088 (_ BitVec 32)) (x!87522 (_ BitVec 32))) (Undefined!9429) (MissingVacant!9429 (index!40089 (_ BitVec 32))) )
))
(declare-fun lt!443673 () SeekEntryResult!9429)

(declare-fun lt!443677 () SeekEntryResult!9429)

(assert (=> b!1003411 (= res!673052 (= lt!443673 lt!443677))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003411 (= lt!443677 (Intermediate!9429 false resIndex!38 resX!38))))

(declare-datatypes ((array!63351 0))(
  ( (array!63352 (arr!30497 (Array (_ BitVec 32) (_ BitVec 64))) (size!31000 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63351)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63351 (_ BitVec 32)) SeekEntryResult!9429)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003411 (= lt!443673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30497 a!3219) j!170) mask!3464) (select (arr!30497 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003412 () Bool)

(declare-fun e!565187 () Bool)

(assert (=> b!1003412 (= e!565187 false)))

(declare-fun lt!443678 () (_ BitVec 32))

(declare-fun lt!443676 () array!63351)

(declare-fun lt!443672 () SeekEntryResult!9429)

(declare-fun lt!443675 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1003412 (= lt!443672 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443678 lt!443675 lt!443676 mask!3464))))

(declare-fun b!1003413 () Bool)

(declare-fun res!673054 () Bool)

(assert (=> b!1003413 (=> (not res!673054) (not e!565183))))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1003413 (= res!673054 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31000 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31000 a!3219))))))

(declare-fun b!1003414 () Bool)

(declare-fun res!673048 () Bool)

(declare-fun e!565185 () Bool)

(assert (=> b!1003414 (=> (not res!673048) (not e!565185))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003414 (= res!673048 (and (= (size!31000 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31000 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31000 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003416 () Bool)

(declare-fun res!673059 () Bool)

(assert (=> b!1003416 (=> (not res!673059) (not e!565183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63351 (_ BitVec 32)) Bool)

(assert (=> b!1003416 (= res!673059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003417 () Bool)

(assert (=> b!1003417 (= e!565185 e!565183)))

(declare-fun res!673053 () Bool)

(assert (=> b!1003417 (=> (not res!673053) (not e!565183))))

(declare-fun lt!443674 () SeekEntryResult!9429)

(assert (=> b!1003417 (= res!673053 (or (= lt!443674 (MissingVacant!9429 i!1194)) (= lt!443674 (MissingZero!9429 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63351 (_ BitVec 32)) SeekEntryResult!9429)

(assert (=> b!1003417 (= lt!443674 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1003418 () Bool)

(declare-fun e!565182 () Bool)

(declare-fun e!565181 () Bool)

(assert (=> b!1003418 (= e!565182 e!565181)))

(declare-fun res!673060 () Bool)

(assert (=> b!1003418 (=> (not res!673060) (not e!565181))))

(assert (=> b!1003418 (= res!673060 (not (= lt!443673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443675 mask!3464) lt!443675 lt!443676 mask!3464))))))

(assert (=> b!1003418 (= lt!443675 (select (store (arr!30497 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1003418 (= lt!443676 (array!63352 (store (arr!30497 a!3219) i!1194 k0!2224) (size!31000 a!3219)))))

(declare-fun b!1003419 () Bool)

(declare-fun res!673051 () Bool)

(assert (=> b!1003419 (=> (not res!673051) (not e!565185))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003419 (= res!673051 (validKeyInArray!0 k0!2224))))

(declare-fun b!1003420 () Bool)

(declare-fun res!673049 () Bool)

(assert (=> b!1003420 (=> (not res!673049) (not e!565185))))

(assert (=> b!1003420 (= res!673049 (validKeyInArray!0 (select (arr!30497 a!3219) j!170)))))

(declare-fun b!1003421 () Bool)

(assert (=> b!1003421 (= e!565184 e!565182)))

(declare-fun res!673057 () Bool)

(assert (=> b!1003421 (=> (not res!673057) (not e!565182))))

(declare-fun lt!443679 () SeekEntryResult!9429)

(assert (=> b!1003421 (= res!673057 (= lt!443679 lt!443677))))

(assert (=> b!1003421 (= lt!443679 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30497 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003422 () Bool)

(declare-fun res!673056 () Bool)

(assert (=> b!1003422 (=> (not res!673056) (not e!565181))))

(assert (=> b!1003422 (= res!673056 (not (= lt!443679 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443675 lt!443676 mask!3464))))))

(declare-fun b!1003423 () Bool)

(assert (=> b!1003423 (= e!565181 e!565187)))

(declare-fun res!673055 () Bool)

(assert (=> b!1003423 (=> (not res!673055) (not e!565187))))

(assert (=> b!1003423 (= res!673055 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443678 #b00000000000000000000000000000000) (bvslt lt!443678 (size!31000 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003423 (= lt!443678 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003424 () Bool)

(declare-fun res!673050 () Bool)

(assert (=> b!1003424 (=> (not res!673050) (not e!565183))))

(declare-datatypes ((List!21299 0))(
  ( (Nil!21296) (Cons!21295 (h!22472 (_ BitVec 64)) (t!30308 List!21299)) )
))
(declare-fun arrayNoDuplicates!0 (array!63351 (_ BitVec 32) List!21299) Bool)

(assert (=> b!1003424 (= res!673050 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21296))))

(declare-fun b!1003415 () Bool)

(declare-fun res!673046 () Bool)

(assert (=> b!1003415 (=> (not res!673046) (not e!565185))))

(declare-fun arrayContainsKey!0 (array!63351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003415 (= res!673046 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!673047 () Bool)

(assert (=> start!86598 (=> (not res!673047) (not e!565185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86598 (= res!673047 (validMask!0 mask!3464))))

(assert (=> start!86598 e!565185))

(declare-fun array_inv!23487 (array!63351) Bool)

(assert (=> start!86598 (array_inv!23487 a!3219)))

(assert (=> start!86598 true))

(declare-fun b!1003425 () Bool)

(declare-fun res!673045 () Bool)

(assert (=> b!1003425 (=> (not res!673045) (not e!565181))))

(assert (=> b!1003425 (= res!673045 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003426 () Bool)

(declare-fun res!673058 () Bool)

(assert (=> b!1003426 (=> (not res!673058) (not e!565187))))

(assert (=> b!1003426 (= res!673058 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443678 (select (arr!30497 a!3219) j!170) a!3219 mask!3464) lt!443677))))

(assert (= (and start!86598 res!673047) b!1003414))

(assert (= (and b!1003414 res!673048) b!1003420))

(assert (= (and b!1003420 res!673049) b!1003419))

(assert (= (and b!1003419 res!673051) b!1003415))

(assert (= (and b!1003415 res!673046) b!1003417))

(assert (= (and b!1003417 res!673053) b!1003416))

(assert (= (and b!1003416 res!673059) b!1003424))

(assert (= (and b!1003424 res!673050) b!1003413))

(assert (= (and b!1003413 res!673054) b!1003411))

(assert (= (and b!1003411 res!673052) b!1003421))

(assert (= (and b!1003421 res!673057) b!1003418))

(assert (= (and b!1003418 res!673060) b!1003422))

(assert (= (and b!1003422 res!673056) b!1003425))

(assert (= (and b!1003425 res!673045) b!1003423))

(assert (= (and b!1003423 res!673055) b!1003426))

(assert (= (and b!1003426 res!673058) b!1003412))

(declare-fun m!929221 () Bool)

(assert (=> b!1003417 m!929221))

(declare-fun m!929223 () Bool)

(assert (=> b!1003421 m!929223))

(assert (=> b!1003421 m!929223))

(declare-fun m!929225 () Bool)

(assert (=> b!1003421 m!929225))

(declare-fun m!929227 () Bool)

(assert (=> start!86598 m!929227))

(declare-fun m!929229 () Bool)

(assert (=> start!86598 m!929229))

(assert (=> b!1003420 m!929223))

(assert (=> b!1003420 m!929223))

(declare-fun m!929231 () Bool)

(assert (=> b!1003420 m!929231))

(declare-fun m!929233 () Bool)

(assert (=> b!1003422 m!929233))

(declare-fun m!929235 () Bool)

(assert (=> b!1003412 m!929235))

(assert (=> b!1003426 m!929223))

(assert (=> b!1003426 m!929223))

(declare-fun m!929237 () Bool)

(assert (=> b!1003426 m!929237))

(declare-fun m!929239 () Bool)

(assert (=> b!1003416 m!929239))

(declare-fun m!929241 () Bool)

(assert (=> b!1003419 m!929241))

(assert (=> b!1003411 m!929223))

(assert (=> b!1003411 m!929223))

(declare-fun m!929243 () Bool)

(assert (=> b!1003411 m!929243))

(assert (=> b!1003411 m!929243))

(assert (=> b!1003411 m!929223))

(declare-fun m!929245 () Bool)

(assert (=> b!1003411 m!929245))

(declare-fun m!929247 () Bool)

(assert (=> b!1003424 m!929247))

(declare-fun m!929249 () Bool)

(assert (=> b!1003423 m!929249))

(declare-fun m!929251 () Bool)

(assert (=> b!1003415 m!929251))

(declare-fun m!929253 () Bool)

(assert (=> b!1003418 m!929253))

(assert (=> b!1003418 m!929253))

(declare-fun m!929255 () Bool)

(assert (=> b!1003418 m!929255))

(declare-fun m!929257 () Bool)

(assert (=> b!1003418 m!929257))

(declare-fun m!929259 () Bool)

(assert (=> b!1003418 m!929259))

(check-sat (not b!1003424) (not b!1003411) (not b!1003412) (not b!1003419) (not b!1003423) (not b!1003422) (not b!1003420) (not b!1003416) (not start!86598) (not b!1003421) (not b!1003417) (not b!1003415) (not b!1003418) (not b!1003426))
(check-sat)
