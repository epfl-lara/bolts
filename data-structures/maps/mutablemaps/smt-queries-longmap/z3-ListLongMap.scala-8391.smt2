; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102114 () Bool)

(assert start!102114)

(declare-fun b!1228735 () Bool)

(declare-fun res!817408 () Bool)

(declare-fun e!697477 () Bool)

(assert (=> b!1228735 (=> (not res!817408) (not e!697477))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228735 (= res!817408 (validKeyInArray!0 k0!2913))))

(declare-fun b!1228736 () Bool)

(declare-fun e!697480 () Bool)

(declare-datatypes ((List!27208 0))(
  ( (Nil!27205) (Cons!27204 (h!28413 (_ BitVec 64)) (t!40678 List!27208)) )
))
(declare-fun lt!558994 () List!27208)

(declare-fun contains!7123 (List!27208 (_ BitVec 64)) Bool)

(assert (=> b!1228736 (= e!697480 (not (contains!7123 lt!558994 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228737 () Bool)

(declare-fun res!817402 () Bool)

(assert (=> b!1228737 (=> (not res!817402) (not e!697477))))

(declare-datatypes ((array!79279 0))(
  ( (array!79280 (arr!38257 (Array (_ BitVec 32) (_ BitVec 64))) (size!38794 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79279)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1228737 (= res!817402 (validKeyInArray!0 (select (arr!38257 a!3806) from!3184)))))

(declare-fun b!1228738 () Bool)

(declare-fun res!817409 () Bool)

(assert (=> b!1228738 (=> (not res!817409) (not e!697477))))

(declare-fun acc!823 () List!27208)

(assert (=> b!1228738 (= res!817409 (not (contains!7123 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228739 () Bool)

(declare-fun e!697479 () Bool)

(assert (=> b!1228739 (= e!697477 (not e!697479))))

(declare-fun res!817398 () Bool)

(assert (=> b!1228739 (=> res!817398 e!697479)))

(assert (=> b!1228739 (= res!817398 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1228739 (= lt!558994 (Cons!27204 (select (arr!38257 a!3806) from!3184) Nil!27205))))

(declare-fun arrayNoDuplicates!0 (array!79279 (_ BitVec 32) List!27208) Bool)

(assert (=> b!1228739 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27205)))

(declare-datatypes ((Unit!40654 0))(
  ( (Unit!40655) )
))
(declare-fun lt!558995 () Unit!40654)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79279 List!27208 List!27208 (_ BitVec 32)) Unit!40654)

(assert (=> b!1228739 (= lt!558995 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27205 from!3184))))

(assert (=> b!1228739 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823))))

(declare-fun b!1228740 () Bool)

(declare-fun res!817404 () Bool)

(assert (=> b!1228740 (=> (not res!817404) (not e!697477))))

(assert (=> b!1228740 (= res!817404 (not (contains!7123 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228741 () Bool)

(declare-fun res!817406 () Bool)

(assert (=> b!1228741 (=> (not res!817406) (not e!697477))))

(declare-fun arrayContainsKey!0 (array!79279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228741 (= res!817406 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228742 () Bool)

(declare-fun res!817407 () Bool)

(assert (=> b!1228742 (=> (not res!817407) (not e!697477))))

(declare-fun noDuplicate!1730 (List!27208) Bool)

(assert (=> b!1228742 (= res!817407 (noDuplicate!1730 acc!823))))

(declare-fun res!817405 () Bool)

(assert (=> start!102114 (=> (not res!817405) (not e!697477))))

(assert (=> start!102114 (= res!817405 (bvslt (size!38794 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102114 e!697477))

(declare-fun array_inv!29033 (array!79279) Bool)

(assert (=> start!102114 (array_inv!29033 a!3806)))

(assert (=> start!102114 true))

(declare-fun b!1228743 () Bool)

(assert (=> b!1228743 (= e!697479 e!697480)))

(declare-fun res!817401 () Bool)

(assert (=> b!1228743 (=> (not res!817401) (not e!697480))))

(assert (=> b!1228743 (= res!817401 (not (contains!7123 lt!558994 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228744 () Bool)

(declare-fun res!817399 () Bool)

(assert (=> b!1228744 (=> (not res!817399) (not e!697477))))

(assert (=> b!1228744 (= res!817399 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38794 a!3806)) (bvslt from!3184 (size!38794 a!3806))))))

(declare-fun b!1228745 () Bool)

(declare-fun res!817403 () Bool)

(assert (=> b!1228745 (=> (not res!817403) (not e!697477))))

(assert (=> b!1228745 (= res!817403 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228746 () Bool)

(declare-fun res!817400 () Bool)

(assert (=> b!1228746 (=> res!817400 e!697479)))

(assert (=> b!1228746 (= res!817400 (not (noDuplicate!1730 lt!558994)))))

(assert (= (and start!102114 res!817405) b!1228735))

(assert (= (and b!1228735 res!817408) b!1228744))

(assert (= (and b!1228744 res!817399) b!1228742))

(assert (= (and b!1228742 res!817407) b!1228740))

(assert (= (and b!1228740 res!817404) b!1228738))

(assert (= (and b!1228738 res!817409) b!1228741))

(assert (= (and b!1228741 res!817406) b!1228745))

(assert (= (and b!1228745 res!817403) b!1228737))

(assert (= (and b!1228737 res!817402) b!1228739))

(assert (= (and b!1228739 (not res!817398)) b!1228746))

(assert (= (and b!1228746 (not res!817400)) b!1228743))

(assert (= (and b!1228743 res!817401) b!1228736))

(declare-fun m!1133351 () Bool)

(assert (=> start!102114 m!1133351))

(declare-fun m!1133353 () Bool)

(assert (=> b!1228742 m!1133353))

(declare-fun m!1133355 () Bool)

(assert (=> b!1228746 m!1133355))

(declare-fun m!1133357 () Bool)

(assert (=> b!1228738 m!1133357))

(declare-fun m!1133359 () Bool)

(assert (=> b!1228740 m!1133359))

(declare-fun m!1133361 () Bool)

(assert (=> b!1228741 m!1133361))

(declare-fun m!1133363 () Bool)

(assert (=> b!1228745 m!1133363))

(declare-fun m!1133365 () Bool)

(assert (=> b!1228739 m!1133365))

(declare-fun m!1133367 () Bool)

(assert (=> b!1228739 m!1133367))

(declare-fun m!1133369 () Bool)

(assert (=> b!1228739 m!1133369))

(declare-fun m!1133371 () Bool)

(assert (=> b!1228739 m!1133371))

(declare-fun m!1133373 () Bool)

(assert (=> b!1228736 m!1133373))

(declare-fun m!1133375 () Bool)

(assert (=> b!1228743 m!1133375))

(assert (=> b!1228737 m!1133365))

(assert (=> b!1228737 m!1133365))

(declare-fun m!1133377 () Bool)

(assert (=> b!1228737 m!1133377))

(declare-fun m!1133379 () Bool)

(assert (=> b!1228735 m!1133379))

(check-sat (not b!1228739) (not b!1228735) (not b!1228745) (not b!1228737) (not b!1228743) (not start!102114) (not b!1228741) (not b!1228746) (not b!1228742) (not b!1228738) (not b!1228740) (not b!1228736))
(check-sat)
(get-model)

(declare-fun d!134301 () Bool)

(declare-fun lt!559004 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!561 (List!27208) (InoxSet (_ BitVec 64)))

(assert (=> d!134301 (= lt!559004 (select (content!561 lt!558994) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697497 () Bool)

(assert (=> d!134301 (= lt!559004 e!697497)))

(declare-fun res!817450 () Bool)

(assert (=> d!134301 (=> (not res!817450) (not e!697497))))

(get-info :version)

(assert (=> d!134301 (= res!817450 ((_ is Cons!27204) lt!558994))))

(assert (=> d!134301 (= (contains!7123 lt!558994 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559004)))

(declare-fun b!1228787 () Bool)

(declare-fun e!697498 () Bool)

(assert (=> b!1228787 (= e!697497 e!697498)))

(declare-fun res!817451 () Bool)

(assert (=> b!1228787 (=> res!817451 e!697498)))

(assert (=> b!1228787 (= res!817451 (= (h!28413 lt!558994) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228788 () Bool)

(assert (=> b!1228788 (= e!697498 (contains!7123 (t!40678 lt!558994) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134301 res!817450) b!1228787))

(assert (= (and b!1228787 (not res!817451)) b!1228788))

(declare-fun m!1133411 () Bool)

(assert (=> d!134301 m!1133411))

(declare-fun m!1133413 () Bool)

(assert (=> d!134301 m!1133413))

(declare-fun m!1133415 () Bool)

(assert (=> b!1228788 m!1133415))

(assert (=> b!1228743 d!134301))

(declare-fun d!134303 () Bool)

(declare-fun res!817456 () Bool)

(declare-fun e!697503 () Bool)

(assert (=> d!134303 (=> res!817456 e!697503)))

(assert (=> d!134303 (= res!817456 (= (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k0!2913))))

(assert (=> d!134303 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!697503)))

(declare-fun b!1228793 () Bool)

(declare-fun e!697504 () Bool)

(assert (=> b!1228793 (= e!697503 e!697504)))

(declare-fun res!817457 () Bool)

(assert (=> b!1228793 (=> (not res!817457) (not e!697504))))

(assert (=> b!1228793 (= res!817457 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38794 a!3806)))))

(declare-fun b!1228794 () Bool)

(assert (=> b!1228794 (= e!697504 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134303 (not res!817456)) b!1228793))

(assert (= (and b!1228793 res!817457) b!1228794))

(declare-fun m!1133417 () Bool)

(assert (=> d!134303 m!1133417))

(declare-fun m!1133419 () Bool)

(assert (=> b!1228794 m!1133419))

(assert (=> b!1228741 d!134303))

(declare-fun d!134305 () Bool)

(assert (=> d!134305 (= (array_inv!29033 a!3806) (bvsge (size!38794 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102114 d!134305))

(declare-fun d!134307 () Bool)

(declare-fun res!817462 () Bool)

(declare-fun e!697509 () Bool)

(assert (=> d!134307 (=> res!817462 e!697509)))

(assert (=> d!134307 (= res!817462 ((_ is Nil!27205) acc!823))))

(assert (=> d!134307 (= (noDuplicate!1730 acc!823) e!697509)))

(declare-fun b!1228799 () Bool)

(declare-fun e!697510 () Bool)

(assert (=> b!1228799 (= e!697509 e!697510)))

(declare-fun res!817463 () Bool)

(assert (=> b!1228799 (=> (not res!817463) (not e!697510))))

(assert (=> b!1228799 (= res!817463 (not (contains!7123 (t!40678 acc!823) (h!28413 acc!823))))))

(declare-fun b!1228800 () Bool)

(assert (=> b!1228800 (= e!697510 (noDuplicate!1730 (t!40678 acc!823)))))

(assert (= (and d!134307 (not res!817462)) b!1228799))

(assert (= (and b!1228799 res!817463) b!1228800))

(declare-fun m!1133421 () Bool)

(assert (=> b!1228799 m!1133421))

(declare-fun m!1133423 () Bool)

(assert (=> b!1228800 m!1133423))

(assert (=> b!1228742 d!134307))

(declare-fun b!1228839 () Bool)

(declare-fun e!697549 () Bool)

(declare-fun call!60833 () Bool)

(assert (=> b!1228839 (= e!697549 call!60833)))

(declare-fun b!1228840 () Bool)

(declare-fun e!697548 () Bool)

(declare-fun e!697547 () Bool)

(assert (=> b!1228840 (= e!697548 e!697547)))

(declare-fun res!817499 () Bool)

(assert (=> b!1228840 (=> (not res!817499) (not e!697547))))

(declare-fun e!697550 () Bool)

(assert (=> b!1228840 (= res!817499 (not e!697550))))

(declare-fun res!817500 () Bool)

(assert (=> b!1228840 (=> (not res!817500) (not e!697550))))

(assert (=> b!1228840 (= res!817500 (validKeyInArray!0 (select (arr!38257 a!3806) from!3184)))))

(declare-fun b!1228841 () Bool)

(assert (=> b!1228841 (= e!697549 call!60833)))

(declare-fun d!134313 () Bool)

(declare-fun res!817498 () Bool)

(assert (=> d!134313 (=> res!817498 e!697548)))

(assert (=> d!134313 (= res!817498 (bvsge from!3184 (size!38794 a!3806)))))

(assert (=> d!134313 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!697548)))

(declare-fun b!1228842 () Bool)

(assert (=> b!1228842 (= e!697550 (contains!7123 acc!823 (select (arr!38257 a!3806) from!3184)))))

(declare-fun b!1228843 () Bool)

(assert (=> b!1228843 (= e!697547 e!697549)))

(declare-fun c!120533 () Bool)

(assert (=> b!1228843 (= c!120533 (validKeyInArray!0 (select (arr!38257 a!3806) from!3184)))))

(declare-fun bm!60830 () Bool)

(assert (=> bm!60830 (= call!60833 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120533 (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823) acc!823)))))

(assert (= (and d!134313 (not res!817498)) b!1228840))

(assert (= (and b!1228840 res!817500) b!1228842))

(assert (= (and b!1228840 res!817499) b!1228843))

(assert (= (and b!1228843 c!120533) b!1228839))

(assert (= (and b!1228843 (not c!120533)) b!1228841))

(assert (= (or b!1228839 b!1228841) bm!60830))

(assert (=> b!1228840 m!1133365))

(assert (=> b!1228840 m!1133365))

(assert (=> b!1228840 m!1133377))

(assert (=> b!1228842 m!1133365))

(assert (=> b!1228842 m!1133365))

(declare-fun m!1133455 () Bool)

(assert (=> b!1228842 m!1133455))

(assert (=> b!1228843 m!1133365))

(assert (=> b!1228843 m!1133365))

(assert (=> b!1228843 m!1133377))

(assert (=> bm!60830 m!1133365))

(declare-fun m!1133457 () Bool)

(assert (=> bm!60830 m!1133457))

(assert (=> b!1228745 d!134313))

(declare-fun d!134327 () Bool)

(assert (=> d!134327 (= (validKeyInArray!0 k0!2913) (and (not (= k0!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228735 d!134327))

(declare-fun d!134333 () Bool)

(declare-fun res!817511 () Bool)

(declare-fun e!697561 () Bool)

(assert (=> d!134333 (=> res!817511 e!697561)))

(assert (=> d!134333 (= res!817511 ((_ is Nil!27205) lt!558994))))

(assert (=> d!134333 (= (noDuplicate!1730 lt!558994) e!697561)))

(declare-fun b!1228854 () Bool)

(declare-fun e!697562 () Bool)

(assert (=> b!1228854 (= e!697561 e!697562)))

(declare-fun res!817512 () Bool)

(assert (=> b!1228854 (=> (not res!817512) (not e!697562))))

(assert (=> b!1228854 (= res!817512 (not (contains!7123 (t!40678 lt!558994) (h!28413 lt!558994))))))

(declare-fun b!1228855 () Bool)

(assert (=> b!1228855 (= e!697562 (noDuplicate!1730 (t!40678 lt!558994)))))

(assert (= (and d!134333 (not res!817511)) b!1228854))

(assert (= (and b!1228854 res!817512) b!1228855))

(declare-fun m!1133467 () Bool)

(assert (=> b!1228854 m!1133467))

(declare-fun m!1133469 () Bool)

(assert (=> b!1228855 m!1133469))

(assert (=> b!1228746 d!134333))

(declare-fun d!134337 () Bool)

(assert (=> d!134337 (= (validKeyInArray!0 (select (arr!38257 a!3806) from!3184)) (and (not (= (select (arr!38257 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38257 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228737 d!134337))

(declare-fun d!134339 () Bool)

(declare-fun lt!559015 () Bool)

(assert (=> d!134339 (= lt!559015 (select (content!561 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697565 () Bool)

(assert (=> d!134339 (= lt!559015 e!697565)))

(declare-fun res!817513 () Bool)

(assert (=> d!134339 (=> (not res!817513) (not e!697565))))

(assert (=> d!134339 (= res!817513 ((_ is Cons!27204) acc!823))))

(assert (=> d!134339 (= (contains!7123 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559015)))

(declare-fun b!1228860 () Bool)

(declare-fun e!697566 () Bool)

(assert (=> b!1228860 (= e!697565 e!697566)))

(declare-fun res!817514 () Bool)

(assert (=> b!1228860 (=> res!817514 e!697566)))

(assert (=> b!1228860 (= res!817514 (= (h!28413 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228861 () Bool)

(assert (=> b!1228861 (= e!697566 (contains!7123 (t!40678 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134339 res!817513) b!1228860))

(assert (= (and b!1228860 (not res!817514)) b!1228861))

(declare-fun m!1133471 () Bool)

(assert (=> d!134339 m!1133471))

(declare-fun m!1133473 () Bool)

(assert (=> d!134339 m!1133473))

(declare-fun m!1133475 () Bool)

(assert (=> b!1228861 m!1133475))

(assert (=> b!1228738 d!134339))

(declare-fun d!134341 () Bool)

(declare-fun lt!559016 () Bool)

(assert (=> d!134341 (= lt!559016 (select (content!561 lt!558994) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697567 () Bool)

(assert (=> d!134341 (= lt!559016 e!697567)))

(declare-fun res!817515 () Bool)

(assert (=> d!134341 (=> (not res!817515) (not e!697567))))

(assert (=> d!134341 (= res!817515 ((_ is Cons!27204) lt!558994))))

(assert (=> d!134341 (= (contains!7123 lt!558994 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559016)))

(declare-fun b!1228862 () Bool)

(declare-fun e!697568 () Bool)

(assert (=> b!1228862 (= e!697567 e!697568)))

(declare-fun res!817516 () Bool)

(assert (=> b!1228862 (=> res!817516 e!697568)))

(assert (=> b!1228862 (= res!817516 (= (h!28413 lt!558994) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228863 () Bool)

(assert (=> b!1228863 (= e!697568 (contains!7123 (t!40678 lt!558994) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134341 res!817515) b!1228862))

(assert (= (and b!1228862 (not res!817516)) b!1228863))

(assert (=> d!134341 m!1133411))

(declare-fun m!1133477 () Bool)

(assert (=> d!134341 m!1133477))

(declare-fun m!1133479 () Bool)

(assert (=> b!1228863 m!1133479))

(assert (=> b!1228736 d!134341))

(declare-fun d!134343 () Bool)

(declare-fun lt!559017 () Bool)

(assert (=> d!134343 (= lt!559017 (select (content!561 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697569 () Bool)

(assert (=> d!134343 (= lt!559017 e!697569)))

(declare-fun res!817517 () Bool)

(assert (=> d!134343 (=> (not res!817517) (not e!697569))))

(assert (=> d!134343 (= res!817517 ((_ is Cons!27204) acc!823))))

(assert (=> d!134343 (= (contains!7123 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559017)))

(declare-fun b!1228864 () Bool)

(declare-fun e!697570 () Bool)

(assert (=> b!1228864 (= e!697569 e!697570)))

(declare-fun res!817518 () Bool)

(assert (=> b!1228864 (=> res!817518 e!697570)))

(assert (=> b!1228864 (= res!817518 (= (h!28413 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228865 () Bool)

(assert (=> b!1228865 (= e!697570 (contains!7123 (t!40678 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134343 res!817517) b!1228864))

(assert (= (and b!1228864 (not res!817518)) b!1228865))

(assert (=> d!134343 m!1133471))

(declare-fun m!1133481 () Bool)

(assert (=> d!134343 m!1133481))

(declare-fun m!1133483 () Bool)

(assert (=> b!1228865 m!1133483))

(assert (=> b!1228740 d!134343))

(declare-fun b!1228866 () Bool)

(declare-fun e!697573 () Bool)

(declare-fun call!60836 () Bool)

(assert (=> b!1228866 (= e!697573 call!60836)))

(declare-fun b!1228867 () Bool)

(declare-fun e!697572 () Bool)

(declare-fun e!697571 () Bool)

(assert (=> b!1228867 (= e!697572 e!697571)))

(declare-fun res!817520 () Bool)

(assert (=> b!1228867 (=> (not res!817520) (not e!697571))))

(declare-fun e!697574 () Bool)

(assert (=> b!1228867 (= res!817520 (not e!697574))))

(declare-fun res!817521 () Bool)

(assert (=> b!1228867 (=> (not res!817521) (not e!697574))))

(assert (=> b!1228867 (= res!817521 (validKeyInArray!0 (select (arr!38257 a!3806) from!3184)))))

(declare-fun b!1228868 () Bool)

(assert (=> b!1228868 (= e!697573 call!60836)))

(declare-fun d!134345 () Bool)

(declare-fun res!817519 () Bool)

(assert (=> d!134345 (=> res!817519 e!697572)))

(assert (=> d!134345 (= res!817519 (bvsge from!3184 (size!38794 a!3806)))))

(assert (=> d!134345 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27205) e!697572)))

(declare-fun b!1228869 () Bool)

(assert (=> b!1228869 (= e!697574 (contains!7123 Nil!27205 (select (arr!38257 a!3806) from!3184)))))

(declare-fun b!1228870 () Bool)

(assert (=> b!1228870 (= e!697571 e!697573)))

(declare-fun c!120536 () Bool)

(assert (=> b!1228870 (= c!120536 (validKeyInArray!0 (select (arr!38257 a!3806) from!3184)))))

(declare-fun bm!60833 () Bool)

(assert (=> bm!60833 (= call!60836 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120536 (Cons!27204 (select (arr!38257 a!3806) from!3184) Nil!27205) Nil!27205)))))

(assert (= (and d!134345 (not res!817519)) b!1228867))

(assert (= (and b!1228867 res!817521) b!1228869))

(assert (= (and b!1228867 res!817520) b!1228870))

(assert (= (and b!1228870 c!120536) b!1228866))

(assert (= (and b!1228870 (not c!120536)) b!1228868))

(assert (= (or b!1228866 b!1228868) bm!60833))

(assert (=> b!1228867 m!1133365))

(assert (=> b!1228867 m!1133365))

(assert (=> b!1228867 m!1133377))

(assert (=> b!1228869 m!1133365))

(assert (=> b!1228869 m!1133365))

(declare-fun m!1133485 () Bool)

(assert (=> b!1228869 m!1133485))

(assert (=> b!1228870 m!1133365))

(assert (=> b!1228870 m!1133365))

(assert (=> b!1228870 m!1133377))

(assert (=> bm!60833 m!1133365))

(declare-fun m!1133487 () Bool)

(assert (=> bm!60833 m!1133487))

(assert (=> b!1228739 d!134345))

(declare-fun d!134347 () Bool)

(assert (=> d!134347 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27205)))

(declare-fun lt!559020 () Unit!40654)

(declare-fun choose!80 (array!79279 List!27208 List!27208 (_ BitVec 32)) Unit!40654)

(assert (=> d!134347 (= lt!559020 (choose!80 a!3806 acc!823 Nil!27205 from!3184))))

(assert (=> d!134347 (bvslt (size!38794 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!134347 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27205 from!3184) lt!559020)))

(declare-fun bs!34536 () Bool)

(assert (= bs!34536 d!134347))

(assert (=> bs!34536 m!1133367))

(declare-fun m!1133493 () Bool)

(assert (=> bs!34536 m!1133493))

(assert (=> b!1228739 d!134347))

(declare-fun b!1228890 () Bool)

(declare-fun e!697593 () Bool)

(declare-fun call!60840 () Bool)

(assert (=> b!1228890 (= e!697593 call!60840)))

(declare-fun b!1228891 () Bool)

(declare-fun e!697592 () Bool)

(declare-fun e!697591 () Bool)

(assert (=> b!1228891 (= e!697592 e!697591)))

(declare-fun res!817536 () Bool)

(assert (=> b!1228891 (=> (not res!817536) (not e!697591))))

(declare-fun e!697594 () Bool)

(assert (=> b!1228891 (= res!817536 (not e!697594))))

(declare-fun res!817537 () Bool)

(assert (=> b!1228891 (=> (not res!817537) (not e!697594))))

(assert (=> b!1228891 (= res!817537 (validKeyInArray!0 (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228892 () Bool)

(assert (=> b!1228892 (= e!697593 call!60840)))

(declare-fun d!134351 () Bool)

(declare-fun res!817535 () Bool)

(assert (=> d!134351 (=> res!817535 e!697592)))

(assert (=> d!134351 (= res!817535 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38794 a!3806)))))

(assert (=> d!134351 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)) e!697592)))

(declare-fun b!1228893 () Bool)

(assert (=> b!1228893 (= e!697594 (contains!7123 (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823) (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228894 () Bool)

(assert (=> b!1228894 (= e!697591 e!697593)))

(declare-fun c!120540 () Bool)

(assert (=> b!1228894 (= c!120540 (validKeyInArray!0 (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun bm!60837 () Bool)

(assert (=> bm!60837 (= call!60840 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120540 (Cons!27204 (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823))))))

(assert (= (and d!134351 (not res!817535)) b!1228891))

(assert (= (and b!1228891 res!817537) b!1228893))

(assert (= (and b!1228891 res!817536) b!1228894))

(assert (= (and b!1228894 c!120540) b!1228890))

(assert (= (and b!1228894 (not c!120540)) b!1228892))

(assert (= (or b!1228890 b!1228892) bm!60837))

(assert (=> b!1228891 m!1133417))

(assert (=> b!1228891 m!1133417))

(declare-fun m!1133495 () Bool)

(assert (=> b!1228891 m!1133495))

(assert (=> b!1228893 m!1133417))

(assert (=> b!1228893 m!1133417))

(declare-fun m!1133497 () Bool)

(assert (=> b!1228893 m!1133497))

(assert (=> b!1228894 m!1133417))

(assert (=> b!1228894 m!1133417))

(assert (=> b!1228894 m!1133495))

(assert (=> bm!60837 m!1133417))

(declare-fun m!1133499 () Bool)

(assert (=> bm!60837 m!1133499))

(assert (=> b!1228739 d!134351))

(check-sat (not d!134339) (not b!1228891) (not b!1228843) (not b!1228840) (not d!134343) (not b!1228788) (not d!134347) (not b!1228800) (not d!134341) (not b!1228863) (not bm!60830) (not b!1228794) (not bm!60837) (not b!1228867) (not b!1228870) (not d!134301) (not b!1228799) (not bm!60833) (not b!1228855) (not b!1228869) (not b!1228854) (not b!1228842) (not b!1228893) (not b!1228861) (not b!1228894) (not b!1228865))
(check-sat)
(get-model)

(assert (=> b!1228870 d!134337))

(assert (=> b!1228840 d!134337))

(declare-fun lt!559029 () Bool)

(declare-fun d!134385 () Bool)

(assert (=> d!134385 (= lt!559029 (select (content!561 (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)) (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun e!697631 () Bool)

(assert (=> d!134385 (= lt!559029 e!697631)))

(declare-fun res!817569 () Bool)

(assert (=> d!134385 (=> (not res!817569) (not e!697631))))

(assert (=> d!134385 (= res!817569 ((_ is Cons!27204) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)))))

(assert (=> d!134385 (= (contains!7123 (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823) (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) lt!559029)))

(declare-fun b!1228936 () Bool)

(declare-fun e!697632 () Bool)

(assert (=> b!1228936 (= e!697631 e!697632)))

(declare-fun res!817570 () Bool)

(assert (=> b!1228936 (=> res!817570 e!697632)))

(assert (=> b!1228936 (= res!817570 (= (h!28413 (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)) (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228937 () Bool)

(assert (=> b!1228937 (= e!697632 (contains!7123 (t!40678 (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)) (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134385 res!817569) b!1228936))

(assert (= (and b!1228936 (not res!817570)) b!1228937))

(declare-fun m!1133555 () Bool)

(assert (=> d!134385 m!1133555))

(assert (=> d!134385 m!1133417))

(declare-fun m!1133557 () Bool)

(assert (=> d!134385 m!1133557))

(assert (=> b!1228937 m!1133417))

(declare-fun m!1133559 () Bool)

(assert (=> b!1228937 m!1133559))

(assert (=> b!1228893 d!134385))

(declare-fun d!134387 () Bool)

(assert (=> d!134387 (= (validKeyInArray!0 (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) (and (not (= (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228891 d!134387))

(declare-fun d!134389 () Bool)

(declare-fun lt!559030 () Bool)

(assert (=> d!134389 (= lt!559030 (select (content!561 Nil!27205) (select (arr!38257 a!3806) from!3184)))))

(declare-fun e!697633 () Bool)

(assert (=> d!134389 (= lt!559030 e!697633)))

(declare-fun res!817571 () Bool)

(assert (=> d!134389 (=> (not res!817571) (not e!697633))))

(assert (=> d!134389 (= res!817571 ((_ is Cons!27204) Nil!27205))))

(assert (=> d!134389 (= (contains!7123 Nil!27205 (select (arr!38257 a!3806) from!3184)) lt!559030)))

(declare-fun b!1228938 () Bool)

(declare-fun e!697634 () Bool)

(assert (=> b!1228938 (= e!697633 e!697634)))

(declare-fun res!817572 () Bool)

(assert (=> b!1228938 (=> res!817572 e!697634)))

(assert (=> b!1228938 (= res!817572 (= (h!28413 Nil!27205) (select (arr!38257 a!3806) from!3184)))))

(declare-fun b!1228939 () Bool)

(assert (=> b!1228939 (= e!697634 (contains!7123 (t!40678 Nil!27205) (select (arr!38257 a!3806) from!3184)))))

(assert (= (and d!134389 res!817571) b!1228938))

(assert (= (and b!1228938 (not res!817572)) b!1228939))

(declare-fun m!1133561 () Bool)

(assert (=> d!134389 m!1133561))

(assert (=> d!134389 m!1133365))

(declare-fun m!1133563 () Bool)

(assert (=> d!134389 m!1133563))

(assert (=> b!1228939 m!1133365))

(declare-fun m!1133565 () Bool)

(assert (=> b!1228939 m!1133565))

(assert (=> b!1228869 d!134389))

(declare-fun lt!559031 () Bool)

(declare-fun d!134391 () Bool)

(assert (=> d!134391 (= lt!559031 (select (content!561 acc!823) (select (arr!38257 a!3806) from!3184)))))

(declare-fun e!697635 () Bool)

(assert (=> d!134391 (= lt!559031 e!697635)))

(declare-fun res!817573 () Bool)

(assert (=> d!134391 (=> (not res!817573) (not e!697635))))

(assert (=> d!134391 (= res!817573 ((_ is Cons!27204) acc!823))))

(assert (=> d!134391 (= (contains!7123 acc!823 (select (arr!38257 a!3806) from!3184)) lt!559031)))

(declare-fun b!1228940 () Bool)

(declare-fun e!697636 () Bool)

(assert (=> b!1228940 (= e!697635 e!697636)))

(declare-fun res!817574 () Bool)

(assert (=> b!1228940 (=> res!817574 e!697636)))

(assert (=> b!1228940 (= res!817574 (= (h!28413 acc!823) (select (arr!38257 a!3806) from!3184)))))

(declare-fun b!1228941 () Bool)

(assert (=> b!1228941 (= e!697636 (contains!7123 (t!40678 acc!823) (select (arr!38257 a!3806) from!3184)))))

(assert (= (and d!134391 res!817573) b!1228940))

(assert (= (and b!1228940 (not res!817574)) b!1228941))

(assert (=> d!134391 m!1133471))

(assert (=> d!134391 m!1133365))

(declare-fun m!1133567 () Bool)

(assert (=> d!134391 m!1133567))

(assert (=> b!1228941 m!1133365))

(declare-fun m!1133569 () Bool)

(assert (=> b!1228941 m!1133569))

(assert (=> b!1228842 d!134391))

(declare-fun b!1228942 () Bool)

(declare-fun e!697639 () Bool)

(declare-fun call!60846 () Bool)

(assert (=> b!1228942 (= e!697639 call!60846)))

(declare-fun b!1228943 () Bool)

(declare-fun e!697638 () Bool)

(declare-fun e!697637 () Bool)

(assert (=> b!1228943 (= e!697638 e!697637)))

(declare-fun res!817576 () Bool)

(assert (=> b!1228943 (=> (not res!817576) (not e!697637))))

(declare-fun e!697640 () Bool)

(assert (=> b!1228943 (= res!817576 (not e!697640))))

(declare-fun res!817577 () Bool)

(assert (=> b!1228943 (=> (not res!817577) (not e!697640))))

(assert (=> b!1228943 (= res!817577 (validKeyInArray!0 (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228944 () Bool)

(assert (=> b!1228944 (= e!697639 call!60846)))

(declare-fun d!134393 () Bool)

(declare-fun res!817575 () Bool)

(assert (=> d!134393 (=> res!817575 e!697638)))

(assert (=> d!134393 (= res!817575 (bvsge (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38794 a!3806)))))

(assert (=> d!134393 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120540 (Cons!27204 (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823))) e!697638)))

(declare-fun b!1228945 () Bool)

(assert (=> b!1228945 (= e!697640 (contains!7123 (ite c!120540 (Cons!27204 (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)) (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228946 () Bool)

(assert (=> b!1228946 (= e!697637 e!697639)))

(declare-fun c!120546 () Bool)

(assert (=> b!1228946 (= c!120546 (validKeyInArray!0 (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun bm!60843 () Bool)

(assert (=> bm!60843 (= call!60846 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120546 (Cons!27204 (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) (ite c!120540 (Cons!27204 (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823))) (ite c!120540 (Cons!27204 (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)) (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823)))))))

(assert (= (and d!134393 (not res!817575)) b!1228943))

(assert (= (and b!1228943 res!817577) b!1228945))

(assert (= (and b!1228943 res!817576) b!1228946))

(assert (= (and b!1228946 c!120546) b!1228942))

(assert (= (and b!1228946 (not c!120546)) b!1228944))

(assert (= (or b!1228942 b!1228944) bm!60843))

(declare-fun m!1133571 () Bool)

(assert (=> b!1228943 m!1133571))

(assert (=> b!1228943 m!1133571))

(declare-fun m!1133573 () Bool)

(assert (=> b!1228943 m!1133573))

(assert (=> b!1228945 m!1133571))

(assert (=> b!1228945 m!1133571))

(declare-fun m!1133575 () Bool)

(assert (=> b!1228945 m!1133575))

(assert (=> b!1228946 m!1133571))

(assert (=> b!1228946 m!1133571))

(assert (=> b!1228946 m!1133573))

(assert (=> bm!60843 m!1133571))

(declare-fun m!1133577 () Bool)

(assert (=> bm!60843 m!1133577))

(assert (=> bm!60837 d!134393))

(declare-fun d!134395 () Bool)

(declare-fun c!120549 () Bool)

(assert (=> d!134395 (= c!120549 ((_ is Nil!27205) lt!558994))))

(declare-fun e!697643 () (InoxSet (_ BitVec 64)))

(assert (=> d!134395 (= (content!561 lt!558994) e!697643)))

(declare-fun b!1228951 () Bool)

(assert (=> b!1228951 (= e!697643 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1228952 () Bool)

(assert (=> b!1228952 (= e!697643 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!28413 lt!558994) true) (content!561 (t!40678 lt!558994))))))

(assert (= (and d!134395 c!120549) b!1228951))

(assert (= (and d!134395 (not c!120549)) b!1228952))

(declare-fun m!1133579 () Bool)

(assert (=> b!1228952 m!1133579))

(declare-fun m!1133581 () Bool)

(assert (=> b!1228952 m!1133581))

(assert (=> d!134341 d!134395))

(assert (=> b!1228843 d!134337))

(declare-fun d!134397 () Bool)

(declare-fun lt!559032 () Bool)

(assert (=> d!134397 (= lt!559032 (select (content!561 (t!40678 lt!558994)) (h!28413 lt!558994)))))

(declare-fun e!697644 () Bool)

(assert (=> d!134397 (= lt!559032 e!697644)))

(declare-fun res!817578 () Bool)

(assert (=> d!134397 (=> (not res!817578) (not e!697644))))

(assert (=> d!134397 (= res!817578 ((_ is Cons!27204) (t!40678 lt!558994)))))

(assert (=> d!134397 (= (contains!7123 (t!40678 lt!558994) (h!28413 lt!558994)) lt!559032)))

(declare-fun b!1228953 () Bool)

(declare-fun e!697645 () Bool)

(assert (=> b!1228953 (= e!697644 e!697645)))

(declare-fun res!817579 () Bool)

(assert (=> b!1228953 (=> res!817579 e!697645)))

(assert (=> b!1228953 (= res!817579 (= (h!28413 (t!40678 lt!558994)) (h!28413 lt!558994)))))

(declare-fun b!1228954 () Bool)

(assert (=> b!1228954 (= e!697645 (contains!7123 (t!40678 (t!40678 lt!558994)) (h!28413 lt!558994)))))

(assert (= (and d!134397 res!817578) b!1228953))

(assert (= (and b!1228953 (not res!817579)) b!1228954))

(assert (=> d!134397 m!1133581))

(declare-fun m!1133583 () Bool)

(assert (=> d!134397 m!1133583))

(declare-fun m!1133585 () Bool)

(assert (=> b!1228954 m!1133585))

(assert (=> b!1228854 d!134397))

(declare-fun b!1228955 () Bool)

(declare-fun e!697648 () Bool)

(declare-fun call!60847 () Bool)

(assert (=> b!1228955 (= e!697648 call!60847)))

(declare-fun b!1228956 () Bool)

(declare-fun e!697647 () Bool)

(declare-fun e!697646 () Bool)

(assert (=> b!1228956 (= e!697647 e!697646)))

(declare-fun res!817581 () Bool)

(assert (=> b!1228956 (=> (not res!817581) (not e!697646))))

(declare-fun e!697649 () Bool)

(assert (=> b!1228956 (= res!817581 (not e!697649))))

(declare-fun res!817582 () Bool)

(assert (=> b!1228956 (=> (not res!817582) (not e!697649))))

(assert (=> b!1228956 (= res!817582 (validKeyInArray!0 (select (arr!38257 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228957 () Bool)

(assert (=> b!1228957 (= e!697648 call!60847)))

(declare-fun d!134399 () Bool)

(declare-fun res!817580 () Bool)

(assert (=> d!134399 (=> res!817580 e!697647)))

(assert (=> d!134399 (= res!817580 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38794 a!3806)))))

(assert (=> d!134399 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120536 (Cons!27204 (select (arr!38257 a!3806) from!3184) Nil!27205) Nil!27205)) e!697647)))

(declare-fun b!1228958 () Bool)

(assert (=> b!1228958 (= e!697649 (contains!7123 (ite c!120536 (Cons!27204 (select (arr!38257 a!3806) from!3184) Nil!27205) Nil!27205) (select (arr!38257 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228959 () Bool)

(assert (=> b!1228959 (= e!697646 e!697648)))

(declare-fun c!120550 () Bool)

(assert (=> b!1228959 (= c!120550 (validKeyInArray!0 (select (arr!38257 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun bm!60844 () Bool)

(assert (=> bm!60844 (= call!60847 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120550 (Cons!27204 (select (arr!38257 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120536 (Cons!27204 (select (arr!38257 a!3806) from!3184) Nil!27205) Nil!27205)) (ite c!120536 (Cons!27204 (select (arr!38257 a!3806) from!3184) Nil!27205) Nil!27205))))))

(assert (= (and d!134399 (not res!817580)) b!1228956))

(assert (= (and b!1228956 res!817582) b!1228958))

(assert (= (and b!1228956 res!817581) b!1228959))

(assert (= (and b!1228959 c!120550) b!1228955))

(assert (= (and b!1228959 (not c!120550)) b!1228957))

(assert (= (or b!1228955 b!1228957) bm!60844))

(declare-fun m!1133587 () Bool)

(assert (=> b!1228956 m!1133587))

(assert (=> b!1228956 m!1133587))

(declare-fun m!1133589 () Bool)

(assert (=> b!1228956 m!1133589))

(assert (=> b!1228958 m!1133587))

(assert (=> b!1228958 m!1133587))

(declare-fun m!1133591 () Bool)

(assert (=> b!1228958 m!1133591))

(assert (=> b!1228959 m!1133587))

(assert (=> b!1228959 m!1133587))

(assert (=> b!1228959 m!1133589))

(assert (=> bm!60844 m!1133587))

(declare-fun m!1133593 () Bool)

(assert (=> bm!60844 m!1133593))

(assert (=> bm!60833 d!134399))

(declare-fun d!134401 () Bool)

(declare-fun lt!559033 () Bool)

(assert (=> d!134401 (= lt!559033 (select (content!561 (t!40678 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697650 () Bool)

(assert (=> d!134401 (= lt!559033 e!697650)))

(declare-fun res!817583 () Bool)

(assert (=> d!134401 (=> (not res!817583) (not e!697650))))

(assert (=> d!134401 (= res!817583 ((_ is Cons!27204) (t!40678 acc!823)))))

(assert (=> d!134401 (= (contains!7123 (t!40678 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000) lt!559033)))

(declare-fun b!1228960 () Bool)

(declare-fun e!697651 () Bool)

(assert (=> b!1228960 (= e!697650 e!697651)))

(declare-fun res!817584 () Bool)

(assert (=> b!1228960 (=> res!817584 e!697651)))

(assert (=> b!1228960 (= res!817584 (= (h!28413 (t!40678 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228961 () Bool)

(assert (=> b!1228961 (= e!697651 (contains!7123 (t!40678 (t!40678 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134401 res!817583) b!1228960))

(assert (= (and b!1228960 (not res!817584)) b!1228961))

(declare-fun m!1133595 () Bool)

(assert (=> d!134401 m!1133595))

(declare-fun m!1133597 () Bool)

(assert (=> d!134401 m!1133597))

(declare-fun m!1133599 () Bool)

(assert (=> b!1228961 m!1133599))

(assert (=> b!1228865 d!134401))

(assert (=> b!1228894 d!134387))

(assert (=> d!134301 d!134395))

(declare-fun b!1228962 () Bool)

(declare-fun e!697654 () Bool)

(declare-fun call!60848 () Bool)

(assert (=> b!1228962 (= e!697654 call!60848)))

(declare-fun b!1228963 () Bool)

(declare-fun e!697653 () Bool)

(declare-fun e!697652 () Bool)

(assert (=> b!1228963 (= e!697653 e!697652)))

(declare-fun res!817586 () Bool)

(assert (=> b!1228963 (=> (not res!817586) (not e!697652))))

(declare-fun e!697655 () Bool)

(assert (=> b!1228963 (= res!817586 (not e!697655))))

(declare-fun res!817587 () Bool)

(assert (=> b!1228963 (=> (not res!817587) (not e!697655))))

(assert (=> b!1228963 (= res!817587 (validKeyInArray!0 (select (arr!38257 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228964 () Bool)

(assert (=> b!1228964 (= e!697654 call!60848)))

(declare-fun d!134403 () Bool)

(declare-fun res!817585 () Bool)

(assert (=> d!134403 (=> res!817585 e!697653)))

(assert (=> d!134403 (= res!817585 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38794 a!3806)))))

(assert (=> d!134403 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120533 (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823) acc!823)) e!697653)))

(declare-fun b!1228965 () Bool)

(assert (=> b!1228965 (= e!697655 (contains!7123 (ite c!120533 (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823) acc!823) (select (arr!38257 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228966 () Bool)

(assert (=> b!1228966 (= e!697652 e!697654)))

(declare-fun c!120551 () Bool)

(assert (=> b!1228966 (= c!120551 (validKeyInArray!0 (select (arr!38257 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun bm!60845 () Bool)

(assert (=> bm!60845 (= call!60848 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120551 (Cons!27204 (select (arr!38257 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120533 (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823) acc!823)) (ite c!120533 (Cons!27204 (select (arr!38257 a!3806) from!3184) acc!823) acc!823))))))

(assert (= (and d!134403 (not res!817585)) b!1228963))

(assert (= (and b!1228963 res!817587) b!1228965))

(assert (= (and b!1228963 res!817586) b!1228966))

(assert (= (and b!1228966 c!120551) b!1228962))

(assert (= (and b!1228966 (not c!120551)) b!1228964))

(assert (= (or b!1228962 b!1228964) bm!60845))

(assert (=> b!1228963 m!1133587))

(assert (=> b!1228963 m!1133587))

(assert (=> b!1228963 m!1133589))

(assert (=> b!1228965 m!1133587))

(assert (=> b!1228965 m!1133587))

(declare-fun m!1133601 () Bool)

(assert (=> b!1228965 m!1133601))

(assert (=> b!1228966 m!1133587))

(assert (=> b!1228966 m!1133587))

(assert (=> b!1228966 m!1133589))

(assert (=> bm!60845 m!1133587))

(declare-fun m!1133603 () Bool)

(assert (=> bm!60845 m!1133603))

(assert (=> bm!60830 d!134403))

(declare-fun d!134405 () Bool)

(declare-fun res!817588 () Bool)

(declare-fun e!697656 () Bool)

(assert (=> d!134405 (=> res!817588 e!697656)))

(assert (=> d!134405 (= res!817588 ((_ is Nil!27205) (t!40678 lt!558994)))))

(assert (=> d!134405 (= (noDuplicate!1730 (t!40678 lt!558994)) e!697656)))

(declare-fun b!1228967 () Bool)

(declare-fun e!697657 () Bool)

(assert (=> b!1228967 (= e!697656 e!697657)))

(declare-fun res!817589 () Bool)

(assert (=> b!1228967 (=> (not res!817589) (not e!697657))))

(assert (=> b!1228967 (= res!817589 (not (contains!7123 (t!40678 (t!40678 lt!558994)) (h!28413 (t!40678 lt!558994)))))))

(declare-fun b!1228968 () Bool)

(assert (=> b!1228968 (= e!697657 (noDuplicate!1730 (t!40678 (t!40678 lt!558994))))))

(assert (= (and d!134405 (not res!817588)) b!1228967))

(assert (= (and b!1228967 res!817589) b!1228968))

(declare-fun m!1133605 () Bool)

(assert (=> b!1228967 m!1133605))

(declare-fun m!1133607 () Bool)

(assert (=> b!1228968 m!1133607))

(assert (=> b!1228855 d!134405))

(declare-fun d!134407 () Bool)

(declare-fun lt!559034 () Bool)

(assert (=> d!134407 (= lt!559034 (select (content!561 (t!40678 lt!558994)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697658 () Bool)

(assert (=> d!134407 (= lt!559034 e!697658)))

(declare-fun res!817590 () Bool)

(assert (=> d!134407 (=> (not res!817590) (not e!697658))))

(assert (=> d!134407 (= res!817590 ((_ is Cons!27204) (t!40678 lt!558994)))))

(assert (=> d!134407 (= (contains!7123 (t!40678 lt!558994) #b0000000000000000000000000000000000000000000000000000000000000000) lt!559034)))

(declare-fun b!1228969 () Bool)

(declare-fun e!697659 () Bool)

(assert (=> b!1228969 (= e!697658 e!697659)))

(declare-fun res!817591 () Bool)

(assert (=> b!1228969 (=> res!817591 e!697659)))

(assert (=> b!1228969 (= res!817591 (= (h!28413 (t!40678 lt!558994)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228970 () Bool)

(assert (=> b!1228970 (= e!697659 (contains!7123 (t!40678 (t!40678 lt!558994)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134407 res!817590) b!1228969))

(assert (= (and b!1228969 (not res!817591)) b!1228970))

(assert (=> d!134407 m!1133581))

(declare-fun m!1133609 () Bool)

(assert (=> d!134407 m!1133609))

(declare-fun m!1133611 () Bool)

(assert (=> b!1228970 m!1133611))

(assert (=> b!1228788 d!134407))

(declare-fun d!134409 () Bool)

(declare-fun lt!559035 () Bool)

(assert (=> d!134409 (= lt!559035 (select (content!561 (t!40678 acc!823)) (h!28413 acc!823)))))

(declare-fun e!697660 () Bool)

(assert (=> d!134409 (= lt!559035 e!697660)))

(declare-fun res!817592 () Bool)

(assert (=> d!134409 (=> (not res!817592) (not e!697660))))

(assert (=> d!134409 (= res!817592 ((_ is Cons!27204) (t!40678 acc!823)))))

(assert (=> d!134409 (= (contains!7123 (t!40678 acc!823) (h!28413 acc!823)) lt!559035)))

(declare-fun b!1228971 () Bool)

(declare-fun e!697661 () Bool)

(assert (=> b!1228971 (= e!697660 e!697661)))

(declare-fun res!817593 () Bool)

(assert (=> b!1228971 (=> res!817593 e!697661)))

(assert (=> b!1228971 (= res!817593 (= (h!28413 (t!40678 acc!823)) (h!28413 acc!823)))))

(declare-fun b!1228972 () Bool)

(assert (=> b!1228972 (= e!697661 (contains!7123 (t!40678 (t!40678 acc!823)) (h!28413 acc!823)))))

(assert (= (and d!134409 res!817592) b!1228971))

(assert (= (and b!1228971 (not res!817593)) b!1228972))

(assert (=> d!134409 m!1133595))

(declare-fun m!1133613 () Bool)

(assert (=> d!134409 m!1133613))

(declare-fun m!1133615 () Bool)

(assert (=> b!1228972 m!1133615))

(assert (=> b!1228799 d!134409))

(declare-fun d!134411 () Bool)

(declare-fun res!817594 () Bool)

(declare-fun e!697662 () Bool)

(assert (=> d!134411 (=> res!817594 e!697662)))

(assert (=> d!134411 (= res!817594 ((_ is Nil!27205) (t!40678 acc!823)))))

(assert (=> d!134411 (= (noDuplicate!1730 (t!40678 acc!823)) e!697662)))

(declare-fun b!1228973 () Bool)

(declare-fun e!697663 () Bool)

(assert (=> b!1228973 (= e!697662 e!697663)))

(declare-fun res!817595 () Bool)

(assert (=> b!1228973 (=> (not res!817595) (not e!697663))))

(assert (=> b!1228973 (= res!817595 (not (contains!7123 (t!40678 (t!40678 acc!823)) (h!28413 (t!40678 acc!823)))))))

(declare-fun b!1228974 () Bool)

(assert (=> b!1228974 (= e!697663 (noDuplicate!1730 (t!40678 (t!40678 acc!823))))))

(assert (= (and d!134411 (not res!817594)) b!1228973))

(assert (= (and b!1228973 res!817595) b!1228974))

(declare-fun m!1133617 () Bool)

(assert (=> b!1228973 m!1133617))

(declare-fun m!1133619 () Bool)

(assert (=> b!1228974 m!1133619))

(assert (=> b!1228800 d!134411))

(declare-fun d!134413 () Bool)

(declare-fun c!120552 () Bool)

(assert (=> d!134413 (= c!120552 ((_ is Nil!27205) acc!823))))

(declare-fun e!697664 () (InoxSet (_ BitVec 64)))

(assert (=> d!134413 (= (content!561 acc!823) e!697664)))

(declare-fun b!1228975 () Bool)

(assert (=> b!1228975 (= e!697664 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1228976 () Bool)

(assert (=> b!1228976 (= e!697664 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!28413 acc!823) true) (content!561 (t!40678 acc!823))))))

(assert (= (and d!134413 c!120552) b!1228975))

(assert (= (and d!134413 (not c!120552)) b!1228976))

(declare-fun m!1133621 () Bool)

(assert (=> b!1228976 m!1133621))

(assert (=> b!1228976 m!1133595))

(assert (=> d!134339 d!134413))

(assert (=> d!134347 d!134345))

(declare-fun d!134415 () Bool)

(assert (=> d!134415 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27205)))

(assert (=> d!134415 true))

(declare-fun _$70!83 () Unit!40654)

(assert (=> d!134415 (= (choose!80 a!3806 acc!823 Nil!27205 from!3184) _$70!83)))

(declare-fun bs!34539 () Bool)

(assert (= bs!34539 d!134415))

(assert (=> bs!34539 m!1133367))

(assert (=> d!134347 d!134415))

(declare-fun d!134417 () Bool)

(declare-fun lt!559036 () Bool)

(assert (=> d!134417 (= lt!559036 (select (content!561 (t!40678 lt!558994)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697665 () Bool)

(assert (=> d!134417 (= lt!559036 e!697665)))

(declare-fun res!817596 () Bool)

(assert (=> d!134417 (=> (not res!817596) (not e!697665))))

(assert (=> d!134417 (= res!817596 ((_ is Cons!27204) (t!40678 lt!558994)))))

(assert (=> d!134417 (= (contains!7123 (t!40678 lt!558994) #b1000000000000000000000000000000000000000000000000000000000000000) lt!559036)))

(declare-fun b!1228977 () Bool)

(declare-fun e!697666 () Bool)

(assert (=> b!1228977 (= e!697665 e!697666)))

(declare-fun res!817597 () Bool)

(assert (=> b!1228977 (=> res!817597 e!697666)))

(assert (=> b!1228977 (= res!817597 (= (h!28413 (t!40678 lt!558994)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228978 () Bool)

(assert (=> b!1228978 (= e!697666 (contains!7123 (t!40678 (t!40678 lt!558994)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134417 res!817596) b!1228977))

(assert (= (and b!1228977 (not res!817597)) b!1228978))

(assert (=> d!134417 m!1133581))

(declare-fun m!1133623 () Bool)

(assert (=> d!134417 m!1133623))

(declare-fun m!1133625 () Bool)

(assert (=> b!1228978 m!1133625))

(assert (=> b!1228863 d!134417))

(assert (=> d!134343 d!134413))

(declare-fun d!134419 () Bool)

(declare-fun lt!559037 () Bool)

(assert (=> d!134419 (= lt!559037 (select (content!561 (t!40678 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697667 () Bool)

(assert (=> d!134419 (= lt!559037 e!697667)))

(declare-fun res!817598 () Bool)

(assert (=> d!134419 (=> (not res!817598) (not e!697667))))

(assert (=> d!134419 (= res!817598 ((_ is Cons!27204) (t!40678 acc!823)))))

(assert (=> d!134419 (= (contains!7123 (t!40678 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000) lt!559037)))

(declare-fun b!1228979 () Bool)

(declare-fun e!697668 () Bool)

(assert (=> b!1228979 (= e!697667 e!697668)))

(declare-fun res!817599 () Bool)

(assert (=> b!1228979 (=> res!817599 e!697668)))

(assert (=> b!1228979 (= res!817599 (= (h!28413 (t!40678 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228980 () Bool)

(assert (=> b!1228980 (= e!697668 (contains!7123 (t!40678 (t!40678 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134419 res!817598) b!1228979))

(assert (= (and b!1228979 (not res!817599)) b!1228980))

(assert (=> d!134419 m!1133595))

(declare-fun m!1133627 () Bool)

(assert (=> d!134419 m!1133627))

(declare-fun m!1133629 () Bool)

(assert (=> b!1228980 m!1133629))

(assert (=> b!1228861 d!134419))

(assert (=> b!1228867 d!134337))

(declare-fun d!134421 () Bool)

(declare-fun res!817600 () Bool)

(declare-fun e!697669 () Bool)

(assert (=> d!134421 (=> res!817600 e!697669)))

(assert (=> d!134421 (= res!817600 (= (select (arr!38257 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) k0!2913))))

(assert (=> d!134421 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) e!697669)))

(declare-fun b!1228981 () Bool)

(declare-fun e!697670 () Bool)

(assert (=> b!1228981 (= e!697669 e!697670)))

(declare-fun res!817601 () Bool)

(assert (=> b!1228981 (=> (not res!817601) (not e!697670))))

(assert (=> b!1228981 (= res!817601 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!38794 a!3806)))))

(declare-fun b!1228982 () Bool)

(assert (=> b!1228982 (= e!697670 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!134421 (not res!817600)) b!1228981))

(assert (= (and b!1228981 res!817601) b!1228982))

(assert (=> d!134421 m!1133571))

(declare-fun m!1133631 () Bool)

(assert (=> b!1228982 m!1133631))

(assert (=> b!1228794 d!134421))

(check-sat (not d!134409) (not d!134397) (not b!1228970) (not b!1228961) (not b!1228978) (not bm!60843) (not d!134419) (not b!1228943) (not d!134385) (not b!1228952) (not bm!60845) (not b!1228946) (not b!1228956) (not d!134391) (not d!134417) (not b!1228968) (not b!1228945) (not b!1228965) (not b!1228959) (not d!134401) (not b!1228982) (not b!1228972) (not d!134415) (not b!1228974) (not d!134389) (not b!1228980) (not b!1228937) (not b!1228966) (not b!1228976) (not b!1228967) (not b!1228939) (not b!1228973) (not b!1228958) (not bm!60844) (not d!134407) (not b!1228963) (not b!1228954) (not b!1228941))
(check-sat)
