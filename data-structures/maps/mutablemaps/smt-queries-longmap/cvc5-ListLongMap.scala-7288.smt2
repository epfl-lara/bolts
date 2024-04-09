; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93156 () Bool)

(assert start!93156)

(declare-fun res!705100 () Bool)

(declare-fun e!600474 () Bool)

(assert (=> start!93156 (=> (not res!705100) (not e!600474))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66602 0))(
  ( (array!66603 (arr!32023 (Array (_ BitVec 32) (_ BitVec 64))) (size!32560 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66602)

(assert (=> start!93156 (= res!705100 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32560 a!3488)) (bvslt (size!32560 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93156 e!600474))

(assert (=> start!93156 true))

(declare-fun array_inv!24645 (array!66602) Bool)

(assert (=> start!93156 (array_inv!24645 a!3488)))

(declare-fun b!1056211 () Bool)

(declare-fun lt!466047 () (_ BitVec 32))

(declare-fun e!600475 () Bool)

(assert (=> b!1056211 (= e!600475 (not (or (bvsgt lt!466047 i!1381) (bvsle i!1381 lt!466047) (bvsle #b00000000000000000000000000000000 (size!32560 a!3488)))))))

(declare-fun e!600473 () Bool)

(assert (=> b!1056211 e!600473))

(declare-fun res!705101 () Bool)

(assert (=> b!1056211 (=> (not res!705101) (not e!600473))))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1056211 (= res!705101 (= (select (store (arr!32023 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466047) k!2747))))

(declare-fun b!1056212 () Bool)

(declare-fun res!705102 () Bool)

(assert (=> b!1056212 (=> (not res!705102) (not e!600474))))

(declare-datatypes ((List!22466 0))(
  ( (Nil!22463) (Cons!22462 (h!23671 (_ BitVec 64)) (t!31780 List!22466)) )
))
(declare-fun arrayNoDuplicates!0 (array!66602 (_ BitVec 32) List!22466) Bool)

(assert (=> b!1056212 (= res!705102 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22463))))

(declare-fun b!1056213 () Bool)

(declare-fun res!705103 () Bool)

(assert (=> b!1056213 (=> (not res!705103) (not e!600474))))

(assert (=> b!1056213 (= res!705103 (= (select (arr!32023 a!3488) i!1381) k!2747))))

(declare-fun b!1056214 () Bool)

(declare-fun e!600471 () Bool)

(declare-fun arrayContainsKey!0 (array!66602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056214 (= e!600471 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056215 () Bool)

(declare-fun e!600476 () Bool)

(assert (=> b!1056215 (= e!600474 e!600476)))

(declare-fun res!705099 () Bool)

(assert (=> b!1056215 (=> (not res!705099) (not e!600476))))

(declare-fun lt!466048 () array!66602)

(assert (=> b!1056215 (= res!705099 (arrayContainsKey!0 lt!466048 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056215 (= lt!466048 (array!66603 (store (arr!32023 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32560 a!3488)))))

(declare-fun b!1056216 () Bool)

(assert (=> b!1056216 (= e!600473 e!600471)))

(declare-fun res!705098 () Bool)

(assert (=> b!1056216 (=> res!705098 e!600471)))

(assert (=> b!1056216 (= res!705098 (or (bvsgt lt!466047 i!1381) (bvsle i!1381 lt!466047)))))

(declare-fun b!1056217 () Bool)

(assert (=> b!1056217 (= e!600476 e!600475)))

(declare-fun res!705105 () Bool)

(assert (=> b!1056217 (=> (not res!705105) (not e!600475))))

(assert (=> b!1056217 (= res!705105 (not (= lt!466047 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66602 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056217 (= lt!466047 (arrayScanForKey!0 lt!466048 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056218 () Bool)

(declare-fun res!705104 () Bool)

(assert (=> b!1056218 (=> (not res!705104) (not e!600474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056218 (= res!705104 (validKeyInArray!0 k!2747))))

(assert (= (and start!93156 res!705100) b!1056212))

(assert (= (and b!1056212 res!705102) b!1056218))

(assert (= (and b!1056218 res!705104) b!1056213))

(assert (= (and b!1056213 res!705103) b!1056215))

(assert (= (and b!1056215 res!705099) b!1056217))

(assert (= (and b!1056217 res!705105) b!1056211))

(assert (= (and b!1056211 res!705101) b!1056216))

(assert (= (and b!1056216 (not res!705098)) b!1056214))

(declare-fun m!976257 () Bool)

(assert (=> b!1056215 m!976257))

(declare-fun m!976259 () Bool)

(assert (=> b!1056215 m!976259))

(assert (=> b!1056211 m!976259))

(declare-fun m!976261 () Bool)

(assert (=> b!1056211 m!976261))

(declare-fun m!976263 () Bool)

(assert (=> b!1056214 m!976263))

(declare-fun m!976265 () Bool)

(assert (=> start!93156 m!976265))

(declare-fun m!976267 () Bool)

(assert (=> b!1056213 m!976267))

(declare-fun m!976269 () Bool)

(assert (=> b!1056217 m!976269))

(declare-fun m!976271 () Bool)

(assert (=> b!1056218 m!976271))

(declare-fun m!976273 () Bool)

(assert (=> b!1056212 m!976273))

(push 1)

