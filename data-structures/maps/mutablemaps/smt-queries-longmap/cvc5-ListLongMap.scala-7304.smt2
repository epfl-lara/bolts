; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93462 () Bool)

(assert start!93462)

(declare-fun res!706780 () Bool)

(declare-fun e!601952 () Bool)

(assert (=> start!93462 (=> (not res!706780) (not e!601952))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66713 0))(
  ( (array!66714 (arr!32071 (Array (_ BitVec 32) (_ BitVec 64))) (size!32608 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66713)

(assert (=> start!93462 (= res!706780 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32608 a!3488)) (bvslt (size!32608 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93462 e!601952))

(assert (=> start!93462 true))

(declare-fun array_inv!24693 (array!66713) Bool)

(assert (=> start!93462 (array_inv!24693 a!3488)))

(declare-fun b!1058095 () Bool)

(declare-fun e!601958 () Bool)

(assert (=> b!1058095 (= e!601958 true)))

(declare-fun lt!466706 () Bool)

(declare-datatypes ((List!22514 0))(
  ( (Nil!22511) (Cons!22510 (h!23719 (_ BitVec 64)) (t!31828 List!22514)) )
))
(declare-fun contains!6220 (List!22514 (_ BitVec 64)) Bool)

(assert (=> b!1058095 (= lt!466706 (contains!6220 Nil!22511 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058096 () Bool)

(declare-fun res!706786 () Bool)

(assert (=> b!1058096 (=> (not res!706786) (not e!601952))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1058096 (= res!706786 (validKeyInArray!0 k!2747))))

(declare-fun b!1058097 () Bool)

(declare-fun e!601957 () Bool)

(assert (=> b!1058097 (= e!601952 e!601957)))

(declare-fun res!706779 () Bool)

(assert (=> b!1058097 (=> (not res!706779) (not e!601957))))

(declare-fun lt!466707 () array!66713)

(declare-fun arrayContainsKey!0 (array!66713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058097 (= res!706779 (arrayContainsKey!0 lt!466707 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1058097 (= lt!466707 (array!66714 (store (arr!32071 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32608 a!3488)))))

(declare-fun b!1058098 () Bool)

(declare-fun res!706789 () Bool)

(assert (=> b!1058098 (=> res!706789 e!601958)))

(assert (=> b!1058098 (= res!706789 (contains!6220 Nil!22511 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058099 () Bool)

(declare-fun e!601959 () Bool)

(declare-fun e!601953 () Bool)

(assert (=> b!1058099 (= e!601959 (not e!601953))))

(declare-fun res!706788 () Bool)

(assert (=> b!1058099 (=> res!706788 e!601953)))

(declare-fun lt!466708 () (_ BitVec 32))

(assert (=> b!1058099 (= res!706788 (or (bvsgt lt!466708 i!1381) (bvsle i!1381 lt!466708)))))

(declare-fun e!601955 () Bool)

(assert (=> b!1058099 e!601955))

(declare-fun res!706787 () Bool)

(assert (=> b!1058099 (=> (not res!706787) (not e!601955))))

(assert (=> b!1058099 (= res!706787 (= (select (store (arr!32071 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466708) k!2747))))

(declare-fun b!1058100 () Bool)

(declare-fun res!706782 () Bool)

(assert (=> b!1058100 (=> (not res!706782) (not e!601952))))

(declare-fun arrayNoDuplicates!0 (array!66713 (_ BitVec 32) List!22514) Bool)

(assert (=> b!1058100 (= res!706782 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22511))))

(declare-fun b!1058101 () Bool)

(declare-fun e!601956 () Bool)

(assert (=> b!1058101 (= e!601955 e!601956)))

(declare-fun res!706785 () Bool)

(assert (=> b!1058101 (=> res!706785 e!601956)))

(assert (=> b!1058101 (= res!706785 (or (bvsgt lt!466708 i!1381) (bvsle i!1381 lt!466708)))))

(declare-fun b!1058102 () Bool)

(declare-fun res!706781 () Bool)

(assert (=> b!1058102 (=> (not res!706781) (not e!601952))))

(assert (=> b!1058102 (= res!706781 (= (select (arr!32071 a!3488) i!1381) k!2747))))

(declare-fun b!1058103 () Bool)

(assert (=> b!1058103 (= e!601957 e!601959)))

(declare-fun res!706783 () Bool)

(assert (=> b!1058103 (=> (not res!706783) (not e!601959))))

(assert (=> b!1058103 (= res!706783 (not (= lt!466708 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66713 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1058103 (= lt!466708 (arrayScanForKey!0 lt!466707 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1058104 () Bool)

(declare-fun res!706778 () Bool)

(assert (=> b!1058104 (=> res!706778 e!601958)))

(declare-fun noDuplicate!1581 (List!22514) Bool)

(assert (=> b!1058104 (= res!706778 (not (noDuplicate!1581 Nil!22511)))))

(declare-fun b!1058105 () Bool)

(assert (=> b!1058105 (= e!601956 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1058106 () Bool)

(assert (=> b!1058106 (= e!601953 e!601958)))

(declare-fun res!706784 () Bool)

(assert (=> b!1058106 (=> res!706784 e!601958)))

(declare-fun lt!466710 () (_ BitVec 32))

(assert (=> b!1058106 (= res!706784 (or (bvslt lt!466708 #b00000000000000000000000000000000) (bvsge lt!466710 (size!32608 a!3488)) (bvsge lt!466708 (size!32608 a!3488))))))

(assert (=> b!1058106 (arrayContainsKey!0 a!3488 k!2747 lt!466710)))

(declare-datatypes ((Unit!34673 0))(
  ( (Unit!34674) )
))
(declare-fun lt!466709 () Unit!34673)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66713 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34673)

(assert (=> b!1058106 (= lt!466709 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466710))))

(assert (=> b!1058106 (= lt!466710 (bvadd #b00000000000000000000000000000001 lt!466708))))

(assert (=> b!1058106 (arrayNoDuplicates!0 a!3488 lt!466708 Nil!22511)))

(declare-fun lt!466711 () Unit!34673)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66713 (_ BitVec 32) (_ BitVec 32)) Unit!34673)

(assert (=> b!1058106 (= lt!466711 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466708))))

(assert (= (and start!93462 res!706780) b!1058100))

(assert (= (and b!1058100 res!706782) b!1058096))

(assert (= (and b!1058096 res!706786) b!1058102))

(assert (= (and b!1058102 res!706781) b!1058097))

(assert (= (and b!1058097 res!706779) b!1058103))

(assert (= (and b!1058103 res!706783) b!1058099))

(assert (= (and b!1058099 res!706787) b!1058101))

(assert (= (and b!1058101 (not res!706785)) b!1058105))

(assert (= (and b!1058099 (not res!706788)) b!1058106))

(assert (= (and b!1058106 (not res!706784)) b!1058104))

(assert (= (and b!1058104 (not res!706778)) b!1058098))

(assert (= (and b!1058098 (not res!706789)) b!1058095))

(declare-fun m!977877 () Bool)

(assert (=> b!1058103 m!977877))

(declare-fun m!977879 () Bool)

(assert (=> b!1058097 m!977879))

(declare-fun m!977881 () Bool)

(assert (=> b!1058097 m!977881))

(assert (=> b!1058099 m!977881))

(declare-fun m!977883 () Bool)

(assert (=> b!1058099 m!977883))

(declare-fun m!977885 () Bool)

(assert (=> start!93462 m!977885))

(declare-fun m!977887 () Bool)

(assert (=> b!1058096 m!977887))

(declare-fun m!977889 () Bool)

(assert (=> b!1058106 m!977889))

(declare-fun m!977891 () Bool)

(assert (=> b!1058106 m!977891))

(declare-fun m!977893 () Bool)

(assert (=> b!1058106 m!977893))

(declare-fun m!977895 () Bool)

(assert (=> b!1058106 m!977895))

(declare-fun m!977897 () Bool)

(assert (=> b!1058105 m!977897))

(declare-fun m!977899 () Bool)

(assert (=> b!1058102 m!977899))

(declare-fun m!977901 () Bool)

(assert (=> b!1058098 m!977901))

(declare-fun m!977903 () Bool)

(assert (=> b!1058104 m!977903))

(declare-fun m!977905 () Bool)

(assert (=> b!1058100 m!977905))

(declare-fun m!977907 () Bool)

(assert (=> b!1058095 m!977907))

(push 1)

