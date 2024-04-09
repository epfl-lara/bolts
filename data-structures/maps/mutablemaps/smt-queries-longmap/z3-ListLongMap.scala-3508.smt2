; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48636 () Bool)

(assert start!48636)

(declare-fun b!533801 () Bool)

(declare-fun res!329163 () Bool)

(declare-fun e!310472 () Bool)

(assert (=> b!533801 (=> (not res!329163) (not e!310472))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533801 (= res!329163 (validKeyInArray!0 k0!1998))))

(declare-fun b!533802 () Bool)

(declare-fun res!329165 () Bool)

(assert (=> b!533802 (=> (not res!329165) (not e!310472))))

(declare-datatypes ((array!33804 0))(
  ( (array!33805 (arr!16237 (Array (_ BitVec 32) (_ BitVec 64))) (size!16601 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33804)

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!533802 (= res!329165 (validKeyInArray!0 (select (arr!16237 a!3154) j!147)))))

(declare-fun b!533803 () Bool)

(declare-fun e!310474 () Bool)

(assert (=> b!533803 (= e!310474 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4702 0))(
  ( (MissingZero!4702 (index!21032 (_ BitVec 32))) (Found!4702 (index!21033 (_ BitVec 32))) (Intermediate!4702 (undefined!5514 Bool) (index!21034 (_ BitVec 32)) (x!50024 (_ BitVec 32))) (Undefined!4702) (MissingVacant!4702 (index!21035 (_ BitVec 32))) )
))
(declare-fun lt!245506 () SeekEntryResult!4702)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33804 (_ BitVec 32)) SeekEntryResult!4702)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533803 (= lt!245506 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16237 a!3154) j!147) mask!3216) (select (arr!16237 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533804 () Bool)

(declare-fun res!329164 () Bool)

(assert (=> b!533804 (=> (not res!329164) (not e!310474))))

(declare-datatypes ((List!10409 0))(
  ( (Nil!10406) (Cons!10405 (h!11348 (_ BitVec 64)) (t!16645 List!10409)) )
))
(declare-fun arrayNoDuplicates!0 (array!33804 (_ BitVec 32) List!10409) Bool)

(assert (=> b!533804 (= res!329164 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10406))))

(declare-fun res!329159 () Bool)

(assert (=> start!48636 (=> (not res!329159) (not e!310472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48636 (= res!329159 (validMask!0 mask!3216))))

(assert (=> start!48636 e!310472))

(assert (=> start!48636 true))

(declare-fun array_inv!12011 (array!33804) Bool)

(assert (=> start!48636 (array_inv!12011 a!3154)))

(declare-fun b!533805 () Bool)

(declare-fun res!329161 () Bool)

(assert (=> b!533805 (=> (not res!329161) (not e!310474))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533805 (= res!329161 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16601 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16601 a!3154)) (= (select (arr!16237 a!3154) resIndex!32) (select (arr!16237 a!3154) j!147))))))

(declare-fun b!533806 () Bool)

(declare-fun res!329162 () Bool)

(assert (=> b!533806 (=> (not res!329162) (not e!310474))))

(assert (=> b!533806 (= res!329162 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16237 a!3154) j!147) a!3154 mask!3216) (Intermediate!4702 false resIndex!32 resX!32)))))

(declare-fun b!533807 () Bool)

(declare-fun res!329157 () Bool)

(assert (=> b!533807 (=> (not res!329157) (not e!310472))))

(declare-fun arrayContainsKey!0 (array!33804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533807 (= res!329157 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533808 () Bool)

(assert (=> b!533808 (= e!310472 e!310474)))

(declare-fun res!329160 () Bool)

(assert (=> b!533808 (=> (not res!329160) (not e!310474))))

(declare-fun lt!245507 () SeekEntryResult!4702)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533808 (= res!329160 (or (= lt!245507 (MissingZero!4702 i!1153)) (= lt!245507 (MissingVacant!4702 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33804 (_ BitVec 32)) SeekEntryResult!4702)

(assert (=> b!533808 (= lt!245507 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!533809 () Bool)

(declare-fun res!329156 () Bool)

(assert (=> b!533809 (=> (not res!329156) (not e!310472))))

(assert (=> b!533809 (= res!329156 (and (= (size!16601 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16601 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16601 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533810 () Bool)

(declare-fun res!329158 () Bool)

(assert (=> b!533810 (=> (not res!329158) (not e!310474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33804 (_ BitVec 32)) Bool)

(assert (=> b!533810 (= res!329158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48636 res!329159) b!533809))

(assert (= (and b!533809 res!329156) b!533802))

(assert (= (and b!533802 res!329165) b!533801))

(assert (= (and b!533801 res!329163) b!533807))

(assert (= (and b!533807 res!329157) b!533808))

(assert (= (and b!533808 res!329160) b!533810))

(assert (= (and b!533810 res!329158) b!533804))

(assert (= (and b!533804 res!329164) b!533805))

(assert (= (and b!533805 res!329161) b!533806))

(assert (= (and b!533806 res!329162) b!533803))

(declare-fun m!513615 () Bool)

(assert (=> b!533803 m!513615))

(assert (=> b!533803 m!513615))

(declare-fun m!513617 () Bool)

(assert (=> b!533803 m!513617))

(assert (=> b!533803 m!513617))

(assert (=> b!533803 m!513615))

(declare-fun m!513619 () Bool)

(assert (=> b!533803 m!513619))

(assert (=> b!533806 m!513615))

(assert (=> b!533806 m!513615))

(declare-fun m!513621 () Bool)

(assert (=> b!533806 m!513621))

(declare-fun m!513623 () Bool)

(assert (=> b!533807 m!513623))

(declare-fun m!513625 () Bool)

(assert (=> b!533804 m!513625))

(declare-fun m!513627 () Bool)

(assert (=> b!533801 m!513627))

(declare-fun m!513629 () Bool)

(assert (=> b!533808 m!513629))

(declare-fun m!513631 () Bool)

(assert (=> start!48636 m!513631))

(declare-fun m!513633 () Bool)

(assert (=> start!48636 m!513633))

(declare-fun m!513635 () Bool)

(assert (=> b!533805 m!513635))

(assert (=> b!533805 m!513615))

(declare-fun m!513637 () Bool)

(assert (=> b!533810 m!513637))

(assert (=> b!533802 m!513615))

(assert (=> b!533802 m!513615))

(declare-fun m!513639 () Bool)

(assert (=> b!533802 m!513639))

(check-sat (not start!48636) (not b!533810) (not b!533806) (not b!533802) (not b!533803) (not b!533804) (not b!533801) (not b!533807) (not b!533808))
