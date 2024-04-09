; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52996 () Bool)

(assert start!52996)

(declare-fun b!576808 () Bool)

(declare-fun res!364990 () Bool)

(declare-fun e!331845 () Bool)

(assert (=> b!576808 (=> (not res!364990) (not e!331845))))

(declare-datatypes ((array!35968 0))(
  ( (array!35969 (arr!17259 (Array (_ BitVec 32) (_ BitVec 64))) (size!17623 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35968)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576808 (= res!364990 (validKeyInArray!0 (select (arr!17259 a!2986) j!136)))))

(declare-fun b!576809 () Bool)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!576809 (= e!331845 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun b!576810 () Bool)

(declare-fun res!364992 () Bool)

(assert (=> b!576810 (=> (not res!364992) (not e!331845))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576810 (= res!364992 (and (= (size!17623 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17623 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17623 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576811 () Bool)

(declare-fun res!364993 () Bool)

(assert (=> b!576811 (=> (not res!364993) (not e!331845))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576811 (= res!364993 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!576812 () Bool)

(declare-fun res!364991 () Bool)

(assert (=> b!576812 (=> (not res!364991) (not e!331845))))

(assert (=> b!576812 (= res!364991 (validKeyInArray!0 k!1786))))

(declare-fun res!364994 () Bool)

(assert (=> start!52996 (=> (not res!364994) (not e!331845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52996 (= res!364994 (validMask!0 mask!3053))))

(assert (=> start!52996 e!331845))

(assert (=> start!52996 true))

(declare-fun array_inv!13033 (array!35968) Bool)

(assert (=> start!52996 (array_inv!13033 a!2986)))

(assert (= (and start!52996 res!364994) b!576810))

(assert (= (and b!576810 res!364992) b!576808))

(assert (= (and b!576808 res!364990) b!576812))

(assert (= (and b!576812 res!364991) b!576811))

(assert (= (and b!576811 res!364993) b!576809))

(declare-fun m!555781 () Bool)

(assert (=> b!576808 m!555781))

(assert (=> b!576808 m!555781))

(declare-fun m!555783 () Bool)

(assert (=> b!576808 m!555783))

(declare-fun m!555785 () Bool)

(assert (=> b!576811 m!555785))

(declare-fun m!555787 () Bool)

(assert (=> b!576812 m!555787))

(declare-fun m!555789 () Bool)

(assert (=> start!52996 m!555789))

(declare-fun m!555791 () Bool)

(assert (=> start!52996 m!555791))

(push 1)

(assert (not b!576811))

(assert (not b!576812))

(assert (not b!576808))

(assert (not start!52996))

(check-sat)

