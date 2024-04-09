; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53026 () Bool)

(assert start!53026)

(declare-fun b!577042 () Bool)

(declare-fun e!331935 () Bool)

(assert (=> b!577042 (= e!331935 false)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!35998 0))(
  ( (array!35999 (arr!17274 (Array (_ BitVec 32) (_ BitVec 64))) (size!17638 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35998)

(declare-datatypes ((SeekEntryResult!5721 0))(
  ( (MissingZero!5721 (index!25111 (_ BitVec 32))) (Found!5721 (index!25112 (_ BitVec 32))) (Intermediate!5721 (undefined!6533 Bool) (index!25113 (_ BitVec 32)) (x!54057 (_ BitVec 32))) (Undefined!5721) (MissingVacant!5721 (index!25114 (_ BitVec 32))) )
))
(declare-fun lt!263888 () SeekEntryResult!5721)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35998 (_ BitVec 32)) SeekEntryResult!5721)

(assert (=> b!577042 (= lt!263888 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!365225 () Bool)

(assert (=> start!53026 (=> (not res!365225) (not e!331935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53026 (= res!365225 (validMask!0 mask!3053))))

(assert (=> start!53026 e!331935))

(assert (=> start!53026 true))

(declare-fun array_inv!13048 (array!35998) Bool)

(assert (=> start!53026 (array_inv!13048 a!2986)))

(declare-fun b!577043 () Bool)

(declare-fun res!365227 () Bool)

(assert (=> b!577043 (=> (not res!365227) (not e!331935))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577043 (= res!365227 (and (= (size!17638 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17638 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17638 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577044 () Bool)

(declare-fun res!365226 () Bool)

(assert (=> b!577044 (=> (not res!365226) (not e!331935))))

(declare-fun arrayContainsKey!0 (array!35998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577044 (= res!365226 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577045 () Bool)

(declare-fun res!365228 () Bool)

(assert (=> b!577045 (=> (not res!365228) (not e!331935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577045 (= res!365228 (validKeyInArray!0 k!1786))))

(declare-fun b!577046 () Bool)

(declare-fun res!365224 () Bool)

(assert (=> b!577046 (=> (not res!365224) (not e!331935))))

(assert (=> b!577046 (= res!365224 (validKeyInArray!0 (select (arr!17274 a!2986) j!136)))))

(assert (= (and start!53026 res!365225) b!577043))

(assert (= (and b!577043 res!365227) b!577046))

(assert (= (and b!577046 res!365224) b!577045))

(assert (= (and b!577045 res!365228) b!577044))

(assert (= (and b!577044 res!365226) b!577042))

(declare-fun m!555985 () Bool)

(assert (=> b!577046 m!555985))

(assert (=> b!577046 m!555985))

(declare-fun m!555987 () Bool)

(assert (=> b!577046 m!555987))

(declare-fun m!555989 () Bool)

(assert (=> start!53026 m!555989))

(declare-fun m!555991 () Bool)

(assert (=> start!53026 m!555991))

(declare-fun m!555993 () Bool)

(assert (=> b!577045 m!555993))

(declare-fun m!555995 () Bool)

(assert (=> b!577042 m!555995))

(declare-fun m!555997 () Bool)

(assert (=> b!577044 m!555997))

(push 1)

(assert (not b!577046))

(assert (not b!577045))

(assert (not b!577042))

(assert (not b!577044))

(assert (not start!53026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

