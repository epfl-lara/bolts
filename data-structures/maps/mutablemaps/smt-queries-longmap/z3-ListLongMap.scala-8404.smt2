; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102246 () Bool)

(assert start!102246)

(declare-fun b!1230400 () Bool)

(declare-fun res!818994 () Bool)

(declare-fun e!698131 () Bool)

(assert (=> b!1230400 (=> (not res!818994) (not e!698131))))

(declare-datatypes ((List!27247 0))(
  ( (Nil!27244) (Cons!27243 (h!28452 (_ BitVec 64)) (t!40717 List!27247)) )
))
(declare-fun acc!823 () List!27247)

(declare-fun contains!7162 (List!27247 (_ BitVec 64)) Bool)

(assert (=> b!1230400 (= res!818994 (not (contains!7162 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((array!79360 0))(
  ( (array!79361 (arr!38296 (Array (_ BitVec 32) (_ BitVec 64))) (size!38833 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79360)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun b!1230401 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79360 (_ BitVec 32) List!27247) Bool)

(assert (=> b!1230401 (= e!698131 (not (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27243 (select (arr!38296 a!3806) from!3184) acc!823))))))

(declare-fun b!1230402 () Bool)

(declare-fun res!818993 () Bool)

(assert (=> b!1230402 (=> (not res!818993) (not e!698131))))

(assert (=> b!1230402 (= res!818993 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!818998 () Bool)

(assert (=> start!102246 (=> (not res!818998) (not e!698131))))

(assert (=> start!102246 (= res!818998 (bvslt (size!38833 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102246 e!698131))

(declare-fun array_inv!29072 (array!79360) Bool)

(assert (=> start!102246 (array_inv!29072 a!3806)))

(assert (=> start!102246 true))

(declare-fun b!1230403 () Bool)

(declare-fun res!818996 () Bool)

(assert (=> b!1230403 (=> (not res!818996) (not e!698131))))

(declare-fun noDuplicate!1769 (List!27247) Bool)

(assert (=> b!1230403 (= res!818996 (noDuplicate!1769 acc!823))))

(declare-fun b!1230404 () Bool)

(declare-fun res!818997 () Bool)

(assert (=> b!1230404 (=> (not res!818997) (not e!698131))))

(assert (=> b!1230404 (= res!818997 (not (contains!7162 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230405 () Bool)

(declare-fun res!818991 () Bool)

(assert (=> b!1230405 (=> (not res!818991) (not e!698131))))

(assert (=> b!1230405 (= res!818991 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38833 a!3806)) (bvslt from!3184 (size!38833 a!3806))))))

(declare-fun b!1230406 () Bool)

(declare-fun res!818999 () Bool)

(assert (=> b!1230406 (=> (not res!818999) (not e!698131))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230406 (= res!818999 (validKeyInArray!0 (select (arr!38296 a!3806) from!3184)))))

(declare-fun b!1230407 () Bool)

(declare-fun res!818995 () Bool)

(assert (=> b!1230407 (=> (not res!818995) (not e!698131))))

(declare-fun k0!2913 () (_ BitVec 64))

(assert (=> b!1230407 (= res!818995 (validKeyInArray!0 k0!2913))))

(declare-fun b!1230408 () Bool)

(declare-fun res!818992 () Bool)

(assert (=> b!1230408 (=> (not res!818992) (not e!698131))))

(declare-fun arrayContainsKey!0 (array!79360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230408 (= res!818992 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102246 res!818998) b!1230407))

(assert (= (and b!1230407 res!818995) b!1230405))

(assert (= (and b!1230405 res!818991) b!1230403))

(assert (= (and b!1230403 res!818996) b!1230400))

(assert (= (and b!1230400 res!818994) b!1230404))

(assert (= (and b!1230404 res!818997) b!1230408))

(assert (= (and b!1230408 res!818992) b!1230402))

(assert (= (and b!1230402 res!818993) b!1230406))

(assert (= (and b!1230406 res!818999) b!1230401))

(declare-fun m!1134877 () Bool)

(assert (=> b!1230403 m!1134877))

(declare-fun m!1134879 () Bool)

(assert (=> b!1230408 m!1134879))

(declare-fun m!1134881 () Bool)

(assert (=> b!1230400 m!1134881))

(declare-fun m!1134883 () Bool)

(assert (=> b!1230404 m!1134883))

(declare-fun m!1134885 () Bool)

(assert (=> b!1230406 m!1134885))

(assert (=> b!1230406 m!1134885))

(declare-fun m!1134887 () Bool)

(assert (=> b!1230406 m!1134887))

(assert (=> b!1230401 m!1134885))

(declare-fun m!1134889 () Bool)

(assert (=> b!1230401 m!1134889))

(declare-fun m!1134891 () Bool)

(assert (=> b!1230407 m!1134891))

(declare-fun m!1134893 () Bool)

(assert (=> start!102246 m!1134893))

(declare-fun m!1134895 () Bool)

(assert (=> b!1230402 m!1134895))

(check-sat (not b!1230404) (not b!1230403) (not b!1230400) (not b!1230401) (not b!1230406) (not b!1230407) (not b!1230408) (not start!102246) (not b!1230402))
(check-sat)
(get-model)

(declare-fun b!1230446 () Bool)

(declare-fun e!698146 () Bool)

(declare-fun call!60857 () Bool)

(assert (=> b!1230446 (= e!698146 call!60857)))

(declare-fun b!1230447 () Bool)

(assert (=> b!1230447 (= e!698146 call!60857)))

(declare-fun c!120569 () Bool)

(declare-fun bm!60854 () Bool)

(assert (=> bm!60854 (= call!60857 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120569 (Cons!27243 (select (arr!38296 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27243 (select (arr!38296 a!3806) from!3184) acc!823)) (Cons!27243 (select (arr!38296 a!3806) from!3184) acc!823))))))

(declare-fun b!1230448 () Bool)

(declare-fun e!698147 () Bool)

(assert (=> b!1230448 (= e!698147 e!698146)))

(assert (=> b!1230448 (= c!120569 (validKeyInArray!0 (select (arr!38296 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun e!698149 () Bool)

(declare-fun b!1230449 () Bool)

(assert (=> b!1230449 (= e!698149 (contains!7162 (Cons!27243 (select (arr!38296 a!3806) from!3184) acc!823) (select (arr!38296 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1230450 () Bool)

(declare-fun e!698148 () Bool)

(assert (=> b!1230450 (= e!698148 e!698147)))

(declare-fun res!819035 () Bool)

(assert (=> b!1230450 (=> (not res!819035) (not e!698147))))

(assert (=> b!1230450 (= res!819035 (not e!698149))))

(declare-fun res!819034 () Bool)

(assert (=> b!1230450 (=> (not res!819034) (not e!698149))))

(assert (=> b!1230450 (= res!819034 (validKeyInArray!0 (select (arr!38296 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!134525 () Bool)

(declare-fun res!819033 () Bool)

(assert (=> d!134525 (=> res!819033 e!698148)))

(assert (=> d!134525 (= res!819033 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38833 a!3806)))))

(assert (=> d!134525 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27243 (select (arr!38296 a!3806) from!3184) acc!823)) e!698148)))

(assert (= (and d!134525 (not res!819033)) b!1230450))

(assert (= (and b!1230450 res!819034) b!1230449))

(assert (= (and b!1230450 res!819035) b!1230448))

(assert (= (and b!1230448 c!120569) b!1230446))

(assert (= (and b!1230448 (not c!120569)) b!1230447))

(assert (= (or b!1230446 b!1230447) bm!60854))

(declare-fun m!1134917 () Bool)

(assert (=> bm!60854 m!1134917))

(declare-fun m!1134919 () Bool)

(assert (=> bm!60854 m!1134919))

(assert (=> b!1230448 m!1134917))

(assert (=> b!1230448 m!1134917))

(declare-fun m!1134921 () Bool)

(assert (=> b!1230448 m!1134921))

(assert (=> b!1230449 m!1134917))

(assert (=> b!1230449 m!1134917))

(declare-fun m!1134923 () Bool)

(assert (=> b!1230449 m!1134923))

(assert (=> b!1230450 m!1134917))

(assert (=> b!1230450 m!1134917))

(assert (=> b!1230450 m!1134921))

(assert (=> b!1230401 d!134525))

(declare-fun d!134529 () Bool)

(assert (=> d!134529 (= (array_inv!29072 a!3806) (bvsge (size!38833 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102246 d!134529))

(declare-fun d!134531 () Bool)

(assert (=> d!134531 (= (validKeyInArray!0 k0!2913) (and (not (= k0!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1230407 d!134531))

(declare-fun b!1230455 () Bool)

(declare-fun e!698154 () Bool)

(declare-fun call!60858 () Bool)

(assert (=> b!1230455 (= e!698154 call!60858)))

(declare-fun b!1230456 () Bool)

(assert (=> b!1230456 (= e!698154 call!60858)))

(declare-fun c!120570 () Bool)

(declare-fun bm!60855 () Bool)

(assert (=> bm!60855 (= call!60858 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120570 (Cons!27243 (select (arr!38296 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1230457 () Bool)

(declare-fun e!698155 () Bool)

(assert (=> b!1230457 (= e!698155 e!698154)))

(assert (=> b!1230457 (= c!120570 (validKeyInArray!0 (select (arr!38296 a!3806) from!3184)))))

(declare-fun e!698157 () Bool)

(declare-fun b!1230458 () Bool)

(assert (=> b!1230458 (= e!698157 (contains!7162 acc!823 (select (arr!38296 a!3806) from!3184)))))

(declare-fun b!1230459 () Bool)

(declare-fun e!698156 () Bool)

(assert (=> b!1230459 (= e!698156 e!698155)))

(declare-fun res!819042 () Bool)

(assert (=> b!1230459 (=> (not res!819042) (not e!698155))))

(assert (=> b!1230459 (= res!819042 (not e!698157))))

(declare-fun res!819041 () Bool)

(assert (=> b!1230459 (=> (not res!819041) (not e!698157))))

(assert (=> b!1230459 (= res!819041 (validKeyInArray!0 (select (arr!38296 a!3806) from!3184)))))

(declare-fun d!134533 () Bool)

(declare-fun res!819040 () Bool)

(assert (=> d!134533 (=> res!819040 e!698156)))

(assert (=> d!134533 (= res!819040 (bvsge from!3184 (size!38833 a!3806)))))

(assert (=> d!134533 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!698156)))

(assert (= (and d!134533 (not res!819040)) b!1230459))

(assert (= (and b!1230459 res!819041) b!1230458))

(assert (= (and b!1230459 res!819042) b!1230457))

(assert (= (and b!1230457 c!120570) b!1230455))

(assert (= (and b!1230457 (not c!120570)) b!1230456))

(assert (= (or b!1230455 b!1230456) bm!60855))

(assert (=> bm!60855 m!1134885))

(declare-fun m!1134925 () Bool)

(assert (=> bm!60855 m!1134925))

(assert (=> b!1230457 m!1134885))

(assert (=> b!1230457 m!1134885))

(assert (=> b!1230457 m!1134887))

(assert (=> b!1230458 m!1134885))

(assert (=> b!1230458 m!1134885))

(declare-fun m!1134927 () Bool)

(assert (=> b!1230458 m!1134927))

(assert (=> b!1230459 m!1134885))

(assert (=> b!1230459 m!1134885))

(assert (=> b!1230459 m!1134887))

(assert (=> b!1230402 d!134533))

(declare-fun d!134537 () Bool)

(declare-fun lt!559321 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!565 (List!27247) (InoxSet (_ BitVec 64)))

(assert (=> d!134537 (= lt!559321 (select (content!565 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698175 () Bool)

(assert (=> d!134537 (= lt!559321 e!698175)))

(declare-fun res!819059 () Bool)

(assert (=> d!134537 (=> (not res!819059) (not e!698175))))

(get-info :version)

(assert (=> d!134537 (= res!819059 ((_ is Cons!27243) acc!823))))

(assert (=> d!134537 (= (contains!7162 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559321)))

(declare-fun b!1230476 () Bool)

(declare-fun e!698174 () Bool)

(assert (=> b!1230476 (= e!698175 e!698174)))

(declare-fun res!819060 () Bool)

(assert (=> b!1230476 (=> res!819060 e!698174)))

(assert (=> b!1230476 (= res!819060 (= (h!28452 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1230477 () Bool)

(assert (=> b!1230477 (= e!698174 (contains!7162 (t!40717 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134537 res!819059) b!1230476))

(assert (= (and b!1230476 (not res!819060)) b!1230477))

(declare-fun m!1134937 () Bool)

(assert (=> d!134537 m!1134937))

(declare-fun m!1134939 () Bool)

(assert (=> d!134537 m!1134939))

(declare-fun m!1134941 () Bool)

(assert (=> b!1230477 m!1134941))

(assert (=> b!1230400 d!134537))

(declare-fun d!134543 () Bool)

(assert (=> d!134543 (= (validKeyInArray!0 (select (arr!38296 a!3806) from!3184)) (and (not (= (select (arr!38296 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38296 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1230406 d!134543))

(declare-fun d!134545 () Bool)

(declare-fun lt!559323 () Bool)

(assert (=> d!134545 (= lt!559323 (select (content!565 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!698183 () Bool)

(assert (=> d!134545 (= lt!559323 e!698183)))

(declare-fun res!819067 () Bool)

(assert (=> d!134545 (=> (not res!819067) (not e!698183))))

(assert (=> d!134545 (= res!819067 ((_ is Cons!27243) acc!823))))

(assert (=> d!134545 (= (contains!7162 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559323)))

(declare-fun b!1230484 () Bool)

(declare-fun e!698182 () Bool)

(assert (=> b!1230484 (= e!698183 e!698182)))

(declare-fun res!819068 () Bool)

(assert (=> b!1230484 (=> res!819068 e!698182)))

(assert (=> b!1230484 (= res!819068 (= (h!28452 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1230485 () Bool)

(assert (=> b!1230485 (= e!698182 (contains!7162 (t!40717 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134545 res!819067) b!1230484))

(assert (= (and b!1230484 (not res!819068)) b!1230485))

(assert (=> d!134545 m!1134937))

(declare-fun m!1134949 () Bool)

(assert (=> d!134545 m!1134949))

(declare-fun m!1134951 () Bool)

(assert (=> b!1230485 m!1134951))

(assert (=> b!1230404 d!134545))

(declare-fun d!134549 () Bool)

(declare-fun res!819077 () Bool)

(declare-fun e!698192 () Bool)

(assert (=> d!134549 (=> res!819077 e!698192)))

(assert (=> d!134549 (= res!819077 (= (select (arr!38296 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k0!2913))))

(assert (=> d!134549 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!698192)))

(declare-fun b!1230494 () Bool)

(declare-fun e!698193 () Bool)

(assert (=> b!1230494 (= e!698192 e!698193)))

(declare-fun res!819078 () Bool)

(assert (=> b!1230494 (=> (not res!819078) (not e!698193))))

(assert (=> b!1230494 (= res!819078 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38833 a!3806)))))

(declare-fun b!1230495 () Bool)

(assert (=> b!1230495 (= e!698193 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134549 (not res!819077)) b!1230494))

(assert (= (and b!1230494 res!819078) b!1230495))

(assert (=> d!134549 m!1134917))

(declare-fun m!1134961 () Bool)

(assert (=> b!1230495 m!1134961))

(assert (=> b!1230408 d!134549))

(declare-fun d!134555 () Bool)

(declare-fun res!819095 () Bool)

(declare-fun e!698214 () Bool)

(assert (=> d!134555 (=> res!819095 e!698214)))

(assert (=> d!134555 (= res!819095 ((_ is Nil!27244) acc!823))))

(assert (=> d!134555 (= (noDuplicate!1769 acc!823) e!698214)))

(declare-fun b!1230520 () Bool)

(declare-fun e!698215 () Bool)

(assert (=> b!1230520 (= e!698214 e!698215)))

(declare-fun res!819096 () Bool)

(assert (=> b!1230520 (=> (not res!819096) (not e!698215))))

(assert (=> b!1230520 (= res!819096 (not (contains!7162 (t!40717 acc!823) (h!28452 acc!823))))))

(declare-fun b!1230521 () Bool)

(assert (=> b!1230521 (= e!698215 (noDuplicate!1769 (t!40717 acc!823)))))

(assert (= (and d!134555 (not res!819095)) b!1230520))

(assert (= (and b!1230520 res!819096) b!1230521))

(declare-fun m!1134963 () Bool)

(assert (=> b!1230520 m!1134963))

(declare-fun m!1134965 () Bool)

(assert (=> b!1230521 m!1134965))

(assert (=> b!1230403 d!134555))

(check-sat (not b!1230477) (not b!1230485) (not b!1230449) (not b!1230457) (not b!1230448) (not b!1230521) (not b!1230458) (not b!1230520) (not bm!60854) (not b!1230459) (not bm!60855) (not d!134545) (not d!134537) (not b!1230495) (not b!1230450))
(check-sat)
