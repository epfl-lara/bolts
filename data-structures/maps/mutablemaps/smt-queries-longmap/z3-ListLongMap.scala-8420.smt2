; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102498 () Bool)

(assert start!102498)

(declare-fun b!1232402 () Bool)

(declare-fun res!820893 () Bool)

(declare-fun e!699028 () Bool)

(assert (=> b!1232402 (=> (not res!820893) (not e!699028))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232402 (= res!820893 (validKeyInArray!0 k0!2913))))

(declare-fun b!1232403 () Bool)

(declare-fun res!820887 () Bool)

(assert (=> b!1232403 (=> (not res!820887) (not e!699028))))

(declare-datatypes ((List!27295 0))(
  ( (Nil!27292) (Cons!27291 (h!28500 (_ BitVec 64)) (t!40765 List!27295)) )
))
(declare-fun acc!823 () List!27295)

(declare-fun contains!7210 (List!27295 (_ BitVec 64)) Bool)

(assert (=> b!1232403 (= res!820887 (not (contains!7210 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232404 () Bool)

(declare-fun e!699027 () Bool)

(declare-datatypes ((array!79468 0))(
  ( (array!79469 (arr!38344 (Array (_ BitVec 32) (_ BitVec 64))) (size!38881 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79468)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79468 (_ BitVec 32) List!27295) Bool)

(assert (=> b!1232404 (= e!699027 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)))))

(declare-fun b!1232405 () Bool)

(declare-fun res!820886 () Bool)

(assert (=> b!1232405 (=> (not res!820886) (not e!699028))))

(assert (=> b!1232405 (= res!820886 (not (contains!7210 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232406 () Bool)

(declare-fun res!820892 () Bool)

(assert (=> b!1232406 (=> (not res!820892) (not e!699028))))

(assert (=> b!1232406 (= res!820892 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38881 a!3806)) (bvslt from!3184 (size!38881 a!3806))))))

(declare-fun b!1232407 () Bool)

(declare-fun res!820894 () Bool)

(assert (=> b!1232407 (=> (not res!820894) (not e!699028))))

(assert (=> b!1232407 (= res!820894 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232408 () Bool)

(declare-fun res!820890 () Bool)

(assert (=> b!1232408 (=> (not res!820890) (not e!699028))))

(declare-fun arrayContainsKey!0 (array!79468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232408 (= res!820890 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!820895 () Bool)

(assert (=> start!102498 (=> (not res!820895) (not e!699028))))

(assert (=> start!102498 (= res!820895 (bvslt (size!38881 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102498 e!699028))

(declare-fun array_inv!29120 (array!79468) Bool)

(assert (=> start!102498 (array_inv!29120 a!3806)))

(assert (=> start!102498 true))

(declare-fun b!1232409 () Bool)

(declare-fun e!699025 () Bool)

(assert (=> b!1232409 (= e!699028 (not e!699025))))

(declare-fun res!820889 () Bool)

(assert (=> b!1232409 (=> res!820889 e!699025)))

(assert (=> b!1232409 (= res!820889 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1232409 e!699027))

(declare-fun res!820885 () Bool)

(assert (=> b!1232409 (=> (not res!820885) (not e!699027))))

(assert (=> b!1232409 (= res!820885 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27292))))

(declare-datatypes ((Unit!40768 0))(
  ( (Unit!40769) )
))
(declare-fun lt!559463 () Unit!40768)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79468 List!27295 List!27295 (_ BitVec 32)) Unit!40768)

(assert (=> b!1232409 (= lt!559463 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27292 from!3184))))

(assert (=> b!1232409 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823))))

(declare-fun b!1232410 () Bool)

(declare-fun res!820888 () Bool)

(assert (=> b!1232410 (=> (not res!820888) (not e!699028))))

(assert (=> b!1232410 (= res!820888 (validKeyInArray!0 (select (arr!38344 a!3806) from!3184)))))

(declare-fun b!1232411 () Bool)

(declare-fun res!820891 () Bool)

(assert (=> b!1232411 (=> (not res!820891) (not e!699028))))

(declare-fun noDuplicate!1817 (List!27295) Bool)

(assert (=> b!1232411 (= res!820891 (noDuplicate!1817 acc!823))))

(declare-fun b!1232412 () Bool)

(assert (=> b!1232412 (= e!699025 (noDuplicate!1817 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)))))

(assert (= (and start!102498 res!820895) b!1232402))

(assert (= (and b!1232402 res!820893) b!1232406))

(assert (= (and b!1232406 res!820892) b!1232411))

(assert (= (and b!1232411 res!820891) b!1232403))

(assert (= (and b!1232403 res!820887) b!1232405))

(assert (= (and b!1232405 res!820886) b!1232408))

(assert (= (and b!1232408 res!820890) b!1232407))

(assert (= (and b!1232407 res!820894) b!1232410))

(assert (= (and b!1232410 res!820888) b!1232409))

(assert (= (and b!1232409 res!820885) b!1232404))

(assert (= (and b!1232409 (not res!820889)) b!1232412))

(declare-fun m!1136457 () Bool)

(assert (=> b!1232403 m!1136457))

(declare-fun m!1136459 () Bool)

(assert (=> b!1232408 m!1136459))

(declare-fun m!1136461 () Bool)

(assert (=> b!1232402 m!1136461))

(declare-fun m!1136463 () Bool)

(assert (=> b!1232412 m!1136463))

(declare-fun m!1136465 () Bool)

(assert (=> b!1232412 m!1136465))

(declare-fun m!1136467 () Bool)

(assert (=> b!1232411 m!1136467))

(assert (=> b!1232404 m!1136463))

(declare-fun m!1136469 () Bool)

(assert (=> b!1232404 m!1136469))

(declare-fun m!1136471 () Bool)

(assert (=> b!1232409 m!1136471))

(declare-fun m!1136473 () Bool)

(assert (=> b!1232409 m!1136473))

(assert (=> b!1232409 m!1136463))

(declare-fun m!1136475 () Bool)

(assert (=> b!1232409 m!1136475))

(declare-fun m!1136477 () Bool)

(assert (=> b!1232405 m!1136477))

(declare-fun m!1136479 () Bool)

(assert (=> b!1232407 m!1136479))

(declare-fun m!1136481 () Bool)

(assert (=> start!102498 m!1136481))

(assert (=> b!1232410 m!1136463))

(assert (=> b!1232410 m!1136463))

(declare-fun m!1136483 () Bool)

(assert (=> b!1232410 m!1136483))

(check-sat (not b!1232410) (not b!1232408) (not b!1232403) (not b!1232404) (not b!1232412) (not b!1232407) (not start!102498) (not b!1232411) (not b!1232402) (not b!1232405) (not b!1232409))
(check-sat)
(get-model)

(declare-fun b!1232456 () Bool)

(declare-fun e!699049 () Bool)

(declare-fun call!60911 () Bool)

(assert (=> b!1232456 (= e!699049 call!60911)))

(declare-fun b!1232457 () Bool)

(assert (=> b!1232457 (= e!699049 call!60911)))

(declare-fun b!1232458 () Bool)

(declare-fun e!699051 () Bool)

(assert (=> b!1232458 (= e!699051 e!699049)))

(declare-fun c!120623 () Bool)

(assert (=> b!1232458 (= c!120623 (validKeyInArray!0 (select (arr!38344 a!3806) from!3184)))))

(declare-fun b!1232459 () Bool)

(declare-fun e!699050 () Bool)

(assert (=> b!1232459 (= e!699050 (contains!7210 Nil!27292 (select (arr!38344 a!3806) from!3184)))))

(declare-fun d!134821 () Bool)

(declare-fun res!820937 () Bool)

(declare-fun e!699052 () Bool)

(assert (=> d!134821 (=> res!820937 e!699052)))

(assert (=> d!134821 (= res!820937 (bvsge from!3184 (size!38881 a!3806)))))

(assert (=> d!134821 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27292) e!699052)))

(declare-fun bm!60908 () Bool)

(assert (=> bm!60908 (= call!60911 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120623 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292) Nil!27292)))))

(declare-fun b!1232460 () Bool)

(assert (=> b!1232460 (= e!699052 e!699051)))

(declare-fun res!820936 () Bool)

(assert (=> b!1232460 (=> (not res!820936) (not e!699051))))

(assert (=> b!1232460 (= res!820936 (not e!699050))))

(declare-fun res!820935 () Bool)

(assert (=> b!1232460 (=> (not res!820935) (not e!699050))))

(assert (=> b!1232460 (= res!820935 (validKeyInArray!0 (select (arr!38344 a!3806) from!3184)))))

(assert (= (and d!134821 (not res!820937)) b!1232460))

(assert (= (and b!1232460 res!820935) b!1232459))

(assert (= (and b!1232460 res!820936) b!1232458))

(assert (= (and b!1232458 c!120623) b!1232457))

(assert (= (and b!1232458 (not c!120623)) b!1232456))

(assert (= (or b!1232457 b!1232456) bm!60908))

(assert (=> b!1232458 m!1136463))

(assert (=> b!1232458 m!1136463))

(assert (=> b!1232458 m!1136483))

(assert (=> b!1232459 m!1136463))

(assert (=> b!1232459 m!1136463))

(declare-fun m!1136513 () Bool)

(assert (=> b!1232459 m!1136513))

(assert (=> bm!60908 m!1136463))

(declare-fun m!1136515 () Bool)

(assert (=> bm!60908 m!1136515))

(assert (=> b!1232460 m!1136463))

(assert (=> b!1232460 m!1136463))

(assert (=> b!1232460 m!1136483))

(assert (=> b!1232409 d!134821))

(declare-fun d!134823 () Bool)

(assert (=> d!134823 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27292)))

(declare-fun lt!559469 () Unit!40768)

(declare-fun choose!80 (array!79468 List!27295 List!27295 (_ BitVec 32)) Unit!40768)

(assert (=> d!134823 (= lt!559469 (choose!80 a!3806 acc!823 Nil!27292 from!3184))))

(assert (=> d!134823 (bvslt (size!38881 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!134823 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27292 from!3184) lt!559469)))

(declare-fun bs!34632 () Bool)

(assert (= bs!34632 d!134823))

(assert (=> bs!34632 m!1136471))

(declare-fun m!1136517 () Bool)

(assert (=> bs!34632 m!1136517))

(assert (=> b!1232409 d!134823))

(declare-fun b!1232461 () Bool)

(declare-fun e!699053 () Bool)

(declare-fun call!60912 () Bool)

(assert (=> b!1232461 (= e!699053 call!60912)))

(declare-fun b!1232462 () Bool)

(assert (=> b!1232462 (= e!699053 call!60912)))

(declare-fun b!1232463 () Bool)

(declare-fun e!699055 () Bool)

(assert (=> b!1232463 (= e!699055 e!699053)))

(declare-fun c!120624 () Bool)

(assert (=> b!1232463 (= c!120624 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232464 () Bool)

(declare-fun e!699054 () Bool)

(assert (=> b!1232464 (= e!699054 (contains!7210 (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!134829 () Bool)

(declare-fun res!820940 () Bool)

(declare-fun e!699056 () Bool)

(assert (=> d!134829 (=> res!820940 e!699056)))

(assert (=> d!134829 (= res!820940 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38881 a!3806)))))

(assert (=> d!134829 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)) e!699056)))

(declare-fun bm!60909 () Bool)

(assert (=> bm!60909 (= call!60912 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120624 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823))))))

(declare-fun b!1232465 () Bool)

(assert (=> b!1232465 (= e!699056 e!699055)))

(declare-fun res!820939 () Bool)

(assert (=> b!1232465 (=> (not res!820939) (not e!699055))))

(assert (=> b!1232465 (= res!820939 (not e!699054))))

(declare-fun res!820938 () Bool)

(assert (=> b!1232465 (=> (not res!820938) (not e!699054))))

(assert (=> b!1232465 (= res!820938 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134829 (not res!820940)) b!1232465))

(assert (= (and b!1232465 res!820938) b!1232464))

(assert (= (and b!1232465 res!820939) b!1232463))

(assert (= (and b!1232463 c!120624) b!1232462))

(assert (= (and b!1232463 (not c!120624)) b!1232461))

(assert (= (or b!1232462 b!1232461) bm!60909))

(declare-fun m!1136519 () Bool)

(assert (=> b!1232463 m!1136519))

(assert (=> b!1232463 m!1136519))

(declare-fun m!1136521 () Bool)

(assert (=> b!1232463 m!1136521))

(assert (=> b!1232464 m!1136519))

(assert (=> b!1232464 m!1136519))

(declare-fun m!1136523 () Bool)

(assert (=> b!1232464 m!1136523))

(assert (=> bm!60909 m!1136519))

(declare-fun m!1136525 () Bool)

(assert (=> bm!60909 m!1136525))

(assert (=> b!1232465 m!1136519))

(assert (=> b!1232465 m!1136519))

(assert (=> b!1232465 m!1136521))

(assert (=> b!1232409 d!134829))

(declare-fun d!134833 () Bool)

(assert (=> d!134833 (= (validKeyInArray!0 (select (arr!38344 a!3806) from!3184)) (and (not (= (select (arr!38344 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38344 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232410 d!134833))

(declare-fun d!134835 () Bool)

(declare-fun res!820951 () Bool)

(declare-fun e!699069 () Bool)

(assert (=> d!134835 (=> res!820951 e!699069)))

(get-info :version)

(assert (=> d!134835 (= res!820951 ((_ is Nil!27292) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)))))

(assert (=> d!134835 (= (noDuplicate!1817 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) e!699069)))

(declare-fun b!1232480 () Bool)

(declare-fun e!699070 () Bool)

(assert (=> b!1232480 (= e!699069 e!699070)))

(declare-fun res!820952 () Bool)

(assert (=> b!1232480 (=> (not res!820952) (not e!699070))))

(assert (=> b!1232480 (= res!820952 (not (contains!7210 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) (h!28500 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)))))))

(declare-fun b!1232481 () Bool)

(assert (=> b!1232481 (= e!699070 (noDuplicate!1817 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))))))

(assert (= (and d!134835 (not res!820951)) b!1232480))

(assert (= (and b!1232480 res!820952) b!1232481))

(declare-fun m!1136527 () Bool)

(assert (=> b!1232480 m!1136527))

(declare-fun m!1136529 () Bool)

(assert (=> b!1232481 m!1136529))

(assert (=> b!1232412 d!134835))

(declare-fun d!134837 () Bool)

(declare-fun res!820953 () Bool)

(declare-fun e!699071 () Bool)

(assert (=> d!134837 (=> res!820953 e!699071)))

(assert (=> d!134837 (= res!820953 ((_ is Nil!27292) acc!823))))

(assert (=> d!134837 (= (noDuplicate!1817 acc!823) e!699071)))

(declare-fun b!1232482 () Bool)

(declare-fun e!699072 () Bool)

(assert (=> b!1232482 (= e!699071 e!699072)))

(declare-fun res!820954 () Bool)

(assert (=> b!1232482 (=> (not res!820954) (not e!699072))))

(assert (=> b!1232482 (= res!820954 (not (contains!7210 (t!40765 acc!823) (h!28500 acc!823))))))

(declare-fun b!1232483 () Bool)

(assert (=> b!1232483 (= e!699072 (noDuplicate!1817 (t!40765 acc!823)))))

(assert (= (and d!134837 (not res!820953)) b!1232482))

(assert (= (and b!1232482 res!820954) b!1232483))

(declare-fun m!1136531 () Bool)

(assert (=> b!1232482 m!1136531))

(declare-fun m!1136533 () Bool)

(assert (=> b!1232483 m!1136533))

(assert (=> b!1232411 d!134837))

(declare-fun d!134839 () Bool)

(assert (=> d!134839 (= (validKeyInArray!0 k0!2913) (and (not (= k0!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232402 d!134839))

(declare-fun b!1232484 () Bool)

(declare-fun e!699073 () Bool)

(declare-fun call!60915 () Bool)

(assert (=> b!1232484 (= e!699073 call!60915)))

(declare-fun b!1232485 () Bool)

(assert (=> b!1232485 (= e!699073 call!60915)))

(declare-fun b!1232486 () Bool)

(declare-fun e!699075 () Bool)

(assert (=> b!1232486 (= e!699075 e!699073)))

(declare-fun c!120627 () Bool)

(assert (=> b!1232486 (= c!120627 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232487 () Bool)

(declare-fun e!699074 () Bool)

(assert (=> b!1232487 (= e!699074 (contains!7210 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun d!134841 () Bool)

(declare-fun res!820957 () Bool)

(declare-fun e!699076 () Bool)

(assert (=> d!134841 (=> res!820957 e!699076)))

(assert (=> d!134841 (= res!820957 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38881 a!3806)))))

(assert (=> d!134841 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) e!699076)))

(declare-fun bm!60912 () Bool)

(assert (=> bm!60912 (= call!60915 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120627 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))))))

(declare-fun b!1232488 () Bool)

(assert (=> b!1232488 (= e!699076 e!699075)))

(declare-fun res!820956 () Bool)

(assert (=> b!1232488 (=> (not res!820956) (not e!699075))))

(assert (=> b!1232488 (= res!820956 (not e!699074))))

(declare-fun res!820955 () Bool)

(assert (=> b!1232488 (=> (not res!820955) (not e!699074))))

(assert (=> b!1232488 (= res!820955 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134841 (not res!820957)) b!1232488))

(assert (= (and b!1232488 res!820955) b!1232487))

(assert (= (and b!1232488 res!820956) b!1232486))

(assert (= (and b!1232486 c!120627) b!1232485))

(assert (= (and b!1232486 (not c!120627)) b!1232484))

(assert (= (or b!1232485 b!1232484) bm!60912))

(assert (=> b!1232486 m!1136519))

(assert (=> b!1232486 m!1136519))

(assert (=> b!1232486 m!1136521))

(assert (=> b!1232487 m!1136519))

(assert (=> b!1232487 m!1136519))

(declare-fun m!1136535 () Bool)

(assert (=> b!1232487 m!1136535))

(assert (=> bm!60912 m!1136519))

(declare-fun m!1136537 () Bool)

(assert (=> bm!60912 m!1136537))

(assert (=> b!1232488 m!1136519))

(assert (=> b!1232488 m!1136519))

(assert (=> b!1232488 m!1136521))

(assert (=> b!1232404 d!134841))

(declare-fun d!134843 () Bool)

(declare-fun lt!559472 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!576 (List!27295) (InoxSet (_ BitVec 64)))

(assert (=> d!134843 (= lt!559472 (select (content!576 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699094 () Bool)

(assert (=> d!134843 (= lt!559472 e!699094)))

(declare-fun res!820971 () Bool)

(assert (=> d!134843 (=> (not res!820971) (not e!699094))))

(assert (=> d!134843 (= res!820971 ((_ is Cons!27291) acc!823))))

(assert (=> d!134843 (= (contains!7210 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559472)))

(declare-fun b!1232508 () Bool)

(declare-fun e!699093 () Bool)

(assert (=> b!1232508 (= e!699094 e!699093)))

(declare-fun res!820972 () Bool)

(assert (=> b!1232508 (=> res!820972 e!699093)))

(assert (=> b!1232508 (= res!820972 (= (h!28500 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232509 () Bool)

(assert (=> b!1232509 (= e!699093 (contains!7210 (t!40765 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134843 res!820971) b!1232508))

(assert (= (and b!1232508 (not res!820972)) b!1232509))

(declare-fun m!1136547 () Bool)

(assert (=> d!134843 m!1136547))

(declare-fun m!1136549 () Bool)

(assert (=> d!134843 m!1136549))

(declare-fun m!1136551 () Bool)

(assert (=> b!1232509 m!1136551))

(assert (=> b!1232403 d!134843))

(declare-fun d!134847 () Bool)

(declare-fun lt!559473 () Bool)

(assert (=> d!134847 (= lt!559473 (select (content!576 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699096 () Bool)

(assert (=> d!134847 (= lt!559473 e!699096)))

(declare-fun res!820973 () Bool)

(assert (=> d!134847 (=> (not res!820973) (not e!699096))))

(assert (=> d!134847 (= res!820973 ((_ is Cons!27291) acc!823))))

(assert (=> d!134847 (= (contains!7210 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559473)))

(declare-fun b!1232510 () Bool)

(declare-fun e!699095 () Bool)

(assert (=> b!1232510 (= e!699096 e!699095)))

(declare-fun res!820974 () Bool)

(assert (=> b!1232510 (=> res!820974 e!699095)))

(assert (=> b!1232510 (= res!820974 (= (h!28500 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232511 () Bool)

(assert (=> b!1232511 (= e!699095 (contains!7210 (t!40765 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134847 res!820973) b!1232510))

(assert (= (and b!1232510 (not res!820974)) b!1232511))

(assert (=> d!134847 m!1136547))

(declare-fun m!1136553 () Bool)

(assert (=> d!134847 m!1136553))

(declare-fun m!1136555 () Bool)

(assert (=> b!1232511 m!1136555))

(assert (=> b!1232405 d!134847))

(declare-fun d!134849 () Bool)

(assert (=> d!134849 (= (array_inv!29120 a!3806) (bvsge (size!38881 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102498 d!134849))

(declare-fun d!134851 () Bool)

(declare-fun res!820986 () Bool)

(declare-fun e!699109 () Bool)

(assert (=> d!134851 (=> res!820986 e!699109)))

(assert (=> d!134851 (= res!820986 (= (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k0!2913))))

(assert (=> d!134851 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!699109)))

(declare-fun b!1232525 () Bool)

(declare-fun e!699110 () Bool)

(assert (=> b!1232525 (= e!699109 e!699110)))

(declare-fun res!820987 () Bool)

(assert (=> b!1232525 (=> (not res!820987) (not e!699110))))

(assert (=> b!1232525 (= res!820987 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38881 a!3806)))))

(declare-fun b!1232526 () Bool)

(assert (=> b!1232526 (= e!699110 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134851 (not res!820986)) b!1232525))

(assert (= (and b!1232525 res!820987) b!1232526))

(assert (=> d!134851 m!1136519))

(declare-fun m!1136561 () Bool)

(assert (=> b!1232526 m!1136561))

(assert (=> b!1232408 d!134851))

(declare-fun b!1232527 () Bool)

(declare-fun e!699111 () Bool)

(declare-fun call!60920 () Bool)

(assert (=> b!1232527 (= e!699111 call!60920)))

(declare-fun b!1232528 () Bool)

(assert (=> b!1232528 (= e!699111 call!60920)))

(declare-fun b!1232529 () Bool)

(declare-fun e!699113 () Bool)

(assert (=> b!1232529 (= e!699113 e!699111)))

(declare-fun c!120632 () Bool)

(assert (=> b!1232529 (= c!120632 (validKeyInArray!0 (select (arr!38344 a!3806) from!3184)))))

(declare-fun e!699112 () Bool)

(declare-fun b!1232530 () Bool)

(assert (=> b!1232530 (= e!699112 (contains!7210 acc!823 (select (arr!38344 a!3806) from!3184)))))

(declare-fun d!134855 () Bool)

(declare-fun res!820990 () Bool)

(declare-fun e!699114 () Bool)

(assert (=> d!134855 (=> res!820990 e!699114)))

(assert (=> d!134855 (= res!820990 (bvsge from!3184 (size!38881 a!3806)))))

(assert (=> d!134855 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!699114)))

(declare-fun bm!60917 () Bool)

(assert (=> bm!60917 (= call!60920 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120632 (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1232531 () Bool)

(assert (=> b!1232531 (= e!699114 e!699113)))

(declare-fun res!820989 () Bool)

(assert (=> b!1232531 (=> (not res!820989) (not e!699113))))

(assert (=> b!1232531 (= res!820989 (not e!699112))))

(declare-fun res!820988 () Bool)

(assert (=> b!1232531 (=> (not res!820988) (not e!699112))))

(assert (=> b!1232531 (= res!820988 (validKeyInArray!0 (select (arr!38344 a!3806) from!3184)))))

(assert (= (and d!134855 (not res!820990)) b!1232531))

(assert (= (and b!1232531 res!820988) b!1232530))

(assert (= (and b!1232531 res!820989) b!1232529))

(assert (= (and b!1232529 c!120632) b!1232528))

(assert (= (and b!1232529 (not c!120632)) b!1232527))

(assert (= (or b!1232528 b!1232527) bm!60917))

(assert (=> b!1232529 m!1136463))

(assert (=> b!1232529 m!1136463))

(assert (=> b!1232529 m!1136483))

(assert (=> b!1232530 m!1136463))

(assert (=> b!1232530 m!1136463))

(declare-fun m!1136563 () Bool)

(assert (=> b!1232530 m!1136563))

(assert (=> bm!60917 m!1136463))

(declare-fun m!1136565 () Bool)

(assert (=> bm!60917 m!1136565))

(assert (=> b!1232531 m!1136463))

(assert (=> b!1232531 m!1136463))

(assert (=> b!1232531 m!1136483))

(assert (=> b!1232407 d!134855))

(check-sat (not d!134843) (not b!1232487) (not bm!60912) (not bm!60909) (not b!1232458) (not b!1232482) (not b!1232488) (not b!1232480) (not b!1232511) (not b!1232526) (not b!1232459) (not b!1232460) (not d!134823) (not b!1232509) (not b!1232463) (not b!1232531) (not b!1232481) (not bm!60908) (not b!1232530) (not b!1232464) (not b!1232483) (not b!1232486) (not b!1232529) (not bm!60917) (not d!134847) (not b!1232465))
(check-sat)
(get-model)

(declare-fun d!134899 () Bool)

(assert (=> d!134899 (= (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) (and (not (= (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232465 d!134899))

(declare-fun b!1232602 () Bool)

(declare-fun e!699179 () Bool)

(declare-fun call!60927 () Bool)

(assert (=> b!1232602 (= e!699179 call!60927)))

(declare-fun b!1232603 () Bool)

(assert (=> b!1232603 (= e!699179 call!60927)))

(declare-fun b!1232604 () Bool)

(declare-fun e!699181 () Bool)

(assert (=> b!1232604 (= e!699181 e!699179)))

(declare-fun c!120639 () Bool)

(assert (=> b!1232604 (= c!120639 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1232605 () Bool)

(declare-fun e!699180 () Bool)

(assert (=> b!1232605 (= e!699180 (contains!7210 (ite c!120624 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun d!134901 () Bool)

(declare-fun res!821051 () Bool)

(declare-fun e!699182 () Bool)

(assert (=> d!134901 (=> res!821051 e!699182)))

(assert (=> d!134901 (= res!821051 (bvsge (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38881 a!3806)))))

(assert (=> d!134901 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120624 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823))) e!699182)))

(declare-fun bm!60924 () Bool)

(assert (=> bm!60924 (= call!60927 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120639 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) (ite c!120624 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823))) (ite c!120624 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)))))))

(declare-fun b!1232606 () Bool)

(assert (=> b!1232606 (= e!699182 e!699181)))

(declare-fun res!821050 () Bool)

(assert (=> b!1232606 (=> (not res!821050) (not e!699181))))

(assert (=> b!1232606 (= res!821050 (not e!699180))))

(declare-fun res!821049 () Bool)

(assert (=> b!1232606 (=> (not res!821049) (not e!699180))))

(assert (=> b!1232606 (= res!821049 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134901 (not res!821051)) b!1232606))

(assert (= (and b!1232606 res!821049) b!1232605))

(assert (= (and b!1232606 res!821050) b!1232604))

(assert (= (and b!1232604 c!120639) b!1232603))

(assert (= (and b!1232604 (not c!120639)) b!1232602))

(assert (= (or b!1232603 b!1232602) bm!60924))

(declare-fun m!1136639 () Bool)

(assert (=> b!1232604 m!1136639))

(assert (=> b!1232604 m!1136639))

(declare-fun m!1136641 () Bool)

(assert (=> b!1232604 m!1136641))

(assert (=> b!1232605 m!1136639))

(assert (=> b!1232605 m!1136639))

(declare-fun m!1136643 () Bool)

(assert (=> b!1232605 m!1136643))

(assert (=> bm!60924 m!1136639))

(declare-fun m!1136645 () Bool)

(assert (=> bm!60924 m!1136645))

(assert (=> b!1232606 m!1136639))

(assert (=> b!1232606 m!1136639))

(assert (=> b!1232606 m!1136641))

(assert (=> bm!60909 d!134901))

(assert (=> b!1232488 d!134899))

(declare-fun d!134903 () Bool)

(declare-fun lt!559488 () Bool)

(assert (=> d!134903 (= lt!559488 (select (content!576 (t!40765 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699184 () Bool)

(assert (=> d!134903 (= lt!559488 e!699184)))

(declare-fun res!821052 () Bool)

(assert (=> d!134903 (=> (not res!821052) (not e!699184))))

(assert (=> d!134903 (= res!821052 ((_ is Cons!27291) (t!40765 acc!823)))))

(assert (=> d!134903 (= (contains!7210 (t!40765 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000) lt!559488)))

(declare-fun b!1232607 () Bool)

(declare-fun e!699183 () Bool)

(assert (=> b!1232607 (= e!699184 e!699183)))

(declare-fun res!821053 () Bool)

(assert (=> b!1232607 (=> res!821053 e!699183)))

(assert (=> b!1232607 (= res!821053 (= (h!28500 (t!40765 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232608 () Bool)

(assert (=> b!1232608 (= e!699183 (contains!7210 (t!40765 (t!40765 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134903 res!821052) b!1232607))

(assert (= (and b!1232607 (not res!821053)) b!1232608))

(declare-fun m!1136647 () Bool)

(assert (=> d!134903 m!1136647))

(declare-fun m!1136649 () Bool)

(assert (=> d!134903 m!1136649))

(declare-fun m!1136651 () Bool)

(assert (=> b!1232608 m!1136651))

(assert (=> b!1232509 d!134903))

(assert (=> b!1232529 d!134833))

(declare-fun d!134905 () Bool)

(declare-fun lt!559489 () Bool)

(assert (=> d!134905 (= lt!559489 (select (content!576 acc!823) (select (arr!38344 a!3806) from!3184)))))

(declare-fun e!699186 () Bool)

(assert (=> d!134905 (= lt!559489 e!699186)))

(declare-fun res!821054 () Bool)

(assert (=> d!134905 (=> (not res!821054) (not e!699186))))

(assert (=> d!134905 (= res!821054 ((_ is Cons!27291) acc!823))))

(assert (=> d!134905 (= (contains!7210 acc!823 (select (arr!38344 a!3806) from!3184)) lt!559489)))

(declare-fun b!1232609 () Bool)

(declare-fun e!699185 () Bool)

(assert (=> b!1232609 (= e!699186 e!699185)))

(declare-fun res!821055 () Bool)

(assert (=> b!1232609 (=> res!821055 e!699185)))

(assert (=> b!1232609 (= res!821055 (= (h!28500 acc!823) (select (arr!38344 a!3806) from!3184)))))

(declare-fun b!1232610 () Bool)

(assert (=> b!1232610 (= e!699185 (contains!7210 (t!40765 acc!823) (select (arr!38344 a!3806) from!3184)))))

(assert (= (and d!134905 res!821054) b!1232609))

(assert (= (and b!1232609 (not res!821055)) b!1232610))

(assert (=> d!134905 m!1136547))

(assert (=> d!134905 m!1136463))

(declare-fun m!1136653 () Bool)

(assert (=> d!134905 m!1136653))

(assert (=> b!1232610 m!1136463))

(declare-fun m!1136655 () Bool)

(assert (=> b!1232610 m!1136655))

(assert (=> b!1232530 d!134905))

(assert (=> b!1232458 d!134833))

(assert (=> b!1232463 d!134899))

(declare-fun d!134907 () Bool)

(declare-fun lt!559490 () Bool)

(assert (=> d!134907 (= lt!559490 (select (content!576 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun e!699188 () Bool)

(assert (=> d!134907 (= lt!559490 e!699188)))

(declare-fun res!821056 () Bool)

(assert (=> d!134907 (=> (not res!821056) (not e!699188))))

(assert (=> d!134907 (= res!821056 ((_ is Cons!27291) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)))))

(assert (=> d!134907 (= (contains!7210 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) lt!559490)))

(declare-fun b!1232611 () Bool)

(declare-fun e!699187 () Bool)

(assert (=> b!1232611 (= e!699188 e!699187)))

(declare-fun res!821057 () Bool)

(assert (=> b!1232611 (=> res!821057 e!699187)))

(assert (=> b!1232611 (= res!821057 (= (h!28500 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232612 () Bool)

(assert (=> b!1232612 (= e!699187 (contains!7210 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134907 res!821056) b!1232611))

(assert (= (and b!1232611 (not res!821057)) b!1232612))

(declare-fun m!1136657 () Bool)

(assert (=> d!134907 m!1136657))

(assert (=> d!134907 m!1136519))

(declare-fun m!1136659 () Bool)

(assert (=> d!134907 m!1136659))

(assert (=> b!1232612 m!1136519))

(declare-fun m!1136661 () Bool)

(assert (=> b!1232612 m!1136661))

(assert (=> b!1232487 d!134907))

(declare-fun d!134909 () Bool)

(declare-fun lt!559491 () Bool)

(assert (=> d!134909 (= lt!559491 (select (content!576 Nil!27292) (select (arr!38344 a!3806) from!3184)))))

(declare-fun e!699190 () Bool)

(assert (=> d!134909 (= lt!559491 e!699190)))

(declare-fun res!821058 () Bool)

(assert (=> d!134909 (=> (not res!821058) (not e!699190))))

(assert (=> d!134909 (= res!821058 ((_ is Cons!27291) Nil!27292))))

(assert (=> d!134909 (= (contains!7210 Nil!27292 (select (arr!38344 a!3806) from!3184)) lt!559491)))

(declare-fun b!1232613 () Bool)

(declare-fun e!699189 () Bool)

(assert (=> b!1232613 (= e!699190 e!699189)))

(declare-fun res!821059 () Bool)

(assert (=> b!1232613 (=> res!821059 e!699189)))

(assert (=> b!1232613 (= res!821059 (= (h!28500 Nil!27292) (select (arr!38344 a!3806) from!3184)))))

(declare-fun b!1232614 () Bool)

(assert (=> b!1232614 (= e!699189 (contains!7210 (t!40765 Nil!27292) (select (arr!38344 a!3806) from!3184)))))

(assert (= (and d!134909 res!821058) b!1232613))

(assert (= (and b!1232613 (not res!821059)) b!1232614))

(declare-fun m!1136663 () Bool)

(assert (=> d!134909 m!1136663))

(assert (=> d!134909 m!1136463))

(declare-fun m!1136665 () Bool)

(assert (=> d!134909 m!1136665))

(assert (=> b!1232614 m!1136463))

(declare-fun m!1136667 () Bool)

(assert (=> b!1232614 m!1136667))

(assert (=> b!1232459 d!134909))

(assert (=> b!1232486 d!134899))

(declare-fun d!134911 () Bool)

(declare-fun lt!559492 () Bool)

(assert (=> d!134911 (= lt!559492 (select (content!576 (t!40765 acc!823)) (h!28500 acc!823)))))

(declare-fun e!699192 () Bool)

(assert (=> d!134911 (= lt!559492 e!699192)))

(declare-fun res!821060 () Bool)

(assert (=> d!134911 (=> (not res!821060) (not e!699192))))

(assert (=> d!134911 (= res!821060 ((_ is Cons!27291) (t!40765 acc!823)))))

(assert (=> d!134911 (= (contains!7210 (t!40765 acc!823) (h!28500 acc!823)) lt!559492)))

(declare-fun b!1232615 () Bool)

(declare-fun e!699191 () Bool)

(assert (=> b!1232615 (= e!699192 e!699191)))

(declare-fun res!821061 () Bool)

(assert (=> b!1232615 (=> res!821061 e!699191)))

(assert (=> b!1232615 (= res!821061 (= (h!28500 (t!40765 acc!823)) (h!28500 acc!823)))))

(declare-fun b!1232616 () Bool)

(assert (=> b!1232616 (= e!699191 (contains!7210 (t!40765 (t!40765 acc!823)) (h!28500 acc!823)))))

(assert (= (and d!134911 res!821060) b!1232615))

(assert (= (and b!1232615 (not res!821061)) b!1232616))

(assert (=> d!134911 m!1136647))

(declare-fun m!1136669 () Bool)

(assert (=> d!134911 m!1136669))

(declare-fun m!1136671 () Bool)

(assert (=> b!1232616 m!1136671))

(assert (=> b!1232482 d!134911))

(assert (=> b!1232460 d!134833))

(declare-fun b!1232617 () Bool)

(declare-fun e!699193 () Bool)

(declare-fun call!60928 () Bool)

(assert (=> b!1232617 (= e!699193 call!60928)))

(declare-fun b!1232618 () Bool)

(assert (=> b!1232618 (= e!699193 call!60928)))

(declare-fun b!1232619 () Bool)

(declare-fun e!699195 () Bool)

(assert (=> b!1232619 (= e!699195 e!699193)))

(declare-fun c!120640 () Bool)

(assert (=> b!1232619 (= c!120640 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1232620 () Bool)

(declare-fun e!699194 () Bool)

(assert (=> b!1232620 (= e!699194 (contains!7210 (ite c!120627 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun d!134913 () Bool)

(declare-fun res!821064 () Bool)

(declare-fun e!699196 () Bool)

(assert (=> d!134913 (=> res!821064 e!699196)))

(assert (=> d!134913 (= res!821064 (bvsge (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38881 a!3806)))))

(assert (=> d!134913 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120627 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))) e!699196)))

(declare-fun bm!60925 () Bool)

(assert (=> bm!60925 (= call!60928 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120640 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) (ite c!120627 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))) (ite c!120627 (Cons!27291 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)))))))

(declare-fun b!1232621 () Bool)

(assert (=> b!1232621 (= e!699196 e!699195)))

(declare-fun res!821063 () Bool)

(assert (=> b!1232621 (=> (not res!821063) (not e!699195))))

(assert (=> b!1232621 (= res!821063 (not e!699194))))

(declare-fun res!821062 () Bool)

(assert (=> b!1232621 (=> (not res!821062) (not e!699194))))

(assert (=> b!1232621 (= res!821062 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134913 (not res!821064)) b!1232621))

(assert (= (and b!1232621 res!821062) b!1232620))

(assert (= (and b!1232621 res!821063) b!1232619))

(assert (= (and b!1232619 c!120640) b!1232618))

(assert (= (and b!1232619 (not c!120640)) b!1232617))

(assert (= (or b!1232618 b!1232617) bm!60925))

(assert (=> b!1232619 m!1136639))

(assert (=> b!1232619 m!1136639))

(assert (=> b!1232619 m!1136641))

(assert (=> b!1232620 m!1136639))

(assert (=> b!1232620 m!1136639))

(declare-fun m!1136673 () Bool)

(assert (=> b!1232620 m!1136673))

(assert (=> bm!60925 m!1136639))

(declare-fun m!1136675 () Bool)

(assert (=> bm!60925 m!1136675))

(assert (=> b!1232621 m!1136639))

(assert (=> b!1232621 m!1136639))

(assert (=> b!1232621 m!1136641))

(assert (=> bm!60912 d!134913))

(declare-fun d!134915 () Bool)

(declare-fun lt!559493 () Bool)

(assert (=> d!134915 (= lt!559493 (select (content!576 (t!40765 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!699198 () Bool)

(assert (=> d!134915 (= lt!559493 e!699198)))

(declare-fun res!821065 () Bool)

(assert (=> d!134915 (=> (not res!821065) (not e!699198))))

(assert (=> d!134915 (= res!821065 ((_ is Cons!27291) (t!40765 acc!823)))))

(assert (=> d!134915 (= (contains!7210 (t!40765 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000) lt!559493)))

(declare-fun b!1232622 () Bool)

(declare-fun e!699197 () Bool)

(assert (=> b!1232622 (= e!699198 e!699197)))

(declare-fun res!821066 () Bool)

(assert (=> b!1232622 (=> res!821066 e!699197)))

(assert (=> b!1232622 (= res!821066 (= (h!28500 (t!40765 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232623 () Bool)

(assert (=> b!1232623 (= e!699197 (contains!7210 (t!40765 (t!40765 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134915 res!821065) b!1232622))

(assert (= (and b!1232622 (not res!821066)) b!1232623))

(assert (=> d!134915 m!1136647))

(declare-fun m!1136677 () Bool)

(assert (=> d!134915 m!1136677))

(declare-fun m!1136679 () Bool)

(assert (=> b!1232623 m!1136679))

(assert (=> b!1232511 d!134915))

(declare-fun lt!559494 () Bool)

(declare-fun d!134917 () Bool)

(assert (=> d!134917 (= lt!559494 (select (content!576 (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun e!699200 () Bool)

(assert (=> d!134917 (= lt!559494 e!699200)))

(declare-fun res!821067 () Bool)

(assert (=> d!134917 (=> (not res!821067) (not e!699200))))

(assert (=> d!134917 (= res!821067 ((_ is Cons!27291) (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)))))

(assert (=> d!134917 (= (contains!7210 (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) lt!559494)))

(declare-fun b!1232624 () Bool)

(declare-fun e!699199 () Bool)

(assert (=> b!1232624 (= e!699200 e!699199)))

(declare-fun res!821068 () Bool)

(assert (=> b!1232624 (=> res!821068 e!699199)))

(assert (=> b!1232624 (= res!821068 (= (h!28500 (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232625 () Bool)

(assert (=> b!1232625 (= e!699199 (contains!7210 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823)) (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134917 res!821067) b!1232624))

(assert (= (and b!1232624 (not res!821068)) b!1232625))

(declare-fun m!1136681 () Bool)

(assert (=> d!134917 m!1136681))

(assert (=> d!134917 m!1136519))

(declare-fun m!1136683 () Bool)

(assert (=> d!134917 m!1136683))

(assert (=> b!1232625 m!1136519))

(declare-fun m!1136685 () Bool)

(assert (=> b!1232625 m!1136685))

(assert (=> b!1232464 d!134917))

(declare-fun d!134919 () Bool)

(declare-fun res!821069 () Bool)

(declare-fun e!699201 () Bool)

(assert (=> d!134919 (=> res!821069 e!699201)))

(assert (=> d!134919 (= res!821069 ((_ is Nil!27292) (t!40765 acc!823)))))

(assert (=> d!134919 (= (noDuplicate!1817 (t!40765 acc!823)) e!699201)))

(declare-fun b!1232626 () Bool)

(declare-fun e!699202 () Bool)

(assert (=> b!1232626 (= e!699201 e!699202)))

(declare-fun res!821070 () Bool)

(assert (=> b!1232626 (=> (not res!821070) (not e!699202))))

(assert (=> b!1232626 (= res!821070 (not (contains!7210 (t!40765 (t!40765 acc!823)) (h!28500 (t!40765 acc!823)))))))

(declare-fun b!1232627 () Bool)

(assert (=> b!1232627 (= e!699202 (noDuplicate!1817 (t!40765 (t!40765 acc!823))))))

(assert (= (and d!134919 (not res!821069)) b!1232626))

(assert (= (and b!1232626 res!821070) b!1232627))

(declare-fun m!1136687 () Bool)

(assert (=> b!1232626 m!1136687))

(declare-fun m!1136689 () Bool)

(assert (=> b!1232627 m!1136689))

(assert (=> b!1232483 d!134919))

(declare-fun b!1232628 () Bool)

(declare-fun e!699203 () Bool)

(declare-fun call!60929 () Bool)

(assert (=> b!1232628 (= e!699203 call!60929)))

(declare-fun b!1232629 () Bool)

(assert (=> b!1232629 (= e!699203 call!60929)))

(declare-fun b!1232630 () Bool)

(declare-fun e!699205 () Bool)

(assert (=> b!1232630 (= e!699205 e!699203)))

(declare-fun c!120641 () Bool)

(assert (=> b!1232630 (= c!120641 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1232631 () Bool)

(declare-fun e!699204 () Bool)

(assert (=> b!1232631 (= e!699204 (contains!7210 (ite c!120623 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292) Nil!27292) (select (arr!38344 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun d!134921 () Bool)

(declare-fun res!821073 () Bool)

(declare-fun e!699206 () Bool)

(assert (=> d!134921 (=> res!821073 e!699206)))

(assert (=> d!134921 (= res!821073 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38881 a!3806)))))

(assert (=> d!134921 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120623 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292) Nil!27292)) e!699206)))

(declare-fun bm!60926 () Bool)

(assert (=> bm!60926 (= call!60929 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120641 (Cons!27291 (select (arr!38344 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120623 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292) Nil!27292)) (ite c!120623 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292) Nil!27292))))))

(declare-fun b!1232632 () Bool)

(assert (=> b!1232632 (= e!699206 e!699205)))

(declare-fun res!821072 () Bool)

(assert (=> b!1232632 (=> (not res!821072) (not e!699205))))

(assert (=> b!1232632 (= res!821072 (not e!699204))))

(declare-fun res!821071 () Bool)

(assert (=> b!1232632 (=> (not res!821071) (not e!699204))))

(assert (=> b!1232632 (= res!821071 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134921 (not res!821073)) b!1232632))

(assert (= (and b!1232632 res!821071) b!1232631))

(assert (= (and b!1232632 res!821072) b!1232630))

(assert (= (and b!1232630 c!120641) b!1232629))

(assert (= (and b!1232630 (not c!120641)) b!1232628))

(assert (= (or b!1232629 b!1232628) bm!60926))

(declare-fun m!1136691 () Bool)

(assert (=> b!1232630 m!1136691))

(assert (=> b!1232630 m!1136691))

(declare-fun m!1136693 () Bool)

(assert (=> b!1232630 m!1136693))

(assert (=> b!1232631 m!1136691))

(assert (=> b!1232631 m!1136691))

(declare-fun m!1136695 () Bool)

(assert (=> b!1232631 m!1136695))

(assert (=> bm!60926 m!1136691))

(declare-fun m!1136697 () Bool)

(assert (=> bm!60926 m!1136697))

(assert (=> b!1232632 m!1136691))

(assert (=> b!1232632 m!1136691))

(assert (=> b!1232632 m!1136693))

(assert (=> bm!60908 d!134921))

(declare-fun d!134923 () Bool)

(declare-fun c!120644 () Bool)

(assert (=> d!134923 (= c!120644 ((_ is Nil!27292) acc!823))))

(declare-fun e!699209 () (InoxSet (_ BitVec 64)))

(assert (=> d!134923 (= (content!576 acc!823) e!699209)))

(declare-fun b!1232637 () Bool)

(assert (=> b!1232637 (= e!699209 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1232638 () Bool)

(assert (=> b!1232638 (= e!699209 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!28500 acc!823) true) (content!576 (t!40765 acc!823))))))

(assert (= (and d!134923 c!120644) b!1232637))

(assert (= (and d!134923 (not c!120644)) b!1232638))

(declare-fun m!1136699 () Bool)

(assert (=> b!1232638 m!1136699))

(assert (=> b!1232638 m!1136647))

(assert (=> d!134847 d!134923))

(assert (=> b!1232531 d!134833))

(assert (=> d!134823 d!134821))

(declare-fun d!134925 () Bool)

(assert (=> d!134925 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27292)))

(assert (=> d!134925 true))

(declare-fun _$70!92 () Unit!40768)

(assert (=> d!134925 (= (choose!80 a!3806 acc!823 Nil!27292 from!3184) _$70!92)))

(declare-fun bs!34635 () Bool)

(assert (= bs!34635 d!134925))

(assert (=> bs!34635 m!1136471))

(assert (=> d!134823 d!134925))

(declare-fun b!1232639 () Bool)

(declare-fun e!699210 () Bool)

(declare-fun call!60930 () Bool)

(assert (=> b!1232639 (= e!699210 call!60930)))

(declare-fun b!1232640 () Bool)

(assert (=> b!1232640 (= e!699210 call!60930)))

(declare-fun b!1232641 () Bool)

(declare-fun e!699212 () Bool)

(assert (=> b!1232641 (= e!699212 e!699210)))

(declare-fun c!120645 () Bool)

(assert (=> b!1232641 (= c!120645 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1232642 () Bool)

(declare-fun e!699211 () Bool)

(assert (=> b!1232642 (= e!699211 (contains!7210 (ite c!120632 (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823) acc!823) (select (arr!38344 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun d!134927 () Bool)

(declare-fun res!821076 () Bool)

(declare-fun e!699213 () Bool)

(assert (=> d!134927 (=> res!821076 e!699213)))

(assert (=> d!134927 (= res!821076 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38881 a!3806)))))

(assert (=> d!134927 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120632 (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823) acc!823)) e!699213)))

(declare-fun bm!60927 () Bool)

(assert (=> bm!60927 (= call!60930 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120645 (Cons!27291 (select (arr!38344 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120632 (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823) acc!823)) (ite c!120632 (Cons!27291 (select (arr!38344 a!3806) from!3184) acc!823) acc!823))))))

(declare-fun b!1232643 () Bool)

(assert (=> b!1232643 (= e!699213 e!699212)))

(declare-fun res!821075 () Bool)

(assert (=> b!1232643 (=> (not res!821075) (not e!699212))))

(assert (=> b!1232643 (= res!821075 (not e!699211))))

(declare-fun res!821074 () Bool)

(assert (=> b!1232643 (=> (not res!821074) (not e!699211))))

(assert (=> b!1232643 (= res!821074 (validKeyInArray!0 (select (arr!38344 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134927 (not res!821076)) b!1232643))

(assert (= (and b!1232643 res!821074) b!1232642))

(assert (= (and b!1232643 res!821075) b!1232641))

(assert (= (and b!1232641 c!120645) b!1232640))

(assert (= (and b!1232641 (not c!120645)) b!1232639))

(assert (= (or b!1232640 b!1232639) bm!60927))

(assert (=> b!1232641 m!1136691))

(assert (=> b!1232641 m!1136691))

(assert (=> b!1232641 m!1136693))

(assert (=> b!1232642 m!1136691))

(assert (=> b!1232642 m!1136691))

(declare-fun m!1136701 () Bool)

(assert (=> b!1232642 m!1136701))

(assert (=> bm!60927 m!1136691))

(declare-fun m!1136703 () Bool)

(assert (=> bm!60927 m!1136703))

(assert (=> b!1232643 m!1136691))

(assert (=> b!1232643 m!1136691))

(assert (=> b!1232643 m!1136693))

(assert (=> bm!60917 d!134927))

(declare-fun d!134929 () Bool)

(declare-fun res!821077 () Bool)

(declare-fun e!699214 () Bool)

(assert (=> d!134929 (=> res!821077 e!699214)))

(assert (=> d!134929 (= res!821077 (= (select (arr!38344 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) k0!2913))))

(assert (=> d!134929 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) e!699214)))

(declare-fun b!1232644 () Bool)

(declare-fun e!699215 () Bool)

(assert (=> b!1232644 (= e!699214 e!699215)))

(declare-fun res!821078 () Bool)

(assert (=> b!1232644 (=> (not res!821078) (not e!699215))))

(assert (=> b!1232644 (= res!821078 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!38881 a!3806)))))

(declare-fun b!1232645 () Bool)

(assert (=> b!1232645 (= e!699215 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!134929 (not res!821077)) b!1232644))

(assert (= (and b!1232644 res!821078) b!1232645))

(assert (=> d!134929 m!1136639))

(declare-fun m!1136705 () Bool)

(assert (=> b!1232645 m!1136705))

(assert (=> b!1232526 d!134929))

(declare-fun d!134931 () Bool)

(declare-fun lt!559495 () Bool)

(assert (=> d!134931 (= lt!559495 (select (content!576 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))) (h!28500 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))))))

(declare-fun e!699217 () Bool)

(assert (=> d!134931 (= lt!559495 e!699217)))

(declare-fun res!821079 () Bool)

(assert (=> d!134931 (=> (not res!821079) (not e!699217))))

(assert (=> d!134931 (= res!821079 ((_ is Cons!27291) (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))))))

(assert (=> d!134931 (= (contains!7210 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)) (h!28500 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))) lt!559495)))

(declare-fun b!1232646 () Bool)

(declare-fun e!699216 () Bool)

(assert (=> b!1232646 (= e!699217 e!699216)))

(declare-fun res!821080 () Bool)

(assert (=> b!1232646 (=> res!821080 e!699216)))

(assert (=> b!1232646 (= res!821080 (= (h!28500 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))) (h!28500 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))))))

(declare-fun b!1232647 () Bool)

(assert (=> b!1232647 (= e!699216 (contains!7210 (t!40765 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))) (h!28500 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))))))

(assert (= (and d!134931 res!821079) b!1232646))

(assert (= (and b!1232646 (not res!821080)) b!1232647))

(declare-fun m!1136707 () Bool)

(assert (=> d!134931 m!1136707))

(declare-fun m!1136709 () Bool)

(assert (=> d!134931 m!1136709))

(declare-fun m!1136711 () Bool)

(assert (=> b!1232647 m!1136711))

(assert (=> b!1232480 d!134931))

(declare-fun d!134933 () Bool)

(declare-fun res!821081 () Bool)

(declare-fun e!699218 () Bool)

(assert (=> d!134933 (=> res!821081 e!699218)))

(assert (=> d!134933 (= res!821081 ((_ is Nil!27292) (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))))))

(assert (=> d!134933 (= (noDuplicate!1817 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))) e!699218)))

(declare-fun b!1232648 () Bool)

(declare-fun e!699219 () Bool)

(assert (=> b!1232648 (= e!699218 e!699219)))

(declare-fun res!821082 () Bool)

(assert (=> b!1232648 (=> (not res!821082) (not e!699219))))

(assert (=> b!1232648 (= res!821082 (not (contains!7210 (t!40765 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))) (h!28500 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292))))))))

(declare-fun b!1232649 () Bool)

(assert (=> b!1232649 (= e!699219 (noDuplicate!1817 (t!40765 (t!40765 (Cons!27291 (select (arr!38344 a!3806) from!3184) Nil!27292)))))))

(assert (= (and d!134933 (not res!821081)) b!1232648))

(assert (= (and b!1232648 res!821082) b!1232649))

(declare-fun m!1136713 () Bool)

(assert (=> b!1232648 m!1136713))

(declare-fun m!1136715 () Bool)

(assert (=> b!1232649 m!1136715))

(assert (=> b!1232481 d!134933))

(assert (=> d!134843 d!134923))

(check-sat (not b!1232606) (not b!1232625) (not d!134917) (not d!134911) (not d!134915) (not bm!60925) (not b!1232647) (not d!134905) (not b!1232626) (not b!1232645) (not b!1232610) (not b!1232638) (not b!1232605) (not d!134909) (not b!1232648) (not b!1232612) (not bm!60924) (not bm!60927) (not b!1232614) (not b!1232620) (not b!1232632) (not b!1232619) (not b!1232608) (not b!1232649) (not d!134903) (not b!1232604) (not d!134907) (not b!1232616) (not b!1232630) (not b!1232621) (not b!1232641) (not b!1232627) (not d!134931) (not d!134925) (not b!1232643) (not b!1232642) (not bm!60926) (not b!1232623) (not b!1232631))
(check-sat)
