; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117942 () Bool)

(assert start!117942)

(declare-fun res!923138 () Bool)

(declare-fun e!783095 () Bool)

(assert (=> start!117942 (=> (not res!923138) (not e!783095))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117942 (= res!923138 (validMask!0 mask!3034))))

(assert (=> start!117942 e!783095))

(assert (=> start!117942 true))

(declare-datatypes ((array!94249 0))(
  ( (array!94250 (arr!45503 (Array (_ BitVec 32) (_ BitVec 64))) (size!46054 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94249)

(declare-fun array_inv!34448 (array!94249) Bool)

(assert (=> start!117942 (array_inv!34448 a!2971)))

(declare-fun b!1381400 () Bool)

(declare-fun res!923139 () Bool)

(assert (=> b!1381400 (=> (not res!923139) (not e!783095))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381400 (= res!923139 (and (= (size!46054 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46054 a!2971))))))

(declare-fun b!1381401 () Bool)

(declare-fun res!923137 () Bool)

(assert (=> b!1381401 (=> (not res!923137) (not e!783095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381401 (= res!923137 (validKeyInArray!0 (select (arr!45503 a!2971) i!1094)))))

(declare-fun b!1381402 () Bool)

(assert (=> b!1381402 (= e!783095 false)))

(declare-fun lt!608158 () Bool)

(declare-datatypes ((List!32217 0))(
  ( (Nil!32214) (Cons!32213 (h!33422 (_ BitVec 64)) (t!46918 List!32217)) )
))
(declare-fun arrayNoDuplicates!0 (array!94249 (_ BitVec 32) List!32217) Bool)

(assert (=> b!1381402 (= lt!608158 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32214))))

(assert (= (and start!117942 res!923138) b!1381400))

(assert (= (and b!1381400 res!923139) b!1381401))

(assert (= (and b!1381401 res!923137) b!1381402))

(declare-fun m!1266649 () Bool)

(assert (=> start!117942 m!1266649))

(declare-fun m!1266651 () Bool)

(assert (=> start!117942 m!1266651))

(declare-fun m!1266653 () Bool)

(assert (=> b!1381401 m!1266653))

(assert (=> b!1381401 m!1266653))

(declare-fun m!1266655 () Bool)

(assert (=> b!1381401 m!1266655))

(declare-fun m!1266657 () Bool)

(assert (=> b!1381402 m!1266657))

(check-sat (not b!1381401) (not start!117942) (not b!1381402))
