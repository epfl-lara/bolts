; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49044 () Bool)

(assert start!49044)

(declare-fun res!335305 () Bool)

(declare-fun e!312918 () Bool)

(assert (=> start!49044 (=> (not res!335305) (not e!312918))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49044 (= res!335305 (validMask!0 mask!3216))))

(assert (=> start!49044 e!312918))

(assert (=> start!49044 true))

(declare-datatypes ((array!34161 0))(
  ( (array!34162 (arr!16414 (Array (_ BitVec 32) (_ BitVec 64))) (size!16778 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34161)

(declare-fun array_inv!12188 (array!34161) Bool)

(assert (=> start!49044 (array_inv!12188 a!3154)))

(declare-fun b!540101 () Bool)

(declare-fun res!335298 () Bool)

(assert (=> b!540101 (=> (not res!335298) (not e!312918))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540101 (= res!335298 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540102 () Bool)

(declare-fun res!335299 () Bool)

(declare-fun e!312919 () Bool)

(assert (=> b!540102 (=> (not res!335299) (not e!312919))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540102 (= res!335299 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16778 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16778 a!3154)) (= (select (arr!16414 a!3154) resIndex!32) (select (arr!16414 a!3154) j!147))))))

(declare-fun b!540103 () Bool)

(declare-fun res!335306 () Bool)

(assert (=> b!540103 (=> (not res!335306) (not e!312919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34161 (_ BitVec 32)) Bool)

(assert (=> b!540103 (= res!335306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540104 () Bool)

(declare-fun res!335297 () Bool)

(assert (=> b!540104 (=> (not res!335297) (not e!312919))))

(declare-datatypes ((List!10586 0))(
  ( (Nil!10583) (Cons!10582 (h!11528 (_ BitVec 64)) (t!16822 List!10586)) )
))
(declare-fun arrayNoDuplicates!0 (array!34161 (_ BitVec 32) List!10586) Bool)

(assert (=> b!540104 (= res!335297 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10583))))

(declare-fun b!540105 () Bool)

(declare-fun res!335303 () Bool)

(assert (=> b!540105 (=> (not res!335303) (not e!312918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540105 (= res!335303 (validKeyInArray!0 k0!1998))))

(declare-fun b!540106 () Bool)

(assert (=> b!540106 (= e!312919 false)))

(declare-datatypes ((SeekEntryResult!4879 0))(
  ( (MissingZero!4879 (index!21740 (_ BitVec 32))) (Found!4879 (index!21741 (_ BitVec 32))) (Intermediate!4879 (undefined!5691 Bool) (index!21742 (_ BitVec 32)) (x!50679 (_ BitVec 32))) (Undefined!4879) (MissingVacant!4879 (index!21743 (_ BitVec 32))) )
))
(declare-fun lt!247312 () SeekEntryResult!4879)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34161 (_ BitVec 32)) SeekEntryResult!4879)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540106 (= lt!247312 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16414 a!3154) j!147) mask!3216) (select (arr!16414 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540107 () Bool)

(declare-fun res!335300 () Bool)

(assert (=> b!540107 (=> (not res!335300) (not e!312918))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540107 (= res!335300 (and (= (size!16778 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16778 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16778 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540108 () Bool)

(assert (=> b!540108 (= e!312918 e!312919)))

(declare-fun res!335304 () Bool)

(assert (=> b!540108 (=> (not res!335304) (not e!312919))))

(declare-fun lt!247313 () SeekEntryResult!4879)

(assert (=> b!540108 (= res!335304 (or (= lt!247313 (MissingZero!4879 i!1153)) (= lt!247313 (MissingVacant!4879 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34161 (_ BitVec 32)) SeekEntryResult!4879)

(assert (=> b!540108 (= lt!247313 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!540109 () Bool)

(declare-fun res!335302 () Bool)

(assert (=> b!540109 (=> (not res!335302) (not e!312919))))

(assert (=> b!540109 (= res!335302 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16414 a!3154) j!147) a!3154 mask!3216) (Intermediate!4879 false resIndex!32 resX!32)))))

(declare-fun b!540110 () Bool)

(declare-fun res!335301 () Bool)

(assert (=> b!540110 (=> (not res!335301) (not e!312918))))

(assert (=> b!540110 (= res!335301 (validKeyInArray!0 (select (arr!16414 a!3154) j!147)))))

(assert (= (and start!49044 res!335305) b!540107))

(assert (= (and b!540107 res!335300) b!540110))

(assert (= (and b!540110 res!335301) b!540105))

(assert (= (and b!540105 res!335303) b!540101))

(assert (= (and b!540101 res!335298) b!540108))

(assert (= (and b!540108 res!335304) b!540103))

(assert (= (and b!540103 res!335306) b!540104))

(assert (= (and b!540104 res!335297) b!540102))

(assert (= (and b!540102 res!335299) b!540109))

(assert (= (and b!540109 res!335302) b!540106))

(declare-fun m!518955 () Bool)

(assert (=> start!49044 m!518955))

(declare-fun m!518957 () Bool)

(assert (=> start!49044 m!518957))

(declare-fun m!518959 () Bool)

(assert (=> b!540106 m!518959))

(assert (=> b!540106 m!518959))

(declare-fun m!518961 () Bool)

(assert (=> b!540106 m!518961))

(assert (=> b!540106 m!518961))

(assert (=> b!540106 m!518959))

(declare-fun m!518963 () Bool)

(assert (=> b!540106 m!518963))

(assert (=> b!540109 m!518959))

(assert (=> b!540109 m!518959))

(declare-fun m!518965 () Bool)

(assert (=> b!540109 m!518965))

(declare-fun m!518967 () Bool)

(assert (=> b!540105 m!518967))

(declare-fun m!518969 () Bool)

(assert (=> b!540108 m!518969))

(declare-fun m!518971 () Bool)

(assert (=> b!540103 m!518971))

(declare-fun m!518973 () Bool)

(assert (=> b!540104 m!518973))

(assert (=> b!540110 m!518959))

(assert (=> b!540110 m!518959))

(declare-fun m!518975 () Bool)

(assert (=> b!540110 m!518975))

(declare-fun m!518977 () Bool)

(assert (=> b!540101 m!518977))

(declare-fun m!518979 () Bool)

(assert (=> b!540102 m!518979))

(assert (=> b!540102 m!518959))

(check-sat (not b!540104) (not b!540103) (not b!540108) (not b!540106) (not b!540110) (not b!540101) (not b!540109) (not start!49044) (not b!540105))
(check-sat)
