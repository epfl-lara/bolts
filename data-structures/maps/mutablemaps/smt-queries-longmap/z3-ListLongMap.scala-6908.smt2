; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86844 () Bool)

(assert start!86844)

(declare-fun b!1006537 () Bool)

(declare-fun res!675784 () Bool)

(declare-fun e!566557 () Bool)

(assert (=> b!1006537 (=> (not res!675784) (not e!566557))))

(declare-datatypes ((array!63495 0))(
  ( (array!63496 (arr!30566 (Array (_ BitVec 32) (_ BitVec 64))) (size!31069 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63495)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006537 (= res!675784 (validKeyInArray!0 (select (arr!30566 a!3219) j!170)))))

(declare-fun res!675786 () Bool)

(assert (=> start!86844 (=> (not res!675786) (not e!566557))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86844 (= res!675786 (validMask!0 mask!3464))))

(assert (=> start!86844 e!566557))

(declare-fun array_inv!23556 (array!63495) Bool)

(assert (=> start!86844 (array_inv!23556 a!3219)))

(assert (=> start!86844 true))

(declare-fun b!1006538 () Bool)

(declare-fun res!675791 () Bool)

(declare-fun e!566553 () Bool)

(assert (=> b!1006538 (=> (not res!675791) (not e!566553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63495 (_ BitVec 32)) Bool)

(assert (=> b!1006538 (= res!675791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006539 () Bool)

(declare-fun res!675782 () Bool)

(assert (=> b!1006539 (=> (not res!675782) (not e!566557))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006539 (= res!675782 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006540 () Bool)

(declare-fun e!566556 () Bool)

(declare-fun e!566555 () Bool)

(assert (=> b!1006540 (= e!566556 e!566555)))

(declare-fun res!675789 () Bool)

(assert (=> b!1006540 (=> (not res!675789) (not e!566555))))

(declare-fun lt!444812 () array!63495)

(declare-datatypes ((SeekEntryResult!9498 0))(
  ( (MissingZero!9498 (index!40362 (_ BitVec 32))) (Found!9498 (index!40363 (_ BitVec 32))) (Intermediate!9498 (undefined!10310 Bool) (index!40364 (_ BitVec 32)) (x!87787 (_ BitVec 32))) (Undefined!9498) (MissingVacant!9498 (index!40365 (_ BitVec 32))) )
))
(declare-fun lt!444813 () SeekEntryResult!9498)

(declare-fun lt!444808 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63495 (_ BitVec 32)) SeekEntryResult!9498)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006540 (= res!675789 (not (= lt!444813 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444808 mask!3464) lt!444808 lt!444812 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006540 (= lt!444808 (select (store (arr!30566 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1006540 (= lt!444812 (array!63496 (store (arr!30566 a!3219) i!1194 k0!2224) (size!31069 a!3219)))))

(declare-fun b!1006541 () Bool)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1006541 (= e!566555 (bvslt (bvsub #b01111111111111111111111111111110 x!1245) #b00000000000000000000000000000000))))

(declare-fun b!1006542 () Bool)

(declare-fun res!675792 () Bool)

(assert (=> b!1006542 (=> (not res!675792) (not e!566553))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006542 (= res!675792 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31069 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31069 a!3219))))))

(declare-fun b!1006543 () Bool)

(declare-fun res!675793 () Bool)

(assert (=> b!1006543 (=> (not res!675793) (not e!566555))))

(declare-fun lt!444811 () SeekEntryResult!9498)

(assert (=> b!1006543 (= res!675793 (not (= lt!444811 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444808 lt!444812 mask!3464))))))

(declare-fun b!1006544 () Bool)

(assert (=> b!1006544 (= e!566557 e!566553)))

(declare-fun res!675785 () Bool)

(assert (=> b!1006544 (=> (not res!675785) (not e!566553))))

(declare-fun lt!444809 () SeekEntryResult!9498)

(assert (=> b!1006544 (= res!675785 (or (= lt!444809 (MissingVacant!9498 i!1194)) (= lt!444809 (MissingZero!9498 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63495 (_ BitVec 32)) SeekEntryResult!9498)

(assert (=> b!1006544 (= lt!444809 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1006545 () Bool)

(declare-fun res!675783 () Bool)

(assert (=> b!1006545 (=> (not res!675783) (not e!566553))))

(declare-datatypes ((List!21368 0))(
  ( (Nil!21365) (Cons!21364 (h!22547 (_ BitVec 64)) (t!30377 List!21368)) )
))
(declare-fun arrayNoDuplicates!0 (array!63495 (_ BitVec 32) List!21368) Bool)

(assert (=> b!1006545 (= res!675783 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21365))))

(declare-fun b!1006546 () Bool)

(declare-fun res!675787 () Bool)

(assert (=> b!1006546 (=> (not res!675787) (not e!566557))))

(assert (=> b!1006546 (= res!675787 (validKeyInArray!0 k0!2224))))

(declare-fun b!1006547 () Bool)

(declare-fun e!566554 () Bool)

(assert (=> b!1006547 (= e!566554 e!566556)))

(declare-fun res!675781 () Bool)

(assert (=> b!1006547 (=> (not res!675781) (not e!566556))))

(declare-fun lt!444810 () SeekEntryResult!9498)

(assert (=> b!1006547 (= res!675781 (= lt!444811 lt!444810))))

(assert (=> b!1006547 (= lt!444811 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30566 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006548 () Bool)

(assert (=> b!1006548 (= e!566553 e!566554)))

(declare-fun res!675790 () Bool)

(assert (=> b!1006548 (=> (not res!675790) (not e!566554))))

(assert (=> b!1006548 (= res!675790 (= lt!444813 lt!444810))))

(assert (=> b!1006548 (= lt!444810 (Intermediate!9498 false resIndex!38 resX!38))))

(assert (=> b!1006548 (= lt!444813 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30566 a!3219) j!170) mask!3464) (select (arr!30566 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006549 () Bool)

(declare-fun res!675788 () Bool)

(assert (=> b!1006549 (=> (not res!675788) (not e!566557))))

(assert (=> b!1006549 (= res!675788 (and (= (size!31069 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31069 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31069 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86844 res!675786) b!1006549))

(assert (= (and b!1006549 res!675788) b!1006537))

(assert (= (and b!1006537 res!675784) b!1006546))

(assert (= (and b!1006546 res!675787) b!1006539))

(assert (= (and b!1006539 res!675782) b!1006544))

(assert (= (and b!1006544 res!675785) b!1006538))

(assert (= (and b!1006538 res!675791) b!1006545))

(assert (= (and b!1006545 res!675783) b!1006542))

(assert (= (and b!1006542 res!675792) b!1006548))

(assert (= (and b!1006548 res!675790) b!1006547))

(assert (= (and b!1006547 res!675781) b!1006540))

(assert (= (and b!1006540 res!675789) b!1006543))

(assert (= (and b!1006543 res!675793) b!1006541))

(declare-fun m!931735 () Bool)

(assert (=> b!1006547 m!931735))

(assert (=> b!1006547 m!931735))

(declare-fun m!931737 () Bool)

(assert (=> b!1006547 m!931737))

(declare-fun m!931739 () Bool)

(assert (=> b!1006538 m!931739))

(declare-fun m!931741 () Bool)

(assert (=> b!1006539 m!931741))

(declare-fun m!931743 () Bool)

(assert (=> b!1006540 m!931743))

(assert (=> b!1006540 m!931743))

(declare-fun m!931745 () Bool)

(assert (=> b!1006540 m!931745))

(declare-fun m!931747 () Bool)

(assert (=> b!1006540 m!931747))

(declare-fun m!931749 () Bool)

(assert (=> b!1006540 m!931749))

(declare-fun m!931751 () Bool)

(assert (=> b!1006545 m!931751))

(declare-fun m!931753 () Bool)

(assert (=> b!1006544 m!931753))

(assert (=> b!1006548 m!931735))

(assert (=> b!1006548 m!931735))

(declare-fun m!931755 () Bool)

(assert (=> b!1006548 m!931755))

(assert (=> b!1006548 m!931755))

(assert (=> b!1006548 m!931735))

(declare-fun m!931757 () Bool)

(assert (=> b!1006548 m!931757))

(assert (=> b!1006537 m!931735))

(assert (=> b!1006537 m!931735))

(declare-fun m!931759 () Bool)

(assert (=> b!1006537 m!931759))

(declare-fun m!931761 () Bool)

(assert (=> start!86844 m!931761))

(declare-fun m!931763 () Bool)

(assert (=> start!86844 m!931763))

(declare-fun m!931765 () Bool)

(assert (=> b!1006546 m!931765))

(declare-fun m!931767 () Bool)

(assert (=> b!1006543 m!931767))

(check-sat (not b!1006540) (not b!1006538) (not b!1006546) (not b!1006539) (not b!1006544) (not b!1006543) (not b!1006545) (not b!1006547) (not start!86844) (not b!1006548) (not b!1006537))
(check-sat)
