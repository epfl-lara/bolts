; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117972 () Bool)

(assert start!117972)

(declare-fun b!1381576 () Bool)

(declare-fun res!923316 () Bool)

(declare-fun e!783184 () Bool)

(assert (=> b!1381576 (=> (not res!923316) (not e!783184))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94279 0))(
  ( (array!94280 (arr!45518 (Array (_ BitVec 32) (_ BitVec 64))) (size!46069 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94279)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381576 (= res!923316 (and (= (size!46069 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46069 a!2971))))))

(declare-fun res!923315 () Bool)

(assert (=> start!117972 (=> (not res!923315) (not e!783184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117972 (= res!923315 (validMask!0 mask!3034))))

(assert (=> start!117972 e!783184))

(assert (=> start!117972 true))

(declare-fun array_inv!34463 (array!94279) Bool)

(assert (=> start!117972 (array_inv!34463 a!2971)))

(declare-fun b!1381578 () Bool)

(declare-fun res!923314 () Bool)

(assert (=> b!1381578 (=> (not res!923314) (not e!783184))))

(declare-datatypes ((List!32232 0))(
  ( (Nil!32229) (Cons!32228 (h!33437 (_ BitVec 64)) (t!46933 List!32232)) )
))
(declare-fun arrayNoDuplicates!0 (array!94279 (_ BitVec 32) List!32232) Bool)

(assert (=> b!1381578 (= res!923314 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32229))))

(declare-fun b!1381579 () Bool)

(assert (=> b!1381579 (= e!783184 false)))

(declare-fun lt!608194 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94279 (_ BitVec 32)) Bool)

(assert (=> b!1381579 (= lt!608194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381577 () Bool)

(declare-fun res!923313 () Bool)

(assert (=> b!1381577 (=> (not res!923313) (not e!783184))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381577 (= res!923313 (validKeyInArray!0 (select (arr!45518 a!2971) i!1094)))))

(assert (= (and start!117972 res!923315) b!1381576))

(assert (= (and b!1381576 res!923316) b!1381577))

(assert (= (and b!1381577 res!923313) b!1381578))

(assert (= (and b!1381578 res!923314) b!1381579))

(declare-fun m!1266819 () Bool)

(assert (=> start!117972 m!1266819))

(declare-fun m!1266821 () Bool)

(assert (=> start!117972 m!1266821))

(declare-fun m!1266823 () Bool)

(assert (=> b!1381578 m!1266823))

(declare-fun m!1266825 () Bool)

(assert (=> b!1381579 m!1266825))

(declare-fun m!1266827 () Bool)

(assert (=> b!1381577 m!1266827))

(assert (=> b!1381577 m!1266827))

(declare-fun m!1266829 () Bool)

(assert (=> b!1381577 m!1266829))

(check-sat (not b!1381579) (not start!117972) (not b!1381578) (not b!1381577))
