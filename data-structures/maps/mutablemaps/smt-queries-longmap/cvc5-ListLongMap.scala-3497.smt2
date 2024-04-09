; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48568 () Bool)

(assert start!48568)

(declare-fun b!532808 () Bool)

(declare-fun res!328166 () Bool)

(declare-fun e!310167 () Bool)

(assert (=> b!532808 (=> (not res!328166) (not e!310167))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33736 0))(
  ( (array!33737 (arr!16203 (Array (_ BitVec 32) (_ BitVec 64))) (size!16567 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33736)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532808 (= res!328166 (and (= (size!16567 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16567 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16567 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532809 () Bool)

(declare-fun res!328165 () Bool)

(declare-fun e!310168 () Bool)

(assert (=> b!532809 (=> (not res!328165) (not e!310168))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!532809 (= res!328165 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16567 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16567 a!3154)) (= (select (arr!16203 a!3154) resIndex!32) (select (arr!16203 a!3154) j!147))))))

(declare-fun b!532810 () Bool)

(declare-fun res!328172 () Bool)

(assert (=> b!532810 (=> (not res!328172) (not e!310167))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532810 (= res!328172 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532811 () Bool)

(declare-fun res!328171 () Bool)

(assert (=> b!532811 (=> (not res!328171) (not e!310168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33736 (_ BitVec 32)) Bool)

(assert (=> b!532811 (= res!328171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532812 () Bool)

(declare-fun res!328164 () Bool)

(assert (=> b!532812 (=> (not res!328164) (not e!310168))))

(declare-datatypes ((List!10375 0))(
  ( (Nil!10372) (Cons!10371 (h!11314 (_ BitVec 64)) (t!16611 List!10375)) )
))
(declare-fun arrayNoDuplicates!0 (array!33736 (_ BitVec 32) List!10375) Bool)

(assert (=> b!532812 (= res!328164 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10372))))

(declare-fun b!532813 () Bool)

(assert (=> b!532813 (= e!310168 false)))

(declare-fun lt!245330 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532813 (= lt!245330 (toIndex!0 (select (arr!16203 a!3154) j!147) mask!3216))))

(declare-fun b!532814 () Bool)

(declare-fun res!328170 () Bool)

(assert (=> b!532814 (=> (not res!328170) (not e!310168))))

(declare-datatypes ((SeekEntryResult!4668 0))(
  ( (MissingZero!4668 (index!20896 (_ BitVec 32))) (Found!4668 (index!20897 (_ BitVec 32))) (Intermediate!4668 (undefined!5480 Bool) (index!20898 (_ BitVec 32)) (x!49902 (_ BitVec 32))) (Undefined!4668) (MissingVacant!4668 (index!20899 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33736 (_ BitVec 32)) SeekEntryResult!4668)

(assert (=> b!532814 (= res!328170 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16203 a!3154) j!147) a!3154 mask!3216) (Intermediate!4668 false resIndex!32 resX!32)))))

(declare-fun res!328168 () Bool)

(assert (=> start!48568 (=> (not res!328168) (not e!310167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48568 (= res!328168 (validMask!0 mask!3216))))

(assert (=> start!48568 e!310167))

(assert (=> start!48568 true))

(declare-fun array_inv!11977 (array!33736) Bool)

(assert (=> start!48568 (array_inv!11977 a!3154)))

(declare-fun b!532815 () Bool)

(declare-fun res!328169 () Bool)

(assert (=> b!532815 (=> (not res!328169) (not e!310167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532815 (= res!328169 (validKeyInArray!0 k!1998))))

(declare-fun b!532816 () Bool)

(declare-fun res!328163 () Bool)

(assert (=> b!532816 (=> (not res!328163) (not e!310167))))

(assert (=> b!532816 (= res!328163 (validKeyInArray!0 (select (arr!16203 a!3154) j!147)))))

(declare-fun b!532817 () Bool)

(assert (=> b!532817 (= e!310167 e!310168)))

(declare-fun res!328167 () Bool)

(assert (=> b!532817 (=> (not res!328167) (not e!310168))))

(declare-fun lt!245329 () SeekEntryResult!4668)

(assert (=> b!532817 (= res!328167 (or (= lt!245329 (MissingZero!4668 i!1153)) (= lt!245329 (MissingVacant!4668 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33736 (_ BitVec 32)) SeekEntryResult!4668)

(assert (=> b!532817 (= lt!245329 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48568 res!328168) b!532808))

(assert (= (and b!532808 res!328166) b!532816))

(assert (= (and b!532816 res!328163) b!532815))

(assert (= (and b!532815 res!328169) b!532810))

(assert (= (and b!532810 res!328172) b!532817))

(assert (= (and b!532817 res!328167) b!532811))

(assert (= (and b!532811 res!328171) b!532812))

(assert (= (and b!532812 res!328164) b!532809))

(assert (= (and b!532809 res!328165) b!532814))

(assert (= (and b!532814 res!328170) b!532813))

(declare-fun m!512815 () Bool)

(assert (=> b!532810 m!512815))

(declare-fun m!512817 () Bool)

(assert (=> b!532809 m!512817))

(declare-fun m!512819 () Bool)

(assert (=> b!532809 m!512819))

(assert (=> b!532816 m!512819))

(assert (=> b!532816 m!512819))

(declare-fun m!512821 () Bool)

(assert (=> b!532816 m!512821))

(declare-fun m!512823 () Bool)

(assert (=> b!532817 m!512823))

(declare-fun m!512825 () Bool)

(assert (=> b!532812 m!512825))

(declare-fun m!512827 () Bool)

(assert (=> start!48568 m!512827))

(declare-fun m!512829 () Bool)

(assert (=> start!48568 m!512829))

(assert (=> b!532814 m!512819))

(assert (=> b!532814 m!512819))

(declare-fun m!512831 () Bool)

(assert (=> b!532814 m!512831))

(declare-fun m!512833 () Bool)

(assert (=> b!532811 m!512833))

(assert (=> b!532813 m!512819))

(assert (=> b!532813 m!512819))

(declare-fun m!512835 () Bool)

(assert (=> b!532813 m!512835))

(declare-fun m!512837 () Bool)

(assert (=> b!532815 m!512837))

(push 1)

