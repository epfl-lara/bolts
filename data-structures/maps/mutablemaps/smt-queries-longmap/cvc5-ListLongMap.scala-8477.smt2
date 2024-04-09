; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103248 () Bool)

(assert start!103248)

(declare-fun b!1238946 () Bool)

(declare-fun res!826624 () Bool)

(declare-fun e!702132 () Bool)

(assert (=> b!1238946 (=> (not res!826624) (not e!702132))))

(declare-datatypes ((List!27465 0))(
  ( (Nil!27462) (Cons!27461 (h!28670 (_ BitVec 64)) (t!40935 List!27465)) )
))
(declare-fun acc!846 () List!27465)

(declare-fun contains!7380 (List!27465 (_ BitVec 64)) Bool)

(assert (=> b!1238946 (= res!826624 (not (contains!7380 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238947 () Bool)

(declare-fun res!826629 () Bool)

(assert (=> b!1238947 (=> (not res!826629) (not e!702132))))

(declare-fun noDuplicate!1987 (List!27465) Bool)

(assert (=> b!1238947 (= res!826629 (noDuplicate!1987 acc!846))))

(declare-fun b!1238948 () Bool)

(declare-fun res!826626 () Bool)

(assert (=> b!1238948 (=> (not res!826626) (not e!702132))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1238948 (= res!826626 (contains!7380 acc!846 k!2925))))

(declare-fun res!826628 () Bool)

(assert (=> start!103248 (=> (not res!826628) (not e!702132))))

(declare-datatypes ((array!79832 0))(
  ( (array!79833 (arr!38514 (Array (_ BitVec 32) (_ BitVec 64))) (size!39051 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79832)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103248 (= res!826628 (and (bvslt (size!39051 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39051 a!3835))))))

(assert (=> start!103248 e!702132))

(declare-fun array_inv!29290 (array!79832) Bool)

(assert (=> start!103248 (array_inv!29290 a!3835)))

(assert (=> start!103248 true))

(declare-fun b!1238949 () Bool)

(declare-datatypes ((Unit!41103 0))(
  ( (Unit!41104) )
))
(declare-fun e!702131 () Unit!41103)

(declare-fun lt!561517 () Unit!41103)

(assert (=> b!1238949 (= e!702131 lt!561517)))

(declare-fun lt!561516 () List!27465)

(assert (=> b!1238949 (= lt!561516 (Cons!27461 (select (arr!38514 a!3835) from!3213) acc!846))))

(declare-fun lt!561515 () Unit!41103)

(declare-fun lemmaListSubSeqRefl!0 (List!27465) Unit!41103)

(assert (=> b!1238949 (= lt!561515 (lemmaListSubSeqRefl!0 lt!561516))))

(declare-fun subseq!617 (List!27465 List!27465) Bool)

(assert (=> b!1238949 (subseq!617 lt!561516 lt!561516)))

(declare-fun lt!561514 () Unit!41103)

(declare-fun subseqTail!104 (List!27465 List!27465) Unit!41103)

(assert (=> b!1238949 (= lt!561514 (subseqTail!104 lt!561516 lt!561516))))

(assert (=> b!1238949 (subseq!617 acc!846 lt!561516)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79832 List!27465 List!27465 (_ BitVec 32)) Unit!41103)

(assert (=> b!1238949 (= lt!561517 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561516 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79832 (_ BitVec 32) List!27465) Bool)

(assert (=> b!1238949 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238950 () Bool)

(declare-fun res!826630 () Bool)

(assert (=> b!1238950 (=> (not res!826630) (not e!702132))))

(assert (=> b!1238950 (= res!826630 (not (= from!3213 (bvsub (size!39051 a!3835) #b00000000000000000000000000000001))))))

(declare-fun e!702134 () Bool)

(declare-fun b!1238951 () Bool)

(assert (=> b!1238951 (= e!702134 (not (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))))

(declare-fun b!1238952 () Bool)

(declare-fun res!826623 () Bool)

(assert (=> b!1238952 (=> (not res!826623) (not e!702132))))

(assert (=> b!1238952 (= res!826623 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238953 () Bool)

(declare-fun res!826625 () Bool)

(assert (=> b!1238953 (=> (not res!826625) (not e!702132))))

(assert (=> b!1238953 (= res!826625 (not (contains!7380 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238954 () Bool)

(declare-fun Unit!41105 () Unit!41103)

(assert (=> b!1238954 (= e!702131 Unit!41105)))

(declare-fun b!1238955 () Bool)

(assert (=> b!1238955 (= e!702132 e!702134)))

(declare-fun res!826627 () Bool)

(assert (=> b!1238955 (=> (not res!826627) (not e!702134))))

(assert (=> b!1238955 (= res!826627 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39051 a!3835))))))

(declare-fun lt!561513 () Unit!41103)

(assert (=> b!1238955 (= lt!561513 e!702131)))

(declare-fun c!121024 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238955 (= c!121024 (validKeyInArray!0 (select (arr!38514 a!3835) from!3213)))))

(assert (= (and start!103248 res!826628) b!1238947))

(assert (= (and b!1238947 res!826629) b!1238953))

(assert (= (and b!1238953 res!826625) b!1238946))

(assert (= (and b!1238946 res!826624) b!1238952))

(assert (= (and b!1238952 res!826623) b!1238948))

(assert (= (and b!1238948 res!826626) b!1238950))

(assert (= (and b!1238950 res!826630) b!1238955))

(assert (= (and b!1238955 c!121024) b!1238949))

(assert (= (and b!1238955 (not c!121024)) b!1238954))

(assert (= (and b!1238955 res!826627) b!1238951))

(declare-fun m!1142501 () Bool)

(assert (=> b!1238951 m!1142501))

(declare-fun m!1142503 () Bool)

(assert (=> b!1238953 m!1142503))

(declare-fun m!1142505 () Bool)

(assert (=> b!1238946 m!1142505))

(declare-fun m!1142507 () Bool)

(assert (=> b!1238949 m!1142507))

(declare-fun m!1142509 () Bool)

(assert (=> b!1238949 m!1142509))

(assert (=> b!1238949 m!1142501))

(declare-fun m!1142511 () Bool)

(assert (=> b!1238949 m!1142511))

(declare-fun m!1142513 () Bool)

(assert (=> b!1238949 m!1142513))

(declare-fun m!1142515 () Bool)

(assert (=> b!1238949 m!1142515))

(declare-fun m!1142517 () Bool)

(assert (=> b!1238949 m!1142517))

(declare-fun m!1142519 () Bool)

(assert (=> b!1238947 m!1142519))

(assert (=> b!1238955 m!1142511))

(assert (=> b!1238955 m!1142511))

(declare-fun m!1142521 () Bool)

(assert (=> b!1238955 m!1142521))

(declare-fun m!1142523 () Bool)

(assert (=> start!103248 m!1142523))

(declare-fun m!1142525 () Bool)

(assert (=> b!1238948 m!1142525))

(declare-fun m!1142527 () Bool)

(assert (=> b!1238952 m!1142527))

(push 1)

(assert (not b!1238952))

(assert (not b!1238953))

(assert (not b!1238955))

(assert (not b!1238946))

(assert (not b!1238949))

(assert (not b!1238951))

(assert (not b!1238947))

(assert (not b!1238948))

(assert (not start!103248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!135873 () Bool)

(assert (=> d!135873 (= (validKeyInArray!0 (select (arr!38514 a!3835) from!3213)) (and (not (= (select (arr!38514 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38514 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1238955 d!135873))

(declare-fun d!135875 () Bool)

(assert (=> d!135875 (= (array_inv!29290 a!3835) (bvsge (size!39051 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103248 d!135875))

(declare-fun b!1239064 () Bool)

(declare-fun e!702201 () Bool)

(assert (=> b!1239064 (= e!702201 (contains!7380 acc!846 (select (arr!38514 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1239065 () Bool)

(declare-fun e!702202 () Bool)

(declare-fun call!61080 () Bool)

(assert (=> b!1239065 (= e!702202 call!61080)))

(declare-fun b!1239066 () Bool)

(assert (=> b!1239066 (= e!702202 call!61080)))

(declare-fun b!1239067 () Bool)

(declare-fun e!702200 () Bool)

(assert (=> b!1239067 (= e!702200 e!702202)))

(declare-fun c!121039 () Bool)

(assert (=> b!1239067 (= c!121039 (validKeyInArray!0 (select (arr!38514 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun d!135877 () Bool)

(declare-fun res!826713 () Bool)

(declare-fun e!702199 () Bool)

(assert (=> d!135877 (=> res!826713 e!702199)))

(assert (=> d!135877 (= res!826713 (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39051 a!3835)))))

(assert (=> d!135877 (= (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846) e!702199)))

(declare-fun b!1239068 () Bool)

(assert (=> b!1239068 (= e!702199 e!702200)))

(declare-fun res!826711 () Bool)

(assert (=> b!1239068 (=> (not res!826711) (not e!702200))))

(assert (=> b!1239068 (= res!826711 (not e!702201))))

(declare-fun res!826712 () Bool)

(assert (=> b!1239068 (=> (not res!826712) (not e!702201))))

(assert (=> b!1239068 (= res!826712 (validKeyInArray!0 (select (arr!38514 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun bm!61077 () Bool)

(assert (=> bm!61077 (= call!61080 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001) (ite c!121039 (Cons!27461 (select (arr!38514 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) acc!846) acc!846)))))

(assert (= (and d!135877 (not res!826713)) b!1239068))

(assert (= (and b!1239068 res!826712) b!1239064))

(assert (= (and b!1239068 res!826711) b!1239067))

(assert (= (and b!1239067 c!121039) b!1239066))

(assert (= (and b!1239067 (not c!121039)) b!1239065))

(assert (= (or b!1239066 b!1239065) bm!61077))

(declare-fun m!1142611 () Bool)

(assert (=> b!1239064 m!1142611))

(assert (=> b!1239064 m!1142611))

(declare-fun m!1142613 () Bool)

(assert (=> b!1239064 m!1142613))

(assert (=> b!1239067 m!1142611))

(assert (=> b!1239067 m!1142611))

(declare-fun m!1142615 () Bool)

(assert (=> b!1239067 m!1142615))

(assert (=> b!1239068 m!1142611))

(assert (=> b!1239068 m!1142611))

(assert (=> b!1239068 m!1142615))

(assert (=> bm!61077 m!1142611))

(declare-fun m!1142619 () Bool)

(assert (=> bm!61077 m!1142619))

(assert (=> b!1238951 d!135877))

(declare-fun d!135889 () Bool)

(declare-fun lt!561562 () Bool)

(declare-fun content!600 (List!27465) (Set (_ BitVec 64)))

(assert (=> d!135889 (= lt!561562 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!600 acc!846)))))

(declare-fun e!702232 () Bool)

(assert (=> d!135889 (= lt!561562 e!702232)))

(declare-fun res!826742 () Bool)

(assert (=> d!135889 (=> (not res!826742) (not e!702232))))

(assert (=> d!135889 (= res!826742 (is-Cons!27461 acc!846))))

(assert (=> d!135889 (= (contains!7380 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561562)))

(declare-fun b!1239098 () Bool)

(declare-fun e!702231 () Bool)

(assert (=> b!1239098 (= e!702232 e!702231)))

(declare-fun res!826741 () Bool)

(assert (=> b!1239098 (=> res!826741 e!702231)))

(assert (=> b!1239098 (= res!826741 (= (h!28670 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239099 () Bool)

(assert (=> b!1239099 (= e!702231 (contains!7380 (t!40935 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135889 res!826742) b!1239098))

(assert (= (and b!1239098 (not res!826741)) b!1239099))

(declare-fun m!1142627 () Bool)

(assert (=> d!135889 m!1142627))

(declare-fun m!1142631 () Bool)

(assert (=> d!135889 m!1142631))

(declare-fun m!1142635 () Bool)

(assert (=> b!1239099 m!1142635))

(assert (=> b!1238946 d!135889))

(declare-fun b!1239102 () Bool)

(declare-fun e!702237 () Bool)

(assert (=> b!1239102 (= e!702237 (contains!7380 acc!846 (select (arr!38514 a!3835) from!3213)))))

(declare-fun b!1239103 () Bool)

(declare-fun e!702238 () Bool)

(declare-fun call!61082 () Bool)

(assert (=> b!1239103 (= e!702238 call!61082)))

(declare-fun b!1239104 () Bool)

(assert (=> b!1239104 (= e!702238 call!61082)))

(declare-fun b!1239105 () Bool)

(declare-fun e!702236 () Bool)

(assert (=> b!1239105 (= e!702236 e!702238)))

(declare-fun c!121041 () Bool)

(assert (=> b!1239105 (= c!121041 (validKeyInArray!0 (select (arr!38514 a!3835) from!3213)))))

(declare-fun d!135897 () Bool)

(declare-fun res!826747 () Bool)

(declare-fun e!702235 () Bool)

(assert (=> d!135897 (=> res!826747 e!702235)))

(assert (=> d!135897 (= res!826747 (bvsge from!3213 (size!39051 a!3835)))))

(assert (=> d!135897 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!702235)))

(declare-fun b!1239106 () Bool)

(assert (=> b!1239106 (= e!702235 e!702236)))

(declare-fun res!826745 () Bool)

(assert (=> b!1239106 (=> (not res!826745) (not e!702236))))

(assert (=> b!1239106 (= res!826745 (not e!702237))))

(declare-fun res!826746 () Bool)

(assert (=> b!1239106 (=> (not res!826746) (not e!702237))))

(assert (=> b!1239106 (= res!826746 (validKeyInArray!0 (select (arr!38514 a!3835) from!3213)))))

(declare-fun bm!61079 () Bool)

(assert (=> bm!61079 (= call!61082 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!121041 (Cons!27461 (select (arr!38514 a!3835) from!3213) acc!846) acc!846)))))

(assert (= (and d!135897 (not res!826747)) b!1239106))

(assert (= (and b!1239106 res!826746) b!1239102))

(assert (= (and b!1239106 res!826745) b!1239105))

(assert (= (and b!1239105 c!121041) b!1239104))

(assert (= (and b!1239105 (not c!121041)) b!1239103))

(assert (= (or b!1239104 b!1239103) bm!61079))

(assert (=> b!1239102 m!1142511))

(assert (=> b!1239102 m!1142511))

(declare-fun m!1142643 () Bool)

(assert (=> b!1239102 m!1142643))

(assert (=> b!1239105 m!1142511))

(assert (=> b!1239105 m!1142511))

(assert (=> b!1239105 m!1142521))

(assert (=> b!1239106 m!1142511))

(assert (=> b!1239106 m!1142511))

(assert (=> b!1239106 m!1142521))

(assert (=> bm!61079 m!1142511))

(declare-fun m!1142645 () Bool)

(assert (=> bm!61079 m!1142645))

(assert (=> b!1238952 d!135897))

(declare-fun d!135903 () Bool)

(declare-fun res!826759 () Bool)

(declare-fun e!702251 () Bool)

(assert (=> d!135903 (=> res!826759 e!702251)))

(assert (=> d!135903 (= res!826759 (is-Nil!27462 acc!846))))

(assert (=> d!135903 (= (noDuplicate!1987 acc!846) e!702251)))

(declare-fun b!1239120 () Bool)

(declare-fun e!702252 () Bool)

(assert (=> b!1239120 (= e!702251 e!702252)))

(declare-fun res!826760 () Bool)

(assert (=> b!1239120 (=> (not res!826760) (not e!702252))))

(assert (=> b!1239120 (= res!826760 (not (contains!7380 (t!40935 acc!846) (h!28670 acc!846))))))

(declare-fun b!1239121 () Bool)

(assert (=> b!1239121 (= e!702252 (noDuplicate!1987 (t!40935 acc!846)))))

(assert (= (and d!135903 (not res!826759)) b!1239120))

(assert (= (and b!1239120 res!826760) b!1239121))

(declare-fun m!1142663 () Bool)

(assert (=> b!1239120 m!1142663))

(declare-fun m!1142665 () Bool)

(assert (=> b!1239121 m!1142665))

(assert (=> b!1238947 d!135903))

(declare-fun d!135911 () Bool)

(declare-fun lt!561566 () Bool)

(assert (=> d!135911 (= lt!561566 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!600 acc!846)))))

(declare-fun e!702254 () Bool)

(assert (=> d!135911 (= lt!561566 e!702254)))

(declare-fun res!826762 () Bool)

(assert (=> d!135911 (=> (not res!826762) (not e!702254))))

(assert (=> d!135911 (= res!826762 (is-Cons!27461 acc!846))))

(assert (=> d!135911 (= (contains!7380 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561566)))

(declare-fun b!1239122 () Bool)

(declare-fun e!702253 () Bool)

(assert (=> b!1239122 (= e!702254 e!702253)))

(declare-fun res!826761 () Bool)

(assert (=> b!1239122 (=> res!826761 e!702253)))

(assert (=> b!1239122 (= res!826761 (= (h!28670 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239123 () Bool)

(assert (=> b!1239123 (= e!702253 (contains!7380 (t!40935 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135911 res!826762) b!1239122))

(assert (= (and b!1239122 (not res!826761)) b!1239123))

(assert (=> d!135911 m!1142627))

(declare-fun m!1142667 () Bool)

(assert (=> d!135911 m!1142667))

(declare-fun m!1142669 () Bool)

(assert (=> b!1239123 m!1142669))

(assert (=> b!1238953 d!135911))

(declare-fun d!135915 () Bool)

(declare-fun lt!561567 () Bool)

(assert (=> d!135915 (= lt!561567 (set.member k!2925 (content!600 acc!846)))))

(declare-fun e!702256 () Bool)

(assert (=> d!135915 (= lt!561567 e!702256)))

(declare-fun res!826764 () Bool)

(assert (=> d!135915 (=> (not res!826764) (not e!702256))))

(assert (=> d!135915 (= res!826764 (is-Cons!27461 acc!846))))

(assert (=> d!135915 (= (contains!7380 acc!846 k!2925) lt!561567)))

(declare-fun b!1239124 () Bool)

(declare-fun e!702255 () Bool)

(assert (=> b!1239124 (= e!702256 e!702255)))

(declare-fun res!826763 () Bool)

(assert (=> b!1239124 (=> res!826763 e!702255)))

(assert (=> b!1239124 (= res!826763 (= (h!28670 acc!846) k!2925))))

(declare-fun b!1239125 () Bool)

(assert (=> b!1239125 (= e!702255 (contains!7380 (t!40935 acc!846) k!2925))))

(assert (= (and d!135915 res!826764) b!1239124))

(assert (= (and b!1239124 (not res!826763)) b!1239125))

(assert (=> d!135915 m!1142627))

(declare-fun m!1142671 () Bool)

(assert (=> d!135915 m!1142671))

(declare-fun m!1142673 () Bool)

(assert (=> b!1239125 m!1142673))

(assert (=> b!1238948 d!135915))

(declare-fun d!135917 () Bool)

(declare-fun res!826778 () Bool)

(declare-fun e!702275 () Bool)

(assert (=> d!135917 (=> res!826778 e!702275)))

(assert (=> d!135917 (= res!826778 (is-Nil!27462 lt!561516))))

(assert (=> d!135917 (= (subseq!617 lt!561516 lt!561516) e!702275)))

(declare-fun b!1239152 () Bool)

(declare-fun e!702280 () Bool)

(assert (=> b!1239152 (= e!702280 (subseq!617 (t!40935 lt!561516) (t!40935 lt!561516)))))

(declare-fun b!1239154 () Bool)

(declare-fun e!702274 () Bool)

(assert (=> b!1239154 (= e!702274 (subseq!617 lt!561516 (t!40935 lt!561516)))))

(declare-fun b!1239148 () Bool)

(declare-fun e!702278 () Bool)

(assert (=> b!1239148 (= e!702275 e!702278)))

(declare-fun res!826777 () Bool)

(assert (=> b!1239148 (=> (not res!826777) (not e!702278))))

(assert (=> b!1239148 (= res!826777 (is-Cons!27461 lt!561516))))

(declare-fun b!1239150 () Bool)

(assert (=> b!1239150 (= e!702278 e!702274)))

(declare-fun res!826775 () Bool)

(assert (=> b!1239150 (=> res!826775 e!702274)))

(assert (=> b!1239150 (= res!826775 e!702280)))

(declare-fun res!826776 () Bool)

(assert (=> b!1239150 (=> (not res!826776) (not e!702280))))

(assert (=> b!1239150 (= res!826776 (= (h!28670 lt!561516) (h!28670 lt!561516)))))

(assert (= (and d!135917 (not res!826778)) b!1239148))

(assert (= (and b!1239148 res!826777) b!1239150))

(assert (= (and b!1239150 res!826776) b!1239152))

(assert (= (and b!1239150 (not res!826775)) b!1239154))

(declare-fun m!1142677 () Bool)

(assert (=> b!1239152 m!1142677))

(declare-fun m!1142679 () Bool)

(assert (=> b!1239154 m!1142679))

(assert (=> b!1238949 d!135917))

(assert (=> b!1238949 d!135877))

(declare-fun bm!61089 () Bool)

(declare-fun call!61092 () Unit!41103)

(declare-fun c!121067 () Bool)

(assert (=> bm!61089 (= call!61092 (subseqTail!104 (ite c!121067 lt!561516 (t!40935 lt!561516)) (t!40935 lt!561516)))))

(declare-fun b!1239202 () Bool)

(declare-fun e!702312 () Unit!41103)

(declare-fun Unit!41114 () Unit!41103)

(assert (=> b!1239202 (= e!702312 Unit!41114)))

(declare-fun b!1239203 () Bool)

(declare-fun e!702311 () Unit!41103)

(declare-fun Unit!41115 () Unit!41103)

(assert (=> b!1239203 (= e!702311 Unit!41115)))

(declare-fun b!1239204 () Bool)

(assert (=> b!1239204 (= e!702312 call!61092)))

(declare-fun b!1239206 () Bool)

(declare-fun e!702310 () Unit!41103)

(assert (=> b!1239206 (= e!702311 e!702310)))

(assert (=> b!1239206 (= c!121067 (subseq!617 lt!561516 (t!40935 lt!561516)))))

(declare-fun b!1239207 () Bool)

(declare-fun e!702309 () Bool)

(assert (=> b!1239207 (= e!702309 (subseq!617 lt!561516 lt!561516))))

(declare-fun b!1239208 () Bool)

(declare-fun c!121069 () Bool)

(declare-fun isEmpty!1020 (List!27465) Bool)

(assert (=> b!1239208 (= c!121069 (not (isEmpty!1020 (t!40935 lt!561516))))))

(assert (=> b!1239208 (= e!702310 e!702312)))

(declare-fun d!135921 () Bool)

(declare-fun tail!169 (List!27465) List!27465)

(assert (=> d!135921 (subseq!617 (tail!169 lt!561516) lt!561516)))

(declare-fun lt!561583 () Unit!41103)

(assert (=> d!135921 (= lt!561583 e!702311)))

(declare-fun c!121068 () Bool)

(assert (=> d!135921 (= c!121068 (and (is-Cons!27461 lt!561516) (is-Cons!27461 lt!561516)))))

(assert (=> d!135921 e!702309))

(declare-fun res!826793 () Bool)

(assert (=> d!135921 (=> (not res!826793) (not e!702309))))

(assert (=> d!135921 (= res!826793 (not (isEmpty!1020 lt!561516)))))

(assert (=> d!135921 (= (subseqTail!104 lt!561516 lt!561516) lt!561583)))

(declare-fun b!1239205 () Bool)

(assert (=> b!1239205 (= e!702310 call!61092)))

(assert (= (and d!135921 res!826793) b!1239207))

(assert (= (and d!135921 c!121068) b!1239206))

(assert (= (and d!135921 (not c!121068)) b!1239203))

(assert (= (and b!1239206 c!121067) b!1239205))

(assert (= (and b!1239206 (not c!121067)) b!1239208))

(assert (= (and b!1239208 c!121069) b!1239204))

(assert (= (and b!1239208 (not c!121069)) b!1239202))

(assert (= (or b!1239205 b!1239204) bm!61089))

(declare-fun m!1142713 () Bool)

(assert (=> bm!61089 m!1142713))

(declare-fun m!1142715 () Bool)

(assert (=> d!135921 m!1142715))

(assert (=> d!135921 m!1142715))

(declare-fun m!1142717 () Bool)

(assert (=> d!135921 m!1142717))

