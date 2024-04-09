; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118304 () Bool)

(assert start!118304)

(declare-fun b!1383234 () Bool)

(declare-fun res!924935 () Bool)

(declare-fun e!784024 () Bool)

(assert (=> b!1383234 (=> (not res!924935) (not e!784024))))

(declare-datatypes ((array!94525 0))(
  ( (array!94526 (arr!45636 (Array (_ BitVec 32) (_ BitVec 64))) (size!46187 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94525)

(declare-datatypes ((List!32344 0))(
  ( (Nil!32341) (Cons!32340 (h!33549 (_ BitVec 64)) (t!47045 List!32344)) )
))
(declare-fun arrayNoDuplicates!0 (array!94525 (_ BitVec 32) List!32344) Bool)

(assert (=> b!1383234 (= res!924935 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32341))))

(declare-fun b!1383233 () Bool)

(declare-fun res!924934 () Bool)

(assert (=> b!1383233 (=> (not res!924934) (not e!784024))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383233 (= res!924934 (validKeyInArray!0 (select (arr!45636 a!2938) i!1065)))))

(declare-fun b!1383235 () Bool)

(assert (=> b!1383235 (= e!784024 false)))

(declare-fun lt!608524 () Bool)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94525 (_ BitVec 32)) Bool)

(assert (=> b!1383235 (= lt!608524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!924933 () Bool)

(assert (=> start!118304 (=> (not res!924933) (not e!784024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118304 (= res!924933 (validMask!0 mask!2987))))

(assert (=> start!118304 e!784024))

(assert (=> start!118304 true))

(declare-fun array_inv!34581 (array!94525) Bool)

(assert (=> start!118304 (array_inv!34581 a!2938)))

(declare-fun b!1383232 () Bool)

(declare-fun res!924936 () Bool)

(assert (=> b!1383232 (=> (not res!924936) (not e!784024))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383232 (= res!924936 (and (= (size!46187 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46187 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46187 a!2938))))))

(assert (= (and start!118304 res!924933) b!1383232))

(assert (= (and b!1383232 res!924936) b!1383233))

(assert (= (and b!1383233 res!924934) b!1383234))

(assert (= (and b!1383234 res!924935) b!1383235))

(declare-fun m!1268393 () Bool)

(assert (=> b!1383234 m!1268393))

(declare-fun m!1268395 () Bool)

(assert (=> b!1383233 m!1268395))

(assert (=> b!1383233 m!1268395))

(declare-fun m!1268397 () Bool)

(assert (=> b!1383233 m!1268397))

(declare-fun m!1268399 () Bool)

(assert (=> b!1383235 m!1268399))

(declare-fun m!1268401 () Bool)

(assert (=> start!118304 m!1268401))

(declare-fun m!1268403 () Bool)

(assert (=> start!118304 m!1268403))

(push 1)

(assert (not start!118304))

(assert (not b!1383234))

(assert (not b!1383235))

(assert (not b!1383233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

