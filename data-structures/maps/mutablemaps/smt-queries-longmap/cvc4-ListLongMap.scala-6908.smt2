; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86846 () Bool)

(assert start!86846)

(declare-fun res!675825 () Bool)

(declare-fun e!566576 () Bool)

(assert (=> start!86846 (=> (not res!675825) (not e!566576))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86846 (= res!675825 (validMask!0 mask!3464))))

(assert (=> start!86846 e!566576))

(declare-datatypes ((array!63497 0))(
  ( (array!63498 (arr!30567 (Array (_ BitVec 32) (_ BitVec 64))) (size!31070 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63497)

(declare-fun array_inv!23557 (array!63497) Bool)

(assert (=> start!86846 (array_inv!23557 a!3219)))

(assert (=> start!86846 true))

(declare-fun b!1006576 () Bool)

(declare-fun res!675820 () Bool)

(declare-fun e!566571 () Bool)

(assert (=> b!1006576 (=> (not res!675820) (not e!566571))))

(declare-datatypes ((List!21369 0))(
  ( (Nil!21366) (Cons!21365 (h!22548 (_ BitVec 64)) (t!30378 List!21369)) )
))
(declare-fun arrayNoDuplicates!0 (array!63497 (_ BitVec 32) List!21369) Bool)

(assert (=> b!1006576 (= res!675820 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21366))))

(declare-fun b!1006577 () Bool)

(declare-fun e!566572 () Bool)

(declare-fun e!566574 () Bool)

(assert (=> b!1006577 (= e!566572 e!566574)))

(declare-fun res!675822 () Bool)

(assert (=> b!1006577 (=> (not res!675822) (not e!566574))))

(declare-fun lt!444831 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9499 0))(
  ( (MissingZero!9499 (index!40366 (_ BitVec 32))) (Found!9499 (index!40367 (_ BitVec 32))) (Intermediate!9499 (undefined!10311 Bool) (index!40368 (_ BitVec 32)) (x!87788 (_ BitVec 32))) (Undefined!9499) (MissingVacant!9499 (index!40369 (_ BitVec 32))) )
))
(declare-fun lt!444827 () SeekEntryResult!9499)

(declare-fun lt!444830 () array!63497)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63497 (_ BitVec 32)) SeekEntryResult!9499)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006577 (= res!675822 (not (= lt!444827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444831 mask!3464) lt!444831 lt!444830 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1006577 (= lt!444831 (select (store (arr!30567 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1006577 (= lt!444830 (array!63498 (store (arr!30567 a!3219) i!1194 k!2224) (size!31070 a!3219)))))

(declare-fun b!1006578 () Bool)

(assert (=> b!1006578 (= e!566576 e!566571)))

(declare-fun res!675824 () Bool)

(assert (=> b!1006578 (=> (not res!675824) (not e!566571))))

(declare-fun lt!444828 () SeekEntryResult!9499)

(assert (=> b!1006578 (= res!675824 (or (= lt!444828 (MissingVacant!9499 i!1194)) (= lt!444828 (MissingZero!9499 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63497 (_ BitVec 32)) SeekEntryResult!9499)

(assert (=> b!1006578 (= lt!444828 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006579 () Bool)

(declare-fun res!675831 () Bool)

(assert (=> b!1006579 (=> (not res!675831) (not e!566574))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!444829 () SeekEntryResult!9499)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1006579 (= res!675831 (not (= lt!444829 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444831 lt!444830 mask!3464))))))

(declare-fun b!1006580 () Bool)

(declare-fun res!675826 () Bool)

(assert (=> b!1006580 (=> (not res!675826) (not e!566576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006580 (= res!675826 (validKeyInArray!0 (select (arr!30567 a!3219) j!170)))))

(declare-fun b!1006581 () Bool)

(declare-fun res!675828 () Bool)

(assert (=> b!1006581 (=> (not res!675828) (not e!566576))))

(assert (=> b!1006581 (= res!675828 (validKeyInArray!0 k!2224))))

(declare-fun b!1006582 () Bool)

(declare-fun e!566573 () Bool)

(assert (=> b!1006582 (= e!566571 e!566573)))

(declare-fun res!675821 () Bool)

(assert (=> b!1006582 (=> (not res!675821) (not e!566573))))

(declare-fun lt!444826 () SeekEntryResult!9499)

(assert (=> b!1006582 (= res!675821 (= lt!444827 lt!444826))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006582 (= lt!444826 (Intermediate!9499 false resIndex!38 resX!38))))

(assert (=> b!1006582 (= lt!444827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30567 a!3219) j!170) mask!3464) (select (arr!30567 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006583 () Bool)

(assert (=> b!1006583 (= e!566573 e!566572)))

(declare-fun res!675823 () Bool)

(assert (=> b!1006583 (=> (not res!675823) (not e!566572))))

(assert (=> b!1006583 (= res!675823 (= lt!444829 lt!444826))))

(assert (=> b!1006583 (= lt!444829 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30567 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006584 () Bool)

(declare-fun res!675829 () Bool)

(assert (=> b!1006584 (=> (not res!675829) (not e!566571))))

(assert (=> b!1006584 (= res!675829 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31070 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31070 a!3219))))))

(declare-fun b!1006585 () Bool)

(declare-fun res!675832 () Bool)

(assert (=> b!1006585 (=> (not res!675832) (not e!566576))))

(assert (=> b!1006585 (= res!675832 (and (= (size!31070 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31070 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31070 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006586 () Bool)

(declare-fun res!675830 () Bool)

(assert (=> b!1006586 (=> (not res!675830) (not e!566571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63497 (_ BitVec 32)) Bool)

(assert (=> b!1006586 (= res!675830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006587 () Bool)

(assert (=> b!1006587 (= e!566574 (bvslt (bvsub #b01111111111111111111111111111110 x!1245) #b00000000000000000000000000000000))))

(declare-fun b!1006588 () Bool)

(declare-fun res!675827 () Bool)

(assert (=> b!1006588 (=> (not res!675827) (not e!566576))))

(declare-fun arrayContainsKey!0 (array!63497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006588 (= res!675827 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86846 res!675825) b!1006585))

(assert (= (and b!1006585 res!675832) b!1006580))

(assert (= (and b!1006580 res!675826) b!1006581))

(assert (= (and b!1006581 res!675828) b!1006588))

(assert (= (and b!1006588 res!675827) b!1006578))

(assert (= (and b!1006578 res!675824) b!1006586))

(assert (= (and b!1006586 res!675830) b!1006576))

(assert (= (and b!1006576 res!675820) b!1006584))

(assert (= (and b!1006584 res!675829) b!1006582))

(assert (= (and b!1006582 res!675821) b!1006583))

(assert (= (and b!1006583 res!675823) b!1006577))

(assert (= (and b!1006577 res!675822) b!1006579))

(assert (= (and b!1006579 res!675831) b!1006587))

(declare-fun m!931769 () Bool)

(assert (=> b!1006579 m!931769))

(declare-fun m!931771 () Bool)

(assert (=> b!1006581 m!931771))

(declare-fun m!931773 () Bool)

(assert (=> b!1006582 m!931773))

(assert (=> b!1006582 m!931773))

(declare-fun m!931775 () Bool)

(assert (=> b!1006582 m!931775))

(assert (=> b!1006582 m!931775))

(assert (=> b!1006582 m!931773))

(declare-fun m!931777 () Bool)

(assert (=> b!1006582 m!931777))

(declare-fun m!931779 () Bool)

(assert (=> b!1006588 m!931779))

(declare-fun m!931781 () Bool)

(assert (=> start!86846 m!931781))

(declare-fun m!931783 () Bool)

(assert (=> start!86846 m!931783))

(declare-fun m!931785 () Bool)

(assert (=> b!1006577 m!931785))

(assert (=> b!1006577 m!931785))

(declare-fun m!931787 () Bool)

(assert (=> b!1006577 m!931787))

(declare-fun m!931789 () Bool)

(assert (=> b!1006577 m!931789))

(declare-fun m!931791 () Bool)

(assert (=> b!1006577 m!931791))

(declare-fun m!931793 () Bool)

(assert (=> b!1006586 m!931793))

(declare-fun m!931795 () Bool)

(assert (=> b!1006576 m!931795))

(declare-fun m!931797 () Bool)

(assert (=> b!1006578 m!931797))

(assert (=> b!1006580 m!931773))

(assert (=> b!1006580 m!931773))

(declare-fun m!931799 () Bool)

(assert (=> b!1006580 m!931799))

(assert (=> b!1006583 m!931773))

(assert (=> b!1006583 m!931773))

(declare-fun m!931801 () Bool)

(assert (=> b!1006583 m!931801))

(push 1)

(assert (not b!1006588))

(assert (not b!1006580))

(assert (not b!1006578))

(assert (not b!1006582))

(assert (not b!1006586))

(assert (not b!1006577))

(assert (not b!1006581))

(assert (not start!86846))

(assert (not b!1006576))

(assert (not b!1006579))

(assert (not b!1006583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

