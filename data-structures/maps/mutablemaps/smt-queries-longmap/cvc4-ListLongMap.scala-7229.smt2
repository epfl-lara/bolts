; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92476 () Bool)

(assert start!92476)

(declare-fun e!596539 () Bool)

(declare-datatypes ((array!66225 0))(
  ( (array!66226 (arr!31848 (Array (_ BitVec 32) (_ BitVec 64))) (size!32385 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66225)

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun b!1050973 () Bool)

(declare-fun arrayContainsKey!0 (array!66225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050973 (= e!596539 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1050974 () Bool)

(declare-fun e!596538 () Bool)

(declare-fun e!596541 () Bool)

(assert (=> b!1050974 (= e!596538 e!596541)))

(declare-fun res!700209 () Bool)

(assert (=> b!1050974 (=> (not res!700209) (not e!596541))))

(declare-fun lt!464112 () (_ BitVec 32))

(assert (=> b!1050974 (= res!700209 (not (= lt!464112 i!1381)))))

(declare-fun lt!464113 () array!66225)

(declare-fun arrayScanForKey!0 (array!66225 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050974 (= lt!464112 (arrayScanForKey!0 lt!464113 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050975 () Bool)

(declare-fun res!700210 () Bool)

(declare-fun e!596542 () Bool)

(assert (=> b!1050975 (=> (not res!700210) (not e!596542))))

(declare-datatypes ((List!22291 0))(
  ( (Nil!22288) (Cons!22287 (h!23496 (_ BitVec 64)) (t!31605 List!22291)) )
))
(declare-fun arrayNoDuplicates!0 (array!66225 (_ BitVec 32) List!22291) Bool)

(assert (=> b!1050975 (= res!700210 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22288))))

(declare-fun b!1050976 () Bool)

(declare-fun e!596543 () Bool)

(assert (=> b!1050976 (= e!596543 e!596539)))

(declare-fun res!700212 () Bool)

(assert (=> b!1050976 (=> res!700212 e!596539)))

(assert (=> b!1050976 (= res!700212 (or (bvsgt lt!464112 i!1381) (bvsle i!1381 lt!464112)))))

(declare-fun b!1050977 () Bool)

(declare-fun res!700208 () Bool)

(assert (=> b!1050977 (=> (not res!700208) (not e!596542))))

(assert (=> b!1050977 (= res!700208 (= (select (arr!31848 a!3488) i!1381) k!2747))))

(declare-fun res!700214 () Bool)

(assert (=> start!92476 (=> (not res!700214) (not e!596542))))

(assert (=> start!92476 (= res!700214 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32385 a!3488)) (bvslt (size!32385 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92476 e!596542))

(assert (=> start!92476 true))

(declare-fun array_inv!24470 (array!66225) Bool)

(assert (=> start!92476 (array_inv!24470 a!3488)))

(declare-fun b!1050978 () Bool)

(assert (=> b!1050978 (= e!596542 e!596538)))

(declare-fun res!700215 () Bool)

(assert (=> b!1050978 (=> (not res!700215) (not e!596538))))

(assert (=> b!1050978 (= res!700215 (arrayContainsKey!0 lt!464113 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050978 (= lt!464113 (array!66226 (store (arr!31848 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32385 a!3488)))))

(declare-fun b!1050979 () Bool)

(declare-fun res!700211 () Bool)

(assert (=> b!1050979 (=> (not res!700211) (not e!596542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050979 (= res!700211 (validKeyInArray!0 k!2747))))

(declare-fun b!1050980 () Bool)

(assert (=> b!1050980 (= e!596541 (not true))))

(assert (=> b!1050980 e!596543))

(declare-fun res!700213 () Bool)

(assert (=> b!1050980 (=> (not res!700213) (not e!596543))))

(assert (=> b!1050980 (= res!700213 (= (select (store (arr!31848 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464112) k!2747))))

(assert (= (and start!92476 res!700214) b!1050975))

(assert (= (and b!1050975 res!700210) b!1050979))

(assert (= (and b!1050979 res!700211) b!1050977))

(assert (= (and b!1050977 res!700208) b!1050978))

(assert (= (and b!1050978 res!700215) b!1050974))

(assert (= (and b!1050974 res!700209) b!1050980))

(assert (= (and b!1050980 res!700213) b!1050976))

(assert (= (and b!1050976 (not res!700212)) b!1050973))

(declare-fun m!971697 () Bool)

(assert (=> b!1050980 m!971697))

(declare-fun m!971699 () Bool)

(assert (=> b!1050980 m!971699))

(declare-fun m!971701 () Bool)

(assert (=> b!1050974 m!971701))

(declare-fun m!971703 () Bool)

(assert (=> b!1050977 m!971703))

(declare-fun m!971705 () Bool)

(assert (=> b!1050979 m!971705))

(declare-fun m!971707 () Bool)

(assert (=> b!1050978 m!971707))

(assert (=> b!1050978 m!971697))

(declare-fun m!971709 () Bool)

(assert (=> b!1050973 m!971709))

(declare-fun m!971711 () Bool)

(assert (=> start!92476 m!971711))

(declare-fun m!971713 () Bool)

(assert (=> b!1050975 m!971713))

(push 1)

(assert (not start!92476))

(assert (not b!1050973))

(assert (not b!1050975))

(assert (