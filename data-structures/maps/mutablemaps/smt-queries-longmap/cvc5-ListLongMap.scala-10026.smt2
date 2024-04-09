; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118300 () Bool)

(assert start!118300)

(declare-fun b!1383208 () Bool)

(declare-fun res!924910 () Bool)

(declare-fun e!784012 () Bool)

(assert (=> b!1383208 (=> (not res!924910) (not e!784012))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94521 0))(
  ( (array!94522 (arr!45634 (Array (_ BitVec 32) (_ BitVec 64))) (size!46185 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94521)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383208 (= res!924910 (and (= (size!46185 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46185 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46185 a!2938))))))

(declare-fun res!924909 () Bool)

(assert (=> start!118300 (=> (not res!924909) (not e!784012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118300 (= res!924909 (validMask!0 mask!2987))))

(assert (=> start!118300 e!784012))

(assert (=> start!118300 true))

(declare-fun array_inv!34579 (array!94521) Bool)

(assert (=> start!118300 (array_inv!34579 a!2938)))

(declare-fun b!1383210 () Bool)

(declare-fun res!924911 () Bool)

(assert (=> b!1383210 (=> (not res!924911) (not e!784012))))

(declare-datatypes ((List!32342 0))(
  ( (Nil!32339) (Cons!32338 (h!33547 (_ BitVec 64)) (t!47043 List!32342)) )
))
(declare-fun arrayNoDuplicates!0 (array!94521 (_ BitVec 32) List!32342) Bool)

(assert (=> b!1383210 (= res!924911 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32339))))

(declare-fun b!1383211 () Bool)

(assert (=> b!1383211 (= e!784012 false)))

(declare-fun lt!608518 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94521 (_ BitVec 32)) Bool)

(assert (=> b!1383211 (= lt!608518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383209 () Bool)

(declare-fun res!924912 () Bool)

(assert (=> b!1383209 (=> (not res!924912) (not e!784012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383209 (= res!924912 (validKeyInArray!0 (select (arr!45634 a!2938) i!1065)))))

(assert (= (and start!118300 res!924909) b!1383208))

(assert (= (and b!1383208 res!924910) b!1383209))

(assert (= (and b!1383209 res!924912) b!1383210))

(assert (= (and b!1383210 res!924911) b!1383211))

(declare-fun m!1268369 () Bool)

(assert (=> start!118300 m!1268369))

(declare-fun m!1268371 () Bool)

(assert (=> start!118300 m!1268371))

(declare-fun m!1268373 () Bool)

(assert (=> b!1383210 m!1268373))

(declare-fun m!1268375 () Bool)

(assert (=> b!1383211 m!1268375))

(declare-fun m!1268377 () Bool)

(assert (=> b!1383209 m!1268377))

(assert (=> b!1383209 m!1268377))

(declare-fun m!1268379 () Bool)

(assert (=> b!1383209 m!1268379))

(push 1)

(assert (not b!1383209))

(assert (not start!118300))

(assert (not b!1383210))

(assert (not b!1383211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

