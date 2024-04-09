; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61874 () Bool)

(assert start!61874)

(declare-fun b!692241 () Bool)

(declare-fun e!393843 () Bool)

(declare-fun e!393846 () Bool)

(assert (=> b!692241 (= e!393843 e!393846)))

(declare-fun res!456661 () Bool)

(assert (=> b!692241 (=> (not res!456661) (not e!393846))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!692241 (= res!456661 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13160 0))(
  ( (Nil!13157) (Cons!13156 (h!14201 (_ BitVec 64)) (t!19438 List!13160)) )
))
(declare-fun lt!316534 () List!13160)

(declare-datatypes ((array!39806 0))(
  ( (array!39807 (arr!19066 (Array (_ BitVec 32) (_ BitVec 64))) (size!19449 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39806)

(declare-fun acc!681 () List!13160)

(declare-fun $colon$colon!413 (List!13160 (_ BitVec 64)) List!13160)

(assert (=> b!692241 (= lt!316534 ($colon$colon!413 acc!681 (select (arr!19066 a!3626) from!3004)))))

(declare-fun b!692242 () Bool)

(declare-fun e!393845 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3703 (List!13160 (_ BitVec 64)) Bool)

(assert (=> b!692242 (= e!393845 (contains!3703 acc!681 k0!2843))))

(declare-fun b!692243 () Bool)

(declare-fun e!393844 () Bool)

(assert (=> b!692243 (= e!393844 (contains!3703 lt!316534 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692244 () Bool)

(assert (=> b!692244 (= e!393846 e!393844)))

(declare-fun res!456662 () Bool)

(assert (=> b!692244 (=> res!456662 e!393844)))

(assert (=> b!692244 (= res!456662 (contains!3703 lt!316534 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692245 () Bool)

(declare-fun res!456666 () Bool)

(declare-fun e!393847 () Bool)

(assert (=> b!692245 (=> (not res!456666) (not e!393847))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!692245 (= res!456666 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19449 a!3626))))))

(declare-fun b!692246 () Bool)

(declare-fun res!456671 () Bool)

(assert (=> b!692246 (=> (not res!456671) (not e!393846))))

(declare-fun noDuplicate!950 (List!13160) Bool)

(assert (=> b!692246 (= res!456671 (noDuplicate!950 lt!316534))))

(declare-fun b!692247 () Bool)

(declare-fun res!456665 () Bool)

(assert (=> b!692247 (=> (not res!456665) (not e!393847))))

(declare-fun arrayNoDuplicates!0 (array!39806 (_ BitVec 32) List!13160) Bool)

(assert (=> b!692247 (= res!456665 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13157))))

(declare-fun b!692248 () Bool)

(declare-fun res!456658 () Bool)

(assert (=> b!692248 (=> (not res!456658) (not e!393847))))

(assert (=> b!692248 (= res!456658 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19449 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!692249 () Bool)

(declare-fun res!456659 () Bool)

(assert (=> b!692249 (=> (not res!456659) (not e!393847))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!692249 (= res!456659 (validKeyInArray!0 (select (arr!19066 a!3626) from!3004)))))

(declare-fun b!692250 () Bool)

(declare-datatypes ((Unit!24434 0))(
  ( (Unit!24435) )
))
(declare-fun e!393850 () Unit!24434)

(declare-fun Unit!24436 () Unit!24434)

(assert (=> b!692250 (= e!393850 Unit!24436)))

(declare-fun res!456670 () Bool)

(assert (=> start!61874 (=> (not res!456670) (not e!393847))))

(assert (=> start!61874 (= res!456670 (and (bvslt (size!19449 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19449 a!3626))))))

(assert (=> start!61874 e!393847))

(assert (=> start!61874 true))

(declare-fun array_inv!14840 (array!39806) Bool)

(assert (=> start!61874 (array_inv!14840 a!3626)))

(declare-fun b!692251 () Bool)

(assert (=> b!692251 (= e!393847 e!393843)))

(declare-fun res!456669 () Bool)

(assert (=> b!692251 (=> (not res!456669) (not e!393843))))

(assert (=> b!692251 (= res!456669 (not (= (select (arr!19066 a!3626) from!3004) k0!2843)))))

(declare-fun lt!316535 () Unit!24434)

(assert (=> b!692251 (= lt!316535 e!393850)))

(declare-fun c!78161 () Bool)

(assert (=> b!692251 (= c!78161 (= (select (arr!19066 a!3626) from!3004) k0!2843))))

(declare-fun b!692252 () Bool)

(declare-fun res!456653 () Bool)

(assert (=> b!692252 (=> (not res!456653) (not e!393847))))

(assert (=> b!692252 (= res!456653 (not (contains!3703 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692253 () Bool)

(declare-fun res!456668 () Bool)

(assert (=> b!692253 (=> (not res!456668) (not e!393847))))

(assert (=> b!692253 (= res!456668 (not (contains!3703 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!692254 () Bool)

(declare-fun e!393842 () Bool)

(assert (=> b!692254 (= e!393842 (not (contains!3703 acc!681 k0!2843)))))

(declare-fun b!692255 () Bool)

(declare-fun Unit!24437 () Unit!24434)

(assert (=> b!692255 (= e!393850 Unit!24437)))

(declare-fun arrayContainsKey!0 (array!39806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!692255 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316536 () Unit!24434)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39806 (_ BitVec 64) (_ BitVec 32)) Unit!24434)

(assert (=> b!692255 (= lt!316536 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!692255 false))

(declare-fun b!692256 () Bool)

(declare-fun res!456655 () Bool)

(assert (=> b!692256 (=> (not res!456655) (not e!393847))))

(declare-fun e!393849 () Bool)

(assert (=> b!692256 (= res!456655 e!393849)))

(declare-fun res!456657 () Bool)

(assert (=> b!692256 (=> res!456657 e!393849)))

(assert (=> b!692256 (= res!456657 e!393845)))

(declare-fun res!456667 () Bool)

(assert (=> b!692256 (=> (not res!456667) (not e!393845))))

(assert (=> b!692256 (= res!456667 (bvsgt from!3004 i!1382))))

(declare-fun b!692257 () Bool)

(declare-fun res!456664 () Bool)

(assert (=> b!692257 (=> (not res!456664) (not e!393847))))

(assert (=> b!692257 (= res!456664 (noDuplicate!950 acc!681))))

(declare-fun b!692258 () Bool)

(declare-fun res!456663 () Bool)

(assert (=> b!692258 (=> (not res!456663) (not e!393847))))

(assert (=> b!692258 (= res!456663 (validKeyInArray!0 k0!2843))))

(declare-fun b!692259 () Bool)

(declare-fun res!456654 () Bool)

(assert (=> b!692259 (=> (not res!456654) (not e!393847))))

(assert (=> b!692259 (= res!456654 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!692260 () Bool)

(declare-fun res!456656 () Bool)

(assert (=> b!692260 (=> (not res!456656) (not e!393847))))

(assert (=> b!692260 (= res!456656 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!692261 () Bool)

(assert (=> b!692261 (= e!393849 e!393842)))

(declare-fun res!456660 () Bool)

(assert (=> b!692261 (=> (not res!456660) (not e!393842))))

(assert (=> b!692261 (= res!456660 (bvsle from!3004 i!1382))))

(assert (= (and start!61874 res!456670) b!692257))

(assert (= (and b!692257 res!456664) b!692252))

(assert (= (and b!692252 res!456653) b!692253))

(assert (= (and b!692253 res!456668) b!692256))

(assert (= (and b!692256 res!456667) b!692242))

(assert (= (and b!692256 (not res!456657)) b!692261))

(assert (= (and b!692261 res!456660) b!692254))

(assert (= (and b!692256 res!456655) b!692247))

(assert (= (and b!692247 res!456665) b!692260))

(assert (= (and b!692260 res!456656) b!692245))

(assert (= (and b!692245 res!456666) b!692258))

(assert (= (and b!692258 res!456663) b!692259))

(assert (= (and b!692259 res!456654) b!692248))

(assert (= (and b!692248 res!456658) b!692249))

(assert (= (and b!692249 res!456659) b!692251))

(assert (= (and b!692251 c!78161) b!692255))

(assert (= (and b!692251 (not c!78161)) b!692250))

(assert (= (and b!692251 res!456669) b!692241))

(assert (= (and b!692241 res!456661) b!692246))

(assert (= (and b!692246 res!456671) b!692244))

(assert (= (and b!692244 (not res!456662)) b!692243))

(declare-fun m!654895 () Bool)

(assert (=> b!692247 m!654895))

(declare-fun m!654897 () Bool)

(assert (=> b!692260 m!654897))

(declare-fun m!654899 () Bool)

(assert (=> b!692246 m!654899))

(declare-fun m!654901 () Bool)

(assert (=> b!692244 m!654901))

(declare-fun m!654903 () Bool)

(assert (=> start!61874 m!654903))

(declare-fun m!654905 () Bool)

(assert (=> b!692252 m!654905))

(declare-fun m!654907 () Bool)

(assert (=> b!692251 m!654907))

(declare-fun m!654909 () Bool)

(assert (=> b!692253 m!654909))

(declare-fun m!654911 () Bool)

(assert (=> b!692242 m!654911))

(declare-fun m!654913 () Bool)

(assert (=> b!692258 m!654913))

(declare-fun m!654915 () Bool)

(assert (=> b!692255 m!654915))

(declare-fun m!654917 () Bool)

(assert (=> b!692255 m!654917))

(assert (=> b!692254 m!654911))

(declare-fun m!654919 () Bool)

(assert (=> b!692257 m!654919))

(declare-fun m!654921 () Bool)

(assert (=> b!692243 m!654921))

(declare-fun m!654923 () Bool)

(assert (=> b!692259 m!654923))

(assert (=> b!692241 m!654907))

(assert (=> b!692241 m!654907))

(declare-fun m!654925 () Bool)

(assert (=> b!692241 m!654925))

(assert (=> b!692249 m!654907))

(assert (=> b!692249 m!654907))

(declare-fun m!654927 () Bool)

(assert (=> b!692249 m!654927))

(check-sat (not b!692258) (not b!692255) (not b!692260) (not b!692246) (not b!692254) (not b!692249) (not b!692259) (not start!61874) (not b!692252) (not b!692241) (not b!692244) (not b!692253) (not b!692247) (not b!692242) (not b!692257) (not b!692243))
(check-sat)
(get-model)

(declare-fun d!95485 () Bool)

(declare-fun res!456733 () Bool)

(declare-fun e!393882 () Bool)

(assert (=> d!95485 (=> res!456733 e!393882)))

(assert (=> d!95485 (= res!456733 (= (select (arr!19066 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!95485 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!393882)))

(declare-fun b!692329 () Bool)

(declare-fun e!393883 () Bool)

(assert (=> b!692329 (= e!393882 e!393883)))

(declare-fun res!456734 () Bool)

(assert (=> b!692329 (=> (not res!456734) (not e!393883))))

(assert (=> b!692329 (= res!456734 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19449 a!3626)))))

(declare-fun b!692330 () Bool)

(assert (=> b!692330 (= e!393883 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95485 (not res!456733)) b!692329))

(assert (= (and b!692329 res!456734) b!692330))

(declare-fun m!654963 () Bool)

(assert (=> d!95485 m!654963))

(declare-fun m!654965 () Bool)

(assert (=> b!692330 m!654965))

(assert (=> b!692259 d!95485))

(declare-fun b!692341 () Bool)

(declare-fun e!393892 () Bool)

(declare-fun e!393895 () Bool)

(assert (=> b!692341 (= e!393892 e!393895)))

(declare-fun c!78167 () Bool)

(assert (=> b!692341 (= c!78167 (validKeyInArray!0 (select (arr!19066 a!3626) from!3004)))))

(declare-fun b!692342 () Bool)

(declare-fun call!34238 () Bool)

(assert (=> b!692342 (= e!393895 call!34238)))

(declare-fun b!692343 () Bool)

(assert (=> b!692343 (= e!393895 call!34238)))

(declare-fun bm!34235 () Bool)

(assert (=> bm!34235 (= call!34238 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78167 (Cons!13156 (select (arr!19066 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun d!95487 () Bool)

(declare-fun res!456742 () Bool)

(declare-fun e!393894 () Bool)

(assert (=> d!95487 (=> res!456742 e!393894)))

(assert (=> d!95487 (= res!456742 (bvsge from!3004 (size!19449 a!3626)))))

(assert (=> d!95487 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!393894)))

(declare-fun e!393893 () Bool)

(declare-fun b!692344 () Bool)

(assert (=> b!692344 (= e!393893 (contains!3703 acc!681 (select (arr!19066 a!3626) from!3004)))))

(declare-fun b!692345 () Bool)

(assert (=> b!692345 (= e!393894 e!393892)))

(declare-fun res!456741 () Bool)

(assert (=> b!692345 (=> (not res!456741) (not e!393892))))

(assert (=> b!692345 (= res!456741 (not e!393893))))

(declare-fun res!456743 () Bool)

(assert (=> b!692345 (=> (not res!456743) (not e!393893))))

(assert (=> b!692345 (= res!456743 (validKeyInArray!0 (select (arr!19066 a!3626) from!3004)))))

(assert (= (and d!95487 (not res!456742)) b!692345))

(assert (= (and b!692345 res!456743) b!692344))

(assert (= (and b!692345 res!456741) b!692341))

(assert (= (and b!692341 c!78167) b!692343))

(assert (= (and b!692341 (not c!78167)) b!692342))

(assert (= (or b!692343 b!692342) bm!34235))

(assert (=> b!692341 m!654907))

(assert (=> b!692341 m!654907))

(assert (=> b!692341 m!654927))

(assert (=> bm!34235 m!654907))

(declare-fun m!654967 () Bool)

(assert (=> bm!34235 m!654967))

(assert (=> b!692344 m!654907))

(assert (=> b!692344 m!654907))

(declare-fun m!654969 () Bool)

(assert (=> b!692344 m!654969))

(assert (=> b!692345 m!654907))

(assert (=> b!692345 m!654907))

(assert (=> b!692345 m!654927))

(assert (=> b!692260 d!95487))

(declare-fun d!95489 () Bool)

(assert (=> d!95489 (= (validKeyInArray!0 (select (arr!19066 a!3626) from!3004)) (and (not (= (select (arr!19066 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19066 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!692249 d!95489))

(declare-fun d!95491 () Bool)

(declare-fun lt!316548 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!313 (List!13160) (InoxSet (_ BitVec 64)))

(assert (=> d!95491 (= lt!316548 (select (content!313 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!393900 () Bool)

(assert (=> d!95491 (= lt!316548 e!393900)))

(declare-fun res!456748 () Bool)

(assert (=> d!95491 (=> (not res!456748) (not e!393900))))

(get-info :version)

(assert (=> d!95491 (= res!456748 ((_ is Cons!13156) acc!681))))

(assert (=> d!95491 (= (contains!3703 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316548)))

(declare-fun b!692350 () Bool)

(declare-fun e!393901 () Bool)

(assert (=> b!692350 (= e!393900 e!393901)))

(declare-fun res!456749 () Bool)

(assert (=> b!692350 (=> res!456749 e!393901)))

(assert (=> b!692350 (= res!456749 (= (h!14201 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692351 () Bool)

(assert (=> b!692351 (= e!393901 (contains!3703 (t!19438 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95491 res!456748) b!692350))

(assert (= (and b!692350 (not res!456749)) b!692351))

(declare-fun m!654971 () Bool)

(assert (=> d!95491 m!654971))

(declare-fun m!654973 () Bool)

(assert (=> d!95491 m!654973))

(declare-fun m!654975 () Bool)

(assert (=> b!692351 m!654975))

(assert (=> b!692252 d!95491))

(declare-fun d!95495 () Bool)

(assert (=> d!95495 (= (array_inv!14840 a!3626) (bvsge (size!19449 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61874 d!95495))

(declare-fun d!95499 () Bool)

(assert (=> d!95499 (= ($colon$colon!413 acc!681 (select (arr!19066 a!3626) from!3004)) (Cons!13156 (select (arr!19066 a!3626) from!3004) acc!681))))

(assert (=> b!692241 d!95499))

(declare-fun d!95503 () Bool)

(declare-fun lt!316549 () Bool)

(assert (=> d!95503 (= lt!316549 (select (content!313 acc!681) k0!2843))))

(declare-fun e!393910 () Bool)

(assert (=> d!95503 (= lt!316549 e!393910)))

(declare-fun res!456758 () Bool)

(assert (=> d!95503 (=> (not res!456758) (not e!393910))))

(assert (=> d!95503 (= res!456758 ((_ is Cons!13156) acc!681))))

(assert (=> d!95503 (= (contains!3703 acc!681 k0!2843) lt!316549)))

(declare-fun b!692360 () Bool)

(declare-fun e!393911 () Bool)

(assert (=> b!692360 (= e!393910 e!393911)))

(declare-fun res!456759 () Bool)

(assert (=> b!692360 (=> res!456759 e!393911)))

(assert (=> b!692360 (= res!456759 (= (h!14201 acc!681) k0!2843))))

(declare-fun b!692361 () Bool)

(assert (=> b!692361 (= e!393911 (contains!3703 (t!19438 acc!681) k0!2843))))

(assert (= (and d!95503 res!456758) b!692360))

(assert (= (and b!692360 (not res!456759)) b!692361))

(assert (=> d!95503 m!654971))

(declare-fun m!654985 () Bool)

(assert (=> d!95503 m!654985))

(declare-fun m!654987 () Bool)

(assert (=> b!692361 m!654987))

(assert (=> b!692242 d!95503))

(declare-fun d!95507 () Bool)

(declare-fun lt!316550 () Bool)

(assert (=> d!95507 (= lt!316550 (select (content!313 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!393912 () Bool)

(assert (=> d!95507 (= lt!316550 e!393912)))

(declare-fun res!456760 () Bool)

(assert (=> d!95507 (=> (not res!456760) (not e!393912))))

(assert (=> d!95507 (= res!456760 ((_ is Cons!13156) acc!681))))

(assert (=> d!95507 (= (contains!3703 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316550)))

(declare-fun b!692362 () Bool)

(declare-fun e!393913 () Bool)

(assert (=> b!692362 (= e!393912 e!393913)))

(declare-fun res!456761 () Bool)

(assert (=> b!692362 (=> res!456761 e!393913)))

(assert (=> b!692362 (= res!456761 (= (h!14201 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692363 () Bool)

(assert (=> b!692363 (= e!393913 (contains!3703 (t!19438 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95507 res!456760) b!692362))

(assert (= (and b!692362 (not res!456761)) b!692363))

(assert (=> d!95507 m!654971))

(declare-fun m!654989 () Bool)

(assert (=> d!95507 m!654989))

(declare-fun m!654991 () Bool)

(assert (=> b!692363 m!654991))

(assert (=> b!692253 d!95507))

(assert (=> b!692254 d!95503))

(declare-fun d!95509 () Bool)

(declare-fun lt!316551 () Bool)

(assert (=> d!95509 (= lt!316551 (select (content!313 lt!316534) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!393916 () Bool)

(assert (=> d!95509 (= lt!316551 e!393916)))

(declare-fun res!456764 () Bool)

(assert (=> d!95509 (=> (not res!456764) (not e!393916))))

(assert (=> d!95509 (= res!456764 ((_ is Cons!13156) lt!316534))))

(assert (=> d!95509 (= (contains!3703 lt!316534 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316551)))

(declare-fun b!692366 () Bool)

(declare-fun e!393917 () Bool)

(assert (=> b!692366 (= e!393916 e!393917)))

(declare-fun res!456765 () Bool)

(assert (=> b!692366 (=> res!456765 e!393917)))

(assert (=> b!692366 (= res!456765 (= (h!14201 lt!316534) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692367 () Bool)

(assert (=> b!692367 (= e!393917 (contains!3703 (t!19438 lt!316534) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95509 res!456764) b!692366))

(assert (= (and b!692366 (not res!456765)) b!692367))

(declare-fun m!654993 () Bool)

(assert (=> d!95509 m!654993))

(declare-fun m!654995 () Bool)

(assert (=> d!95509 m!654995))

(declare-fun m!654997 () Bool)

(assert (=> b!692367 m!654997))

(assert (=> b!692243 d!95509))

(declare-fun d!95511 () Bool)

(declare-fun lt!316552 () Bool)

(assert (=> d!95511 (= lt!316552 (select (content!313 lt!316534) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!393920 () Bool)

(assert (=> d!95511 (= lt!316552 e!393920)))

(declare-fun res!456768 () Bool)

(assert (=> d!95511 (=> (not res!456768) (not e!393920))))

(assert (=> d!95511 (= res!456768 ((_ is Cons!13156) lt!316534))))

(assert (=> d!95511 (= (contains!3703 lt!316534 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316552)))

(declare-fun b!692370 () Bool)

(declare-fun e!393921 () Bool)

(assert (=> b!692370 (= e!393920 e!393921)))

(declare-fun res!456769 () Bool)

(assert (=> b!692370 (=> res!456769 e!393921)))

(assert (=> b!692370 (= res!456769 (= (h!14201 lt!316534) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!692371 () Bool)

(assert (=> b!692371 (= e!393921 (contains!3703 (t!19438 lt!316534) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95511 res!456768) b!692370))

(assert (= (and b!692370 (not res!456769)) b!692371))

(assert (=> d!95511 m!654993))

(declare-fun m!654999 () Bool)

(assert (=> d!95511 m!654999))

(declare-fun m!655001 () Bool)

(assert (=> b!692371 m!655001))

(assert (=> b!692244 d!95511))

(declare-fun d!95513 () Bool)

(declare-fun res!456770 () Bool)

(declare-fun e!393922 () Bool)

(assert (=> d!95513 (=> res!456770 e!393922)))

(assert (=> d!95513 (= res!456770 (= (select (arr!19066 a!3626) from!3004) k0!2843))))

(assert (=> d!95513 (= (arrayContainsKey!0 a!3626 k0!2843 from!3004) e!393922)))

(declare-fun b!692372 () Bool)

(declare-fun e!393923 () Bool)

(assert (=> b!692372 (= e!393922 e!393923)))

(declare-fun res!456771 () Bool)

(assert (=> b!692372 (=> (not res!456771) (not e!393923))))

(assert (=> b!692372 (= res!456771 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19449 a!3626)))))

(declare-fun b!692373 () Bool)

(assert (=> b!692373 (= e!393923 (arrayContainsKey!0 a!3626 k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95513 (not res!456770)) b!692372))

(assert (= (and b!692372 res!456771) b!692373))

(assert (=> d!95513 m!654907))

(declare-fun m!655003 () Bool)

(assert (=> b!692373 m!655003))

(assert (=> b!692255 d!95513))

(declare-fun d!95515 () Bool)

(assert (=> d!95515 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!316558 () Unit!24434)

(declare-fun choose!13 (array!39806 (_ BitVec 64) (_ BitVec 32)) Unit!24434)

(assert (=> d!95515 (= lt!316558 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!95515 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95515 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!316558)))

(declare-fun bs!20264 () Bool)

(assert (= bs!20264 d!95515))

(assert (=> bs!20264 m!654923))

(declare-fun m!655015 () Bool)

(assert (=> bs!20264 m!655015))

(assert (=> b!692255 d!95515))

(declare-fun d!95521 () Bool)

(declare-fun res!456792 () Bool)

(declare-fun e!393944 () Bool)

(assert (=> d!95521 (=> res!456792 e!393944)))

(assert (=> d!95521 (= res!456792 ((_ is Nil!13157) lt!316534))))

(assert (=> d!95521 (= (noDuplicate!950 lt!316534) e!393944)))

(declare-fun b!692394 () Bool)

(declare-fun e!393945 () Bool)

(assert (=> b!692394 (= e!393944 e!393945)))

(declare-fun res!456793 () Bool)

(assert (=> b!692394 (=> (not res!456793) (not e!393945))))

(assert (=> b!692394 (= res!456793 (not (contains!3703 (t!19438 lt!316534) (h!14201 lt!316534))))))

(declare-fun b!692395 () Bool)

(assert (=> b!692395 (= e!393945 (noDuplicate!950 (t!19438 lt!316534)))))

(assert (= (and d!95521 (not res!456792)) b!692394))

(assert (= (and b!692394 res!456793) b!692395))

(declare-fun m!655029 () Bool)

(assert (=> b!692394 m!655029))

(declare-fun m!655031 () Bool)

(assert (=> b!692395 m!655031))

(assert (=> b!692246 d!95521))

(declare-fun d!95531 () Bool)

(declare-fun res!456794 () Bool)

(declare-fun e!393946 () Bool)

(assert (=> d!95531 (=> res!456794 e!393946)))

(assert (=> d!95531 (= res!456794 ((_ is Nil!13157) acc!681))))

(assert (=> d!95531 (= (noDuplicate!950 acc!681) e!393946)))

(declare-fun b!692396 () Bool)

(declare-fun e!393947 () Bool)

(assert (=> b!692396 (= e!393946 e!393947)))

(declare-fun res!456795 () Bool)

(assert (=> b!692396 (=> (not res!456795) (not e!393947))))

(assert (=> b!692396 (= res!456795 (not (contains!3703 (t!19438 acc!681) (h!14201 acc!681))))))

(declare-fun b!692397 () Bool)

(assert (=> b!692397 (= e!393947 (noDuplicate!950 (t!19438 acc!681)))))

(assert (= (and d!95531 (not res!456794)) b!692396))

(assert (= (and b!692396 res!456795) b!692397))

(declare-fun m!655033 () Bool)

(assert (=> b!692396 m!655033))

(declare-fun m!655035 () Bool)

(assert (=> b!692397 m!655035))

(assert (=> b!692257 d!95531))

(declare-fun d!95533 () Bool)

(assert (=> d!95533 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!692258 d!95533))

(declare-fun b!692398 () Bool)

(declare-fun e!393948 () Bool)

(declare-fun e!393951 () Bool)

(assert (=> b!692398 (= e!393948 e!393951)))

(declare-fun c!78168 () Bool)

(assert (=> b!692398 (= c!78168 (validKeyInArray!0 (select (arr!19066 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692399 () Bool)

(declare-fun call!34239 () Bool)

(assert (=> b!692399 (= e!393951 call!34239)))

(declare-fun b!692400 () Bool)

(assert (=> b!692400 (= e!393951 call!34239)))

(declare-fun bm!34236 () Bool)

(assert (=> bm!34236 (= call!34239 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78168 (Cons!13156 (select (arr!19066 a!3626) #b00000000000000000000000000000000) Nil!13157) Nil!13157)))))

(declare-fun d!95535 () Bool)

(declare-fun res!456797 () Bool)

(declare-fun e!393950 () Bool)

(assert (=> d!95535 (=> res!456797 e!393950)))

(assert (=> d!95535 (= res!456797 (bvsge #b00000000000000000000000000000000 (size!19449 a!3626)))))

(assert (=> d!95535 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13157) e!393950)))

(declare-fun b!692401 () Bool)

(declare-fun e!393949 () Bool)

(assert (=> b!692401 (= e!393949 (contains!3703 Nil!13157 (select (arr!19066 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!692402 () Bool)

(assert (=> b!692402 (= e!393950 e!393948)))

(declare-fun res!456796 () Bool)

(assert (=> b!692402 (=> (not res!456796) (not e!393948))))

(assert (=> b!692402 (= res!456796 (not e!393949))))

(declare-fun res!456798 () Bool)

(assert (=> b!692402 (=> (not res!456798) (not e!393949))))

(assert (=> b!692402 (= res!456798 (validKeyInArray!0 (select (arr!19066 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!95535 (not res!456797)) b!692402))

(assert (= (and b!692402 res!456798) b!692401))

(assert (= (and b!692402 res!456796) b!692398))

(assert (= (and b!692398 c!78168) b!692400))

(assert (= (and b!692398 (not c!78168)) b!692399))

(assert (= (or b!692400 b!692399) bm!34236))

(assert (=> b!692398 m!654963))

(assert (=> b!692398 m!654963))

(declare-fun m!655037 () Bool)

(assert (=> b!692398 m!655037))

(assert (=> bm!34236 m!654963))

(declare-fun m!655039 () Bool)

(assert (=> bm!34236 m!655039))

(assert (=> b!692401 m!654963))

(assert (=> b!692401 m!654963))

(declare-fun m!655041 () Bool)

(assert (=> b!692401 m!655041))

(assert (=> b!692402 m!654963))

(assert (=> b!692402 m!654963))

(assert (=> b!692402 m!655037))

(assert (=> b!692247 d!95535))

(check-sat (not b!692351) (not b!692371) (not b!692367) (not b!692344) (not b!692395) (not b!692345) (not b!692401) (not bm!34235) (not b!692397) (not b!692341) (not d!95507) (not b!692363) (not b!692396) (not d!95515) (not bm!34236) (not b!692394) (not d!95511) (not b!692361) (not b!692373) (not d!95503) (not d!95491) (not b!692402) (not b!692330) (not d!95509) (not b!692398))
(check-sat)
