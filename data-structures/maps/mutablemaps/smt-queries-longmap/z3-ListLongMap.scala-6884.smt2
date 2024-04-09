; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86592 () Bool)

(assert start!86592)

(declare-fun b!1003267 () Bool)

(declare-fun res!672902 () Bool)

(declare-fun e!565122 () Bool)

(assert (=> b!1003267 (=> (not res!672902) (not e!565122))))

(declare-datatypes ((array!63345 0))(
  ( (array!63346 (arr!30494 (Array (_ BitVec 32) (_ BitVec 64))) (size!30997 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63345)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003267 (= res!672902 (validKeyInArray!0 (select (arr!30494 a!3219) j!170)))))

(declare-fun b!1003268 () Bool)

(declare-fun e!565121 () Bool)

(assert (=> b!1003268 (= e!565122 e!565121)))

(declare-fun res!672904 () Bool)

(assert (=> b!1003268 (=> (not res!672904) (not e!565121))))

(declare-datatypes ((SeekEntryResult!9426 0))(
  ( (MissingZero!9426 (index!40074 (_ BitVec 32))) (Found!9426 (index!40075 (_ BitVec 32))) (Intermediate!9426 (undefined!10238 Bool) (index!40076 (_ BitVec 32)) (x!87511 (_ BitVec 32))) (Undefined!9426) (MissingVacant!9426 (index!40077 (_ BitVec 32))) )
))
(declare-fun lt!443605 () SeekEntryResult!9426)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1003268 (= res!672904 (or (= lt!443605 (MissingVacant!9426 i!1194)) (= lt!443605 (MissingZero!9426 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63345 (_ BitVec 32)) SeekEntryResult!9426)

(assert (=> b!1003268 (= lt!443605 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1003269 () Bool)

(declare-fun res!672908 () Bool)

(assert (=> b!1003269 (=> (not res!672908) (not e!565121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63345 (_ BitVec 32)) Bool)

(assert (=> b!1003269 (= res!672908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003270 () Bool)

(declare-fun res!672909 () Bool)

(assert (=> b!1003270 (=> (not res!672909) (not e!565121))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003270 (= res!672909 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30997 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30997 a!3219))))))

(declare-fun b!1003271 () Bool)

(declare-fun res!672911 () Bool)

(assert (=> b!1003271 (=> (not res!672911) (not e!565122))))

(assert (=> b!1003271 (= res!672911 (and (= (size!30997 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30997 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30997 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003272 () Bool)

(declare-fun e!565119 () Bool)

(declare-fun e!565123 () Bool)

(assert (=> b!1003272 (= e!565119 e!565123)))

(declare-fun res!672910 () Bool)

(assert (=> b!1003272 (=> (not res!672910) (not e!565123))))

(declare-fun lt!443603 () (_ BitVec 64))

(declare-fun lt!443607 () array!63345)

(declare-fun lt!443601 () SeekEntryResult!9426)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63345 (_ BitVec 32)) SeekEntryResult!9426)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003272 (= res!672910 (not (= lt!443601 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443603 mask!3464) lt!443603 lt!443607 mask!3464))))))

(assert (=> b!1003272 (= lt!443603 (select (store (arr!30494 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1003272 (= lt!443607 (array!63346 (store (arr!30494 a!3219) i!1194 k0!2224) (size!30997 a!3219)))))

(declare-fun b!1003273 () Bool)

(declare-fun res!672915 () Bool)

(assert (=> b!1003273 (=> (not res!672915) (not e!565122))))

(assert (=> b!1003273 (= res!672915 (validKeyInArray!0 k0!2224))))

(declare-fun b!1003274 () Bool)

(declare-fun res!672903 () Bool)

(assert (=> b!1003274 (=> (not res!672903) (not e!565121))))

(declare-datatypes ((List!21296 0))(
  ( (Nil!21293) (Cons!21292 (h!22469 (_ BitVec 64)) (t!30305 List!21296)) )
))
(declare-fun arrayNoDuplicates!0 (array!63345 (_ BitVec 32) List!21296) Bool)

(assert (=> b!1003274 (= res!672903 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21293))))

(declare-fun b!1003275 () Bool)

(declare-fun res!672906 () Bool)

(declare-fun e!565124 () Bool)

(assert (=> b!1003275 (=> (not res!672906) (not e!565124))))

(declare-fun lt!443604 () SeekEntryResult!9426)

(declare-fun lt!443606 () (_ BitVec 32))

(assert (=> b!1003275 (= res!672906 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443606 (select (arr!30494 a!3219) j!170) a!3219 mask!3464) lt!443604))))

(declare-fun b!1003277 () Bool)

(declare-fun res!672914 () Bool)

(assert (=> b!1003277 (=> (not res!672914) (not e!565123))))

(assert (=> b!1003277 (= res!672914 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003278 () Bool)

(declare-fun e!565120 () Bool)

(assert (=> b!1003278 (= e!565121 e!565120)))

(declare-fun res!672916 () Bool)

(assert (=> b!1003278 (=> (not res!672916) (not e!565120))))

(assert (=> b!1003278 (= res!672916 (= lt!443601 lt!443604))))

(assert (=> b!1003278 (= lt!443604 (Intermediate!9426 false resIndex!38 resX!38))))

(assert (=> b!1003278 (= lt!443601 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30494 a!3219) j!170) mask!3464) (select (arr!30494 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003279 () Bool)

(declare-fun res!672901 () Bool)

(assert (=> b!1003279 (=> (not res!672901) (not e!565122))))

(declare-fun arrayContainsKey!0 (array!63345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003279 (= res!672901 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003280 () Bool)

(assert (=> b!1003280 (= e!565120 e!565119)))

(declare-fun res!672912 () Bool)

(assert (=> b!1003280 (=> (not res!672912) (not e!565119))))

(declare-fun lt!443600 () SeekEntryResult!9426)

(assert (=> b!1003280 (= res!672912 (= lt!443600 lt!443604))))

(assert (=> b!1003280 (= lt!443600 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30494 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003281 () Bool)

(assert (=> b!1003281 (= e!565124 false)))

(declare-fun lt!443602 () SeekEntryResult!9426)

(assert (=> b!1003281 (= lt!443602 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443606 lt!443603 lt!443607 mask!3464))))

(declare-fun b!1003282 () Bool)

(assert (=> b!1003282 (= e!565123 e!565124)))

(declare-fun res!672913 () Bool)

(assert (=> b!1003282 (=> (not res!672913) (not e!565124))))

(assert (=> b!1003282 (= res!672913 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443606 #b00000000000000000000000000000000) (bvslt lt!443606 (size!30997 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003282 (= lt!443606 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun res!672905 () Bool)

(assert (=> start!86592 (=> (not res!672905) (not e!565122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86592 (= res!672905 (validMask!0 mask!3464))))

(assert (=> start!86592 e!565122))

(declare-fun array_inv!23484 (array!63345) Bool)

(assert (=> start!86592 (array_inv!23484 a!3219)))

(assert (=> start!86592 true))

(declare-fun b!1003276 () Bool)

(declare-fun res!672907 () Bool)

(assert (=> b!1003276 (=> (not res!672907) (not e!565123))))

(assert (=> b!1003276 (= res!672907 (not (= lt!443600 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443603 lt!443607 mask!3464))))))

(assert (= (and start!86592 res!672905) b!1003271))

(assert (= (and b!1003271 res!672911) b!1003267))

(assert (= (and b!1003267 res!672902) b!1003273))

(assert (= (and b!1003273 res!672915) b!1003279))

(assert (= (and b!1003279 res!672901) b!1003268))

(assert (= (and b!1003268 res!672904) b!1003269))

(assert (= (and b!1003269 res!672908) b!1003274))

(assert (= (and b!1003274 res!672903) b!1003270))

(assert (= (and b!1003270 res!672909) b!1003278))

(assert (= (and b!1003278 res!672916) b!1003280))

(assert (= (and b!1003280 res!672912) b!1003272))

(assert (= (and b!1003272 res!672910) b!1003276))

(assert (= (and b!1003276 res!672907) b!1003277))

(assert (= (and b!1003277 res!672914) b!1003282))

(assert (= (and b!1003282 res!672913) b!1003275))

(assert (= (and b!1003275 res!672906) b!1003281))

(declare-fun m!929101 () Bool)

(assert (=> b!1003272 m!929101))

(assert (=> b!1003272 m!929101))

(declare-fun m!929103 () Bool)

(assert (=> b!1003272 m!929103))

(declare-fun m!929105 () Bool)

(assert (=> b!1003272 m!929105))

(declare-fun m!929107 () Bool)

(assert (=> b!1003272 m!929107))

(declare-fun m!929109 () Bool)

(assert (=> b!1003281 m!929109))

(declare-fun m!929111 () Bool)

(assert (=> b!1003282 m!929111))

(declare-fun m!929113 () Bool)

(assert (=> b!1003279 m!929113))

(declare-fun m!929115 () Bool)

(assert (=> b!1003274 m!929115))

(declare-fun m!929117 () Bool)

(assert (=> b!1003268 m!929117))

(declare-fun m!929119 () Bool)

(assert (=> b!1003275 m!929119))

(assert (=> b!1003275 m!929119))

(declare-fun m!929121 () Bool)

(assert (=> b!1003275 m!929121))

(declare-fun m!929123 () Bool)

(assert (=> start!86592 m!929123))

(declare-fun m!929125 () Bool)

(assert (=> start!86592 m!929125))

(declare-fun m!929127 () Bool)

(assert (=> b!1003273 m!929127))

(declare-fun m!929129 () Bool)

(assert (=> b!1003269 m!929129))

(assert (=> b!1003267 m!929119))

(assert (=> b!1003267 m!929119))

(declare-fun m!929131 () Bool)

(assert (=> b!1003267 m!929131))

(declare-fun m!929133 () Bool)

(assert (=> b!1003276 m!929133))

(assert (=> b!1003278 m!929119))

(assert (=> b!1003278 m!929119))

(declare-fun m!929135 () Bool)

(assert (=> b!1003278 m!929135))

(assert (=> b!1003278 m!929135))

(assert (=> b!1003278 m!929119))

(declare-fun m!929137 () Bool)

(assert (=> b!1003278 m!929137))

(assert (=> b!1003280 m!929119))

(assert (=> b!1003280 m!929119))

(declare-fun m!929139 () Bool)

(assert (=> b!1003280 m!929139))

(check-sat (not start!86592) (not b!1003273) (not b!1003268) (not b!1003272) (not b!1003269) (not b!1003275) (not b!1003267) (not b!1003282) (not b!1003280) (not b!1003274) (not b!1003279) (not b!1003276) (not b!1003281) (not b!1003278))
(check-sat)
