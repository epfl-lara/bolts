; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48668 () Bool)

(assert start!48668)

(declare-fun b!534281 () Bool)

(declare-fun res!329638 () Bool)

(declare-fun e!310617 () Bool)

(assert (=> b!534281 (=> (not res!329638) (not e!310617))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33836 0))(
  ( (array!33837 (arr!16253 (Array (_ BitVec 32) (_ BitVec 64))) (size!16617 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33836)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4718 0))(
  ( (MissingZero!4718 (index!21096 (_ BitVec 32))) (Found!4718 (index!21097 (_ BitVec 32))) (Intermediate!4718 (undefined!5530 Bool) (index!21098 (_ BitVec 32)) (x!50080 (_ BitVec 32))) (Undefined!4718) (MissingVacant!4718 (index!21099 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33836 (_ BitVec 32)) SeekEntryResult!4718)

(assert (=> b!534281 (= res!329638 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16253 a!3154) j!147) a!3154 mask!3216) (Intermediate!4718 false resIndex!32 resX!32)))))

(declare-fun b!534282 () Bool)

(declare-fun res!329640 () Bool)

(assert (=> b!534282 (=> (not res!329640) (not e!310617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33836 (_ BitVec 32)) Bool)

(assert (=> b!534282 (= res!329640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534283 () Bool)

(declare-fun res!329636 () Bool)

(declare-fun e!310616 () Bool)

(assert (=> b!534283 (=> (not res!329636) (not e!310616))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534283 (= res!329636 (validKeyInArray!0 k!1998))))

(declare-fun b!534284 () Bool)

(declare-fun res!329644 () Bool)

(assert (=> b!534284 (=> (not res!329644) (not e!310617))))

(declare-datatypes ((List!10425 0))(
  ( (Nil!10422) (Cons!10421 (h!11364 (_ BitVec 64)) (t!16661 List!10425)) )
))
(declare-fun arrayNoDuplicates!0 (array!33836 (_ BitVec 32) List!10425) Bool)

(assert (=> b!534284 (= res!329644 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10422))))

(declare-fun b!534285 () Bool)

(declare-fun res!329637 () Bool)

(assert (=> b!534285 (=> (not res!329637) (not e!310616))))

(declare-fun arrayContainsKey!0 (array!33836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534285 (= res!329637 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!329643 () Bool)

(assert (=> start!48668 (=> (not res!329643) (not e!310616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48668 (= res!329643 (validMask!0 mask!3216))))

(assert (=> start!48668 e!310616))

(assert (=> start!48668 true))

(declare-fun array_inv!12027 (array!33836) Bool)

(assert (=> start!48668 (array_inv!12027 a!3154)))

(declare-fun b!534286 () Bool)

(declare-fun res!329645 () Bool)

(assert (=> b!534286 (=> (not res!329645) (not e!310616))))

(assert (=> b!534286 (= res!329645 (validKeyInArray!0 (select (arr!16253 a!3154) j!147)))))

(declare-fun b!534287 () Bool)

(declare-fun res!329639 () Bool)

(assert (=> b!534287 (=> (not res!329639) (not e!310617))))

(assert (=> b!534287 (= res!329639 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16617 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16617 a!3154)) (= (select (arr!16253 a!3154) resIndex!32) (select (arr!16253 a!3154) j!147))))))

(declare-fun b!534288 () Bool)

(declare-fun res!329641 () Bool)

(assert (=> b!534288 (=> (not res!329641) (not e!310616))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534288 (= res!329641 (and (= (size!16617 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16617 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16617 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534289 () Bool)

(assert (=> b!534289 (= e!310617 false)))

(declare-fun lt!245602 () SeekEntryResult!4718)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534289 (= lt!245602 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16253 a!3154) j!147) mask!3216) (select (arr!16253 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534290 () Bool)

(assert (=> b!534290 (= e!310616 e!310617)))

(declare-fun res!329642 () Bool)

(assert (=> b!534290 (=> (not res!329642) (not e!310617))))

(declare-fun lt!245603 () SeekEntryResult!4718)

(assert (=> b!534290 (= res!329642 (or (= lt!245603 (MissingZero!4718 i!1153)) (= lt!245603 (MissingVacant!4718 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33836 (_ BitVec 32)) SeekEntryResult!4718)

(assert (=> b!534290 (= lt!245603 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48668 res!329643) b!534288))

(assert (= (and b!534288 res!329641) b!534286))

(assert (= (and b!534286 res!329645) b!534283))

(assert (= (and b!534283 res!329636) b!534285))

(assert (= (and b!534285 res!329637) b!534290))

(assert (= (and b!534290 res!329642) b!534282))

(assert (= (and b!534282 res!329640) b!534284))

(assert (= (and b!534284 res!329644) b!534287))

(assert (= (and b!534287 res!329639) b!534281))

(assert (= (and b!534281 res!329638) b!534289))

(declare-fun m!514031 () Bool)

(assert (=> b!534285 m!514031))

(declare-fun m!514033 () Bool)

(assert (=> b!534284 m!514033))

(declare-fun m!514035 () Bool)

(assert (=> b!534281 m!514035))

(assert (=> b!534281 m!514035))

(declare-fun m!514037 () Bool)

(assert (=> b!534281 m!514037))

(declare-fun m!514039 () Bool)

(assert (=> b!534283 m!514039))

(declare-fun m!514041 () Bool)

(assert (=> b!534290 m!514041))

(assert (=> b!534286 m!514035))

(assert (=> b!534286 m!514035))

(declare-fun m!514043 () Bool)

(assert (=> b!534286 m!514043))

(assert (=> b!534289 m!514035))

(assert (=> b!534289 m!514035))

(declare-fun m!514045 () Bool)

(assert (=> b!534289 m!514045))

(assert (=> b!534289 m!514045))

(assert (=> b!534289 m!514035))

(declare-fun m!514047 () Bool)

(assert (=> b!534289 m!514047))

(declare-fun m!514049 () Bool)

(assert (=> b!534282 m!514049))

(declare-fun m!514051 () Bool)

(assert (=> start!48668 m!514051))

(declare-fun m!514053 () Bool)

(assert (=> start!48668 m!514053))

(declare-fun m!514055 () Bool)

(assert (=> b!534287 m!514055))

(assert (=> b!534287 m!514035))

(push 1)

(assert (not b!534283))

(assert (not b!534285))

(assert (not b!534284))

(assert (not b!534289))

(assert (not b!534282))

(assert (not b!534290))

(assert (not start!48668))

