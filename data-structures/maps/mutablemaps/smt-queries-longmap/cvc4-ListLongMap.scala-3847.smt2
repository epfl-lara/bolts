; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52974 () Bool)

(assert start!52974)

(declare-fun b!576760 () Bool)

(declare-fun res!364943 () Bool)

(declare-fun e!331821 () Bool)

(assert (=> b!576760 (=> (not res!364943) (not e!331821))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576760 (= res!364943 (validKeyInArray!0 k!1786))))

(declare-fun b!576759 () Bool)

(declare-fun res!364940 () Bool)

(assert (=> b!576759 (=> (not res!364940) (not e!331821))))

(declare-datatypes ((array!35959 0))(
  ( (array!35960 (arr!17255 (Array (_ BitVec 32) (_ BitVec 64))) (size!17619 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35959)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!576759 (= res!364940 (validKeyInArray!0 (select (arr!17255 a!2986) j!136)))))

(declare-fun res!364942 () Bool)

(assert (=> start!52974 (=> (not res!364942) (not e!331821))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52974 (= res!364942 (validMask!0 mask!3053))))

(assert (=> start!52974 e!331821))

(assert (=> start!52974 true))

(declare-fun array_inv!13029 (array!35959) Bool)

(assert (=> start!52974 (array_inv!13029 a!2986)))

(declare-fun b!576761 () Bool)

(assert (=> b!576761 (= e!331821 (bvsge #b00000000000000000000000000000000 (size!17619 a!2986)))))

(declare-fun b!576758 () Bool)

(declare-fun res!364941 () Bool)

(assert (=> b!576758 (=> (not res!364941) (not e!331821))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576758 (= res!364941 (and (= (size!17619 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17619 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17619 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!52974 res!364942) b!576758))

(assert (= (and b!576758 res!364941) b!576759))

(assert (= (and b!576759 res!364940) b!576760))

(assert (= (and b!576760 res!364943) b!576761))

(declare-fun m!555741 () Bool)

(assert (=> b!576760 m!555741))

(declare-fun m!555743 () Bool)

(assert (=> b!576759 m!555743))

(assert (=> b!576759 m!555743))

(declare-fun m!555745 () Bool)

(assert (=> b!576759 m!555745))

(declare-fun m!555747 () Bool)

(assert (=> start!52974 m!555747))

(declare-fun m!555749 () Bool)

(assert (=> start!52974 m!555749))

(push 1)

(assert (not start!52974))

(assert (not b!576760))

(assert (not b!576759))

(check-sat)

(pop 1)

(push 1)

(check-sat)

