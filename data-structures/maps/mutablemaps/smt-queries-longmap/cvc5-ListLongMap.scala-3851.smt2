; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53008 () Bool)

(assert start!53008)

(declare-fun b!576900 () Bool)

(declare-fun res!365083 () Bool)

(declare-fun e!331882 () Bool)

(assert (=> b!576900 (=> (not res!365083) (not e!331882))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!35980 0))(
  ( (array!35981 (arr!17265 (Array (_ BitVec 32) (_ BitVec 64))) (size!17629 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35980)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576900 (= res!365083 (and (= (size!17629 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17629 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17629 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576901 () Bool)

(declare-fun res!365084 () Bool)

(assert (=> b!576901 (=> (not res!365084) (not e!331882))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576901 (= res!365084 (validKeyInArray!0 k!1786))))

(declare-fun b!576903 () Bool)

(declare-fun res!365087 () Bool)

(assert (=> b!576903 (=> (not res!365087) (not e!331882))))

(declare-datatypes ((SeekEntryResult!5712 0))(
  ( (MissingZero!5712 (index!25075 (_ BitVec 32))) (Found!5712 (index!25076 (_ BitVec 32))) (Intermediate!5712 (undefined!6524 Bool) (index!25077 (_ BitVec 32)) (x!54024 (_ BitVec 32))) (Undefined!5712) (MissingVacant!5712 (index!25078 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35980 (_ BitVec 32)) SeekEntryResult!5712)

(assert (=> b!576903 (= res!365087 (not (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) (MissingZero!5712 i!1108))))))

(declare-fun b!576904 () Bool)

(declare-fun res!365086 () Bool)

(assert (=> b!576904 (=> (not res!365086) (not e!331882))))

(assert (=> b!576904 (= res!365086 (validKeyInArray!0 (select (arr!17265 a!2986) j!136)))))

(declare-fun b!576905 () Bool)

(assert (=> b!576905 (= e!331882 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun b!576902 () Bool)

(declare-fun res!365085 () Bool)

(assert (=> b!576902 (=> (not res!365085) (not e!331882))))

(declare-fun arrayContainsKey!0 (array!35980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576902 (= res!365085 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!365082 () Bool)

(assert (=> start!53008 (=> (not res!365082) (not e!331882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53008 (= res!365082 (validMask!0 mask!3053))))

(assert (=> start!53008 e!331882))

(assert (=> start!53008 true))

(declare-fun array_inv!13039 (array!35980) Bool)

(assert (=> start!53008 (array_inv!13039 a!2986)))

(assert (= (and start!53008 res!365082) b!576900))

(assert (= (and b!576900 res!365083) b!576904))

(assert (= (and b!576904 res!365086) b!576901))

(assert (= (and b!576901 res!365084) b!576902))

(assert (= (and b!576902 res!365085) b!576903))

(assert (= (and b!576903 res!365087) b!576905))

(declare-fun m!555859 () Bool)

(assert (=> start!53008 m!555859))

(declare-fun m!555861 () Bool)

(assert (=> start!53008 m!555861))

(declare-fun m!555863 () Bool)

(assert (=> b!576902 m!555863))

(declare-fun m!555865 () Bool)

(assert (=> b!576904 m!555865))

(assert (=> b!576904 m!555865))

(declare-fun m!555867 () Bool)

(assert (=> b!576904 m!555867))

(declare-fun m!555869 () Bool)

(assert (=> b!576903 m!555869))

(declare-fun m!555871 () Bool)

(assert (=> b!576901 m!555871))

(push 1)

(assert (not b!576903))

(assert (not start!53008))

(assert (not b!576902))

(assert (not b!576904))

(assert (not b!576901))

(check-sat)

