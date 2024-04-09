; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48942 () Bool)

(assert start!48942)

(declare-fun b!539106 () Bool)

(declare-fun res!334466 () Bool)

(declare-fun e!312516 () Bool)

(assert (=> b!539106 (=> (not res!334466) (not e!312516))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539106 (= res!334466 (validKeyInArray!0 k0!1998))))

(declare-fun b!539107 () Bool)

(declare-fun res!334467 () Bool)

(assert (=> b!539107 (=> (not res!334467) (not e!312516))))

(declare-datatypes ((array!34110 0))(
  ( (array!34111 (arr!16390 (Array (_ BitVec 32) (_ BitVec 64))) (size!16754 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34110)

(declare-fun arrayContainsKey!0 (array!34110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539107 (= res!334467 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539108 () Bool)

(declare-fun e!312515 () Bool)

(assert (=> b!539108 (= e!312515 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4855 0))(
  ( (MissingZero!4855 (index!21644 (_ BitVec 32))) (Found!4855 (index!21645 (_ BitVec 32))) (Intermediate!4855 (undefined!5667 Bool) (index!21646 (_ BitVec 32)) (x!50585 (_ BitVec 32))) (Undefined!4855) (MissingVacant!4855 (index!21647 (_ BitVec 32))) )
))
(declare-fun lt!247072 () SeekEntryResult!4855)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34110 (_ BitVec 32)) SeekEntryResult!4855)

(assert (=> b!539108 (= lt!247072 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16390 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539109 () Bool)

(declare-fun res!334464 () Bool)

(assert (=> b!539109 (=> (not res!334464) (not e!312516))))

(assert (=> b!539109 (= res!334464 (validKeyInArray!0 (select (arr!16390 a!3154) j!147)))))

(declare-fun b!539110 () Bool)

(assert (=> b!539110 (= e!312516 e!312515)))

(declare-fun res!334463 () Bool)

(assert (=> b!539110 (=> (not res!334463) (not e!312515))))

(declare-fun lt!247073 () SeekEntryResult!4855)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539110 (= res!334463 (or (= lt!247073 (MissingZero!4855 i!1153)) (= lt!247073 (MissingVacant!4855 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34110 (_ BitVec 32)) SeekEntryResult!4855)

(assert (=> b!539110 (= lt!247073 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!539111 () Bool)

(declare-fun res!334469 () Bool)

(assert (=> b!539111 (=> (not res!334469) (not e!312515))))

(declare-datatypes ((List!10562 0))(
  ( (Nil!10559) (Cons!10558 (h!11501 (_ BitVec 64)) (t!16798 List!10562)) )
))
(declare-fun arrayNoDuplicates!0 (array!34110 (_ BitVec 32) List!10562) Bool)

(assert (=> b!539111 (= res!334469 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10559))))

(declare-fun res!334462 () Bool)

(assert (=> start!48942 (=> (not res!334462) (not e!312516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48942 (= res!334462 (validMask!0 mask!3216))))

(assert (=> start!48942 e!312516))

(assert (=> start!48942 true))

(declare-fun array_inv!12164 (array!34110) Bool)

(assert (=> start!48942 (array_inv!12164 a!3154)))

(declare-fun b!539112 () Bool)

(declare-fun res!334465 () Bool)

(assert (=> b!539112 (=> (not res!334465) (not e!312515))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34110 (_ BitVec 32)) Bool)

(assert (=> b!539112 (= res!334465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539113 () Bool)

(declare-fun res!334468 () Bool)

(assert (=> b!539113 (=> (not res!334468) (not e!312516))))

(assert (=> b!539113 (= res!334468 (and (= (size!16754 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16754 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16754 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539114 () Bool)

(declare-fun res!334461 () Bool)

(assert (=> b!539114 (=> (not res!334461) (not e!312515))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539114 (= res!334461 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16754 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16754 a!3154)) (= (select (arr!16390 a!3154) resIndex!32) (select (arr!16390 a!3154) j!147))))))

(assert (= (and start!48942 res!334462) b!539113))

(assert (= (and b!539113 res!334468) b!539109))

(assert (= (and b!539109 res!334464) b!539106))

(assert (= (and b!539106 res!334466) b!539107))

(assert (= (and b!539107 res!334467) b!539110))

(assert (= (and b!539110 res!334463) b!539112))

(assert (= (and b!539112 res!334465) b!539111))

(assert (= (and b!539111 res!334469) b!539114))

(assert (= (and b!539114 res!334461) b!539108))

(declare-fun m!518195 () Bool)

(assert (=> b!539110 m!518195))

(declare-fun m!518197 () Bool)

(assert (=> b!539112 m!518197))

(declare-fun m!518199 () Bool)

(assert (=> b!539107 m!518199))

(declare-fun m!518201 () Bool)

(assert (=> b!539106 m!518201))

(declare-fun m!518203 () Bool)

(assert (=> b!539109 m!518203))

(assert (=> b!539109 m!518203))

(declare-fun m!518205 () Bool)

(assert (=> b!539109 m!518205))

(declare-fun m!518207 () Bool)

(assert (=> b!539111 m!518207))

(declare-fun m!518209 () Bool)

(assert (=> start!48942 m!518209))

(declare-fun m!518211 () Bool)

(assert (=> start!48942 m!518211))

(declare-fun m!518213 () Bool)

(assert (=> b!539114 m!518213))

(assert (=> b!539114 m!518203))

(assert (=> b!539108 m!518203))

(assert (=> b!539108 m!518203))

(declare-fun m!518215 () Bool)

(assert (=> b!539108 m!518215))

(check-sat (not b!539112) (not b!539108) (not b!539109) (not b!539111) (not start!48942) (not b!539106) (not b!539107) (not b!539110))
(check-sat)
