; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52972 () Bool)

(assert start!52972)

(declare-fun b!576748 () Bool)

(declare-fun res!364929 () Bool)

(declare-fun e!331815 () Bool)

(assert (=> b!576748 (=> (not res!364929) (not e!331815))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576748 (= res!364929 (validKeyInArray!0 k0!1786))))

(declare-fun b!576747 () Bool)

(declare-fun res!364928 () Bool)

(assert (=> b!576747 (=> (not res!364928) (not e!331815))))

(declare-datatypes ((array!35957 0))(
  ( (array!35958 (arr!17254 (Array (_ BitVec 32) (_ BitVec 64))) (size!17618 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35957)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!576747 (= res!364928 (validKeyInArray!0 (select (arr!17254 a!2986) j!136)))))

(declare-fun res!364930 () Bool)

(assert (=> start!52972 (=> (not res!364930) (not e!331815))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52972 (= res!364930 (validMask!0 mask!3053))))

(assert (=> start!52972 e!331815))

(assert (=> start!52972 true))

(declare-fun array_inv!13028 (array!35957) Bool)

(assert (=> start!52972 (array_inv!13028 a!2986)))

(declare-fun b!576746 () Bool)

(declare-fun res!364931 () Bool)

(assert (=> b!576746 (=> (not res!364931) (not e!331815))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576746 (= res!364931 (and (= (size!17618 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17618 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17618 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576749 () Bool)

(assert (=> b!576749 (= e!331815 (bvsge #b00000000000000000000000000000000 (size!17618 a!2986)))))

(assert (= (and start!52972 res!364930) b!576746))

(assert (= (and b!576746 res!364931) b!576747))

(assert (= (and b!576747 res!364928) b!576748))

(assert (= (and b!576748 res!364929) b!576749))

(declare-fun m!555731 () Bool)

(assert (=> b!576748 m!555731))

(declare-fun m!555733 () Bool)

(assert (=> b!576747 m!555733))

(assert (=> b!576747 m!555733))

(declare-fun m!555735 () Bool)

(assert (=> b!576747 m!555735))

(declare-fun m!555737 () Bool)

(assert (=> start!52972 m!555737))

(declare-fun m!555739 () Bool)

(assert (=> start!52972 m!555739))

(check-sat (not start!52972) (not b!576747) (not b!576748))
(check-sat)
