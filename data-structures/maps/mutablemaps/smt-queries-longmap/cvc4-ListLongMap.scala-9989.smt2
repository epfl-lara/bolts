; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117986 () Bool)

(assert start!117986)

(declare-fun b!1381661 () Bool)

(declare-fun res!923400 () Bool)

(declare-fun e!783226 () Bool)

(assert (=> b!1381661 (=> (not res!923400) (not e!783226))))

(declare-datatypes ((array!94293 0))(
  ( (array!94294 (arr!45525 (Array (_ BitVec 32) (_ BitVec 64))) (size!46076 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94293)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381661 (= res!923400 (validKeyInArray!0 (select (arr!45525 a!2971) i!1094)))))

(declare-fun b!1381662 () Bool)

(declare-fun res!923397 () Bool)

(assert (=> b!1381662 (=> (not res!923397) (not e!783226))))

(declare-datatypes ((List!32239 0))(
  ( (Nil!32236) (Cons!32235 (h!33444 (_ BitVec 64)) (t!46940 List!32239)) )
))
(declare-fun arrayNoDuplicates!0 (array!94293 (_ BitVec 32) List!32239) Bool)

(assert (=> b!1381662 (= res!923397 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32236))))

(declare-fun res!923398 () Bool)

(assert (=> start!117986 (=> (not res!923398) (not e!783226))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117986 (= res!923398 (validMask!0 mask!3034))))

(assert (=> start!117986 e!783226))

(assert (=> start!117986 true))

(declare-fun array_inv!34470 (array!94293) Bool)

(assert (=> start!117986 (array_inv!34470 a!2971)))

(declare-fun b!1381663 () Bool)

(assert (=> b!1381663 (= e!783226 false)))

(declare-fun lt!608215 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94293 (_ BitVec 32)) Bool)

(assert (=> b!1381663 (= lt!608215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381660 () Bool)

(declare-fun res!923399 () Bool)

(assert (=> b!1381660 (=> (not res!923399) (not e!783226))))

(assert (=> b!1381660 (= res!923399 (and (= (size!46076 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46076 a!2971))))))

(assert (= (and start!117986 res!923398) b!1381660))

(assert (= (and b!1381660 res!923399) b!1381661))

(assert (= (and b!1381661 res!923400) b!1381662))

(assert (= (and b!1381662 res!923397) b!1381663))

(declare-fun m!1266903 () Bool)

(assert (=> b!1381661 m!1266903))

(assert (=> b!1381661 m!1266903))

(declare-fun m!1266905 () Bool)

(assert (=> b!1381661 m!1266905))

(declare-fun m!1266907 () Bool)

(assert (=> b!1381662 m!1266907))

(declare-fun m!1266909 () Bool)

(assert (=> start!117986 m!1266909))

(declare-fun m!1266911 () Bool)

(assert (=> start!117986 m!1266911))

(declare-fun m!1266913 () Bool)

(assert (=> b!1381663 m!1266913))

(push 1)

(assert (not b!1381663))

(assert (not start!117986))

(assert (not b!1381662))

(assert (not b!1381661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

