; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92502 () Bool)

(assert start!92502)

(declare-fun b!1051323 () Bool)

(declare-fun res!700561 () Bool)

(declare-fun e!596811 () Bool)

(assert (=> b!1051323 (=> (not res!700561) (not e!596811))))

(declare-datatypes ((array!66251 0))(
  ( (array!66252 (arr!31861 (Array (_ BitVec 32) (_ BitVec 64))) (size!32398 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66251)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051323 (= res!700561 (= (select (arr!31861 a!3488) i!1381) k!2747))))

(declare-fun e!596816 () Bool)

(declare-fun b!1051324 () Bool)

(declare-fun arrayContainsKey!0 (array!66251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051324 (= e!596816 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051325 () Bool)

(declare-fun e!596812 () Bool)

(assert (=> b!1051325 (= e!596812 e!596816)))

(declare-fun res!700562 () Bool)

(assert (=> b!1051325 (=> res!700562 e!596816)))

(declare-fun lt!464229 () (_ BitVec 32))

(assert (=> b!1051325 (= res!700562 (or (bvsgt lt!464229 i!1381) (bvsle i!1381 lt!464229)))))

(declare-fun b!1051326 () Bool)

(declare-fun e!596814 () Bool)

(declare-fun e!596810 () Bool)

(assert (=> b!1051326 (= e!596814 (not e!596810))))

(declare-fun res!700566 () Bool)

(assert (=> b!1051326 (=> res!700566 e!596810)))

(assert (=> b!1051326 (= res!700566 (or (bvsgt lt!464229 i!1381) (bvsle i!1381 lt!464229)))))

(assert (=> b!1051326 e!596812))

(declare-fun res!700563 () Bool)

(assert (=> b!1051326 (=> (not res!700563) (not e!596812))))

(assert (=> b!1051326 (= res!700563 (= (select (store (arr!31861 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464229) k!2747))))

(declare-fun b!1051327 () Bool)

(assert (=> b!1051327 (= e!596810 true)))

(declare-datatypes ((List!22304 0))(
  ( (Nil!22301) (Cons!22300 (h!23509 (_ BitVec 64)) (t!31618 List!22304)) )
))
(declare-fun arrayNoDuplicates!0 (array!66251 (_ BitVec 32) List!22304) Bool)

(assert (=> b!1051327 (arrayNoDuplicates!0 a!3488 lt!464229 Nil!22301)))

(declare-datatypes ((Unit!34403 0))(
  ( (Unit!34404) )
))
(declare-fun lt!464230 () Unit!34403)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66251 (_ BitVec 32) (_ BitVec 32)) Unit!34403)

(assert (=> b!1051327 (= lt!464230 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464229))))

(declare-fun b!1051328 () Bool)

(declare-fun e!596813 () Bool)

(assert (=> b!1051328 (= e!596811 e!596813)))

(declare-fun res!700565 () Bool)

(assert (=> b!1051328 (=> (not res!700565) (not e!596813))))

(declare-fun lt!464228 () array!66251)

(assert (=> b!1051328 (= res!700565 (arrayContainsKey!0 lt!464228 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051328 (= lt!464228 (array!66252 (store (arr!31861 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32398 a!3488)))))

(declare-fun b!1051329 () Bool)

(declare-fun res!700558 () Bool)

(assert (=> b!1051329 (=> (not res!700558) (not e!596811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051329 (= res!700558 (validKeyInArray!0 k!2747))))

(declare-fun b!1051330 () Bool)

(declare-fun res!700559 () Bool)

(assert (=> b!1051330 (=> (not res!700559) (not e!596811))))

(assert (=> b!1051330 (= res!700559 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22301))))

(declare-fun res!700560 () Bool)

(assert (=> start!92502 (=> (not res!700560) (not e!596811))))

(assert (=> start!92502 (= res!700560 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32398 a!3488)) (bvslt (size!32398 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92502 e!596811))

(assert (=> start!92502 true))

(declare-fun array_inv!24483 (array!66251) Bool)

(assert (=> start!92502 (array_inv!24483 a!3488)))

(declare-fun b!1051331 () Bool)

(assert (=> b!1051331 (= e!596813 e!596814)))

(declare-fun res!700564 () Bool)

(assert (=> b!1051331 (=> (not res!700564) (not e!596814))))

(assert (=> b!1051331 (= res!700564 (not (= lt!464229 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66251 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051331 (= lt!464229 (arrayScanForKey!0 lt!464228 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92502 res!700560) b!1051330))

(assert (= (and b!1051330 res!700559) b!1051329))

(assert (= (and b!1051329 res!700558) b!1051323))

(assert (= (and b!1051323 res!700561) b!1051328))

(assert (= (and b!1051328 res!700565) b!1051331))

(assert (= (and b!1051331 res!700564) b!1051326))

(assert (= (and b!1051326 res!700563) b!1051325))

(assert (= (and b!1051325 (not res!700562)) b!1051324))

(assert (= (and b!1051326 (not res!700566)) b!1051327))

(declare-fun m!971979 () Bool)

(assert (=> b!1051331 m!971979))

(declare-fun m!971981 () Bool)

(assert (=> b!1051326 m!971981))

(declare-fun m!971983 () Bool)

(assert (=> b!1051326 m!971983))

(declare-fun m!971985 () Bool)

(assert (=> b!1051329 m!971985))

(declare-fun m!971987 () Bool)

(assert (=> b!1051330 m!971987))

(declare-fun m!971989 () Bool)

(assert (=> b!1051323 m!971989))

(declare-fun m!971991 () Bool)

(assert (=> b!1051328 m!971991))

(assert (=> b!1051328 m!971981))

(declare-fun m!971993 () Bool)

(assert (=> start!92502 m!971993))

(declare-fun m!971995 () Bool)

(assert (=> b!1051324 m!971995))

(declare-fun m!971997 () Bool)

(assert (=> b!1051327 m!971997))

(declare-fun m!971999 () Bool)

(assert (=> b!1051327 m!971999))

(push 1)

