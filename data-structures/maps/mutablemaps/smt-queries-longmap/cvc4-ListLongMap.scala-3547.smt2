; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48872 () Bool)

(assert start!48872)

(declare-fun b!537977 () Bool)

(declare-fun res!333335 () Bool)

(declare-fun e!311977 () Bool)

(assert (=> b!537977 (=> (not res!333335) (not e!311977))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34040 0))(
  ( (array!34041 (arr!16355 (Array (_ BitVec 32) (_ BitVec 64))) (size!16719 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34040)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537977 (= res!333335 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16719 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16719 a!3154)) (= (select (arr!16355 a!3154) resIndex!32) (select (arr!16355 a!3154) j!147))))))

(declare-fun b!537978 () Bool)

(declare-fun res!333340 () Bool)

(assert (=> b!537978 (=> (not res!333340) (not e!311977))))

(declare-datatypes ((List!10527 0))(
  ( (Nil!10524) (Cons!10523 (h!11466 (_ BitVec 64)) (t!16763 List!10527)) )
))
(declare-fun arrayNoDuplicates!0 (array!34040 (_ BitVec 32) List!10527) Bool)

(assert (=> b!537978 (= res!333340 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10524))))

(declare-fun b!537979 () Bool)

(declare-fun e!311976 () Bool)

(declare-fun e!311973 () Bool)

(assert (=> b!537979 (= e!311976 e!311973)))

(declare-fun res!333333 () Bool)

(assert (=> b!537979 (=> (not res!333333) (not e!311973))))

(declare-fun lt!246593 () (_ BitVec 32))

(assert (=> b!537979 (= res!333333 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246593 #b00000000000000000000000000000000) (bvslt lt!246593 (size!16719 a!3154))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537979 (= lt!246593 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537980 () Bool)

(assert (=> b!537980 (= e!311973 false)))

(declare-datatypes ((SeekEntryResult!4820 0))(
  ( (MissingZero!4820 (index!21504 (_ BitVec 32))) (Found!4820 (index!21505 (_ BitVec 32))) (Intermediate!4820 (undefined!5632 Bool) (index!21506 (_ BitVec 32)) (x!50454 (_ BitVec 32))) (Undefined!4820) (MissingVacant!4820 (index!21507 (_ BitVec 32))) )
))
(declare-fun lt!246590 () SeekEntryResult!4820)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34040 (_ BitVec 32)) SeekEntryResult!4820)

(assert (=> b!537980 (= lt!246590 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246593 (select (arr!16355 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537981 () Bool)

(declare-fun res!333344 () Bool)

(assert (=> b!537981 (=> (not res!333344) (not e!311977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34040 (_ BitVec 32)) Bool)

(assert (=> b!537981 (= res!333344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537982 () Bool)

(declare-fun res!333339 () Bool)

(declare-fun e!311975 () Bool)

(assert (=> b!537982 (=> (not res!333339) (not e!311975))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537982 (= res!333339 (validKeyInArray!0 k!1998))))

(declare-fun b!537983 () Bool)

(assert (=> b!537983 (= e!311977 e!311976)))

(declare-fun res!333341 () Bool)

(assert (=> b!537983 (=> (not res!333341) (not e!311976))))

(declare-fun lt!246591 () SeekEntryResult!4820)

(assert (=> b!537983 (= res!333341 (= lt!246591 (Intermediate!4820 false resIndex!32 resX!32)))))

(assert (=> b!537983 (= lt!246591 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16355 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537984 () Bool)

(declare-fun res!333338 () Bool)

(assert (=> b!537984 (=> (not res!333338) (not e!311975))))

(declare-fun arrayContainsKey!0 (array!34040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537984 (= res!333338 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537985 () Bool)

(declare-fun res!333343 () Bool)

(assert (=> b!537985 (=> (not res!333343) (not e!311975))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537985 (= res!333343 (and (= (size!16719 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16719 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16719 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!333342 () Bool)

(assert (=> start!48872 (=> (not res!333342) (not e!311975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48872 (= res!333342 (validMask!0 mask!3216))))

(assert (=> start!48872 e!311975))

(assert (=> start!48872 true))

(declare-fun array_inv!12129 (array!34040) Bool)

(assert (=> start!48872 (array_inv!12129 a!3154)))

(declare-fun b!537986 () Bool)

(assert (=> b!537986 (= e!311975 e!311977)))

(declare-fun res!333337 () Bool)

(assert (=> b!537986 (=> (not res!333337) (not e!311977))))

(declare-fun lt!246592 () SeekEntryResult!4820)

(assert (=> b!537986 (= res!333337 (or (= lt!246592 (MissingZero!4820 i!1153)) (= lt!246592 (MissingVacant!4820 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34040 (_ BitVec 32)) SeekEntryResult!4820)

(assert (=> b!537986 (= lt!246592 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537987 () Bool)

(declare-fun res!333336 () Bool)

(assert (=> b!537987 (=> (not res!333336) (not e!311976))))

(assert (=> b!537987 (= res!333336 (and (not (= (select (arr!16355 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16355 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16355 a!3154) index!1177) (select (arr!16355 a!3154) j!147)))))))

(declare-fun b!537988 () Bool)

(declare-fun res!333332 () Bool)

(assert (=> b!537988 (=> (not res!333332) (not e!311975))))

(assert (=> b!537988 (= res!333332 (validKeyInArray!0 (select (arr!16355 a!3154) j!147)))))

(declare-fun b!537989 () Bool)

(declare-fun res!333334 () Bool)

(assert (=> b!537989 (=> (not res!333334) (not e!311976))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537989 (= res!333334 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16355 a!3154) j!147) mask!3216) (select (arr!16355 a!3154) j!147) a!3154 mask!3216) lt!246591))))

(assert (= (and start!48872 res!333342) b!537985))

(assert (= (and b!537985 res!333343) b!537988))

(assert (= (and b!537988 res!333332) b!537982))

(assert (= (and b!537982 res!333339) b!537984))

(assert (= (and b!537984 res!333338) b!537986))

(assert (= (and b!537986 res!333337) b!537981))

(assert (= (and b!537981 res!333344) b!537978))

(assert (= (and b!537978 res!333340) b!537977))

(assert (= (and b!537977 res!333335) b!537983))

(assert (= (and b!537983 res!333341) b!537989))

(assert (= (and b!537989 res!333334) b!537987))

(assert (= (and b!537987 res!333336) b!537979))

(assert (= (and b!537979 res!333333) b!537980))

(declare-fun m!517115 () Bool)

(assert (=> b!537984 m!517115))

(declare-fun m!517117 () Bool)

(assert (=> b!537978 m!517117))

(declare-fun m!517119 () Bool)

(assert (=> start!48872 m!517119))

(declare-fun m!517121 () Bool)

(assert (=> start!48872 m!517121))

(declare-fun m!517123 () Bool)

(assert (=> b!537987 m!517123))

(declare-fun m!517125 () Bool)

(assert (=> b!537987 m!517125))

(declare-fun m!517127 () Bool)

(assert (=> b!537977 m!517127))

(assert (=> b!537977 m!517125))

(declare-fun m!517129 () Bool)

(assert (=> b!537979 m!517129))

(assert (=> b!537983 m!517125))

(assert (=> b!537983 m!517125))

(declare-fun m!517131 () Bool)

(assert (=> b!537983 m!517131))

(declare-fun m!517133 () Bool)

(assert (=> b!537986 m!517133))

(assert (=> b!537980 m!517125))

(assert (=> b!537980 m!517125))

(declare-fun m!517135 () Bool)

(assert (=> b!537980 m!517135))

(declare-fun m!517137 () Bool)

(assert (=> b!537982 m!517137))

(assert (=> b!537989 m!517125))

(assert (=> b!537989 m!517125))

(declare-fun m!517139 () Bool)

(assert (=> b!537989 m!517139))

(assert (=> b!537989 m!517139))

(assert (=> b!537989 m!517125))

(declare-fun m!517141 () Bool)

(assert (=> b!537989 m!517141))

(assert (=> b!537988 m!517125))

(assert (=> b!537988 m!517125))

(declare-fun m!517143 () Bool)

(assert (=> b!537988 m!517143))

(declare-fun m!517145 () Bool)

(assert (=> b!537981 m!517145))

(push 1)

(assert (not b!537984))

(assert (not b!537979))

(assert (not b!537986))

(assert (not b!537981))

