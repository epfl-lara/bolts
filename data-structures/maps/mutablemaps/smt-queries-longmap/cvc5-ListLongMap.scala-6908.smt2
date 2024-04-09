; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86842 () Bool)

(assert start!86842)

(declare-fun b!1006498 () Bool)

(declare-fun res!675742 () Bool)

(declare-fun e!566535 () Bool)

(assert (=> b!1006498 (=> (not res!675742) (not e!566535))))

(declare-datatypes ((array!63493 0))(
  ( (array!63494 (arr!30565 (Array (_ BitVec 32) (_ BitVec 64))) (size!31068 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63493)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006498 (= res!675742 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006499 () Bool)

(declare-fun e!566536 () Bool)

(declare-fun e!566539 () Bool)

(assert (=> b!1006499 (= e!566536 e!566539)))

(declare-fun res!675753 () Bool)

(assert (=> b!1006499 (=> (not res!675753) (not e!566539))))

(declare-fun lt!444794 () array!63493)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9497 0))(
  ( (MissingZero!9497 (index!40358 (_ BitVec 32))) (Found!9497 (index!40359 (_ BitVec 32))) (Intermediate!9497 (undefined!10309 Bool) (index!40360 (_ BitVec 32)) (x!87786 (_ BitVec 32))) (Undefined!9497) (MissingVacant!9497 (index!40361 (_ BitVec 32))) )
))
(declare-fun lt!444793 () SeekEntryResult!9497)

(declare-fun lt!444795 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63493 (_ BitVec 32)) SeekEntryResult!9497)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006499 (= res!675753 (not (= lt!444793 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444795 mask!3464) lt!444795 lt!444794 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006499 (= lt!444795 (select (store (arr!30565 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1006499 (= lt!444794 (array!63494 (store (arr!30565 a!3219) i!1194 k!2224) (size!31068 a!3219)))))

(declare-fun b!1006500 () Bool)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1006500 (= e!566539 (bvslt (bvsub #b01111111111111111111111111111110 x!1245) #b00000000000000000000000000000000))))

(declare-fun b!1006501 () Bool)

(declare-fun res!675754 () Bool)

(declare-fun e!566538 () Bool)

(assert (=> b!1006501 (=> (not res!675754) (not e!566538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63493 (_ BitVec 32)) Bool)

(assert (=> b!1006501 (= res!675754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006502 () Bool)

(declare-fun res!675752 () Bool)

(assert (=> b!1006502 (=> (not res!675752) (not e!566535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006502 (= res!675752 (validKeyInArray!0 k!2224))))

(declare-fun b!1006504 () Bool)

(declare-fun res!675747 () Bool)

(assert (=> b!1006504 (=> (not res!675747) (not e!566539))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!444791 () SeekEntryResult!9497)

(assert (=> b!1006504 (= res!675747 (not (= lt!444791 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444795 lt!444794 mask!3464))))))

(declare-fun b!1006505 () Bool)

(declare-fun res!675749 () Bool)

(assert (=> b!1006505 (=> (not res!675749) (not e!566535))))

(assert (=> b!1006505 (= res!675749 (validKeyInArray!0 (select (arr!30565 a!3219) j!170)))))

(declare-fun b!1006506 () Bool)

(declare-fun e!566540 () Bool)

(assert (=> b!1006506 (= e!566540 e!566536)))

(declare-fun res!675744 () Bool)

(assert (=> b!1006506 (=> (not res!675744) (not e!566536))))

(declare-fun lt!444790 () SeekEntryResult!9497)

(assert (=> b!1006506 (= res!675744 (= lt!444791 lt!444790))))

(assert (=> b!1006506 (= lt!444791 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30565 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006507 () Bool)

(declare-fun res!675745 () Bool)

(assert (=> b!1006507 (=> (not res!675745) (not e!566538))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006507 (= res!675745 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31068 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31068 a!3219))))))

(declare-fun b!1006508 () Bool)

(declare-fun res!675751 () Bool)

(assert (=> b!1006508 (=> (not res!675751) (not e!566535))))

(assert (=> b!1006508 (= res!675751 (and (= (size!31068 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31068 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31068 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006503 () Bool)

(declare-fun res!675746 () Bool)

(assert (=> b!1006503 (=> (not res!675746) (not e!566538))))

(declare-datatypes ((List!21367 0))(
  ( (Nil!21364) (Cons!21363 (h!22546 (_ BitVec 64)) (t!30376 List!21367)) )
))
(declare-fun arrayNoDuplicates!0 (array!63493 (_ BitVec 32) List!21367) Bool)

(assert (=> b!1006503 (= res!675746 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21364))))

(declare-fun res!675748 () Bool)

(assert (=> start!86842 (=> (not res!675748) (not e!566535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86842 (= res!675748 (validMask!0 mask!3464))))

(assert (=> start!86842 e!566535))

(declare-fun array_inv!23555 (array!63493) Bool)

(assert (=> start!86842 (array_inv!23555 a!3219)))

(assert (=> start!86842 true))

(declare-fun b!1006509 () Bool)

(assert (=> b!1006509 (= e!566535 e!566538)))

(declare-fun res!675743 () Bool)

(assert (=> b!1006509 (=> (not res!675743) (not e!566538))))

(declare-fun lt!444792 () SeekEntryResult!9497)

(assert (=> b!1006509 (= res!675743 (or (= lt!444792 (MissingVacant!9497 i!1194)) (= lt!444792 (MissingZero!9497 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63493 (_ BitVec 32)) SeekEntryResult!9497)

(assert (=> b!1006509 (= lt!444792 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006510 () Bool)

(assert (=> b!1006510 (= e!566538 e!566540)))

(declare-fun res!675750 () Bool)

(assert (=> b!1006510 (=> (not res!675750) (not e!566540))))

(assert (=> b!1006510 (= res!675750 (= lt!444793 lt!444790))))

(assert (=> b!1006510 (= lt!444790 (Intermediate!9497 false resIndex!38 resX!38))))

(assert (=> b!1006510 (= lt!444793 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30565 a!3219) j!170) mask!3464) (select (arr!30565 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!86842 res!675748) b!1006508))

(assert (= (and b!1006508 res!675751) b!1006505))

(assert (= (and b!1006505 res!675749) b!1006502))

(assert (= (and b!1006502 res!675752) b!1006498))

(assert (= (and b!1006498 res!675742) b!1006509))

(assert (= (and b!1006509 res!675743) b!1006501))

(assert (= (and b!1006501 res!675754) b!1006503))

(assert (= (and b!1006503 res!675746) b!1006507))

(assert (= (and b!1006507 res!675745) b!1006510))

(assert (= (and b!1006510 res!675750) b!1006506))

(assert (= (and b!1006506 res!675744) b!1006499))

(assert (= (and b!1006499 res!675753) b!1006504))

(assert (= (and b!1006504 res!675747) b!1006500))

(declare-fun m!931701 () Bool)

(assert (=> b!1006510 m!931701))

(assert (=> b!1006510 m!931701))

(declare-fun m!931703 () Bool)

(assert (=> b!1006510 m!931703))

(assert (=> b!1006510 m!931703))

(assert (=> b!1006510 m!931701))

(declare-fun m!931705 () Bool)

(assert (=> b!1006510 m!931705))

(assert (=> b!1006506 m!931701))

(assert (=> b!1006506 m!931701))

(declare-fun m!931707 () Bool)

(assert (=> b!1006506 m!931707))

(declare-fun m!931709 () Bool)

(assert (=> b!1006509 m!931709))

(declare-fun m!931711 () Bool)

(assert (=> b!1006503 m!931711))

(declare-fun m!931713 () Bool)

(assert (=> b!1006499 m!931713))

(assert (=> b!1006499 m!931713))

(declare-fun m!931715 () Bool)

(assert (=> b!1006499 m!931715))

(declare-fun m!931717 () Bool)

(assert (=> b!1006499 m!931717))

(declare-fun m!931719 () Bool)

(assert (=> b!1006499 m!931719))

(declare-fun m!931721 () Bool)

(assert (=> b!1006502 m!931721))

(assert (=> b!1006505 m!931701))

(assert (=> b!1006505 m!931701))

(declare-fun m!931723 () Bool)

(assert (=> b!1006505 m!931723))

(declare-fun m!931725 () Bool)

(assert (=> b!1006504 m!931725))

(declare-fun m!931727 () Bool)

(assert (=> b!1006498 m!931727))

(declare-fun m!931729 () Bool)

(assert (=> b!1006501 m!931729))

(declare-fun m!931731 () Bool)

(assert (=> start!86842 m!931731))

(declare-fun m!931733 () Bool)

(assert (=> start!86842 m!931733))

(push 1)

(assert (not b!1006505))

(assert (not b!1006498))

(assert (not start!86842))

(assert (not b!1006503))

(assert (not b!1006501))

(assert (not b!1006502))

(assert (not b!1006510))

(assert (not b!1006509))

(assert (not b!1006506))

(assert (not b!1006504))

(assert (not b!1006499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

