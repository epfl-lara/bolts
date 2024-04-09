; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92458 () Bool)

(assert start!92458)

(declare-fun b!1050757 () Bool)

(declare-fun res!699999 () Bool)

(declare-fun e!596376 () Bool)

(assert (=> b!1050757 (=> (not res!699999) (not e!596376))))

(declare-datatypes ((array!66207 0))(
  ( (array!66208 (arr!31839 (Array (_ BitVec 32) (_ BitVec 64))) (size!32376 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66207)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050757 (= res!699999 (= (select (arr!31839 a!3488) i!1381) k!2747))))

(declare-fun res!699995 () Bool)

(assert (=> start!92458 (=> (not res!699995) (not e!596376))))

(assert (=> start!92458 (= res!699995 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32376 a!3488)) (bvslt (size!32376 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92458 e!596376))

(assert (=> start!92458 true))

(declare-fun array_inv!24461 (array!66207) Bool)

(assert (=> start!92458 (array_inv!24461 a!3488)))

(declare-fun b!1050758 () Bool)

(declare-fun res!699996 () Bool)

(assert (=> b!1050758 (=> (not res!699996) (not e!596376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050758 (= res!699996 (validKeyInArray!0 k!2747))))

(declare-fun b!1050759 () Bool)

(declare-fun e!596377 () Bool)

(declare-fun arrayContainsKey!0 (array!66207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050759 (= e!596377 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1050760 () Bool)

(declare-fun e!596380 () Bool)

(declare-fun e!596381 () Bool)

(assert (=> b!1050760 (= e!596380 e!596381)))

(declare-fun res!699997 () Bool)

(assert (=> b!1050760 (=> (not res!699997) (not e!596381))))

(declare-fun lt!464058 () (_ BitVec 32))

(assert (=> b!1050760 (= res!699997 (not (= lt!464058 i!1381)))))

(declare-fun lt!464059 () array!66207)

(declare-fun arrayScanForKey!0 (array!66207 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050760 (= lt!464058 (arrayScanForKey!0 lt!464059 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050761 () Bool)

(assert (=> b!1050761 (= e!596376 e!596380)))

(declare-fun res!699992 () Bool)

(assert (=> b!1050761 (=> (not res!699992) (not e!596380))))

(assert (=> b!1050761 (= res!699992 (arrayContainsKey!0 lt!464059 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050761 (= lt!464059 (array!66208 (store (arr!31839 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32376 a!3488)))))

(declare-fun b!1050762 () Bool)

(assert (=> b!1050762 (= e!596381 (not true))))

(declare-fun e!596378 () Bool)

(assert (=> b!1050762 e!596378))

(declare-fun res!699993 () Bool)

(assert (=> b!1050762 (=> (not res!699993) (not e!596378))))

(assert (=> b!1050762 (= res!699993 (= (select (store (arr!31839 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464058) k!2747))))

(declare-fun b!1050763 () Bool)

(assert (=> b!1050763 (= e!596378 e!596377)))

(declare-fun res!699994 () Bool)

(assert (=> b!1050763 (=> res!699994 e!596377)))

(assert (=> b!1050763 (= res!699994 (or (bvsgt lt!464058 i!1381) (bvsle i!1381 lt!464058)))))

(declare-fun b!1050764 () Bool)

(declare-fun res!699998 () Bool)

(assert (=> b!1050764 (=> (not res!699998) (not e!596376))))

(declare-datatypes ((List!22282 0))(
  ( (Nil!22279) (Cons!22278 (h!23487 (_ BitVec 64)) (t!31596 List!22282)) )
))
(declare-fun arrayNoDuplicates!0 (array!66207 (_ BitVec 32) List!22282) Bool)

(assert (=> b!1050764 (= res!699998 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22279))))

(assert (= (and start!92458 res!699995) b!1050764))

(assert (= (and b!1050764 res!699998) b!1050758))

(assert (= (and b!1050758 res!699996) b!1050757))

(assert (= (and b!1050757 res!699999) b!1050761))

(assert (= (and b!1050761 res!699992) b!1050760))

(assert (= (and b!1050760 res!699997) b!1050762))

(assert (= (and b!1050762 res!699993) b!1050763))

(assert (= (and b!1050763 (not res!699994)) b!1050759))

(declare-fun m!971535 () Bool)

(assert (=> b!1050760 m!971535))

(declare-fun m!971537 () Bool)

(assert (=> b!1050758 m!971537))

(declare-fun m!971539 () Bool)

(assert (=> start!92458 m!971539))

(declare-fun m!971541 () Bool)

(assert (=> b!1050761 m!971541))

(declare-fun m!971543 () Bool)

(assert (=> b!1050761 m!971543))

(declare-fun m!971545 () Bool)

(assert (=> b!1050759 m!971545))

(assert (=> b!1050762 m!971543))

(declare-fun m!971547 () Bool)

(assert (=> b!1050762 m!971547))

(declare-fun m!971549 () Bool)

(assert (=> b!1050757 m!971549))

(declare-fun m!971551 () Bool)

(assert (=> b!1050764 m!971551))

(push 1)

