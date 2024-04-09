; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92382 () Bool)

(assert start!92382)

(declare-fun lt!463624 () (_ BitVec 32))

(declare-datatypes ((array!66131 0))(
  ( (array!66132 (arr!31801 (Array (_ BitVec 32) (_ BitVec 64))) (size!32338 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66131)

(declare-fun b!1049700 () Bool)

(declare-fun e!595636 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049700 (= e!595636 (arrayContainsKey!0 a!3488 k!2747 lt!463624))))

(declare-fun b!1049701 () Bool)

(declare-fun res!698946 () Bool)

(declare-fun e!595633 () Bool)

(assert (=> b!1049701 (=> (not res!698946) (not e!595633))))

(declare-datatypes ((List!22244 0))(
  ( (Nil!22241) (Cons!22240 (h!23449 (_ BitVec 64)) (t!31558 List!22244)) )
))
(declare-fun arrayNoDuplicates!0 (array!66131 (_ BitVec 32) List!22244) Bool)

(assert (=> b!1049701 (= res!698946 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22241))))

(declare-fun b!1049702 () Bool)

(declare-fun res!698945 () Bool)

(declare-fun e!595638 () Bool)

(assert (=> b!1049702 (=> res!698945 e!595638)))

(declare-fun contains!6136 (List!22244 (_ BitVec 64)) Bool)

(assert (=> b!1049702 (= res!698945 (contains!6136 Nil!22241 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049703 () Bool)

(declare-fun res!698944 () Bool)

(assert (=> b!1049703 (=> res!698944 e!595638)))

(declare-fun noDuplicate!1521 (List!22244) Bool)

(assert (=> b!1049703 (= res!698944 (not (noDuplicate!1521 Nil!22241)))))

(declare-fun b!1049704 () Bool)

(declare-fun e!595640 () Bool)

(assert (=> b!1049704 (= e!595640 e!595636)))

(declare-fun res!698941 () Bool)

(assert (=> b!1049704 (=> res!698941 e!595636)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049704 (= res!698941 (bvsle lt!463624 i!1381))))

(declare-fun b!1049705 () Bool)

(declare-fun e!595637 () Bool)

(assert (=> b!1049705 (= e!595633 e!595637)))

(declare-fun res!698936 () Bool)

(assert (=> b!1049705 (=> (not res!698936) (not e!595637))))

(declare-fun lt!463622 () array!66131)

(assert (=> b!1049705 (= res!698936 (arrayContainsKey!0 lt!463622 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049705 (= lt!463622 (array!66132 (store (arr!31801 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32338 a!3488)))))

(declare-fun b!1049707 () Bool)

(declare-fun res!698939 () Bool)

(assert (=> b!1049707 (=> (not res!698939) (not e!595633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049707 (= res!698939 (validKeyInArray!0 k!2747))))

(declare-fun b!1049708 () Bool)

(declare-fun e!595639 () Bool)

(assert (=> b!1049708 (= e!595637 e!595639)))

(declare-fun res!698937 () Bool)

(assert (=> b!1049708 (=> (not res!698937) (not e!595639))))

(assert (=> b!1049708 (= res!698937 (not (= lt!463624 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66131 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049708 (= lt!463624 (arrayScanForKey!0 lt!463622 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049709 () Bool)

(declare-fun res!698938 () Bool)

(assert (=> b!1049709 (=> (not res!698938) (not e!595633))))

(assert (=> b!1049709 (= res!698938 (= (select (arr!31801 a!3488) i!1381) k!2747))))

(declare-fun b!1049706 () Bool)

(declare-fun e!595634 () Bool)

(assert (=> b!1049706 (= e!595639 (not e!595634))))

(declare-fun res!698942 () Bool)

(assert (=> b!1049706 (=> res!698942 e!595634)))

(assert (=> b!1049706 (= res!698942 (bvsle lt!463624 i!1381))))

(assert (=> b!1049706 e!595640))

(declare-fun res!698943 () Bool)

(assert (=> b!1049706 (=> (not res!698943) (not e!595640))))

(assert (=> b!1049706 (= res!698943 (= (select (store (arr!31801 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463624) k!2747))))

(declare-fun res!698935 () Bool)

(assert (=> start!92382 (=> (not res!698935) (not e!595633))))

(assert (=> start!92382 (= res!698935 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32338 a!3488)) (bvslt (size!32338 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92382 e!595633))

(assert (=> start!92382 true))

(declare-fun array_inv!24423 (array!66131) Bool)

(assert (=> start!92382 (array_inv!24423 a!3488)))

(declare-fun b!1049710 () Bool)

(assert (=> b!1049710 (= e!595638 true)))

(declare-fun lt!463621 () Bool)

(assert (=> b!1049710 (= lt!463621 (contains!6136 Nil!22241 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049711 () Bool)

(assert (=> b!1049711 (= e!595634 e!595638)))

(declare-fun res!698940 () Bool)

(assert (=> b!1049711 (=> res!698940 e!595638)))

(assert (=> b!1049711 (= res!698940 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32338 a!3488)))))

(assert (=> b!1049711 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34331 0))(
  ( (Unit!34332) )
))
(declare-fun lt!463620 () Unit!34331)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66131 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34331)

(assert (=> b!1049711 (= lt!463620 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463624 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049711 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22241)))

(declare-fun lt!463623 () Unit!34331)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66131 (_ BitVec 32) (_ BitVec 32)) Unit!34331)

(assert (=> b!1049711 (= lt!463623 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (= (and start!92382 res!698935) b!1049701))

(assert (= (and b!1049701 res!698946) b!1049707))

(assert (= (and b!1049707 res!698939) b!1049709))

(assert (= (and b!1049709 res!698938) b!1049705))

(assert (= (and b!1049705 res!698936) b!1049708))

(assert (= (and b!1049708 res!698937) b!1049706))

(assert (= (and b!1049706 res!698943) b!1049704))

(assert (= (and b!1049704 (not res!698941)) b!1049700))

(assert (= (and b!1049706 (not res!698942)) b!1049711))

(assert (= (and b!1049711 (not res!698940)) b!1049703))

(assert (= (and b!1049703 (not res!698944)) b!1049702))

(assert (= (and b!1049702 (not res!698945)) b!1049710))

(declare-fun m!970569 () Bool)

(assert (=> b!1049709 m!970569))

(declare-fun m!970571 () Bool)

(assert (=> b!1049701 m!970571))

(declare-fun m!970573 () Bool)

(assert (=> b!1049703 m!970573))

(declare-fun m!970575 () Bool)

(assert (=> b!1049706 m!970575))

(declare-fun m!970577 () Bool)

(assert (=> b!1049706 m!970577))

(declare-fun m!970579 () Bool)

(assert (=> b!1049711 m!970579))

(declare-fun m!970581 () Bool)

(assert (=> b!1049711 m!970581))

(declare-fun m!970583 () Bool)

(assert (=> b!1049711 m!970583))

(declare-fun m!970585 () Bool)

(assert (=> b!1049711 m!970585))

(declare-fun m!970587 () Bool)

(assert (=> b!1049708 m!970587))

(declare-fun m!970589 () Bool)

(assert (=> b!1049710 m!970589))

(declare-fun m!970591 () Bool)

(assert (=> start!92382 m!970591))

(declare-fun m!970593 () Bool)

(assert (=> b!1049705 m!970593))

(assert (=> b!1049705 m!970575))

(declare-fun m!970595 () Bool)

(assert (=> b!1049707 m!970595))

(declare-fun m!970597 () Bool)

(assert (=> b!1049700 m!970597))

(declare-fun m!970599 () Bool)

(assert (=> b!1049702 m!970599))

(push 1)

