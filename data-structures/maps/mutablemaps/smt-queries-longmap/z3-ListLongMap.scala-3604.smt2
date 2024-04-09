; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49632 () Bool)

(assert start!49632)

(declare-fun b!545771 () Bool)

(declare-fun e!315453 () Bool)

(declare-fun e!315448 () Bool)

(assert (=> b!545771 (= e!315453 e!315448)))

(declare-fun res!339860 () Bool)

(assert (=> b!545771 (=> (not res!339860) (not e!315448))))

(declare-datatypes ((SeekEntryResult!4990 0))(
  ( (MissingZero!4990 (index!22184 (_ BitVec 32))) (Found!4990 (index!22185 (_ BitVec 32))) (Intermediate!4990 (undefined!5802 Bool) (index!22186 (_ BitVec 32)) (x!51137 (_ BitVec 32))) (Undefined!4990) (MissingVacant!4990 (index!22187 (_ BitVec 32))) )
))
(declare-fun lt!249064 () SeekEntryResult!4990)

(declare-fun lt!249061 () SeekEntryResult!4990)

(declare-fun lt!249065 () SeekEntryResult!4990)

(assert (=> b!545771 (= res!339860 (and (= lt!249061 lt!249065) (= lt!249064 lt!249061)))))

(declare-fun lt!249063 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34401 0))(
  ( (array!34402 (arr!16525 (Array (_ BitVec 32) (_ BitVec 64))) (size!16889 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34401)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34401 (_ BitVec 32)) SeekEntryResult!4990)

(assert (=> b!545771 (= lt!249061 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249063 (select (arr!16525 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545772 () Bool)

(declare-fun e!315449 () Bool)

(assert (=> b!545772 (= e!315449 e!315453)))

(declare-fun res!339852 () Bool)

(assert (=> b!545772 (=> (not res!339852) (not e!315453))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545772 (= res!339852 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!249063 #b00000000000000000000000000000000) (bvslt lt!249063 (size!16889 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545772 (= lt!249063 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545773 () Bool)

(declare-fun e!315454 () Bool)

(assert (=> b!545773 (= e!315454 e!315449)))

(declare-fun res!339851 () Bool)

(assert (=> b!545773 (=> (not res!339851) (not e!315449))))

(declare-fun lt!249059 () SeekEntryResult!4990)

(assert (=> b!545773 (= res!339851 (and (= lt!249064 lt!249059) (not (= (select (arr!16525 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16525 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16525 a!3154) index!1177) (select (arr!16525 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545773 (= lt!249064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16525 a!3154) j!147) mask!3216) (select (arr!16525 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545774 () Bool)

(declare-fun e!315452 () Bool)

(declare-fun e!315450 () Bool)

(assert (=> b!545774 (= e!315452 e!315450)))

(declare-fun res!339856 () Bool)

(assert (=> b!545774 (=> (not res!339856) (not e!315450))))

(declare-fun lt!249062 () SeekEntryResult!4990)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545774 (= res!339856 (or (= lt!249062 (MissingZero!4990 i!1153)) (= lt!249062 (MissingVacant!4990 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34401 (_ BitVec 32)) SeekEntryResult!4990)

(assert (=> b!545774 (= lt!249062 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!545775 () Bool)

(assert (=> b!545775 (= e!315450 e!315454)))

(declare-fun res!339850 () Bool)

(assert (=> b!545775 (=> (not res!339850) (not e!315454))))

(assert (=> b!545775 (= res!339850 (= lt!249059 lt!249065))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!545775 (= lt!249065 (Intermediate!4990 false resIndex!32 resX!32))))

(assert (=> b!545775 (= lt!249059 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16525 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545776 () Bool)

(declare-fun res!339859 () Bool)

(assert (=> b!545776 (=> (not res!339859) (not e!315452))))

(assert (=> b!545776 (= res!339859 (and (= (size!16889 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16889 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16889 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!339854 () Bool)

(assert (=> start!49632 (=> (not res!339854) (not e!315452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49632 (= res!339854 (validMask!0 mask!3216))))

(assert (=> start!49632 e!315452))

(assert (=> start!49632 true))

(declare-fun array_inv!12299 (array!34401) Bool)

(assert (=> start!49632 (array_inv!12299 a!3154)))

(declare-fun b!545777 () Bool)

(declare-fun res!339858 () Bool)

(assert (=> b!545777 (=> (not res!339858) (not e!315452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545777 (= res!339858 (validKeyInArray!0 k0!1998))))

(declare-fun b!545778 () Bool)

(declare-fun res!339857 () Bool)

(assert (=> b!545778 (=> (not res!339857) (not e!315450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34401 (_ BitVec 32)) Bool)

(assert (=> b!545778 (= res!339857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545779 () Bool)

(declare-fun res!339855 () Bool)

(assert (=> b!545779 (=> (not res!339855) (not e!315452))))

(declare-fun arrayContainsKey!0 (array!34401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545779 (= res!339855 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545780 () Bool)

(declare-fun res!339849 () Bool)

(assert (=> b!545780 (=> (not res!339849) (not e!315450))))

(assert (=> b!545780 (= res!339849 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16889 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16889 a!3154)) (= (select (arr!16525 a!3154) resIndex!32) (select (arr!16525 a!3154) j!147))))))

(declare-fun b!545781 () Bool)

(declare-fun res!339853 () Bool)

(assert (=> b!545781 (=> (not res!339853) (not e!315450))))

(declare-datatypes ((List!10697 0))(
  ( (Nil!10694) (Cons!10693 (h!11657 (_ BitVec 64)) (t!16933 List!10697)) )
))
(declare-fun arrayNoDuplicates!0 (array!34401 (_ BitVec 32) List!10697) Bool)

(assert (=> b!545781 (= res!339853 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10694))))

(declare-fun b!545782 () Bool)

(declare-fun res!339848 () Bool)

(assert (=> b!545782 (=> (not res!339848) (not e!315452))))

(assert (=> b!545782 (= res!339848 (validKeyInArray!0 (select (arr!16525 a!3154) j!147)))))

(declare-fun b!545783 () Bool)

(assert (=> b!545783 (= e!315448 (not true))))

(assert (=> b!545783 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249063 (select (store (arr!16525 a!3154) i!1153 k0!1998) j!147) (array!34402 (store (arr!16525 a!3154) i!1153 k0!1998) (size!16889 a!3154)) mask!3216) lt!249065)))

(declare-datatypes ((Unit!16912 0))(
  ( (Unit!16913) )
))
(declare-fun lt!249060 () Unit!16912)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34401 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16912)

(assert (=> b!545783 (= lt!249060 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k0!1998 j!147 lt!249063 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(assert (= (and start!49632 res!339854) b!545776))

(assert (= (and b!545776 res!339859) b!545782))

(assert (= (and b!545782 res!339848) b!545777))

(assert (= (and b!545777 res!339858) b!545779))

(assert (= (and b!545779 res!339855) b!545774))

(assert (= (and b!545774 res!339856) b!545778))

(assert (= (and b!545778 res!339857) b!545781))

(assert (= (and b!545781 res!339853) b!545780))

(assert (= (and b!545780 res!339849) b!545775))

(assert (= (and b!545775 res!339850) b!545773))

(assert (= (and b!545773 res!339851) b!545772))

(assert (= (and b!545772 res!339852) b!545771))

(assert (= (and b!545771 res!339860) b!545783))

(declare-fun m!523355 () Bool)

(assert (=> b!545771 m!523355))

(assert (=> b!545771 m!523355))

(declare-fun m!523357 () Bool)

(assert (=> b!545771 m!523357))

(declare-fun m!523359 () Bool)

(assert (=> b!545783 m!523359))

(declare-fun m!523361 () Bool)

(assert (=> b!545783 m!523361))

(assert (=> b!545783 m!523361))

(declare-fun m!523363 () Bool)

(assert (=> b!545783 m!523363))

(declare-fun m!523365 () Bool)

(assert (=> b!545783 m!523365))

(declare-fun m!523367 () Bool)

(assert (=> b!545772 m!523367))

(declare-fun m!523369 () Bool)

(assert (=> b!545780 m!523369))

(assert (=> b!545780 m!523355))

(declare-fun m!523371 () Bool)

(assert (=> b!545781 m!523371))

(declare-fun m!523373 () Bool)

(assert (=> b!545778 m!523373))

(declare-fun m!523375 () Bool)

(assert (=> b!545774 m!523375))

(assert (=> b!545782 m!523355))

(assert (=> b!545782 m!523355))

(declare-fun m!523377 () Bool)

(assert (=> b!545782 m!523377))

(assert (=> b!545775 m!523355))

(assert (=> b!545775 m!523355))

(declare-fun m!523379 () Bool)

(assert (=> b!545775 m!523379))

(declare-fun m!523381 () Bool)

(assert (=> b!545779 m!523381))

(declare-fun m!523383 () Bool)

(assert (=> b!545773 m!523383))

(assert (=> b!545773 m!523355))

(assert (=> b!545773 m!523355))

(declare-fun m!523385 () Bool)

(assert (=> b!545773 m!523385))

(assert (=> b!545773 m!523385))

(assert (=> b!545773 m!523355))

(declare-fun m!523387 () Bool)

(assert (=> b!545773 m!523387))

(declare-fun m!523389 () Bool)

(assert (=> b!545777 m!523389))

(declare-fun m!523391 () Bool)

(assert (=> start!49632 m!523391))

(declare-fun m!523393 () Bool)

(assert (=> start!49632 m!523393))

(check-sat (not b!545777) (not b!545771) (not b!545774) (not b!545778) (not b!545779) (not b!545772) (not start!49632) (not b!545775) (not b!545782) (not b!545781) (not b!545783) (not b!545773))
(check-sat)
