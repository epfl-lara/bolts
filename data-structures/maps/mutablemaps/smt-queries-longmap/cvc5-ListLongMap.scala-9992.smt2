; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118000 () Bool)

(assert start!118000)

(declare-fun b!1381745 () Bool)

(declare-fun res!923482 () Bool)

(declare-fun e!783269 () Bool)

(assert (=> b!1381745 (=> (not res!923482) (not e!783269))))

(declare-datatypes ((array!94307 0))(
  ( (array!94308 (arr!45532 (Array (_ BitVec 32) (_ BitVec 64))) (size!46083 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94307)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381745 (= res!923482 (validKeyInArray!0 (select (arr!45532 a!2971) i!1094)))))

(declare-fun b!1381744 () Bool)

(declare-fun res!923481 () Bool)

(assert (=> b!1381744 (=> (not res!923481) (not e!783269))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1381744 (= res!923481 (and (= (size!46083 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46083 a!2971))))))

(declare-fun b!1381746 () Bool)

(declare-fun res!923484 () Bool)

(assert (=> b!1381746 (=> (not res!923484) (not e!783269))))

(declare-datatypes ((List!32246 0))(
  ( (Nil!32243) (Cons!32242 (h!33451 (_ BitVec 64)) (t!46947 List!32246)) )
))
(declare-fun arrayNoDuplicates!0 (array!94307 (_ BitVec 32) List!32246) Bool)

(assert (=> b!1381746 (= res!923484 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32243))))

(declare-fun b!1381747 () Bool)

(assert (=> b!1381747 (= e!783269 false)))

(declare-fun lt!608236 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94307 (_ BitVec 32)) Bool)

(assert (=> b!1381747 (= lt!608236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!923483 () Bool)

(assert (=> start!118000 (=> (not res!923483) (not e!783269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118000 (= res!923483 (validMask!0 mask!3034))))

(assert (=> start!118000 e!783269))

(assert (=> start!118000 true))

(declare-fun array_inv!34477 (array!94307) Bool)

(assert (=> start!118000 (array_inv!34477 a!2971)))

(assert (= (and start!118000 res!923483) b!1381744))

(assert (= (and b!1381744 res!923481) b!1381745))

(assert (= (and b!1381745 res!923482) b!1381746))

(assert (= (and b!1381746 res!923484) b!1381747))

(declare-fun m!1266987 () Bool)

(assert (=> b!1381745 m!1266987))

(assert (=> b!1381745 m!1266987))

(declare-fun m!1266989 () Bool)

(assert (=> b!1381745 m!1266989))

(declare-fun m!1266991 () Bool)

(assert (=> b!1381746 m!1266991))

(declare-fun m!1266993 () Bool)

(assert (=> b!1381747 m!1266993))

(declare-fun m!1266995 () Bool)

(assert (=> start!118000 m!1266995))

(declare-fun m!1266997 () Bool)

(assert (=> start!118000 m!1266997))

(push 1)

(assert (not b!1381747))

(assert (not start!118000))

(assert (not b!1381746))

(assert (not b!1381745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

