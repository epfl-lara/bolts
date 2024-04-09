; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118100 () Bool)

(assert start!118100)

(declare-fun b!1382329 () Bool)

(declare-fun e!783542 () Bool)

(assert (=> b!1382329 (= e!783542 false)))

(declare-fun lt!608359 () Bool)

(declare-datatypes ((array!94380 0))(
  ( (array!94381 (arr!45567 (Array (_ BitVec 32) (_ BitVec 64))) (size!46118 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94380)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94380 (_ BitVec 32)) Bool)

(assert (=> b!1382329 (= lt!608359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382326 () Bool)

(declare-fun res!924027 () Bool)

(assert (=> b!1382326 (=> (not res!924027) (not e!783542))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382326 (= res!924027 (and (= (size!46118 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46118 a!2971))))))

(declare-fun res!924029 () Bool)

(assert (=> start!118100 (=> (not res!924029) (not e!783542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118100 (= res!924029 (validMask!0 mask!3034))))

(assert (=> start!118100 e!783542))

(assert (=> start!118100 true))

(declare-fun array_inv!34512 (array!94380) Bool)

(assert (=> start!118100 (array_inv!34512 a!2971)))

(declare-fun b!1382327 () Bool)

(declare-fun res!924028 () Bool)

(assert (=> b!1382327 (=> (not res!924028) (not e!783542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382327 (= res!924028 (validKeyInArray!0 (select (arr!45567 a!2971) i!1094)))))

(declare-fun b!1382328 () Bool)

(declare-fun res!924030 () Bool)

(assert (=> b!1382328 (=> (not res!924030) (not e!783542))))

(declare-datatypes ((List!32281 0))(
  ( (Nil!32278) (Cons!32277 (h!33486 (_ BitVec 64)) (t!46982 List!32281)) )
))
(declare-fun arrayNoDuplicates!0 (array!94380 (_ BitVec 32) List!32281) Bool)

(assert (=> b!1382328 (= res!924030 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32278))))

(assert (= (and start!118100 res!924029) b!1382326))

(assert (= (and b!1382326 res!924027) b!1382327))

(assert (= (and b!1382327 res!924028) b!1382328))

(assert (= (and b!1382328 res!924030) b!1382329))

(declare-fun m!1267527 () Bool)

(assert (=> b!1382329 m!1267527))

(declare-fun m!1267529 () Bool)

(assert (=> start!118100 m!1267529))

(declare-fun m!1267531 () Bool)

(assert (=> start!118100 m!1267531))

(declare-fun m!1267533 () Bool)

(assert (=> b!1382327 m!1267533))

(assert (=> b!1382327 m!1267533))

(declare-fun m!1267535 () Bool)

(assert (=> b!1382327 m!1267535))

(declare-fun m!1267537 () Bool)

(assert (=> b!1382328 m!1267537))

(push 1)

(assert (not start!118100))

(assert (not b!1382328))

(assert (not b!1382327))

(assert (not b!1382329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

