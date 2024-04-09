; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86464 () Bool)

(assert start!86464)

(declare-fun b!1000403 () Bool)

(declare-fun res!670043 () Bool)

(declare-fun e!563894 () Bool)

(assert (=> b!1000403 (=> (not res!670043) (not e!563894))))

(declare-datatypes ((array!63217 0))(
  ( (array!63218 (arr!30430 (Array (_ BitVec 32) (_ BitVec 64))) (size!30933 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63217)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63217 (_ BitVec 32)) Bool)

(assert (=> b!1000403 (= res!670043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000404 () Bool)

(declare-fun res!670037 () Bool)

(declare-fun e!563895 () Bool)

(assert (=> b!1000404 (=> (not res!670037) (not e!563895))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000404 (= res!670037 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000405 () Bool)

(declare-fun res!670038 () Bool)

(assert (=> b!1000405 (=> (not res!670038) (not e!563894))))

(declare-datatypes ((List!21232 0))(
  ( (Nil!21229) (Cons!21228 (h!22405 (_ BitVec 64)) (t!30241 List!21232)) )
))
(declare-fun arrayNoDuplicates!0 (array!63217 (_ BitVec 32) List!21232) Bool)

(assert (=> b!1000405 (= res!670038 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21229))))

(declare-fun b!1000406 () Bool)

(declare-fun res!670042 () Bool)

(declare-fun e!563896 () Bool)

(assert (=> b!1000406 (=> (not res!670042) (not e!563896))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9362 0))(
  ( (MissingZero!9362 (index!39818 (_ BitVec 32))) (Found!9362 (index!39819 (_ BitVec 32))) (Intermediate!9362 (undefined!10174 Bool) (index!39820 (_ BitVec 32)) (x!87279 (_ BitVec 32))) (Undefined!9362) (MissingVacant!9362 (index!39821 (_ BitVec 32))) )
))
(declare-fun lt!442261 () SeekEntryResult!9362)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63217 (_ BitVec 32)) SeekEntryResult!9362)

(assert (=> b!1000406 (= res!670042 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30430 a!3219) j!170) a!3219 mask!3464) lt!442261))))

(declare-fun b!1000407 () Bool)

(declare-fun res!670041 () Bool)

(assert (=> b!1000407 (=> (not res!670041) (not e!563895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000407 (= res!670041 (validKeyInArray!0 (select (arr!30430 a!3219) j!170)))))

(declare-fun res!670047 () Bool)

(assert (=> start!86464 (=> (not res!670047) (not e!563895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86464 (= res!670047 (validMask!0 mask!3464))))

(assert (=> start!86464 e!563895))

(declare-fun array_inv!23420 (array!63217) Bool)

(assert (=> start!86464 (array_inv!23420 a!3219)))

(assert (=> start!86464 true))

(declare-fun b!1000408 () Bool)

(declare-fun res!670046 () Bool)

(assert (=> b!1000408 (=> (not res!670046) (not e!563894))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000408 (= res!670046 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30933 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30933 a!3219))))))

(declare-fun b!1000409 () Bool)

(declare-fun res!670044 () Bool)

(assert (=> b!1000409 (=> (not res!670044) (not e!563895))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000409 (= res!670044 (and (= (size!30933 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30933 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30933 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000410 () Bool)

(assert (=> b!1000410 (= e!563895 e!563894)))

(declare-fun res!670040 () Bool)

(assert (=> b!1000410 (=> (not res!670040) (not e!563894))))

(declare-fun lt!442263 () SeekEntryResult!9362)

(assert (=> b!1000410 (= res!670040 (or (= lt!442263 (MissingVacant!9362 i!1194)) (= lt!442263 (MissingZero!9362 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63217 (_ BitVec 32)) SeekEntryResult!9362)

(assert (=> b!1000410 (= lt!442263 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000411 () Bool)

(assert (=> b!1000411 (= e!563896 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun b!1000412 () Bool)

(assert (=> b!1000412 (= e!563894 e!563896)))

(declare-fun res!670045 () Bool)

(assert (=> b!1000412 (=> (not res!670045) (not e!563896))))

(declare-fun lt!442262 () SeekEntryResult!9362)

(assert (=> b!1000412 (= res!670045 (= lt!442262 lt!442261))))

(assert (=> b!1000412 (= lt!442261 (Intermediate!9362 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000412 (= lt!442262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30430 a!3219) j!170) mask!3464) (select (arr!30430 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000413 () Bool)

(declare-fun res!670039 () Bool)

(assert (=> b!1000413 (=> (not res!670039) (not e!563896))))

(assert (=> b!1000413 (= res!670039 (not (= lt!442262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30430 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30430 a!3219) i!1194 k!2224) j!170) (array!63218 (store (arr!30430 a!3219) i!1194 k!2224) (size!30933 a!3219)) mask!3464))))))

(declare-fun b!1000414 () Bool)

(declare-fun res!670048 () Bool)

(assert (=> b!1000414 (=> (not res!670048) (not e!563895))))

(assert (=> b!1000414 (= res!670048 (validKeyInArray!0 k!2224))))

(assert (= (and start!86464 res!670047) b!1000409))

(assert (= (and b!1000409 res!670044) b!1000407))

(assert (= (and b!1000407 res!670041) b!1000414))

(assert (= (and b!1000414 res!670048) b!1000404))

(assert (= (and b!1000404 res!670037) b!1000410))

(assert (= (and b!1000410 res!670040) b!1000403))

(assert (= (and b!1000403 res!670043) b!1000405))

(assert (= (and b!1000405 res!670038) b!1000408))

(assert (= (and b!1000408 res!670046) b!1000412))

(assert (= (and b!1000412 res!670045) b!1000406))

(assert (= (and b!1000406 res!670042) b!1000413))

(assert (= (and b!1000413 res!670039) b!1000411))

(declare-fun m!926679 () Bool)

(assert (=> b!1000404 m!926679))

(declare-fun m!926681 () Bool)

(assert (=> start!86464 m!926681))

(declare-fun m!926683 () Bool)

(assert (=> start!86464 m!926683))

(declare-fun m!926685 () Bool)

(assert (=> b!1000414 m!926685))

(declare-fun m!926687 () Bool)

(assert (=> b!1000413 m!926687))

(declare-fun m!926689 () Bool)

(assert (=> b!1000413 m!926689))

(assert (=> b!1000413 m!926689))

(declare-fun m!926691 () Bool)

(assert (=> b!1000413 m!926691))

(assert (=> b!1000413 m!926691))

(assert (=> b!1000413 m!926689))

(declare-fun m!926693 () Bool)

(assert (=> b!1000413 m!926693))

(declare-fun m!926695 () Bool)

(assert (=> b!1000410 m!926695))

(declare-fun m!926697 () Bool)

(assert (=> b!1000403 m!926697))

(declare-fun m!926699 () Bool)

(assert (=> b!1000406 m!926699))

(assert (=> b!1000406 m!926699))

(declare-fun m!926701 () Bool)

(assert (=> b!1000406 m!926701))

(assert (=> b!1000412 m!926699))

(assert (=> b!1000412 m!926699))

(declare-fun m!926703 () Bool)

(assert (=> b!1000412 m!926703))

(assert (=> b!1000412 m!926703))

(assert (=> b!1000412 m!926699))

(declare-fun m!926705 () Bool)

(assert (=> b!1000412 m!926705))

(assert (=> b!1000407 m!926699))

(assert (=> b!1000407 m!926699))

(declare-fun m!926707 () Bool)

(assert (=> b!1000407 m!926707))

(declare-fun m!926709 () Bool)

(assert (=> b!1000405 m!926709))

(push 1)

(assert (not b!1000405))

(assert (not b!1000412))

(assert (not b!1000407))

(assert (not b!1000413))

(assert (not start!86464))

(assert (not b!1000404))

(assert (not b!1000406))

(assert (not b!1000403))

(assert (not b!1000414))

(assert (not b!1000410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

