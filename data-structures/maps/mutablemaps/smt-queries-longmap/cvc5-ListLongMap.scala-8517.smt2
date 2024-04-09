; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103932 () Bool)

(assert start!103932)

(declare-fun b!1243451 () Bool)

(declare-fun e!704938 () Bool)

(declare-fun e!704939 () Bool)

(assert (=> b!1243451 (= e!704938 e!704939)))

(declare-fun res!829361 () Bool)

(assert (=> b!1243451 (=> (not res!829361) (not e!704939))))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1243451 (= res!829361 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27555 0))(
  ( (Nil!27552) (Cons!27551 (h!28760 (_ BitVec 64)) (t!41031 List!27555)) )
))
(declare-fun lt!562356 () List!27555)

(declare-datatypes ((array!79970 0))(
  ( (array!79971 (arr!38574 (Array (_ BitVec 32) (_ BitVec 64))) (size!39111 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79970)

(assert (=> b!1243451 (= lt!562356 (Cons!27551 (select (arr!38574 a!3892) from!3270) Nil!27552))))

(declare-fun b!1243452 () Bool)

(assert (=> b!1243452 (= e!704939 false)))

(declare-fun lt!562357 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79970 (_ BitVec 32) List!27555) Bool)

(assert (=> b!1243452 (= lt!562357 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562356))))

(declare-datatypes ((Unit!41227 0))(
  ( (Unit!41228) )
))
(declare-fun lt!562355 () Unit!41227)

(declare-fun noDuplicateSubseq!92 (List!27555 List!27555) Unit!41227)

(assert (=> b!1243452 (= lt!562355 (noDuplicateSubseq!92 Nil!27552 lt!562356))))

(declare-fun b!1243453 () Bool)

(declare-fun res!829355 () Bool)

(assert (=> b!1243453 (=> (not res!829355) (not e!704939))))

(declare-fun contains!7427 (List!27555 (_ BitVec 64)) Bool)

(assert (=> b!1243453 (= res!829355 (not (contains!7427 Nil!27552 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!829357 () Bool)

(assert (=> start!103932 (=> (not res!829357) (not e!704938))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103932 (= res!829357 (and (bvslt (size!39111 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39111 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39111 a!3892))))))

(assert (=> start!103932 e!704938))

(declare-fun array_inv!29350 (array!79970) Bool)

(assert (=> start!103932 (array_inv!29350 a!3892)))

(assert (=> start!103932 true))

(declare-fun b!1243454 () Bool)

(declare-fun res!829360 () Bool)

(assert (=> b!1243454 (=> (not res!829360) (not e!704939))))

(declare-fun subseq!638 (List!27555 List!27555) Bool)

(assert (=> b!1243454 (= res!829360 (subseq!638 Nil!27552 lt!562356))))

(declare-fun b!1243455 () Bool)

(declare-fun res!829353 () Bool)

(assert (=> b!1243455 (=> (not res!829353) (not e!704939))))

(assert (=> b!1243455 (= res!829353 (not (contains!7427 lt!562356 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243456 () Bool)

(declare-fun res!829356 () Bool)

(assert (=> b!1243456 (=> (not res!829356) (not e!704938))))

(assert (=> b!1243456 (= res!829356 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27552))))

(declare-fun b!1243457 () Bool)

(declare-fun res!829354 () Bool)

(assert (=> b!1243457 (=> (not res!829354) (not e!704938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243457 (= res!829354 (validKeyInArray!0 (select (arr!38574 a!3892) from!3270)))))

(declare-fun b!1243458 () Bool)

(declare-fun res!829359 () Bool)

(assert (=> b!1243458 (=> (not res!829359) (not e!704939))))

(assert (=> b!1243458 (= res!829359 (not (contains!7427 Nil!27552 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243459 () Bool)

(declare-fun res!829362 () Bool)

(assert (=> b!1243459 (=> (not res!829362) (not e!704939))))

(assert (=> b!1243459 (= res!829362 (not (contains!7427 lt!562356 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243460 () Bool)

(declare-fun res!829358 () Bool)

(assert (=> b!1243460 (=> (not res!829358) (not e!704938))))

(assert (=> b!1243460 (= res!829358 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39111 a!3892)) (not (= newFrom!287 (size!39111 a!3892)))))))

(declare-fun b!1243461 () Bool)

(declare-fun res!829363 () Bool)

(assert (=> b!1243461 (=> (not res!829363) (not e!704939))))

(declare-fun noDuplicate!2017 (List!27555) Bool)

(assert (=> b!1243461 (= res!829363 (noDuplicate!2017 lt!562356))))

(assert (= (and start!103932 res!829357) b!1243456))

(assert (= (and b!1243456 res!829356) b!1243460))

(assert (= (and b!1243460 res!829358) b!1243457))

(assert (= (and b!1243457 res!829354) b!1243451))

(assert (= (and b!1243451 res!829361) b!1243461))

(assert (= (and b!1243461 res!829363) b!1243455))

(assert (= (and b!1243455 res!829353) b!1243459))

(assert (= (and b!1243459 res!829362) b!1243453))

(assert (= (and b!1243453 res!829355) b!1243458))

(assert (= (and b!1243458 res!829359) b!1243454))

(assert (= (and b!1243454 res!829360) b!1243452))

(declare-fun m!1146009 () Bool)

(assert (=> b!1243453 m!1146009))

(declare-fun m!1146011 () Bool)

(assert (=> start!103932 m!1146011))

(declare-fun m!1146013 () Bool)

(assert (=> b!1243455 m!1146013))

(declare-fun m!1146015 () Bool)

(assert (=> b!1243461 m!1146015))

(declare-fun m!1146017 () Bool)

(assert (=> b!1243456 m!1146017))

(declare-fun m!1146019 () Bool)

(assert (=> b!1243452 m!1146019))

(declare-fun m!1146021 () Bool)

(assert (=> b!1243452 m!1146021))

(declare-fun m!1146023 () Bool)

(assert (=> b!1243457 m!1146023))

(assert (=> b!1243457 m!1146023))

(declare-fun m!1146025 () Bool)

(assert (=> b!1243457 m!1146025))

(declare-fun m!1146027 () Bool)

(assert (=> b!1243458 m!1146027))

(declare-fun m!1146029 () Bool)

(assert (=> b!1243459 m!1146029))

(declare-fun m!1146031 () Bool)

(assert (=> b!1243454 m!1146031))

(assert (=> b!1243451 m!1146023))

(push 1)

