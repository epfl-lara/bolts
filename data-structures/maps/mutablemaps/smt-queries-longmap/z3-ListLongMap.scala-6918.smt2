; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86958 () Bool)

(assert start!86958)

(declare-fun b!1008099 () Bool)

(declare-fun e!567295 () Bool)

(declare-fun e!567293 () Bool)

(assert (=> b!1008099 (= e!567295 e!567293)))

(declare-fun res!677155 () Bool)

(assert (=> b!1008099 (=> (not res!677155) (not e!567293))))

(declare-datatypes ((SeekEntryResult!9528 0))(
  ( (MissingZero!9528 (index!40482 (_ BitVec 32))) (Found!9528 (index!40483 (_ BitVec 32))) (Intermediate!9528 (undefined!10340 Bool) (index!40484 (_ BitVec 32)) (x!87903 (_ BitVec 32))) (Undefined!9528) (MissingVacant!9528 (index!40485 (_ BitVec 32))) )
))
(declare-fun lt!445539 () SeekEntryResult!9528)

(declare-fun lt!445541 () SeekEntryResult!9528)

(assert (=> b!1008099 (= res!677155 (= lt!445539 lt!445541))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008099 (= lt!445541 (Intermediate!9528 false resIndex!38 resX!38))))

(declare-datatypes ((array!63558 0))(
  ( (array!63559 (arr!30596 (Array (_ BitVec 32) (_ BitVec 64))) (size!31099 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63558)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63558 (_ BitVec 32)) SeekEntryResult!9528)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008099 (= lt!445539 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30596 a!3219) j!170) mask!3464) (select (arr!30596 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008100 () Bool)

(declare-fun res!677157 () Bool)

(declare-fun e!567291 () Bool)

(assert (=> b!1008100 (=> (not res!677157) (not e!567291))))

(declare-fun lt!445542 () array!63558)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!445545 () SeekEntryResult!9528)

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445540 () (_ BitVec 64))

(assert (=> b!1008100 (= res!677157 (not (= lt!445545 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445540 lt!445542 mask!3464))))))

(declare-fun b!1008101 () Bool)

(declare-fun e!567292 () Bool)

(assert (=> b!1008101 (= e!567293 e!567292)))

(declare-fun res!677148 () Bool)

(assert (=> b!1008101 (=> (not res!677148) (not e!567292))))

(assert (=> b!1008101 (= res!677148 (= lt!445545 lt!445541))))

(assert (=> b!1008101 (= lt!445545 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30596 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008102 () Bool)

(declare-fun res!677149 () Bool)

(declare-fun e!567294 () Bool)

(assert (=> b!1008102 (=> (not res!677149) (not e!567294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008102 (= res!677149 (validKeyInArray!0 (select (arr!30596 a!3219) j!170)))))

(declare-fun b!1008103 () Bool)

(declare-fun res!677154 () Bool)

(assert (=> b!1008103 (=> (not res!677154) (not e!567294))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008103 (= res!677154 (and (= (size!31099 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31099 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31099 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008105 () Bool)

(declare-fun res!677160 () Bool)

(assert (=> b!1008105 (=> (not res!677160) (not e!567295))))

(declare-datatypes ((List!21398 0))(
  ( (Nil!21395) (Cons!21394 (h!22580 (_ BitVec 64)) (t!30407 List!21398)) )
))
(declare-fun arrayNoDuplicates!0 (array!63558 (_ BitVec 32) List!21398) Bool)

(assert (=> b!1008105 (= res!677160 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21395))))

(declare-fun b!1008106 () Bool)

(declare-fun res!677150 () Bool)

(assert (=> b!1008106 (=> (not res!677150) (not e!567294))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1008106 (= res!677150 (validKeyInArray!0 k0!2224))))

(declare-fun b!1008107 () Bool)

(declare-fun res!677151 () Bool)

(assert (=> b!1008107 (=> (not res!677151) (not e!567291))))

(assert (=> b!1008107 (= res!677151 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008108 () Bool)

(assert (=> b!1008108 (= e!567292 e!567291)))

(declare-fun res!677152 () Bool)

(assert (=> b!1008108 (=> (not res!677152) (not e!567291))))

(assert (=> b!1008108 (= res!677152 (not (= lt!445539 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445540 mask!3464) lt!445540 lt!445542 mask!3464))))))

(assert (=> b!1008108 (= lt!445540 (select (store (arr!30596 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1008108 (= lt!445542 (array!63559 (store (arr!30596 a!3219) i!1194 k0!2224) (size!31099 a!3219)))))

(declare-fun b!1008109 () Bool)

(assert (=> b!1008109 (= e!567294 e!567295)))

(declare-fun res!677161 () Bool)

(assert (=> b!1008109 (=> (not res!677161) (not e!567295))))

(declare-fun lt!445543 () SeekEntryResult!9528)

(assert (=> b!1008109 (= res!677161 (or (= lt!445543 (MissingVacant!9528 i!1194)) (= lt!445543 (MissingZero!9528 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63558 (_ BitVec 32)) SeekEntryResult!9528)

(assert (=> b!1008109 (= lt!445543 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1008110 () Bool)

(declare-fun res!677159 () Bool)

(assert (=> b!1008110 (=> (not res!677159) (not e!567295))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63558 (_ BitVec 32)) Bool)

(assert (=> b!1008110 (= res!677159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008111 () Bool)

(declare-fun res!677156 () Bool)

(assert (=> b!1008111 (=> (not res!677156) (not e!567294))))

(declare-fun arrayContainsKey!0 (array!63558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008111 (= res!677156 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008112 () Bool)

(declare-fun res!677153 () Bool)

(assert (=> b!1008112 (=> (not res!677153) (not e!567295))))

(assert (=> b!1008112 (= res!677153 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31099 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31099 a!3219))))))

(declare-fun b!1008104 () Bool)

(assert (=> b!1008104 (= e!567291 false)))

(declare-fun lt!445544 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008104 (= lt!445544 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun res!677158 () Bool)

(assert (=> start!86958 (=> (not res!677158) (not e!567294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86958 (= res!677158 (validMask!0 mask!3464))))

(assert (=> start!86958 e!567294))

(declare-fun array_inv!23586 (array!63558) Bool)

(assert (=> start!86958 (array_inv!23586 a!3219)))

(assert (=> start!86958 true))

(assert (= (and start!86958 res!677158) b!1008103))

(assert (= (and b!1008103 res!677154) b!1008102))

(assert (= (and b!1008102 res!677149) b!1008106))

(assert (= (and b!1008106 res!677150) b!1008111))

(assert (= (and b!1008111 res!677156) b!1008109))

(assert (= (and b!1008109 res!677161) b!1008110))

(assert (= (and b!1008110 res!677159) b!1008105))

(assert (= (and b!1008105 res!677160) b!1008112))

(assert (= (and b!1008112 res!677153) b!1008099))

(assert (= (and b!1008099 res!677155) b!1008101))

(assert (= (and b!1008101 res!677148) b!1008108))

(assert (= (and b!1008108 res!677152) b!1008100))

(assert (= (and b!1008100 res!677157) b!1008107))

(assert (= (and b!1008107 res!677151) b!1008104))

(declare-fun m!932991 () Bool)

(assert (=> b!1008111 m!932991))

(declare-fun m!932993 () Bool)

(assert (=> b!1008108 m!932993))

(assert (=> b!1008108 m!932993))

(declare-fun m!932995 () Bool)

(assert (=> b!1008108 m!932995))

(declare-fun m!932997 () Bool)

(assert (=> b!1008108 m!932997))

(declare-fun m!932999 () Bool)

(assert (=> b!1008108 m!932999))

(declare-fun m!933001 () Bool)

(assert (=> b!1008102 m!933001))

(assert (=> b!1008102 m!933001))

(declare-fun m!933003 () Bool)

(assert (=> b!1008102 m!933003))

(assert (=> b!1008101 m!933001))

(assert (=> b!1008101 m!933001))

(declare-fun m!933005 () Bool)

(assert (=> b!1008101 m!933005))

(declare-fun m!933007 () Bool)

(assert (=> b!1008104 m!933007))

(assert (=> b!1008099 m!933001))

(assert (=> b!1008099 m!933001))

(declare-fun m!933009 () Bool)

(assert (=> b!1008099 m!933009))

(assert (=> b!1008099 m!933009))

(assert (=> b!1008099 m!933001))

(declare-fun m!933011 () Bool)

(assert (=> b!1008099 m!933011))

(declare-fun m!933013 () Bool)

(assert (=> b!1008105 m!933013))

(declare-fun m!933015 () Bool)

(assert (=> b!1008106 m!933015))

(declare-fun m!933017 () Bool)

(assert (=> b!1008110 m!933017))

(declare-fun m!933019 () Bool)

(assert (=> b!1008100 m!933019))

(declare-fun m!933021 () Bool)

(assert (=> start!86958 m!933021))

(declare-fun m!933023 () Bool)

(assert (=> start!86958 m!933023))

(declare-fun m!933025 () Bool)

(assert (=> b!1008109 m!933025))

(check-sat (not b!1008101) (not b!1008100) (not b!1008111) (not b!1008110) (not start!86958) (not b!1008104) (not b!1008108) (not b!1008102) (not b!1008106) (not b!1008109) (not b!1008105) (not b!1008099))
(check-sat)
