; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92460 () Bool)

(assert start!92460)

(declare-fun b!1050781 () Bool)

(declare-fun res!700022 () Bool)

(declare-fun e!596395 () Bool)

(assert (=> b!1050781 (=> (not res!700022) (not e!596395))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050781 (= res!700022 (validKeyInArray!0 k!2747))))

(declare-fun b!1050782 () Bool)

(declare-fun res!700020 () Bool)

(assert (=> b!1050782 (=> (not res!700020) (not e!596395))))

(declare-datatypes ((array!66209 0))(
  ( (array!66210 (arr!31840 (Array (_ BitVec 32) (_ BitVec 64))) (size!32377 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66209)

(declare-datatypes ((List!22283 0))(
  ( (Nil!22280) (Cons!22279 (h!23488 (_ BitVec 64)) (t!31597 List!22283)) )
))
(declare-fun arrayNoDuplicates!0 (array!66209 (_ BitVec 32) List!22283) Bool)

(assert (=> b!1050782 (= res!700020 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22280))))

(declare-fun res!700019 () Bool)

(assert (=> start!92460 (=> (not res!700019) (not e!596395))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!92460 (= res!700019 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32377 a!3488)) (bvslt (size!32377 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92460 e!596395))

(assert (=> start!92460 true))

(declare-fun array_inv!24462 (array!66209) Bool)

(assert (=> start!92460 (array_inv!24462 a!3488)))

(declare-fun b!1050783 () Bool)

(declare-fun e!596399 () Bool)

(declare-fun e!596396 () Bool)

(assert (=> b!1050783 (= e!596399 e!596396)))

(declare-fun res!700023 () Bool)

(assert (=> b!1050783 (=> res!700023 e!596396)))

(declare-fun lt!464065 () (_ BitVec 32))

(assert (=> b!1050783 (= res!700023 (or (bvsgt lt!464065 i!1381) (bvsle i!1381 lt!464065)))))

(declare-fun b!1050784 () Bool)

(declare-fun res!700018 () Bool)

(assert (=> b!1050784 (=> (not res!700018) (not e!596395))))

(assert (=> b!1050784 (= res!700018 (= (select (arr!31840 a!3488) i!1381) k!2747))))

(declare-fun b!1050785 () Bool)

(declare-fun e!596394 () Bool)

(declare-fun e!596398 () Bool)

(assert (=> b!1050785 (= e!596394 e!596398)))

(declare-fun res!700017 () Bool)

(assert (=> b!1050785 (=> (not res!700017) (not e!596398))))

(assert (=> b!1050785 (= res!700017 (not (= lt!464065 i!1381)))))

(declare-fun lt!464064 () array!66209)

(declare-fun arrayScanForKey!0 (array!66209 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050785 (= lt!464065 (arrayScanForKey!0 lt!464064 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050786 () Bool)

(assert (=> b!1050786 (= e!596395 e!596394)))

(declare-fun res!700021 () Bool)

(assert (=> b!1050786 (=> (not res!700021) (not e!596394))))

(declare-fun arrayContainsKey!0 (array!66209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050786 (= res!700021 (arrayContainsKey!0 lt!464064 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050786 (= lt!464064 (array!66210 (store (arr!31840 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32377 a!3488)))))

(declare-fun b!1050787 () Bool)

(assert (=> b!1050787 (= e!596398 (not true))))

(assert (=> b!1050787 e!596399))

(declare-fun res!700016 () Bool)

(assert (=> b!1050787 (=> (not res!700016) (not e!596399))))

(assert (=> b!1050787 (= res!700016 (= (select (store (arr!31840 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464065) k!2747))))

(declare-fun b!1050788 () Bool)

(assert (=> b!1050788 (= e!596396 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(assert (= (and start!92460 res!700019) b!1050782))

(assert (= (and b!1050782 res!700020) b!1050781))

(assert (= (and b!1050781 res!700022) b!1050784))

(assert (= (and b!1050784 res!700018) b!1050786))

(assert (= (and b!1050786 res!700021) b!1050785))

(assert (= (and b!1050785 res!700017) b!1050787))

(assert (= (and b!1050787 res!700016) b!1050783))

(assert (= (and b!1050783 (not res!700023)) b!1050788))

(declare-fun m!971553 () Bool)

(assert (=> b!1050781 m!971553))

(declare-fun m!971555 () Bool)

(assert (=> b!1050786 m!971555))

(declare-fun m!971557 () Bool)

(assert (=> b!1050786 m!971557))

(assert (=> b!1050787 m!971557))

(declare-fun m!971559 () Bool)

(assert (=> b!1050787 m!971559))

(declare-fun m!971561 () Bool)

(assert (=> b!1050784 m!971561))

(declare-fun m!971563 () Bool)

(assert (=> b!1050785 m!971563))

(declare-fun m!971565 () Bool)

(assert (=> b!1050788 m!971565))

(declare-fun m!971567 () Bool)

(assert (=> b!1050782 m!971567))

(declare-fun m!971569 () Bool)

(assert (=> start!92460 m!971569))

(push 1)

