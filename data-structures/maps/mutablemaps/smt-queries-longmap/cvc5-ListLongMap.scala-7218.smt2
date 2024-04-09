; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92406 () Bool)

(assert start!92406)

(declare-fun b!1050132 () Bool)

(declare-fun e!595924 () Bool)

(declare-fun e!595925 () Bool)

(assert (=> b!1050132 (= e!595924 e!595925)))

(declare-fun res!699372 () Bool)

(assert (=> b!1050132 (=> (not res!699372) (not e!595925))))

(declare-fun lt!463801 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050132 (= res!699372 (not (= lt!463801 i!1381)))))

(declare-datatypes ((array!66155 0))(
  ( (array!66156 (arr!31813 (Array (_ BitVec 32) (_ BitVec 64))) (size!32350 (_ BitVec 32))) )
))
(declare-fun lt!463802 () array!66155)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66155 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050132 (= lt!463801 (arrayScanForKey!0 lt!463802 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050133 () Bool)

(declare-fun res!699369 () Bool)

(declare-fun e!595921 () Bool)

(assert (=> b!1050133 (=> res!699369 e!595921)))

(declare-datatypes ((List!22256 0))(
  ( (Nil!22253) (Cons!22252 (h!23461 (_ BitVec 64)) (t!31570 List!22256)) )
))
(declare-fun noDuplicate!1533 (List!22256) Bool)

(assert (=> b!1050133 (= res!699369 (not (noDuplicate!1533 Nil!22253)))))

(declare-fun b!1050134 () Bool)

(declare-fun res!699368 () Bool)

(assert (=> b!1050134 (=> res!699368 e!595921)))

(declare-fun contains!6148 (List!22256 (_ BitVec 64)) Bool)

(assert (=> b!1050134 (= res!699368 (contains!6148 Nil!22253 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1050135 () Bool)

(assert (=> b!1050135 (= e!595921 true)))

(declare-fun lt!463800 () Bool)

(assert (=> b!1050135 (= lt!463800 (contains!6148 Nil!22253 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1050136 () Bool)

(declare-fun res!699367 () Bool)

(declare-fun e!595922 () Bool)

(assert (=> b!1050136 (=> (not res!699367) (not e!595922))))

(declare-fun a!3488 () array!66155)

(declare-fun arrayNoDuplicates!0 (array!66155 (_ BitVec 32) List!22256) Bool)

(assert (=> b!1050136 (= res!699367 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22253))))

(declare-fun e!595928 () Bool)

(declare-fun b!1050137 () Bool)

(declare-fun arrayContainsKey!0 (array!66155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050137 (= e!595928 (arrayContainsKey!0 a!3488 k!2747 lt!463801))))

(declare-fun b!1050138 () Bool)

(declare-fun res!699375 () Bool)

(assert (=> b!1050138 (=> (not res!699375) (not e!595922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050138 (= res!699375 (validKeyInArray!0 k!2747))))

(declare-fun res!699373 () Bool)

(assert (=> start!92406 (=> (not res!699373) (not e!595922))))

(assert (=> start!92406 (= res!699373 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32350 a!3488)) (bvslt (size!32350 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92406 e!595922))

(assert (=> start!92406 true))

(declare-fun array_inv!24435 (array!66155) Bool)

(assert (=> start!92406 (array_inv!24435 a!3488)))

(declare-fun b!1050139 () Bool)

(declare-fun e!595927 () Bool)

(assert (=> b!1050139 (= e!595925 (not e!595927))))

(declare-fun res!699377 () Bool)

(assert (=> b!1050139 (=> res!699377 e!595927)))

(assert (=> b!1050139 (= res!699377 (bvsle lt!463801 i!1381))))

(declare-fun e!595926 () Bool)

(assert (=> b!1050139 e!595926))

(declare-fun res!699370 () Bool)

(assert (=> b!1050139 (=> (not res!699370) (not e!595926))))

(assert (=> b!1050139 (= res!699370 (= (select (store (arr!31813 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463801) k!2747))))

(declare-fun b!1050140 () Bool)

(assert (=> b!1050140 (= e!595927 e!595921)))

(declare-fun res!699376 () Bool)

(assert (=> b!1050140 (=> res!699376 e!595921)))

(assert (=> b!1050140 (= res!699376 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32350 a!3488)))))

(assert (=> b!1050140 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34355 0))(
  ( (Unit!34356) )
))
(declare-fun lt!463804 () Unit!34355)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66155 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34355)

(assert (=> b!1050140 (= lt!463804 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463801 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1050140 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22253)))

(declare-fun lt!463803 () Unit!34355)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66155 (_ BitVec 32) (_ BitVec 32)) Unit!34355)

(assert (=> b!1050140 (= lt!463803 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1050141 () Bool)

(assert (=> b!1050141 (= e!595922 e!595924)))

(declare-fun res!699371 () Bool)

(assert (=> b!1050141 (=> (not res!699371) (not e!595924))))

(assert (=> b!1050141 (= res!699371 (arrayContainsKey!0 lt!463802 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050141 (= lt!463802 (array!66156 (store (arr!31813 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32350 a!3488)))))

(declare-fun b!1050142 () Bool)

(assert (=> b!1050142 (= e!595926 e!595928)))

(declare-fun res!699374 () Bool)

(assert (=> b!1050142 (=> res!699374 e!595928)))

(assert (=> b!1050142 (= res!699374 (bvsle lt!463801 i!1381))))

(declare-fun b!1050143 () Bool)

(declare-fun res!699378 () Bool)

(assert (=> b!1050143 (=> (not res!699378) (not e!595922))))

(assert (=> b!1050143 (= res!699378 (= (select (arr!31813 a!3488) i!1381) k!2747))))

(assert (= (and start!92406 res!699373) b!1050136))

(assert (= (and b!1050136 res!699367) b!1050138))

(assert (= (and b!1050138 res!699375) b!1050143))

(assert (= (and b!1050143 res!699378) b!1050141))

(assert (= (and b!1050141 res!699371) b!1050132))

(assert (= (and b!1050132 res!699372) b!1050139))

(assert (= (and b!1050139 res!699370) b!1050142))

(assert (= (and b!1050142 (not res!699374)) b!1050137))

(assert (= (and b!1050139 (not res!699377)) b!1050140))

(assert (= (and b!1050140 (not res!699376)) b!1050133))

(assert (= (and b!1050133 (not res!699369)) b!1050134))

(assert (= (and b!1050134 (not res!699368)) b!1050135))

(declare-fun m!970953 () Bool)

(assert (=> b!1050136 m!970953))

(declare-fun m!970955 () Bool)

(assert (=> b!1050135 m!970955))

(declare-fun m!970957 () Bool)

(assert (=> b!1050132 m!970957))

(declare-fun m!970959 () Bool)

(assert (=> b!1050137 m!970959))

(declare-fun m!970961 () Bool)

(assert (=> b!1050139 m!970961))

(declare-fun m!970963 () Bool)

(assert (=> b!1050139 m!970963))

(declare-fun m!970965 () Bool)

(assert (=> b!1050138 m!970965))

(declare-fun m!970967 () Bool)

(assert (=> b!1050140 m!970967))

(declare-fun m!970969 () Bool)

(assert (=> b!1050140 m!970969))

(declare-fun m!970971 () Bool)

(assert (=> b!1050140 m!970971))

(declare-fun m!970973 () Bool)

(assert (=> b!1050140 m!970973))

(declare-fun m!970975 () Bool)

(assert (=> start!92406 m!970975))

(declare-fun m!970977 () Bool)

(assert (=> b!1050141 m!970977))

(assert (=> b!1050141 m!970961))

(declare-fun m!970979 () Bool)

(assert (=> b!1050134 m!970979))

(declare-fun m!970981 () Bool)

(assert (=> b!1050143 m!970981))

(declare-fun m!970983 () Bool)

(assert (=> b!1050133 m!970983))

(push 1)

