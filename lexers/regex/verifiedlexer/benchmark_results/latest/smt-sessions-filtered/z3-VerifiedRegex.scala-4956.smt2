; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252188 () Bool)

(assert start!252188)

(declare-fun res!1093792 () Bool)

(declare-fun e!1639734 () Bool)

(assert (=> start!252188 (=> (not res!1093792) (not e!1639734))))

(declare-datatypes ((B!2245 0))(
  ( (B!2246 (val!9590 Int)) )
))
(declare-datatypes ((List!30023 0))(
  ( (Nil!29923) (Cons!29923 (h!35343 B!2245) (t!213036 List!30023)) )
))
(declare-fun l!3770 () List!30023)

(declare-fun noDuplicate!471 (List!30023) Bool)

(assert (=> start!252188 (= res!1093792 (noDuplicate!471 l!3770))))

(assert (=> start!252188 e!1639734))

(declare-fun e!1639735 () Bool)

(assert (=> start!252188 e!1639735))

(declare-fun b!2597911 () Bool)

(declare-fun res!1093793 () Bool)

(assert (=> b!2597911 (=> (not res!1093793) (not e!1639734))))

(get-info :version)

(assert (=> b!2597911 (= res!1093793 (not ((_ is Nil!29923) l!3770)))))

(declare-fun b!2597912 () Bool)

(assert (=> b!2597912 (= e!1639734 (not (noDuplicate!471 (t!213036 l!3770))))))

(declare-fun b!2597913 () Bool)

(declare-fun tp_is_empty!13525 () Bool)

(declare-fun tp!823418 () Bool)

(assert (=> b!2597913 (= e!1639735 (and tp_is_empty!13525 tp!823418))))

(assert (= (and start!252188 res!1093792) b!2597911))

(assert (= (and b!2597911 res!1093793) b!2597912))

(assert (= (and start!252188 ((_ is Cons!29923) l!3770)) b!2597913))

(declare-fun m!2934145 () Bool)

(assert (=> start!252188 m!2934145))

(declare-fun m!2934147 () Bool)

(assert (=> b!2597912 m!2934147))

(check-sat (not start!252188) (not b!2597912) (not b!2597913) tp_is_empty!13525)
(check-sat)
(get-model)

(declare-fun d!736145 () Bool)

(declare-fun res!1093804 () Bool)

(declare-fun e!1639746 () Bool)

(assert (=> d!736145 (=> res!1093804 e!1639746)))

(assert (=> d!736145 (= res!1093804 ((_ is Nil!29923) l!3770))))

(assert (=> d!736145 (= (noDuplicate!471 l!3770) e!1639746)))

(declare-fun b!2597924 () Bool)

(declare-fun e!1639747 () Bool)

(assert (=> b!2597924 (= e!1639746 e!1639747)))

(declare-fun res!1093805 () Bool)

(assert (=> b!2597924 (=> (not res!1093805) (not e!1639747))))

(declare-fun contains!5470 (List!30023 B!2245) Bool)

(assert (=> b!2597924 (= res!1093805 (not (contains!5470 (t!213036 l!3770) (h!35343 l!3770))))))

(declare-fun b!2597925 () Bool)

(assert (=> b!2597925 (= e!1639747 (noDuplicate!471 (t!213036 l!3770)))))

(assert (= (and d!736145 (not res!1093804)) b!2597924))

(assert (= (and b!2597924 res!1093805) b!2597925))

(declare-fun m!2934153 () Bool)

(assert (=> b!2597924 m!2934153))

(assert (=> b!2597925 m!2934147))

(assert (=> start!252188 d!736145))

(declare-fun d!736151 () Bool)

(declare-fun res!1093808 () Bool)

(declare-fun e!1639750 () Bool)

(assert (=> d!736151 (=> res!1093808 e!1639750)))

(assert (=> d!736151 (= res!1093808 ((_ is Nil!29923) (t!213036 l!3770)))))

(assert (=> d!736151 (= (noDuplicate!471 (t!213036 l!3770)) e!1639750)))

(declare-fun b!2597928 () Bool)

(declare-fun e!1639751 () Bool)

(assert (=> b!2597928 (= e!1639750 e!1639751)))

(declare-fun res!1093809 () Bool)

(assert (=> b!2597928 (=> (not res!1093809) (not e!1639751))))

(assert (=> b!2597928 (= res!1093809 (not (contains!5470 (t!213036 (t!213036 l!3770)) (h!35343 (t!213036 l!3770)))))))

(declare-fun b!2597929 () Bool)

(assert (=> b!2597929 (= e!1639751 (noDuplicate!471 (t!213036 (t!213036 l!3770))))))

(assert (= (and d!736151 (not res!1093808)) b!2597928))

(assert (= (and b!2597928 res!1093809) b!2597929))

(declare-fun m!2934157 () Bool)

(assert (=> b!2597928 m!2934157))

(declare-fun m!2934159 () Bool)

(assert (=> b!2597929 m!2934159))

(assert (=> b!2597912 d!736151))

(declare-fun b!2597939 () Bool)

(declare-fun e!1639757 () Bool)

(declare-fun tp!823424 () Bool)

(assert (=> b!2597939 (= e!1639757 (and tp_is_empty!13525 tp!823424))))

(assert (=> b!2597913 (= tp!823418 e!1639757)))

(assert (= (and b!2597913 ((_ is Cons!29923) (t!213036 l!3770))) b!2597939))

(check-sat (not b!2597929) tp_is_empty!13525 (not b!2597928) (not b!2597924) (not b!2597939) (not b!2597925))
(check-sat)
