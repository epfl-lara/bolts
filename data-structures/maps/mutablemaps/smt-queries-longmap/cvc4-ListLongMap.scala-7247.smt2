; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92584 () Bool)

(assert start!92584)

(declare-fun b!1052673 () Bool)

(declare-fun e!597752 () Bool)

(declare-fun e!597756 () Bool)

(assert (=> b!1052673 (= e!597752 (not e!597756))))

(declare-fun res!701916 () Bool)

(assert (=> b!1052673 (=> res!701916 e!597756)))

(declare-fun lt!464922 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052673 (= res!701916 (or (bvsgt lt!464922 i!1381) (bvsle i!1381 lt!464922)))))

(declare-fun e!597757 () Bool)

(assert (=> b!1052673 e!597757))

(declare-fun res!701914 () Bool)

(assert (=> b!1052673 (=> (not res!701914) (not e!597757))))

(declare-datatypes ((array!66333 0))(
  ( (array!66334 (arr!31902 (Array (_ BitVec 32) (_ BitVec 64))) (size!32439 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66333)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1052673 (= res!701914 (= (select (store (arr!31902 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464922) k!2747))))

(declare-fun b!1052674 () Bool)

(declare-fun res!701911 () Bool)

(declare-fun e!597754 () Bool)

(assert (=> b!1052674 (=> (not res!701911) (not e!597754))))

(assert (=> b!1052674 (= res!701911 (= (select (arr!31902 a!3488) i!1381) k!2747))))

(declare-fun b!1052675 () Bool)

(declare-fun e!597755 () Bool)

(assert (=> b!1052675 (= e!597754 e!597755)))

(declare-fun res!701912 () Bool)

(assert (=> b!1052675 (=> (not res!701912) (not e!597755))))

(declare-fun lt!464923 () array!66333)

(declare-fun arrayContainsKey!0 (array!66333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052675 (= res!701912 (arrayContainsKey!0 lt!464923 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052675 (= lt!464923 (array!66334 (store (arr!31902 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32439 a!3488)))))

(declare-fun b!1052676 () Bool)

(declare-fun res!701908 () Bool)

(assert (=> b!1052676 (=> (not res!701908) (not e!597754))))

(declare-datatypes ((List!22345 0))(
  ( (Nil!22342) (Cons!22341 (h!23550 (_ BitVec 64)) (t!31659 List!22345)) )
))
(declare-fun arrayNoDuplicates!0 (array!66333 (_ BitVec 32) List!22345) Bool)

(assert (=> b!1052676 (= res!701908 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22342))))

(declare-fun res!701910 () Bool)

(assert (=> start!92584 (=> (not res!701910) (not e!597754))))

(assert (=> start!92584 (= res!701910 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32439 a!3488)) (bvslt (size!32439 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92584 e!597754))

(assert (=> start!92584 true))

(declare-fun array_inv!24524 (array!66333) Bool)

(assert (=> start!92584 (array_inv!24524 a!3488)))

(declare-fun e!597758 () Bool)

(declare-fun b!1052677 () Bool)

(assert (=> b!1052677 (= e!597758 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1052678 () Bool)

(assert (=> b!1052678 (= e!597756 true)))

(assert (=> b!1052678 (not (= (select (arr!31902 a!3488) lt!464922) k!2747))))

(declare-datatypes ((Unit!34485 0))(
  ( (Unit!34486) )
))
(declare-fun lt!464918 () Unit!34485)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66333 (_ BitVec 64) (_ BitVec 32) List!22345) Unit!34485)

(assert (=> b!1052678 (= lt!464918 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!464922 Nil!22342))))

(declare-fun lt!464920 () (_ BitVec 32))

(assert (=> b!1052678 (arrayContainsKey!0 a!3488 k!2747 lt!464920)))

(declare-fun lt!464921 () Unit!34485)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66333 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34485)

(assert (=> b!1052678 (= lt!464921 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464920))))

(assert (=> b!1052678 (= lt!464920 (bvadd #b00000000000000000000000000000001 lt!464922))))

(assert (=> b!1052678 (arrayNoDuplicates!0 a!3488 lt!464922 Nil!22342)))

(declare-fun lt!464919 () Unit!34485)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66333 (_ BitVec 32) (_ BitVec 32)) Unit!34485)

(assert (=> b!1052678 (= lt!464919 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464922))))

(declare-fun b!1052679 () Bool)

(declare-fun res!701909 () Bool)

(assert (=> b!1052679 (=> (not res!701909) (not e!597754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052679 (= res!701909 (validKeyInArray!0 k!2747))))

(declare-fun b!1052680 () Bool)

(assert (=> b!1052680 (= e!597757 e!597758)))

(declare-fun res!701915 () Bool)

(assert (=> b!1052680 (=> res!701915 e!597758)))

(assert (=> b!1052680 (= res!701915 (or (bvsgt lt!464922 i!1381) (bvsle i!1381 lt!464922)))))

(declare-fun b!1052681 () Bool)

(assert (=> b!1052681 (= e!597755 e!597752)))

(declare-fun res!701913 () Bool)

(assert (=> b!1052681 (=> (not res!701913) (not e!597752))))

(assert (=> b!1052681 (= res!701913 (not (= lt!464922 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66333 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052681 (= lt!464922 (arrayScanForKey!0 lt!464923 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92584 res!701910) b!1052676))

(assert (= (and b!1052676 res!701908) b!1052679))

(assert (= (and b!1052679 res!701909) b!1052674))

(assert (= (and b!1052674 res!701911) b!1052675))

(assert (= (and b!1052675 res!701912) b!1052681))

(assert (= (and b!1052681 res!701913) b!1052673))

(assert (= (and b!1052673 res!701914) b!1052680))

(assert (= (and b!1052680 (not res!701915)) b!1052677))

(assert (= (and b!1052673 (not res!701916)) b!1052678))

(declare-fun m!973215 () Bool)

(assert (=> b!1052679 m!973215))

(declare-fun m!973217 () Bool)

(assert (=> b!1052676 m!973217))

(declare-fun m!973219 () Bool)

(assert (=> b!1052678 m!973219))

(declare-fun m!973221 () Bool)

(assert (=> b!1052678 m!973221))

(declare-fun m!973223 () Bool)

(assert (=> b!1052678 m!973223))

(declare-fun m!973225 () Bool)

(assert (=> b!1052678 m!973225))

(declare-fun m!973227 () Bool)

(assert (=> b!1052678 m!973227))

(declare-fun m!973229 () Bool)

(assert (=> b!1052678 m!973229))

(declare-fun m!973231 () Bool)

(assert (=> b!1052677 m!973231))

(declare-fun m!973233 () Bool)

(assert (=> b!1052674 m!973233))

(declare-fun m!973235 () Bool)

(assert (=> b!1052675 m!973235))

(declare-fun m!973237 () Bool)

(assert (=> b!1052675 m!973237))

(declare-fun m!973239 () Bool)

(assert (=> start!92584 m!973239))

(assert (=> b!1052673 m!973237))

(declare-fun m!973241 () Bool)

(assert (=> b!1052673 m!973241))

(declare-fun m!973243 () Bool)

(assert (=> b!1052681 m!973243))

(push 1)

