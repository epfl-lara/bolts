; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86594 () Bool)

(assert start!86594)

(declare-fun b!1003315 () Bool)

(declare-fun res!672957 () Bool)

(declare-fun e!565145 () Bool)

(assert (=> b!1003315 (=> (not res!672957) (not e!565145))))

(declare-datatypes ((array!63347 0))(
  ( (array!63348 (arr!30495 (Array (_ BitVec 32) (_ BitVec 64))) (size!30998 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63347)

(declare-datatypes ((List!21297 0))(
  ( (Nil!21294) (Cons!21293 (h!22470 (_ BitVec 64)) (t!30306 List!21297)) )
))
(declare-fun arrayNoDuplicates!0 (array!63347 (_ BitVec 32) List!21297) Bool)

(assert (=> b!1003315 (= res!672957 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21294))))

(declare-fun b!1003316 () Bool)

(declare-fun e!565143 () Bool)

(assert (=> b!1003316 (= e!565145 e!565143)))

(declare-fun res!672950 () Bool)

(assert (=> b!1003316 (=> (not res!672950) (not e!565143))))

(declare-datatypes ((SeekEntryResult!9427 0))(
  ( (MissingZero!9427 (index!40078 (_ BitVec 32))) (Found!9427 (index!40079 (_ BitVec 32))) (Intermediate!9427 (undefined!10239 Bool) (index!40080 (_ BitVec 32)) (x!87512 (_ BitVec 32))) (Undefined!9427) (MissingVacant!9427 (index!40081 (_ BitVec 32))) )
))
(declare-fun lt!443628 () SeekEntryResult!9427)

(declare-fun lt!443625 () SeekEntryResult!9427)

(assert (=> b!1003316 (= res!672950 (= lt!443628 lt!443625))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003316 (= lt!443625 (Intermediate!9427 false resIndex!38 resX!38))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63347 (_ BitVec 32)) SeekEntryResult!9427)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003316 (= lt!443628 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30495 a!3219) j!170) mask!3464) (select (arr!30495 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003317 () Bool)

(declare-fun e!565142 () Bool)

(assert (=> b!1003317 (= e!565143 e!565142)))

(declare-fun res!672954 () Bool)

(assert (=> b!1003317 (=> (not res!672954) (not e!565142))))

(declare-fun lt!443627 () SeekEntryResult!9427)

(assert (=> b!1003317 (= res!672954 (= lt!443627 lt!443625))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1003317 (= lt!443627 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30495 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003318 () Bool)

(declare-fun e!565144 () Bool)

(assert (=> b!1003318 (= e!565142 e!565144)))

(declare-fun res!672955 () Bool)

(assert (=> b!1003318 (=> (not res!672955) (not e!565144))))

(declare-fun lt!443630 () array!63347)

(declare-fun lt!443629 () (_ BitVec 64))

(assert (=> b!1003318 (= res!672955 (not (= lt!443628 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443629 mask!3464) lt!443629 lt!443630 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1003318 (= lt!443629 (select (store (arr!30495 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003318 (= lt!443630 (array!63348 (store (arr!30495 a!3219) i!1194 k!2224) (size!30998 a!3219)))))

(declare-fun b!1003319 () Bool)

(declare-fun res!672956 () Bool)

(assert (=> b!1003319 (=> (not res!672956) (not e!565145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63347 (_ BitVec 32)) Bool)

(assert (=> b!1003319 (= res!672956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003321 () Bool)

(declare-fun res!672952 () Bool)

(declare-fun e!565141 () Bool)

(assert (=> b!1003321 (=> (not res!672952) (not e!565141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003321 (= res!672952 (validKeyInArray!0 k!2224))))

(declare-fun b!1003322 () Bool)

(assert (=> b!1003322 (= e!565141 e!565145)))

(declare-fun res!672961 () Bool)

(assert (=> b!1003322 (=> (not res!672961) (not e!565145))))

(declare-fun lt!443626 () SeekEntryResult!9427)

(assert (=> b!1003322 (= res!672961 (or (= lt!443626 (MissingVacant!9427 i!1194)) (= lt!443626 (MissingZero!9427 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63347 (_ BitVec 32)) SeekEntryResult!9427)

(assert (=> b!1003322 (= lt!443626 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003323 () Bool)

(declare-fun res!672959 () Bool)

(declare-fun e!565139 () Bool)

(assert (=> b!1003323 (=> (not res!672959) (not e!565139))))

(declare-fun lt!443624 () (_ BitVec 32))

(assert (=> b!1003323 (= res!672959 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443624 (select (arr!30495 a!3219) j!170) a!3219 mask!3464) lt!443625))))

(declare-fun b!1003324 () Bool)

(declare-fun res!672949 () Bool)

(assert (=> b!1003324 (=> (not res!672949) (not e!565141))))

(assert (=> b!1003324 (= res!672949 (validKeyInArray!0 (select (arr!30495 a!3219) j!170)))))

(declare-fun b!1003325 () Bool)

(declare-fun res!672964 () Bool)

(assert (=> b!1003325 (=> (not res!672964) (not e!565141))))

(declare-fun arrayContainsKey!0 (array!63347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003325 (= res!672964 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003326 () Bool)

(assert (=> b!1003326 (= e!565139 false)))

(declare-fun lt!443631 () SeekEntryResult!9427)

(assert (=> b!1003326 (= lt!443631 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443624 lt!443629 lt!443630 mask!3464))))

(declare-fun b!1003327 () Bool)

(declare-fun res!672953 () Bool)

(assert (=> b!1003327 (=> (not res!672953) (not e!565144))))

(assert (=> b!1003327 (= res!672953 (not (= lt!443627 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443629 lt!443630 mask!3464))))))

(declare-fun b!1003328 () Bool)

(declare-fun res!672951 () Bool)

(assert (=> b!1003328 (=> (not res!672951) (not e!565141))))

(assert (=> b!1003328 (= res!672951 (and (= (size!30998 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30998 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30998 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003320 () Bool)

(assert (=> b!1003320 (= e!565144 e!565139)))

(declare-fun res!672962 () Bool)

(assert (=> b!1003320 (=> (not res!672962) (not e!565139))))

(assert (=> b!1003320 (= res!672962 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443624 #b00000000000000000000000000000000) (bvslt lt!443624 (size!30998 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003320 (= lt!443624 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun res!672963 () Bool)

(assert (=> start!86594 (=> (not res!672963) (not e!565141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86594 (= res!672963 (validMask!0 mask!3464))))

(assert (=> start!86594 e!565141))

(declare-fun array_inv!23485 (array!63347) Bool)

(assert (=> start!86594 (array_inv!23485 a!3219)))

(assert (=> start!86594 true))

(declare-fun b!1003329 () Bool)

(declare-fun res!672960 () Bool)

(assert (=> b!1003329 (=> (not res!672960) (not e!565144))))

(assert (=> b!1003329 (= res!672960 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1003330 () Bool)

(declare-fun res!672958 () Bool)

(assert (=> b!1003330 (=> (not res!672958) (not e!565145))))

(assert (=> b!1003330 (= res!672958 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30998 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30998 a!3219))))))

(assert (= (and start!86594 res!672963) b!1003328))

(assert (= (and b!1003328 res!672951) b!1003324))

(assert (= (and b!1003324 res!672949) b!1003321))

(assert (= (and b!1003321 res!672952) b!1003325))

(assert (= (and b!1003325 res!672964) b!1003322))

(assert (= (and b!1003322 res!672961) b!1003319))

(assert (= (and b!1003319 res!672956) b!1003315))

(assert (= (and b!1003315 res!672957) b!1003330))

(assert (= (and b!1003330 res!672958) b!1003316))

(assert (= (and b!1003316 res!672950) b!1003317))

(assert (= (and b!1003317 res!672954) b!1003318))

(assert (= (and b!1003318 res!672955) b!1003327))

(assert (= (and b!1003327 res!672953) b!1003329))

(assert (= (and b!1003329 res!672960) b!1003320))

(assert (= (and b!1003320 res!672962) b!1003323))

(assert (= (and b!1003323 res!672959) b!1003326))

(declare-fun m!929141 () Bool)

(assert (=> b!1003324 m!929141))

(assert (=> b!1003324 m!929141))

(declare-fun m!929143 () Bool)

(assert (=> b!1003324 m!929143))

(assert (=> b!1003323 m!929141))

(assert (=> b!1003323 m!929141))

(declare-fun m!929145 () Bool)

(assert (=> b!1003323 m!929145))

(declare-fun m!929147 () Bool)

(assert (=> b!1003326 m!929147))

(declare-fun m!929149 () Bool)

(assert (=> b!1003315 m!929149))

(declare-fun m!929151 () Bool)

(assert (=> b!1003327 m!929151))

(declare-fun m!929153 () Bool)

(assert (=> b!1003325 m!929153))

(declare-fun m!929155 () Bool)

(assert (=> b!1003322 m!929155))

(assert (=> b!1003317 m!929141))

(assert (=> b!1003317 m!929141))

(declare-fun m!929157 () Bool)

(assert (=> b!1003317 m!929157))

(declare-fun m!929159 () Bool)

(assert (=> b!1003318 m!929159))

(assert (=> b!1003318 m!929159))

(declare-fun m!929161 () Bool)

(assert (=> b!1003318 m!929161))

(declare-fun m!929163 () Bool)

(assert (=> b!1003318 m!929163))

(declare-fun m!929165 () Bool)

(assert (=> b!1003318 m!929165))

(declare-fun m!929167 () Bool)

(assert (=> b!1003320 m!929167))

(declare-fun m!929169 () Bool)

(assert (=> b!1003321 m!929169))

(declare-fun m!929171 () Bool)

(assert (=> start!86594 m!929171))

(declare-fun m!929173 () Bool)

(assert (=> start!86594 m!929173))

(assert (=> b!1003316 m!929141))

(assert (=> b!1003316 m!929141))

(declare-fun m!929175 () Bool)

(assert (=> b!1003316 m!929175))

(assert (=> b!1003316 m!929175))

(assert (=> b!1003316 m!929141))

(declare-fun m!929177 () Bool)

(assert (=> b!1003316 m!929177))

(declare-fun m!929179 () Bool)

(assert (=> b!1003319 m!929179))

(push 1)

