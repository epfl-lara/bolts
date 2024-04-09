; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117976 () Bool)

(assert start!117976)

(declare-fun b!1381600 () Bool)

(declare-fun res!923340 () Bool)

(declare-fun e!783197 () Bool)

(assert (=> b!1381600 (=> (not res!923340) (not e!783197))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94283 0))(
  ( (array!94284 (arr!45520 (Array (_ BitVec 32) (_ BitVec 64))) (size!46071 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94283)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381600 (= res!923340 (and (= (size!46071 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46071 a!2971))))))

(declare-fun b!1381601 () Bool)

(declare-fun res!923338 () Bool)

(assert (=> b!1381601 (=> (not res!923338) (not e!783197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381601 (= res!923338 (validKeyInArray!0 (select (arr!45520 a!2971) i!1094)))))

(declare-fun b!1381602 () Bool)

(declare-fun res!923337 () Bool)

(assert (=> b!1381602 (=> (not res!923337) (not e!783197))))

(declare-datatypes ((List!32234 0))(
  ( (Nil!32231) (Cons!32230 (h!33439 (_ BitVec 64)) (t!46935 List!32234)) )
))
(declare-fun arrayNoDuplicates!0 (array!94283 (_ BitVec 32) List!32234) Bool)

(assert (=> b!1381602 (= res!923337 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32231))))

(declare-fun res!923339 () Bool)

(assert (=> start!117976 (=> (not res!923339) (not e!783197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117976 (= res!923339 (validMask!0 mask!3034))))

(assert (=> start!117976 e!783197))

(assert (=> start!117976 true))

(declare-fun array_inv!34465 (array!94283) Bool)

(assert (=> start!117976 (array_inv!34465 a!2971)))

(declare-fun b!1381603 () Bool)

(assert (=> b!1381603 (= e!783197 false)))

(declare-fun lt!608200 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94283 (_ BitVec 32)) Bool)

(assert (=> b!1381603 (= lt!608200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!117976 res!923339) b!1381600))

(assert (= (and b!1381600 res!923340) b!1381601))

(assert (= (and b!1381601 res!923338) b!1381602))

(assert (= (and b!1381602 res!923337) b!1381603))

(declare-fun m!1266843 () Bool)

(assert (=> b!1381601 m!1266843))

(assert (=> b!1381601 m!1266843))

(declare-fun m!1266845 () Bool)

(assert (=> b!1381601 m!1266845))

(declare-fun m!1266847 () Bool)

(assert (=> b!1381602 m!1266847))

(declare-fun m!1266849 () Bool)

(assert (=> start!117976 m!1266849))

(declare-fun m!1266851 () Bool)

(assert (=> start!117976 m!1266851))

(declare-fun m!1266853 () Bool)

(assert (=> b!1381603 m!1266853))

(push 1)

(assert (not b!1381601))

(assert (not start!117976))

(assert (not b!1381602))

(assert (not b!1381603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

