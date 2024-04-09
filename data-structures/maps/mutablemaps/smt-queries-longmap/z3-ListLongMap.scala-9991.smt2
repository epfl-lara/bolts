; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117996 () Bool)

(assert start!117996)

(declare-fun b!1381722 () Bool)

(declare-fun res!923459 () Bool)

(declare-fun e!783257 () Bool)

(assert (=> b!1381722 (=> (not res!923459) (not e!783257))))

(declare-datatypes ((array!94303 0))(
  ( (array!94304 (arr!45530 (Array (_ BitVec 32) (_ BitVec 64))) (size!46081 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94303)

(declare-datatypes ((List!32244 0))(
  ( (Nil!32241) (Cons!32240 (h!33449 (_ BitVec 64)) (t!46945 List!32244)) )
))
(declare-fun arrayNoDuplicates!0 (array!94303 (_ BitVec 32) List!32244) Bool)

(assert (=> b!1381722 (= res!923459 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32241))))

(declare-fun res!923460 () Bool)

(assert (=> start!117996 (=> (not res!923460) (not e!783257))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117996 (= res!923460 (validMask!0 mask!3034))))

(assert (=> start!117996 e!783257))

(assert (=> start!117996 true))

(declare-fun array_inv!34475 (array!94303) Bool)

(assert (=> start!117996 (array_inv!34475 a!2971)))

(declare-fun b!1381720 () Bool)

(declare-fun res!923458 () Bool)

(assert (=> b!1381720 (=> (not res!923458) (not e!783257))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381720 (= res!923458 (and (= (size!46081 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46081 a!2971))))))

(declare-fun b!1381721 () Bool)

(declare-fun res!923457 () Bool)

(assert (=> b!1381721 (=> (not res!923457) (not e!783257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381721 (= res!923457 (validKeyInArray!0 (select (arr!45530 a!2971) i!1094)))))

(declare-fun b!1381723 () Bool)

(assert (=> b!1381723 (= e!783257 false)))

(declare-fun lt!608230 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94303 (_ BitVec 32)) Bool)

(assert (=> b!1381723 (= lt!608230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(assert (= (and start!117996 res!923460) b!1381720))

(assert (= (and b!1381720 res!923458) b!1381721))

(assert (= (and b!1381721 res!923457) b!1381722))

(assert (= (and b!1381722 res!923459) b!1381723))

(declare-fun m!1266963 () Bool)

(assert (=> b!1381722 m!1266963))

(declare-fun m!1266965 () Bool)

(assert (=> start!117996 m!1266965))

(declare-fun m!1266967 () Bool)

(assert (=> start!117996 m!1266967))

(declare-fun m!1266969 () Bool)

(assert (=> b!1381721 m!1266969))

(assert (=> b!1381721 m!1266969))

(declare-fun m!1266971 () Bool)

(assert (=> b!1381721 m!1266971))

(declare-fun m!1266973 () Bool)

(assert (=> b!1381723 m!1266973))

(check-sat (not b!1381721) (not start!117996) (not b!1381722) (not b!1381723))
(check-sat)
