; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92478 () Bool)

(assert start!92478)

(declare-fun b!1050999 () Bool)

(declare-fun e!596564 () Bool)

(declare-fun e!596558 () Bool)

(assert (=> b!1050999 (= e!596564 e!596558)))

(declare-fun res!700240 () Bool)

(assert (=> b!1050999 (=> (not res!700240) (not e!596558))))

(declare-fun lt!464120 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050999 (= res!700240 (not (= lt!464120 i!1381)))))

(declare-datatypes ((array!66227 0))(
  ( (array!66228 (arr!31849 (Array (_ BitVec 32) (_ BitVec 64))) (size!32386 (_ BitVec 32))) )
))
(declare-fun lt!464121 () array!66227)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66227 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050999 (= lt!464120 (arrayScanForKey!0 lt!464121 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051000 () Bool)

(declare-fun res!700242 () Bool)

(declare-fun e!596560 () Bool)

(assert (=> b!1051000 (=> (not res!700242) (not e!596560))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051000 (= res!700242 (validKeyInArray!0 k!2747))))

(declare-fun b!1051001 () Bool)

(declare-fun e!596561 () Bool)

(assert (=> b!1051001 (= e!596558 (not e!596561))))

(declare-fun res!700235 () Bool)

(assert (=> b!1051001 (=> res!700235 e!596561)))

(assert (=> b!1051001 (= res!700235 (or (bvsgt lt!464120 i!1381) (bvsle i!1381 lt!464120)))))

(declare-fun e!596563 () Bool)

(assert (=> b!1051001 e!596563))

(declare-fun res!700238 () Bool)

(assert (=> b!1051001 (=> (not res!700238) (not e!596563))))

(declare-fun a!3488 () array!66227)

(assert (=> b!1051001 (= res!700238 (= (select (store (arr!31849 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464120) k!2747))))

(declare-fun b!1051002 () Bool)

(assert (=> b!1051002 (= e!596560 e!596564)))

(declare-fun res!700236 () Bool)

(assert (=> b!1051002 (=> (not res!700236) (not e!596564))))

(declare-fun arrayContainsKey!0 (array!66227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051002 (= res!700236 (arrayContainsKey!0 lt!464121 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051002 (= lt!464121 (array!66228 (store (arr!31849 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32386 a!3488)))))

(declare-fun b!1051003 () Bool)

(declare-fun e!596562 () Bool)

(assert (=> b!1051003 (= e!596562 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun res!700241 () Bool)

(assert (=> start!92478 (=> (not res!700241) (not e!596560))))

(assert (=> start!92478 (= res!700241 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32386 a!3488)) (bvslt (size!32386 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92478 e!596560))

(assert (=> start!92478 true))

(declare-fun array_inv!24471 (array!66227) Bool)

(assert (=> start!92478 (array_inv!24471 a!3488)))

(declare-fun b!1051004 () Bool)

(assert (=> b!1051004 (= e!596563 e!596562)))

(declare-fun res!700239 () Bool)

(assert (=> b!1051004 (=> res!700239 e!596562)))

(assert (=> b!1051004 (= res!700239 (or (bvsgt lt!464120 i!1381) (bvsle i!1381 lt!464120)))))

(declare-fun b!1051005 () Bool)

(declare-fun res!700234 () Bool)

(assert (=> b!1051005 (=> (not res!700234) (not e!596560))))

(declare-datatypes ((List!22292 0))(
  ( (Nil!22289) (Cons!22288 (h!23497 (_ BitVec 64)) (t!31606 List!22292)) )
))
(declare-fun arrayNoDuplicates!0 (array!66227 (_ BitVec 32) List!22292) Bool)

(assert (=> b!1051005 (= res!700234 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22289))))

(declare-fun b!1051006 () Bool)

(assert (=> b!1051006 (= e!596561 true)))

(assert (=> b!1051006 (arrayNoDuplicates!0 a!3488 lt!464120 Nil!22289)))

(declare-datatypes ((Unit!34379 0))(
  ( (Unit!34380) )
))
(declare-fun lt!464122 () Unit!34379)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66227 (_ BitVec 32) (_ BitVec 32)) Unit!34379)

(assert (=> b!1051006 (= lt!464122 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464120))))

(declare-fun b!1051007 () Bool)

(declare-fun res!700237 () Bool)

(assert (=> b!1051007 (=> (not res!700237) (not e!596560))))

(assert (=> b!1051007 (= res!700237 (= (select (arr!31849 a!3488) i!1381) k!2747))))

(assert (= (and start!92478 res!700241) b!1051005))

(assert (= (and b!1051005 res!700234) b!1051000))

(assert (= (and b!1051000 res!700242) b!1051007))

(assert (= (and b!1051007 res!700237) b!1051002))

(assert (= (and b!1051002 res!700236) b!1050999))

(assert (= (and b!1050999 res!700240) b!1051001))

(assert (= (and b!1051001 res!700238) b!1051004))

(assert (= (and b!1051004 (not res!700239)) b!1051003))

(assert (= (and b!1051001 (not res!700235)) b!1051006))

(declare-fun m!971715 () Bool)

(assert (=> b!1051005 m!971715))

(declare-fun m!971717 () Bool)

(assert (=> b!1051007 m!971717))

(declare-fun m!971719 () Bool)

(assert (=> b!1051000 m!971719))

(declare-fun m!971721 () Bool)

(assert (=> b!1051006 m!971721))

(declare-fun m!971723 () Bool)

(assert (=> b!1051006 m!971723))

(declare-fun m!971725 () Bool)

(assert (=> start!92478 m!971725))

(declare-fun m!971727 () Bool)

(assert (=> b!1051001 m!971727))

(declare-fun m!971729 () Bool)

(assert (=> b!1051001 m!971729))

(declare-fun m!971731 () Bool)

(assert (=> b!1050999 m!971731))

(declare-fun m!971733 () Bool)

(assert (=> b!1051003 m!971733))

(declare-fun m!971735 () Bool)

(assert (=> b!1051002 m!971735))

(assert (=> b!1051002 m!971727))

(push 1)

