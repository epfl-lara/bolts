; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118126 () Bool)

(assert start!118126)

(declare-fun b!1382491 () Bool)

(declare-fun res!924192 () Bool)

(declare-fun e!783619 () Bool)

(assert (=> b!1382491 (=> (not res!924192) (not e!783619))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94406 0))(
  ( (array!94407 (arr!45580 (Array (_ BitVec 32) (_ BitVec 64))) (size!46131 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94406)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382491 (= res!924192 (and (= (size!46131 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46131 a!2971))))))

(declare-fun b!1382494 () Bool)

(assert (=> b!1382494 (= e!783619 false)))

(declare-fun lt!608389 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94406 (_ BitVec 32)) Bool)

(assert (=> b!1382494 (= lt!608389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!924193 () Bool)

(assert (=> start!118126 (=> (not res!924193) (not e!783619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118126 (= res!924193 (validMask!0 mask!3034))))

(assert (=> start!118126 e!783619))

(assert (=> start!118126 true))

(declare-fun array_inv!34525 (array!94406) Bool)

(assert (=> start!118126 (array_inv!34525 a!2971)))

(declare-fun b!1382492 () Bool)

(declare-fun res!924195 () Bool)

(assert (=> b!1382492 (=> (not res!924195) (not e!783619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382492 (= res!924195 (validKeyInArray!0 (select (arr!45580 a!2971) i!1094)))))

(declare-fun b!1382493 () Bool)

(declare-fun res!924194 () Bool)

(assert (=> b!1382493 (=> (not res!924194) (not e!783619))))

(declare-datatypes ((List!32294 0))(
  ( (Nil!32291) (Cons!32290 (h!33499 (_ BitVec 64)) (t!46995 List!32294)) )
))
(declare-fun arrayNoDuplicates!0 (array!94406 (_ BitVec 32) List!32294) Bool)

(assert (=> b!1382493 (= res!924194 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32291))))

(assert (= (and start!118126 res!924193) b!1382491))

(assert (= (and b!1382491 res!924192) b!1382492))

(assert (= (and b!1382492 res!924195) b!1382493))

(assert (= (and b!1382493 res!924194) b!1382494))

(declare-fun m!1267683 () Bool)

(assert (=> b!1382494 m!1267683))

(declare-fun m!1267685 () Bool)

(assert (=> start!118126 m!1267685))

(declare-fun m!1267687 () Bool)

(assert (=> start!118126 m!1267687))

(declare-fun m!1267689 () Bool)

(assert (=> b!1382492 m!1267689))

(assert (=> b!1382492 m!1267689))

(declare-fun m!1267691 () Bool)

(assert (=> b!1382492 m!1267691))

(declare-fun m!1267693 () Bool)

(assert (=> b!1382493 m!1267693))

(push 1)

(assert (not b!1382494))

(assert (not start!118126))

(assert (not b!1382493))

(assert (not b!1382492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

