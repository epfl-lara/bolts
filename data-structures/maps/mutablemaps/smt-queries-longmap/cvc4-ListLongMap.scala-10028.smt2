; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118316 () Bool)

(assert start!118316)

(declare-fun b!1383307 () Bool)

(declare-fun e!784060 () Bool)

(assert (=> b!1383307 (= e!784060 false)))

(declare-fun lt!608542 () Bool)

(declare-datatypes ((array!94537 0))(
  ( (array!94538 (arr!45642 (Array (_ BitVec 32) (_ BitVec 64))) (size!46193 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94537)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94537 (_ BitVec 32)) Bool)

(assert (=> b!1383307 (= lt!608542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383305 () Bool)

(declare-fun res!925007 () Bool)

(assert (=> b!1383305 (=> (not res!925007) (not e!784060))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383305 (= res!925007 (validKeyInArray!0 (select (arr!45642 a!2938) i!1065)))))

(declare-fun b!1383306 () Bool)

(declare-fun res!925005 () Bool)

(assert (=> b!1383306 (=> (not res!925005) (not e!784060))))

(declare-datatypes ((List!32350 0))(
  ( (Nil!32347) (Cons!32346 (h!33555 (_ BitVec 64)) (t!47051 List!32350)) )
))
(declare-fun arrayNoDuplicates!0 (array!94537 (_ BitVec 32) List!32350) Bool)

(assert (=> b!1383306 (= res!925005 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32347))))

(declare-fun res!925008 () Bool)

(assert (=> start!118316 (=> (not res!925008) (not e!784060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118316 (= res!925008 (validMask!0 mask!2987))))

(assert (=> start!118316 e!784060))

(assert (=> start!118316 true))

(declare-fun array_inv!34587 (array!94537) Bool)

(assert (=> start!118316 (array_inv!34587 a!2938)))

(declare-fun b!1383304 () Bool)

(declare-fun res!925006 () Bool)

(assert (=> b!1383304 (=> (not res!925006) (not e!784060))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383304 (= res!925006 (and (= (size!46193 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46193 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46193 a!2938))))))

(assert (= (and start!118316 res!925008) b!1383304))

(assert (= (and b!1383304 res!925006) b!1383305))

(assert (= (and b!1383305 res!925007) b!1383306))

(assert (= (and b!1383306 res!925005) b!1383307))

(declare-fun m!1268465 () Bool)

(assert (=> b!1383307 m!1268465))

(declare-fun m!1268467 () Bool)

(assert (=> b!1383305 m!1268467))

(assert (=> b!1383305 m!1268467))

(declare-fun m!1268469 () Bool)

(assert (=> b!1383305 m!1268469))

(declare-fun m!1268471 () Bool)

(assert (=> b!1383306 m!1268471))

(declare-fun m!1268473 () Bool)

(assert (=> start!118316 m!1268473))

(declare-fun m!1268475 () Bool)

(assert (=> start!118316 m!1268475))

(push 1)

(assert (not b!1383307))

(assert (not start!118316))

(assert (not b!1383306))

(assert (not b!1383305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

