; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119134 () Bool)

(assert start!119134)

(declare-fun b!1389365 () Bool)

(declare-fun res!929637 () Bool)

(declare-fun e!787027 () Bool)

(assert (=> b!1389365 (=> (not res!929637) (not e!787027))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!94989 0))(
  ( (array!94990 (arr!45856 (Array (_ BitVec 32) (_ BitVec 64))) (size!46407 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94989)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389365 (= res!929637 (and (= (size!46407 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46407 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46407 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389366 () Bool)

(declare-fun res!929638 () Bool)

(assert (=> b!1389366 (=> (not res!929638) (not e!787027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389366 (= res!929638 (validKeyInArray!0 (select (arr!45856 a!2901) j!112)))))

(declare-fun b!1389367 () Bool)

(declare-fun res!929635 () Bool)

(assert (=> b!1389367 (=> (not res!929635) (not e!787027))))

(assert (=> b!1389367 (= res!929635 (validKeyInArray!0 (select (arr!45856 a!2901) i!1037)))))

(declare-fun b!1389368 () Bool)

(declare-fun res!929636 () Bool)

(assert (=> b!1389368 (=> (not res!929636) (not e!787027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94989 (_ BitVec 32)) Bool)

(assert (=> b!1389368 (= res!929636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389369 () Bool)

(assert (=> b!1389369 (= e!787027 false)))

(declare-fun lt!610507 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389369 (= lt!610507 (toIndex!0 (select (arr!45856 a!2901) j!112) mask!2840))))

(declare-fun res!929639 () Bool)

(assert (=> start!119134 (=> (not res!929639) (not e!787027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119134 (= res!929639 (validMask!0 mask!2840))))

(assert (=> start!119134 e!787027))

(assert (=> start!119134 true))

(declare-fun array_inv!34801 (array!94989) Bool)

(assert (=> start!119134 (array_inv!34801 a!2901)))

(declare-fun b!1389370 () Bool)

(declare-fun res!929640 () Bool)

(assert (=> b!1389370 (=> (not res!929640) (not e!787027))))

(declare-datatypes ((List!32555 0))(
  ( (Nil!32552) (Cons!32551 (h!33769 (_ BitVec 64)) (t!47256 List!32555)) )
))
(declare-fun arrayNoDuplicates!0 (array!94989 (_ BitVec 32) List!32555) Bool)

(assert (=> b!1389370 (= res!929640 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32552))))

(assert (= (and start!119134 res!929639) b!1389365))

(assert (= (and b!1389365 res!929637) b!1389367))

(assert (= (and b!1389367 res!929635) b!1389366))

(assert (= (and b!1389366 res!929638) b!1389368))

(assert (= (and b!1389368 res!929636) b!1389370))

(assert (= (and b!1389370 res!929640) b!1389369))

(declare-fun m!1275065 () Bool)

(assert (=> b!1389369 m!1275065))

(assert (=> b!1389369 m!1275065))

(declare-fun m!1275067 () Bool)

(assert (=> b!1389369 m!1275067))

(assert (=> b!1389366 m!1275065))

(assert (=> b!1389366 m!1275065))

(declare-fun m!1275069 () Bool)

(assert (=> b!1389366 m!1275069))

(declare-fun m!1275071 () Bool)

(assert (=> b!1389368 m!1275071))

(declare-fun m!1275073 () Bool)

(assert (=> b!1389370 m!1275073))

(declare-fun m!1275075 () Bool)

(assert (=> b!1389367 m!1275075))

(assert (=> b!1389367 m!1275075))

(declare-fun m!1275077 () Bool)

(assert (=> b!1389367 m!1275077))

(declare-fun m!1275079 () Bool)

(assert (=> start!119134 m!1275079))

(declare-fun m!1275081 () Bool)

(assert (=> start!119134 m!1275081))

(push 1)

(assert (not b!1389367))

(assert (not b!1389368))

(assert (not start!119134))

(assert (not b!1389366))

(assert (not b!1389369))

(assert (not b!1389370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

