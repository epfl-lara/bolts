; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53002 () Bool)

(assert start!53002)

(declare-fun b!576853 () Bool)

(declare-fun res!365035 () Bool)

(declare-fun e!331864 () Bool)

(assert (=> b!576853 (=> (not res!365035) (not e!331864))))

(declare-datatypes ((array!35974 0))(
  ( (array!35975 (arr!17262 (Array (_ BitVec 32) (_ BitVec 64))) (size!17626 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35974)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576853 (= res!365035 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!576854 () Bool)

(declare-fun res!365039 () Bool)

(assert (=> b!576854 (=> (not res!365039) (not e!331864))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576854 (= res!365039 (validKeyInArray!0 (select (arr!17262 a!2986) j!136)))))

(declare-fun b!576855 () Bool)

(assert (=> b!576855 (= e!331864 false)))

(declare-datatypes ((SeekEntryResult!5709 0))(
  ( (MissingZero!5709 (index!25063 (_ BitVec 32))) (Found!5709 (index!25064 (_ BitVec 32))) (Intermediate!5709 (undefined!6521 Bool) (index!25065 (_ BitVec 32)) (x!54013 (_ BitVec 32))) (Undefined!5709) (MissingVacant!5709 (index!25066 (_ BitVec 32))) )
))
(declare-fun lt!263861 () SeekEntryResult!5709)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35974 (_ BitVec 32)) SeekEntryResult!5709)

(assert (=> b!576855 (= lt!263861 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!576856 () Bool)

(declare-fun res!365036 () Bool)

(assert (=> b!576856 (=> (not res!365036) (not e!331864))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576856 (= res!365036 (and (= (size!17626 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17626 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17626 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576857 () Bool)

(declare-fun res!365037 () Bool)

(assert (=> b!576857 (=> (not res!365037) (not e!331864))))

(assert (=> b!576857 (= res!365037 (validKeyInArray!0 k!1786))))

(declare-fun res!365038 () Bool)

(assert (=> start!53002 (=> (not res!365038) (not e!331864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53002 (= res!365038 (validMask!0 mask!3053))))

(assert (=> start!53002 e!331864))

(assert (=> start!53002 true))

(declare-fun array_inv!13036 (array!35974) Bool)

(assert (=> start!53002 (array_inv!13036 a!2986)))

(assert (= (and start!53002 res!365038) b!576856))

(assert (= (and b!576856 res!365036) b!576854))

(assert (= (and b!576854 res!365039) b!576857))

(assert (= (and b!576857 res!365037) b!576853))

(assert (= (and b!576853 res!365035) b!576855))

(declare-fun m!555817 () Bool)

(assert (=> b!576854 m!555817))

(assert (=> b!576854 m!555817))

(declare-fun m!555819 () Bool)

(assert (=> b!576854 m!555819))

(declare-fun m!555821 () Bool)

(assert (=> b!576855 m!555821))

(declare-fun m!555823 () Bool)

(assert (=> start!53002 m!555823))

(declare-fun m!555825 () Bool)

(assert (=> start!53002 m!555825))

(declare-fun m!555827 () Bool)

(assert (=> b!576853 m!555827))

(declare-fun m!555829 () Bool)

(assert (=> b!576857 m!555829))

(push 1)

(assert (not b!576855))

(assert (not start!53002))

(assert (not b!576853))

(assert (not b!576857))

(assert (not b!576854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

