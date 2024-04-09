; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52970 () Bool)

(assert start!52970)

(declare-fun b!576736 () Bool)

(declare-fun res!364918 () Bool)

(declare-fun e!331809 () Bool)

(assert (=> b!576736 (=> (not res!364918) (not e!331809))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576736 (= res!364918 (validKeyInArray!0 k!1786))))

(declare-fun b!576735 () Bool)

(declare-fun res!364916 () Bool)

(assert (=> b!576735 (=> (not res!364916) (not e!331809))))

(declare-datatypes ((array!35955 0))(
  ( (array!35956 (arr!17253 (Array (_ BitVec 32) (_ BitVec 64))) (size!17617 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35955)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!576735 (= res!364916 (validKeyInArray!0 (select (arr!17253 a!2986) j!136)))))

(declare-fun res!364917 () Bool)

(assert (=> start!52970 (=> (not res!364917) (not e!331809))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52970 (= res!364917 (validMask!0 mask!3053))))

(assert (=> start!52970 e!331809))

(assert (=> start!52970 true))

(declare-fun array_inv!13027 (array!35955) Bool)

(assert (=> start!52970 (array_inv!13027 a!2986)))

(declare-fun b!576737 () Bool)

(assert (=> b!576737 (= e!331809 (bvsge #b00000000000000000000000000000000 (size!17617 a!2986)))))

(declare-fun b!576734 () Bool)

(declare-fun res!364919 () Bool)

(assert (=> b!576734 (=> (not res!364919) (not e!331809))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576734 (= res!364919 (and (= (size!17617 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17617 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17617 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!52970 res!364917) b!576734))

(assert (= (and b!576734 res!364919) b!576735))

(assert (= (and b!576735 res!364916) b!576736))

(assert (= (and b!576736 res!364918) b!576737))

(declare-fun m!555721 () Bool)

(assert (=> b!576736 m!555721))

(declare-fun m!555723 () Bool)

(assert (=> b!576735 m!555723))

(assert (=> b!576735 m!555723))

(declare-fun m!555725 () Bool)

(assert (=> b!576735 m!555725))

(declare-fun m!555727 () Bool)

(assert (=> start!52970 m!555727))

(declare-fun m!555729 () Bool)

(assert (=> start!52970 m!555729))

(push 1)

(assert (not b!576736))

(assert (not start!52970))

(assert (not b!576735))

(check-sat)

