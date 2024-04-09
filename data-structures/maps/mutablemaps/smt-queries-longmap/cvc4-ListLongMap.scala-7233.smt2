; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92500 () Bool)

(assert start!92500)

(declare-fun b!1051296 () Bool)

(declare-fun e!596794 () Bool)

(declare-fun e!596792 () Bool)

(assert (=> b!1051296 (= e!596794 e!596792)))

(declare-fun res!700532 () Bool)

(assert (=> b!1051296 (=> (not res!700532) (not e!596792))))

(declare-fun lt!464219 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051296 (= res!700532 (not (= lt!464219 i!1381)))))

(declare-datatypes ((array!66249 0))(
  ( (array!66250 (arr!31860 (Array (_ BitVec 32) (_ BitVec 64))) (size!32397 (_ BitVec 32))) )
))
(declare-fun lt!464221 () array!66249)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66249 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051296 (= lt!464219 (arrayScanForKey!0 lt!464221 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051298 () Bool)

(declare-fun e!596789 () Bool)

(declare-fun e!596790 () Bool)

(assert (=> b!1051298 (= e!596789 e!596790)))

(declare-fun res!700535 () Bool)

(assert (=> b!1051298 (=> res!700535 e!596790)))

(assert (=> b!1051298 (= res!700535 (or (bvsgt lt!464219 i!1381) (bvsle i!1381 lt!464219)))))

(declare-fun a!3488 () array!66249)

(declare-fun b!1051299 () Bool)

(declare-fun arrayContainsKey!0 (array!66249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051299 (= e!596790 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051300 () Bool)

(declare-fun e!596793 () Bool)

(assert (=> b!1051300 (= e!596793 e!596794)))

(declare-fun res!700533 () Bool)

(assert (=> b!1051300 (=> (not res!700533) (not e!596794))))

(assert (=> b!1051300 (= res!700533 (arrayContainsKey!0 lt!464221 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051300 (= lt!464221 (array!66250 (store (arr!31860 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32397 a!3488)))))

(declare-fun b!1051301 () Bool)

(declare-fun res!700531 () Bool)

(assert (=> b!1051301 (=> (not res!700531) (not e!596793))))

(declare-datatypes ((List!22303 0))(
  ( (Nil!22300) (Cons!22299 (h!23508 (_ BitVec 64)) (t!31617 List!22303)) )
))
(declare-fun arrayNoDuplicates!0 (array!66249 (_ BitVec 32) List!22303) Bool)

(assert (=> b!1051301 (= res!700531 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22300))))

(declare-fun b!1051302 () Bool)

(declare-fun e!596791 () Bool)

(assert (=> b!1051302 (= e!596791 true)))

(assert (=> b!1051302 (arrayNoDuplicates!0 a!3488 lt!464219 Nil!22300)))

(declare-datatypes ((Unit!34401 0))(
  ( (Unit!34402) )
))
(declare-fun lt!464220 () Unit!34401)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66249 (_ BitVec 32) (_ BitVec 32)) Unit!34401)

(assert (=> b!1051302 (= lt!464220 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464219))))

(declare-fun b!1051303 () Bool)

(assert (=> b!1051303 (= e!596792 (not e!596791))))

(declare-fun res!700536 () Bool)

(assert (=> b!1051303 (=> res!700536 e!596791)))

(assert (=> b!1051303 (= res!700536 (or (bvsgt lt!464219 i!1381) (bvsle i!1381 lt!464219)))))

(assert (=> b!1051303 e!596789))

(declare-fun res!700537 () Bool)

(assert (=> b!1051303 (=> (not res!700537) (not e!596789))))

(assert (=> b!1051303 (= res!700537 (= (select (store (arr!31860 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464219) k!2747))))

(declare-fun b!1051304 () Bool)

(declare-fun res!700534 () Bool)

(assert (=> b!1051304 (=> (not res!700534) (not e!596793))))

(assert (=> b!1051304 (= res!700534 (= (select (arr!31860 a!3488) i!1381) k!2747))))

(declare-fun b!1051297 () Bool)

(declare-fun res!700538 () Bool)

(assert (=> b!1051297 (=> (not res!700538) (not e!596793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051297 (= res!700538 (validKeyInArray!0 k!2747))))

(declare-fun res!700539 () Bool)

(assert (=> start!92500 (=> (not res!700539) (not e!596793))))

(assert (=> start!92500 (= res!700539 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32397 a!3488)) (bvslt (size!32397 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92500 e!596793))

(assert (=> start!92500 true))

(declare-fun array_inv!24482 (array!66249) Bool)

(assert (=> start!92500 (array_inv!24482 a!3488)))

(assert (= (and start!92500 res!700539) b!1051301))

(assert (= (and b!1051301 res!700531) b!1051297))

(assert (= (and b!1051297 res!700538) b!1051304))

(assert (= (and b!1051304 res!700534) b!1051300))

(assert (= (and b!1051300 res!700533) b!1051296))

(assert (= (and b!1051296 res!700532) b!1051303))

(assert (= (and b!1051303 res!700537) b!1051298))

(assert (= (and b!1051298 (not res!700535)) b!1051299))

(assert (= (and b!1051303 (not res!700536)) b!1051302))

(declare-fun m!971957 () Bool)

(assert (=> b!1051302 m!971957))

(declare-fun m!971959 () Bool)

(assert (=> b!1051302 m!971959))

(declare-fun m!971961 () Bool)

(assert (=> start!92500 m!971961))

(declare-fun m!971963 () Bool)

(assert (=> b!1051303 m!971963))

(declare-fun m!971965 () Bool)

(assert (=> b!1051303 m!971965))

(declare-fun m!971967 () Bool)

(assert (=> b!1051299 m!971967))

(declare-fun m!971969 () Bool)

(assert (=> b!1051304 m!971969))

(declare-fun m!971971 () Bool)

(assert (=> b!1051296 m!971971))

(declare-fun m!971973 () Bool)

(assert (=> b!1051301 m!971973))

(declare-fun m!971975 () Bool)

(assert (=> b!1051300 m!971975))

(assert (=> b!1051300 m!971963))

(declare-fun m!971977 () Bool)

(assert (=> b!1051297 m!971977))

(push 1)

(assert (not b!1051297))

(assert (not b!1051301))

(assert (not start!92500))

