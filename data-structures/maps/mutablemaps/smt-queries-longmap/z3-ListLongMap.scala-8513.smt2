; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103892 () Bool)

(assert start!103892)

(declare-fun res!828980 () Bool)

(declare-fun e!704798 () Bool)

(assert (=> start!103892 (=> (not res!828980) (not e!704798))))

(declare-datatypes ((array!79945 0))(
  ( (array!79946 (arr!38563 (Array (_ BitVec 32) (_ BitVec 64))) (size!39100 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79945)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103892 (= res!828980 (and (bvslt (size!39100 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39100 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39100 a!3892))))))

(assert (=> start!103892 e!704798))

(declare-fun array_inv!29339 (array!79945) Bool)

(assert (=> start!103892 (array_inv!29339 a!3892)))

(assert (=> start!103892 true))

(declare-fun b!1243078 () Bool)

(declare-fun res!828982 () Bool)

(assert (=> b!1243078 (=> (not res!828982) (not e!704798))))

(declare-datatypes ((List!27544 0))(
  ( (Nil!27541) (Cons!27540 (h!28749 (_ BitVec 64)) (t!41020 List!27544)) )
))
(declare-fun noDuplicate!2006 (List!27544) Bool)

(assert (=> b!1243078 (= res!828982 (noDuplicate!2006 Nil!27541))))

(declare-fun b!1243079 () Bool)

(declare-fun e!704797 () Bool)

(assert (=> b!1243079 (= e!704798 e!704797)))

(declare-fun res!828981 () Bool)

(assert (=> b!1243079 (=> res!828981 e!704797)))

(declare-fun contains!7416 (List!27544 (_ BitVec 64)) Bool)

(assert (=> b!1243079 (= res!828981 (contains!7416 Nil!27541 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1243080 () Bool)

(assert (=> b!1243080 (= e!704797 (contains!7416 Nil!27541 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!103892 res!828980) b!1243078))

(assert (= (and b!1243078 res!828982) b!1243079))

(assert (= (and b!1243079 (not res!828981)) b!1243080))

(declare-fun m!1145735 () Bool)

(assert (=> start!103892 m!1145735))

(declare-fun m!1145737 () Bool)

(assert (=> b!1243078 m!1145737))

(declare-fun m!1145739 () Bool)

(assert (=> b!1243079 m!1145739))

(declare-fun m!1145741 () Bool)

(assert (=> b!1243080 m!1145741))

(check-sat (not b!1243078) (not b!1243079) (not start!103892) (not b!1243080))
(check-sat)
(get-model)

(declare-fun d!136975 () Bool)

(declare-fun res!828996 () Bool)

(declare-fun e!704812 () Bool)

(assert (=> d!136975 (=> res!828996 e!704812)))

(get-info :version)

(assert (=> d!136975 (= res!828996 ((_ is Nil!27541) Nil!27541))))

(assert (=> d!136975 (= (noDuplicate!2006 Nil!27541) e!704812)))

(declare-fun b!1243094 () Bool)

(declare-fun e!704813 () Bool)

(assert (=> b!1243094 (= e!704812 e!704813)))

(declare-fun res!828997 () Bool)

(assert (=> b!1243094 (=> (not res!828997) (not e!704813))))

(assert (=> b!1243094 (= res!828997 (not (contains!7416 (t!41020 Nil!27541) (h!28749 Nil!27541))))))

(declare-fun b!1243095 () Bool)

(assert (=> b!1243095 (= e!704813 (noDuplicate!2006 (t!41020 Nil!27541)))))

(assert (= (and d!136975 (not res!828996)) b!1243094))

(assert (= (and b!1243094 res!828997) b!1243095))

(declare-fun m!1145751 () Bool)

(assert (=> b!1243094 m!1145751))

(declare-fun m!1145753 () Bool)

(assert (=> b!1243095 m!1145753))

(assert (=> b!1243078 d!136975))

(declare-fun d!136977 () Bool)

(declare-fun lt!562258 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!614 (List!27544) (InoxSet (_ BitVec 64)))

(assert (=> d!136977 (= lt!562258 (select (content!614 Nil!27541) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!704819 () Bool)

(assert (=> d!136977 (= lt!562258 e!704819)))

(declare-fun res!829002 () Bool)

(assert (=> d!136977 (=> (not res!829002) (not e!704819))))

(assert (=> d!136977 (= res!829002 ((_ is Cons!27540) Nil!27541))))

(assert (=> d!136977 (= (contains!7416 Nil!27541 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562258)))

(declare-fun b!1243100 () Bool)

(declare-fun e!704818 () Bool)

(assert (=> b!1243100 (= e!704819 e!704818)))

(declare-fun res!829003 () Bool)

(assert (=> b!1243100 (=> res!829003 e!704818)))

(assert (=> b!1243100 (= res!829003 (= (h!28749 Nil!27541) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1243101 () Bool)

(assert (=> b!1243101 (= e!704818 (contains!7416 (t!41020 Nil!27541) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136977 res!829002) b!1243100))

(assert (= (and b!1243100 (not res!829003)) b!1243101))

(declare-fun m!1145755 () Bool)

(assert (=> d!136977 m!1145755))

(declare-fun m!1145757 () Bool)

(assert (=> d!136977 m!1145757))

(declare-fun m!1145759 () Bool)

(assert (=> b!1243101 m!1145759))

(assert (=> b!1243079 d!136977))

(declare-fun d!136981 () Bool)

(assert (=> d!136981 (= (array_inv!29339 a!3892) (bvsge (size!39100 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!103892 d!136981))

(declare-fun d!136983 () Bool)

(declare-fun lt!562259 () Bool)

(assert (=> d!136983 (= lt!562259 (select (content!614 Nil!27541) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!704821 () Bool)

(assert (=> d!136983 (= lt!562259 e!704821)))

(declare-fun res!829004 () Bool)

(assert (=> d!136983 (=> (not res!829004) (not e!704821))))

(assert (=> d!136983 (= res!829004 ((_ is Cons!27540) Nil!27541))))

(assert (=> d!136983 (= (contains!7416 Nil!27541 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562259)))

(declare-fun b!1243102 () Bool)

(declare-fun e!704820 () Bool)

(assert (=> b!1243102 (= e!704821 e!704820)))

(declare-fun res!829005 () Bool)

(assert (=> b!1243102 (=> res!829005 e!704820)))

(assert (=> b!1243102 (= res!829005 (= (h!28749 Nil!27541) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1243103 () Bool)

(assert (=> b!1243103 (= e!704820 (contains!7416 (t!41020 Nil!27541) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136983 res!829004) b!1243102))

(assert (= (and b!1243102 (not res!829005)) b!1243103))

(assert (=> d!136983 m!1145755))

(declare-fun m!1145761 () Bool)

(assert (=> d!136983 m!1145761))

(declare-fun m!1145763 () Bool)

(assert (=> b!1243103 m!1145763))

(assert (=> b!1243080 d!136983))

(check-sat (not b!1243103) (not b!1243095) (not d!136983) (not b!1243094) (not b!1243101) (not d!136977))
(check-sat)
