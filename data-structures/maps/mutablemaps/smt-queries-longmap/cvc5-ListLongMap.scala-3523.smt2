; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48724 () Bool)

(assert start!48724)

(declare-fun b!535166 () Bool)

(declare-fun e!310904 () Bool)

(declare-fun e!310905 () Bool)

(assert (=> b!535166 (= e!310904 e!310905)))

(declare-fun res!330523 () Bool)

(assert (=> b!535166 (=> (not res!330523) (not e!310905))))

(declare-datatypes ((SeekEntryResult!4746 0))(
  ( (MissingZero!4746 (index!21208 (_ BitVec 32))) (Found!4746 (index!21209 (_ BitVec 32))) (Intermediate!4746 (undefined!5558 Bool) (index!21210 (_ BitVec 32)) (x!50188 (_ BitVec 32))) (Undefined!4746) (MissingVacant!4746 (index!21211 (_ BitVec 32))) )
))
(declare-fun lt!245771 () SeekEntryResult!4746)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535166 (= res!330523 (or (= lt!245771 (MissingZero!4746 i!1153)) (= lt!245771 (MissingVacant!4746 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33892 0))(
  ( (array!33893 (arr!16281 (Array (_ BitVec 32) (_ BitVec 64))) (size!16645 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33892)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33892 (_ BitVec 32)) SeekEntryResult!4746)

(assert (=> b!535166 (= lt!245771 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535167 () Bool)

(declare-fun res!330522 () Bool)

(assert (=> b!535167 (=> (not res!330522) (not e!310905))))

(declare-datatypes ((List!10453 0))(
  ( (Nil!10450) (Cons!10449 (h!11392 (_ BitVec 64)) (t!16689 List!10453)) )
))
(declare-fun arrayNoDuplicates!0 (array!33892 (_ BitVec 32) List!10453) Bool)

(assert (=> b!535167 (= res!330522 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10450))))

(declare-fun b!535168 () Bool)

(declare-fun res!330524 () Bool)

(assert (=> b!535168 (=> (not res!330524) (not e!310904))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535168 (= res!330524 (validKeyInArray!0 (select (arr!16281 a!3154) j!147)))))

(declare-fun b!535169 () Bool)

(declare-fun res!330529 () Bool)

(assert (=> b!535169 (=> (not res!330529) (not e!310905))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33892 (_ BitVec 32)) SeekEntryResult!4746)

(assert (=> b!535169 (= res!330529 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16281 a!3154) j!147) a!3154 mask!3216) (Intermediate!4746 false resIndex!32 resX!32)))))

(declare-fun b!535170 () Bool)

(declare-fun res!330528 () Bool)

(assert (=> b!535170 (=> (not res!330528) (not e!310904))))

(assert (=> b!535170 (= res!330528 (and (= (size!16645 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16645 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16645 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535171 () Bool)

(declare-fun res!330526 () Bool)

(assert (=> b!535171 (=> (not res!330526) (not e!310905))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33892 (_ BitVec 32)) Bool)

(assert (=> b!535171 (= res!330526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!330521 () Bool)

(assert (=> start!48724 (=> (not res!330521) (not e!310904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48724 (= res!330521 (validMask!0 mask!3216))))

(assert (=> start!48724 e!310904))

(assert (=> start!48724 true))

(declare-fun array_inv!12055 (array!33892) Bool)

(assert (=> start!48724 (array_inv!12055 a!3154)))

(declare-fun b!535172 () Bool)

(declare-fun res!330525 () Bool)

(assert (=> b!535172 (=> (not res!330525) (not e!310904))))

(declare-fun arrayContainsKey!0 (array!33892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535172 (= res!330525 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535173 () Bool)

(declare-fun res!330530 () Bool)

(assert (=> b!535173 (=> (not res!330530) (not e!310905))))

(assert (=> b!535173 (= res!330530 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16645 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16645 a!3154)) (= (select (arr!16281 a!3154) resIndex!32) (select (arr!16281 a!3154) j!147))))))

(declare-fun b!535174 () Bool)

(assert (=> b!535174 (= e!310905 false)))

(declare-fun lt!245770 () SeekEntryResult!4746)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535174 (= lt!245770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16281 a!3154) j!147) mask!3216) (select (arr!16281 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535175 () Bool)

(declare-fun res!330527 () Bool)

(assert (=> b!535175 (=> (not res!330527) (not e!310904))))

(assert (=> b!535175 (= res!330527 (validKeyInArray!0 k!1998))))

(assert (= (and start!48724 res!330521) b!535170))

(assert (= (and b!535170 res!330528) b!535168))

(assert (= (and b!535168 res!330524) b!535175))

(assert (= (and b!535175 res!330527) b!535172))

(assert (= (and b!535172 res!330525) b!535166))

(assert (= (and b!535166 res!330523) b!535171))

(assert (= (and b!535171 res!330526) b!535167))

(assert (= (and b!535167 res!330522) b!535173))

(assert (= (and b!535173 res!330530) b!535169))

(assert (= (and b!535169 res!330529) b!535174))

(declare-fun m!514801 () Bool)

(assert (=> b!535169 m!514801))

(assert (=> b!535169 m!514801))

(declare-fun m!514803 () Bool)

(assert (=> b!535169 m!514803))

(declare-fun m!514805 () Bool)

(assert (=> b!535171 m!514805))

(assert (=> b!535174 m!514801))

(assert (=> b!535174 m!514801))

(declare-fun m!514807 () Bool)

(assert (=> b!535174 m!514807))

(assert (=> b!535174 m!514807))

(assert (=> b!535174 m!514801))

(declare-fun m!514809 () Bool)

(assert (=> b!535174 m!514809))

(declare-fun m!514811 () Bool)

(assert (=> b!535173 m!514811))

(assert (=> b!535173 m!514801))

(declare-fun m!514813 () Bool)

(assert (=> start!48724 m!514813))

(declare-fun m!514815 () Bool)

(assert (=> start!48724 m!514815))

(declare-fun m!514817 () Bool)

(assert (=> b!535175 m!514817))

(assert (=> b!535168 m!514801))

(assert (=> b!535168 m!514801))

(declare-fun m!514819 () Bool)

(assert (=> b!535168 m!514819))

(declare-fun m!514821 () Bool)

(assert (=> b!535166 m!514821))

(declare-fun m!514823 () Bool)

(assert (=> b!535172 m!514823))

(declare-fun m!514825 () Bool)

(assert (=> b!535167 m!514825))

(push 1)

