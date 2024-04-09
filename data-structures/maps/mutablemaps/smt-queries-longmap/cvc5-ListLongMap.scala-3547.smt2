; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48868 () Bool)

(assert start!48868)

(declare-fun b!537899 () Bool)

(declare-fun e!311946 () Bool)

(declare-fun e!311943 () Bool)

(assert (=> b!537899 (= e!311946 e!311943)))

(declare-fun res!333262 () Bool)

(assert (=> b!537899 (=> (not res!333262) (not e!311943))))

(declare-datatypes ((SeekEntryResult!4818 0))(
  ( (MissingZero!4818 (index!21496 (_ BitVec 32))) (Found!4818 (index!21497 (_ BitVec 32))) (Intermediate!4818 (undefined!5630 Bool) (index!21498 (_ BitVec 32)) (x!50452 (_ BitVec 32))) (Undefined!4818) (MissingVacant!4818 (index!21499 (_ BitVec 32))) )
))
(declare-fun lt!246568 () SeekEntryResult!4818)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537899 (= res!333262 (or (= lt!246568 (MissingZero!4818 i!1153)) (= lt!246568 (MissingVacant!4818 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!34036 0))(
  ( (array!34037 (arr!16353 (Array (_ BitVec 32) (_ BitVec 64))) (size!16717 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34036)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34036 (_ BitVec 32)) SeekEntryResult!4818)

(assert (=> b!537899 (= lt!246568 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537901 () Bool)

(declare-fun res!333256 () Bool)

(declare-fun e!311944 () Bool)

(assert (=> b!537901 (=> (not res!333256) (not e!311944))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!537901 (= res!333256 (and (not (= (select (arr!16353 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16353 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16353 a!3154) index!1177) (select (arr!16353 a!3154) j!147)))))))

(declare-fun b!537902 () Bool)

(declare-fun res!333254 () Bool)

(assert (=> b!537902 (=> (not res!333254) (not e!311943))))

(declare-datatypes ((List!10525 0))(
  ( (Nil!10522) (Cons!10521 (h!11464 (_ BitVec 64)) (t!16761 List!10525)) )
))
(declare-fun arrayNoDuplicates!0 (array!34036 (_ BitVec 32) List!10525) Bool)

(assert (=> b!537902 (= res!333254 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10522))))

(declare-fun b!537903 () Bool)

(declare-fun res!333258 () Bool)

(assert (=> b!537903 (=> (not res!333258) (not e!311943))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537903 (= res!333258 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16717 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16717 a!3154)) (= (select (arr!16353 a!3154) resIndex!32) (select (arr!16353 a!3154) j!147))))))

(declare-fun b!537904 () Bool)

(declare-fun e!311947 () Bool)

(assert (=> b!537904 (= e!311947 false)))

(declare-fun lt!246566 () (_ BitVec 32))

(declare-fun lt!246569 () SeekEntryResult!4818)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34036 (_ BitVec 32)) SeekEntryResult!4818)

(assert (=> b!537904 (= lt!246569 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246566 (select (arr!16353 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537905 () Bool)

(declare-fun res!333263 () Bool)

(assert (=> b!537905 (=> (not res!333263) (not e!311944))))

(declare-fun lt!246567 () SeekEntryResult!4818)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537905 (= res!333263 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16353 a!3154) j!147) mask!3216) (select (arr!16353 a!3154) j!147) a!3154 mask!3216) lt!246567))))

(declare-fun b!537906 () Bool)

(declare-fun res!333265 () Bool)

(assert (=> b!537906 (=> (not res!333265) (not e!311946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537906 (= res!333265 (validKeyInArray!0 k!1998))))

(declare-fun b!537907 () Bool)

(assert (=> b!537907 (= e!311943 e!311944)))

(declare-fun res!333266 () Bool)

(assert (=> b!537907 (=> (not res!333266) (not e!311944))))

(assert (=> b!537907 (= res!333266 (= lt!246567 (Intermediate!4818 false resIndex!32 resX!32)))))

(assert (=> b!537907 (= lt!246567 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16353 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537908 () Bool)

(declare-fun res!333264 () Bool)

(assert (=> b!537908 (=> (not res!333264) (not e!311946))))

(assert (=> b!537908 (= res!333264 (and (= (size!16717 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16717 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16717 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537909 () Bool)

(assert (=> b!537909 (= e!311944 e!311947)))

(declare-fun res!333257 () Bool)

(assert (=> b!537909 (=> (not res!333257) (not e!311947))))

(assert (=> b!537909 (= res!333257 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246566 #b00000000000000000000000000000000) (bvslt lt!246566 (size!16717 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537909 (= lt!246566 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!333259 () Bool)

(assert (=> start!48868 (=> (not res!333259) (not e!311946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48868 (= res!333259 (validMask!0 mask!3216))))

(assert (=> start!48868 e!311946))

(assert (=> start!48868 true))

(declare-fun array_inv!12127 (array!34036) Bool)

(assert (=> start!48868 (array_inv!12127 a!3154)))

(declare-fun b!537900 () Bool)

(declare-fun res!333261 () Bool)

(assert (=> b!537900 (=> (not res!333261) (not e!311946))))

(declare-fun arrayContainsKey!0 (array!34036 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537900 (= res!333261 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537910 () Bool)

(declare-fun res!333260 () Bool)

(assert (=> b!537910 (=> (not res!333260) (not e!311946))))

(assert (=> b!537910 (= res!333260 (validKeyInArray!0 (select (arr!16353 a!3154) j!147)))))

(declare-fun b!537911 () Bool)

(declare-fun res!333255 () Bool)

(assert (=> b!537911 (=> (not res!333255) (not e!311943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34036 (_ BitVec 32)) Bool)

(assert (=> b!537911 (= res!333255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48868 res!333259) b!537908))

(assert (= (and b!537908 res!333264) b!537910))

(assert (= (and b!537910 res!333260) b!537906))

(assert (= (and b!537906 res!333265) b!537900))

(assert (= (and b!537900 res!333261) b!537899))

(assert (= (and b!537899 res!333262) b!537911))

(assert (= (and b!537911 res!333255) b!537902))

(assert (= (and b!537902 res!333254) b!537903))

(assert (= (and b!537903 res!333258) b!537907))

(assert (= (and b!537907 res!333266) b!537905))

(assert (= (and b!537905 res!333263) b!537901))

(assert (= (and b!537901 res!333256) b!537909))

(assert (= (and b!537909 res!333257) b!537904))

(declare-fun m!517051 () Bool)

(assert (=> b!537903 m!517051))

(declare-fun m!517053 () Bool)

(assert (=> b!537903 m!517053))

(declare-fun m!517055 () Bool)

(assert (=> b!537901 m!517055))

(assert (=> b!537901 m!517053))

(assert (=> b!537904 m!517053))

(assert (=> b!537904 m!517053))

(declare-fun m!517057 () Bool)

(assert (=> b!537904 m!517057))

(declare-fun m!517059 () Bool)

(assert (=> b!537909 m!517059))

(assert (=> b!537910 m!517053))

(assert (=> b!537910 m!517053))

(declare-fun m!517061 () Bool)

(assert (=> b!537910 m!517061))

(declare-fun m!517063 () Bool)

(assert (=> b!537902 m!517063))

(declare-fun m!517065 () Bool)

(assert (=> b!537911 m!517065))

(declare-fun m!517067 () Bool)

(assert (=> b!537900 m!517067))

(assert (=> b!537907 m!517053))

(assert (=> b!537907 m!517053))

(declare-fun m!517069 () Bool)

(assert (=> b!537907 m!517069))

(declare-fun m!517071 () Bool)

(assert (=> b!537906 m!517071))

(declare-fun m!517073 () Bool)

(assert (=> b!537899 m!517073))

(assert (=> b!537905 m!517053))

(assert (=> b!537905 m!517053))

(declare-fun m!517075 () Bool)

(assert (=> b!537905 m!517075))

(assert (=> b!537905 m!517075))

(assert (=> b!537905 m!517053))

(declare-fun m!517077 () Bool)

(assert (=> b!537905 m!517077))

(declare-fun m!517079 () Bool)

(assert (=> start!48868 m!517079))

(declare-fun m!517081 () Bool)

(assert (=> start!48868 m!517081))

(push 1)

