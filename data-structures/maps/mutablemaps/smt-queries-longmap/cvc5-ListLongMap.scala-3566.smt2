; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49036 () Bool)

(assert start!49036)

(declare-fun res!335181 () Bool)

(declare-fun e!312883 () Bool)

(assert (=> start!49036 (=> (not res!335181) (not e!312883))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49036 (= res!335181 (validMask!0 mask!3216))))

(assert (=> start!49036 e!312883))

(assert (=> start!49036 true))

(declare-datatypes ((array!34153 0))(
  ( (array!34154 (arr!16410 (Array (_ BitVec 32) (_ BitVec 64))) (size!16774 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34153)

(declare-fun array_inv!12184 (array!34153) Bool)

(assert (=> start!49036 (array_inv!12184 a!3154)))

(declare-fun b!539981 () Bool)

(declare-fun res!335179 () Bool)

(declare-fun e!312881 () Bool)

(assert (=> b!539981 (=> (not res!335179) (not e!312881))))

(declare-datatypes ((List!10582 0))(
  ( (Nil!10579) (Cons!10578 (h!11524 (_ BitVec 64)) (t!16818 List!10582)) )
))
(declare-fun arrayNoDuplicates!0 (array!34153 (_ BitVec 32) List!10582) Bool)

(assert (=> b!539981 (= res!335179 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10579))))

(declare-fun b!539982 () Bool)

(declare-fun res!335178 () Bool)

(assert (=> b!539982 (=> (not res!335178) (not e!312881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34153 (_ BitVec 32)) Bool)

(assert (=> b!539982 (= res!335178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539983 () Bool)

(declare-fun res!335183 () Bool)

(assert (=> b!539983 (=> (not res!335183) (not e!312881))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4875 0))(
  ( (MissingZero!4875 (index!21724 (_ BitVec 32))) (Found!4875 (index!21725 (_ BitVec 32))) (Intermediate!4875 (undefined!5687 Bool) (index!21726 (_ BitVec 32)) (x!50667 (_ BitVec 32))) (Undefined!4875) (MissingVacant!4875 (index!21727 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34153 (_ BitVec 32)) SeekEntryResult!4875)

(assert (=> b!539983 (= res!335183 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16410 a!3154) j!147) a!3154 mask!3216) (Intermediate!4875 false resIndex!32 resX!32)))))

(declare-fun b!539984 () Bool)

(declare-fun res!335180 () Bool)

(assert (=> b!539984 (=> (not res!335180) (not e!312883))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539984 (= res!335180 (and (= (size!16774 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16774 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16774 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539985 () Bool)

(declare-fun res!335182 () Bool)

(assert (=> b!539985 (=> (not res!335182) (not e!312883))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539985 (= res!335182 (validKeyInArray!0 k!1998))))

(declare-fun b!539986 () Bool)

(assert (=> b!539986 (= e!312883 e!312881)))

(declare-fun res!335186 () Bool)

(assert (=> b!539986 (=> (not res!335186) (not e!312881))))

(declare-fun lt!247288 () SeekEntryResult!4875)

(assert (=> b!539986 (= res!335186 (or (= lt!247288 (MissingZero!4875 i!1153)) (= lt!247288 (MissingVacant!4875 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34153 (_ BitVec 32)) SeekEntryResult!4875)

(assert (=> b!539986 (= lt!247288 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539987 () Bool)

(declare-fun res!335177 () Bool)

(assert (=> b!539987 (=> (not res!335177) (not e!312881))))

(assert (=> b!539987 (= res!335177 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16774 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16774 a!3154)) (= (select (arr!16410 a!3154) resIndex!32) (select (arr!16410 a!3154) j!147))))))

(declare-fun b!539988 () Bool)

(declare-fun res!335184 () Bool)

(assert (=> b!539988 (=> (not res!335184) (not e!312883))))

(assert (=> b!539988 (= res!335184 (validKeyInArray!0 (select (arr!16410 a!3154) j!147)))))

(declare-fun b!539989 () Bool)

(assert (=> b!539989 (= e!312881 false)))

(declare-fun lt!247289 () SeekEntryResult!4875)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539989 (= lt!247289 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16410 a!3154) j!147) mask!3216) (select (arr!16410 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539990 () Bool)

(declare-fun res!335185 () Bool)

(assert (=> b!539990 (=> (not res!335185) (not e!312883))))

(declare-fun arrayContainsKey!0 (array!34153 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539990 (= res!335185 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49036 res!335181) b!539984))

(assert (= (and b!539984 res!335180) b!539988))

(assert (= (and b!539988 res!335184) b!539985))

(assert (= (and b!539985 res!335182) b!539990))

(assert (= (and b!539990 res!335185) b!539986))

(assert (= (and b!539986 res!335186) b!539982))

(assert (= (and b!539982 res!335178) b!539981))

(assert (= (and b!539981 res!335179) b!539987))

(assert (= (and b!539987 res!335177) b!539983))

(assert (= (and b!539983 res!335183) b!539989))

(declare-fun m!518851 () Bool)

(assert (=> b!539982 m!518851))

(declare-fun m!518853 () Bool)

(assert (=> b!539986 m!518853))

(declare-fun m!518855 () Bool)

(assert (=> b!539985 m!518855))

(declare-fun m!518857 () Bool)

(assert (=> b!539990 m!518857))

(declare-fun m!518859 () Bool)

(assert (=> b!539987 m!518859))

(declare-fun m!518861 () Bool)

(assert (=> b!539987 m!518861))

(declare-fun m!518863 () Bool)

(assert (=> b!539981 m!518863))

(assert (=> b!539983 m!518861))

(assert (=> b!539983 m!518861))

(declare-fun m!518865 () Bool)

(assert (=> b!539983 m!518865))

(declare-fun m!518867 () Bool)

(assert (=> start!49036 m!518867))

(declare-fun m!518869 () Bool)

(assert (=> start!49036 m!518869))

(assert (=> b!539988 m!518861))

(assert (=> b!539988 m!518861))

(declare-fun m!518871 () Bool)

(assert (=> b!539988 m!518871))

(assert (=> b!539989 m!518861))

(assert (=> b!539989 m!518861))

(declare-fun m!518873 () Bool)

(assert (=> b!539989 m!518873))

(assert (=> b!539989 m!518873))

(assert (=> b!539989 m!518861))

(declare-fun m!518875 () Bool)

(assert (=> b!539989 m!518875))

(push 1)

(assert (not b!539981))

(assert (not b!539986))

(assert (not b!539989))

(assert (not b!539988))

(assert (not b!539982))

(assert (not b!539983))

(assert (not start!49036))

(assert (not b!539985))

(assert (not b!539990))

(check-sat)

(pop 1)

