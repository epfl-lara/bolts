; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53010 () Bool)

(assert start!53010)

(declare-fun res!365102 () Bool)

(declare-fun e!331887 () Bool)

(assert (=> start!53010 (=> (not res!365102) (not e!331887))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53010 (= res!365102 (validMask!0 mask!3053))))

(assert (=> start!53010 e!331887))

(assert (=> start!53010 true))

(declare-datatypes ((array!35982 0))(
  ( (array!35983 (arr!17266 (Array (_ BitVec 32) (_ BitVec 64))) (size!17630 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35982)

(declare-fun array_inv!13040 (array!35982) Bool)

(assert (=> start!53010 (array_inv!13040 a!2986)))

(declare-fun b!576918 () Bool)

(declare-fun res!365101 () Bool)

(assert (=> b!576918 (=> (not res!365101) (not e!331887))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576918 (= res!365101 (validKeyInArray!0 k0!1786))))

(declare-fun b!576919 () Bool)

(declare-fun res!365105 () Bool)

(assert (=> b!576919 (=> (not res!365105) (not e!331887))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5713 0))(
  ( (MissingZero!5713 (index!25079 (_ BitVec 32))) (Found!5713 (index!25080 (_ BitVec 32))) (Intermediate!5713 (undefined!6525 Bool) (index!25081 (_ BitVec 32)) (x!54025 (_ BitVec 32))) (Undefined!5713) (MissingVacant!5713 (index!25082 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35982 (_ BitVec 32)) SeekEntryResult!5713)

(assert (=> b!576919 (= res!365105 (not (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) (MissingZero!5713 i!1108))))))

(declare-fun b!576920 () Bool)

(declare-fun res!365103 () Bool)

(assert (=> b!576920 (=> (not res!365103) (not e!331887))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!576920 (= res!365103 (validKeyInArray!0 (select (arr!17266 a!2986) j!136)))))

(declare-fun b!576921 () Bool)

(declare-fun res!365100 () Bool)

(assert (=> b!576921 (=> (not res!365100) (not e!331887))))

(assert (=> b!576921 (= res!365100 (and (= (size!17630 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17630 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17630 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576922 () Bool)

(assert (=> b!576922 (= e!331887 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun b!576923 () Bool)

(declare-fun res!365104 () Bool)

(assert (=> b!576923 (=> (not res!365104) (not e!331887))))

(declare-fun arrayContainsKey!0 (array!35982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576923 (= res!365104 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53010 res!365102) b!576921))

(assert (= (and b!576921 res!365100) b!576920))

(assert (= (and b!576920 res!365103) b!576918))

(assert (= (and b!576918 res!365101) b!576923))

(assert (= (and b!576923 res!365104) b!576919))

(assert (= (and b!576919 res!365105) b!576922))

(declare-fun m!555873 () Bool)

(assert (=> b!576918 m!555873))

(declare-fun m!555875 () Bool)

(assert (=> start!53010 m!555875))

(declare-fun m!555877 () Bool)

(assert (=> start!53010 m!555877))

(declare-fun m!555879 () Bool)

(assert (=> b!576923 m!555879))

(declare-fun m!555881 () Bool)

(assert (=> b!576919 m!555881))

(declare-fun m!555883 () Bool)

(assert (=> b!576920 m!555883))

(assert (=> b!576920 m!555883))

(declare-fun m!555885 () Bool)

(assert (=> b!576920 m!555885))

(check-sat (not b!576919) (not b!576920) (not b!576918) (not start!53010) (not b!576923))
(check-sat)
