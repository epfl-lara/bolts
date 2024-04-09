; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48706 () Bool)

(assert start!48706)

(declare-fun b!534862 () Bool)

(declare-fun res!330217 () Bool)

(declare-fun e!310799 () Bool)

(assert (=> b!534862 (=> (not res!330217) (not e!310799))))

(declare-datatypes ((array!33874 0))(
  ( (array!33875 (arr!16272 (Array (_ BitVec 32) (_ BitVec 64))) (size!16636 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33874)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534862 (= res!330217 (validKeyInArray!0 (select (arr!16272 a!3154) j!147)))))

(declare-fun b!534863 () Bool)

(declare-fun res!330222 () Bool)

(declare-fun e!310800 () Bool)

(assert (=> b!534863 (=> (not res!330222) (not e!310800))))

(declare-datatypes ((List!10444 0))(
  ( (Nil!10441) (Cons!10440 (h!11383 (_ BitVec 64)) (t!16680 List!10444)) )
))
(declare-fun arrayNoDuplicates!0 (array!33874 (_ BitVec 32) List!10444) Bool)

(assert (=> b!534863 (= res!330222 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10441))))

(declare-fun b!534864 () Bool)

(declare-fun res!330220 () Bool)

(assert (=> b!534864 (=> (not res!330220) (not e!310799))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534864 (= res!330220 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534865 () Bool)

(declare-fun res!330226 () Bool)

(assert (=> b!534865 (=> (not res!330226) (not e!310800))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534865 (= res!330226 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16636 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16636 a!3154)) (= (select (arr!16272 a!3154) resIndex!32) (select (arr!16272 a!3154) j!147))))))

(declare-fun b!534866 () Bool)

(declare-fun res!330225 () Bool)

(assert (=> b!534866 (=> (not res!330225) (not e!310800))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33874 (_ BitVec 32)) Bool)

(assert (=> b!534866 (= res!330225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534867 () Bool)

(declare-fun res!330221 () Bool)

(assert (=> b!534867 (=> (not res!330221) (not e!310799))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534867 (= res!330221 (and (= (size!16636 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16636 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16636 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534868 () Bool)

(declare-fun res!330218 () Bool)

(assert (=> b!534868 (=> (not res!330218) (not e!310799))))

(assert (=> b!534868 (= res!330218 (validKeyInArray!0 k!1998))))

(declare-fun e!310801 () Bool)

(declare-fun b!534869 () Bool)

(assert (=> b!534869 (= e!310801 (and (not (= (select (arr!16272 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16272 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16272 a!3154) index!1177) (select (arr!16272 a!3154) j!147)) (= index!1177 resIndex!32) (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(declare-fun res!330224 () Bool)

(assert (=> start!48706 (=> (not res!330224) (not e!310799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48706 (= res!330224 (validMask!0 mask!3216))))

(assert (=> start!48706 e!310799))

(assert (=> start!48706 true))

(declare-fun array_inv!12046 (array!33874) Bool)

(assert (=> start!48706 (array_inv!12046 a!3154)))

(declare-fun b!534870 () Bool)

(assert (=> b!534870 (= e!310799 e!310800)))

(declare-fun res!330219 () Bool)

(assert (=> b!534870 (=> (not res!330219) (not e!310800))))

(declare-datatypes ((SeekEntryResult!4737 0))(
  ( (MissingZero!4737 (index!21172 (_ BitVec 32))) (Found!4737 (index!21173 (_ BitVec 32))) (Intermediate!4737 (undefined!5549 Bool) (index!21174 (_ BitVec 32)) (x!50155 (_ BitVec 32))) (Undefined!4737) (MissingVacant!4737 (index!21175 (_ BitVec 32))) )
))
(declare-fun lt!245716 () SeekEntryResult!4737)

(assert (=> b!534870 (= res!330219 (or (= lt!245716 (MissingZero!4737 i!1153)) (= lt!245716 (MissingVacant!4737 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33874 (_ BitVec 32)) SeekEntryResult!4737)

(assert (=> b!534870 (= lt!245716 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534871 () Bool)

(assert (=> b!534871 (= e!310800 e!310801)))

(declare-fun res!330227 () Bool)

(assert (=> b!534871 (=> (not res!330227) (not e!310801))))

(declare-fun lt!245717 () SeekEntryResult!4737)

(assert (=> b!534871 (= res!330227 (= lt!245717 (Intermediate!4737 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33874 (_ BitVec 32)) SeekEntryResult!4737)

(assert (=> b!534871 (= lt!245717 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16272 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534872 () Bool)

(declare-fun res!330223 () Bool)

(assert (=> b!534872 (=> (not res!330223) (not e!310801))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534872 (= res!330223 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16272 a!3154) j!147) mask!3216) (select (arr!16272 a!3154) j!147) a!3154 mask!3216) lt!245717))))

(assert (= (and start!48706 res!330224) b!534867))

(assert (= (and b!534867 res!330221) b!534862))

(assert (= (and b!534862 res!330217) b!534868))

(assert (= (and b!534868 res!330218) b!534864))

(assert (= (and b!534864 res!330220) b!534870))

(assert (= (and b!534870 res!330219) b!534866))

(assert (= (and b!534866 res!330225) b!534863))

(assert (= (and b!534863 res!330222) b!534865))

(assert (= (and b!534865 res!330226) b!534871))

(assert (= (and b!534871 res!330227) b!534872))

(assert (= (and b!534872 res!330223) b!534869))

(declare-fun m!514531 () Bool)

(assert (=> b!534863 m!514531))

(declare-fun m!514533 () Bool)

(assert (=> b!534871 m!514533))

(assert (=> b!534871 m!514533))

(declare-fun m!514535 () Bool)

(assert (=> b!534871 m!514535))

(declare-fun m!514537 () Bool)

(assert (=> b!534868 m!514537))

(declare-fun m!514539 () Bool)

(assert (=> b!534869 m!514539))

(assert (=> b!534869 m!514533))

(declare-fun m!514541 () Bool)

(assert (=> start!48706 m!514541))

(declare-fun m!514543 () Bool)

(assert (=> start!48706 m!514543))

(declare-fun m!514545 () Bool)

(assert (=> b!534870 m!514545))

(assert (=> b!534872 m!514533))

(assert (=> b!534872 m!514533))

(declare-fun m!514547 () Bool)

(assert (=> b!534872 m!514547))

(assert (=> b!534872 m!514547))

(assert (=> b!534872 m!514533))

(declare-fun m!514549 () Bool)

(assert (=> b!534872 m!514549))

(declare-fun m!514551 () Bool)

(assert (=> b!534866 m!514551))

(declare-fun m!514553 () Bool)

(assert (=> b!534864 m!514553))

(declare-fun m!514555 () Bool)

(assert (=> b!534865 m!514555))

(assert (=> b!534865 m!514533))

(assert (=> b!534862 m!514533))

(assert (=> b!534862 m!514533))

(declare-fun m!514557 () Bool)

(assert (=> b!534862 m!514557))

(push 1)

(assert (not b!534871))

(assert (not b!534866))

(assert (not b!534868))

(assert (not b!534863))

(assert (not start!48706))

(assert (not b!534872))

(assert (not b!534864))

(assert (not b!534870))

(assert (not b!534862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

