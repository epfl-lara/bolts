; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48676 () Bool)

(assert start!48676)

(declare-fun b!534401 () Bool)

(declare-fun e!310654 () Bool)

(declare-fun e!310652 () Bool)

(assert (=> b!534401 (= e!310654 e!310652)))

(declare-fun res!329758 () Bool)

(assert (=> b!534401 (=> (not res!329758) (not e!310652))))

(declare-datatypes ((SeekEntryResult!4722 0))(
  ( (MissingZero!4722 (index!21112 (_ BitVec 32))) (Found!4722 (index!21113 (_ BitVec 32))) (Intermediate!4722 (undefined!5534 Bool) (index!21114 (_ BitVec 32)) (x!50100 (_ BitVec 32))) (Undefined!4722) (MissingVacant!4722 (index!21115 (_ BitVec 32))) )
))
(declare-fun lt!245627 () SeekEntryResult!4722)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534401 (= res!329758 (or (= lt!245627 (MissingZero!4722 i!1153)) (= lt!245627 (MissingVacant!4722 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33844 0))(
  ( (array!33845 (arr!16257 (Array (_ BitVec 32) (_ BitVec 64))) (size!16621 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33844)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33844 (_ BitVec 32)) SeekEntryResult!4722)

(assert (=> b!534401 (= lt!245627 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534402 () Bool)

(declare-fun res!329762 () Bool)

(assert (=> b!534402 (=> (not res!329762) (not e!310652))))

(declare-datatypes ((List!10429 0))(
  ( (Nil!10426) (Cons!10425 (h!11368 (_ BitVec 64)) (t!16665 List!10429)) )
))
(declare-fun arrayNoDuplicates!0 (array!33844 (_ BitVec 32) List!10429) Bool)

(assert (=> b!534402 (= res!329762 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10426))))

(declare-fun b!534403 () Bool)

(declare-fun res!329763 () Bool)

(assert (=> b!534403 (=> (not res!329763) (not e!310654))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!534403 (= res!329763 (and (= (size!16621 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16621 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16621 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!329757 () Bool)

(assert (=> start!48676 (=> (not res!329757) (not e!310654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48676 (= res!329757 (validMask!0 mask!3216))))

(assert (=> start!48676 e!310654))

(assert (=> start!48676 true))

(declare-fun array_inv!12031 (array!33844) Bool)

(assert (=> start!48676 (array_inv!12031 a!3154)))

(declare-fun b!534404 () Bool)

(declare-fun res!329764 () Bool)

(assert (=> b!534404 (=> (not res!329764) (not e!310652))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33844 (_ BitVec 32)) SeekEntryResult!4722)

(assert (=> b!534404 (= res!329764 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16257 a!3154) j!147) a!3154 mask!3216) (Intermediate!4722 false resIndex!32 resX!32)))))

(declare-fun b!534405 () Bool)

(declare-fun res!329756 () Bool)

(assert (=> b!534405 (=> (not res!329756) (not e!310652))))

(assert (=> b!534405 (= res!329756 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16621 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16621 a!3154)) (= (select (arr!16257 a!3154) resIndex!32) (select (arr!16257 a!3154) j!147))))))

(declare-fun b!534406 () Bool)

(declare-fun res!329765 () Bool)

(assert (=> b!534406 (=> (not res!329765) (not e!310654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534406 (= res!329765 (validKeyInArray!0 (select (arr!16257 a!3154) j!147)))))

(declare-fun b!534407 () Bool)

(declare-fun res!329759 () Bool)

(assert (=> b!534407 (=> (not res!329759) (not e!310654))))

(declare-fun arrayContainsKey!0 (array!33844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534407 (= res!329759 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534408 () Bool)

(declare-fun res!329760 () Bool)

(assert (=> b!534408 (=> (not res!329760) (not e!310654))))

(assert (=> b!534408 (= res!329760 (validKeyInArray!0 k!1998))))

(declare-fun b!534409 () Bool)

(declare-fun res!329761 () Bool)

(assert (=> b!534409 (=> (not res!329761) (not e!310652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33844 (_ BitVec 32)) Bool)

(assert (=> b!534409 (= res!329761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534410 () Bool)

(assert (=> b!534410 (= e!310652 false)))

(declare-fun lt!245626 () SeekEntryResult!4722)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534410 (= lt!245626 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16257 a!3154) j!147) mask!3216) (select (arr!16257 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48676 res!329757) b!534403))

(assert (= (and b!534403 res!329763) b!534406))

(assert (= (and b!534406 res!329765) b!534408))

(assert (= (and b!534408 res!329760) b!534407))

(assert (= (and b!534407 res!329759) b!534401))

(assert (= (and b!534401 res!329758) b!534409))

(assert (= (and b!534409 res!329761) b!534402))

(assert (= (and b!534402 res!329762) b!534405))

(assert (= (and b!534405 res!329756) b!534404))

(assert (= (and b!534404 res!329764) b!534410))

(declare-fun m!514135 () Bool)

(assert (=> b!534407 m!514135))

(declare-fun m!514137 () Bool)

(assert (=> b!534408 m!514137))

(declare-fun m!514139 () Bool)

(assert (=> b!534402 m!514139))

(declare-fun m!514141 () Bool)

(assert (=> b!534405 m!514141))

(declare-fun m!514143 () Bool)

(assert (=> b!534405 m!514143))

(assert (=> b!534410 m!514143))

(assert (=> b!534410 m!514143))

(declare-fun m!514145 () Bool)

(assert (=> b!534410 m!514145))

(assert (=> b!534410 m!514145))

(assert (=> b!534410 m!514143))

(declare-fun m!514147 () Bool)

(assert (=> b!534410 m!514147))

(declare-fun m!514149 () Bool)

(assert (=> start!48676 m!514149))

(declare-fun m!514151 () Bool)

(assert (=> start!48676 m!514151))

(assert (=> b!534404 m!514143))

(assert (=> b!534404 m!514143))

(declare-fun m!514153 () Bool)

(assert (=> b!534404 m!514153))

(declare-fun m!514155 () Bool)

(assert (=> b!534409 m!514155))

(declare-fun m!514157 () Bool)

(assert (=> b!534401 m!514157))

(assert (=> b!534406 m!514143))

(assert (=> b!534406 m!514143))

(declare-fun m!514159 () Bool)

(assert (=> b!534406 m!514159))

(push 1)

