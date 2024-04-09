; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92466 () Bool)

(assert start!92466)

(declare-fun b!1050853 () Bool)

(declare-fun e!596450 () Bool)

(declare-fun e!596452 () Bool)

(assert (=> b!1050853 (= e!596450 e!596452)))

(declare-fun res!700091 () Bool)

(assert (=> b!1050853 (=> (not res!700091) (not e!596452))))

(declare-datatypes ((array!66215 0))(
  ( (array!66216 (arr!31843 (Array (_ BitVec 32) (_ BitVec 64))) (size!32380 (_ BitVec 32))) )
))
(declare-fun lt!464083 () array!66215)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050853 (= res!700091 (arrayContainsKey!0 lt!464083 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66215)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050853 (= lt!464083 (array!66216 (store (arr!31843 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32380 a!3488)))))

(declare-fun b!1050855 () Bool)

(declare-fun res!700092 () Bool)

(assert (=> b!1050855 (=> (not res!700092) (not e!596450))))

(assert (=> b!1050855 (= res!700092 (= (select (arr!31843 a!3488) i!1381) k!2747))))

(declare-fun b!1050856 () Bool)

(declare-fun res!700095 () Bool)

(assert (=> b!1050856 (=> (not res!700095) (not e!596450))))

(declare-datatypes ((List!22286 0))(
  ( (Nil!22283) (Cons!22282 (h!23491 (_ BitVec 64)) (t!31600 List!22286)) )
))
(declare-fun arrayNoDuplicates!0 (array!66215 (_ BitVec 32) List!22286) Bool)

(assert (=> b!1050856 (= res!700095 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22283))))

(declare-fun b!1050857 () Bool)

(declare-fun e!596451 () Bool)

(declare-fun e!596449 () Bool)

(assert (=> b!1050857 (= e!596451 e!596449)))

(declare-fun res!700093 () Bool)

(assert (=> b!1050857 (=> res!700093 e!596449)))

(declare-fun lt!464082 () (_ BitVec 32))

(assert (=> b!1050857 (= res!700093 (or (bvsgt lt!464082 i!1381) (bvsle i!1381 lt!464082)))))

(declare-fun b!1050858 () Bool)

(declare-fun e!596448 () Bool)

(assert (=> b!1050858 (= e!596448 (not true))))

(assert (=> b!1050858 e!596451))

(declare-fun res!700089 () Bool)

(assert (=> b!1050858 (=> (not res!700089) (not e!596451))))

(assert (=> b!1050858 (= res!700089 (= (select (store (arr!31843 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464082) k!2747))))

(declare-fun b!1050859 () Bool)

(declare-fun res!700094 () Bool)

(assert (=> b!1050859 (=> (not res!700094) (not e!596450))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050859 (= res!700094 (validKeyInArray!0 k!2747))))

(declare-fun b!1050860 () Bool)

(assert (=> b!1050860 (= e!596449 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun res!700090 () Bool)

(assert (=> start!92466 (=> (not res!700090) (not e!596450))))

(assert (=> start!92466 (= res!700090 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32380 a!3488)) (bvslt (size!32380 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92466 e!596450))

(assert (=> start!92466 true))

(declare-fun array_inv!24465 (array!66215) Bool)

(assert (=> start!92466 (array_inv!24465 a!3488)))

(declare-fun b!1050854 () Bool)

(assert (=> b!1050854 (= e!596452 e!596448)))

(declare-fun res!700088 () Bool)

(assert (=> b!1050854 (=> (not res!700088) (not e!596448))))

(assert (=> b!1050854 (= res!700088 (not (= lt!464082 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66215 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050854 (= lt!464082 (arrayScanForKey!0 lt!464083 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92466 res!700090) b!1050856))

(assert (= (and b!1050856 res!700095) b!1050859))

(assert (= (and b!1050859 res!700094) b!1050855))

(assert (= (and b!1050855 res!700092) b!1050853))

(assert (= (and b!1050853 res!700091) b!1050854))

(assert (= (and b!1050854 res!700088) b!1050858))

(assert (= (and b!1050858 res!700089) b!1050857))

(assert (= (and b!1050857 (not res!700093)) b!1050860))

(declare-fun m!971607 () Bool)

(assert (=> b!1050853 m!971607))

(declare-fun m!971609 () Bool)

(assert (=> b!1050853 m!971609))

(declare-fun m!971611 () Bool)

(assert (=> b!1050854 m!971611))

(declare-fun m!971613 () Bool)

(assert (=> start!92466 m!971613))

(declare-fun m!971615 () Bool)

(assert (=> b!1050856 m!971615))

(declare-fun m!971617 () Bool)

(assert (=> b!1050859 m!971617))

(declare-fun m!971619 () Bool)

(assert (=> b!1050855 m!971619))

(declare-fun m!971621 () Bool)

(assert (=> b!1050860 m!971621))

(assert (=> b!1050858 m!971609))

(declare-fun m!971623 () Bool)

(assert (=> b!1050858 m!971623))

(push 1)

