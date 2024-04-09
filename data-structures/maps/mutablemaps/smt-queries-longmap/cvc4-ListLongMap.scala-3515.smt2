; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48680 () Bool)

(assert start!48680)

(declare-fun b!534461 () Bool)

(declare-fun res!329821 () Bool)

(declare-fun e!310670 () Bool)

(assert (=> b!534461 (=> (not res!329821) (not e!310670))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33848 0))(
  ( (array!33849 (arr!16259 (Array (_ BitVec 32) (_ BitVec 64))) (size!16623 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33848)

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4724 0))(
  ( (MissingZero!4724 (index!21120 (_ BitVec 32))) (Found!4724 (index!21121 (_ BitVec 32))) (Intermediate!4724 (undefined!5536 Bool) (index!21122 (_ BitVec 32)) (x!50102 (_ BitVec 32))) (Undefined!4724) (MissingVacant!4724 (index!21123 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33848 (_ BitVec 32)) SeekEntryResult!4724)

(assert (=> b!534461 (= res!329821 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16259 a!3154) j!147) a!3154 mask!3216) (Intermediate!4724 false resIndex!32 resX!32)))))

(declare-fun b!534462 () Bool)

(declare-fun res!329818 () Bool)

(declare-fun e!310671 () Bool)

(assert (=> b!534462 (=> (not res!329818) (not e!310671))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534462 (= res!329818 (and (= (size!16623 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16623 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16623 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534463 () Bool)

(declare-fun res!329820 () Bool)

(assert (=> b!534463 (=> (not res!329820) (not e!310670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33848 (_ BitVec 32)) Bool)

(assert (=> b!534463 (= res!329820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534464 () Bool)

(declare-fun res!329817 () Bool)

(assert (=> b!534464 (=> (not res!329817) (not e!310670))))

(declare-datatypes ((List!10431 0))(
  ( (Nil!10428) (Cons!10427 (h!11370 (_ BitVec 64)) (t!16667 List!10431)) )
))
(declare-fun arrayNoDuplicates!0 (array!33848 (_ BitVec 32) List!10431) Bool)

(assert (=> b!534464 (= res!329817 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10428))))

(declare-fun b!534465 () Bool)

(declare-fun res!329822 () Bool)

(assert (=> b!534465 (=> (not res!329822) (not e!310671))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534465 (= res!329822 (validKeyInArray!0 (select (arr!16259 a!3154) j!147)))))

(declare-fun b!534466 () Bool)

(declare-fun res!329816 () Bool)

(assert (=> b!534466 (=> (not res!329816) (not e!310671))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534466 (= res!329816 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!329819 () Bool)

(assert (=> start!48680 (=> (not res!329819) (not e!310671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48680 (= res!329819 (validMask!0 mask!3216))))

(assert (=> start!48680 e!310671))

(assert (=> start!48680 true))

(declare-fun array_inv!12033 (array!33848) Bool)

(assert (=> start!48680 (array_inv!12033 a!3154)))

(declare-fun b!534467 () Bool)

(declare-fun res!329824 () Bool)

(assert (=> b!534467 (=> (not res!329824) (not e!310671))))

(assert (=> b!534467 (= res!329824 (validKeyInArray!0 k!1998))))

(declare-fun b!534468 () Bool)

(assert (=> b!534468 (= e!310670 false)))

(declare-fun lt!245638 () SeekEntryResult!4724)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534468 (= lt!245638 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16259 a!3154) j!147) mask!3216) (select (arr!16259 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534469 () Bool)

(declare-fun res!329825 () Bool)

(assert (=> b!534469 (=> (not res!329825) (not e!310670))))

(assert (=> b!534469 (= res!329825 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16623 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16623 a!3154)) (= (select (arr!16259 a!3154) resIndex!32) (select (arr!16259 a!3154) j!147))))))

(declare-fun b!534470 () Bool)

(assert (=> b!534470 (= e!310671 e!310670)))

(declare-fun res!329823 () Bool)

(assert (=> b!534470 (=> (not res!329823) (not e!310670))))

(declare-fun lt!245639 () SeekEntryResult!4724)

(assert (=> b!534470 (= res!329823 (or (= lt!245639 (MissingZero!4724 i!1153)) (= lt!245639 (MissingVacant!4724 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33848 (_ BitVec 32)) SeekEntryResult!4724)

(assert (=> b!534470 (= lt!245639 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48680 res!329819) b!534462))

(assert (= (and b!534462 res!329818) b!534465))

(assert (= (and b!534465 res!329822) b!534467))

(assert (= (and b!534467 res!329824) b!534466))

(assert (= (and b!534466 res!329816) b!534470))

(assert (= (and b!534470 res!329823) b!534463))

(assert (= (and b!534463 res!329820) b!534464))

(assert (= (and b!534464 res!329817) b!534469))

(assert (= (and b!534469 res!329825) b!534461))

(assert (= (and b!534461 res!329821) b!534468))

(declare-fun m!514187 () Bool)

(assert (=> b!534467 m!514187))

(declare-fun m!514189 () Bool)

(assert (=> b!534463 m!514189))

(declare-fun m!514191 () Bool)

(assert (=> b!534466 m!514191))

(declare-fun m!514193 () Bool)

(assert (=> b!534465 m!514193))

(assert (=> b!534465 m!514193))

(declare-fun m!514195 () Bool)

(assert (=> b!534465 m!514195))

(assert (=> b!534468 m!514193))

(assert (=> b!534468 m!514193))

(declare-fun m!514197 () Bool)

(assert (=> b!534468 m!514197))

(assert (=> b!534468 m!514197))

(assert (=> b!534468 m!514193))

(declare-fun m!514199 () Bool)

(assert (=> b!534468 m!514199))

(declare-fun m!514201 () Bool)

(assert (=> b!534464 m!514201))

(declare-fun m!514203 () Bool)

(assert (=> b!534469 m!514203))

(assert (=> b!534469 m!514193))

(declare-fun m!514205 () Bool)

(assert (=> start!48680 m!514205))

(declare-fun m!514207 () Bool)

(assert (=> start!48680 m!514207))

(assert (=> b!534461 m!514193))

(assert (=> b!534461 m!514193))

(declare-fun m!514209 () Bool)

(assert (=> b!534461 m!514209))

(declare-fun m!514211 () Bool)

(assert (=> b!534470 m!514211))

(push 1)

(assert (not b!534463))

(assert (not b!534468))

(assert (not b!534461))

(assert (not b!534470))

(assert (not b!534465))

(assert (not b!534466))

(assert (not b!534467))

(assert (not b!534464))

(assert (not start!48680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

