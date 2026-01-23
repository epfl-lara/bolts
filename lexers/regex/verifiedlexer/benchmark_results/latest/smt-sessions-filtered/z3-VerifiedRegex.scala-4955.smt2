; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252184 () Bool)

(assert start!252184)

(declare-fun b!2597884 () Bool)

(assert (=> b!2597884 true))

(declare-fun bs!473068 () Bool)

(declare-fun b!2597891 () Bool)

(assert (= bs!473068 (and b!2597891 b!2597884)))

(declare-fun lambda!97238 () Int)

(declare-fun lambda!97237 () Int)

(assert (=> bs!473068 (not (= lambda!97238 lambda!97237))))

(assert (=> b!2597891 true))

(declare-fun res!1093776 () Bool)

(declare-fun e!1639721 () Bool)

(assert (=> b!2597884 (=> (not res!1093776) (not e!1639721))))

(declare-datatypes ((B!2241 0))(
  ( (B!2242 (val!9588 Int)) )
))
(declare-datatypes ((List!30021 0))(
  ( (Nil!29921) (Cons!29921 (h!35341 B!2241) (t!213034 List!30021)) )
))
(declare-fun l2!1515 () List!30021)

(declare-fun forall!6158 (List!30021 Int) Bool)

(assert (=> b!2597884 (= res!1093776 (forall!6158 l2!1515 lambda!97237))))

(declare-fun b!2597885 () Bool)

(declare-fun e!1639723 () Bool)

(declare-fun l1!1546 () List!30021)

(declare-fun contains!5469 (List!30021 B!2241) Bool)

(assert (=> b!2597885 (= e!1639723 (not (contains!5469 l2!1515 (h!35341 l1!1546))))))

(declare-fun b!2597886 () Bool)

(declare-fun res!1093780 () Bool)

(assert (=> b!2597886 (=> (not res!1093780) (not e!1639721))))

(declare-fun noDuplicate!469 (List!30021) Bool)

(assert (=> b!2597886 (= res!1093780 (noDuplicate!469 l2!1515))))

(declare-fun b!2597887 () Bool)

(declare-fun res!1093775 () Bool)

(assert (=> b!2597887 (=> (not res!1093775) (not e!1639721))))

(get-info :version)

(assert (=> b!2597887 (= res!1093775 (not ((_ is Nil!29921) l1!1546)))))

(declare-fun b!2597888 () Bool)

(declare-fun e!1639722 () Bool)

(assert (=> b!2597888 (= e!1639722 (contains!5469 l2!1515 (h!35341 l1!1546)))))

(declare-fun b!2597889 () Bool)

(declare-fun res!1093781 () Bool)

(assert (=> b!2597889 (=> (not res!1093781) (not e!1639721))))

(declare-fun size!23226 (List!30021) Int)

(assert (=> b!2597889 (= res!1093781 (> (size!23226 l1!1546) (size!23226 l2!1515)))))

(declare-fun b!2597890 () Bool)

(declare-fun res!1093777 () Bool)

(assert (=> b!2597890 (=> (not res!1093777) (not e!1639721))))

(assert (=> b!2597890 (= res!1093777 e!1639722)))

(declare-fun res!1093774 () Bool)

(assert (=> b!2597890 (=> res!1093774 e!1639722)))

(assert (=> b!2597890 (= res!1093774 (not ((_ is Cons!29921) l1!1546)))))

(declare-fun exists!944 (List!30021 Int) Bool)

(assert (=> b!2597891 (= e!1639721 (not (exists!944 l1!1546 lambda!97238)))))

(declare-fun res!1093773 () Bool)

(assert (=> start!252184 (=> (not res!1093773) (not e!1639721))))

(assert (=> start!252184 (= res!1093773 (noDuplicate!469 l1!1546))))

(assert (=> start!252184 e!1639721))

(declare-fun e!1639720 () Bool)

(assert (=> start!252184 e!1639720))

(declare-fun e!1639719 () Bool)

(assert (=> start!252184 e!1639719))

(declare-fun b!2597883 () Bool)

(declare-fun tp_is_empty!13521 () Bool)

(declare-fun tp!823412 () Bool)

(assert (=> b!2597883 (= e!1639720 (and tp_is_empty!13521 tp!823412))))

(declare-fun b!2597892 () Bool)

(declare-fun tp!823411 () Bool)

(assert (=> b!2597892 (= e!1639719 (and tp_is_empty!13521 tp!823411))))

(declare-fun b!2597893 () Bool)

(declare-fun res!1093778 () Bool)

(assert (=> b!2597893 (=> (not res!1093778) (not e!1639721))))

(assert (=> b!2597893 (= res!1093778 e!1639723)))

(declare-fun res!1093779 () Bool)

(assert (=> b!2597893 (=> res!1093779 e!1639723)))

(assert (=> b!2597893 (= res!1093779 (not ((_ is Cons!29921) l1!1546)))))

(assert (= (and start!252184 res!1093773) b!2597886))

(assert (= (and b!2597886 res!1093780) b!2597889))

(assert (= (and b!2597889 res!1093781) b!2597884))

(assert (= (and b!2597884 res!1093776) b!2597893))

(assert (= (and b!2597893 (not res!1093779)) b!2597885))

(assert (= (and b!2597893 res!1093778) b!2597890))

(assert (= (and b!2597890 (not res!1093774)) b!2597888))

(assert (= (and b!2597890 res!1093777) b!2597887))

(assert (= (and b!2597887 res!1093775) b!2597891))

(assert (= (and start!252184 ((_ is Cons!29921) l1!1546)) b!2597883))

(assert (= (and start!252184 ((_ is Cons!29921) l2!1515)) b!2597892))

(declare-fun m!2934127 () Bool)

(assert (=> start!252184 m!2934127))

(declare-fun m!2934129 () Bool)

(assert (=> b!2597888 m!2934129))

(declare-fun m!2934131 () Bool)

(assert (=> b!2597884 m!2934131))

(declare-fun m!2934133 () Bool)

(assert (=> b!2597886 m!2934133))

(assert (=> b!2597885 m!2934129))

(declare-fun m!2934135 () Bool)

(assert (=> b!2597891 m!2934135))

(declare-fun m!2934137 () Bool)

(assert (=> b!2597889 m!2934137))

(declare-fun m!2934139 () Bool)

(assert (=> b!2597889 m!2934139))

(check-sat (not b!2597883) (not b!2597892) (not b!2597891) (not b!2597884) (not b!2597885) (not b!2597886) tp_is_empty!13521 (not b!2597888) (not start!252184) (not b!2597889))
(check-sat)
