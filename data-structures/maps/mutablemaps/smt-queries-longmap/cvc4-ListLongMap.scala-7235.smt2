; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92512 () Bool)

(assert start!92512)

(declare-fun b!1051458 () Bool)

(declare-fun e!596918 () Bool)

(declare-fun e!596919 () Bool)

(assert (=> b!1051458 (= e!596918 e!596919)))

(declare-fun res!700701 () Bool)

(assert (=> b!1051458 (=> (not res!700701) (not e!596919))))

(declare-datatypes ((array!66261 0))(
  ( (array!66262 (arr!31866 (Array (_ BitVec 32) (_ BitVec 64))) (size!32403 (_ BitVec 32))) )
))
(declare-fun lt!464275 () array!66261)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66261 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051458 (= res!700701 (arrayContainsKey!0 lt!464275 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66261)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051458 (= lt!464275 (array!66262 (store (arr!31866 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32403 a!3488)))))

(declare-fun b!1051459 () Bool)

(declare-fun e!596915 () Bool)

(assert (=> b!1051459 (= e!596915 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun res!700697 () Bool)

(assert (=> start!92512 (=> (not res!700697) (not e!596918))))

(assert (=> start!92512 (= res!700697 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32403 a!3488)) (bvslt (size!32403 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92512 e!596918))

(assert (=> start!92512 true))

(declare-fun array_inv!24488 (array!66261) Bool)

(assert (=> start!92512 (array_inv!24488 a!3488)))

(declare-fun b!1051460 () Bool)

(declare-fun e!596916 () Bool)

(declare-fun e!596921 () Bool)

(assert (=> b!1051460 (= e!596916 (not e!596921))))

(declare-fun res!700698 () Bool)

(assert (=> b!1051460 (=> res!700698 e!596921)))

(declare-fun lt!464273 () (_ BitVec 32))

(assert (=> b!1051460 (= res!700698 (or (bvsgt lt!464273 i!1381) (bvsle i!1381 lt!464273)))))

(declare-fun e!596917 () Bool)

(assert (=> b!1051460 e!596917))

(declare-fun res!700694 () Bool)

(assert (=> b!1051460 (=> (not res!700694) (not e!596917))))

(assert (=> b!1051460 (= res!700694 (= (select (store (arr!31866 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464273) k!2747))))

(declare-fun b!1051461 () Bool)

(declare-fun res!700695 () Bool)

(assert (=> b!1051461 (=> (not res!700695) (not e!596918))))

(declare-datatypes ((List!22309 0))(
  ( (Nil!22306) (Cons!22305 (h!23514 (_ BitVec 64)) (t!31623 List!22309)) )
))
(declare-fun arrayNoDuplicates!0 (array!66261 (_ BitVec 32) List!22309) Bool)

(assert (=> b!1051461 (= res!700695 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22306))))

(declare-fun b!1051462 () Bool)

(assert (=> b!1051462 (= e!596919 e!596916)))

(declare-fun res!700693 () Bool)

(assert (=> b!1051462 (=> (not res!700693) (not e!596916))))

(assert (=> b!1051462 (= res!700693 (not (= lt!464273 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66261 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051462 (= lt!464273 (arrayScanForKey!0 lt!464275 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051463 () Bool)

(assert (=> b!1051463 (= e!596921 true)))

(assert (=> b!1051463 (arrayNoDuplicates!0 a!3488 lt!464273 Nil!22306)))

(declare-datatypes ((Unit!34413 0))(
  ( (Unit!34414) )
))
(declare-fun lt!464274 () Unit!34413)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66261 (_ BitVec 32) (_ BitVec 32)) Unit!34413)

(assert (=> b!1051463 (= lt!464274 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464273))))

(declare-fun b!1051464 () Bool)

(declare-fun res!700700 () Bool)

(assert (=> b!1051464 (=> (not res!700700) (not e!596918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051464 (= res!700700 (validKeyInArray!0 k!2747))))

(declare-fun b!1051465 () Bool)

(declare-fun res!700699 () Bool)

(assert (=> b!1051465 (=> (not res!700699) (not e!596918))))

(assert (=> b!1051465 (= res!700699 (= (select (arr!31866 a!3488) i!1381) k!2747))))

(declare-fun b!1051466 () Bool)

(assert (=> b!1051466 (= e!596917 e!596915)))

(declare-fun res!700696 () Bool)

(assert (=> b!1051466 (=> res!700696 e!596915)))

(assert (=> b!1051466 (= res!700696 (or (bvsgt lt!464273 i!1381) (bvsle i!1381 lt!464273)))))

(assert (= (and start!92512 res!700697) b!1051461))

(assert (= (and b!1051461 res!700695) b!1051464))

(assert (= (and b!1051464 res!700700) b!1051465))

(assert (= (and b!1051465 res!700699) b!1051458))

(assert (= (and b!1051458 res!700701) b!1051462))

(assert (= (and b!1051462 res!700693) b!1051460))

(assert (= (and b!1051460 res!700694) b!1051466))

(assert (= (and b!1051466 (not res!700696)) b!1051459))

(assert (= (and b!1051460 (not res!700698)) b!1051463))

(declare-fun m!972089 () Bool)

(assert (=> start!92512 m!972089))

(declare-fun m!972091 () Bool)

(assert (=> b!1051463 m!972091))

(declare-fun m!972093 () Bool)

(assert (=> b!1051463 m!972093))

(declare-fun m!972095 () Bool)

(assert (=> b!1051465 m!972095))

(declare-fun m!972097 () Bool)

(assert (=> b!1051461 m!972097))

(declare-fun m!972099 () Bool)

(assert (=> b!1051464 m!972099))

(declare-fun m!972101 () Bool)

(assert (=> b!1051459 m!972101))

(declare-fun m!972103 () Bool)

(assert (=> b!1051462 m!972103))

(declare-fun m!972105 () Bool)

(assert (=> b!1051460 m!972105))

(declare-fun m!972107 () Bool)

(assert (=> b!1051460 m!972107))

(declare-fun m!972109 () Bool)

(assert (=> b!1051458 m!972109))

(assert (=> b!1051458 m!972105))

(push 1)

