; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86468 () Bool)

(assert start!86468)

(declare-fun b!1000475 () Bool)

(declare-fun res!670117 () Bool)

(declare-fun e!563919 () Bool)

(assert (=> b!1000475 (=> (not res!670117) (not e!563919))))

(declare-datatypes ((array!63221 0))(
  ( (array!63222 (arr!30432 (Array (_ BitVec 32) (_ BitVec 64))) (size!30935 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63221)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000475 (= res!670117 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000476 () Bool)

(declare-fun e!563921 () Bool)

(declare-fun e!563920 () Bool)

(assert (=> b!1000476 (= e!563921 e!563920)))

(declare-fun res!670120 () Bool)

(assert (=> b!1000476 (=> (not res!670120) (not e!563920))))

(declare-datatypes ((SeekEntryResult!9364 0))(
  ( (MissingZero!9364 (index!39826 (_ BitVec 32))) (Found!9364 (index!39827 (_ BitVec 32))) (Intermediate!9364 (undefined!10176 Bool) (index!39828 (_ BitVec 32)) (x!87281 (_ BitVec 32))) (Undefined!9364) (MissingVacant!9364 (index!39829 (_ BitVec 32))) )
))
(declare-fun lt!442280 () SeekEntryResult!9364)

(declare-fun lt!442281 () SeekEntryResult!9364)

(assert (=> b!1000476 (= res!670120 (= lt!442280 lt!442281))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000476 (= lt!442281 (Intermediate!9364 false resIndex!38 resX!38))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63221 (_ BitVec 32)) SeekEntryResult!9364)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000476 (= lt!442280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30432 a!3219) j!170) mask!3464) (select (arr!30432 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1000477 () Bool)

(assert (=> b!1000477 (= e!563919 e!563921)))

(declare-fun res!670109 () Bool)

(assert (=> b!1000477 (=> (not res!670109) (not e!563921))))

(declare-fun lt!442279 () SeekEntryResult!9364)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000477 (= res!670109 (or (= lt!442279 (MissingVacant!9364 i!1194)) (= lt!442279 (MissingZero!9364 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63221 (_ BitVec 32)) SeekEntryResult!9364)

(assert (=> b!1000477 (= lt!442279 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000478 () Bool)

(declare-fun res!670115 () Bool)

(assert (=> b!1000478 (=> (not res!670115) (not e!563919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000478 (= res!670115 (validKeyInArray!0 (select (arr!30432 a!3219) j!170)))))

(declare-fun b!1000479 () Bool)

(declare-fun res!670119 () Bool)

(assert (=> b!1000479 (=> (not res!670119) (not e!563921))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1000479 (= res!670119 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30935 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30935 a!3219))))))

(declare-fun b!1000480 () Bool)

(declare-fun res!670111 () Bool)

(assert (=> b!1000480 (=> (not res!670111) (not e!563921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63221 (_ BitVec 32)) Bool)

(assert (=> b!1000480 (= res!670111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000481 () Bool)

(assert (=> b!1000481 (= e!563920 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge index!1507 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun b!1000482 () Bool)

(declare-fun res!670114 () Bool)

(assert (=> b!1000482 (=> (not res!670114) (not e!563921))))

(declare-datatypes ((List!21234 0))(
  ( (Nil!21231) (Cons!21230 (h!22407 (_ BitVec 64)) (t!30243 List!21234)) )
))
(declare-fun arrayNoDuplicates!0 (array!63221 (_ BitVec 32) List!21234) Bool)

(assert (=> b!1000482 (= res!670114 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21231))))

(declare-fun b!1000484 () Bool)

(declare-fun res!670110 () Bool)

(assert (=> b!1000484 (=> (not res!670110) (not e!563919))))

(assert (=> b!1000484 (= res!670110 (and (= (size!30935 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30935 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30935 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000485 () Bool)

(declare-fun res!670112 () Bool)

(assert (=> b!1000485 (=> (not res!670112) (not e!563920))))

(assert (=> b!1000485 (= res!670112 (not (= lt!442280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30432 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30432 a!3219) i!1194 k!2224) j!170) (array!63222 (store (arr!30432 a!3219) i!1194 k!2224) (size!30935 a!3219)) mask!3464))))))

(declare-fun b!1000486 () Bool)

(declare-fun res!670113 () Bool)

(assert (=> b!1000486 (=> (not res!670113) (not e!563920))))

(assert (=> b!1000486 (= res!670113 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30432 a!3219) j!170) a!3219 mask!3464) lt!442281))))

(declare-fun res!670116 () Bool)

(assert (=> start!86468 (=> (not res!670116) (not e!563919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86468 (= res!670116 (validMask!0 mask!3464))))

(assert (=> start!86468 e!563919))

(declare-fun array_inv!23422 (array!63221) Bool)

(assert (=> start!86468 (array_inv!23422 a!3219)))

(assert (=> start!86468 true))

(declare-fun b!1000483 () Bool)

(declare-fun res!670118 () Bool)

(assert (=> b!1000483 (=> (not res!670118) (not e!563919))))

(assert (=> b!1000483 (= res!670118 (validKeyInArray!0 k!2224))))

(assert (= (and start!86468 res!670116) b!1000484))

(assert (= (and b!1000484 res!670110) b!1000478))

(assert (= (and b!1000478 res!670115) b!1000483))

(assert (= (and b!1000483 res!670118) b!1000475))

(assert (= (and b!1000475 res!670117) b!1000477))

(assert (= (and b!1000477 res!670109) b!1000480))

(assert (= (and b!1000480 res!670111) b!1000482))

(assert (= (and b!1000482 res!670114) b!1000479))

(assert (= (and b!1000479 res!670119) b!1000476))

(assert (= (and b!1000476 res!670120) b!1000486))

(assert (= (and b!1000486 res!670113) b!1000485))

(assert (= (and b!1000485 res!670112) b!1000481))

(declare-fun m!926743 () Bool)

(assert (=> b!1000483 m!926743))

(declare-fun m!926745 () Bool)

(assert (=> b!1000475 m!926745))

(declare-fun m!926747 () Bool)

(assert (=> b!1000477 m!926747))

(declare-fun m!926749 () Bool)

(assert (=> b!1000480 m!926749))

(declare-fun m!926751 () Bool)

(assert (=> b!1000485 m!926751))

(declare-fun m!926753 () Bool)

(assert (=> b!1000485 m!926753))

(assert (=> b!1000485 m!926753))

(declare-fun m!926755 () Bool)

(assert (=> b!1000485 m!926755))

(assert (=> b!1000485 m!926755))

(assert (=> b!1000485 m!926753))

(declare-fun m!926757 () Bool)

(assert (=> b!1000485 m!926757))

(declare-fun m!926759 () Bool)

(assert (=> b!1000478 m!926759))

(assert (=> b!1000478 m!926759))

(declare-fun m!926761 () Bool)

(assert (=> b!1000478 m!926761))

(declare-fun m!926763 () Bool)

(assert (=> start!86468 m!926763))

(declare-fun m!926765 () Bool)

(assert (=> start!86468 m!926765))

(declare-fun m!926767 () Bool)

(assert (=> b!1000482 m!926767))

(assert (=> b!1000486 m!926759))

(assert (=> b!1000486 m!926759))

(declare-fun m!926769 () Bool)

(assert (=> b!1000486 m!926769))

(assert (=> b!1000476 m!926759))

(assert (=> b!1000476 m!926759))

(declare-fun m!926771 () Bool)

(assert (=> b!1000476 m!926771))

(assert (=> b!1000476 m!926771))

(assert (=> b!1000476 m!926759))

(declare-fun m!926773 () Bool)

(assert (=> b!1000476 m!926773))

(push 1)

(assert (not b!1000480))

(assert (not b!1000485))

(assert (not b!1000477))

(assert (not b!1000475))

(assert (not b!1000482))

(assert (not b!1000478))

(assert (not b!1000476))

(assert (not start!86468))

(assert (not b!1000486))

(assert (not b!1000483))

(check-sat)

(pop 1)

(push 1)

(check-sat)

