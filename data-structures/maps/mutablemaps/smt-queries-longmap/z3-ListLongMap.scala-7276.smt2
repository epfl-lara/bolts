; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92912 () Bool)

(assert start!92912)

(declare-fun b!1054743 () Bool)

(declare-fun e!599345 () Bool)

(declare-fun e!599343 () Bool)

(assert (=> b!1054743 (= e!599345 e!599343)))

(declare-fun res!703796 () Bool)

(assert (=> b!1054743 (=> (not res!703796) (not e!599343))))

(declare-fun lt!465539 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054743 (= res!703796 (not (= lt!465539 i!1381)))))

(declare-datatypes ((array!66520 0))(
  ( (array!66521 (arr!31988 (Array (_ BitVec 32) (_ BitVec 64))) (size!32525 (_ BitVec 32))) )
))
(declare-fun lt!465541 () array!66520)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66520 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054743 (= lt!465539 (arrayScanForKey!0 lt!465541 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054744 () Bool)

(declare-fun e!599341 () Bool)

(declare-fun e!599340 () Bool)

(assert (=> b!1054744 (= e!599341 e!599340)))

(declare-fun res!703794 () Bool)

(assert (=> b!1054744 (=> res!703794 e!599340)))

(assert (=> b!1054744 (= res!703794 (bvsle lt!465539 i!1381))))

(declare-fun b!1054745 () Bool)

(declare-fun e!599339 () Bool)

(declare-fun a!3488 () array!66520)

(assert (=> b!1054745 (= e!599339 (bvslt (bvadd #b00000000000000000000000000000001 i!1381) (size!32525 a!3488)))))

(declare-fun arrayContainsKey!0 (array!66520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054745 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34543 0))(
  ( (Unit!34544) )
))
(declare-fun lt!465538 () Unit!34543)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66520 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34543)

(assert (=> b!1054745 (= lt!465538 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465539 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22431 0))(
  ( (Nil!22428) (Cons!22427 (h!23636 (_ BitVec 64)) (t!31745 List!22431)) )
))
(declare-fun arrayNoDuplicates!0 (array!66520 (_ BitVec 32) List!22431) Bool)

(assert (=> b!1054745 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22428)))

(declare-fun lt!465540 () Unit!34543)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66520 (_ BitVec 32) (_ BitVec 32)) Unit!34543)

(assert (=> b!1054745 (= lt!465540 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!703793 () Bool)

(declare-fun e!599344 () Bool)

(assert (=> start!92912 (=> (not res!703793) (not e!599344))))

(assert (=> start!92912 (= res!703793 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32525 a!3488)) (bvslt (size!32525 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92912 e!599344))

(assert (=> start!92912 true))

(declare-fun array_inv!24610 (array!66520) Bool)

(assert (=> start!92912 (array_inv!24610 a!3488)))

(declare-fun b!1054746 () Bool)

(declare-fun res!703792 () Bool)

(assert (=> b!1054746 (=> (not res!703792) (not e!599344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054746 (= res!703792 (validKeyInArray!0 k0!2747))))

(declare-fun b!1054747 () Bool)

(assert (=> b!1054747 (= e!599344 e!599345)))

(declare-fun res!703795 () Bool)

(assert (=> b!1054747 (=> (not res!703795) (not e!599345))))

(assert (=> b!1054747 (= res!703795 (arrayContainsKey!0 lt!465541 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054747 (= lt!465541 (array!66521 (store (arr!31988 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32525 a!3488)))))

(declare-fun b!1054748 () Bool)

(assert (=> b!1054748 (= e!599340 (arrayContainsKey!0 a!3488 k0!2747 lt!465539))))

(declare-fun b!1054749 () Bool)

(assert (=> b!1054749 (= e!599343 (not e!599339))))

(declare-fun res!703798 () Bool)

(assert (=> b!1054749 (=> res!703798 e!599339)))

(assert (=> b!1054749 (= res!703798 (bvsle lt!465539 i!1381))))

(assert (=> b!1054749 e!599341))

(declare-fun res!703797 () Bool)

(assert (=> b!1054749 (=> (not res!703797) (not e!599341))))

(assert (=> b!1054749 (= res!703797 (= (select (store (arr!31988 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465539) k0!2747))))

(declare-fun b!1054750 () Bool)

(declare-fun res!703800 () Bool)

(assert (=> b!1054750 (=> (not res!703800) (not e!599344))))

(assert (=> b!1054750 (= res!703800 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22428))))

(declare-fun b!1054751 () Bool)

(declare-fun res!703799 () Bool)

(assert (=> b!1054751 (=> (not res!703799) (not e!599344))))

(assert (=> b!1054751 (= res!703799 (= (select (arr!31988 a!3488) i!1381) k0!2747))))

(assert (= (and start!92912 res!703793) b!1054750))

(assert (= (and b!1054750 res!703800) b!1054746))

(assert (= (and b!1054746 res!703792) b!1054751))

(assert (= (and b!1054751 res!703799) b!1054747))

(assert (= (and b!1054747 res!703795) b!1054743))

(assert (= (and b!1054743 res!703796) b!1054749))

(assert (= (and b!1054749 res!703797) b!1054744))

(assert (= (and b!1054744 (not res!703794)) b!1054748))

(assert (= (and b!1054749 (not res!703798)) b!1054745))

(declare-fun m!974927 () Bool)

(assert (=> start!92912 m!974927))

(declare-fun m!974929 () Bool)

(assert (=> b!1054745 m!974929))

(declare-fun m!974931 () Bool)

(assert (=> b!1054745 m!974931))

(declare-fun m!974933 () Bool)

(assert (=> b!1054745 m!974933))

(declare-fun m!974935 () Bool)

(assert (=> b!1054745 m!974935))

(declare-fun m!974937 () Bool)

(assert (=> b!1054743 m!974937))

(declare-fun m!974939 () Bool)

(assert (=> b!1054751 m!974939))

(declare-fun m!974941 () Bool)

(assert (=> b!1054748 m!974941))

(declare-fun m!974943 () Bool)

(assert (=> b!1054749 m!974943))

(declare-fun m!974945 () Bool)

(assert (=> b!1054749 m!974945))

(declare-fun m!974947 () Bool)

(assert (=> b!1054746 m!974947))

(declare-fun m!974949 () Bool)

(assert (=> b!1054750 m!974949))

(declare-fun m!974951 () Bool)

(assert (=> b!1054747 m!974951))

(assert (=> b!1054747 m!974943))

(check-sat (not b!1054746) (not b!1054747) (not start!92912) (not b!1054745) (not b!1054743) (not b!1054750) (not b!1054748))
(check-sat)
(get-model)

(declare-fun d!127971 () Bool)

(declare-fun lt!465556 () (_ BitVec 32))

(assert (=> d!127971 (and (or (bvslt lt!465556 #b00000000000000000000000000000000) (bvsge lt!465556 (size!32525 lt!465541)) (and (bvsge lt!465556 #b00000000000000000000000000000000) (bvslt lt!465556 (size!32525 lt!465541)))) (bvsge lt!465556 #b00000000000000000000000000000000) (bvslt lt!465556 (size!32525 lt!465541)) (= (select (arr!31988 lt!465541) lt!465556) k0!2747))))

(declare-fun e!599369 () (_ BitVec 32))

(assert (=> d!127971 (= lt!465556 e!599369)))

(declare-fun c!106940 () Bool)

(assert (=> d!127971 (= c!106940 (= (select (arr!31988 lt!465541) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127971 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32525 lt!465541)) (bvslt (size!32525 lt!465541) #b01111111111111111111111111111111))))

(assert (=> d!127971 (= (arrayScanForKey!0 lt!465541 k0!2747 #b00000000000000000000000000000000) lt!465556)))

(declare-fun b!1054783 () Bool)

(assert (=> b!1054783 (= e!599369 #b00000000000000000000000000000000)))

(declare-fun b!1054784 () Bool)

(assert (=> b!1054784 (= e!599369 (arrayScanForKey!0 lt!465541 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127971 c!106940) b!1054783))

(assert (= (and d!127971 (not c!106940)) b!1054784))

(declare-fun m!974979 () Bool)

(assert (=> d!127971 m!974979))

(declare-fun m!974981 () Bool)

(assert (=> d!127971 m!974981))

(declare-fun m!974983 () Bool)

(assert (=> b!1054784 m!974983))

(assert (=> b!1054743 d!127971))

(declare-fun d!127973 () Bool)

(declare-fun res!703832 () Bool)

(declare-fun e!599374 () Bool)

(assert (=> d!127973 (=> res!703832 e!599374)))

(assert (=> d!127973 (= res!703832 (= (select (arr!31988 a!3488) lt!465539) k0!2747))))

(assert (=> d!127973 (= (arrayContainsKey!0 a!3488 k0!2747 lt!465539) e!599374)))

(declare-fun b!1054789 () Bool)

(declare-fun e!599375 () Bool)

(assert (=> b!1054789 (= e!599374 e!599375)))

(declare-fun res!703833 () Bool)

(assert (=> b!1054789 (=> (not res!703833) (not e!599375))))

(assert (=> b!1054789 (= res!703833 (bvslt (bvadd lt!465539 #b00000000000000000000000000000001) (size!32525 a!3488)))))

(declare-fun b!1054790 () Bool)

(assert (=> b!1054790 (= e!599375 (arrayContainsKey!0 a!3488 k0!2747 (bvadd lt!465539 #b00000000000000000000000000000001)))))

(assert (= (and d!127973 (not res!703832)) b!1054789))

(assert (= (and b!1054789 res!703833) b!1054790))

(declare-fun m!974985 () Bool)

(assert (=> d!127973 m!974985))

(declare-fun m!974987 () Bool)

(assert (=> b!1054790 m!974987))

(assert (=> b!1054748 d!127973))

(declare-fun d!127975 () Bool)

(assert (=> d!127975 (= (array_inv!24610 a!3488) (bvsge (size!32525 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92912 d!127975))

(declare-fun d!127977 () Bool)

(declare-fun res!703834 () Bool)

(declare-fun e!599376 () Bool)

(assert (=> d!127977 (=> res!703834 e!599376)))

(assert (=> d!127977 (= res!703834 (= (select (arr!31988 a!3488) (bvadd #b00000000000000000000000000000001 i!1381)) k0!2747))))

(assert (=> d!127977 (= (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381)) e!599376)))

(declare-fun b!1054791 () Bool)

(declare-fun e!599377 () Bool)

(assert (=> b!1054791 (= e!599376 e!599377)))

(declare-fun res!703835 () Bool)

(assert (=> b!1054791 (=> (not res!703835) (not e!599377))))

(assert (=> b!1054791 (= res!703835 (bvslt (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001) (size!32525 a!3488)))))

(declare-fun b!1054792 () Bool)

(assert (=> b!1054792 (= e!599377 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!127977 (not res!703834)) b!1054791))

(assert (= (and b!1054791 res!703835) b!1054792))

(declare-fun m!974989 () Bool)

(assert (=> d!127977 m!974989))

(declare-fun m!974991 () Bool)

(assert (=> b!1054792 m!974991))

(assert (=> b!1054745 d!127977))

(declare-fun d!127979 () Bool)

(assert (=> d!127979 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465559 () Unit!34543)

(declare-fun choose!114 (array!66520 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34543)

(assert (=> d!127979 (= lt!465559 (choose!114 a!3488 k0!2747 lt!465539 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> d!127979 (bvsge lt!465539 #b00000000000000000000000000000000)))

(assert (=> d!127979 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465539 (bvadd #b00000000000000000000000000000001 i!1381)) lt!465559)))

(declare-fun bs!30909 () Bool)

(assert (= bs!30909 d!127979))

(assert (=> bs!30909 m!974929))

(declare-fun m!974993 () Bool)

(assert (=> bs!30909 m!974993))

(assert (=> b!1054745 d!127979))

(declare-fun b!1054817 () Bool)

(declare-fun e!599401 () Bool)

(declare-fun call!44774 () Bool)

(assert (=> b!1054817 (= e!599401 call!44774)))

(declare-fun b!1054818 () Bool)

(declare-fun e!599400 () Bool)

(assert (=> b!1054818 (= e!599400 e!599401)))

(declare-fun c!106943 () Bool)

(assert (=> b!1054818 (= c!106943 (validKeyInArray!0 (select (arr!31988 a!3488) i!1381)))))

(declare-fun b!1054819 () Bool)

(declare-fun e!599403 () Bool)

(declare-fun contains!6192 (List!22431 (_ BitVec 64)) Bool)

(assert (=> b!1054819 (= e!599403 (contains!6192 Nil!22428 (select (arr!31988 a!3488) i!1381)))))

(declare-fun bm!44771 () Bool)

(assert (=> bm!44771 (= call!44774 (arrayNoDuplicates!0 a!3488 (bvadd i!1381 #b00000000000000000000000000000001) (ite c!106943 (Cons!22427 (select (arr!31988 a!3488) i!1381) Nil!22428) Nil!22428)))))

(declare-fun b!1054820 () Bool)

(declare-fun e!599402 () Bool)

(assert (=> b!1054820 (= e!599402 e!599400)))

(declare-fun res!703856 () Bool)

(assert (=> b!1054820 (=> (not res!703856) (not e!599400))))

(assert (=> b!1054820 (= res!703856 (not e!599403))))

(declare-fun res!703858 () Bool)

(assert (=> b!1054820 (=> (not res!703858) (not e!599403))))

(assert (=> b!1054820 (= res!703858 (validKeyInArray!0 (select (arr!31988 a!3488) i!1381)))))

(declare-fun d!127983 () Bool)

(declare-fun res!703857 () Bool)

(assert (=> d!127983 (=> res!703857 e!599402)))

(assert (=> d!127983 (= res!703857 (bvsge i!1381 (size!32525 a!3488)))))

(assert (=> d!127983 (= (arrayNoDuplicates!0 a!3488 i!1381 Nil!22428) e!599402)))

(declare-fun b!1054821 () Bool)

(assert (=> b!1054821 (= e!599401 call!44774)))

(assert (= (and d!127983 (not res!703857)) b!1054820))

(assert (= (and b!1054820 res!703858) b!1054819))

(assert (= (and b!1054820 res!703856) b!1054818))

(assert (= (and b!1054818 c!106943) b!1054817))

(assert (= (and b!1054818 (not c!106943)) b!1054821))

(assert (= (or b!1054817 b!1054821) bm!44771))

(assert (=> b!1054818 m!974939))

(assert (=> b!1054818 m!974939))

(declare-fun m!975009 () Bool)

(assert (=> b!1054818 m!975009))

(assert (=> b!1054819 m!974939))

(assert (=> b!1054819 m!974939))

(declare-fun m!975011 () Bool)

(assert (=> b!1054819 m!975011))

(assert (=> bm!44771 m!974939))

(declare-fun m!975013 () Bool)

(assert (=> bm!44771 m!975013))

(assert (=> b!1054820 m!974939))

(assert (=> b!1054820 m!974939))

(assert (=> b!1054820 m!975009))

(assert (=> b!1054745 d!127983))

(declare-fun d!127997 () Bool)

(assert (=> d!127997 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22428)))

(declare-fun lt!465568 () Unit!34543)

(declare-fun choose!39 (array!66520 (_ BitVec 32) (_ BitVec 32)) Unit!34543)

(assert (=> d!127997 (= lt!465568 (choose!39 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (=> d!127997 (bvslt (size!32525 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!127997 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381) lt!465568)))

(declare-fun bs!30912 () Bool)

(assert (= bs!30912 d!127997))

(assert (=> bs!30912 m!974933))

(declare-fun m!975017 () Bool)

(assert (=> bs!30912 m!975017))

(assert (=> b!1054745 d!127997))

(declare-fun b!1054837 () Bool)

(declare-fun e!599417 () Bool)

(declare-fun call!44778 () Bool)

(assert (=> b!1054837 (= e!599417 call!44778)))

(declare-fun b!1054838 () Bool)

(declare-fun e!599416 () Bool)

(assert (=> b!1054838 (= e!599416 e!599417)))

(declare-fun c!106947 () Bool)

(assert (=> b!1054838 (= c!106947 (validKeyInArray!0 (select (arr!31988 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1054839 () Bool)

(declare-fun e!599419 () Bool)

(assert (=> b!1054839 (= e!599419 (contains!6192 Nil!22428 (select (arr!31988 a!3488) #b00000000000000000000000000000000)))))

(declare-fun bm!44775 () Bool)

(assert (=> bm!44775 (= call!44778 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106947 (Cons!22427 (select (arr!31988 a!3488) #b00000000000000000000000000000000) Nil!22428) Nil!22428)))))

(declare-fun b!1054840 () Bool)

(declare-fun e!599418 () Bool)

(assert (=> b!1054840 (= e!599418 e!599416)))

(declare-fun res!703867 () Bool)

(assert (=> b!1054840 (=> (not res!703867) (not e!599416))))

(assert (=> b!1054840 (= res!703867 (not e!599419))))

(declare-fun res!703870 () Bool)

(assert (=> b!1054840 (=> (not res!703870) (not e!599419))))

(assert (=> b!1054840 (= res!703870 (validKeyInArray!0 (select (arr!31988 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!128001 () Bool)

(declare-fun res!703869 () Bool)

(assert (=> d!128001 (=> res!703869 e!599418)))

(assert (=> d!128001 (= res!703869 (bvsge #b00000000000000000000000000000000 (size!32525 a!3488)))))

(assert (=> d!128001 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22428) e!599418)))

(declare-fun b!1054841 () Bool)

(assert (=> b!1054841 (= e!599417 call!44778)))

(assert (= (and d!128001 (not res!703869)) b!1054840))

(assert (= (and b!1054840 res!703870) b!1054839))

(assert (= (and b!1054840 res!703867) b!1054838))

(assert (= (and b!1054838 c!106947) b!1054837))

(assert (= (and b!1054838 (not c!106947)) b!1054841))

(assert (= (or b!1054837 b!1054841) bm!44775))

(declare-fun m!975019 () Bool)

(assert (=> b!1054838 m!975019))

(assert (=> b!1054838 m!975019))

(declare-fun m!975023 () Bool)

(assert (=> b!1054838 m!975023))

(assert (=> b!1054839 m!975019))

(assert (=> b!1054839 m!975019))

(declare-fun m!975025 () Bool)

(assert (=> b!1054839 m!975025))

(assert (=> bm!44775 m!975019))

(declare-fun m!975029 () Bool)

(assert (=> bm!44775 m!975029))

(assert (=> b!1054840 m!975019))

(assert (=> b!1054840 m!975019))

(assert (=> b!1054840 m!975023))

(assert (=> b!1054750 d!128001))

(declare-fun d!128003 () Bool)

(declare-fun res!703871 () Bool)

(declare-fun e!599420 () Bool)

(assert (=> d!128003 (=> res!703871 e!599420)))

(assert (=> d!128003 (= res!703871 (= (select (arr!31988 lt!465541) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128003 (= (arrayContainsKey!0 lt!465541 k0!2747 #b00000000000000000000000000000000) e!599420)))

(declare-fun b!1054842 () Bool)

(declare-fun e!599421 () Bool)

(assert (=> b!1054842 (= e!599420 e!599421)))

(declare-fun res!703872 () Bool)

(assert (=> b!1054842 (=> (not res!703872) (not e!599421))))

(assert (=> b!1054842 (= res!703872 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32525 lt!465541)))))

(declare-fun b!1054843 () Bool)

(assert (=> b!1054843 (= e!599421 (arrayContainsKey!0 lt!465541 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128003 (not res!703871)) b!1054842))

(assert (= (and b!1054842 res!703872) b!1054843))

(assert (=> d!128003 m!974981))

(declare-fun m!975033 () Bool)

(assert (=> b!1054843 m!975033))

(assert (=> b!1054747 d!128003))

(declare-fun d!128007 () Bool)

(assert (=> d!128007 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1054746 d!128007))

(check-sat (not b!1054838) (not b!1054818) (not b!1054839) (not b!1054840) (not b!1054784) (not d!127997) (not b!1054843) (not bm!44775) (not b!1054820) (not b!1054792) (not bm!44771) (not b!1054790) (not b!1054819) (not d!127979))
(check-sat)
