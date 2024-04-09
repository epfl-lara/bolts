; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103240 () Bool)

(assert start!103240)

(declare-fun b!1238836 () Bool)

(declare-datatypes ((Unit!41091 0))(
  ( (Unit!41092) )
))
(declare-fun e!702093 () Unit!41091)

(declare-fun lt!561454 () Unit!41091)

(assert (=> b!1238836 (= e!702093 lt!561454)))

(declare-datatypes ((array!79824 0))(
  ( (array!79825 (arr!38510 (Array (_ BitVec 32) (_ BitVec 64))) (size!39047 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79824)

(declare-datatypes ((List!27461 0))(
  ( (Nil!27458) (Cons!27457 (h!28666 (_ BitVec 64)) (t!40931 List!27461)) )
))
(declare-fun acc!846 () List!27461)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun lt!561456 () List!27461)

(assert (=> b!1238836 (= lt!561456 (Cons!27457 (select (arr!38510 a!3835) from!3213) acc!846))))

(declare-fun lt!561457 () Unit!41091)

(declare-fun lemmaListSubSeqRefl!0 (List!27461) Unit!41091)

(assert (=> b!1238836 (= lt!561457 (lemmaListSubSeqRefl!0 lt!561456))))

(declare-fun subseq!613 (List!27461 List!27461) Bool)

(assert (=> b!1238836 (subseq!613 lt!561456 lt!561456)))

(declare-fun lt!561453 () Unit!41091)

(declare-fun subseqTail!100 (List!27461 List!27461) Unit!41091)

(assert (=> b!1238836 (= lt!561453 (subseqTail!100 lt!561456 lt!561456))))

(assert (=> b!1238836 (subseq!613 acc!846 lt!561456)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79824 List!27461 List!27461 (_ BitVec 32)) Unit!41091)

(assert (=> b!1238836 (= lt!561454 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561456 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79824 (_ BitVec 32) List!27461) Bool)

(assert (=> b!1238836 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238837 () Bool)

(declare-fun res!826541 () Bool)

(declare-fun e!702094 () Bool)

(assert (=> b!1238837 (=> (not res!826541) (not e!702094))))

(assert (=> b!1238837 (= res!826541 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun res!826538 () Bool)

(assert (=> start!103240 (=> (not res!826538) (not e!702094))))

(assert (=> start!103240 (= res!826538 (and (bvslt (size!39047 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39047 a!3835))))))

(assert (=> start!103240 e!702094))

(declare-fun array_inv!29286 (array!79824) Bool)

(assert (=> start!103240 (array_inv!29286 a!3835)))

(assert (=> start!103240 true))

(declare-fun b!1238838 () Bool)

(declare-fun res!826542 () Bool)

(assert (=> b!1238838 (=> (not res!826542) (not e!702094))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7376 (List!27461 (_ BitVec 64)) Bool)

(assert (=> b!1238838 (= res!826542 (contains!7376 acc!846 k!2925))))

(declare-fun b!1238839 () Bool)

(declare-fun res!826540 () Bool)

(assert (=> b!1238839 (=> (not res!826540) (not e!702094))))

(declare-fun noDuplicate!1983 (List!27461) Bool)

(assert (=> b!1238839 (= res!826540 (noDuplicate!1983 acc!846))))

(declare-fun b!1238840 () Bool)

(declare-fun res!826537 () Bool)

(assert (=> b!1238840 (=> (not res!826537) (not e!702094))))

(assert (=> b!1238840 (= res!826537 (not (contains!7376 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238841 () Bool)

(declare-fun res!826543 () Bool)

(assert (=> b!1238841 (=> (not res!826543) (not e!702094))))

(assert (=> b!1238841 (= res!826543 (not (= from!3213 (bvsub (size!39047 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238842 () Bool)

(declare-fun res!826539 () Bool)

(assert (=> b!1238842 (=> (not res!826539) (not e!702094))))

(assert (=> b!1238842 (= res!826539 (not (contains!7376 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238843 () Bool)

(assert (=> b!1238843 (= e!702094 false)))

(declare-fun lt!561455 () Unit!41091)

(assert (=> b!1238843 (= lt!561455 e!702093)))

(declare-fun c!121012 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238843 (= c!121012 (validKeyInArray!0 (select (arr!38510 a!3835) from!3213)))))

(declare-fun b!1238844 () Bool)

(declare-fun Unit!41093 () Unit!41091)

(assert (=> b!1238844 (= e!702093 Unit!41093)))

(assert (= (and start!103240 res!826538) b!1238839))

(assert (= (and b!1238839 res!826540) b!1238840))

(assert (= (and b!1238840 res!826537) b!1238842))

(assert (= (and b!1238842 res!826539) b!1238837))

(assert (= (and b!1238837 res!826541) b!1238838))

(assert (= (and b!1238838 res!826542) b!1238841))

(assert (= (and b!1238841 res!826543) b!1238843))

(assert (= (and b!1238843 c!121012) b!1238836))

(assert (= (and b!1238843 (not c!121012)) b!1238844))

(declare-fun m!1142389 () Bool)

(assert (=> b!1238837 m!1142389))

(declare-fun m!1142391 () Bool)

(assert (=> b!1238838 m!1142391))

(declare-fun m!1142393 () Bool)

(assert (=> b!1238839 m!1142393))

(declare-fun m!1142395 () Bool)

(assert (=> start!103240 m!1142395))

(declare-fun m!1142397 () Bool)

(assert (=> b!1238836 m!1142397))

(declare-fun m!1142399 () Bool)

(assert (=> b!1238836 m!1142399))

(declare-fun m!1142401 () Bool)

(assert (=> b!1238836 m!1142401))

(declare-fun m!1142403 () Bool)

(assert (=> b!1238836 m!1142403))

(declare-fun m!1142405 () Bool)

(assert (=> b!1238836 m!1142405))

(declare-fun m!1142407 () Bool)

(assert (=> b!1238836 m!1142407))

(declare-fun m!1142409 () Bool)

(assert (=> b!1238836 m!1142409))

(declare-fun m!1142411 () Bool)

(assert (=> b!1238840 m!1142411))

(assert (=> b!1238843 m!1142409))

(assert (=> b!1238843 m!1142409))

(declare-fun m!1142413 () Bool)

(assert (=> b!1238843 m!1142413))

(declare-fun m!1142415 () Bool)

(assert (=> b!1238842 m!1142415))

(push 1)

(assert (not b!1238838))

(assert (not b!1238843))

(assert (not b!1238842))

(assert (not b!1238839))

(assert (not start!103240))

(assert (not b!1238837))

(assert (not b!1238836))

(assert (not b!1238840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

