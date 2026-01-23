; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693912 () Bool)

(assert start!693912)

(declare-fun b_free!133751 () Bool)

(declare-fun b_next!134541 () Bool)

(assert (=> start!693912 (= b_free!133751 (not b_next!134541))))

(declare-fun tp!1961739 () Bool)

(declare-fun b_and!350847 () Bool)

(assert (=> start!693912 (= tp!1961739 b_and!350847)))

(declare-fun b!7123756 () Bool)

(assert (=> b!7123756 true))

(declare-fun b!7123754 () Bool)

(declare-fun res!2906639 () Bool)

(declare-fun e!4280837 () Bool)

(assert (=> b!7123754 (=> (not res!2906639) (not e!4280837))))

(declare-datatypes ((B!3315 0))(
  ( (B!3316 (val!27983 Int)) )
))
(declare-datatypes ((List!69027 0))(
  ( (Nil!68903) (Cons!68903 (h!75351 B!3315) (t!382942 List!69027)) )
))
(declare-fun l2!759 () List!69027)

(assert (=> b!7123754 (= res!2906639 (not (is-Cons!68903 l2!759)))))

(declare-fun b!7123755 () Bool)

(declare-fun res!2906638 () Bool)

(assert (=> b!7123755 (=> (not res!2906638) (not e!4280837))))

(declare-datatypes ((A!657 0))(
  ( (A!658 (val!27984 Int)) )
))
(declare-fun s1!424 () (Set A!657))

(declare-fun s2!395 () (Set A!657))

(declare-fun f!607 () Int)

(declare-fun subseq!766 (List!69027 List!69027) Bool)

(declare-fun toList!11130 ((Set B!3315)) List!69027)

(declare-fun map!16439 ((Set A!657) Int) (Set B!3315))

(assert (=> b!7123755 (= res!2906638 (subseq!766 l2!759 (toList!11130 (map!16439 (set.union s1!424 s2!395) f!607))))))

(declare-fun setIsEmpty!51312 () Bool)

(declare-fun setRes!51313 () Bool)

(assert (=> setIsEmpty!51312 setRes!51313))

(declare-fun res!2906637 () Bool)

(assert (=> start!693912 (=> (not res!2906637) (not e!4280837))))

(declare-fun l1!770 () List!69027)

(assert (=> start!693912 (= res!2906637 (= l1!770 (toList!11130 (set.union (map!16439 s1!424 f!607) (map!16439 s2!395 f!607)))))))

(assert (=> start!693912 e!4280837))

(declare-fun condSetEmpty!51312 () Bool)

(assert (=> start!693912 (= condSetEmpty!51312 (= s1!424 (as set.empty (Set A!657))))))

(declare-fun setRes!51312 () Bool)

(assert (=> start!693912 setRes!51312))

(declare-fun e!4280836 () Bool)

(assert (=> start!693912 e!4280836))

(declare-fun e!4280838 () Bool)

(assert (=> start!693912 e!4280838))

(declare-fun condSetEmpty!51313 () Bool)

(assert (=> start!693912 (= condSetEmpty!51313 (= s2!395 (as set.empty (Set A!657))))))

(assert (=> start!693912 setRes!51313))

(assert (=> start!693912 tp!1961739))

(declare-fun lambda!432954 () Int)

(declare-fun forall!16900 (List!69027 Int) Bool)

(assert (=> b!7123756 (= e!4280837 (not (forall!16900 l2!759 lambda!432954)))))

(declare-fun setIsEmpty!51313 () Bool)

(assert (=> setIsEmpty!51313 setRes!51312))

(declare-fun setNonEmpty!51312 () Bool)

(declare-fun tp!1961741 () Bool)

(declare-fun tp_is_empty!45465 () Bool)

(assert (=> setNonEmpty!51312 (= setRes!51312 (and tp!1961741 tp_is_empty!45465))))

(declare-fun setElem!51313 () A!657)

(declare-fun setRest!51313 () (Set A!657))

(assert (=> setNonEmpty!51312 (= s1!424 (set.union (set.insert setElem!51313 (as set.empty (Set A!657))) setRest!51313))))

(declare-fun b!7123757 () Bool)

(declare-fun tp_is_empty!45467 () Bool)

(declare-fun tp!1961742 () Bool)

(assert (=> b!7123757 (= e!4280838 (and tp_is_empty!45467 tp!1961742))))

(declare-fun setNonEmpty!51313 () Bool)

(declare-fun tp!1961740 () Bool)

(assert (=> setNonEmpty!51313 (= setRes!51313 (and tp!1961740 tp_is_empty!45465))))

(declare-fun setElem!51312 () A!657)

(declare-fun setRest!51312 () (Set A!657))

(assert (=> setNonEmpty!51313 (= s2!395 (set.union (set.insert setElem!51312 (as set.empty (Set A!657))) setRest!51312))))

(declare-fun b!7123758 () Bool)

(declare-fun tp!1961738 () Bool)

(assert (=> b!7123758 (= e!4280836 (and tp_is_empty!45467 tp!1961738))))

(assert (= (and start!693912 res!2906637) b!7123755))

(assert (= (and b!7123755 res!2906638) b!7123754))

(assert (= (and b!7123754 res!2906639) b!7123756))

(assert (= (and start!693912 condSetEmpty!51312) setIsEmpty!51313))

(assert (= (and start!693912 (not condSetEmpty!51312)) setNonEmpty!51312))

(assert (= (and start!693912 (is-Cons!68903 l2!759)) b!7123758))

(assert (= (and start!693912 (is-Cons!68903 l1!770)) b!7123757))

(assert (= (and start!693912 condSetEmpty!51313) setIsEmpty!51312))

(assert (= (and start!693912 (not condSetEmpty!51313)) setNonEmpty!51313))

(declare-fun m!7841118 () Bool)

(assert (=> b!7123755 m!7841118))

(assert (=> b!7123755 m!7841118))

(declare-fun m!7841120 () Bool)

(assert (=> b!7123755 m!7841120))

(assert (=> b!7123755 m!7841120))

(declare-fun m!7841122 () Bool)

(assert (=> b!7123755 m!7841122))

(declare-fun m!7841124 () Bool)

(assert (=> start!693912 m!7841124))

(declare-fun m!7841126 () Bool)

(assert (=> start!693912 m!7841126))

(declare-fun m!7841128 () Bool)

(assert (=> start!693912 m!7841128))

(declare-fun m!7841130 () Bool)

(assert (=> b!7123756 m!7841130))

(push 1)

(assert (not b!7123757))

(assert (not setNonEmpty!51313))

(assert (not b!7123755))

(assert (not b_next!134541))

(assert tp_is_empty!45465)

(assert b_and!350847)

(assert (not b!7123756))

(assert (not b!7123758))

(assert tp_is_empty!45467)

(assert (not setNonEmpty!51312))

(assert (not start!693912))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350847)

(assert (not b_next!134541))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7123788 () Bool)

(declare-fun e!4280858 () Bool)

(assert (=> b!7123788 (= e!4280858 (subseq!766 (t!382942 l2!759) (t!382942 (toList!11130 (map!16439 (set.union s1!424 s2!395) f!607)))))))

(declare-fun b!7123787 () Bool)

(declare-fun e!4280857 () Bool)

(declare-fun e!4280859 () Bool)

(assert (=> b!7123787 (= e!4280857 e!4280859)))

(declare-fun res!2906657 () Bool)

(assert (=> b!7123787 (=> res!2906657 e!4280859)))

(assert (=> b!7123787 (= res!2906657 e!4280858)))

(declare-fun res!2906659 () Bool)

(assert (=> b!7123787 (=> (not res!2906659) (not e!4280858))))

(assert (=> b!7123787 (= res!2906659 (= (h!75351 l2!759) (h!75351 (toList!11130 (map!16439 (set.union s1!424 s2!395) f!607)))))))

(declare-fun d!2223169 () Bool)

(declare-fun res!2906658 () Bool)

(declare-fun e!4280856 () Bool)

(assert (=> d!2223169 (=> res!2906658 e!4280856)))

(assert (=> d!2223169 (= res!2906658 (is-Nil!68903 l2!759))))

(assert (=> d!2223169 (= (subseq!766 l2!759 (toList!11130 (map!16439 (set.union s1!424 s2!395) f!607))) e!4280856)))

(declare-fun b!7123789 () Bool)

(assert (=> b!7123789 (= e!4280859 (subseq!766 l2!759 (t!382942 (toList!11130 (map!16439 (set.union s1!424 s2!395) f!607)))))))

(declare-fun b!7123786 () Bool)

(assert (=> b!7123786 (= e!4280856 e!4280857)))

(declare-fun res!2906660 () Bool)

(assert (=> b!7123786 (=> (not res!2906660) (not e!4280857))))

(assert (=> b!7123786 (= res!2906660 (is-Cons!68903 (toList!11130 (map!16439 (set.union s1!424 s2!395) f!607))))))

(assert (= (and d!2223169 (not res!2906658)) b!7123786))

(assert (= (and b!7123786 res!2906660) b!7123787))

(assert (= (and b!7123787 res!2906659) b!7123788))

(assert (= (and b!7123787 (not res!2906657)) b!7123789))

(declare-fun m!7841146 () Bool)

(assert (=> b!7123788 m!7841146))

(declare-fun m!7841148 () Bool)

(assert (=> b!7123789 m!7841148))

(assert (=> b!7123755 d!2223169))

(declare-fun d!2223171 () Bool)

(declare-fun e!4280862 () Bool)

(assert (=> d!2223171 e!4280862))

(declare-fun res!2906663 () Bool)

(assert (=> d!2223171 (=> (not res!2906663) (not e!4280862))))

(declare-fun lt!2562574 () List!69027)

(declare-fun noDuplicate!2802 (List!69027) Bool)

(assert (=> d!2223171 (= res!2906663 (noDuplicate!2802 lt!2562574))))

(declare-fun choose!55050 ((Set B!3315)) List!69027)

(assert (=> d!2223171 (= lt!2562574 (choose!55050 (map!16439 (set.union s1!424 s2!395) f!607)))))

(assert (=> d!2223171 (= (toList!11130 (map!16439 (set.union s1!424 s2!395) f!607)) lt!2562574)))

(declare-fun b!7123792 () Bool)

(declare-fun content!14101 (List!69027) (Set B!3315))

(assert (=> b!7123792 (= e!4280862 (= (content!14101 lt!2562574) (map!16439 (set.union s1!424 s2!395) f!607)))))

(assert (= (and d!2223171 res!2906663) b!7123792))

(declare-fun m!7841150 () Bool)

(assert (=> d!2223171 m!7841150))

(assert (=> d!2223171 m!7841118))

(declare-fun m!7841152 () Bool)

(assert (=> d!2223171 m!7841152))

(declare-fun m!7841154 () Bool)

(assert (=> b!7123792 m!7841154))

(assert (=> b!7123755 d!2223171))

(declare-fun d!2223173 () Bool)

(declare-fun choose!55051 ((Set A!657) Int) (Set B!3315))

(assert (=> d!2223173 (= (map!16439 (set.union s1!424 s2!395) f!607) (choose!55051 (set.union s1!424 s2!395) f!607))))

(declare-fun bs!1886183 () Bool)

(assert (= bs!1886183 d!2223173))

(declare-fun m!7841156 () Bool)

(assert (=> bs!1886183 m!7841156))

(assert (=> b!7123755 d!2223173))

(declare-fun d!2223175 () Bool)

(declare-fun e!4280863 () Bool)

(assert (=> d!2223175 e!4280863))

(declare-fun res!2906664 () Bool)

(assert (=> d!2223175 (=> (not res!2906664) (not e!4280863))))

(declare-fun lt!2562575 () List!69027)

(assert (=> d!2223175 (= res!2906664 (noDuplicate!2802 lt!2562575))))

(assert (=> d!2223175 (= lt!2562575 (choose!55050 (set.union (map!16439 s1!424 f!607) (map!16439 s2!395 f!607))))))

(assert (=> d!2223175 (= (toList!11130 (set.union (map!16439 s1!424 f!607) (map!16439 s2!395 f!607))) lt!2562575)))

(declare-fun b!7123793 () Bool)

(assert (=> b!7123793 (= e!4280863 (= (content!14101 lt!2562575) (set.union (map!16439 s1!424 f!607) (map!16439 s2!395 f!607))))))

(assert (= (and d!2223175 res!2906664) b!7123793))

(declare-fun m!7841158 () Bool)

(assert (=> d!2223175 m!7841158))

(declare-fun m!7841160 () Bool)

(assert (=> d!2223175 m!7841160))

(declare-fun m!7841162 () Bool)

(assert (=> b!7123793 m!7841162))

(assert (=> start!693912 d!2223175))

(declare-fun d!2223177 () Bool)

(assert (=> d!2223177 (= (map!16439 s1!424 f!607) (choose!55051 s1!424 f!607))))

(declare-fun bs!1886184 () Bool)

(assert (= bs!1886184 d!2223177))

(declare-fun m!7841164 () Bool)

(assert (=> bs!1886184 m!7841164))

(assert (=> start!693912 d!2223177))

(declare-fun d!2223179 () Bool)

(assert (=> d!2223179 (= (map!16439 s2!395 f!607) (choose!55051 s2!395 f!607))))

(declare-fun bs!1886185 () Bool)

(assert (= bs!1886185 d!2223179))

(declare-fun m!7841166 () Bool)

(assert (=> bs!1886185 m!7841166))

(assert (=> start!693912 d!2223179))

(declare-fun d!2223181 () Bool)

(declare-fun res!2906669 () Bool)

(declare-fun e!4280868 () Bool)

(assert (=> d!2223181 (=> res!2906669 e!4280868)))

(assert (=> d!2223181 (= res!2906669 (is-Nil!68903 l2!759))))

(assert (=> d!2223181 (= (forall!16900 l2!759 lambda!432954) e!4280868)))

(declare-fun b!7123798 () Bool)

(declare-fun e!4280869 () Bool)

(assert (=> b!7123798 (= e!4280868 e!4280869)))

(declare-fun res!2906670 () Bool)

(assert (=> b!7123798 (=> (not res!2906670) (not e!4280869))))

(declare-fun dynLambda!28084 (Int B!3315) Bool)

(assert (=> b!7123798 (= res!2906670 (dynLambda!28084 lambda!432954 (h!75351 l2!759)))))

(declare-fun b!7123799 () Bool)

(assert (=> b!7123799 (= e!4280869 (forall!16900 (t!382942 l2!759) lambda!432954))))

(assert (= (and d!2223181 (not res!2906669)) b!7123798))

(assert (= (and b!7123798 res!2906670) b!7123799))

(declare-fun b_lambda!271773 () Bool)

(assert (=> (not b_lambda!271773) (not b!7123798)))

(declare-fun m!7841168 () Bool)

(assert (=> b!7123798 m!7841168))

(declare-fun m!7841170 () Bool)

(assert (=> b!7123799 m!7841170))

(assert (=> b!7123756 d!2223181))

(declare-fun condSetEmpty!51322 () Bool)

(assert (=> setNonEmpty!51312 (= condSetEmpty!51322 (= setRest!51313 (as set.empty (Set A!657))))))

(declare-fun setRes!51322 () Bool)

(assert (=> setNonEmpty!51312 (= tp!1961741 setRes!51322)))

(declare-fun setIsEmpty!51322 () Bool)

(assert (=> setIsEmpty!51322 setRes!51322))

(declare-fun setNonEmpty!51322 () Bool)

(declare-fun tp!1961760 () Bool)

(assert (=> setNonEmpty!51322 (= setRes!51322 (and tp!1961760 tp_is_empty!45465))))

(declare-fun setElem!51322 () A!657)

(declare-fun setRest!51322 () (Set A!657))

(assert (=> setNonEmpty!51322 (= setRest!51313 (set.union (set.insert setElem!51322 (as set.empty (Set A!657))) setRest!51322))))

(assert (= (and setNonEmpty!51312 condSetEmpty!51322) setIsEmpty!51322))

(assert (= (and setNonEmpty!51312 (not condSetEmpty!51322)) setNonEmpty!51322))

(declare-fun b!7123806 () Bool)

(declare-fun e!4280872 () Bool)

(declare-fun tp!1961763 () Bool)

(assert (=> b!7123806 (= e!4280872 (and tp_is_empty!45467 tp!1961763))))

(assert (=> b!7123757 (= tp!1961742 e!4280872)))

(assert (= (and b!7123757 (is-Cons!68903 (t!382942 l1!770))) b!7123806))

(declare-fun b!7123807 () Bool)

(declare-fun e!4280873 () Bool)

(declare-fun tp!1961764 () Bool)

(assert (=> b!7123807 (= e!4280873 (and tp_is_empty!45467 tp!1961764))))

(assert (=> b!7123758 (= tp!1961738 e!4280873)))

(assert (= (and b!7123758 (is-Cons!68903 (t!382942 l2!759))) b!7123807))

(declare-fun condSetEmpty!51323 () Bool)

(assert (=> setNonEmpty!51313 (= condSetEmpty!51323 (= setRest!51312 (as set.empty (Set A!657))))))

(declare-fun setRes!51323 () Bool)

(assert (=> setNonEmpty!51313 (= tp!1961740 setRes!51323)))

(declare-fun setIsEmpty!51323 () Bool)

(assert (=> setIsEmpty!51323 setRes!51323))

(declare-fun setNonEmpty!51323 () Bool)

(declare-fun tp!1961765 () Bool)

(assert (=> setNonEmpty!51323 (= setRes!51323 (and tp!1961765 tp_is_empty!45465))))

(declare-fun setElem!51323 () A!657)

(declare-fun setRest!51323 () (Set A!657))

(assert (=> setNonEmpty!51323 (= setRest!51312 (set.union (set.insert setElem!51323 (as set.empty (Set A!657))) setRest!51323))))

(assert (= (and setNonEmpty!51313 condSetEmpty!51323) setIsEmpty!51323))

(assert (= (and setNonEmpty!51313 (not condSetEmpty!51323)) setNonEmpty!51323))

(declare-fun b_lambda!271775 () Bool)

(assert (= b_lambda!271773 (or b!7123756 b_lambda!271775)))

(declare-fun bs!1886186 () Bool)

(declare-fun d!2223183 () Bool)

(assert (= bs!1886186 (and d!2223183 b!7123756)))

(declare-fun contains!20531 (List!69027 B!3315) Bool)

(assert (=> bs!1886186 (= (dynLambda!28084 lambda!432954 (h!75351 l2!759)) (contains!20531 l1!770 (h!75351 l2!759)))))

(declare-fun m!7841172 () Bool)

(assert (=> bs!1886186 m!7841172))

(assert (=> b!7123798 d!2223183))

(push 1)

(assert (not setNonEmpty!51322))

(assert (not b!7123793))

(assert (not b!7123807))

(assert (not bs!1886186))

(assert (not b_next!134541))

(assert b_and!350847)

(assert (not d!2223173))

(assert tp_is_empty!45467)

(assert (not d!2223171))

(assert (not b_lambda!271775))

(assert (not b!7123788))

(assert (not b!7123789))

(assert tp_is_empty!45465)

(assert (not setNonEmpty!51323))

(assert (not b!7123799))

(assert (not b!7123792))

(assert (not d!2223179))

(assert (not d!2223177))

(assert (not d!2223175))

(assert (not b!7123806))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350847)

(assert (not b_next!134541))

(check-sat)

(pop 1)

