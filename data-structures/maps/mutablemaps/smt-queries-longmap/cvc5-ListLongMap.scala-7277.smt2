; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92958 () Bool)

(assert start!92958)

(declare-fun b!1054905 () Bool)

(declare-fun res!703919 () Bool)

(declare-fun e!599468 () Bool)

(assert (=> b!1054905 (=> (not res!703919) (not e!599468))))

(declare-datatypes ((array!66527 0))(
  ( (array!66528 (arr!31990 (Array (_ BitVec 32) (_ BitVec 64))) (size!32527 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66527)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054905 (= res!703919 (= (select (arr!31990 a!3488) i!1381) k!2747))))

(declare-fun b!1054906 () Bool)

(declare-fun e!599470 () Bool)

(assert (=> b!1054906 (= e!599470 true)))

(declare-fun arrayContainsKey!0 (array!66527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054906 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465592 () (_ BitVec 32))

(declare-datatypes ((Unit!34547 0))(
  ( (Unit!34548) )
))
(declare-fun lt!465591 () Unit!34547)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66527 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34547)

(assert (=> b!1054906 (= lt!465591 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465592 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22433 0))(
  ( (Nil!22430) (Cons!22429 (h!23638 (_ BitVec 64)) (t!31747 List!22433)) )
))
(declare-fun arrayNoDuplicates!0 (array!66527 (_ BitVec 32) List!22433) Bool)

(assert (=> b!1054906 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22430)))

(declare-fun lt!465589 () Unit!34547)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66527 (_ BitVec 32) (_ BitVec 32)) Unit!34547)

(assert (=> b!1054906 (= lt!465589 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!703916 () Bool)

(assert (=> start!92958 (=> (not res!703916) (not e!599468))))

(assert (=> start!92958 (= res!703916 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32527 a!3488)) (bvslt (size!32527 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92958 e!599468))

(assert (=> start!92958 true))

(declare-fun array_inv!24612 (array!66527) Bool)

(assert (=> start!92958 (array_inv!24612 a!3488)))

(declare-fun b!1054907 () Bool)

(declare-fun e!599469 () Bool)

(assert (=> b!1054907 (= e!599468 e!599469)))

(declare-fun res!703913 () Bool)

(assert (=> b!1054907 (=> (not res!703913) (not e!599469))))

(declare-fun lt!465590 () array!66527)

(assert (=> b!1054907 (= res!703913 (arrayContainsKey!0 lt!465590 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054907 (= lt!465590 (array!66528 (store (arr!31990 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32527 a!3488)))))

(declare-fun b!1054908 () Bool)

(declare-fun e!599473 () Bool)

(assert (=> b!1054908 (= e!599469 e!599473)))

(declare-fun res!703912 () Bool)

(assert (=> b!1054908 (=> (not res!703912) (not e!599473))))

(assert (=> b!1054908 (= res!703912 (not (= lt!465592 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66527 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054908 (= lt!465592 (arrayScanForKey!0 lt!465590 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054909 () Bool)

(declare-fun e!599471 () Bool)

(assert (=> b!1054909 (= e!599471 (arrayContainsKey!0 a!3488 k!2747 lt!465592))))

(declare-fun b!1054910 () Bool)

(assert (=> b!1054910 (= e!599473 (not e!599470))))

(declare-fun res!703920 () Bool)

(assert (=> b!1054910 (=> res!703920 e!599470)))

(assert (=> b!1054910 (= res!703920 (bvsle lt!465592 i!1381))))

(declare-fun e!599474 () Bool)

(assert (=> b!1054910 e!599474))

(declare-fun res!703914 () Bool)

(assert (=> b!1054910 (=> (not res!703914) (not e!599474))))

(assert (=> b!1054910 (= res!703914 (= (select (store (arr!31990 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465592) k!2747))))

(declare-fun b!1054911 () Bool)

(declare-fun res!703918 () Bool)

(assert (=> b!1054911 (=> (not res!703918) (not e!599468))))

(assert (=> b!1054911 (= res!703918 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22430))))

(declare-fun b!1054912 () Bool)

(assert (=> b!1054912 (= e!599474 e!599471)))

(declare-fun res!703917 () Bool)

(assert (=> b!1054912 (=> res!703917 e!599471)))

(assert (=> b!1054912 (= res!703917 (bvsle lt!465592 i!1381))))

(declare-fun b!1054913 () Bool)

(declare-fun res!703915 () Bool)

(assert (=> b!1054913 (=> (not res!703915) (not e!599468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054913 (= res!703915 (validKeyInArray!0 k!2747))))

(assert (= (and start!92958 res!703916) b!1054911))

(assert (= (and b!1054911 res!703918) b!1054913))

(assert (= (and b!1054913 res!703915) b!1054905))

(assert (= (and b!1054905 res!703919) b!1054907))

(assert (= (and b!1054907 res!703913) b!1054908))

(assert (= (and b!1054908 res!703912) b!1054910))

(assert (= (and b!1054910 res!703914) b!1054912))

(assert (= (and b!1054912 (not res!703917)) b!1054909))

(assert (= (and b!1054910 (not res!703920)) b!1054906))

(declare-fun m!975081 () Bool)

(assert (=> b!1054909 m!975081))

(declare-fun m!975083 () Bool)

(assert (=> b!1054905 m!975083))

(declare-fun m!975085 () Bool)

(assert (=> b!1054908 m!975085))

(declare-fun m!975087 () Bool)

(assert (=> start!92958 m!975087))

(declare-fun m!975089 () Bool)

(assert (=> b!1054910 m!975089))

(declare-fun m!975091 () Bool)

(assert (=> b!1054910 m!975091))

(declare-fun m!975093 () Bool)

(assert (=> b!1054913 m!975093))

(declare-fun m!975095 () Bool)

(assert (=> b!1054907 m!975095))

(assert (=> b!1054907 m!975089))

(declare-fun m!975097 () Bool)

(assert (=> b!1054906 m!975097))

(declare-fun m!975099 () Bool)

(assert (=> b!1054906 m!975099))

(declare-fun m!975101 () Bool)

(assert (=> b!1054906 m!975101))

(declare-fun m!975103 () Bool)

(assert (=> b!1054906 m!975103))

(declare-fun m!975105 () Bool)

(assert (=> b!1054911 m!975105))

(push 1)

