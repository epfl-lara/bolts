; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102112 () Bool)

(assert start!102112)

(declare-fun b!1228699 () Bool)

(declare-fun e!697465 () Bool)

(declare-fun e!697468 () Bool)

(assert (=> b!1228699 (= e!697465 e!697468)))

(declare-fun res!817364 () Bool)

(assert (=> b!1228699 (=> (not res!817364) (not e!697468))))

(declare-datatypes ((List!27207 0))(
  ( (Nil!27204) (Cons!27203 (h!28412 (_ BitVec 64)) (t!40677 List!27207)) )
))
(declare-fun lt!558989 () List!27207)

(declare-fun contains!7122 (List!27207 (_ BitVec 64)) Bool)

(assert (=> b!1228699 (= res!817364 (not (contains!7122 lt!558989 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228700 () Bool)

(declare-fun res!817365 () Bool)

(declare-fun e!697467 () Bool)

(assert (=> b!1228700 (=> (not res!817365) (not e!697467))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79277 0))(
  ( (array!79278 (arr!38256 (Array (_ BitVec 32) (_ BitVec 64))) (size!38793 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79277)

(assert (=> b!1228700 (= res!817365 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38793 a!3806)) (bvslt from!3184 (size!38793 a!3806))))))

(declare-fun b!1228701 () Bool)

(assert (=> b!1228701 (= e!697467 (not e!697465))))

(declare-fun res!817362 () Bool)

(assert (=> b!1228701 (=> res!817362 e!697465)))

(assert (=> b!1228701 (= res!817362 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1228701 (= lt!558989 (Cons!27203 (select (arr!38256 a!3806) from!3184) Nil!27204))))

(declare-fun arrayNoDuplicates!0 (array!79277 (_ BitVec 32) List!27207) Bool)

(assert (=> b!1228701 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27204)))

(declare-datatypes ((Unit!40652 0))(
  ( (Unit!40653) )
))
(declare-fun lt!558988 () Unit!40652)

(declare-fun acc!823 () List!27207)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79277 List!27207 List!27207 (_ BitVec 32)) Unit!40652)

(assert (=> b!1228701 (= lt!558988 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27204 from!3184))))

(assert (=> b!1228701 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823))))

(declare-fun b!1228702 () Bool)

(declare-fun res!817371 () Bool)

(assert (=> b!1228702 (=> (not res!817371) (not e!697467))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228702 (= res!817371 (validKeyInArray!0 k!2913))))

(declare-fun b!1228703 () Bool)

(declare-fun res!817363 () Bool)

(assert (=> b!1228703 (=> (not res!817363) (not e!697467))))

(declare-fun arrayContainsKey!0 (array!79277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228703 (= res!817363 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228704 () Bool)

(declare-fun res!817372 () Bool)

(assert (=> b!1228704 (=> (not res!817372) (not e!697467))))

(assert (=> b!1228704 (= res!817372 (not (contains!7122 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228705 () Bool)

(declare-fun res!817373 () Bool)

(assert (=> b!1228705 (=> (not res!817373) (not e!697467))))

(assert (=> b!1228705 (= res!817373 (not (contains!7122 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228706 () Bool)

(declare-fun res!817366 () Bool)

(assert (=> b!1228706 (=> (not res!817366) (not e!697467))))

(assert (=> b!1228706 (= res!817366 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228707 () Bool)

(declare-fun res!817368 () Bool)

(assert (=> b!1228707 (=> (not res!817368) (not e!697467))))

(declare-fun noDuplicate!1729 (List!27207) Bool)

(assert (=> b!1228707 (= res!817368 (noDuplicate!1729 acc!823))))

(declare-fun b!1228708 () Bool)

(declare-fun res!817369 () Bool)

(assert (=> b!1228708 (=> res!817369 e!697465)))

(assert (=> b!1228708 (= res!817369 (not (noDuplicate!1729 lt!558989)))))

(declare-fun res!817367 () Bool)

(assert (=> start!102112 (=> (not res!817367) (not e!697467))))

(assert (=> start!102112 (= res!817367 (bvslt (size!38793 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102112 e!697467))

(declare-fun array_inv!29032 (array!79277) Bool)

(assert (=> start!102112 (array_inv!29032 a!3806)))

(assert (=> start!102112 true))

(declare-fun b!1228709 () Bool)

(assert (=> b!1228709 (= e!697468 (not (contains!7122 lt!558989 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228710 () Bool)

(declare-fun res!817370 () Bool)

(assert (=> b!1228710 (=> (not res!817370) (not e!697467))))

(assert (=> b!1228710 (= res!817370 (validKeyInArray!0 (select (arr!38256 a!3806) from!3184)))))

(assert (= (and start!102112 res!817367) b!1228702))

(assert (= (and b!1228702 res!817371) b!1228700))

(assert (= (and b!1228700 res!817365) b!1228707))

(assert (= (and b!1228707 res!817368) b!1228704))

(assert (= (and b!1228704 res!817372) b!1228705))

(assert (= (and b!1228705 res!817373) b!1228703))

(assert (= (and b!1228703 res!817363) b!1228706))

(assert (= (and b!1228706 res!817366) b!1228710))

(assert (= (and b!1228710 res!817370) b!1228701))

(assert (= (and b!1228701 (not res!817362)) b!1228708))

(assert (= (and b!1228708 (not res!817369)) b!1228699))

(assert (= (and b!1228699 res!817364) b!1228709))

(declare-fun m!1133321 () Bool)

(assert (=> b!1228709 m!1133321))

(declare-fun m!1133323 () Bool)

(assert (=> b!1228704 m!1133323))

(declare-fun m!1133325 () Bool)

(assert (=> b!1228703 m!1133325))

(declare-fun m!1133327 () Bool)

(assert (=> start!102112 m!1133327))

(declare-fun m!1133329 () Bool)

(assert (=> b!1228707 m!1133329))

(declare-fun m!1133331 () Bool)

(assert (=> b!1228701 m!1133331))

(declare-fun m!1133333 () Bool)

(assert (=> b!1228701 m!1133333))

(declare-fun m!1133335 () Bool)

(assert (=> b!1228701 m!1133335))

(declare-fun m!1133337 () Bool)

(assert (=> b!1228701 m!1133337))

(declare-fun m!1133339 () Bool)

(assert (=> b!1228708 m!1133339))

(declare-fun m!1133341 () Bool)

(assert (=> b!1228699 m!1133341))

(declare-fun m!1133343 () Bool)

(assert (=> b!1228705 m!1133343))

(declare-fun m!1133345 () Bool)

(assert (=> b!1228706 m!1133345))

(assert (=> b!1228710 m!1133331))

(assert (=> b!1228710 m!1133331))

(declare-fun m!1133347 () Bool)

(assert (=> b!1228710 m!1133347))

(declare-fun m!1133349 () Bool)

(assert (=> b!1228702 m!1133349))

(push 1)

(assert (not b!1228703))

(assert (not b!1228701))

(assert (not b!1228706))

(assert (not start!102112))

(assert (not b!1228707))

(assert (not b!1228702))

(assert (not b!1228704))

(assert (not b!1228709))

(assert (not b!1228699))

(assert (not b!1228710))

(assert (not b!1228708))

(assert (not b!1228705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134309 () Bool)

(declare-fun lt!559007 () Bool)

(declare-fun content!562 (List!27207) (Set (_ BitVec 64)))

(assert (=> d!134309 (= lt!559007 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!562 acc!823)))))

(declare-fun e!697515 () Bool)

(assert (=> d!134309 (= lt!559007 e!697515)))

(declare-fun res!817468 () Bool)

(assert (=> d!134309 (=> (not res!817468) (not e!697515))))

(assert (=> d!134309 (= res!817468 (is-Cons!27203 acc!823))))

(assert (=> d!134309 (= (contains!7122 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559007)))

(declare-fun b!1228805 () Bool)

(declare-fun e!697516 () Bool)

(assert (=> b!1228805 (= e!697515 e!697516)))

(declare-fun res!817469 () Bool)

(assert (=> b!1228805 (=> res!817469 e!697516)))

(assert (=> b!1228805 (= res!817469 (= (h!28412 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228806 () Bool)

(assert (=> b!1228806 (= e!697516 (contains!7122 (t!40677 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134309 res!817468) b!1228805))

(assert (= (and b!1228805 (not res!817469)) b!1228806))

(declare-fun m!1133425 () Bool)

(assert (=> d!134309 m!1133425))

(declare-fun m!1133427 () Bool)

(assert (=> d!134309 m!1133427))

(declare-fun m!1133429 () Bool)

(assert (=> b!1228806 m!1133429))

(assert (=> b!1228704 d!134309))

(declare-fun d!134315 () Bool)

(declare-fun res!817490 () Bool)

(declare-fun e!697539 () Bool)

(assert (=> d!134315 (=> res!817490 e!697539)))

(assert (=> d!134315 (= res!817490 (= (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134315 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!697539)))

(declare-fun b!1228831 () Bool)

(declare-fun e!697540 () Bool)

(assert (=> b!1228831 (= e!697539 e!697540)))

(declare-fun res!817491 () Bool)

(assert (=> b!1228831 (=> (not res!817491) (not e!697540))))

(assert (=> b!1228831 (= res!817491 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38793 a!3806)))))

(declare-fun b!1228832 () Bool)

(assert (=> b!1228832 (= e!697540 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134315 (not res!817490)) b!1228831))

(assert (= (and b!1228831 res!817491) b!1228832))

(declare-fun m!1133447 () Bool)

(assert (=> d!134315 m!1133447))

(declare-fun m!1133449 () Bool)

(assert (=> b!1228832 m!1133449))

(assert (=> b!1228703 d!134315))

(declare-fun d!134323 () Bool)

(declare-fun res!817501 () Bool)

(declare-fun e!697551 () Bool)

(assert (=> d!134323 (=> res!817501 e!697551)))

(assert (=> d!134323 (= res!817501 (is-Nil!27204 acc!823))))

(assert (=> d!134323 (= (noDuplicate!1729 acc!823) e!697551)))

(declare-fun b!1228844 () Bool)

(declare-fun e!697552 () Bool)

(assert (=> b!1228844 (= e!697551 e!697552)))

(declare-fun res!817502 () Bool)

(assert (=> b!1228844 (=> (not res!817502) (not e!697552))))

(assert (=> b!1228844 (= res!817502 (not (contains!7122 (t!40677 acc!823) (h!28412 acc!823))))))

(declare-fun b!1228845 () Bool)

(assert (=> b!1228845 (= e!697552 (noDuplicate!1729 (t!40677 acc!823)))))

(assert (= (and d!134323 (not res!817501)) b!1228844))

(assert (= (and b!1228844 res!817502) b!1228845))

(declare-fun m!1133459 () Bool)

(assert (=> b!1228844 m!1133459))

(declare-fun m!1133461 () Bool)

(assert (=> b!1228845 m!1133461))

(assert (=> b!1228707 d!134323))

(declare-fun d!134329 () Bool)

(assert (=> d!134329 (= (array_inv!29032 a!3806) (bvsge (size!38793 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102112 d!134329))

(declare-fun d!134331 () Bool)

(declare-fun lt!559014 () Bool)

(assert (=> d!134331 (= lt!559014 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!562 acc!823)))))

(declare-fun e!697555 () Bool)

(assert (=> d!134331 (= lt!559014 e!697555)))

(declare-fun res!817505 () Bool)

(assert (=> d!134331 (=> (not res!817505) (not e!697555))))

(assert (=> d!134331 (= res!817505 (is-Cons!27203 acc!823))))

(assert (=> d!134331 (= (contains!7122 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559014)))

(declare-fun b!1228846 () Bool)

(declare-fun e!697556 () Bool)

(assert (=> b!1228846 (= e!697555 e!697556)))

(declare-fun res!817506 () Bool)

(assert (=> b!1228846 (=> res!817506 e!697556)))

(assert (=> b!1228846 (= res!817506 (= (h!28412 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228847 () Bool)

(assert (=> b!1228847 (= e!697556 (contains!7122 (t!40677 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134331 res!817505) b!1228846))

(assert (= (and b!1228846 (not res!817506)) b!1228847))

(assert (=> d!134331 m!1133425))

(declare-fun m!1133463 () Bool)

(assert (=> d!134331 m!1133463))

(declare-fun m!1133465 () Bool)

(assert (=> b!1228847 m!1133465))

(assert (=> b!1228705 d!134331))

(declare-fun b!1228895 () Bool)

(declare-fun e!697596 () Bool)

(declare-fun call!60841 () Bool)

(assert (=> b!1228895 (= e!697596 call!60841)))

(declare-fun b!1228896 () Bool)

(assert (=> b!1228896 (= e!697596 call!60841)))

(declare-fun d!134335 () Bool)

(declare-fun res!817540 () Bool)

(declare-fun e!697597 () Bool)

(assert (=> d!134335 (=> res!817540 e!697597)))

(assert (=> d!134335 (= res!817540 (bvsge from!3184 (size!38793 a!3806)))))

(assert (=> d!134335 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!697597)))

(declare-fun b!1228897 () Bool)

(declare-fun e!697598 () Bool)

(assert (=> b!1228897 (= e!697598 e!697596)))

(declare-fun c!120541 () Bool)

(assert (=> b!1228897 (= c!120541 (validKeyInArray!0 (select (arr!38256 a!3806) from!3184)))))

(declare-fun bm!60838 () Bool)

(assert (=> bm!60838 (= call!60841 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120541 (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1228898 () Bool)

(assert (=> b!1228898 (= e!697597 e!697598)))

(declare-fun res!817539 () Bool)

(assert (=> b!1228898 (=> (not res!817539) (not e!697598))))

(declare-fun e!697595 () Bool)

(assert (=> b!1228898 (= res!817539 (not e!697595))))

(declare-fun res!817538 () Bool)

(assert (=> b!1228898 (=> (not res!817538) (not e!697595))))

(assert (=> b!1228898 (= res!817538 (validKeyInArray!0 (select (arr!38256 a!3806) from!3184)))))

(declare-fun b!1228899 () Bool)

(assert (=> b!1228899 (= e!697595 (contains!7122 acc!823 (select (arr!38256 a!3806) from!3184)))))

(assert (= (and d!134335 (not res!817540)) b!1228898))

(assert (= (and b!1228898 res!817538) b!1228899))

(assert (= (and b!1228898 res!817539) b!1228897))

(assert (= (and b!1228897 c!120541) b!1228895))

(assert (= (and b!1228897 (not c!120541)) b!1228896))

(assert (= (or b!1228895 b!1228896) bm!60838))

(assert (=> b!1228897 m!1133331))

(assert (=> b!1228897 m!1133331))

(assert (=> b!1228897 m!1133347))

(assert (=> bm!60838 m!1133331))

(declare-fun m!1133505 () Bool)

(assert (=> bm!60838 m!1133505))

(assert (=> b!1228898 m!1133331))

(assert (=> b!1228898 m!1133331))

(assert (=> b!1228898 m!1133347))

(assert (=> b!1228899 m!1133331))

(assert (=> b!1228899 m!1133331))

(declare-fun m!1133507 () Bool)

(assert (=> b!1228899 m!1133507))

(assert (=> b!1228706 d!134335))

(declare-fun d!134355 () Bool)

(declare-fun lt!559021 () Bool)

(assert (=> d!134355 (= lt!559021 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!562 lt!558989)))))

(declare-fun e!697601 () Bool)

(assert (=> d!134355 (= lt!559021 e!697601)))

(declare-fun res!817543 () Bool)

(assert (=> d!134355 (=> (not res!817543) (not e!697601))))

(assert (=> d!134355 (= res!817543 (is-Cons!27203 lt!558989))))

(assert (=> d!134355 (= (contains!7122 lt!558989 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559021)))

(declare-fun b!1228902 () Bool)

(declare-fun e!697602 () Bool)

(assert (=> b!1228902 (= e!697601 e!697602)))

(declare-fun res!817544 () Bool)

(assert (=> b!1228902 (=> res!817544 e!697602)))

(assert (=> b!1228902 (= res!817544 (= (h!28412 lt!558989) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228903 () Bool)

(assert (=> b!1228903 (= e!697602 (contains!7122 (t!40677 lt!558989) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134355 res!817543) b!1228902))

(assert (= (and b!1228902 (not res!817544)) b!1228903))

(declare-fun m!1133509 () Bool)

(assert (=> d!134355 m!1133509))

(declare-fun m!1133511 () Bool)

(assert (=> d!134355 m!1133511))

(declare-fun m!1133513 () Bool)

(assert (=> b!1228903 m!1133513))

(assert (=> b!1228709 d!134355))

(declare-fun d!134357 () Bool)

(declare-fun lt!559022 () Bool)

(assert (=> d!134357 (= lt!559022 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!562 lt!558989)))))

(declare-fun e!697603 () Bool)

(assert (=> d!134357 (= lt!559022 e!697603)))

(declare-fun res!817545 () Bool)

(assert (=> d!134357 (=> (not res!817545) (not e!697603))))

(assert (=> d!134357 (= res!817545 (is-Cons!27203 lt!558989))))

(assert (=> d!134357 (= (contains!7122 lt!558989 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559022)))

(declare-fun b!1228904 () Bool)

(declare-fun e!697604 () Bool)

(assert (=> b!1228904 (= e!697603 e!697604)))

(declare-fun res!817546 () Bool)

(assert (=> b!1228904 (=> res!817546 e!697604)))

(assert (=> b!1228904 (= res!817546 (= (h!28412 lt!558989) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228905 () Bool)

(assert (=> b!1228905 (= e!697604 (contains!7122 (t!40677 lt!558989) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134357 res!817545) b!1228904))

(assert (= (and b!1228904 (not res!817546)) b!1228905))

(assert (=> d!134357 m!1133509))

(declare-fun m!1133515 () Bool)

(assert (=> d!134357 m!1133515))

(declare-fun m!1133517 () Bool)

(assert (=> b!1228905 m!1133517))

(assert (=> b!1228699 d!134357))

(declare-fun d!134359 () Bool)

(assert (=> d!134359 (= (validKeyInArray!0 (select (arr!38256 a!3806) from!3184)) (and (not (= (select (arr!38256 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38256 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228710 d!134359))

(declare-fun d!134363 () Bool)

(declare-fun res!817556 () Bool)

(declare-fun e!697615 () Bool)

(assert (=> d!134363 (=> res!817556 e!697615)))

(assert (=> d!134363 (= res!817556 (is-Nil!27204 lt!558989))))

(assert (=> d!134363 (= (noDuplicate!1729 lt!558989) e!697615)))

(declare-fun b!1228917 () Bool)

(declare-fun e!697616 () Bool)

(assert (=> b!1228917 (= e!697615 e!697616)))

(declare-fun res!817557 () Bool)

(assert (=> b!1228917 (=> (not res!817557) (not e!697616))))

(assert (=> b!1228917 (= res!817557 (not (contains!7122 (t!40677 lt!558989) (h!28412 lt!558989))))))

(declare-fun b!1228918 () Bool)

(assert (=> b!1228918 (= e!697616 (noDuplicate!1729 (t!40677 lt!558989)))))

(assert (= (and d!134363 (not res!817556)) b!1228917))

(assert (= (and b!1228917 res!817557) b!1228918))

(declare-fun m!1133523 () Bool)

(assert (=> b!1228917 m!1133523))

(declare-fun m!1133525 () Bool)

(assert (=> b!1228918 m!1133525))

(assert (=> b!1228708 d!134363))

(declare-fun b!1228919 () Bool)

(declare-fun e!697618 () Bool)

(declare-fun call!60843 () Bool)

(assert (=> b!1228919 (= e!697618 call!60843)))

(declare-fun b!1228920 () Bool)

(assert (=> b!1228920 (= e!697618 call!60843)))

(declare-fun d!134365 () Bool)

(declare-fun res!817560 () Bool)

(declare-fun e!697619 () Bool)

(assert (=> d!134365 (=> res!817560 e!697619)))

(assert (=> d!134365 (= res!817560 (bvsge from!3184 (size!38793 a!3806)))))

(assert (=> d!134365 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27204) e!697619)))

(declare-fun b!1228921 () Bool)

(declare-fun e!697620 () Bool)

(assert (=> b!1228921 (= e!697620 e!697618)))

(declare-fun c!120543 () Bool)

(assert (=> b!1228921 (= c!120543 (validKeyInArray!0 (select (arr!38256 a!3806) from!3184)))))

(declare-fun bm!60840 () Bool)

(assert (=> bm!60840 (= call!60843 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120543 (Cons!27203 (select (arr!38256 a!3806) from!3184) Nil!27204) Nil!27204)))))

(declare-fun b!1228922 () Bool)

(assert (=> b!1228922 (= e!697619 e!697620)))

(declare-fun res!817559 () Bool)

(assert (=> b!1228922 (=> (not res!817559) (not e!697620))))

(declare-fun e!697617 () Bool)

(assert (=> b!1228922 (= res!817559 (not e!697617))))

(declare-fun res!817558 () Bool)

(assert (=> b!1228922 (=> (not res!817558) (not e!697617))))

(assert (=> b!1228922 (= res!817558 (validKeyInArray!0 (select (arr!38256 a!3806) from!3184)))))

(declare-fun b!1228923 () Bool)

(assert (=> b!1228923 (= e!697617 (contains!7122 Nil!27204 (select (arr!38256 a!3806) from!3184)))))

(assert (= (and d!134365 (not res!817560)) b!1228922))

(assert (= (and b!1228922 res!817558) b!1228923))

(assert (= (and b!1228922 res!817559) b!1228921))

(assert (= (and b!1228921 c!120543) b!1228919))

(assert (= (and b!1228921 (not c!120543)) b!1228920))

(assert (= (or b!1228919 b!1228920) bm!60840))

(assert (=> b!1228921 m!1133331))

(assert (=> b!1228921 m!1133331))

(assert (=> b!1228921 m!1133347))

(assert (=> bm!60840 m!1133331))

(declare-fun m!1133531 () Bool)

(assert (=> bm!60840 m!1133531))

(assert (=> b!1228922 m!1133331))

(assert (=> b!1228922 m!1133331))

(assert (=> b!1228922 m!1133347))

(assert (=> b!1228923 m!1133331))

(assert (=> b!1228923 m!1133331))

(declare-fun m!1133533 () Bool)

(assert (=> b!1228923 m!1133533))

(assert (=> b!1228701 d!134365))

(declare-fun d!134369 () Bool)

(assert (=> d!134369 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27204)))

(declare-fun lt!559028 () Unit!40652)

(declare-fun choose!80 (array!79277 List!27207 List!27207 (_ BitVec 32)) Unit!40652)

(assert (=> d!134369 (= lt!559028 (choose!80 a!3806 acc!823 Nil!27204 from!3184))))

(assert (=> d!134369 (bvslt (size!38793 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!134369 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27204 from!3184) lt!559028)))

(declare-fun bs!34538 () Bool)

(assert (= bs!34538 d!134369))

(assert (=> bs!34538 m!1133333))

(declare-fun m!1133543 () Bool)

(assert (=> bs!34538 m!1133543))

(assert (=> b!1228701 d!134369))

(declare-fun b!1228929 () Bool)

(declare-fun e!697626 () Bool)

(declare-fun call!60845 () Bool)

(assert (=> b!1228929 (= e!697626 call!60845)))

(declare-fun b!1228930 () Bool)

(assert (=> b!1228930 (= e!697626 call!60845)))

(declare-fun d!134375 () Bool)

(declare-fun res!817566 () Bool)

(declare-fun e!697627 () Bool)

(assert (=> d!134375 (=> res!817566 e!697627)))

(assert (=> d!134375 (= res!817566 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38793 a!3806)))))

(assert (=> d!134375 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823)) e!697627)))

(declare-fun b!1228931 () Bool)

(declare-fun e!697628 () Bool)

(assert (=> b!1228931 (= e!697628 e!697626)))

(declare-fun c!120545 () Bool)

(assert (=> b!1228931 (= c!120545 (validKeyInArray!0 (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun bm!60842 () Bool)

(assert (=> bm!60842 (= call!60845 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120545 (Cons!27203 (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823)) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823))))))

(declare-fun b!1228932 () Bool)

(assert (=> b!1228932 (= e!697627 e!697628)))

(declare-fun res!817565 () Bool)

(assert (=> b!1228932 (=> (not res!817565) (not e!697628))))

(declare-fun e!697625 () Bool)

(assert (=> b!1228932 (= res!817565 (not e!697625))))

(declare-fun res!817564 () Bool)

(assert (=> b!1228932 (=> (not res!817564) (not e!697625))))

(assert (=> b!1228932 (= res!817564 (validKeyInArray!0 (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228933 () Bool)

(assert (=> b!1228933 (= e!697625 (contains!7122 (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823) (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134375 (not res!817566)) b!1228932))

(assert (= (and b!1228932 res!817564) b!1228933))

(assert (= (and b!1228932 res!817565) b!1228931))

(assert (= (and b!1228931 c!120545) b!1228929))

(assert (= (and b!1228931 (not c!120545)) b!1228930))

(assert (= (or b!1228929 b!1228930) bm!60842))

(assert (=> b!1228931 m!1133447))

(assert (=> b!1228931 m!1133447))

(declare-fun m!1133545 () Bool)

(assert (=> b!1228931 m!1133545))

(assert (=> bm!60842 m!1133447))

(declare-fun m!1133547 () Bool)

(assert (=> bm!60842 m!1133547))

(assert (=> b!1228932 m!1133447))

(assert (=> b!1228932 m!1133447))

(assert (=> b!1228932 m!1133545))

(assert (=> b!1228933 m!1133447))

(assert (=> b!1228933 m!1133447))

(declare-fun m!1133553 () Bool)

(assert (=> b!1228933 m!1133553))

(assert (=> b!1228701 d!134375))

(declare-fun d!134381 () Bool)

(assert (=> d!134381 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228702 d!134381))

(push 1)

(assert (not b!1228897))

(assert (not b!1228845))

(assert (not bm!60840))

(assert (not d!134355))

(assert (not b!1228905))

(assert (not b!1228931))

(assert (not d!134309))

(assert (not b!1228917))

(assert (not b!1228806))

(assert (not b!1228933))

(assert (not b!1228899))

(assert (not d!134369))

(assert (not d!134331))

(assert (not d!134357))

(assert (not b!1228918))

(assert (not b!1228832))

(assert (not bm!60842))

(assert (not b!1228921))

(assert (not b!1228923))

(assert (not b!1228844))

(assert (not b!1228898))

(assert (not bm!60838))

(assert (not b!1228922))

(assert (not b!1228903))

(assert (not b!1228932))

(assert (not b!1228847))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134423 () Bool)

(declare-fun c!120555 () Bool)

(assert (=> d!134423 (= c!120555 (is-Nil!27204 lt!558989))))

(declare-fun e!697673 () (Set (_ BitVec 64)))

(assert (=> d!134423 (= (content!562 lt!558989) e!697673)))

(declare-fun b!1228987 () Bool)

(assert (=> b!1228987 (= e!697673 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!1228988 () Bool)

(assert (=> b!1228988 (= e!697673 (set.union (set.insert (h!28412 lt!558989) (as set.empty (Set (_ BitVec 64)))) (content!562 (t!40677 lt!558989))))))

(assert (= (and d!134423 c!120555) b!1228987))

(assert (= (and d!134423 (not c!120555)) b!1228988))

(declare-fun m!1133633 () Bool)

(assert (=> b!1228988 m!1133633))

(declare-fun m!1133635 () Bool)

(assert (=> b!1228988 m!1133635))

(assert (=> d!134355 d!134423))

(declare-fun lt!559038 () Bool)

(declare-fun d!134425 () Bool)

(assert (=> d!134425 (= lt!559038 (set.member (select (arr!38256 a!3806) from!3184) (content!562 acc!823)))))

(declare-fun e!697674 () Bool)

(assert (=> d!134425 (= lt!559038 e!697674)))

(declare-fun res!817602 () Bool)

(assert (=> d!134425 (=> (not res!817602) (not e!697674))))

(assert (=> d!134425 (= res!817602 (is-Cons!27203 acc!823))))

(assert (=> d!134425 (= (contains!7122 acc!823 (select (arr!38256 a!3806) from!3184)) lt!559038)))

(declare-fun b!1228989 () Bool)

(declare-fun e!697675 () Bool)

(assert (=> b!1228989 (= e!697674 e!697675)))

(declare-fun res!817603 () Bool)

(assert (=> b!1228989 (=> res!817603 e!697675)))

(assert (=> b!1228989 (= res!817603 (= (h!28412 acc!823) (select (arr!38256 a!3806) from!3184)))))

(declare-fun b!1228990 () Bool)

(assert (=> b!1228990 (= e!697675 (contains!7122 (t!40677 acc!823) (select (arr!38256 a!3806) from!3184)))))

(assert (= (and d!134425 res!817602) b!1228989))

(assert (= (and b!1228989 (not res!817603)) b!1228990))

(assert (=> d!134425 m!1133425))

(assert (=> d!134425 m!1133331))

(declare-fun m!1133637 () Bool)

(assert (=> d!134425 m!1133637))

(assert (=> b!1228990 m!1133331))

(declare-fun m!1133639 () Bool)

(assert (=> b!1228990 m!1133639))

(assert (=> b!1228899 d!134425))

(declare-fun d!134427 () Bool)

(declare-fun lt!559039 () Bool)

(assert (=> d!134427 (= lt!559039 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!562 (t!40677 acc!823))))))

(declare-fun e!697676 () Bool)

(assert (=> d!134427 (= lt!559039 e!697676)))

(declare-fun res!817604 () Bool)

(assert (=> d!134427 (=> (not res!817604) (not e!697676))))

(assert (=> d!134427 (= res!817604 (is-Cons!27203 (t!40677 acc!823)))))

(assert (=> d!134427 (= (contains!7122 (t!40677 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000) lt!559039)))

(declare-fun b!1228991 () Bool)

(declare-fun e!697677 () Bool)

(assert (=> b!1228991 (= e!697676 e!697677)))

(declare-fun res!817605 () Bool)

(assert (=> b!1228991 (=> res!817605 e!697677)))

(assert (=> b!1228991 (= res!817605 (= (h!28412 (t!40677 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228992 () Bool)

(assert (=> b!1228992 (= e!697677 (contains!7122 (t!40677 (t!40677 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134427 res!817604) b!1228991))

(assert (= (and b!1228991 (not res!817605)) b!1228992))

(declare-fun m!1133641 () Bool)

(assert (=> d!134427 m!1133641))

(declare-fun m!1133643 () Bool)

(assert (=> d!134427 m!1133643))

(declare-fun m!1133645 () Bool)

(assert (=> b!1228992 m!1133645))

(assert (=> b!1228806 d!134427))

(declare-fun d!134429 () Bool)

(declare-fun lt!559040 () Bool)

(assert (=> d!134429 (= lt!559040 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!562 (t!40677 lt!558989))))))

(declare-fun e!697678 () Bool)

(assert (=> d!134429 (= lt!559040 e!697678)))

(declare-fun res!817606 () Bool)

(assert (=> d!134429 (=> (not res!817606) (not e!697678))))

(assert (=> d!134429 (= res!817606 (is-Cons!27203 (t!40677 lt!558989)))))

(assert (=> d!134429 (= (contains!7122 (t!40677 lt!558989) #b0000000000000000000000000000000000000000000000000000000000000000) lt!559040)))

(declare-fun b!1228993 () Bool)

(declare-fun e!697679 () Bool)

(assert (=> b!1228993 (= e!697678 e!697679)))

(declare-fun res!817607 () Bool)

(assert (=> b!1228993 (=> res!817607 e!697679)))

(assert (=> b!1228993 (= res!817607 (= (h!28412 (t!40677 lt!558989)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228994 () Bool)

(assert (=> b!1228994 (= e!697679 (contains!7122 (t!40677 (t!40677 lt!558989)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134429 res!817606) b!1228993))

(assert (= (and b!1228993 (not res!817607)) b!1228994))

(assert (=> d!134429 m!1133635))

(declare-fun m!1133647 () Bool)

(assert (=> d!134429 m!1133647))

(declare-fun m!1133649 () Bool)

(assert (=> b!1228994 m!1133649))

(assert (=> b!1228905 d!134429))

(declare-fun d!134431 () Bool)

(declare-fun lt!559041 () Bool)

(assert (=> d!134431 (= lt!559041 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!562 (t!40677 acc!823))))))

(declare-fun e!697680 () Bool)

(assert (=> d!134431 (= lt!559041 e!697680)))

(declare-fun res!817608 () Bool)

(assert (=> d!134431 (=> (not res!817608) (not e!697680))))

(assert (=> d!134431 (= res!817608 (is-Cons!27203 (t!40677 acc!823)))))

(assert (=> d!134431 (= (contains!7122 (t!40677 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000) lt!559041)))

(declare-fun b!1228995 () Bool)

(declare-fun e!697681 () Bool)

(assert (=> b!1228995 (= e!697680 e!697681)))

(declare-fun res!817609 () Bool)

(assert (=> b!1228995 (=> res!817609 e!697681)))

(assert (=> b!1228995 (= res!817609 (= (h!28412 (t!40677 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228996 () Bool)

(assert (=> b!1228996 (= e!697681 (contains!7122 (t!40677 (t!40677 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134431 res!817608) b!1228995))

(assert (= (and b!1228995 (not res!817609)) b!1228996))

(assert (=> d!134431 m!1133641))

(declare-fun m!1133651 () Bool)

(assert (=> d!134431 m!1133651))

(declare-fun m!1133653 () Bool)

(assert (=> b!1228996 m!1133653))

(assert (=> b!1228847 d!134431))

(declare-fun d!134433 () Bool)

(assert (=> d!134433 (= (validKeyInArray!0 (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) (and (not (= (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228931 d!134433))

(assert (=> d!134369 d!134365))

(declare-fun d!134435 () Bool)

(assert (=> d!134435 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27204)))

(assert (=> d!134435 true))

(declare-fun _$70!86 () Unit!40652)

(assert (=> d!134435 (= (choose!80 a!3806 acc!823 Nil!27204 from!3184) _$70!86)))

(declare-fun bs!34540 () Bool)

(assert (= bs!34540 d!134435))

(assert (=> bs!34540 m!1133333))

(assert (=> d!134369 d!134435))

(declare-fun b!1228997 () Bool)

(declare-fun e!697683 () Bool)

(declare-fun call!60849 () Bool)

(assert (=> b!1228997 (= e!697683 call!60849)))

(declare-fun b!1228998 () Bool)

(assert (=> b!1228998 (= e!697683 call!60849)))

(declare-fun d!134437 () Bool)

(declare-fun res!817612 () Bool)

(declare-fun e!697684 () Bool)

(assert (=> d!134437 (=> res!817612 e!697684)))

(assert (=> d!134437 (= res!817612 (bvsge (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38793 a!3806)))))

(assert (=> d!134437 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120545 (Cons!27203 (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823)) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823))) e!697684)))

(declare-fun b!1228999 () Bool)

(declare-fun e!697685 () Bool)

(assert (=> b!1228999 (= e!697685 e!697683)))

(declare-fun c!120556 () Bool)

(assert (=> b!1228999 (= c!120556 (validKeyInArray!0 (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun bm!60846 () Bool)

(assert (=> bm!60846 (= call!60849 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120556 (Cons!27203 (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) (ite c!120545 (Cons!27203 (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823)) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823))) (ite c!120545 (Cons!27203 (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823)) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823)))))))

(declare-fun b!1229000 () Bool)

(assert (=> b!1229000 (= e!697684 e!697685)))

(declare-fun res!817611 () Bool)

(assert (=> b!1229000 (=> (not res!817611) (not e!697685))))

(declare-fun e!697682 () Bool)

(assert (=> b!1229000 (= res!817611 (not e!697682))))

(declare-fun res!817610 () Bool)

(assert (=> b!1229000 (=> (not res!817610) (not e!697682))))

(assert (=> b!1229000 (= res!817610 (validKeyInArray!0 (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1229001 () Bool)

(assert (=> b!1229001 (= e!697682 (contains!7122 (ite c!120545 (Cons!27203 (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823)) (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823)) (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134437 (not res!817612)) b!1229000))

(assert (= (and b!1229000 res!817610) b!1229001))

(assert (= (and b!1229000 res!817611) b!1228999))

(assert (= (and b!1228999 c!120556) b!1228997))

(assert (= (and b!1228999 (not c!120556)) b!1228998))

(assert (= (or b!1228997 b!1228998) bm!60846))

(declare-fun m!1133655 () Bool)

(assert (=> b!1228999 m!1133655))

(assert (=> b!1228999 m!1133655))

(declare-fun m!1133657 () Bool)

(assert (=> b!1228999 m!1133657))

(assert (=> bm!60846 m!1133655))

(declare-fun m!1133659 () Bool)

(assert (=> bm!60846 m!1133659))

(assert (=> b!1229000 m!1133655))

(assert (=> b!1229000 m!1133655))

(assert (=> b!1229000 m!1133657))

(assert (=> b!1229001 m!1133655))

(assert (=> b!1229001 m!1133655))

(declare-fun m!1133661 () Bool)

(assert (=> b!1229001 m!1133661))

(assert (=> bm!60842 d!134437))

(declare-fun d!134439 () Bool)

(declare-fun lt!559042 () Bool)

(assert (=> d!134439 (= lt!559042 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!562 (t!40677 lt!558989))))))

(declare-fun e!697686 () Bool)

(assert (=> d!134439 (= lt!559042 e!697686)))

(declare-fun res!817613 () Bool)

(assert (=> d!134439 (=> (not res!817613) (not e!697686))))

(assert (=> d!134439 (= res!817613 (is-Cons!27203 (t!40677 lt!558989)))))

(assert (=> d!134439 (= (contains!7122 (t!40677 lt!558989) #b1000000000000000000000000000000000000000000000000000000000000000) lt!559042)))

(declare-fun b!1229002 () Bool)

(declare-fun e!697687 () Bool)

(assert (=> b!1229002 (= e!697686 e!697687)))

(declare-fun res!817614 () Bool)

(assert (=> b!1229002 (=> res!817614 e!697687)))

(assert (=> b!1229002 (= res!817614 (= (h!28412 (t!40677 lt!558989)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229003 () Bool)

(assert (=> b!1229003 (= e!697687 (contains!7122 (t!40677 (t!40677 lt!558989)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134439 res!817613) b!1229002))

(assert (= (and b!1229002 (not res!817614)) b!1229003))

(assert (=> d!134439 m!1133635))

(declare-fun m!1133663 () Bool)

(assert (=> d!134439 m!1133663))

(declare-fun m!1133665 () Bool)

(assert (=> b!1229003 m!1133665))

(assert (=> b!1228903 d!134439))

(assert (=> b!1228932 d!134433))

(declare-fun d!134441 () Bool)

(declare-fun lt!559043 () Bool)

(assert (=> d!134441 (= lt!559043 (set.member (h!28412 acc!823) (content!562 (t!40677 acc!823))))))

(declare-fun e!697688 () Bool)

(assert (=> d!134441 (= lt!559043 e!697688)))

(declare-fun res!817615 () Bool)

(assert (=> d!134441 (=> (not res!817615) (not e!697688))))

(assert (=> d!134441 (= res!817615 (is-Cons!27203 (t!40677 acc!823)))))

(assert (=> d!134441 (= (contains!7122 (t!40677 acc!823) (h!28412 acc!823)) lt!559043)))

(declare-fun b!1229004 () Bool)

(declare-fun e!697689 () Bool)

(assert (=> b!1229004 (= e!697688 e!697689)))

(declare-fun res!817616 () Bool)

(assert (=> b!1229004 (=> res!817616 e!697689)))

(assert (=> b!1229004 (= res!817616 (= (h!28412 (t!40677 acc!823)) (h!28412 acc!823)))))

(declare-fun b!1229005 () Bool)

(assert (=> b!1229005 (= e!697689 (contains!7122 (t!40677 (t!40677 acc!823)) (h!28412 acc!823)))))

(assert (= (and d!134441 res!817615) b!1229004))

(assert (= (and b!1229004 (not res!817616)) b!1229005))

(assert (=> d!134441 m!1133641))

(declare-fun m!1133667 () Bool)

(assert (=> d!134441 m!1133667))

(declare-fun m!1133669 () Bool)

(assert (=> b!1229005 m!1133669))

(assert (=> b!1228844 d!134441))

(declare-fun lt!559044 () Bool)

(declare-fun d!134443 () Bool)

(assert (=> d!134443 (= lt!559044 (set.member (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (content!562 (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823))))))

(declare-fun e!697690 () Bool)

(assert (=> d!134443 (= lt!559044 e!697690)))

(declare-fun res!817617 () Bool)

(assert (=> d!134443 (=> (not res!817617) (not e!697690))))

(assert (=> d!134443 (= res!817617 (is-Cons!27203 (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823)))))

(assert (=> d!134443 (= (contains!7122 (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823) (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) lt!559044)))

(declare-fun b!1229006 () Bool)

(declare-fun e!697691 () Bool)

(assert (=> b!1229006 (= e!697690 e!697691)))

(declare-fun res!817618 () Bool)

(assert (=> b!1229006 (=> res!817618 e!697691)))

(assert (=> b!1229006 (= res!817618 (= (h!28412 (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823)) (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1229007 () Bool)

(assert (=> b!1229007 (= e!697691 (contains!7122 (t!40677 (Cons!27203 (select (arr!38256 a!3806) from!3184) acc!823)) (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134443 res!817617) b!1229006))

(assert (= (and b!1229006 (not res!817618)) b!1229007))

(declare-fun m!1133671 () Bool)

(assert (=> d!134443 m!1133671))

(assert (=> d!134443 m!1133447))

(declare-fun m!1133673 () Bool)

(assert (=> d!134443 m!1133673))

(assert (=> b!1229007 m!1133447))

(declare-fun m!1133675 () Bool)

(assert (=> b!1229007 m!1133675))

(assert (=> b!1228933 d!134443))

(declare-fun d!134445 () Bool)

(declare-fun c!120557 () Bool)

(assert (=> d!134445 (= c!120557 (is-Nil!27204 acc!823))))

(declare-fun e!697692 () (Set (_ BitVec 64)))

(assert (=> d!134445 (= (content!562 acc!823) e!697692)))

(declare-fun b!1229008 () Bool)

(assert (=> b!1229008 (= e!697692 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!1229009 () Bool)

(assert (=> b!1229009 (= e!697692 (set.union (set.insert (h!28412 acc!823) (as set.empty (Set (_ BitVec 64)))) (content!562 (t!40677 acc!823))))))

(assert (= (and d!134445 c!120557) b!1229008))

(assert (= (and d!134445 (not c!120557)) b!1229009))

(declare-fun m!1133677 () Bool)

(assert (=> b!1229009 m!1133677))

(assert (=> b!1229009 m!1133641))

(assert (=> d!134309 d!134445))

(declare-fun d!134447 () Bool)

(declare-fun res!817619 () Bool)

(declare-fun e!697693 () Bool)

(assert (=> d!134447 (=> res!817619 e!697693)))

(assert (=> d!134447 (= res!817619 (= (select (arr!38256 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) k!2913))))

(assert (=> d!134447 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) e!697693)))

(declare-fun b!1229010 () Bool)

(declare-fun e!697694 () Bool)

(assert (=> b!1229010 (= e!697693 e!697694)))

(declare-fun res!817620 () Bool)

(assert (=> b!1229010 (=> (not res!817620) (not e!697694))))

(assert (=> b!1229010 (= res!817620 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!38793 a!3806)))))

(declare-fun b!1229011 () Bool)

(assert (=> b!1229011 (= e!697694 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!134447 (not res!817619)) b!1229010))

(assert (= (and b!1229010 res!817620) b!1229011))

(assert (=> d!134447 m!1133655))

(declare-fun m!1133679 () Bool)

(assert (=> b!1229011 m!1133679))

(assert (=> b!1228832 d!134447))

(assert (=> b!1228921 d!134359))

(assert (=> d!134331 d!134445))

(declare-fun d!134451 () Bool)

(declare-fun res!817621 () Bool)

(declare-fun e!697695 () Bool)

(assert (=> d!134451 (=> res!817621 e!697695)))

(assert (=> d!134451 (= res!817621 (is-Nil!27204 (t!40677 acc!823)))))

(assert (=> d!134451 (= (noDuplicate!1729 (t!40677 acc!823)) e!697695)))

(declare-fun b!1229012 () Bool)

(declare-fun e!697696 () Bool)

(assert (=> b!1229012 (= e!697695 e!697696)))

(declare-fun res!817622 () Bool)

(assert (=> b!1229012 (=> (not res!817622) (not e!697696))))

(assert (=> b!1229012 (= res!817622 (not (contains!7122 (t!40677 (t!40677 acc!823)) (h!28412 (t!40677 acc!823)))))))

(declare-fun b!1229013 () Bool)

(assert (=> b!1229013 (= e!697696 (noDuplicate!1729 (t!40677 (t!40677 acc!823))))))

(assert (= (and d!134451 (not res!817621)) b!1229012))

(assert (= (and b!1229012 res!817622) b!1229013))

(declare-fun m!1133681 () Bool)

(assert (=> b!1229012 m!1133681))

(declare-fun m!1133683 () Bool)

(assert (=> b!1229013 m!1133683))

(assert (=> b!1228845 d!134451))

(declare-fun d!134453 () Bool)

(declare-fun lt!559045 () Bool)

(assert (=> d!134453 (= lt!559045 (set.member (h!28412 lt!558989) (content!562 (t!40677 lt!558989))))))

(declare-fun e!697697 () Bool)

(assert (=> d!134453 (= lt!559045 e!697697)))

(declare-fun res!817623 () Bool)

(assert (=> d!134453 (=> (not res!817623) (not e!697697))))

(assert (=> d!134453 (= res!817623 (is-Cons!27203 (t!40677 lt!558989)))))

(assert (=> d!134453 (= (contains!7122 (t!40677 lt!558989) (h!28412 lt!558989)) lt!559045)))

(declare-fun b!1229014 () Bool)

(declare-fun e!697698 () Bool)

(assert (=> b!1229014 (= e!697697 e!697698)))

(declare-fun res!817624 () Bool)

(assert (=> b!1229014 (=> res!817624 e!697698)))

(assert (=> b!1229014 (= res!817624 (= (h!28412 (t!40677 lt!558989)) (h!28412 lt!558989)))))

(declare-fun b!1229015 () Bool)

(assert (=> b!1229015 (= e!697698 (contains!7122 (t!40677 (t!40677 lt!558989)) (h!28412 lt!558989)))))

(assert (= (and d!134453 res!817623) b!1229014))

(assert (= (and b!1229014 (not res!817624)) b!1229015))

(assert (=> d!134453 m!1133635))

(declare-fun m!1133685 () Bool)

(assert (=> d!134453 m!1133685))

(declare-fun m!1133687 () Bool)

(assert (=> b!1229015 m!1133687))

(assert (=> b!1228917 d!134453))

(assert (=> b!1228897 d!134359))

(declare-fun d!134455 () Bool)

(declare-fun lt!559046 () Bool)

(assert (=> d!134455 (= lt!559046 (set.member (select (arr!38256 a!3806) from!3184) (content!562 Nil!27204)))))

(declare-fun e!697701 () Bool)

(assert (=> d!134455 (= lt!559046 e!697701)))

(declare-fun res!817625 () Bool)

(assert (=> d!134455 (=> (not res!817625) (not e!697701))))

(assert (=> d!134455 (= res!817625 (is-Cons!27203 Nil!27204))))

(assert (=> d!134455 (= (contains!7122 Nil!27204 (select (arr!38256 a!3806) from!3184)) lt!559046)))

(declare-fun b!1229020 () Bool)

(declare-fun e!697702 () Bool)

(assert (=> b!1229020 (= e!697701 e!697702)))

(declare-fun res!817626 () Bool)

(assert (=> b!1229020 (=> res!817626 e!697702)))

(assert (=> b!1229020 (= res!817626 (= (h!28412 Nil!27204) (select (arr!38256 a!3806) from!3184)))))

(declare-fun b!1229021 () Bool)

(assert (=> b!1229021 (= e!697702 (contains!7122 (t!40677 Nil!27204) (select (arr!38256 a!3806) from!3184)))))

(assert (= (and d!134455 res!817625) b!1229020))

(assert (= (and b!1229020 (not res!817626)) b!1229021))

(declare-fun m!1133689 () Bool)

(assert (=> d!134455 m!1133689))

(assert (=> d!134455 m!1133331))

(declare-fun m!1133691 () Bool)

(assert (=> d!134455 m!1133691))

(assert (=> b!1229021 m!1133331))

(declare-fun m!1133693 () Bool)

(assert (=> b!1229021 m!1133693))

(assert (=> b!1228923 d!134455))

(declare-fun d!134457 () Bool)

(declare-fun res!817627 () Bool)

(declare-fun e!697703 () Bool)

(assert (=> d!134457 (=> res!817627 e!697703)))

(assert (=> d!134457 (= res!817627 (is-Nil!27204 (t!40677 lt!558989)))))

(assert (=> d!134457 (= (noDuplicate!1729 (t!40677 lt!558989)) e!697703)))

(declare-fun b!1229022 () Bool)

(declare-fun e!697704 () Bool)

(assert (=> b!1229022 (= e!697703 e!697704)))

(declare-fun res!817628 () Bool)

(assert (=> b!1229022 (=> (not res!817628) (not e!697704))))

(assert (=> b!1229022 (= res!817628 (not (contains!7122 (t!40677 (t!40677 lt!558989)) (h!28412 (t!40677 lt!558989)))))))

(declare-fun b!1229023 () Bool)

(assert (=> b!1229023 (= e!697704 (noDuplicate!1729 (t!40677 (t!40677 lt!558989))))))

(assert (= (and d!134457 (not res!817627)) b!1229022))

(assert (= (and b!1229022 res!817628) b!1229023))

(declare-fun m!1133695 () Bool)

(assert (=> b!1229022 m!1133695))

(declare-fun m!1133697 () Bool)

(assert (=> b!1229023 m!1133697))

(assert (=> b!1228918 d!134457))

(declare-fun b!1229026 () Bool)

(declare-fun e!697707 () Bool)

(declare-fun call!60850 () Bool)

(assert (=> b!1229026 (= e!697707 call!60850)))

(declare-fun b!1229027 () Bool)

(assert (=> b!1229027 (= e!697707 call!60850)))

(declare-fun d!134459 () Bool)

(declare-fun res!817631 () Bool)

(declare-fun e!697708 () Bool)

(assert (=> d!134459 (=> res!817631 e!697708)))

(assert (=> d!134459 (= res!817631 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38793 a!3806)))))

(assert (=> d!134459 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120543 (Cons!27203 (select (arr!38256 a!3806) from!3184) Nil!27204) Nil!27204)) e!697708)))

(declare-fun b!1229028 () Bool)

(declare-fun e!697709 () Bool)

(assert (=> b!1229028 (= e!697709 e!697707)))

(declare-fun c!120561 () Bool)

(assert (=> b!1229028 (= c!120561 (validKeyInArray!0 (select (arr!38256 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun bm!60847 () Bool)

(assert (=> bm!60847 (= call!60850 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120561 (Cons!27203 (select (arr!38256 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120543 (Cons!27203 (select (arr!38256 a!3806) from!3184) Nil!27204) Nil!27204)) (ite c!120543 (Cons!27203 (select (arr!38256 a!3806) from!3184) Nil!27204) Nil!27204))))))

(declare-fun b!1229029 () Bool)

(assert (=> b!1229029 (= e!697708 e!697709)))

(declare-fun res!817630 () Bool)

(assert (=> b!1229029 (=> (not res!817630) (not e!697709))))

(declare-fun e!697706 () Bool)

(assert (=> b!1229029 (= res!817630 (not e!697706))))

(declare-fun res!817629 () Bool)

(assert (=> b!1229029 (=> (not res!817629) (not e!697706))))

(assert (=> b!1229029 (= res!817629 (validKeyInArray!0 (select (arr!38256 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1229030 () Bool)

(assert (=> b!1229030 (= e!697706 (contains!7122 (ite c!120543 (Cons!27203 (select (arr!38256 a!3806) from!3184) Nil!27204) Nil!27204) (select (arr!38256 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134459 (not res!817631)) b!1229029))

(assert (= (and b!1229029 res!817629) b!1229030))

(assert (= (and b!1229029 res!817630) b!1229028))

(assert (= (and b!1229028 c!120561) b!1229026))

(assert (= (and b!1229028 (not c!120561)) b!1229027))

(assert (= (or b!1229026 b!1229027) bm!60847))

(declare-fun m!1133703 () Bool)

(assert (=> b!1229028 m!1133703))

(assert (=> b!1229028 m!1133703))

(declare-fun m!1133705 () Bool)

