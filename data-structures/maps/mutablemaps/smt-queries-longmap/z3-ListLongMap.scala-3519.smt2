; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48702 () Bool)

(assert start!48702)

(declare-fun b!534800 () Bool)

(declare-fun res!330157 () Bool)

(declare-fun e!310778 () Bool)

(assert (=> b!534800 (=> (not res!330157) (not e!310778))))

(declare-datatypes ((array!33870 0))(
  ( (array!33871 (arr!16270 (Array (_ BitVec 32) (_ BitVec 64))) (size!16634 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33870)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534800 (= res!330157 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534801 () Bool)

(declare-fun res!330159 () Bool)

(declare-fun e!310779 () Bool)

(assert (=> b!534801 (=> (not res!330159) (not e!310779))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4735 0))(
  ( (MissingZero!4735 (index!21164 (_ BitVec 32))) (Found!4735 (index!21165 (_ BitVec 32))) (Intermediate!4735 (undefined!5547 Bool) (index!21166 (_ BitVec 32)) (x!50145 (_ BitVec 32))) (Undefined!4735) (MissingVacant!4735 (index!21167 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33870 (_ BitVec 32)) SeekEntryResult!4735)

(assert (=> b!534801 (= res!330159 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16270 a!3154) j!147) a!3154 mask!3216) (Intermediate!4735 false resIndex!32 resX!32)))))

(declare-fun b!534802 () Bool)

(declare-fun res!330163 () Bool)

(assert (=> b!534802 (=> (not res!330163) (not e!310779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33870 (_ BitVec 32)) Bool)

(assert (=> b!534802 (= res!330163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534803 () Bool)

(declare-fun res!330162 () Bool)

(assert (=> b!534803 (=> (not res!330162) (not e!310778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534803 (= res!330162 (validKeyInArray!0 k0!1998))))

(declare-fun b!534804 () Bool)

(declare-fun res!330164 () Bool)

(assert (=> b!534804 (=> (not res!330164) (not e!310779))))

(assert (=> b!534804 (= res!330164 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16634 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16634 a!3154)) (= (select (arr!16270 a!3154) resIndex!32) (select (arr!16270 a!3154) j!147))))))

(declare-fun b!534805 () Bool)

(declare-fun res!330156 () Bool)

(assert (=> b!534805 (=> (not res!330156) (not e!310779))))

(declare-datatypes ((List!10442 0))(
  ( (Nil!10439) (Cons!10438 (h!11381 (_ BitVec 64)) (t!16678 List!10442)) )
))
(declare-fun arrayNoDuplicates!0 (array!33870 (_ BitVec 32) List!10442) Bool)

(assert (=> b!534805 (= res!330156 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10439))))

(declare-fun b!534806 () Bool)

(declare-fun res!330158 () Bool)

(assert (=> b!534806 (=> (not res!330158) (not e!310778))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534806 (= res!330158 (and (= (size!16634 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16634 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16634 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534807 () Bool)

(assert (=> b!534807 (= e!310779 false)))

(declare-fun lt!245704 () SeekEntryResult!4735)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534807 (= lt!245704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16270 a!3154) j!147) mask!3216) (select (arr!16270 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534808 () Bool)

(assert (=> b!534808 (= e!310778 e!310779)))

(declare-fun res!330160 () Bool)

(assert (=> b!534808 (=> (not res!330160) (not e!310779))))

(declare-fun lt!245705 () SeekEntryResult!4735)

(assert (=> b!534808 (= res!330160 (or (= lt!245705 (MissingZero!4735 i!1153)) (= lt!245705 (MissingVacant!4735 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33870 (_ BitVec 32)) SeekEntryResult!4735)

(assert (=> b!534808 (= lt!245705 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!534809 () Bool)

(declare-fun res!330161 () Bool)

(assert (=> b!534809 (=> (not res!330161) (not e!310778))))

(assert (=> b!534809 (= res!330161 (validKeyInArray!0 (select (arr!16270 a!3154) j!147)))))

(declare-fun res!330155 () Bool)

(assert (=> start!48702 (=> (not res!330155) (not e!310778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48702 (= res!330155 (validMask!0 mask!3216))))

(assert (=> start!48702 e!310778))

(assert (=> start!48702 true))

(declare-fun array_inv!12044 (array!33870) Bool)

(assert (=> start!48702 (array_inv!12044 a!3154)))

(assert (= (and start!48702 res!330155) b!534806))

(assert (= (and b!534806 res!330158) b!534809))

(assert (= (and b!534809 res!330161) b!534803))

(assert (= (and b!534803 res!330162) b!534800))

(assert (= (and b!534800 res!330157) b!534808))

(assert (= (and b!534808 res!330160) b!534802))

(assert (= (and b!534802 res!330163) b!534805))

(assert (= (and b!534805 res!330156) b!534804))

(assert (= (and b!534804 res!330164) b!534801))

(assert (= (and b!534801 res!330159) b!534807))

(declare-fun m!514479 () Bool)

(assert (=> b!534808 m!514479))

(declare-fun m!514481 () Bool)

(assert (=> b!534807 m!514481))

(assert (=> b!534807 m!514481))

(declare-fun m!514483 () Bool)

(assert (=> b!534807 m!514483))

(assert (=> b!534807 m!514483))

(assert (=> b!534807 m!514481))

(declare-fun m!514485 () Bool)

(assert (=> b!534807 m!514485))

(assert (=> b!534801 m!514481))

(assert (=> b!534801 m!514481))

(declare-fun m!514487 () Bool)

(assert (=> b!534801 m!514487))

(declare-fun m!514489 () Bool)

(assert (=> b!534803 m!514489))

(declare-fun m!514491 () Bool)

(assert (=> b!534802 m!514491))

(declare-fun m!514493 () Bool)

(assert (=> b!534800 m!514493))

(declare-fun m!514495 () Bool)

(assert (=> b!534805 m!514495))

(declare-fun m!514497 () Bool)

(assert (=> start!48702 m!514497))

(declare-fun m!514499 () Bool)

(assert (=> start!48702 m!514499))

(declare-fun m!514501 () Bool)

(assert (=> b!534804 m!514501))

(assert (=> b!534804 m!514481))

(assert (=> b!534809 m!514481))

(assert (=> b!534809 m!514481))

(declare-fun m!514503 () Bool)

(assert (=> b!534809 m!514503))

(check-sat (not b!534807) (not b!534801) (not b!534800) (not b!534808) (not b!534805) (not start!48702) (not b!534802) (not b!534809) (not b!534803))
(check-sat)
