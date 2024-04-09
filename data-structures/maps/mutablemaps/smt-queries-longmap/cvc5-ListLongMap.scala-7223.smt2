; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92436 () Bool)

(assert start!92436)

(declare-fun b!1050525 () Bool)

(declare-fun res!699762 () Bool)

(declare-fun e!596211 () Bool)

(assert (=> b!1050525 (=> (not res!699762) (not e!596211))))

(declare-datatypes ((array!66185 0))(
  ( (array!66186 (arr!31828 (Array (_ BitVec 32) (_ BitVec 64))) (size!32365 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66185)

(declare-datatypes ((List!22271 0))(
  ( (Nil!22268) (Cons!22267 (h!23476 (_ BitVec 64)) (t!31585 List!22271)) )
))
(declare-fun arrayNoDuplicates!0 (array!66185 (_ BitVec 32) List!22271) Bool)

(assert (=> b!1050525 (= res!699762 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22268))))

(declare-fun b!1050526 () Bool)

(declare-fun e!596212 () Bool)

(assert (=> b!1050526 (= e!596212 (not true))))

(declare-fun lt!463992 () (_ BitVec 32))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050526 (= (select (store (arr!31828 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463992) k!2747)))

(declare-fun b!1050527 () Bool)

(declare-fun res!699760 () Bool)

(assert (=> b!1050527 (=> (not res!699760) (not e!596211))))

(assert (=> b!1050527 (= res!699760 (= (select (arr!31828 a!3488) i!1381) k!2747))))

(declare-fun res!699765 () Bool)

(assert (=> start!92436 (=> (not res!699765) (not e!596211))))

(assert (=> start!92436 (= res!699765 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32365 a!3488)) (bvslt (size!32365 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92436 e!596211))

(assert (=> start!92436 true))

(declare-fun array_inv!24450 (array!66185) Bool)

(assert (=> start!92436 (array_inv!24450 a!3488)))

(declare-fun b!1050528 () Bool)

(declare-fun res!699764 () Bool)

(assert (=> b!1050528 (=> (not res!699764) (not e!596211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050528 (= res!699764 (validKeyInArray!0 k!2747))))

(declare-fun b!1050529 () Bool)

(declare-fun e!596210 () Bool)

(assert (=> b!1050529 (= e!596211 e!596210)))

(declare-fun res!699761 () Bool)

(assert (=> b!1050529 (=> (not res!699761) (not e!596210))))

(declare-fun lt!463993 () array!66185)

(declare-fun arrayContainsKey!0 (array!66185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050529 (= res!699761 (arrayContainsKey!0 lt!463993 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050529 (= lt!463993 (array!66186 (store (arr!31828 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32365 a!3488)))))

(declare-fun b!1050530 () Bool)

(assert (=> b!1050530 (= e!596210 e!596212)))

(declare-fun res!699763 () Bool)

(assert (=> b!1050530 (=> (not res!699763) (not e!596212))))

(assert (=> b!1050530 (= res!699763 (not (= lt!463992 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66185 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050530 (= lt!463992 (arrayScanForKey!0 lt!463993 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92436 res!699765) b!1050525))

(assert (= (and b!1050525 res!699762) b!1050528))

(assert (= (and b!1050528 res!699764) b!1050527))

(assert (= (and b!1050527 res!699760) b!1050529))

(assert (= (and b!1050529 res!699761) b!1050530))

(assert (= (and b!1050530 res!699763) b!1050526))

(declare-fun m!971349 () Bool)

(assert (=> b!1050525 m!971349))

(declare-fun m!971351 () Bool)

(assert (=> b!1050526 m!971351))

(declare-fun m!971353 () Bool)

(assert (=> b!1050526 m!971353))

(declare-fun m!971355 () Bool)

(assert (=> b!1050528 m!971355))

(declare-fun m!971357 () Bool)

(assert (=> b!1050527 m!971357))

(declare-fun m!971359 () Bool)

(assert (=> start!92436 m!971359))

(declare-fun m!971361 () Bool)

(assert (=> b!1050530 m!971361))

(declare-fun m!971363 () Bool)

(assert (=> b!1050529 m!971363))

(assert (=> b!1050529 m!971351))

(push 1)

