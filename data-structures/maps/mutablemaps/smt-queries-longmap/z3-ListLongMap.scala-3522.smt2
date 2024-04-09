; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48720 () Bool)

(assert start!48720)

(declare-fun b!535098 () Bool)

(declare-fun res!330462 () Bool)

(declare-fun e!310883 () Bool)

(assert (=> b!535098 (=> (not res!330462) (not e!310883))))

(declare-datatypes ((array!33888 0))(
  ( (array!33889 (arr!16279 (Array (_ BitVec 32) (_ BitVec 64))) (size!16643 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33888)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!535098 (= res!330462 (and (= (size!16643 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16643 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16643 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535099 () Bool)

(declare-fun res!330461 () Bool)

(declare-fun e!310884 () Bool)

(assert (=> b!535099 (=> (not res!330461) (not e!310884))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535099 (= res!330461 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16643 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16643 a!3154)) (= (select (arr!16279 a!3154) resIndex!32) (select (arr!16279 a!3154) j!147))))))

(declare-fun res!330460 () Bool)

(assert (=> start!48720 (=> (not res!330460) (not e!310883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48720 (= res!330460 (validMask!0 mask!3216))))

(assert (=> start!48720 e!310883))

(assert (=> start!48720 true))

(declare-fun array_inv!12053 (array!33888) Bool)

(assert (=> start!48720 (array_inv!12053 a!3154)))

(declare-fun b!535100 () Bool)

(declare-fun res!330457 () Bool)

(declare-fun e!310882 () Bool)

(assert (=> b!535100 (=> (not res!330457) (not e!310882))))

(assert (=> b!535100 (= res!330457 (and (not (= (select (arr!16279 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16279 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16279 a!3154) index!1177) (select (arr!16279 a!3154) j!147)) (= index!1177 resIndex!32) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsle x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!535101 () Bool)

(declare-fun res!330459 () Bool)

(assert (=> b!535101 (=> (not res!330459) (not e!310884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33888 (_ BitVec 32)) Bool)

(assert (=> b!535101 (= res!330459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535102 () Bool)

(declare-fun res!330454 () Bool)

(assert (=> b!535102 (=> (not res!330454) (not e!310883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535102 (= res!330454 (validKeyInArray!0 (select (arr!16279 a!3154) j!147)))))

(declare-fun b!535103 () Bool)

(assert (=> b!535103 (= e!310884 e!310882)))

(declare-fun res!330463 () Bool)

(assert (=> b!535103 (=> (not res!330463) (not e!310882))))

(declare-datatypes ((SeekEntryResult!4744 0))(
  ( (MissingZero!4744 (index!21200 (_ BitVec 32))) (Found!4744 (index!21201 (_ BitVec 32))) (Intermediate!4744 (undefined!5556 Bool) (index!21202 (_ BitVec 32)) (x!50178 (_ BitVec 32))) (Undefined!4744) (MissingVacant!4744 (index!21203 (_ BitVec 32))) )
))
(declare-fun lt!245758 () SeekEntryResult!4744)

(assert (=> b!535103 (= res!330463 (= lt!245758 (Intermediate!4744 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33888 (_ BitVec 32)) SeekEntryResult!4744)

(assert (=> b!535103 (= lt!245758 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16279 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535104 () Bool)

(assert (=> b!535104 (= e!310883 e!310884)))

(declare-fun res!330455 () Bool)

(assert (=> b!535104 (=> (not res!330455) (not e!310884))))

(declare-fun lt!245759 () SeekEntryResult!4744)

(assert (=> b!535104 (= res!330455 (or (= lt!245759 (MissingZero!4744 i!1153)) (= lt!245759 (MissingVacant!4744 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33888 (_ BitVec 32)) SeekEntryResult!4744)

(assert (=> b!535104 (= lt!245759 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!535105 () Bool)

(declare-fun res!330456 () Bool)

(assert (=> b!535105 (=> (not res!330456) (not e!310884))))

(declare-datatypes ((List!10451 0))(
  ( (Nil!10448) (Cons!10447 (h!11390 (_ BitVec 64)) (t!16687 List!10451)) )
))
(declare-fun arrayNoDuplicates!0 (array!33888 (_ BitVec 32) List!10451) Bool)

(assert (=> b!535105 (= res!330456 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10448))))

(declare-fun b!535106 () Bool)

(assert (=> b!535106 (= e!310882 (not (validKeyInArray!0 (select (store (arr!16279 a!3154) i!1153 k0!1998) j!147))))))

(declare-fun b!535107 () Bool)

(declare-fun res!330453 () Bool)

(assert (=> b!535107 (=> (not res!330453) (not e!310883))))

(assert (=> b!535107 (= res!330453 (validKeyInArray!0 k0!1998))))

(declare-fun b!535108 () Bool)

(declare-fun res!330464 () Bool)

(assert (=> b!535108 (=> (not res!330464) (not e!310883))))

(declare-fun arrayContainsKey!0 (array!33888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535108 (= res!330464 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535109 () Bool)

(declare-fun res!330458 () Bool)

(assert (=> b!535109 (=> (not res!330458) (not e!310882))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535109 (= res!330458 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16279 a!3154) j!147) mask!3216) (select (arr!16279 a!3154) j!147) a!3154 mask!3216) lt!245758))))

(assert (= (and start!48720 res!330460) b!535098))

(assert (= (and b!535098 res!330462) b!535102))

(assert (= (and b!535102 res!330454) b!535107))

(assert (= (and b!535107 res!330453) b!535108))

(assert (= (and b!535108 res!330464) b!535104))

(assert (= (and b!535104 res!330455) b!535101))

(assert (= (and b!535101 res!330459) b!535105))

(assert (= (and b!535105 res!330456) b!535099))

(assert (= (and b!535099 res!330461) b!535103))

(assert (= (and b!535103 res!330463) b!535109))

(assert (= (and b!535109 res!330458) b!535100))

(assert (= (and b!535100 res!330457) b!535106))

(declare-fun m!514733 () Bool)

(assert (=> b!535107 m!514733))

(declare-fun m!514735 () Bool)

(assert (=> b!535105 m!514735))

(declare-fun m!514737 () Bool)

(assert (=> b!535101 m!514737))

(declare-fun m!514739 () Bool)

(assert (=> b!535103 m!514739))

(assert (=> b!535103 m!514739))

(declare-fun m!514741 () Bool)

(assert (=> b!535103 m!514741))

(assert (=> b!535109 m!514739))

(assert (=> b!535109 m!514739))

(declare-fun m!514743 () Bool)

(assert (=> b!535109 m!514743))

(assert (=> b!535109 m!514743))

(assert (=> b!535109 m!514739))

(declare-fun m!514745 () Bool)

(assert (=> b!535109 m!514745))

(declare-fun m!514747 () Bool)

(assert (=> b!535100 m!514747))

(assert (=> b!535100 m!514739))

(declare-fun m!514749 () Bool)

(assert (=> start!48720 m!514749))

(declare-fun m!514751 () Bool)

(assert (=> start!48720 m!514751))

(declare-fun m!514753 () Bool)

(assert (=> b!535108 m!514753))

(declare-fun m!514755 () Bool)

(assert (=> b!535104 m!514755))

(declare-fun m!514757 () Bool)

(assert (=> b!535106 m!514757))

(declare-fun m!514759 () Bool)

(assert (=> b!535106 m!514759))

(assert (=> b!535106 m!514759))

(declare-fun m!514761 () Bool)

(assert (=> b!535106 m!514761))

(assert (=> b!535102 m!514739))

(assert (=> b!535102 m!514739))

(declare-fun m!514763 () Bool)

(assert (=> b!535102 m!514763))

(declare-fun m!514765 () Bool)

(assert (=> b!535099 m!514765))

(assert (=> b!535099 m!514739))

(check-sat (not b!535109) (not b!535106) (not b!535107) (not b!535102) (not b!535108) (not b!535104) (not b!535101) (not b!535103) (not b!535105) (not start!48720))
(check-sat)
