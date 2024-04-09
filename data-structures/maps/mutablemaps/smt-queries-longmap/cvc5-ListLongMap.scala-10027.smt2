; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118306 () Bool)

(assert start!118306)

(declare-fun res!924947 () Bool)

(declare-fun e!784031 () Bool)

(assert (=> start!118306 (=> (not res!924947) (not e!784031))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118306 (= res!924947 (validMask!0 mask!2987))))

(assert (=> start!118306 e!784031))

(assert (=> start!118306 true))

(declare-datatypes ((array!94527 0))(
  ( (array!94528 (arr!45637 (Array (_ BitVec 32) (_ BitVec 64))) (size!46188 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94527)

(declare-fun array_inv!34582 (array!94527) Bool)

(assert (=> start!118306 (array_inv!34582 a!2938)))

(declare-fun b!1383245 () Bool)

(declare-fun res!924945 () Bool)

(assert (=> b!1383245 (=> (not res!924945) (not e!784031))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383245 (= res!924945 (validKeyInArray!0 (select (arr!45637 a!2938) i!1065)))))

(declare-fun b!1383244 () Bool)

(declare-fun res!924946 () Bool)

(assert (=> b!1383244 (=> (not res!924946) (not e!784031))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383244 (= res!924946 (and (= (size!46188 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46188 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46188 a!2938))))))

(declare-fun b!1383246 () Bool)

(declare-fun res!924948 () Bool)

(assert (=> b!1383246 (=> (not res!924948) (not e!784031))))

(declare-datatypes ((List!32345 0))(
  ( (Nil!32342) (Cons!32341 (h!33550 (_ BitVec 64)) (t!47046 List!32345)) )
))
(declare-fun arrayNoDuplicates!0 (array!94527 (_ BitVec 32) List!32345) Bool)

(assert (=> b!1383246 (= res!924948 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32342))))

(declare-fun b!1383247 () Bool)

(assert (=> b!1383247 (= e!784031 false)))

(declare-fun lt!608527 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94527 (_ BitVec 32)) Bool)

(assert (=> b!1383247 (= lt!608527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118306 res!924947) b!1383244))

(assert (= (and b!1383244 res!924946) b!1383245))

(assert (= (and b!1383245 res!924945) b!1383246))

(assert (= (and b!1383246 res!924948) b!1383247))

(declare-fun m!1268405 () Bool)

(assert (=> start!118306 m!1268405))

(declare-fun m!1268407 () Bool)

(assert (=> start!118306 m!1268407))

(declare-fun m!1268409 () Bool)

(assert (=> b!1383245 m!1268409))

(assert (=> b!1383245 m!1268409))

(declare-fun m!1268411 () Bool)

(assert (=> b!1383245 m!1268411))

(declare-fun m!1268413 () Bool)

(assert (=> b!1383246 m!1268413))

(declare-fun m!1268415 () Bool)

(assert (=> b!1383247 m!1268415))

(push 1)

(assert (not b!1383247))

(assert (not start!118306))

(assert (not b!1383246))

(assert (not b!1383245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

