; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53030 () Bool)

(assert start!53030)

(declare-fun b!577072 () Bool)

(declare-fun res!365255 () Bool)

(declare-fun e!331948 () Bool)

(assert (=> b!577072 (=> (not res!365255) (not e!331948))))

(declare-datatypes ((array!36002 0))(
  ( (array!36003 (arr!17276 (Array (_ BitVec 32) (_ BitVec 64))) (size!17640 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36002)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36002 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577072 (= res!365255 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577073 () Bool)

(declare-fun res!365258 () Bool)

(assert (=> b!577073 (=> (not res!365258) (not e!331948))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577073 (= res!365258 (validKeyInArray!0 (select (arr!17276 a!2986) j!136)))))

(declare-fun b!577075 () Bool)

(declare-fun res!365254 () Bool)

(assert (=> b!577075 (=> (not res!365254) (not e!331948))))

(assert (=> b!577075 (= res!365254 (validKeyInArray!0 k!1786))))

(declare-fun b!577076 () Bool)

(declare-fun res!365256 () Bool)

(assert (=> b!577076 (=> (not res!365256) (not e!331948))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577076 (= res!365256 (and (= (size!17640 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17640 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17640 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!365257 () Bool)

(assert (=> start!53030 (=> (not res!365257) (not e!331948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53030 (= res!365257 (validMask!0 mask!3053))))

(assert (=> start!53030 e!331948))

(assert (=> start!53030 true))

(declare-fun array_inv!13050 (array!36002) Bool)

(assert (=> start!53030 (array_inv!13050 a!2986)))

(declare-fun b!577074 () Bool)

(assert (=> b!577074 (= e!331948 false)))

(declare-datatypes ((SeekEntryResult!5723 0))(
  ( (MissingZero!5723 (index!25119 (_ BitVec 32))) (Found!5723 (index!25120 (_ BitVec 32))) (Intermediate!5723 (undefined!6535 Bool) (index!25121 (_ BitVec 32)) (x!54059 (_ BitVec 32))) (Undefined!5723) (MissingVacant!5723 (index!25122 (_ BitVec 32))) )
))
(declare-fun lt!263894 () SeekEntryResult!5723)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36002 (_ BitVec 32)) SeekEntryResult!5723)

(assert (=> b!577074 (= lt!263894 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53030 res!365257) b!577076))

(assert (= (and b!577076 res!365256) b!577073))

(assert (= (and b!577073 res!365258) b!577075))

(assert (= (and b!577075 res!365254) b!577072))

(assert (= (and b!577072 res!365255) b!577074))

(declare-fun m!556013 () Bool)

(assert (=> start!53030 m!556013))

(declare-fun m!556015 () Bool)

(assert (=> start!53030 m!556015))

(declare-fun m!556017 () Bool)

(assert (=> b!577072 m!556017))

(declare-fun m!556019 () Bool)

(assert (=> b!577075 m!556019))

(declare-fun m!556021 () Bool)

(assert (=> b!577074 m!556021))

(declare-fun m!556023 () Bool)

(assert (=> b!577073 m!556023))

(assert (=> b!577073 m!556023))

(declare-fun m!556025 () Bool)

(assert (=> b!577073 m!556025))

(push 1)

(assert (not start!53030))

(assert (not b!577075))

(assert (not b!577073))

(assert (not b!577072))

(assert (not b!577074))

(check-sat)

