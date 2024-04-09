; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102496 () Bool)

(assert start!102496)

(declare-fun res!820854 () Bool)

(declare-fun e!699016 () Bool)

(assert (=> start!102496 (=> (not res!820854) (not e!699016))))

(declare-datatypes ((array!79466 0))(
  ( (array!79467 (arr!38343 (Array (_ BitVec 32) (_ BitVec 64))) (size!38880 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79466)

(assert (=> start!102496 (= res!820854 (bvslt (size!38880 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102496 e!699016))

(declare-fun array_inv!29119 (array!79466) Bool)

(assert (=> start!102496 (array_inv!29119 a!3806)))

(assert (=> start!102496 true))

(declare-fun b!1232369 () Bool)

(declare-fun res!820857 () Bool)

(assert (=> b!1232369 (=> (not res!820857) (not e!699016))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1232369 (= res!820857 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38880 a!3806)) (bvslt from!3184 (size!38880 a!3806))))))

(declare-fun b!1232370 () Bool)

(declare-fun e!699015 () Bool)

(declare-datatypes ((List!27294 0))(
  ( (Nil!27291) (Cons!27290 (h!28499 (_ BitVec 64)) (t!40764 List!27294)) )
))
(declare-fun noDuplicate!1816 (List!27294) Bool)

(assert (=> b!1232370 (= e!699015 (noDuplicate!1816 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291)))))

(declare-fun b!1232371 () Bool)

(declare-fun res!820861 () Bool)

(assert (=> b!1232371 (=> (not res!820861) (not e!699016))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232371 (= res!820861 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232372 () Bool)

(declare-fun res!820860 () Bool)

(assert (=> b!1232372 (=> (not res!820860) (not e!699016))))

(declare-fun acc!823 () List!27294)

(declare-fun arrayNoDuplicates!0 (array!79466 (_ BitVec 32) List!27294) Bool)

(assert (=> b!1232372 (= res!820860 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232373 () Bool)

(declare-fun res!820855 () Bool)

(assert (=> b!1232373 (=> (not res!820855) (not e!699016))))

(declare-fun contains!7209 (List!27294 (_ BitVec 64)) Bool)

(assert (=> b!1232373 (= res!820855 (not (contains!7209 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232374 () Bool)

(declare-fun e!699013 () Bool)

(assert (=> b!1232374 (= e!699013 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291)))))

(declare-fun b!1232375 () Bool)

(declare-fun res!820862 () Bool)

(assert (=> b!1232375 (=> (not res!820862) (not e!699016))))

(assert (=> b!1232375 (= res!820862 (noDuplicate!1816 acc!823))))

(declare-fun b!1232376 () Bool)

(declare-fun res!820856 () Bool)

(assert (=> b!1232376 (=> (not res!820856) (not e!699016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232376 (= res!820856 (validKeyInArray!0 k!2913))))

(declare-fun b!1232377 () Bool)

(declare-fun res!820859 () Bool)

(assert (=> b!1232377 (=> (not res!820859) (not e!699016))))

(assert (=> b!1232377 (= res!820859 (not (contains!7209 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232378 () Bool)

(assert (=> b!1232378 (= e!699016 (not e!699015))))

(declare-fun res!820858 () Bool)

(assert (=> b!1232378 (=> res!820858 e!699015)))

(assert (=> b!1232378 (= res!820858 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1232378 e!699013))

(declare-fun res!820853 () Bool)

(assert (=> b!1232378 (=> (not res!820853) (not e!699013))))

(assert (=> b!1232378 (= res!820853 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27291))))

(declare-datatypes ((Unit!40766 0))(
  ( (Unit!40767) )
))
(declare-fun lt!559460 () Unit!40766)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79466 List!27294 List!27294 (_ BitVec 32)) Unit!40766)

(assert (=> b!1232378 (= lt!559460 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27291 from!3184))))

(assert (=> b!1232378 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27290 (select (arr!38343 a!3806) from!3184) acc!823))))

(declare-fun b!1232379 () Bool)

(declare-fun res!820852 () Bool)

(assert (=> b!1232379 (=> (not res!820852) (not e!699016))))

(assert (=> b!1232379 (= res!820852 (validKeyInArray!0 (select (arr!38343 a!3806) from!3184)))))

(assert (= (and start!102496 res!820854) b!1232376))

(assert (= (and b!1232376 res!820856) b!1232369))

(assert (= (and b!1232369 res!820857) b!1232375))

(assert (= (and b!1232375 res!820862) b!1232377))

(assert (= (and b!1232377 res!820859) b!1232373))

(assert (= (and b!1232373 res!820855) b!1232371))

(assert (= (and b!1232371 res!820861) b!1232372))

(assert (= (and b!1232372 res!820860) b!1232379))

(assert (= (and b!1232379 res!820852) b!1232378))

(assert (= (and b!1232378 res!820853) b!1232374))

(assert (= (and b!1232378 (not res!820858)) b!1232370))

(declare-fun m!1136429 () Bool)

(assert (=> b!1232371 m!1136429))

(declare-fun m!1136431 () Bool)

(assert (=> b!1232379 m!1136431))

(assert (=> b!1232379 m!1136431))

(declare-fun m!1136433 () Bool)

(assert (=> b!1232379 m!1136433))

(declare-fun m!1136435 () Bool)

(assert (=> b!1232372 m!1136435))

(assert (=> b!1232370 m!1136431))

(declare-fun m!1136437 () Bool)

(assert (=> b!1232370 m!1136437))

(declare-fun m!1136439 () Bool)

(assert (=> b!1232376 m!1136439))

(declare-fun m!1136441 () Bool)

(assert (=> b!1232373 m!1136441))

(declare-fun m!1136443 () Bool)

(assert (=> b!1232375 m!1136443))

(declare-fun m!1136445 () Bool)

(assert (=> start!102496 m!1136445))

(declare-fun m!1136447 () Bool)

(assert (=> b!1232378 m!1136447))

(declare-fun m!1136449 () Bool)

(assert (=> b!1232378 m!1136449))

(assert (=> b!1232378 m!1136431))

(declare-fun m!1136451 () Bool)

(assert (=> b!1232378 m!1136451))

(assert (=> b!1232374 m!1136431))

(declare-fun m!1136453 () Bool)

(assert (=> b!1232374 m!1136453))

(declare-fun m!1136455 () Bool)

(assert (=> b!1232377 m!1136455))

(push 1)

(assert (not b!1232376))

(assert (not b!1232379))

(assert (not b!1232377))

(assert (not b!1232375))

(assert (not start!102496))

(assert (not b!1232372))

(assert (not b!1232371))

(assert (not b!1232374))

(assert (not b!1232370))

(assert (not b!1232373))

(assert (not b!1232378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1232499 () Bool)

(declare-fun e!699085 () Bool)

(declare-fun e!699087 () Bool)

(assert (=> b!1232499 (= e!699085 e!699087)))

(declare-fun res!820966 () Bool)

(assert (=> b!1232499 (=> (not res!820966) (not e!699087))))

(declare-fun e!699086 () Bool)

(assert (=> b!1232499 (= res!820966 (not e!699086))))

(declare-fun res!820965 () Bool)

(assert (=> b!1232499 (=> (not res!820965) (not e!699086))))

(assert (=> b!1232499 (= res!820965 (validKeyInArray!0 (select (arr!38343 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun c!120630 () Bool)

(declare-fun bm!60915 () Bool)

(declare-fun call!60918 () Bool)

(assert (=> bm!60915 (= call!60918 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120630 (Cons!27290 (select (arr!38343 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291)) (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291))))))

(declare-fun b!1232500 () Bool)

(declare-fun e!699088 () Bool)

(assert (=> b!1232500 (= e!699087 e!699088)))

(assert (=> b!1232500 (= c!120630 (validKeyInArray!0 (select (arr!38343 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232501 () Bool)

(assert (=> b!1232501 (= e!699088 call!60918)))

(declare-fun d!134825 () Bool)

(declare-fun res!820964 () Bool)

(assert (=> d!134825 (=> res!820964 e!699085)))

(assert (=> d!134825 (= res!820964 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38880 a!3806)))))

(assert (=> d!134825 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291)) e!699085)))

(declare-fun b!1232502 () Bool)

(assert (=> b!1232502 (= e!699088 call!60918)))

(declare-fun b!1232503 () Bool)

(assert (=> b!1232503 (= e!699086 (contains!7209 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291) (select (arr!38343 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134825 (not res!820964)) b!1232499))

(assert (= (and b!1232499 res!820965) b!1232503))

(assert (= (and b!1232499 res!820966) b!1232500))

(assert (= (and b!1232500 c!120630) b!1232501))

(assert (= (and b!1232500 (not c!120630)) b!1232502))

(assert (= (or b!1232501 b!1232502) bm!60915))

(declare-fun m!1136539 () Bool)

(assert (=> b!1232499 m!1136539))

(assert (=> b!1232499 m!1136539))

(declare-fun m!1136541 () Bool)

(assert (=> b!1232499 m!1136541))

(assert (=> bm!60915 m!1136539))

(declare-fun m!1136543 () Bool)

(assert (=> bm!60915 m!1136543))

(assert (=> b!1232500 m!1136539))

(assert (=> b!1232500 m!1136539))

(assert (=> b!1232500 m!1136541))

(assert (=> b!1232503 m!1136539))

(assert (=> b!1232503 m!1136539))

(declare-fun m!1136545 () Bool)

(assert (=> b!1232503 m!1136545))

(assert (=> b!1232374 d!134825))

(declare-fun d!134845 () Bool)

(assert (=> d!134845 (= (validKeyInArray!0 (select (arr!38343 a!3806) from!3184)) (and (not (= (select (arr!38343 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38343 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232379 d!134845))

(declare-fun d!134853 () Bool)

(declare-fun res!820991 () Bool)

(declare-fun e!699115 () Bool)

(assert (=> d!134853 (=> res!820991 e!699115)))

(assert (=> d!134853 (= res!820991 (is-Nil!27291 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291)))))

(assert (=> d!134853 (= (noDuplicate!1816 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291)) e!699115)))

(declare-fun b!1232532 () Bool)

(declare-fun e!699116 () Bool)

(assert (=> b!1232532 (= e!699115 e!699116)))

(declare-fun res!820992 () Bool)

(assert (=> b!1232532 (=> (not res!820992) (not e!699116))))

(assert (=> b!1232532 (= res!820992 (not (contains!7209 (t!40764 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291)) (h!28499 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291)))))))

(declare-fun b!1232533 () Bool)

(assert (=> b!1232533 (= e!699116 (noDuplicate!1816 (t!40764 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291))))))

(assert (= (and d!134853 (not res!820991)) b!1232532))

(assert (= (and b!1232532 res!820992) b!1232533))

(declare-fun m!1136567 () Bool)

(assert (=> b!1232532 m!1136567))

(declare-fun m!1136569 () Bool)

(assert (=> b!1232533 m!1136569))

(assert (=> b!1232370 d!134853))

(declare-fun d!134859 () Bool)

(declare-fun res!820993 () Bool)

(declare-fun e!699117 () Bool)

(assert (=> d!134859 (=> res!820993 e!699117)))

(assert (=> d!134859 (= res!820993 (is-Nil!27291 acc!823))))

(assert (=> d!134859 (= (noDuplicate!1816 acc!823) e!699117)))

(declare-fun b!1232534 () Bool)

(declare-fun e!699118 () Bool)

(assert (=> b!1232534 (= e!699117 e!699118)))

(declare-fun res!820994 () Bool)

(assert (=> b!1232534 (=> (not res!820994) (not e!699118))))

(assert (=> b!1232534 (= res!820994 (not (contains!7209 (t!40764 acc!823) (h!28499 acc!823))))))

(declare-fun b!1232535 () Bool)

(assert (=> b!1232535 (= e!699118 (noDuplicate!1816 (t!40764 acc!823)))))

(assert (= (and d!134859 (not res!820993)) b!1232534))

(assert (= (and b!1232534 res!820994) b!1232535))

(declare-fun m!1136571 () Bool)

(assert (=> b!1232534 m!1136571))

(declare-fun m!1136573 () Bool)

(assert (=> b!1232535 m!1136573))

(assert (=> b!1232375 d!134859))

(declare-fun d!134861 () Bool)

(assert (=> d!134861 (= (array_inv!29119 a!3806) (bvsge (size!38880 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102496 d!134861))

(declare-fun d!134863 () Bool)

(declare-fun lt!559479 () Bool)

(declare-fun content!577 (List!27294) (Set (_ BitVec 64)))

(assert (=> d!134863 (= lt!559479 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!577 acc!823)))))

(declare-fun e!699127 () Bool)

(assert (=> d!134863 (= lt!559479 e!699127)))

(declare-fun res!821003 () Bool)

(assert (=> d!134863 (=> (not res!821003) (not e!699127))))

(assert (=> d!134863 (= res!821003 (is-Cons!27290 acc!823))))

(assert (=> d!134863 (= (contains!7209 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559479)))

(declare-fun b!1232545 () Bool)

(declare-fun e!699128 () Bool)

(assert (=> b!1232545 (= e!699127 e!699128)))

(declare-fun res!821002 () Bool)

(assert (=> b!1232545 (=> res!821002 e!699128)))

(assert (=> b!1232545 (= res!821002 (= (h!28499 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232546 () Bool)

(assert (=> b!1232546 (= e!699128 (contains!7209 (t!40764 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134863 res!821003) b!1232545))

(assert (= (and b!1232545 (not res!821002)) b!1232546))

(declare-fun m!1136585 () Bool)

(assert (=> d!134863 m!1136585))

(declare-fun m!1136587 () Bool)

(assert (=> d!134863 m!1136587))

(declare-fun m!1136589 () Bool)

(assert (=> b!1232546 m!1136589))

(assert (=> b!1232377 d!134863))

(declare-fun d!134869 () Bool)

(declare-fun res!821017 () Bool)

(declare-fun e!699143 () Bool)

(assert (=> d!134869 (=> res!821017 e!699143)))

(assert (=> d!134869 (= res!821017 (= (select (arr!38343 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134869 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!699143)))

(declare-fun b!1232562 () Bool)

(declare-fun e!699144 () Bool)

(assert (=> b!1232562 (= e!699143 e!699144)))

(declare-fun res!821018 () Bool)

(assert (=> b!1232562 (=> (not res!821018) (not e!699144))))

(assert (=> b!1232562 (= res!821018 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38880 a!3806)))))

(declare-fun b!1232563 () Bool)

(assert (=> b!1232563 (= e!699144 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134869 (not res!821017)) b!1232562))

(assert (= (and b!1232562 res!821018) b!1232563))

(assert (=> d!134869 m!1136539))

(declare-fun m!1136599 () Bool)

(assert (=> b!1232563 m!1136599))

(assert (=> b!1232371 d!134869))

(declare-fun d!134875 () Bool)

(assert (=> d!134875 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232376 d!134875))

(declare-fun d!134877 () Bool)

(declare-fun lt!559480 () Bool)

(assert (=> d!134877 (= lt!559480 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!577 acc!823)))))

(declare-fun e!699145 () Bool)

(assert (=> d!134877 (= lt!559480 e!699145)))

(declare-fun res!821020 () Bool)

(assert (=> d!134877 (=> (not res!821020) (not e!699145))))

(assert (=> d!134877 (= res!821020 (is-Cons!27290 acc!823))))

(assert (=> d!134877 (= (contains!7209 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559480)))

(declare-fun b!1232564 () Bool)

(declare-fun e!699146 () Bool)

(assert (=> b!1232564 (= e!699145 e!699146)))

(declare-fun res!821019 () Bool)

(assert (=> b!1232564 (=> res!821019 e!699146)))

(assert (=> b!1232564 (= res!821019 (= (h!28499 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232565 () Bool)

(assert (=> b!1232565 (= e!699146 (contains!7209 (t!40764 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134877 res!821020) b!1232564))

(assert (= (and b!1232564 (not res!821019)) b!1232565))

(assert (=> d!134877 m!1136585))

(declare-fun m!1136601 () Bool)

(assert (=> d!134877 m!1136601))

(declare-fun m!1136603 () Bool)

(assert (=> b!1232565 m!1136603))

(assert (=> b!1232373 d!134877))

(declare-fun b!1232566 () Bool)

(declare-fun e!699147 () Bool)

(declare-fun e!699149 () Bool)

(assert (=> b!1232566 (= e!699147 e!699149)))

(declare-fun res!821023 () Bool)

(assert (=> b!1232566 (=> (not res!821023) (not e!699149))))

(declare-fun e!699148 () Bool)

(assert (=> b!1232566 (= res!821023 (not e!699148))))

(declare-fun res!821022 () Bool)

(assert (=> b!1232566 (=> (not res!821022) (not e!699148))))

(assert (=> b!1232566 (= res!821022 (validKeyInArray!0 (select (arr!38343 a!3806) from!3184)))))

(declare-fun c!120635 () Bool)

(declare-fun bm!60920 () Bool)

(declare-fun call!60923 () Bool)

(assert (=> bm!60920 (= call!60923 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120635 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291) Nil!27291)))))

(declare-fun b!1232567 () Bool)

(declare-fun e!699150 () Bool)

(assert (=> b!1232567 (= e!699149 e!699150)))

(assert (=> b!1232567 (= c!120635 (validKeyInArray!0 (select (arr!38343 a!3806) from!3184)))))

(declare-fun b!1232568 () Bool)

(assert (=> b!1232568 (= e!699150 call!60923)))

(declare-fun d!134879 () Bool)

(declare-fun res!821021 () Bool)

(assert (=> d!134879 (=> res!821021 e!699147)))

(assert (=> d!134879 (= res!821021 (bvsge from!3184 (size!38880 a!3806)))))

(assert (=> d!134879 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27291) e!699147)))

(declare-fun b!1232569 () Bool)

(assert (=> b!1232569 (= e!699150 call!60923)))

(declare-fun b!1232570 () Bool)

(assert (=> b!1232570 (= e!699148 (contains!7209 Nil!27291 (select (arr!38343 a!3806) from!3184)))))

(assert (= (and d!134879 (not res!821021)) b!1232566))

(assert (= (and b!1232566 res!821022) b!1232570))

(assert (= (and b!1232566 res!821023) b!1232567))

(assert (= (and b!1232567 c!120635) b!1232568))

(assert (= (and b!1232567 (not c!120635)) b!1232569))

(assert (= (or b!1232568 b!1232569) bm!60920))

(assert (=> b!1232566 m!1136431))

(assert (=> b!1232566 m!1136431))

(assert (=> b!1232566 m!1136433))

(assert (=> bm!60920 m!1136431))

(declare-fun m!1136605 () Bool)

(assert (=> bm!60920 m!1136605))

(assert (=> b!1232567 m!1136431))

(assert (=> b!1232567 m!1136431))

(assert (=> b!1232567 m!1136433))

(assert (=> b!1232570 m!1136431))

(assert (=> b!1232570 m!1136431))

(declare-fun m!1136607 () Bool)

(assert (=> b!1232570 m!1136607))

(assert (=> b!1232378 d!134879))

(declare-fun d!134881 () Bool)

(assert (=> d!134881 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27291)))

(declare-fun lt!559486 () Unit!40766)

(declare-fun choose!80 (array!79466 List!27294 List!27294 (_ BitVec 32)) Unit!40766)

(assert (=> d!134881 (= lt!559486 (choose!80 a!3806 acc!823 Nil!27291 from!3184))))

(assert (=> d!134881 (bvslt (size!38880 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!134881 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27291 from!3184) lt!559486)))

(declare-fun bs!34634 () Bool)

(assert (= bs!34634 d!134881))

(assert (=> bs!34634 m!1136447))

(declare-fun m!1136615 () Bool)

(assert (=> bs!34634 m!1136615))

(assert (=> b!1232378 d!134881))

(declare-fun b!1232577 () Bool)

(declare-fun e!699157 () Bool)

(declare-fun e!699159 () Bool)

(assert (=> b!1232577 (= e!699157 e!699159)))

(declare-fun res!821032 () Bool)

(assert (=> b!1232577 (=> (not res!821032) (not e!699159))))

(declare-fun e!699158 () Bool)

(assert (=> b!1232577 (= res!821032 (not e!699158))))

(declare-fun res!821031 () Bool)

(assert (=> b!1232577 (=> (not res!821031) (not e!699158))))

(assert (=> b!1232577 (= res!821031 (validKeyInArray!0 (select (arr!38343 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun bm!60921 () Bool)

(declare-fun call!60924 () Bool)

(declare-fun c!120636 () Bool)

(assert (=> bm!60921 (= call!60924 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120636 (Cons!27290 (select (arr!38343 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27290 (select (arr!38343 a!3806) from!3184) acc!823)) (Cons!27290 (select (arr!38343 a!3806) from!3184) acc!823))))))

(declare-fun b!1232578 () Bool)

(declare-fun e!699160 () Bool)

(assert (=> b!1232578 (= e!699159 e!699160)))

(assert (=> b!1232578 (= c!120636 (validKeyInArray!0 (select (arr!38343 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232579 () Bool)

(assert (=> b!1232579 (= e!699160 call!60924)))

(declare-fun d!134885 () Bool)

(declare-fun res!821030 () Bool)

(assert (=> d!134885 (=> res!821030 e!699157)))

(assert (=> d!134885 (= res!821030 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38880 a!3806)))))

(assert (=> d!134885 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27290 (select (arr!38343 a!3806) from!3184) acc!823)) e!699157)))

(declare-fun b!1232580 () Bool)

(assert (=> b!1232580 (= e!699160 call!60924)))

(declare-fun b!1232581 () Bool)

(assert (=> b!1232581 (= e!699158 (contains!7209 (Cons!27290 (select (arr!38343 a!3806) from!3184) acc!823) (select (arr!38343 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134885 (not res!821030)) b!1232577))

(assert (= (and b!1232577 res!821031) b!1232581))

(assert (= (and b!1232577 res!821032) b!1232578))

(assert (= (and b!1232578 c!120636) b!1232579))

(assert (= (and b!1232578 (not c!120636)) b!1232580))

(assert (= (or b!1232579 b!1232580) bm!60921))

(assert (=> b!1232577 m!1136539))

(assert (=> b!1232577 m!1136539))

(assert (=> b!1232577 m!1136541))

(assert (=> bm!60921 m!1136539))

(declare-fun m!1136617 () Bool)

(assert (=> bm!60921 m!1136617))

(assert (=> b!1232578 m!1136539))

(assert (=> b!1232578 m!1136539))

(assert (=> b!1232578 m!1136541))

(assert (=> b!1232581 m!1136539))

(assert (=> b!1232581 m!1136539))

(declare-fun m!1136619 () Bool)

(assert (=> b!1232581 m!1136619))

(assert (=> b!1232378 d!134885))

(declare-fun b!1232586 () Bool)

(declare-fun e!699165 () Bool)

(declare-fun e!699167 () Bool)

(assert (=> b!1232586 (= e!699165 e!699167)))

(declare-fun res!821039 () Bool)

(assert (=> b!1232586 (=> (not res!821039) (not e!699167))))

(declare-fun e!699166 () Bool)

(assert (=> b!1232586 (= res!821039 (not e!699166))))

(declare-fun res!821038 () Bool)

(assert (=> b!1232586 (=> (not res!821038) (not e!699166))))

(assert (=> b!1232586 (= res!821038 (validKeyInArray!0 (select (arr!38343 a!3806) from!3184)))))

(declare-fun c!120637 () Bool)

(declare-fun call!60925 () Bool)

(declare-fun bm!60922 () Bool)

(assert (=> bm!60922 (= call!60925 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120637 (Cons!27290 (select (arr!38343 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1232587 () Bool)

(declare-fun e!699168 () Bool)

(assert (=> b!1232587 (= e!699167 e!699168)))

(assert (=> b!1232587 (= c!120637 (validKeyInArray!0 (select (arr!38343 a!3806) from!3184)))))

(declare-fun b!1232588 () Bool)

(assert (=> b!1232588 (= e!699168 call!60925)))

(declare-fun d!134887 () Bool)

(declare-fun res!821037 () Bool)

(assert (=> d!134887 (=> res!821037 e!699165)))

(assert (=> d!134887 (= res!821037 (bvsge from!3184 (size!38880 a!3806)))))

(assert (=> d!134887 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!699165)))

(declare-fun b!1232589 () Bool)

(assert (=> b!1232589 (= e!699168 call!60925)))

(declare-fun b!1232590 () Bool)

(assert (=> b!1232590 (= e!699166 (contains!7209 acc!823 (select (arr!38343 a!3806) from!3184)))))

(assert (= (and d!134887 (not res!821037)) b!1232586))

(assert (= (and b!1232586 res!821038) b!1232590))

(assert (= (and b!1232586 res!821039) b!1232587))

(assert (= (and b!1232587 c!120637) b!1232588))

(assert (= (and b!1232587 (not c!120637)) b!1232589))

(assert (= (or b!1232588 b!1232589) bm!60922))

(assert (=> b!1232586 m!1136431))

(assert (=> b!1232586 m!1136431))

(assert (=> b!1232586 m!1136433))

(assert (=> bm!60922 m!1136431))

(declare-fun m!1136621 () Bool)

(assert (=> bm!60922 m!1136621))

(assert (=> b!1232587 m!1136431))

(assert (=> b!1232587 m!1136431))

(assert (=> b!1232587 m!1136433))

(assert (=> b!1232590 m!1136431))

(assert (=> b!1232590 m!1136431))

(declare-fun m!1136625 () Bool)

(assert (=> b!1232590 m!1136625))

(assert (=> b!1232372 d!134887))

(push 1)

(assert (not d!134863))

(assert (not d!134877))

(assert (not d!134881))

(assert (not bm!60921))

(assert (not b!1232503))

(assert (not b!1232499))

(assert (not bm!60915))

(assert (not b!1232578))

(assert (not bm!60920))

(assert (not b!1232533))

(assert (not b!1232586))

(assert (not b!1232581))

(assert (not b!1232546))

(assert (not b!1232565))

(assert (not b!1232532))

(assert (not bm!60922))

(assert (not b!1232570))

(assert (not b!1232567))

(assert (not b!1232534))

(assert (not b!1232535))

(assert (not b!1232577))

(assert (not b!1232587))

(assert (not b!1232500))

(assert (not b!1232563))

(assert (not b!1232566))

(assert (not b!1232590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1232650 () Bool)

(declare-fun e!699220 () Bool)

(declare-fun e!699222 () Bool)

(assert (=> b!1232650 (= e!699220 e!699222)))

(declare-fun res!821085 () Bool)

(assert (=> b!1232650 (=> (not res!821085) (not e!699222))))

(declare-fun e!699221 () Bool)

(assert (=> b!1232650 (= res!821085 (not e!699221))))

(declare-fun res!821084 () Bool)

(assert (=> b!1232650 (=> (not res!821084) (not e!699221))))

(assert (=> b!1232650 (= res!821084 (validKeyInArray!0 (select (arr!38343 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun bm!60928 () Bool)

(declare-fun c!120646 () Bool)

(declare-fun call!60931 () Bool)

(assert (=> bm!60928 (= call!60931 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120646 (Cons!27290 (select (arr!38343 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120635 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291) Nil!27291)) (ite c!120635 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291) Nil!27291))))))

(declare-fun b!1232651 () Bool)

(declare-fun e!699223 () Bool)

(assert (=> b!1232651 (= e!699222 e!699223)))

(assert (=> b!1232651 (= c!120646 (validKeyInArray!0 (select (arr!38343 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1232652 () Bool)

(assert (=> b!1232652 (= e!699223 call!60931)))

(declare-fun d!134935 () Bool)

(declare-fun res!821083 () Bool)

(assert (=> d!134935 (=> res!821083 e!699220)))

(assert (=> d!134935 (= res!821083 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38880 a!3806)))))

(assert (=> d!134935 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120635 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291) Nil!27291)) e!699220)))

(declare-fun b!1232653 () Bool)

(assert (=> b!1232653 (= e!699223 call!60931)))

(declare-fun b!1232654 () Bool)

(assert (=> b!1232654 (= e!699221 (contains!7209 (ite c!120635 (Cons!27290 (select (arr!38343 a!3806) from!3184) Nil!27291) Nil!27291) (select (arr!38343 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134935 (not res!821083)) b!1232650))

(assert (= (and b!1232650 res!821084) b!1232654))

(assert (= (and b!1232650 res!821085) b!1232651))

(assert (= (and b!1232651 c!120646) b!1232652))

(assert (= (and b!1232651 (not c!120646)) b!1232653))

(assert (= (or b!1232652 b!1232653) bm!60928))

(declare-fun m!1136717 () Bool)

(assert (=> b!1232650 m!1136717))

(assert (=> b!1232650 m!1136717))

(declare-fun m!1136719 () Bool)

(assert (=> b!1232650 m!1136719))

(assert (=> bm!60928 m!1136717))

(declare-fun m!1136721 () Bool)

(assert (=> bm!60928 m!1136721))

(assert (=> b!1232651 m!1136717))

(assert (=> b!1232651 m!1136717))

(assert (=> b!1232651 m!1136719))

(assert (=> b!1232654 m!1136717))

(assert (=> b!1232654 m!1136717))

(declare-fun m!1136723 () Bool)

(assert (=> b!1232654 m!1136723))

(assert (=> bm!60920 d!134935))

(assert (=> b!1232566 d!134845))

(declare-fun b!1232655 () Bool)

(declare-fun e!699224 () Bool)

(declare-fun e!699226 () Bool)

(assert (=> b!1232655 (= e!699224 e!699226)))

(declare-fun res!821088 () Bool)

(assert (=> b!1232655 (=> (not res!821088) (not e!699226))))

(declare-fun e!699225 () Bool)

(assert (=> b!1232655 (= res!821088 (not e!699225))))

(declare-fun res!821087 () Bool)

(assert (=> b!1232655 (=> (not res!821087) (not e!699225))))

(assert (=> b!1232655 (= res!821087 (validKeyInArray!0 (select (arr!38343 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun c!120647 () Bool)

(declare-fun call!60932 () Bool)

(declare-fun bm!60929 () Bool)

(assert (=> bm!60929 (= call!60932 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120647 (Cons!27290 (select (arr!38343 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120637 (Cons!27290 (select (arr!38343 a!3806) from!3184) acc!823) acc!823)) (ite c!120637 (Cons!27290 (select (arr!38343 a!3806) from!3184) acc!823) acc!823))))))

(declare-fun b!1232656 () Bool)

(declare-fun e!699227 () Bool)

(assert (=> b!1232656 (= e!699226 e!699227)))

(assert (=> b!1232656 (= c!120647 (validKeyInArray!0 (select (arr!38343 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1232657 () Bool)

(assert (=> b!1232657 (= e!699227 call!60932)))

(declare-fun d!134937 () Bool)

(declare-fun res!821086 () Bool)

(assert (=> d!134937 (=> res!821086 e!699224)))

(assert (=> d!134937 (= res!821086 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38880 a!3806)))))

(assert (=> d!134937 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120637 (Cons!27290 (select (arr!38343 a!3806) from!3184) acc!823) acc!823)) e!699224)))

(declare-fun b!1232658 () Bool)

(assert (=> b!1232658 (= e!699227 call!60932)))

(declare-fun b!1232659 () Bool)

(assert (=> b!1232659 (= e!699225 (contains!7209 (ite c!120637 (Cons!27290 (select (arr!38343 a!3806) from!3184) acc!823) acc!823) (select (arr!38343 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134937 (not res!821086)) b!1232655))

(assert (= (and b!1232655 res!821087) b!1232659))

(assert (= (and b!1232655 res!821088) b!1232656))

(assert (= (and b!1232656 c!120647) b!1232657))

(assert (= (and b!1232656 (not c!120647)) b!1232658))

(assert (= (or b!1232657 b!1232658) bm!60929))

(assert (=> b!1232655 m!1136717))

(assert (=> b!1232655 m!1136717))

(assert (=> b!1232655 m!1136719))

(assert (=> bm!60929 m!1136717))

(declare-fun m!1136725 () Bool)

(assert (=> bm!60929 m!1136725))

(assert (=> b!1232656 m!1136717))

(assert (=> b!1232656 m!1136717))

(assert (=> b!1232656 m!1136719))

(assert (=> b!1232659 m!1136717))

(assert (=> b!1232659 m!1136717))

(declare-fun m!1136727 () Bool)

(assert (=> b!1232659 m!1136727))

(assert (=> bm!60922 d!134937))

(assert (=> b!1232567 d!134845))

(assert (=> b!1232587 d!134845))

(declare-fun d!134939 () Bool)

(declare-fun lt!559496 () Bool)

(assert (=> d!134939 (= lt!559496 (set.member (select (arr!38343 a!3806) from!3184) (content!577 Nil!27291)))))

(declare-fun e!699228 () Bool)

(assert (=> d!134939 (= lt!559496 e!699228)))

(declare-fun res!821090 () Bool)

(assert (=> d!134939 (=> (not res!821090) (not e!699228))))

(assert (=> d!134939 (= res!821090 (is-Cons!27290 Nil!27291))))

(assert (=> d!134939 (= (contains!7209 Nil!27291 (select (arr!38343 a!3806) from!3184)) lt!559496)))

(declare-fun b!1232660 () Bool)

(declare-fun e!699229 () Bool)

(assert (=> b!1232660 (= e!699228 e!699229)))

(declare-fun res!821089 () Bool)

(assert (=> b!1232660 (=> res!821089 e!699229)))

(assert (=> b!1232660 (= res!821089 (= (h!28499 Nil!27291) (select (arr!38343 a!3806) from!3184)))))

(declare-fun b!1232661 () Bool)

