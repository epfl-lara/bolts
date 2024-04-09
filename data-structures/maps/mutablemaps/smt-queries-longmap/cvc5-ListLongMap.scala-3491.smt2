; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48430 () Bool)

(assert start!48430)

(declare-fun b!531800 () Bool)

(declare-fun res!327446 () Bool)

(declare-fun e!309698 () Bool)

(assert (=> b!531800 (=> (not res!327446) (not e!309698))))

(declare-datatypes ((array!33694 0))(
  ( (array!33695 (arr!16185 (Array (_ BitVec 32) (_ BitVec 64))) (size!16549 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33694)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531800 (= res!327446 (validKeyInArray!0 (select (arr!16185 a!3154) j!147)))))

(declare-fun b!531801 () Bool)

(declare-fun e!309700 () Bool)

(declare-fun mask!3216 () (_ BitVec 32))

(assert (=> b!531801 (= e!309700 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun b!531802 () Bool)

(declare-fun res!327440 () Bool)

(assert (=> b!531802 (=> (not res!327440) (not e!309700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33694 (_ BitVec 32)) Bool)

(assert (=> b!531802 (= res!327440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531803 () Bool)

(declare-fun res!327447 () Bool)

(assert (=> b!531803 (=> (not res!327447) (not e!309700))))

(declare-datatypes ((List!10357 0))(
  ( (Nil!10354) (Cons!10353 (h!11293 (_ BitVec 64)) (t!16593 List!10357)) )
))
(declare-fun arrayNoDuplicates!0 (array!33694 (_ BitVec 32) List!10357) Bool)

(assert (=> b!531803 (= res!327447 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10354))))

(declare-fun b!531804 () Bool)

(declare-fun res!327443 () Bool)

(assert (=> b!531804 (=> (not res!327443) (not e!309700))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4650 0))(
  ( (MissingZero!4650 (index!20824 (_ BitVec 32))) (Found!4650 (index!20825 (_ BitVec 32))) (Intermediate!4650 (undefined!5462 Bool) (index!20826 (_ BitVec 32)) (x!49827 (_ BitVec 32))) (Undefined!4650) (MissingVacant!4650 (index!20827 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33694 (_ BitVec 32)) SeekEntryResult!4650)

(assert (=> b!531804 (= res!327443 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16185 a!3154) j!147) a!3154 mask!3216) (Intermediate!4650 false resIndex!32 resX!32)))))

(declare-fun b!531805 () Bool)

(declare-fun res!327441 () Bool)

(assert (=> b!531805 (=> (not res!327441) (not e!309698))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531805 (= res!327441 (and (= (size!16549 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16549 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16549 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!327448 () Bool)

(assert (=> start!48430 (=> (not res!327448) (not e!309698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48430 (= res!327448 (validMask!0 mask!3216))))

(assert (=> start!48430 e!309698))

(assert (=> start!48430 true))

(declare-fun array_inv!11959 (array!33694) Bool)

(assert (=> start!48430 (array_inv!11959 a!3154)))

(declare-fun b!531806 () Bool)

(declare-fun res!327449 () Bool)

(assert (=> b!531806 (=> (not res!327449) (not e!309700))))

(assert (=> b!531806 (= res!327449 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16549 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16549 a!3154)) (= (select (arr!16185 a!3154) resIndex!32) (select (arr!16185 a!3154) j!147))))))

(declare-fun b!531807 () Bool)

(assert (=> b!531807 (= e!309698 e!309700)))

(declare-fun res!327442 () Bool)

(assert (=> b!531807 (=> (not res!327442) (not e!309700))))

(declare-fun lt!245075 () SeekEntryResult!4650)

(assert (=> b!531807 (= res!327442 (or (= lt!245075 (MissingZero!4650 i!1153)) (= lt!245075 (MissingVacant!4650 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33694 (_ BitVec 32)) SeekEntryResult!4650)

(assert (=> b!531807 (= lt!245075 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531808 () Bool)

(declare-fun res!327444 () Bool)

(assert (=> b!531808 (=> (not res!327444) (not e!309698))))

(assert (=> b!531808 (= res!327444 (validKeyInArray!0 k!1998))))

(declare-fun b!531809 () Bool)

(declare-fun res!327445 () Bool)

(assert (=> b!531809 (=> (not res!327445) (not e!309698))))

(declare-fun arrayContainsKey!0 (array!33694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531809 (= res!327445 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48430 res!327448) b!531805))

(assert (= (and b!531805 res!327441) b!531800))

(assert (= (and b!531800 res!327446) b!531808))

(assert (= (and b!531808 res!327444) b!531809))

(assert (= (and b!531809 res!327445) b!531807))

(assert (= (and b!531807 res!327442) b!531802))

(assert (= (and b!531802 res!327440) b!531803))

(assert (= (and b!531803 res!327447) b!531806))

(assert (= (and b!531806 res!327449) b!531804))

(assert (= (and b!531804 res!327443) b!531801))

(declare-fun m!512155 () Bool)

(assert (=> b!531802 m!512155))

(declare-fun m!512157 () Bool)

(assert (=> b!531800 m!512157))

(assert (=> b!531800 m!512157))

(declare-fun m!512159 () Bool)

(assert (=> b!531800 m!512159))

(declare-fun m!512161 () Bool)

(assert (=> b!531803 m!512161))

(declare-fun m!512163 () Bool)

(assert (=> b!531806 m!512163))

(assert (=> b!531806 m!512157))

(declare-fun m!512165 () Bool)

(assert (=> b!531808 m!512165))

(declare-fun m!512167 () Bool)

(assert (=> start!48430 m!512167))

(declare-fun m!512169 () Bool)

(assert (=> start!48430 m!512169))

(declare-fun m!512171 () Bool)

(assert (=> b!531807 m!512171))

(declare-fun m!512173 () Bool)

(assert (=> b!531809 m!512173))

(assert (=> b!531804 m!512157))

(assert (=> b!531804 m!512157))

(declare-fun m!512175 () Bool)

(assert (=> b!531804 m!512175))

(push 1)

(assert (not start!48430))

