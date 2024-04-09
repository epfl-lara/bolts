; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48640 () Bool)

(assert start!48640)

(declare-fun b!533861 () Bool)

(declare-fun e!310490 () Bool)

(assert (=> b!533861 (= e!310490 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4704 0))(
  ( (MissingZero!4704 (index!21040 (_ BitVec 32))) (Found!4704 (index!21041 (_ BitVec 32))) (Intermediate!4704 (undefined!5516 Bool) (index!21042 (_ BitVec 32)) (x!50034 (_ BitVec 32))) (Undefined!4704) (MissingVacant!4704 (index!21043 (_ BitVec 32))) )
))
(declare-fun lt!245519 () SeekEntryResult!4704)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33808 0))(
  ( (array!33809 (arr!16239 (Array (_ BitVec 32) (_ BitVec 64))) (size!16603 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33808)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33808 (_ BitVec 32)) SeekEntryResult!4704)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533861 (= lt!245519 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16239 a!3154) j!147) mask!3216) (select (arr!16239 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533862 () Bool)

(declare-fun res!329225 () Bool)

(assert (=> b!533862 (=> (not res!329225) (not e!310490))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533862 (= res!329225 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16239 a!3154) j!147) a!3154 mask!3216) (Intermediate!4704 false resIndex!32 resX!32)))))

(declare-fun b!533863 () Bool)

(declare-fun res!329221 () Bool)

(assert (=> b!533863 (=> (not res!329221) (not e!310490))))

(declare-datatypes ((List!10411 0))(
  ( (Nil!10408) (Cons!10407 (h!11350 (_ BitVec 64)) (t!16647 List!10411)) )
))
(declare-fun arrayNoDuplicates!0 (array!33808 (_ BitVec 32) List!10411) Bool)

(assert (=> b!533863 (= res!329221 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10408))))

(declare-fun b!533864 () Bool)

(declare-fun res!329216 () Bool)

(declare-fun e!310491 () Bool)

(assert (=> b!533864 (=> (not res!329216) (not e!310491))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533864 (= res!329216 (and (= (size!16603 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16603 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16603 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533865 () Bool)

(declare-fun res!329217 () Bool)

(assert (=> b!533865 (=> (not res!329217) (not e!310490))))

(assert (=> b!533865 (= res!329217 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16603 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16603 a!3154)) (= (select (arr!16239 a!3154) resIndex!32) (select (arr!16239 a!3154) j!147))))))

(declare-fun b!533866 () Bool)

(declare-fun res!329224 () Bool)

(assert (=> b!533866 (=> (not res!329224) (not e!310490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33808 (_ BitVec 32)) Bool)

(assert (=> b!533866 (= res!329224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!329218 () Bool)

(assert (=> start!48640 (=> (not res!329218) (not e!310491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48640 (= res!329218 (validMask!0 mask!3216))))

(assert (=> start!48640 e!310491))

(assert (=> start!48640 true))

(declare-fun array_inv!12013 (array!33808) Bool)

(assert (=> start!48640 (array_inv!12013 a!3154)))

(declare-fun b!533867 () Bool)

(declare-fun res!329222 () Bool)

(assert (=> b!533867 (=> (not res!329222) (not e!310491))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533867 (= res!329222 (validKeyInArray!0 k!1998))))

(declare-fun b!533868 () Bool)

(assert (=> b!533868 (= e!310491 e!310490)))

(declare-fun res!329223 () Bool)

(assert (=> b!533868 (=> (not res!329223) (not e!310490))))

(declare-fun lt!245518 () SeekEntryResult!4704)

(assert (=> b!533868 (= res!329223 (or (= lt!245518 (MissingZero!4704 i!1153)) (= lt!245518 (MissingVacant!4704 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33808 (_ BitVec 32)) SeekEntryResult!4704)

(assert (=> b!533868 (= lt!245518 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533869 () Bool)

(declare-fun res!329220 () Bool)

(assert (=> b!533869 (=> (not res!329220) (not e!310491))))

(assert (=> b!533869 (= res!329220 (validKeyInArray!0 (select (arr!16239 a!3154) j!147)))))

(declare-fun b!533870 () Bool)

(declare-fun res!329219 () Bool)

(assert (=> b!533870 (=> (not res!329219) (not e!310491))))

(declare-fun arrayContainsKey!0 (array!33808 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533870 (= res!329219 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48640 res!329218) b!533864))

(assert (= (and b!533864 res!329216) b!533869))

(assert (= (and b!533869 res!329220) b!533867))

(assert (= (and b!533867 res!329222) b!533870))

(assert (= (and b!533870 res!329219) b!533868))

(assert (= (and b!533868 res!329223) b!533866))

(assert (= (and b!533866 res!329224) b!533863))

(assert (= (and b!533863 res!329221) b!533865))

(assert (= (and b!533865 res!329217) b!533862))

(assert (= (and b!533862 res!329225) b!533861))

(declare-fun m!513667 () Bool)

(assert (=> b!533862 m!513667))

(assert (=> b!533862 m!513667))

(declare-fun m!513669 () Bool)

(assert (=> b!533862 m!513669))

(declare-fun m!513671 () Bool)

(assert (=> b!533866 m!513671))

(declare-fun m!513673 () Bool)

(assert (=> b!533867 m!513673))

(declare-fun m!513675 () Bool)

(assert (=> b!533863 m!513675))

(assert (=> b!533861 m!513667))

(assert (=> b!533861 m!513667))

(declare-fun m!513677 () Bool)

(assert (=> b!533861 m!513677))

(assert (=> b!533861 m!513677))

(assert (=> b!533861 m!513667))

(declare-fun m!513679 () Bool)

(assert (=> b!533861 m!513679))

(declare-fun m!513681 () Bool)

(assert (=> b!533865 m!513681))

(assert (=> b!533865 m!513667))

(declare-fun m!513683 () Bool)

(assert (=> b!533868 m!513683))

(assert (=> b!533869 m!513667))

(assert (=> b!533869 m!513667))

(declare-fun m!513685 () Bool)

(assert (=> b!533869 m!513685))

(declare-fun m!513687 () Bool)

(assert (=> b!533870 m!513687))

(declare-fun m!513689 () Bool)

(assert (=> start!48640 m!513689))

(declare-fun m!513691 () Bool)

(assert (=> start!48640 m!513691))

(push 1)

(assert (not b!533863))

(assert (not b!533862))

(assert (not b!533867))

(assert (not b!533870))

(assert (not b!533869))

(assert (not b!533861))

(assert (not b!533866))

(assert (not start!48640))

(assert (not b!533868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

