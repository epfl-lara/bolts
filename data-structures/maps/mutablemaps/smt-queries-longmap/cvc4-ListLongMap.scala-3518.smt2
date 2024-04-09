; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48698 () Bool)

(assert start!48698)

(declare-fun b!534739 () Bool)

(declare-fun res!330104 () Bool)

(declare-fun e!310759 () Bool)

(assert (=> b!534739 (=> (not res!330104) (not e!310759))))

(declare-datatypes ((array!33866 0))(
  ( (array!33867 (arr!16268 (Array (_ BitVec 32) (_ BitVec 64))) (size!16632 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33866)

(declare-datatypes ((List!10440 0))(
  ( (Nil!10437) (Cons!10436 (h!11379 (_ BitVec 64)) (t!16676 List!10440)) )
))
(declare-fun arrayNoDuplicates!0 (array!33866 (_ BitVec 32) List!10440) Bool)

(assert (=> b!534739 (= res!330104 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10437))))

(declare-fun b!534741 () Bool)

(declare-fun res!330102 () Bool)

(assert (=> b!534741 (=> (not res!330102) (not e!310759))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33866 (_ BitVec 32)) Bool)

(assert (=> b!534741 (= res!330102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534742 () Bool)

(declare-fun res!330094 () Bool)

(declare-fun e!310761 () Bool)

(assert (=> b!534742 (=> (not res!330094) (not e!310761))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534742 (= res!330094 (validKeyInArray!0 k!1998))))

(declare-fun b!534743 () Bool)

(declare-fun e!310760 () Bool)

(assert (=> b!534743 (= e!310759 e!310760)))

(declare-fun res!330100 () Bool)

(assert (=> b!534743 (=> (not res!330100) (not e!310760))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4733 0))(
  ( (MissingZero!4733 (index!21156 (_ BitVec 32))) (Found!4733 (index!21157 (_ BitVec 32))) (Intermediate!4733 (undefined!5545 Bool) (index!21158 (_ BitVec 32)) (x!50135 (_ BitVec 32))) (Undefined!4733) (MissingVacant!4733 (index!21159 (_ BitVec 32))) )
))
(declare-fun lt!245692 () SeekEntryResult!4733)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534743 (= res!330100 (= lt!245692 (Intermediate!4733 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33866 (_ BitVec 32)) SeekEntryResult!4733)

(assert (=> b!534743 (= lt!245692 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16268 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534744 () Bool)

(declare-fun res!330099 () Bool)

(assert (=> b!534744 (=> (not res!330099) (not e!310761))))

(assert (=> b!534744 (= res!330099 (validKeyInArray!0 (select (arr!16268 a!3154) j!147)))))

(declare-fun b!534745 () Bool)

(declare-fun res!330103 () Bool)

(assert (=> b!534745 (=> (not res!330103) (not e!310761))))

(declare-fun arrayContainsKey!0 (array!33866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534745 (= res!330103 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534746 () Bool)

(declare-fun res!330097 () Bool)

(assert (=> b!534746 (=> (not res!330097) (not e!310760))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534746 (= res!330097 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16268 a!3154) j!147) mask!3216) (select (arr!16268 a!3154) j!147) a!3154 mask!3216) lt!245692))))

(declare-fun b!534747 () Bool)

(declare-fun res!330101 () Bool)

(assert (=> b!534747 (=> (not res!330101) (not e!310759))))

(assert (=> b!534747 (= res!330101 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16632 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16632 a!3154)) (= (select (arr!16268 a!3154) resIndex!32) (select (arr!16268 a!3154) j!147))))))

(declare-fun b!534740 () Bool)

(assert (=> b!534740 (= e!310761 e!310759)))

(declare-fun res!330095 () Bool)

(assert (=> b!534740 (=> (not res!330095) (not e!310759))))

(declare-fun lt!245693 () SeekEntryResult!4733)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534740 (= res!330095 (or (= lt!245693 (MissingZero!4733 i!1153)) (= lt!245693 (MissingVacant!4733 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33866 (_ BitVec 32)) SeekEntryResult!4733)

(assert (=> b!534740 (= lt!245693 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!330096 () Bool)

(assert (=> start!48698 (=> (not res!330096) (not e!310761))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48698 (= res!330096 (validMask!0 mask!3216))))

(assert (=> start!48698 e!310761))

(assert (=> start!48698 true))

(declare-fun array_inv!12042 (array!33866) Bool)

(assert (=> start!48698 (array_inv!12042 a!3154)))

(declare-fun b!534748 () Bool)

(assert (=> b!534748 (= e!310760 (and (not (= (select (arr!16268 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16268 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16268 a!3154) index!1177) (select (arr!16268 a!3154) j!147)) (= index!1177 resIndex!32) (bvslt mask!3216 #b00000000000000000000000000000000)))))

(declare-fun b!534749 () Bool)

(declare-fun res!330098 () Bool)

(assert (=> b!534749 (=> (not res!330098) (not e!310761))))

(assert (=> b!534749 (= res!330098 (and (= (size!16632 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16632 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16632 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48698 res!330096) b!534749))

(assert (= (and b!534749 res!330098) b!534744))

(assert (= (and b!534744 res!330099) b!534742))

(assert (= (and b!534742 res!330094) b!534745))

(assert (= (and b!534745 res!330103) b!534740))

(assert (= (and b!534740 res!330095) b!534741))

(assert (= (and b!534741 res!330102) b!534739))

(assert (= (and b!534739 res!330104) b!534747))

(assert (= (and b!534747 res!330101) b!534743))

(assert (= (and b!534743 res!330100) b!534746))

(assert (= (and b!534746 res!330097) b!534748))

(declare-fun m!514425 () Bool)

(assert (=> b!534740 m!514425))

(declare-fun m!514427 () Bool)

(assert (=> b!534741 m!514427))

(declare-fun m!514429 () Bool)

(assert (=> b!534746 m!514429))

(assert (=> b!534746 m!514429))

(declare-fun m!514431 () Bool)

(assert (=> b!534746 m!514431))

(assert (=> b!534746 m!514431))

(assert (=> b!534746 m!514429))

(declare-fun m!514433 () Bool)

(assert (=> b!534746 m!514433))

(declare-fun m!514435 () Bool)

(assert (=> b!534747 m!514435))

(assert (=> b!534747 m!514429))

(assert (=> b!534744 m!514429))

(assert (=> b!534744 m!514429))

(declare-fun m!514437 () Bool)

(assert (=> b!534744 m!514437))

(declare-fun m!514439 () Bool)

(assert (=> b!534739 m!514439))

(declare-fun m!514441 () Bool)

(assert (=> b!534742 m!514441))

(declare-fun m!514443 () Bool)

(assert (=> b!534748 m!514443))

(assert (=> b!534748 m!514429))

(assert (=> b!534743 m!514429))

(assert (=> b!534743 m!514429))

(declare-fun m!514445 () Bool)

(assert (=> b!534743 m!514445))

(declare-fun m!514447 () Bool)

(assert (=> b!534745 m!514447))

(declare-fun m!514449 () Bool)

(assert (=> start!48698 m!514449))

(declare-fun m!514451 () Bool)

(assert (=> start!48698 m!514451))

(push 1)

(assert (not b!534744))

(assert (not b!534743))

(assert (not b!534742))

(assert (not b!534740))

(assert (not start!48698))

(assert (not b!534741))

(assert (not b!534745))

(assert (not b!534739))

(assert (not b!534746))

(check-sat)

(pop 1)

(push 1)

(check-sat)

