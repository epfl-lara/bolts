; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92908 () Bool)

(assert start!92908)

(declare-fun res!703738 () Bool)

(declare-fun e!599299 () Bool)

(assert (=> start!92908 (=> (not res!703738) (not e!599299))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66516 0))(
  ( (array!66517 (arr!31986 (Array (_ BitVec 32) (_ BitVec 64))) (size!32523 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66516)

(assert (=> start!92908 (= res!703738 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32523 a!3488)) (bvslt (size!32523 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92908 e!599299))

(assert (=> start!92908 true))

(declare-fun array_inv!24608 (array!66516) Bool)

(assert (=> start!92908 (array_inv!24608 a!3488)))

(declare-fun b!1054689 () Bool)

(declare-fun res!703745 () Bool)

(assert (=> b!1054689 (=> (not res!703745) (not e!599299))))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1054689 (= res!703745 (= (select (arr!31986 a!3488) i!1381) k!2747))))

(declare-fun b!1054690 () Bool)

(declare-fun e!599300 () Bool)

(declare-fun e!599303 () Bool)

(assert (=> b!1054690 (= e!599300 e!599303)))

(declare-fun res!703744 () Bool)

(assert (=> b!1054690 (=> (not res!703744) (not e!599303))))

(declare-fun lt!465515 () (_ BitVec 32))

(assert (=> b!1054690 (= res!703744 (not (= lt!465515 i!1381)))))

(declare-fun lt!465514 () array!66516)

(declare-fun arrayScanForKey!0 (array!66516 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054690 (= lt!465515 (arrayScanForKey!0 lt!465514 k!2747 #b00000000000000000000000000000000))))

(declare-fun e!599301 () Bool)

(declare-fun b!1054691 () Bool)

(declare-fun arrayContainsKey!0 (array!66516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054691 (= e!599301 (arrayContainsKey!0 a!3488 k!2747 lt!465515))))

(declare-fun b!1054692 () Bool)

(declare-fun e!599298 () Bool)

(assert (=> b!1054692 (= e!599303 (not e!599298))))

(declare-fun res!703740 () Bool)

(assert (=> b!1054692 (=> res!703740 e!599298)))

(assert (=> b!1054692 (= res!703740 (bvsle lt!465515 i!1381))))

(declare-fun e!599302 () Bool)

(assert (=> b!1054692 e!599302))

(declare-fun res!703742 () Bool)

(assert (=> b!1054692 (=> (not res!703742) (not e!599302))))

(assert (=> b!1054692 (= res!703742 (= (select (store (arr!31986 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465515) k!2747))))

(declare-fun b!1054693 () Bool)

(assert (=> b!1054693 (= e!599299 e!599300)))

(declare-fun res!703746 () Bool)

(assert (=> b!1054693 (=> (not res!703746) (not e!599300))))

(assert (=> b!1054693 (= res!703746 (arrayContainsKey!0 lt!465514 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054693 (= lt!465514 (array!66517 (store (arr!31986 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32523 a!3488)))))

(declare-fun b!1054694 () Bool)

(assert (=> b!1054694 (= e!599298 true)))

(assert (=> b!1054694 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34539 0))(
  ( (Unit!34540) )
))
(declare-fun lt!465517 () Unit!34539)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66516 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34539)

(assert (=> b!1054694 (= lt!465517 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465515 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22429 0))(
  ( (Nil!22426) (Cons!22425 (h!23634 (_ BitVec 64)) (t!31743 List!22429)) )
))
(declare-fun arrayNoDuplicates!0 (array!66516 (_ BitVec 32) List!22429) Bool)

(assert (=> b!1054694 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22426)))

(declare-fun lt!465516 () Unit!34539)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66516 (_ BitVec 32) (_ BitVec 32)) Unit!34539)

(assert (=> b!1054694 (= lt!465516 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054695 () Bool)

(assert (=> b!1054695 (= e!599302 e!599301)))

(declare-fun res!703743 () Bool)

(assert (=> b!1054695 (=> res!703743 e!599301)))

(assert (=> b!1054695 (= res!703743 (bvsle lt!465515 i!1381))))

(declare-fun b!1054696 () Bool)

(declare-fun res!703739 () Bool)

(assert (=> b!1054696 (=> (not res!703739) (not e!599299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054696 (= res!703739 (validKeyInArray!0 k!2747))))

(declare-fun b!1054697 () Bool)

(declare-fun res!703741 () Bool)

(assert (=> b!1054697 (=> (not res!703741) (not e!599299))))

(assert (=> b!1054697 (= res!703741 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22426))))

(assert (= (and start!92908 res!703738) b!1054697))

(assert (= (and b!1054697 res!703741) b!1054696))

(assert (= (and b!1054696 res!703739) b!1054689))

(assert (= (and b!1054689 res!703745) b!1054693))

(assert (= (and b!1054693 res!703746) b!1054690))

(assert (= (and b!1054690 res!703744) b!1054692))

(assert (= (and b!1054692 res!703742) b!1054695))

(assert (= (and b!1054695 (not res!703743)) b!1054691))

(assert (= (and b!1054692 (not res!703740)) b!1054694))

(declare-fun m!974875 () Bool)

(assert (=> b!1054692 m!974875))

(declare-fun m!974877 () Bool)

(assert (=> b!1054692 m!974877))

(declare-fun m!974879 () Bool)

(assert (=> b!1054691 m!974879))

(declare-fun m!974881 () Bool)

(assert (=> b!1054693 m!974881))

(assert (=> b!1054693 m!974875))

(declare-fun m!974883 () Bool)

(assert (=> b!1054694 m!974883))

(declare-fun m!974885 () Bool)

(assert (=> b!1054694 m!974885))

(declare-fun m!974887 () Bool)

(assert (=> b!1054694 m!974887))

(declare-fun m!974889 () Bool)

(assert (=> b!1054694 m!974889))

(declare-fun m!974891 () Bool)

(assert (=> start!92908 m!974891))

(declare-fun m!974893 () Bool)

(assert (=> b!1054690 m!974893))

(declare-fun m!974895 () Bool)

(assert (=> b!1054697 m!974895))

(declare-fun m!974897 () Bool)

(assert (=> b!1054696 m!974897))

(declare-fun m!974899 () Bool)

(assert (=> b!1054689 m!974899))

(push 1)

