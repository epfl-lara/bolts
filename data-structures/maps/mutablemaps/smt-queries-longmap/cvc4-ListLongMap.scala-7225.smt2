; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92452 () Bool)

(assert start!92452)

(declare-datatypes ((array!66201 0))(
  ( (array!66202 (arr!31836 (Array (_ BitVec 32) (_ BitVec 64))) (size!32373 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66201)

(declare-fun b!1050685 () Bool)

(declare-fun e!596325 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050685 (= e!596325 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1050686 () Bool)

(declare-fun res!699926 () Bool)

(declare-fun e!596326 () Bool)

(assert (=> b!1050686 (=> (not res!699926) (not e!596326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050686 (= res!699926 (validKeyInArray!0 k!2747))))

(declare-fun b!1050688 () Bool)

(declare-fun res!699921 () Bool)

(assert (=> b!1050688 (=> (not res!699921) (not e!596326))))

(assert (=> b!1050688 (= res!699921 (= (select (arr!31836 a!3488) i!1381) k!2747))))

(declare-fun b!1050689 () Bool)

(declare-fun res!699927 () Bool)

(assert (=> b!1050689 (=> (not res!699927) (not e!596326))))

(declare-datatypes ((List!22279 0))(
  ( (Nil!22276) (Cons!22275 (h!23484 (_ BitVec 64)) (t!31593 List!22279)) )
))
(declare-fun arrayNoDuplicates!0 (array!66201 (_ BitVec 32) List!22279) Bool)

(assert (=> b!1050689 (= res!699927 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22276))))

(declare-fun b!1050690 () Bool)

(declare-fun e!596327 () Bool)

(declare-fun e!596324 () Bool)

(assert (=> b!1050690 (= e!596327 e!596324)))

(declare-fun res!699923 () Bool)

(assert (=> b!1050690 (=> (not res!699923) (not e!596324))))

(declare-fun lt!464040 () (_ BitVec 32))

(assert (=> b!1050690 (= res!699923 (not (= lt!464040 i!1381)))))

(declare-fun lt!464041 () array!66201)

(declare-fun arrayScanForKey!0 (array!66201 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050690 (= lt!464040 (arrayScanForKey!0 lt!464041 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!699925 () Bool)

(assert (=> start!92452 (=> (not res!699925) (not e!596326))))

(assert (=> start!92452 (= res!699925 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32373 a!3488)) (bvslt (size!32373 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92452 e!596326))

(assert (=> start!92452 true))

(declare-fun array_inv!24458 (array!66201) Bool)

(assert (=> start!92452 (array_inv!24458 a!3488)))

(declare-fun b!1050687 () Bool)

(declare-fun e!596322 () Bool)

(assert (=> b!1050687 (= e!596322 e!596325)))

(declare-fun res!699920 () Bool)

(assert (=> b!1050687 (=> res!699920 e!596325)))

(assert (=> b!1050687 (= res!699920 (or (bvsgt lt!464040 i!1381) (bvsle i!1381 lt!464040)))))

(declare-fun b!1050691 () Bool)

(assert (=> b!1050691 (= e!596324 (not true))))

(assert (=> b!1050691 e!596322))

(declare-fun res!699924 () Bool)

(assert (=> b!1050691 (=> (not res!699924) (not e!596322))))

(assert (=> b!1050691 (= res!699924 (= (select (store (arr!31836 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464040) k!2747))))

(declare-fun b!1050692 () Bool)

(assert (=> b!1050692 (= e!596326 e!596327)))

(declare-fun res!699922 () Bool)

(assert (=> b!1050692 (=> (not res!699922) (not e!596327))))

(assert (=> b!1050692 (= res!699922 (arrayContainsKey!0 lt!464041 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050692 (= lt!464041 (array!66202 (store (arr!31836 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32373 a!3488)))))

(assert (= (and start!92452 res!699925) b!1050689))

(assert (= (and b!1050689 res!699927) b!1050686))

(assert (= (and b!1050686 res!699926) b!1050688))

(assert (= (and b!1050688 res!699921) b!1050692))

(assert (= (and b!1050692 res!699922) b!1050690))

(assert (= (and b!1050690 res!699923) b!1050691))

(assert (= (and b!1050691 res!699924) b!1050687))

(assert (= (and b!1050687 (not res!699920)) b!1050685))

(declare-fun m!971481 () Bool)

(assert (=> b!1050690 m!971481))

(declare-fun m!971483 () Bool)

(assert (=> b!1050692 m!971483))

(declare-fun m!971485 () Bool)

(assert (=> b!1050692 m!971485))

(declare-fun m!971487 () Bool)

(assert (=> start!92452 m!971487))

(declare-fun m!971489 () Bool)

(assert (=> b!1050688 m!971489))

(assert (=> b!1050691 m!971485))

(declare-fun m!971491 () Bool)

(assert (=> b!1050691 m!971491))

(declare-fun m!971493 () Bool)

(assert (=> b!1050685 m!971493))

(declare-fun m!971495 () Bool)

(assert (=> b!1050686 m!971495))

(declare-fun m!971497 () Bool)

(assert (=> b!1050689 m!971497))

(push 1)

(assert (not b!1050689))

(assert (not b!1050690))

