; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118460 () Bool)

(assert start!118460)

(declare-fun b!1385112 () Bool)

(declare-fun res!926510 () Bool)

(declare-fun e!784835 () Bool)

(assert (=> b!1385112 (=> (not res!926510) (not e!784835))))

(declare-datatypes ((array!94681 0))(
  ( (array!94682 (arr!45714 (Array (_ BitVec 32) (_ BitVec 64))) (size!46265 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94681)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94681 (_ BitVec 32)) Bool)

(assert (=> b!1385112 (= res!926510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385113 () Bool)

(declare-fun res!926507 () Bool)

(assert (=> b!1385113 (=> (not res!926507) (not e!784835))))

(declare-datatypes ((List!32422 0))(
  ( (Nil!32419) (Cons!32418 (h!33627 (_ BitVec 64)) (t!47123 List!32422)) )
))
(declare-fun arrayNoDuplicates!0 (array!94681 (_ BitVec 32) List!32422) Bool)

(assert (=> b!1385113 (= res!926507 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32419))))

(declare-fun res!926508 () Bool)

(assert (=> start!118460 (=> (not res!926508) (not e!784835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118460 (= res!926508 (validMask!0 mask!2987))))

(assert (=> start!118460 e!784835))

(assert (=> start!118460 true))

(declare-fun array_inv!34659 (array!94681) Bool)

(assert (=> start!118460 (array_inv!34659 a!2938)))

(declare-fun b!1385114 () Bool)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1385114 (= e!784835 (or (= (select (arr!45714 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!45714 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1385115 () Bool)

(declare-fun res!926509 () Bool)

(assert (=> b!1385115 (=> (not res!926509) (not e!784835))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385115 (= res!926509 (and (= (size!46265 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46265 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46265 a!2938))))))

(declare-fun b!1385116 () Bool)

(declare-fun res!926511 () Bool)

(assert (=> b!1385116 (=> (not res!926511) (not e!784835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385116 (= res!926511 (validKeyInArray!0 (select (arr!45714 a!2938) i!1065)))))

(assert (= (and start!118460 res!926508) b!1385115))

(assert (= (and b!1385115 res!926509) b!1385116))

(assert (= (and b!1385116 res!926511) b!1385113))

(assert (= (and b!1385113 res!926507) b!1385112))

(assert (= (and b!1385112 res!926510) b!1385114))

(declare-fun m!1270505 () Bool)

(assert (=> b!1385112 m!1270505))

(declare-fun m!1270507 () Bool)

(assert (=> b!1385113 m!1270507))

(declare-fun m!1270509 () Bool)

(assert (=> b!1385114 m!1270509))

(assert (=> b!1385116 m!1270509))

(assert (=> b!1385116 m!1270509))

(declare-fun m!1270511 () Bool)

(assert (=> b!1385116 m!1270511))

(declare-fun m!1270513 () Bool)

(assert (=> start!118460 m!1270513))

(declare-fun m!1270515 () Bool)

(assert (=> start!118460 m!1270515))

(push 1)

(assert (not b!1385113))

(assert (not start!118460))

(assert (not b!1385112))

(assert (not b!1385116))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1385162 () Bool)

(declare-fun e!784871 () Bool)

(declare-fun contains!9755 (List!32422 (_ BitVec 64)) Bool)

(assert (=> b!1385162 (= e!784871 (contains!9755 Nil!32419 (select (arr!45714 a!2938) #b00000000000000000000000000000000)))))

(declare-fun bm!66542 () Bool)

(declare-fun call!66545 () Bool)

(declare-fun c!128755 () Bool)

(assert (=> bm!66542 (= call!66545 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!128755 (Cons!32418 (select (arr!45714 a!2938) #b00000000000000000000000000000000) Nil!32419) Nil!32419)))))

