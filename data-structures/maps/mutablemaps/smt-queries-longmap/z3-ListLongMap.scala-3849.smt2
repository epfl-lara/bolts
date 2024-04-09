; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52998 () Bool)

(assert start!52998)

(declare-fun b!576823 () Bool)

(declare-fun e!331852 () Bool)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!576823 (= e!331852 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun res!365005 () Bool)

(assert (=> start!52998 (=> (not res!365005) (not e!331852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52998 (= res!365005 (validMask!0 mask!3053))))

(assert (=> start!52998 e!331852))

(assert (=> start!52998 true))

(declare-datatypes ((array!35970 0))(
  ( (array!35971 (arr!17260 (Array (_ BitVec 32) (_ BitVec 64))) (size!17624 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35970)

(declare-fun array_inv!13034 (array!35970) Bool)

(assert (=> start!52998 (array_inv!13034 a!2986)))

(declare-fun b!576824 () Bool)

(declare-fun res!365006 () Bool)

(assert (=> b!576824 (=> (not res!365006) (not e!331852))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576824 (= res!365006 (and (= (size!17624 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17624 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17624 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576825 () Bool)

(declare-fun res!365008 () Bool)

(assert (=> b!576825 (=> (not res!365008) (not e!331852))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576825 (= res!365008 (validKeyInArray!0 k0!1786))))

(declare-fun b!576826 () Bool)

(declare-fun res!365009 () Bool)

(assert (=> b!576826 (=> (not res!365009) (not e!331852))))

(assert (=> b!576826 (= res!365009 (validKeyInArray!0 (select (arr!17260 a!2986) j!136)))))

(declare-fun b!576827 () Bool)

(declare-fun res!365007 () Bool)

(assert (=> b!576827 (=> (not res!365007) (not e!331852))))

(declare-fun arrayContainsKey!0 (array!35970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576827 (= res!365007 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!52998 res!365005) b!576824))

(assert (= (and b!576824 res!365006) b!576826))

(assert (= (and b!576826 res!365009) b!576825))

(assert (= (and b!576825 res!365008) b!576827))

(assert (= (and b!576827 res!365007) b!576823))

(declare-fun m!555793 () Bool)

(assert (=> start!52998 m!555793))

(declare-fun m!555795 () Bool)

(assert (=> start!52998 m!555795))

(declare-fun m!555797 () Bool)

(assert (=> b!576825 m!555797))

(declare-fun m!555799 () Bool)

(assert (=> b!576826 m!555799))

(assert (=> b!576826 m!555799))

(declare-fun m!555801 () Bool)

(assert (=> b!576826 m!555801))

(declare-fun m!555803 () Bool)

(assert (=> b!576827 m!555803))

(check-sat (not b!576826) (not b!576825) (not b!576827) (not start!52998))
(check-sat)
