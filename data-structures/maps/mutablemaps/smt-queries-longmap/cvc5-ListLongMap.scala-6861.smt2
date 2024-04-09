; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86452 () Bool)

(assert start!86452)

(declare-fun b!1000196 () Bool)

(declare-fun e!563822 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!1000196 (= e!563822 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!1000197 () Bool)

(declare-fun res!669839 () Bool)

(assert (=> b!1000197 (=> (not res!669839) (not e!563822))))

(declare-datatypes ((array!63205 0))(
  ( (array!63206 (arr!30424 (Array (_ BitVec 32) (_ BitVec 64))) (size!30927 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63205)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9356 0))(
  ( (MissingZero!9356 (index!39794 (_ BitVec 32))) (Found!9356 (index!39795 (_ BitVec 32))) (Intermediate!9356 (undefined!10168 Bool) (index!39796 (_ BitVec 32)) (x!87257 (_ BitVec 32))) (Undefined!9356) (MissingVacant!9356 (index!39797 (_ BitVec 32))) )
))
(declare-fun lt!442208 () SeekEntryResult!9356)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63205 (_ BitVec 32)) SeekEntryResult!9356)

(assert (=> b!1000197 (= res!669839 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30424 a!3219) j!170) a!3219 mask!3464) lt!442208))))

(declare-fun b!1000198 () Bool)

(declare-fun res!669838 () Bool)

(declare-fun e!563823 () Bool)

(assert (=> b!1000198 (=> (not res!669838) (not e!563823))))

(declare-datatypes ((List!21226 0))(
  ( (Nil!21223) (Cons!21222 (h!22399 (_ BitVec 64)) (t!30235 List!21226)) )
))
(declare-fun arrayNoDuplicates!0 (array!63205 (_ BitVec 32) List!21226) Bool)

(assert (=> b!1000198 (= res!669838 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21223))))

(declare-fun b!1000199 () Bool)

(declare-fun res!669831 () Bool)

(declare-fun e!563824 () Bool)

(assert (=> b!1000199 (=> (not res!669831) (not e!563824))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000199 (= res!669831 (validKeyInArray!0 k!2224))))

(declare-fun res!669833 () Bool)

(assert (=> start!86452 (=> (not res!669833) (not e!563824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86452 (= res!669833 (validMask!0 mask!3464))))

(assert (=> start!86452 e!563824))

(declare-fun array_inv!23414 (array!63205) Bool)

(assert (=> start!86452 (array_inv!23414 a!3219)))

(assert (=> start!86452 true))

(declare-fun b!1000200 () Bool)

(declare-fun res!669841 () Bool)

(assert (=> b!1000200 (=> (not res!669841) (not e!563824))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000200 (= res!669841 (and (= (size!30927 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30927 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30927 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000201 () Bool)

(declare-fun res!669834 () Bool)

(assert (=> b!1000201 (=> (not res!669834) (not e!563823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63205 (_ BitVec 32)) Bool)

(assert (=> b!1000201 (= res!669834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000202 () Bool)

(declare-fun res!669840 () Bool)

(assert (=> b!1000202 (=> (not res!669840) (not e!563823))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000202 (= res!669840 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30927 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30927 a!3219))))))

(declare-fun b!1000203 () Bool)

(declare-fun res!669830 () Bool)

(assert (=> b!1000203 (=> (not res!669830) (not e!563824))))

(assert (=> b!1000203 (= res!669830 (validKeyInArray!0 (select (arr!30424 a!3219) j!170)))))

(declare-fun b!1000204 () Bool)

(declare-fun res!669835 () Bool)

(assert (=> b!1000204 (=> (not res!669835) (not e!563824))))

(declare-fun arrayContainsKey!0 (array!63205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000204 (= res!669835 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000205 () Bool)

(assert (=> b!1000205 (= e!563823 e!563822)))

(declare-fun res!669832 () Bool)

(assert (=> b!1000205 (=> (not res!669832) (not e!563822))))

(declare-fun lt!442207 () SeekEntryResult!9356)

(assert (=> b!1000205 (= res!669832 (= lt!442207 lt!442208))))

(assert (=> b!1000205 (= lt!442208 (Intermediate!9356 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000205 (= lt!442207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30424 a!3219) j!170) mask!3464) (select (arr!30424 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000206 () Bool)

(assert (=> b!1000206 (= e!563824 e!563823)))

(declare-fun res!669836 () Bool)

(assert (=> b!1000206 (=> (not res!669836) (not e!563823))))

(declare-fun lt!442209 () SeekEntryResult!9356)

(assert (=> b!1000206 (= res!669836 (or (= lt!442209 (MissingVacant!9356 i!1194)) (= lt!442209 (MissingZero!9356 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63205 (_ BitVec 32)) SeekEntryResult!9356)

(assert (=> b!1000206 (= lt!442209 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000207 () Bool)

(declare-fun res!669837 () Bool)

(assert (=> b!1000207 (=> (not res!669837) (not e!563822))))

(assert (=> b!1000207 (= res!669837 (not (= lt!442207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30424 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30424 a!3219) i!1194 k!2224) j!170) (array!63206 (store (arr!30424 a!3219) i!1194 k!2224) (size!30927 a!3219)) mask!3464))))))

(assert (= (and start!86452 res!669833) b!1000200))

(assert (= (and b!1000200 res!669841) b!1000203))

(assert (= (and b!1000203 res!669830) b!1000199))

(assert (= (and b!1000199 res!669831) b!1000204))

(assert (= (and b!1000204 res!669835) b!1000206))

(assert (= (and b!1000206 res!669836) b!1000201))

(assert (= (and b!1000201 res!669834) b!1000198))

(assert (= (and b!1000198 res!669838) b!1000202))

(assert (= (and b!1000202 res!669840) b!1000205))

(assert (= (and b!1000205 res!669832) b!1000197))

(assert (= (and b!1000197 res!669839) b!1000207))

(assert (= (and b!1000207 res!669837) b!1000196))

(declare-fun m!926487 () Bool)

(assert (=> start!86452 m!926487))

(declare-fun m!926489 () Bool)

(assert (=> start!86452 m!926489))

(declare-fun m!926491 () Bool)

(assert (=> b!1000207 m!926491))

(declare-fun m!926493 () Bool)

(assert (=> b!1000207 m!926493))

(assert (=> b!1000207 m!926493))

(declare-fun m!926495 () Bool)

(assert (=> b!1000207 m!926495))

(assert (=> b!1000207 m!926495))

(assert (=> b!1000207 m!926493))

(declare-fun m!926497 () Bool)

(assert (=> b!1000207 m!926497))

(declare-fun m!926499 () Bool)

(assert (=> b!1000199 m!926499))

(declare-fun m!926501 () Bool)

(assert (=> b!1000198 m!926501))

(declare-fun m!926503 () Bool)

(assert (=> b!1000206 m!926503))

(declare-fun m!926505 () Bool)

(assert (=> b!1000197 m!926505))

(assert (=> b!1000197 m!926505))

(declare-fun m!926507 () Bool)

(assert (=> b!1000197 m!926507))

(declare-fun m!926509 () Bool)

(assert (=> b!1000204 m!926509))

(assert (=> b!1000205 m!926505))

(assert (=> b!1000205 m!926505))

(declare-fun m!926511 () Bool)

(assert (=> b!1000205 m!926511))

(assert (=> b!1000205 m!926511))

(assert (=> b!1000205 m!926505))

(declare-fun m!926513 () Bool)

(assert (=> b!1000205 m!926513))

(assert (=> b!1000203 m!926505))

(assert (=> b!1000203 m!926505))

(declare-fun m!926515 () Bool)

(assert (=> b!1000203 m!926515))

(declare-fun m!926517 () Bool)

(assert (=> b!1000201 m!926517))

(push 1)

