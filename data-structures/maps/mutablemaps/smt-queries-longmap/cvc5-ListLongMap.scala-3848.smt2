; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52976 () Bool)

(assert start!52976)

(declare-fun b!576770 () Bool)

(declare-fun res!364955 () Bool)

(declare-fun e!331828 () Bool)

(assert (=> b!576770 (=> (not res!364955) (not e!331828))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!35961 0))(
  ( (array!35962 (arr!17256 (Array (_ BitVec 32) (_ BitVec 64))) (size!17620 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35961)

(assert (=> b!576770 (= res!364955 (and (= (size!17620 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17620 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17620 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!364954 () Bool)

(assert (=> start!52976 (=> (not res!364954) (not e!331828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52976 (= res!364954 (validMask!0 mask!3053))))

(assert (=> start!52976 e!331828))

(assert (=> start!52976 true))

(declare-fun array_inv!13030 (array!35961) Bool)

(assert (=> start!52976 (array_inv!13030 a!2986)))

(declare-fun b!576771 () Bool)

(declare-fun res!364952 () Bool)

(assert (=> b!576771 (=> (not res!364952) (not e!331828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576771 (= res!364952 (validKeyInArray!0 (select (arr!17256 a!2986) j!136)))))

(declare-fun b!576772 () Bool)

(declare-fun res!364953 () Bool)

(assert (=> b!576772 (=> (not res!364953) (not e!331828))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!576772 (= res!364953 (validKeyInArray!0 k!1786))))

(declare-fun b!576773 () Bool)

(assert (=> b!576773 (= e!331828 (and (bvslt #b00000000000000000000000000000000 (size!17620 a!2986)) (bvsge (size!17620 a!2986) #b01111111111111111111111111111111)))))

(assert (= (and start!52976 res!364954) b!576770))

(assert (= (and b!576770 res!364955) b!576771))

(assert (= (and b!576771 res!364952) b!576772))

(assert (= (and b!576772 res!364953) b!576773))

(declare-fun m!555751 () Bool)

(assert (=> start!52976 m!555751))

(declare-fun m!555753 () Bool)

(assert (=> start!52976 m!555753))

(declare-fun m!555755 () Bool)

(assert (=> b!576771 m!555755))

(assert (=> b!576771 m!555755))

(declare-fun m!555757 () Bool)

(assert (=> b!576771 m!555757))

(declare-fun m!555759 () Bool)

(assert (=> b!576772 m!555759))

(push 1)

(assert (not b!576771))

(assert (not b!576772))

(assert (not start!52976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

