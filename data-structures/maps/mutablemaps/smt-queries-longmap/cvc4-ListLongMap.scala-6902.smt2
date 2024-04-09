; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86810 () Bool)

(assert start!86810)

(declare-fun b!1005967 () Bool)

(declare-fun e!566339 () Bool)

(declare-fun e!566342 () Bool)

(assert (=> b!1005967 (= e!566339 e!566342)))

(declare-fun res!675217 () Bool)

(assert (=> b!1005967 (=> (not res!675217) (not e!566342))))

(declare-datatypes ((array!63461 0))(
  ( (array!63462 (arr!30549 (Array (_ BitVec 32) (_ BitVec 64))) (size!31052 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63461)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9481 0))(
  ( (MissingZero!9481 (index!40294 (_ BitVec 32))) (Found!9481 (index!40295 (_ BitVec 32))) (Intermediate!9481 (undefined!10293 Bool) (index!40296 (_ BitVec 32)) (x!87722 (_ BitVec 32))) (Undefined!9481) (MissingVacant!9481 (index!40297 (_ BitVec 32))) )
))
(declare-fun lt!444641 () SeekEntryResult!9481)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63461 (_ BitVec 32)) SeekEntryResult!9481)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005967 (= res!675217 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30549 a!3219) j!170) mask!3464) (select (arr!30549 a!3219) j!170) a!3219 mask!3464) lt!444641))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005967 (= lt!444641 (Intermediate!9481 false resIndex!38 resX!38))))

(declare-fun b!1005968 () Bool)

(declare-fun res!675218 () Bool)

(declare-fun e!566340 () Bool)

(assert (=> b!1005968 (=> (not res!675218) (not e!566340))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005968 (= res!675218 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005969 () Bool)

(declare-fun res!675219 () Bool)

(assert (=> b!1005969 (=> (not res!675219) (not e!566339))))

(declare-datatypes ((List!21351 0))(
  ( (Nil!21348) (Cons!21347 (h!22530 (_ BitVec 64)) (t!30360 List!21351)) )
))
(declare-fun arrayNoDuplicates!0 (array!63461 (_ BitVec 32) List!21351) Bool)

(assert (=> b!1005969 (= res!675219 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21348))))

(declare-fun b!1005970 () Bool)

(assert (=> b!1005970 (= e!566342 false)))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun lt!444642 () (_ BitVec 32))

(assert (=> b!1005970 (= lt!444642 (toIndex!0 (select (store (arr!30549 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!1005971 () Bool)

(declare-fun res!675216 () Bool)

(assert (=> b!1005971 (=> (not res!675216) (not e!566342))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1005971 (= res!675216 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30549 a!3219) j!170) a!3219 mask!3464) lt!444641))))

(declare-fun b!1005972 () Bool)

(declare-fun res!675214 () Bool)

(assert (=> b!1005972 (=> (not res!675214) (not e!566340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005972 (= res!675214 (validKeyInArray!0 k!2224))))

(declare-fun b!1005966 () Bool)

(declare-fun res!675212 () Bool)

(assert (=> b!1005966 (=> (not res!675212) (not e!566339))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63461 (_ BitVec 32)) Bool)

(assert (=> b!1005966 (= res!675212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!675213 () Bool)

(assert (=> start!86810 (=> (not res!675213) (not e!566340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86810 (= res!675213 (validMask!0 mask!3464))))

(assert (=> start!86810 e!566340))

(declare-fun array_inv!23539 (array!63461) Bool)

(assert (=> start!86810 (array_inv!23539 a!3219)))

(assert (=> start!86810 true))

(declare-fun b!1005973 () Bool)

(declare-fun res!675210 () Bool)

(assert (=> b!1005973 (=> (not res!675210) (not e!566339))))

(assert (=> b!1005973 (= res!675210 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31052 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31052 a!3219))))))

(declare-fun b!1005974 () Bool)

(declare-fun res!675215 () Bool)

(assert (=> b!1005974 (=> (not res!675215) (not e!566340))))

(assert (=> b!1005974 (= res!675215 (validKeyInArray!0 (select (arr!30549 a!3219) j!170)))))

(declare-fun b!1005975 () Bool)

(assert (=> b!1005975 (= e!566340 e!566339)))

(declare-fun res!675211 () Bool)

(assert (=> b!1005975 (=> (not res!675211) (not e!566339))))

(declare-fun lt!444640 () SeekEntryResult!9481)

(assert (=> b!1005975 (= res!675211 (or (= lt!444640 (MissingVacant!9481 i!1194)) (= lt!444640 (MissingZero!9481 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63461 (_ BitVec 32)) SeekEntryResult!9481)

(assert (=> b!1005975 (= lt!444640 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005976 () Bool)

(declare-fun res!675220 () Bool)

(assert (=> b!1005976 (=> (not res!675220) (not e!566340))))

(assert (=> b!1005976 (= res!675220 (and (= (size!31052 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31052 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31052 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86810 res!675213) b!1005976))

(assert (= (and b!1005976 res!675220) b!1005974))

(assert (= (and b!1005974 res!675215) b!1005972))

(assert (= (and b!1005972 res!675214) b!1005968))

(assert (= (and b!1005968 res!675218) b!1005975))

(assert (= (and b!1005975 res!675211) b!1005966))

(assert (= (and b!1005966 res!675212) b!1005969))

(assert (= (and b!1005969 res!675219) b!1005973))

(assert (= (and b!1005973 res!675210) b!1005967))

(assert (= (and b!1005967 res!675217) b!1005971))

(assert (= (and b!1005971 res!675216) b!1005970))

(declare-fun m!931197 () Bool)

(assert (=> b!1005969 m!931197))

(declare-fun m!931199 () Bool)

(assert (=> b!1005970 m!931199))

(declare-fun m!931201 () Bool)

(assert (=> b!1005970 m!931201))

(assert (=> b!1005970 m!931201))

(declare-fun m!931203 () Bool)

(assert (=> b!1005970 m!931203))

(declare-fun m!931205 () Bool)

(assert (=> b!1005974 m!931205))

(assert (=> b!1005974 m!931205))

(declare-fun m!931207 () Bool)

(assert (=> b!1005974 m!931207))

(declare-fun m!931209 () Bool)

(assert (=> b!1005972 m!931209))

(declare-fun m!931211 () Bool)

(assert (=> b!1005975 m!931211))

(declare-fun m!931213 () Bool)

(assert (=> b!1005968 m!931213))

(assert (=> b!1005967 m!931205))

(assert (=> b!1005967 m!931205))

(declare-fun m!931215 () Bool)

(assert (=> b!1005967 m!931215))

(assert (=> b!1005967 m!931215))

(assert (=> b!1005967 m!931205))

(declare-fun m!931217 () Bool)

(assert (=> b!1005967 m!931217))

(declare-fun m!931219 () Bool)

(assert (=> b!1005966 m!931219))

(assert (=> b!1005971 m!931205))

(assert (=> b!1005971 m!931205))

(declare-fun m!931221 () Bool)

(assert (=> b!1005971 m!931221))

(declare-fun m!931223 () Bool)

(assert (=> start!86810 m!931223))

(declare-fun m!931225 () Bool)

(assert (=> start!86810 m!931225))

(push 1)

