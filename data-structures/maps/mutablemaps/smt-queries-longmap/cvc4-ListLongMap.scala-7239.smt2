; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92536 () Bool)

(assert start!92536)

(declare-fun b!1051887 () Bool)

(declare-fun e!597203 () Bool)

(declare-fun e!597204 () Bool)

(assert (=> b!1051887 (= e!597203 e!597204)))

(declare-fun res!701129 () Bool)

(assert (=> b!1051887 (=> res!701129 e!597204)))

(declare-fun lt!464487 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051887 (= res!701129 (or (bvsgt lt!464487 i!1381) (bvsle i!1381 lt!464487)))))

(declare-fun b!1051888 () Bool)

(declare-fun e!597205 () Bool)

(declare-fun e!597206 () Bool)

(assert (=> b!1051888 (= e!597205 e!597206)))

(declare-fun res!701123 () Bool)

(assert (=> b!1051888 (=> (not res!701123) (not e!597206))))

(declare-datatypes ((array!66285 0))(
  ( (array!66286 (arr!31878 (Array (_ BitVec 32) (_ BitVec 64))) (size!32415 (_ BitVec 32))) )
))
(declare-fun lt!464491 () array!66285)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051888 (= res!701123 (arrayContainsKey!0 lt!464491 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66285)

(assert (=> b!1051888 (= lt!464491 (array!66286 (store (arr!31878 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32415 a!3488)))))

(declare-fun b!1051889 () Bool)

(declare-fun res!701133 () Bool)

(assert (=> b!1051889 (=> (not res!701133) (not e!597205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051889 (= res!701133 (validKeyInArray!0 k!2747))))

(declare-fun b!1051890 () Bool)

(declare-fun e!597208 () Bool)

(declare-fun e!597207 () Bool)

(assert (=> b!1051890 (= e!597208 e!597207)))

(declare-fun res!701125 () Bool)

(assert (=> b!1051890 (=> res!701125 e!597207)))

(declare-fun lt!464486 () (_ BitVec 32))

(assert (=> b!1051890 (= res!701125 (or (bvslt lt!464487 #b00000000000000000000000000000000) (bvsge lt!464486 (size!32415 a!3488)) (bvsge lt!464487 (size!32415 a!3488))))))

(assert (=> b!1051890 (arrayContainsKey!0 a!3488 k!2747 lt!464486)))

(declare-datatypes ((Unit!34437 0))(
  ( (Unit!34438) )
))
(declare-fun lt!464489 () Unit!34437)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66285 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34437)

(assert (=> b!1051890 (= lt!464489 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464486))))

(assert (=> b!1051890 (= lt!464486 (bvadd #b00000000000000000000000000000001 lt!464487))))

(declare-datatypes ((List!22321 0))(
  ( (Nil!22318) (Cons!22317 (h!23526 (_ BitVec 64)) (t!31635 List!22321)) )
))
(declare-fun arrayNoDuplicates!0 (array!66285 (_ BitVec 32) List!22321) Bool)

(assert (=> b!1051890 (arrayNoDuplicates!0 a!3488 lt!464487 Nil!22318)))

(declare-fun lt!464490 () Unit!34437)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66285 (_ BitVec 32) (_ BitVec 32)) Unit!34437)

(assert (=> b!1051890 (= lt!464490 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464487))))

(declare-fun b!1051891 () Bool)

(declare-fun res!701131 () Bool)

(assert (=> b!1051891 (=> res!701131 e!597207)))

(declare-fun contains!6162 (List!22321 (_ BitVec 64)) Bool)

(assert (=> b!1051891 (= res!701131 (contains!6162 Nil!22318 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051892 () Bool)

(assert (=> b!1051892 (= e!597207 true)))

(declare-fun lt!464488 () Bool)

(assert (=> b!1051892 (= lt!464488 (contains!6162 Nil!22318 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051893 () Bool)

(declare-fun e!597209 () Bool)

(assert (=> b!1051893 (= e!597206 e!597209)))

(declare-fun res!701130 () Bool)

(assert (=> b!1051893 (=> (not res!701130) (not e!597209))))

(assert (=> b!1051893 (= res!701130 (not (= lt!464487 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66285 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051893 (= lt!464487 (arrayScanForKey!0 lt!464491 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051894 () Bool)

(declare-fun res!701128 () Bool)

(assert (=> b!1051894 (=> res!701128 e!597207)))

(declare-fun noDuplicate!1547 (List!22321) Bool)

(assert (=> b!1051894 (= res!701128 (not (noDuplicate!1547 Nil!22318)))))

(declare-fun b!1051895 () Bool)

(assert (=> b!1051895 (= e!597204 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051896 () Bool)

(declare-fun res!701126 () Bool)

(assert (=> b!1051896 (=> (not res!701126) (not e!597205))))

(assert (=> b!1051896 (= res!701126 (= (select (arr!31878 a!3488) i!1381) k!2747))))

(declare-fun b!1051897 () Bool)

(assert (=> b!1051897 (= e!597209 (not e!597208))))

(declare-fun res!701127 () Bool)

(assert (=> b!1051897 (=> res!701127 e!597208)))

(assert (=> b!1051897 (= res!701127 (or (bvsgt lt!464487 i!1381) (bvsle i!1381 lt!464487)))))

(assert (=> b!1051897 e!597203))

(declare-fun res!701132 () Bool)

(assert (=> b!1051897 (=> (not res!701132) (not e!597203))))

(assert (=> b!1051897 (= res!701132 (= (select (store (arr!31878 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464487) k!2747))))

(declare-fun b!1051898 () Bool)

(declare-fun res!701122 () Bool)

(assert (=> b!1051898 (=> (not res!701122) (not e!597205))))

(assert (=> b!1051898 (= res!701122 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22318))))

(declare-fun res!701124 () Bool)

(assert (=> start!92536 (=> (not res!701124) (not e!597205))))

(assert (=> start!92536 (= res!701124 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32415 a!3488)) (bvslt (size!32415 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92536 e!597205))

(assert (=> start!92536 true))

(declare-fun array_inv!24500 (array!66285) Bool)

(assert (=> start!92536 (array_inv!24500 a!3488)))

(assert (= (and start!92536 res!701124) b!1051898))

(assert (= (and b!1051898 res!701122) b!1051889))

(assert (= (and b!1051889 res!701133) b!1051896))

(assert (= (and b!1051896 res!701126) b!1051888))

(assert (= (and b!1051888 res!701123) b!1051893))

(assert (= (and b!1051893 res!701130) b!1051897))

(assert (= (and b!1051897 res!701132) b!1051887))

(assert (= (and b!1051887 (not res!701129)) b!1051895))

(assert (= (and b!1051897 (not res!701127)) b!1051890))

(assert (= (and b!1051890 (not res!701125)) b!1051894))

(assert (= (and b!1051894 (not res!701128)) b!1051891))

(assert (= (and b!1051891 (not res!701131)) b!1051892))

(declare-fun m!972463 () Bool)

(assert (=> start!92536 m!972463))

(declare-fun m!972465 () Bool)

(assert (=> b!1051895 m!972465))

(declare-fun m!972467 () Bool)

(assert (=> b!1051891 m!972467))

(declare-fun m!972469 () Bool)

(assert (=> b!1051894 m!972469))

(declare-fun m!972471 () Bool)

(assert (=> b!1051889 m!972471))

(declare-fun m!972473 () Bool)

(assert (=> b!1051890 m!972473))

(declare-fun m!972475 () Bool)

(assert (=> b!1051890 m!972475))

(declare-fun m!972477 () Bool)

(assert (=> b!1051890 m!972477))

(declare-fun m!972479 () Bool)

(assert (=> b!1051890 m!972479))

(declare-fun m!972481 () Bool)

(assert (=> b!1051896 m!972481))

(declare-fun m!972483 () Bool)

(assert (=> b!1051897 m!972483))

(declare-fun m!972485 () Bool)

(assert (=> b!1051897 m!972485))

(declare-fun m!972487 () Bool)

(assert (=> b!1051893 m!972487))

(declare-fun m!972489 () Bool)

(assert (=> b!1051898 m!972489))

(declare-fun m!972491 () Bool)

(assert (=> b!1051892 m!972491))

(declare-fun m!972493 () Bool)

(assert (=> b!1051888 m!972493))

(assert (=> b!1051888 m!972483))

(push 1)

(assert (not b!1051888))

(assert (not b!1051894))

(assert (not b!1051898))

(assert (not b!1051891))

(assert (not b!1051890))

