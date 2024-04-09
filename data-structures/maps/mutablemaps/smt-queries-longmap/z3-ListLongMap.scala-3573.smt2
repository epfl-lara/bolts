; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49134 () Bool)

(assert start!49134)

(declare-fun b!540911 () Bool)

(declare-fun res!335955 () Bool)

(declare-fun e!313258 () Bool)

(assert (=> b!540911 (=> (not res!335955) (not e!313258))))

(declare-datatypes ((array!34200 0))(
  ( (array!34201 (arr!16432 (Array (_ BitVec 32) (_ BitVec 64))) (size!16796 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34200)

(declare-datatypes ((List!10604 0))(
  ( (Nil!10601) (Cons!10600 (h!11549 (_ BitVec 64)) (t!16840 List!10604)) )
))
(declare-fun arrayNoDuplicates!0 (array!34200 (_ BitVec 32) List!10604) Bool)

(assert (=> b!540911 (= res!335955 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10601))))

(declare-fun b!540912 () Bool)

(assert (=> b!540912 (= e!313258 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4897 0))(
  ( (MissingZero!4897 (index!21812 (_ BitVec 32))) (Found!4897 (index!21813 (_ BitVec 32))) (Intermediate!4897 (undefined!5709 Bool) (index!21814 (_ BitVec 32)) (x!50751 (_ BitVec 32))) (Undefined!4897) (MissingVacant!4897 (index!21815 (_ BitVec 32))) )
))
(declare-fun lt!247517 () SeekEntryResult!4897)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34200 (_ BitVec 32)) SeekEntryResult!4897)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540912 (= lt!247517 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16432 a!3154) j!147) mask!3216) (select (arr!16432 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540913 () Bool)

(declare-fun res!335953 () Bool)

(declare-fun e!313257 () Bool)

(assert (=> b!540913 (=> (not res!335953) (not e!313257))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540913 (= res!335953 (and (= (size!16796 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16796 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16796 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540914 () Bool)

(declare-fun res!335950 () Bool)

(assert (=> b!540914 (=> (not res!335950) (not e!313257))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540914 (= res!335950 (validKeyInArray!0 k0!1998))))

(declare-fun res!335952 () Bool)

(assert (=> start!49134 (=> (not res!335952) (not e!313257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49134 (= res!335952 (validMask!0 mask!3216))))

(assert (=> start!49134 e!313257))

(assert (=> start!49134 true))

(declare-fun array_inv!12206 (array!34200) Bool)

(assert (=> start!49134 (array_inv!12206 a!3154)))

(declare-fun b!540915 () Bool)

(declare-fun res!335949 () Bool)

(assert (=> b!540915 (=> (not res!335949) (not e!313258))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540915 (= res!335949 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16796 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16796 a!3154)) (= (select (arr!16432 a!3154) resIndex!32) (select (arr!16432 a!3154) j!147))))))

(declare-fun b!540916 () Bool)

(declare-fun res!335948 () Bool)

(assert (=> b!540916 (=> (not res!335948) (not e!313258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34200 (_ BitVec 32)) Bool)

(assert (=> b!540916 (= res!335948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540917 () Bool)

(assert (=> b!540917 (= e!313257 e!313258)))

(declare-fun res!335951 () Bool)

(assert (=> b!540917 (=> (not res!335951) (not e!313258))))

(declare-fun lt!247516 () SeekEntryResult!4897)

(assert (=> b!540917 (= res!335951 (or (= lt!247516 (MissingZero!4897 i!1153)) (= lt!247516 (MissingVacant!4897 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34200 (_ BitVec 32)) SeekEntryResult!4897)

(assert (=> b!540917 (= lt!247516 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!540918 () Bool)

(declare-fun res!335957 () Bool)

(assert (=> b!540918 (=> (not res!335957) (not e!313258))))

(assert (=> b!540918 (= res!335957 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16432 a!3154) j!147) a!3154 mask!3216) (Intermediate!4897 false resIndex!32 resX!32)))))

(declare-fun b!540919 () Bool)

(declare-fun res!335956 () Bool)

(assert (=> b!540919 (=> (not res!335956) (not e!313257))))

(assert (=> b!540919 (= res!335956 (validKeyInArray!0 (select (arr!16432 a!3154) j!147)))))

(declare-fun b!540920 () Bool)

(declare-fun res!335954 () Bool)

(assert (=> b!540920 (=> (not res!335954) (not e!313257))))

(declare-fun arrayContainsKey!0 (array!34200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540920 (= res!335954 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49134 res!335952) b!540913))

(assert (= (and b!540913 res!335953) b!540919))

(assert (= (and b!540919 res!335956) b!540914))

(assert (= (and b!540914 res!335950) b!540920))

(assert (= (and b!540920 res!335954) b!540917))

(assert (= (and b!540917 res!335951) b!540916))

(assert (= (and b!540916 res!335948) b!540911))

(assert (= (and b!540911 res!335955) b!540915))

(assert (= (and b!540915 res!335949) b!540918))

(assert (= (and b!540918 res!335957) b!540912))

(declare-fun m!519567 () Bool)

(assert (=> b!540911 m!519567))

(declare-fun m!519569 () Bool)

(assert (=> b!540914 m!519569))

(declare-fun m!519571 () Bool)

(assert (=> start!49134 m!519571))

(declare-fun m!519573 () Bool)

(assert (=> start!49134 m!519573))

(declare-fun m!519575 () Bool)

(assert (=> b!540919 m!519575))

(assert (=> b!540919 m!519575))

(declare-fun m!519577 () Bool)

(assert (=> b!540919 m!519577))

(assert (=> b!540912 m!519575))

(assert (=> b!540912 m!519575))

(declare-fun m!519579 () Bool)

(assert (=> b!540912 m!519579))

(assert (=> b!540912 m!519579))

(assert (=> b!540912 m!519575))

(declare-fun m!519581 () Bool)

(assert (=> b!540912 m!519581))

(assert (=> b!540918 m!519575))

(assert (=> b!540918 m!519575))

(declare-fun m!519583 () Bool)

(assert (=> b!540918 m!519583))

(declare-fun m!519585 () Bool)

(assert (=> b!540915 m!519585))

(assert (=> b!540915 m!519575))

(declare-fun m!519587 () Bool)

(assert (=> b!540920 m!519587))

(declare-fun m!519589 () Bool)

(assert (=> b!540916 m!519589))

(declare-fun m!519591 () Bool)

(assert (=> b!540917 m!519591))

(check-sat (not start!49134) (not b!540914) (not b!540917) (not b!540920) (not b!540919) (not b!540912) (not b!540918) (not b!540911) (not b!540916))
(check-sat)
