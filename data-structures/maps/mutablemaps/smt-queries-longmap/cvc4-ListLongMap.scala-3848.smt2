; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52980 () Bool)

(assert start!52980)

(declare-fun res!364976 () Bool)

(declare-fun e!331840 () Bool)

(assert (=> start!52980 (=> (not res!364976) (not e!331840))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52980 (= res!364976 (validMask!0 mask!3053))))

(assert (=> start!52980 e!331840))

(assert (=> start!52980 true))

(declare-datatypes ((array!35965 0))(
  ( (array!35966 (arr!17258 (Array (_ BitVec 32) (_ BitVec 64))) (size!17622 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35965)

(declare-fun array_inv!13032 (array!35965) Bool)

(assert (=> start!52980 (array_inv!13032 a!2986)))

(declare-fun b!576796 () Bool)

(declare-fun res!364978 () Bool)

(assert (=> b!576796 (=> (not res!364978) (not e!331840))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576796 (= res!364978 (validKeyInArray!0 k!1786))))

(declare-fun b!576797 () Bool)

(assert (=> b!576797 (= e!331840 (and (bvslt #b00000000000000000000000000000000 (size!17622 a!2986)) (bvsge (size!17622 a!2986) #b01111111111111111111111111111111)))))

(declare-fun b!576794 () Bool)

(declare-fun res!364979 () Bool)

(assert (=> b!576794 (=> (not res!364979) (not e!331840))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576794 (= res!364979 (and (= (size!17622 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17622 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17622 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576795 () Bool)

(declare-fun res!364977 () Bool)

(assert (=> b!576795 (=> (not res!364977) (not e!331840))))

(assert (=> b!576795 (= res!364977 (validKeyInArray!0 (select (arr!17258 a!2986) j!136)))))

(assert (= (and start!52980 res!364976) b!576794))

(assert (= (and b!576794 res!364979) b!576795))

(assert (= (and b!576795 res!364977) b!576796))

(assert (= (and b!576796 res!364978) b!576797))

(declare-fun m!555771 () Bool)

(assert (=> start!52980 m!555771))

(declare-fun m!555773 () Bool)

(assert (=> start!52980 m!555773))

(declare-fun m!555775 () Bool)

(assert (=> b!576796 m!555775))

(declare-fun m!555777 () Bool)

(assert (=> b!576795 m!555777))

(assert (=> b!576795 m!555777))

(declare-fun m!555779 () Bool)

(assert (=> b!576795 m!555779))

(push 1)

(assert (not b!576796))

(assert (not start!52980))

(assert (not b!576795))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

