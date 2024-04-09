; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116882 () Bool)

(assert start!116882)

(declare-fun res!919745 () Bool)

(declare-fun e!779891 () Bool)

(assert (=> start!116882 (=> (not res!919745) (not e!779891))))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93469 0))(
  ( (array!93470 (arr!45133 (Array (_ BitVec 32) (_ BitVec 64))) (size!45684 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93469)

(assert (=> start!116882 (= res!919745 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45684 a!4032))))))

(assert (=> start!116882 e!779891))

(assert (=> start!116882 true))

(declare-fun array_inv!34078 (array!93469) Bool)

(assert (=> start!116882 (array_inv!34078 a!4032)))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun bm!65852 () Bool)

(declare-fun call!65855 () (_ BitVec 32))

(declare-fun lt!605346 () array!93469)

(declare-fun arrayCountValidKeys!0 (array!93469 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!65852 (= call!65855 (arrayCountValidKeys!0 lt!605346 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun call!65856 () (_ BitVec 32))

(declare-fun bm!65853 () Bool)

(assert (=> bm!65853 (= call!65856 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1376749 () Bool)

(declare-fun res!919743 () Bool)

(assert (=> b!1376749 (=> (not res!919743) (not e!779891))))

(declare-fun k!2947 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1376749 (= res!919743 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1376750 () Bool)

(declare-datatypes ((Unit!45581 0))(
  ( (Unit!45582) )
))
(declare-fun e!779894 () Unit!45581)

(declare-fun lt!605350 () Unit!45581)

(assert (=> b!1376750 (= e!779894 lt!605350)))

(declare-fun lt!605347 () Unit!45581)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93469 (_ BitVec 32) (_ BitVec 32)) Unit!45581)

(assert (=> b!1376750 (= lt!605347 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605352 () (_ BitVec 32))

(assert (=> b!1376750 (= call!65856 lt!605352)))

(assert (=> b!1376750 (= lt!605350 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!605346 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun lt!605348 () (_ BitVec 32))

(assert (=> b!1376750 (= call!65855 lt!605348)))

(declare-fun b!1376751 () Bool)

(declare-fun res!919742 () Bool)

(assert (=> b!1376751 (=> (not res!919742) (not e!779891))))

(assert (=> b!1376751 (= res!919742 (and (bvslt (size!45684 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45684 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun b!1376752 () Bool)

(declare-fun e!779893 () Bool)

(assert (=> b!1376752 (= e!779891 e!779893)))

(declare-fun res!919744 () Bool)

(assert (=> b!1376752 (=> (not res!919744) (not e!779893))))

(assert (=> b!1376752 (= res!919744 (and (= lt!605348 lt!605352) (not (= to!206 (size!45684 a!4032)))))))

(assert (=> b!1376752 (= lt!605352 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376752 (= lt!605348 (arrayCountValidKeys!0 lt!605346 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376752 (= lt!605346 (array!93470 (store (arr!45133 a!4032) i!1445 k!2947) (size!45684 a!4032)))))

(declare-fun b!1376753 () Bool)

(declare-fun lt!605349 () Unit!45581)

(assert (=> b!1376753 (= e!779894 lt!605349)))

(declare-fun lt!605353 () Unit!45581)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93469 (_ BitVec 32) (_ BitVec 32)) Unit!45581)

(assert (=> b!1376753 (= lt!605353 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376753 (= call!65856 (bvadd #b00000000000000000000000000000001 lt!605352))))

(assert (=> b!1376753 (= lt!605349 (lemmaValidKeyIncreasesNumOfKeys!0 lt!605346 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1376753 (= call!65855 (bvadd #b00000000000000000000000000000001 lt!605348))))

(declare-fun b!1376754 () Bool)

(declare-fun res!919746 () Bool)

(assert (=> b!1376754 (=> (not res!919746) (not e!779891))))

(assert (=> b!1376754 (= res!919746 (validKeyInArray!0 (select (arr!45133 a!4032) i!1445)))))

(declare-fun b!1376755 () Bool)

(assert (=> b!1376755 (= e!779893 false)))

(declare-fun lt!605351 () Unit!45581)

(assert (=> b!1376755 (= lt!605351 e!779894)))

(declare-fun c!127946 () Bool)

(assert (=> b!1376755 (= c!127946 (validKeyInArray!0 (select (arr!45133 a!4032) to!206)))))

(assert (= (and start!116882 res!919745) b!1376754))

(assert (= (and b!1376754 res!919746) b!1376749))

(assert (= (and b!1376749 res!919743) b!1376751))

(assert (= (and b!1376751 res!919742) b!1376752))

(assert (= (and b!1376752 res!919744) b!1376755))

(assert (= (and b!1376755 c!127946) b!1376753))

(assert (= (and b!1376755 (not c!127946)) b!1376750))

(assert (= (or b!1376753 b!1376750) bm!65852))

(assert (= (or b!1376753 b!1376750) bm!65853))

(declare-fun m!1260899 () Bool)

(assert (=> bm!65852 m!1260899))

(declare-fun m!1260901 () Bool)

(assert (=> b!1376750 m!1260901))

(declare-fun m!1260903 () Bool)

(assert (=> b!1376750 m!1260903))

(declare-fun m!1260905 () Bool)

(assert (=> b!1376753 m!1260905))

(declare-fun m!1260907 () Bool)

(assert (=> b!1376753 m!1260907))

(declare-fun m!1260909 () Bool)

(assert (=> start!116882 m!1260909))

(declare-fun m!1260911 () Bool)

(assert (=> b!1376754 m!1260911))

(assert (=> b!1376754 m!1260911))

(declare-fun m!1260913 () Bool)

(assert (=> b!1376754 m!1260913))

(declare-fun m!1260915 () Bool)

(assert (=> b!1376749 m!1260915))

(declare-fun m!1260917 () Bool)

(assert (=> b!1376752 m!1260917))

(declare-fun m!1260919 () Bool)

(assert (=> b!1376752 m!1260919))

(declare-fun m!1260921 () Bool)

(assert (=> b!1376752 m!1260921))

(declare-fun m!1260923 () Bool)

(assert (=> bm!65853 m!1260923))

(declare-fun m!1260925 () Bool)

(assert (=> b!1376755 m!1260925))

(assert (=> b!1376755 m!1260925))

(declare-fun m!1260927 () Bool)

(assert (=> b!1376755 m!1260927))

(push 1)

