; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49136 () Bool)

(assert start!49136)

(declare-fun b!540941 () Bool)

(declare-fun e!313266 () Bool)

(assert (=> b!540941 (= e!313266 false)))

(declare-datatypes ((SeekEntryResult!4898 0))(
  ( (MissingZero!4898 (index!21816 (_ BitVec 32))) (Found!4898 (index!21817 (_ BitVec 32))) (Intermediate!4898 (undefined!5710 Bool) (index!21818 (_ BitVec 32)) (x!50752 (_ BitVec 32))) (Undefined!4898) (MissingVacant!4898 (index!21819 (_ BitVec 32))) )
))
(declare-fun lt!247522 () SeekEntryResult!4898)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34202 0))(
  ( (array!34203 (arr!16433 (Array (_ BitVec 32) (_ BitVec 64))) (size!16797 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34202)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34202 (_ BitVec 32)) SeekEntryResult!4898)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540941 (= lt!247522 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16433 a!3154) j!147) mask!3216) (select (arr!16433 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540942 () Bool)

(declare-fun res!335983 () Bool)

(declare-fun e!313267 () Bool)

(assert (=> b!540942 (=> (not res!335983) (not e!313267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540942 (= res!335983 (validKeyInArray!0 (select (arr!16433 a!3154) j!147)))))

(declare-fun b!540943 () Bool)

(declare-fun res!335986 () Bool)

(assert (=> b!540943 (=> (not res!335986) (not e!313267))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540943 (= res!335986 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540944 () Bool)

(declare-fun res!335984 () Bool)

(assert (=> b!540944 (=> (not res!335984) (not e!313266))))

(declare-datatypes ((List!10605 0))(
  ( (Nil!10602) (Cons!10601 (h!11550 (_ BitVec 64)) (t!16841 List!10605)) )
))
(declare-fun arrayNoDuplicates!0 (array!34202 (_ BitVec 32) List!10605) Bool)

(assert (=> b!540944 (= res!335984 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10602))))

(declare-fun b!540945 () Bool)

(declare-fun res!335982 () Bool)

(assert (=> b!540945 (=> (not res!335982) (not e!313266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34202 (_ BitVec 32)) Bool)

(assert (=> b!540945 (= res!335982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540946 () Bool)

(declare-fun res!335980 () Bool)

(assert (=> b!540946 (=> (not res!335980) (not e!313266))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!540946 (= res!335980 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16433 a!3154) j!147) a!3154 mask!3216) (Intermediate!4898 false resIndex!32 resX!32)))))

(declare-fun b!540947 () Bool)

(assert (=> b!540947 (= e!313267 e!313266)))

(declare-fun res!335987 () Bool)

(assert (=> b!540947 (=> (not res!335987) (not e!313266))))

(declare-fun lt!247523 () SeekEntryResult!4898)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540947 (= res!335987 (or (= lt!247523 (MissingZero!4898 i!1153)) (= lt!247523 (MissingVacant!4898 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34202 (_ BitVec 32)) SeekEntryResult!4898)

(assert (=> b!540947 (= lt!247523 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540948 () Bool)

(declare-fun res!335979 () Bool)

(assert (=> b!540948 (=> (not res!335979) (not e!313267))))

(assert (=> b!540948 (= res!335979 (and (= (size!16797 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16797 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16797 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540949 () Bool)

(declare-fun res!335978 () Bool)

(assert (=> b!540949 (=> (not res!335978) (not e!313266))))

(assert (=> b!540949 (= res!335978 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16797 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16797 a!3154)) (= (select (arr!16433 a!3154) resIndex!32) (select (arr!16433 a!3154) j!147))))))

(declare-fun b!540950 () Bool)

(declare-fun res!335981 () Bool)

(assert (=> b!540950 (=> (not res!335981) (not e!313267))))

(assert (=> b!540950 (= res!335981 (validKeyInArray!0 k!1998))))

(declare-fun res!335985 () Bool)

(assert (=> start!49136 (=> (not res!335985) (not e!313267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49136 (= res!335985 (validMask!0 mask!3216))))

(assert (=> start!49136 e!313267))

(assert (=> start!49136 true))

(declare-fun array_inv!12207 (array!34202) Bool)

(assert (=> start!49136 (array_inv!12207 a!3154)))

(assert (= (and start!49136 res!335985) b!540948))

(assert (= (and b!540948 res!335979) b!540942))

(assert (= (and b!540942 res!335983) b!540950))

(assert (= (and b!540950 res!335981) b!540943))

(assert (= (and b!540943 res!335986) b!540947))

(assert (= (and b!540947 res!335987) b!540945))

(assert (= (and b!540945 res!335982) b!540944))

(assert (= (and b!540944 res!335984) b!540949))

(assert (= (and b!540949 res!335978) b!540946))

(assert (= (and b!540946 res!335980) b!540941))

(declare-fun m!519593 () Bool)

(assert (=> b!540944 m!519593))

(declare-fun m!519595 () Bool)

(assert (=> b!540942 m!519595))

(assert (=> b!540942 m!519595))

(declare-fun m!519597 () Bool)

(assert (=> b!540942 m!519597))

(assert (=> b!540946 m!519595))

(assert (=> b!540946 m!519595))

(declare-fun m!519599 () Bool)

(assert (=> b!540946 m!519599))

(assert (=> b!540941 m!519595))

(assert (=> b!540941 m!519595))

(declare-fun m!519601 () Bool)

(assert (=> b!540941 m!519601))

(assert (=> b!540941 m!519601))

(assert (=> b!540941 m!519595))

(declare-fun m!519603 () Bool)

(assert (=> b!540941 m!519603))

(declare-fun m!519605 () Bool)

(assert (=> b!540950 m!519605))

(declare-fun m!519607 () Bool)

(assert (=> b!540943 m!519607))

(declare-fun m!519609 () Bool)

(assert (=> b!540945 m!519609))

(declare-fun m!519611 () Bool)

(assert (=> start!49136 m!519611))

(declare-fun m!519613 () Bool)

(assert (=> start!49136 m!519613))

(declare-fun m!519615 () Bool)

(assert (=> b!540947 m!519615))

(declare-fun m!519617 () Bool)

(assert (=> b!540949 m!519617))

(assert (=> b!540949 m!519595))

(push 1)

(assert (not b!540943))

(assert (not b!540947))

(assert (not b!540942))

(assert (not b!540941))

(assert (not b!540950))

(assert (not b!540946))

(assert (not start!49136))

(assert (not b!540945))

(assert (not b!540944))

(check-sat)

