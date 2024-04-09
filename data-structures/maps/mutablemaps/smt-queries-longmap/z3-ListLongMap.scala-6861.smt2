; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86454 () Bool)

(assert start!86454)

(declare-fun b!1000232 () Bool)

(declare-fun res!669866 () Bool)

(declare-fun e!563837 () Bool)

(assert (=> b!1000232 (=> (not res!669866) (not e!563837))))

(declare-datatypes ((array!63207 0))(
  ( (array!63208 (arr!30425 (Array (_ BitVec 32) (_ BitVec 64))) (size!30928 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63207)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9357 0))(
  ( (MissingZero!9357 (index!39798 (_ BitVec 32))) (Found!9357 (index!39799 (_ BitVec 32))) (Intermediate!9357 (undefined!10169 Bool) (index!39800 (_ BitVec 32)) (x!87258 (_ BitVec 32))) (Undefined!9357) (MissingVacant!9357 (index!39801 (_ BitVec 32))) )
))
(declare-fun lt!442218 () SeekEntryResult!9357)

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63207 (_ BitVec 32)) SeekEntryResult!9357)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000232 (= res!669866 (not (= lt!442218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30425 a!3219) i!1194 k0!2224) j!170) mask!3464) (select (store (arr!30425 a!3219) i!1194 k0!2224) j!170) (array!63208 (store (arr!30425 a!3219) i!1194 k0!2224) (size!30928 a!3219)) mask!3464))))))

(declare-fun b!1000233 () Bool)

(declare-fun e!563834 () Bool)

(assert (=> b!1000233 (= e!563834 e!563837)))

(declare-fun res!669869 () Bool)

(assert (=> b!1000233 (=> (not res!669869) (not e!563837))))

(declare-fun lt!442216 () SeekEntryResult!9357)

(assert (=> b!1000233 (= res!669869 (= lt!442218 lt!442216))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000233 (= lt!442216 (Intermediate!9357 false resIndex!38 resX!38))))

(assert (=> b!1000233 (= lt!442218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30425 a!3219) j!170) mask!3464) (select (arr!30425 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000234 () Bool)

(declare-fun res!669870 () Bool)

(declare-fun e!563835 () Bool)

(assert (=> b!1000234 (=> (not res!669870) (not e!563835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000234 (= res!669870 (validKeyInArray!0 k0!2224))))

(declare-fun b!1000235 () Bool)

(declare-fun res!669872 () Bool)

(assert (=> b!1000235 (=> (not res!669872) (not e!563835))))

(assert (=> b!1000235 (= res!669872 (and (= (size!30928 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30928 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30928 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000236 () Bool)

(declare-fun res!669876 () Bool)

(assert (=> b!1000236 (=> (not res!669876) (not e!563837))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1000236 (= res!669876 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30425 a!3219) j!170) a!3219 mask!3464) lt!442216))))

(declare-fun b!1000237 () Bool)

(declare-fun res!669873 () Bool)

(assert (=> b!1000237 (=> (not res!669873) (not e!563834))))

(declare-datatypes ((List!21227 0))(
  ( (Nil!21224) (Cons!21223 (h!22400 (_ BitVec 64)) (t!30236 List!21227)) )
))
(declare-fun arrayNoDuplicates!0 (array!63207 (_ BitVec 32) List!21227) Bool)

(assert (=> b!1000237 (= res!669873 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21224))))

(declare-fun b!1000238 () Bool)

(declare-fun res!669877 () Bool)

(assert (=> b!1000238 (=> (not res!669877) (not e!563834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63207 (_ BitVec 32)) Bool)

(assert (=> b!1000238 (= res!669877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000239 () Bool)

(declare-fun res!669875 () Bool)

(assert (=> b!1000239 (=> (not res!669875) (not e!563835))))

(declare-fun arrayContainsKey!0 (array!63207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000239 (= res!669875 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000240 () Bool)

(assert (=> b!1000240 (= e!563837 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!1000242 () Bool)

(declare-fun res!669874 () Bool)

(assert (=> b!1000242 (=> (not res!669874) (not e!563834))))

(assert (=> b!1000242 (= res!669874 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30928 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30928 a!3219))))))

(declare-fun b!1000243 () Bool)

(declare-fun res!669871 () Bool)

(assert (=> b!1000243 (=> (not res!669871) (not e!563835))))

(assert (=> b!1000243 (= res!669871 (validKeyInArray!0 (select (arr!30425 a!3219) j!170)))))

(declare-fun b!1000241 () Bool)

(assert (=> b!1000241 (= e!563835 e!563834)))

(declare-fun res!669867 () Bool)

(assert (=> b!1000241 (=> (not res!669867) (not e!563834))))

(declare-fun lt!442217 () SeekEntryResult!9357)

(assert (=> b!1000241 (= res!669867 (or (= lt!442217 (MissingVacant!9357 i!1194)) (= lt!442217 (MissingZero!9357 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63207 (_ BitVec 32)) SeekEntryResult!9357)

(assert (=> b!1000241 (= lt!442217 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun res!669868 () Bool)

(assert (=> start!86454 (=> (not res!669868) (not e!563835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86454 (= res!669868 (validMask!0 mask!3464))))

(assert (=> start!86454 e!563835))

(declare-fun array_inv!23415 (array!63207) Bool)

(assert (=> start!86454 (array_inv!23415 a!3219)))

(assert (=> start!86454 true))

(assert (= (and start!86454 res!669868) b!1000235))

(assert (= (and b!1000235 res!669872) b!1000243))

(assert (= (and b!1000243 res!669871) b!1000234))

(assert (= (and b!1000234 res!669870) b!1000239))

(assert (= (and b!1000239 res!669875) b!1000241))

(assert (= (and b!1000241 res!669867) b!1000238))

(assert (= (and b!1000238 res!669877) b!1000237))

(assert (= (and b!1000237 res!669873) b!1000242))

(assert (= (and b!1000242 res!669874) b!1000233))

(assert (= (and b!1000233 res!669869) b!1000236))

(assert (= (and b!1000236 res!669876) b!1000232))

(assert (= (and b!1000232 res!669866) b!1000240))

(declare-fun m!926519 () Bool)

(assert (=> b!1000239 m!926519))

(declare-fun m!926521 () Bool)

(assert (=> b!1000232 m!926521))

(declare-fun m!926523 () Bool)

(assert (=> b!1000232 m!926523))

(assert (=> b!1000232 m!926523))

(declare-fun m!926525 () Bool)

(assert (=> b!1000232 m!926525))

(assert (=> b!1000232 m!926525))

(assert (=> b!1000232 m!926523))

(declare-fun m!926527 () Bool)

(assert (=> b!1000232 m!926527))

(declare-fun m!926529 () Bool)

(assert (=> b!1000234 m!926529))

(declare-fun m!926531 () Bool)

(assert (=> b!1000237 m!926531))

(declare-fun m!926533 () Bool)

(assert (=> start!86454 m!926533))

(declare-fun m!926535 () Bool)

(assert (=> start!86454 m!926535))

(declare-fun m!926537 () Bool)

(assert (=> b!1000243 m!926537))

(assert (=> b!1000243 m!926537))

(declare-fun m!926539 () Bool)

(assert (=> b!1000243 m!926539))

(declare-fun m!926541 () Bool)

(assert (=> b!1000241 m!926541))

(assert (=> b!1000233 m!926537))

(assert (=> b!1000233 m!926537))

(declare-fun m!926543 () Bool)

(assert (=> b!1000233 m!926543))

(assert (=> b!1000233 m!926543))

(assert (=> b!1000233 m!926537))

(declare-fun m!926545 () Bool)

(assert (=> b!1000233 m!926545))

(assert (=> b!1000236 m!926537))

(assert (=> b!1000236 m!926537))

(declare-fun m!926547 () Bool)

(assert (=> b!1000236 m!926547))

(declare-fun m!926549 () Bool)

(assert (=> b!1000238 m!926549))

(check-sat (not b!1000234) (not b!1000238) (not b!1000237) (not b!1000239) (not start!86454) (not b!1000236) (not b!1000243) (not b!1000232) (not b!1000233) (not b!1000241))
(check-sat)
