; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93078 () Bool)

(assert start!93078)

(declare-fun b!1055466 () Bool)

(declare-fun e!599921 () Bool)

(declare-fun e!599925 () Bool)

(assert (=> b!1055466 (= e!599921 e!599925)))

(declare-fun res!704393 () Bool)

(assert (=> b!1055466 (=> res!704393 e!599925)))

(declare-fun lt!465768 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055466 (= res!704393 (bvsle lt!465768 i!1381))))

(declare-fun res!704394 () Bool)

(declare-fun e!599924 () Bool)

(assert (=> start!93078 (=> (not res!704394) (not e!599924))))

(declare-datatypes ((array!66551 0))(
  ( (array!66552 (arr!31999 (Array (_ BitVec 32) (_ BitVec 64))) (size!32536 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66551)

(assert (=> start!93078 (= res!704394 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32536 a!3488)) (bvslt (size!32536 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93078 e!599924))

(assert (=> start!93078 true))

(declare-fun array_inv!24621 (array!66551) Bool)

(assert (=> start!93078 (array_inv!24621 a!3488)))

(declare-fun b!1055467 () Bool)

(declare-fun res!704399 () Bool)

(declare-fun e!599922 () Bool)

(assert (=> b!1055467 (=> res!704399 e!599922)))

(declare-datatypes ((List!22442 0))(
  ( (Nil!22439) (Cons!22438 (h!23647 (_ BitVec 64)) (t!31756 List!22442)) )
))
(declare-fun noDuplicate!1569 (List!22442) Bool)

(assert (=> b!1055467 (= res!704399 (not (noDuplicate!1569 Nil!22439)))))

(declare-fun b!1055468 () Bool)

(declare-fun res!704395 () Bool)

(assert (=> b!1055468 (=> res!704395 e!599922)))

(declare-fun contains!6200 (List!22442 (_ BitVec 64)) Bool)

(assert (=> b!1055468 (= res!704395 (contains!6200 Nil!22439 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055469 () Bool)

(declare-fun e!599920 () Bool)

(assert (=> b!1055469 (= e!599920 e!599922)))

(declare-fun res!704398 () Bool)

(assert (=> b!1055469 (=> res!704398 e!599922)))

(assert (=> b!1055469 (= res!704398 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32536 a!3488)))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055469 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34565 0))(
  ( (Unit!34566) )
))
(declare-fun lt!465769 () Unit!34565)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66551 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34565)

(assert (=> b!1055469 (= lt!465769 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465768 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66551 (_ BitVec 32) List!22442) Bool)

(assert (=> b!1055469 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22439)))

(declare-fun lt!465766 () Unit!34565)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66551 (_ BitVec 32) (_ BitVec 32)) Unit!34565)

(assert (=> b!1055469 (= lt!465766 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055470 () Bool)

(assert (=> b!1055470 (= e!599922 true)))

(declare-fun lt!465765 () Bool)

(assert (=> b!1055470 (= lt!465765 (contains!6200 Nil!22439 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1055471 () Bool)

(declare-fun e!599926 () Bool)

(assert (=> b!1055471 (= e!599926 (not e!599920))))

(declare-fun res!704392 () Bool)

(assert (=> b!1055471 (=> res!704392 e!599920)))

(assert (=> b!1055471 (= res!704392 (bvsle lt!465768 i!1381))))

(assert (=> b!1055471 e!599921))

(declare-fun res!704390 () Bool)

(assert (=> b!1055471 (=> (not res!704390) (not e!599921))))

(assert (=> b!1055471 (= res!704390 (= (select (store (arr!31999 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465768) k!2747))))

(declare-fun b!1055472 () Bool)

(declare-fun res!704400 () Bool)

(assert (=> b!1055472 (=> (not res!704400) (not e!599924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055472 (= res!704400 (validKeyInArray!0 k!2747))))

(declare-fun b!1055473 () Bool)

(assert (=> b!1055473 (= e!599925 (arrayContainsKey!0 a!3488 k!2747 lt!465768))))

(declare-fun b!1055474 () Bool)

(declare-fun e!599927 () Bool)

(assert (=> b!1055474 (= e!599924 e!599927)))

(declare-fun res!704397 () Bool)

(assert (=> b!1055474 (=> (not res!704397) (not e!599927))))

(declare-fun lt!465767 () array!66551)

(assert (=> b!1055474 (= res!704397 (arrayContainsKey!0 lt!465767 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055474 (= lt!465767 (array!66552 (store (arr!31999 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32536 a!3488)))))

(declare-fun b!1055475 () Bool)

(assert (=> b!1055475 (= e!599927 e!599926)))

(declare-fun res!704396 () Bool)

(assert (=> b!1055475 (=> (not res!704396) (not e!599926))))

(assert (=> b!1055475 (= res!704396 (not (= lt!465768 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66551 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055475 (= lt!465768 (arrayScanForKey!0 lt!465767 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055476 () Bool)

(declare-fun res!704389 () Bool)

(assert (=> b!1055476 (=> (not res!704389) (not e!599924))))

(assert (=> b!1055476 (= res!704389 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22439))))

(declare-fun b!1055477 () Bool)

(declare-fun res!704391 () Bool)

(assert (=> b!1055477 (=> (not res!704391) (not e!599924))))

(assert (=> b!1055477 (= res!704391 (= (select (arr!31999 a!3488) i!1381) k!2747))))

(assert (= (and start!93078 res!704394) b!1055476))

(assert (= (and b!1055476 res!704389) b!1055472))

(assert (= (and b!1055472 res!704400) b!1055477))

(assert (= (and b!1055477 res!704391) b!1055474))

(assert (= (and b!1055474 res!704397) b!1055475))

(assert (= (and b!1055475 res!704396) b!1055471))

(assert (= (and b!1055471 res!704390) b!1055466))

(assert (= (and b!1055466 (not res!704393)) b!1055473))

(assert (= (and b!1055471 (not res!704392)) b!1055469))

(assert (= (and b!1055469 (not res!704398)) b!1055467))

(assert (= (and b!1055467 (not res!704399)) b!1055468))

(assert (= (and b!1055468 (not res!704395)) b!1055470))

(declare-fun m!975597 () Bool)

(assert (=> b!1055472 m!975597))

(declare-fun m!975599 () Bool)

(assert (=> b!1055468 m!975599))

(declare-fun m!975601 () Bool)

(assert (=> b!1055476 m!975601))

(declare-fun m!975603 () Bool)

(assert (=> start!93078 m!975603))

(declare-fun m!975605 () Bool)

(assert (=> b!1055471 m!975605))

(declare-fun m!975607 () Bool)

(assert (=> b!1055471 m!975607))

(declare-fun m!975609 () Bool)

(assert (=> b!1055473 m!975609))

(declare-fun m!975611 () Bool)

(assert (=> b!1055475 m!975611))

(declare-fun m!975613 () Bool)

(assert (=> b!1055470 m!975613))

(declare-fun m!975615 () Bool)

(assert (=> b!1055469 m!975615))

(declare-fun m!975617 () Bool)

(assert (=> b!1055469 m!975617))

(declare-fun m!975619 () Bool)

(assert (=> b!1055469 m!975619))

(declare-fun m!975621 () Bool)

(assert (=> b!1055469 m!975621))

(declare-fun m!975623 () Bool)

(assert (=> b!1055477 m!975623))

(declare-fun m!975625 () Bool)

(assert (=> b!1055467 m!975625))

(declare-fun m!975627 () Bool)

(assert (=> b!1055474 m!975627))

(assert (=> b!1055474 m!975605))

(push 1)

