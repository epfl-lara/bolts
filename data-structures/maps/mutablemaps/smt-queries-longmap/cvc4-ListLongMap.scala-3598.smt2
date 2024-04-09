; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49538 () Bool)

(assert start!49538)

(declare-fun b!544839 () Bool)

(declare-fun res!339093 () Bool)

(declare-fun e!314948 () Bool)

(assert (=> b!544839 (=> (not res!339093) (not e!314948))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544839 (= res!339093 (validKeyInArray!0 k!1998))))

(declare-fun b!544840 () Bool)

(declare-fun e!314947 () Bool)

(assert (=> b!544840 (= e!314948 e!314947)))

(declare-fun res!339097 () Bool)

(assert (=> b!544840 (=> (not res!339097) (not e!314947))))

(declare-datatypes ((SeekEntryResult!4973 0))(
  ( (MissingZero!4973 (index!22116 (_ BitVec 32))) (Found!4973 (index!22117 (_ BitVec 32))) (Intermediate!4973 (undefined!5785 Bool) (index!22118 (_ BitVec 32)) (x!51063 (_ BitVec 32))) (Undefined!4973) (MissingVacant!4973 (index!22119 (_ BitVec 32))) )
))
(declare-fun lt!248641 () SeekEntryResult!4973)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544840 (= res!339097 (or (= lt!248641 (MissingZero!4973 i!1153)) (= lt!248641 (MissingVacant!4973 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!34364 0))(
  ( (array!34365 (arr!16508 (Array (_ BitVec 32) (_ BitVec 64))) (size!16872 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34364)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34364 (_ BitVec 32)) SeekEntryResult!4973)

(assert (=> b!544840 (= lt!248641 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!544841 () Bool)

(declare-fun e!314950 () Bool)

(assert (=> b!544841 (= e!314950 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!248642 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544841 (= lt!248642 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544842 () Bool)

(declare-fun res!339101 () Bool)

(assert (=> b!544842 (=> (not res!339101) (not e!314948))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!544842 (= res!339101 (validKeyInArray!0 (select (arr!16508 a!3154) j!147)))))

(declare-fun res!339104 () Bool)

(assert (=> start!49538 (=> (not res!339104) (not e!314948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49538 (= res!339104 (validMask!0 mask!3216))))

(assert (=> start!49538 e!314948))

(assert (=> start!49538 true))

(declare-fun array_inv!12282 (array!34364) Bool)

(assert (=> start!49538 (array_inv!12282 a!3154)))

(declare-fun b!544843 () Bool)

(assert (=> b!544843 (= e!314947 e!314950)))

(declare-fun res!339099 () Bool)

(assert (=> b!544843 (=> (not res!339099) (not e!314950))))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lt!248640 () SeekEntryResult!4973)

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!544843 (= res!339099 (= lt!248640 (Intermediate!4973 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34364 (_ BitVec 32)) SeekEntryResult!4973)

(assert (=> b!544843 (= lt!248640 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16508 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544844 () Bool)

(declare-fun res!339095 () Bool)

(assert (=> b!544844 (=> (not res!339095) (not e!314948))))

(declare-fun arrayContainsKey!0 (array!34364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544844 (= res!339095 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544845 () Bool)

(declare-fun res!339103 () Bool)

(assert (=> b!544845 (=> (not res!339103) (not e!314950))))

(assert (=> b!544845 (= res!339103 (and (not (= (select (arr!16508 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16508 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16508 a!3154) index!1177) (select (arr!16508 a!3154) j!147)))))))

(declare-fun b!544846 () Bool)

(declare-fun res!339096 () Bool)

(assert (=> b!544846 (=> (not res!339096) (not e!314947))))

(assert (=> b!544846 (= res!339096 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16872 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16872 a!3154)) (= (select (arr!16508 a!3154) resIndex!32) (select (arr!16508 a!3154) j!147))))))

(declare-fun b!544847 () Bool)

(declare-fun res!339094 () Bool)

(assert (=> b!544847 (=> (not res!339094) (not e!314947))))

(declare-datatypes ((List!10680 0))(
  ( (Nil!10677) (Cons!10676 (h!11637 (_ BitVec 64)) (t!16916 List!10680)) )
))
(declare-fun arrayNoDuplicates!0 (array!34364 (_ BitVec 32) List!10680) Bool)

(assert (=> b!544847 (= res!339094 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10677))))

(declare-fun b!544848 () Bool)

(declare-fun res!339102 () Bool)

(assert (=> b!544848 (=> (not res!339102) (not e!314947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34364 (_ BitVec 32)) Bool)

(assert (=> b!544848 (= res!339102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544849 () Bool)

(declare-fun res!339100 () Bool)

(assert (=> b!544849 (=> (not res!339100) (not e!314948))))

(assert (=> b!544849 (= res!339100 (and (= (size!16872 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16872 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16872 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!544850 () Bool)

(declare-fun res!339098 () Bool)

(assert (=> b!544850 (=> (not res!339098) (not e!314950))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544850 (= res!339098 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16508 a!3154) j!147) mask!3216) (select (arr!16508 a!3154) j!147) a!3154 mask!3216) lt!248640))))

(assert (= (and start!49538 res!339104) b!544849))

(assert (= (and b!544849 res!339100) b!544842))

(assert (= (and b!544842 res!339101) b!544839))

(assert (= (and b!544839 res!339093) b!544844))

(assert (= (and b!544844 res!339095) b!544840))

(assert (= (and b!544840 res!339097) b!544848))

(assert (= (and b!544848 res!339102) b!544847))

(assert (= (and b!544847 res!339094) b!544846))

(assert (= (and b!544846 res!339096) b!544843))

(assert (= (and b!544843 res!339099) b!544850))

(assert (= (and b!544850 res!339098) b!544845))

(assert (= (and b!544845 res!339103) b!544841))

(declare-fun m!522595 () Bool)

(assert (=> b!544848 m!522595))

(declare-fun m!522597 () Bool)

(assert (=> b!544842 m!522597))

(assert (=> b!544842 m!522597))

(declare-fun m!522599 () Bool)

(assert (=> b!544842 m!522599))

(declare-fun m!522601 () Bool)

(assert (=> b!544841 m!522601))

(assert (=> b!544843 m!522597))

(assert (=> b!544843 m!522597))

(declare-fun m!522603 () Bool)

(assert (=> b!544843 m!522603))

(declare-fun m!522605 () Bool)

(assert (=> b!544845 m!522605))

(assert (=> b!544845 m!522597))

(declare-fun m!522607 () Bool)

(assert (=> start!49538 m!522607))

(declare-fun m!522609 () Bool)

(assert (=> start!49538 m!522609))

(declare-fun m!522611 () Bool)

(assert (=> b!544839 m!522611))

(declare-fun m!522613 () Bool)

(assert (=> b!544847 m!522613))

(declare-fun m!522615 () Bool)

(assert (=> b!544844 m!522615))

(assert (=> b!544850 m!522597))

(assert (=> b!544850 m!522597))

(declare-fun m!522617 () Bool)

(assert (=> b!544850 m!522617))

(assert (=> b!544850 m!522617))

(assert (=> b!544850 m!522597))

(declare-fun m!522619 () Bool)

(assert (=> b!544850 m!522619))

(declare-fun m!522621 () Bool)

(assert (=> b!544840 m!522621))

(declare-fun m!522623 () Bool)

(assert (=> b!544846 m!522623))

(assert (=> b!544846 m!522597))

(push 1)

(assert (not b!544843))

(assert (not b!544848))

(assert (not b!544847))

(assert (not b!544841))

