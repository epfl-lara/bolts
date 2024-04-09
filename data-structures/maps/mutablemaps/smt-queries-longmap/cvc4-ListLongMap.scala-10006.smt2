; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118118 () Bool)

(assert start!118118)

(declare-fun b!1382444 () Bool)

(declare-fun res!924144 () Bool)

(declare-fun e!783596 () Bool)

(assert (=> b!1382444 (=> (not res!924144) (not e!783596))))

(declare-datatypes ((array!94398 0))(
  ( (array!94399 (arr!45576 (Array (_ BitVec 32) (_ BitVec 64))) (size!46127 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94398)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382444 (= res!924144 (validKeyInArray!0 (select (arr!45576 a!2971) i!1094)))))

(declare-fun b!1382443 () Bool)

(declare-fun res!924147 () Bool)

(assert (=> b!1382443 (=> (not res!924147) (not e!783596))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1382443 (= res!924147 (and (= (size!46127 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46127 a!2971))))))

(declare-fun b!1382445 () Bool)

(declare-fun res!924146 () Bool)

(assert (=> b!1382445 (=> (not res!924146) (not e!783596))))

(declare-datatypes ((List!32290 0))(
  ( (Nil!32287) (Cons!32286 (h!33495 (_ BitVec 64)) (t!46991 List!32290)) )
))
(declare-fun arrayNoDuplicates!0 (array!94398 (_ BitVec 32) List!32290) Bool)

(assert (=> b!1382445 (= res!924146 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32287))))

(declare-fun res!924145 () Bool)

(assert (=> start!118118 (=> (not res!924145) (not e!783596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118118 (= res!924145 (validMask!0 mask!3034))))

(assert (=> start!118118 e!783596))

(assert (=> start!118118 true))

(declare-fun array_inv!34521 (array!94398) Bool)

(assert (=> start!118118 (array_inv!34521 a!2971)))

(declare-fun b!1382446 () Bool)

(assert (=> b!1382446 (= e!783596 false)))

(declare-fun lt!608377 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94398 (_ BitVec 32)) Bool)

(assert (=> b!1382446 (= lt!608377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!118118 res!924145) b!1382443))

(assert (= (and b!1382443 res!924147) b!1382444))

(assert (= (and b!1382444 res!924144) b!1382445))

(assert (= (and b!1382445 res!924146) b!1382446))

(declare-fun m!1267635 () Bool)

(assert (=> b!1382444 m!1267635))

(assert (=> b!1382444 m!1267635))

(declare-fun m!1267637 () Bool)

(assert (=> b!1382444 m!1267637))

(declare-fun m!1267639 () Bool)

(assert (=> b!1382445 m!1267639))

(declare-fun m!1267641 () Bool)

(assert (=> start!118118 m!1267641))

(declare-fun m!1267643 () Bool)

(assert (=> start!118118 m!1267643))

(declare-fun m!1267645 () Bool)

(assert (=> b!1382446 m!1267645))

(push 1)

(assert (not b!1382446))

(assert (not start!118118))

(assert (not b!1382445))

(assert (not b!1382444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

