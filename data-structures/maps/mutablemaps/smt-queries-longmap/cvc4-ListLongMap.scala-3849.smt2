; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53000 () Bool)

(assert start!53000)

(declare-fun b!576838 () Bool)

(declare-fun res!365022 () Bool)

(declare-fun e!331858 () Bool)

(assert (=> b!576838 (=> (not res!365022) (not e!331858))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576838 (= res!365022 (validKeyInArray!0 k!1786))))

(declare-fun b!576839 () Bool)

(declare-fun res!365023 () Bool)

(assert (=> b!576839 (=> (not res!365023) (not e!331858))))

(declare-datatypes ((array!35972 0))(
  ( (array!35973 (arr!17261 (Array (_ BitVec 32) (_ BitVec 64))) (size!17625 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35972)

(declare-fun arrayContainsKey!0 (array!35972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576839 (= res!365023 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!576840 () Bool)

(declare-fun res!365021 () Bool)

(assert (=> b!576840 (=> (not res!365021) (not e!331858))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576840 (= res!365021 (and (= (size!17625 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17625 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17625 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576841 () Bool)

(declare-fun res!365020 () Bool)

(assert (=> b!576841 (=> (not res!365020) (not e!331858))))

(assert (=> b!576841 (= res!365020 (validKeyInArray!0 (select (arr!17261 a!2986) j!136)))))

(declare-fun res!365024 () Bool)

(assert (=> start!53000 (=> (not res!365024) (not e!331858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53000 (= res!365024 (validMask!0 mask!3053))))

(assert (=> start!53000 e!331858))

(assert (=> start!53000 true))

(declare-fun array_inv!13035 (array!35972) Bool)

(assert (=> start!53000 (array_inv!13035 a!2986)))

(declare-fun b!576842 () Bool)

(assert (=> b!576842 (= e!331858 (bvslt mask!3053 #b00000000000000000000000000000000))))

(assert (= (and start!53000 res!365024) b!576840))

(assert (= (and b!576840 res!365021) b!576841))

(assert (= (and b!576841 res!365020) b!576838))

(assert (= (and b!576838 res!365022) b!576839))

(assert (= (and b!576839 res!365023) b!576842))

(declare-fun m!555805 () Bool)

(assert (=> b!576838 m!555805))

(declare-fun m!555807 () Bool)

(assert (=> b!576839 m!555807))

(declare-fun m!555809 () Bool)

(assert (=> b!576841 m!555809))

(assert (=> b!576841 m!555809))

(declare-fun m!555811 () Bool)

(assert (=> b!576841 m!555811))

(declare-fun m!555813 () Bool)

(assert (=> start!53000 m!555813))

(declare-fun m!555815 () Bool)

(assert (=> start!53000 m!555815))

(push 1)

(assert (not start!53000))

(assert (not b!576838))

(assert (not b!576839))

(assert (not b!576841))

(check-sat)

(pop 1)

(push 1)

(check-sat)

