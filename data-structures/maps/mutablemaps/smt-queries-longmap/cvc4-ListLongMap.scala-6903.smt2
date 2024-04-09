; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86816 () Bool)

(assert start!86816)

(declare-fun b!1006065 () Bool)

(declare-fun res!675318 () Bool)

(declare-fun e!566378 () Bool)

(assert (=> b!1006065 (=> (not res!675318) (not e!566378))))

(declare-datatypes ((array!63467 0))(
  ( (array!63468 (arr!30552 (Array (_ BitVec 32) (_ BitVec 64))) (size!31055 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63467)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006065 (= res!675318 (and (= (size!31055 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31055 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31055 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006066 () Bool)

(declare-fun e!566377 () Bool)

(declare-fun e!566376 () Bool)

(assert (=> b!1006066 (= e!566377 e!566376)))

(declare-fun res!675316 () Bool)

(assert (=> b!1006066 (=> (not res!675316) (not e!566376))))

(declare-datatypes ((SeekEntryResult!9484 0))(
  ( (MissingZero!9484 (index!40306 (_ BitVec 32))) (Found!9484 (index!40307 (_ BitVec 32))) (Intermediate!9484 (undefined!10296 Bool) (index!40308 (_ BitVec 32)) (x!87733 (_ BitVec 32))) (Undefined!9484) (MissingVacant!9484 (index!40309 (_ BitVec 32))) )
))
(declare-fun lt!444667 () SeekEntryResult!9484)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63467 (_ BitVec 32)) SeekEntryResult!9484)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006066 (= res!675316 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30552 a!3219) j!170) mask!3464) (select (arr!30552 a!3219) j!170) a!3219 mask!3464) lt!444667))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006066 (= lt!444667 (Intermediate!9484 false resIndex!38 resX!38))))

(declare-fun b!1006067 () Bool)

(declare-fun res!675309 () Bool)

(assert (=> b!1006067 (=> (not res!675309) (not e!566378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006067 (= res!675309 (validKeyInArray!0 (select (arr!30552 a!3219) j!170)))))

(declare-fun b!1006068 () Bool)

(declare-fun res!675319 () Bool)

(assert (=> b!1006068 (=> (not res!675319) (not e!566377))))

(declare-datatypes ((List!21354 0))(
  ( (Nil!21351) (Cons!21350 (h!22533 (_ BitVec 64)) (t!30363 List!21354)) )
))
(declare-fun arrayNoDuplicates!0 (array!63467 (_ BitVec 32) List!21354) Bool)

(assert (=> b!1006068 (= res!675319 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21351))))

(declare-fun b!1006069 () Bool)

(assert (=> b!1006069 (= e!566378 e!566377)))

(declare-fun res!675314 () Bool)

(assert (=> b!1006069 (=> (not res!675314) (not e!566377))))

(declare-fun lt!444669 () SeekEntryResult!9484)

(assert (=> b!1006069 (= res!675314 (or (= lt!444669 (MissingVacant!9484 i!1194)) (= lt!444669 (MissingZero!9484 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63467 (_ BitVec 32)) SeekEntryResult!9484)

(assert (=> b!1006069 (= lt!444669 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006070 () Bool)

(declare-fun res!675315 () Bool)

(assert (=> b!1006070 (=> (not res!675315) (not e!566377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63467 (_ BitVec 32)) Bool)

(assert (=> b!1006070 (= res!675315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!675311 () Bool)

(assert (=> start!86816 (=> (not res!675311) (not e!566378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86816 (= res!675311 (validMask!0 mask!3464))))

(assert (=> start!86816 e!566378))

(declare-fun array_inv!23542 (array!63467) Bool)

(assert (=> start!86816 (array_inv!23542 a!3219)))

(assert (=> start!86816 true))

(declare-fun b!1006071 () Bool)

(declare-fun res!675313 () Bool)

(assert (=> b!1006071 (=> (not res!675313) (not e!566378))))

(assert (=> b!1006071 (= res!675313 (validKeyInArray!0 k!2224))))

(declare-fun b!1006072 () Bool)

(declare-fun res!675310 () Bool)

(assert (=> b!1006072 (=> (not res!675310) (not e!566377))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1006072 (= res!675310 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31055 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31055 a!3219))))))

(declare-fun b!1006073 () Bool)

(assert (=> b!1006073 (= e!566376 false)))

(declare-fun lt!444668 () (_ BitVec 32))

(assert (=> b!1006073 (= lt!444668 (toIndex!0 (select (store (arr!30552 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!1006074 () Bool)

(declare-fun res!675312 () Bool)

(assert (=> b!1006074 (=> (not res!675312) (not e!566376))))

(assert (=> b!1006074 (= res!675312 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30552 a!3219) j!170) a!3219 mask!3464) lt!444667))))

(declare-fun b!1006075 () Bool)

(declare-fun res!675317 () Bool)

(assert (=> b!1006075 (=> (not res!675317) (not e!566378))))

(declare-fun arrayContainsKey!0 (array!63467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006075 (= res!675317 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86816 res!675311) b!1006065))

(assert (= (and b!1006065 res!675318) b!1006067))

(assert (= (and b!1006067 res!675309) b!1006071))

(assert (= (and b!1006071 res!675313) b!1006075))

(assert (= (and b!1006075 res!675317) b!1006069))

(assert (= (and b!1006069 res!675314) b!1006070))

(assert (= (and b!1006070 res!675315) b!1006068))

(assert (= (and b!1006068 res!675319) b!1006072))

(assert (= (and b!1006072 res!675310) b!1006066))

(assert (= (and b!1006066 res!675316) b!1006074))

(assert (= (and b!1006074 res!675312) b!1006073))

(declare-fun m!931287 () Bool)

(assert (=> b!1006068 m!931287))

(declare-fun m!931289 () Bool)

(assert (=> b!1006074 m!931289))

(assert (=> b!1006074 m!931289))

(declare-fun m!931291 () Bool)

(assert (=> b!1006074 m!931291))

(declare-fun m!931293 () Bool)

(assert (=> start!86816 m!931293))

(declare-fun m!931295 () Bool)

(assert (=> start!86816 m!931295))

(declare-fun m!931297 () Bool)

(assert (=> b!1006071 m!931297))

(declare-fun m!931299 () Bool)

(assert (=> b!1006069 m!931299))

(assert (=> b!1006067 m!931289))

(assert (=> b!1006067 m!931289))

(declare-fun m!931301 () Bool)

(assert (=> b!1006067 m!931301))

(assert (=> b!1006066 m!931289))

(assert (=> b!1006066 m!931289))

(declare-fun m!931303 () Bool)

(assert (=> b!1006066 m!931303))

(assert (=> b!1006066 m!931303))

(assert (=> b!1006066 m!931289))

(declare-fun m!931305 () Bool)

(assert (=> b!1006066 m!931305))

(declare-fun m!931307 () Bool)

(assert (=> b!1006073 m!931307))

(declare-fun m!931309 () Bool)

(assert (=> b!1006073 m!931309))

(assert (=> b!1006073 m!931309))

(declare-fun m!931311 () Bool)

(assert (=> b!1006073 m!931311))

(declare-fun m!931313 () Bool)

(assert (=> b!1006075 m!931313))

(declare-fun m!931315 () Bool)

(assert (=> b!1006070 m!931315))

(push 1)

