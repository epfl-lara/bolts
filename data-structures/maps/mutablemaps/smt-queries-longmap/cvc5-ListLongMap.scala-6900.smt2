; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86794 () Bool)

(assert start!86794)

(declare-fun b!1005718 () Bool)

(declare-fun res!674970 () Bool)

(declare-fun e!566260 () Bool)

(assert (=> b!1005718 (=> (not res!674970) (not e!566260))))

(declare-datatypes ((array!63445 0))(
  ( (array!63446 (arr!30541 (Array (_ BitVec 32) (_ BitVec 64))) (size!31044 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63445)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1005718 (= res!674970 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31044 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31044 a!3219))))))

(declare-fun b!1005719 () Bool)

(declare-fun res!674968 () Bool)

(assert (=> b!1005719 (=> (not res!674968) (not e!566260))))

(declare-datatypes ((List!21343 0))(
  ( (Nil!21340) (Cons!21339 (h!22522 (_ BitVec 64)) (t!30352 List!21343)) )
))
(declare-fun arrayNoDuplicates!0 (array!63445 (_ BitVec 32) List!21343) Bool)

(assert (=> b!1005719 (= res!674968 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21340))))

(declare-fun b!1005720 () Bool)

(declare-fun res!674964 () Bool)

(assert (=> b!1005720 (=> (not res!674964) (not e!566260))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9473 0))(
  ( (MissingZero!9473 (index!40262 (_ BitVec 32))) (Found!9473 (index!40263 (_ BitVec 32))) (Intermediate!9473 (undefined!10285 Bool) (index!40264 (_ BitVec 32)) (x!87698 (_ BitVec 32))) (Undefined!9473) (MissingVacant!9473 (index!40265 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63445 (_ BitVec 32)) SeekEntryResult!9473)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005720 (= res!674964 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30541 a!3219) j!170) mask!3464) (select (arr!30541 a!3219) j!170) a!3219 mask!3464) (Intermediate!9473 false resIndex!38 resX!38)))))

(declare-fun b!1005721 () Bool)

(declare-fun res!674971 () Bool)

(declare-fun e!566261 () Bool)

(assert (=> b!1005721 (=> (not res!674971) (not e!566261))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005721 (= res!674971 (validKeyInArray!0 k!2224))))

(declare-fun b!1005722 () Bool)

(declare-fun res!674963 () Bool)

(assert (=> b!1005722 (=> (not res!674963) (not e!566261))))

(assert (=> b!1005722 (= res!674963 (validKeyInArray!0 (select (arr!30541 a!3219) j!170)))))

(declare-fun res!674969 () Bool)

(assert (=> start!86794 (=> (not res!674969) (not e!566261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86794 (= res!674969 (validMask!0 mask!3464))))

(assert (=> start!86794 e!566261))

(declare-fun array_inv!23531 (array!63445) Bool)

(assert (=> start!86794 (array_inv!23531 a!3219)))

(assert (=> start!86794 true))

(declare-fun b!1005723 () Bool)

(assert (=> b!1005723 (= e!566261 e!566260)))

(declare-fun res!674966 () Bool)

(assert (=> b!1005723 (=> (not res!674966) (not e!566260))))

(declare-fun lt!444584 () SeekEntryResult!9473)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005723 (= res!674966 (or (= lt!444584 (MissingVacant!9473 i!1194)) (= lt!444584 (MissingZero!9473 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63445 (_ BitVec 32)) SeekEntryResult!9473)

(assert (=> b!1005723 (= lt!444584 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005724 () Bool)

(declare-fun res!674965 () Bool)

(assert (=> b!1005724 (=> (not res!674965) (not e!566260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63445 (_ BitVec 32)) Bool)

(assert (=> b!1005724 (= res!674965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005725 () Bool)

(declare-fun res!674967 () Bool)

(assert (=> b!1005725 (=> (not res!674967) (not e!566261))))

(assert (=> b!1005725 (= res!674967 (and (= (size!31044 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31044 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31044 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005726 () Bool)

(assert (=> b!1005726 (= e!566260 false)))

(declare-fun lt!444585 () SeekEntryResult!9473)

(assert (=> b!1005726 (= lt!444585 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30541 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005727 () Bool)

(declare-fun res!674962 () Bool)

(assert (=> b!1005727 (=> (not res!674962) (not e!566261))))

(declare-fun arrayContainsKey!0 (array!63445 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005727 (= res!674962 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86794 res!674969) b!1005725))

(assert (= (and b!1005725 res!674967) b!1005722))

(assert (= (and b!1005722 res!674963) b!1005721))

(assert (= (and b!1005721 res!674971) b!1005727))

(assert (= (and b!1005727 res!674962) b!1005723))

(assert (= (and b!1005723 res!674966) b!1005724))

(assert (= (and b!1005724 res!674965) b!1005719))

(assert (= (and b!1005719 res!674968) b!1005718))

(assert (= (and b!1005718 res!674970) b!1005720))

(assert (= (and b!1005720 res!674964) b!1005726))

(declare-fun m!930993 () Bool)

(assert (=> b!1005723 m!930993))

(declare-fun m!930995 () Bool)

(assert (=> start!86794 m!930995))

(declare-fun m!930997 () Bool)

(assert (=> start!86794 m!930997))

(declare-fun m!930999 () Bool)

(assert (=> b!1005721 m!930999))

(declare-fun m!931001 () Bool)

(assert (=> b!1005720 m!931001))

(assert (=> b!1005720 m!931001))

(declare-fun m!931003 () Bool)

(assert (=> b!1005720 m!931003))

(assert (=> b!1005720 m!931003))

(assert (=> b!1005720 m!931001))

(declare-fun m!931005 () Bool)

(assert (=> b!1005720 m!931005))

(declare-fun m!931007 () Bool)

(assert (=> b!1005727 m!931007))

(declare-fun m!931009 () Bool)

(assert (=> b!1005724 m!931009))

(declare-fun m!931011 () Bool)

(assert (=> b!1005719 m!931011))

(assert (=> b!1005722 m!931001))

(assert (=> b!1005722 m!931001))

(declare-fun m!931013 () Bool)

(assert (=> b!1005722 m!931013))

(assert (=> b!1005726 m!931001))

(assert (=> b!1005726 m!931001))

(declare-fun m!931015 () Bool)

(assert (=> b!1005726 m!931015))

(push 1)

