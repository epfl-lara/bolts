; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693648 () Bool)

(assert start!693648)

(declare-fun b_free!133711 () Bool)

(declare-fun b_next!134501 () Bool)

(assert (=> start!693648 (= b_free!133711 (not b_next!134501))))

(declare-fun tp!1961284 () Bool)

(declare-fun b_and!350807 () Bool)

(assert (=> start!693648 (= tp!1961284 b_and!350807)))

(declare-fun b!7122630 () Bool)

(assert (=> b!7122630 true))

(declare-fun setNonEmpty!51108 () Bool)

(declare-fun setRes!51108 () Bool)

(declare-fun tp!1961283 () Bool)

(declare-fun tp_is_empty!45387 () Bool)

(assert (=> setNonEmpty!51108 (= setRes!51108 (and tp!1961283 tp_is_empty!45387))))

(declare-datatypes ((A!617 0))(
  ( (A!618 (val!27943 Int)) )
))
(declare-fun s1!414 () (Set A!617))

(declare-fun setElem!51108 () A!617)

(declare-fun setRest!51108 () (Set A!617))

(assert (=> setNonEmpty!51108 (= s1!414 (set.union (set.insert setElem!51108 (as set.empty (Set A!617))) setRest!51108))))

(declare-fun setNonEmpty!51109 () Bool)

(declare-fun setRes!51109 () Bool)

(declare-fun tp!1961282 () Bool)

(assert (=> setNonEmpty!51109 (= setRes!51109 (and tp!1961282 tp_is_empty!45387))))

(declare-fun s2!385 () (Set A!617))

(declare-fun setElem!51109 () A!617)

(declare-fun setRest!51109 () (Set A!617))

(assert (=> setNonEmpty!51109 (= s2!385 (set.union (set.insert setElem!51109 (as set.empty (Set A!617))) setRest!51109))))

(declare-fun b!7122626 () Bool)

(declare-fun e!4279964 () Bool)

(declare-fun tp_is_empty!45385 () Bool)

(declare-fun tp!1961280 () Bool)

(assert (=> b!7122626 (= e!4279964 (and tp_is_empty!45385 tp!1961280))))

(declare-fun b!7122627 () Bool)

(declare-fun res!2905976 () Bool)

(declare-fun e!4279965 () Bool)

(assert (=> b!7122627 (=> (not res!2905976) (not e!4279965))))

(declare-datatypes ((B!3275 0))(
  ( (B!3276 (val!27944 Int)) )
))
(declare-datatypes ((List!69007 0))(
  ( (Nil!68883) (Cons!68883 (h!75331 B!3275) (t!382918 List!69007)) )
))
(declare-fun l1!756 () List!69007)

(assert (=> b!7122627 (= res!2905976 (not (is-Cons!68883 l1!756)))))

(declare-fun res!2905977 () Bool)

(assert (=> start!693648 (=> (not res!2905977) (not e!4279965))))

(declare-fun f!567 () Int)

(declare-fun subseq!746 (List!69007 List!69007) Bool)

(declare-fun toList!11110 ((Set B!3275)) List!69007)

(declare-fun map!16409 ((Set A!617) Int) (Set B!3275))

(assert (=> start!693648 (= res!2905977 (subseq!746 l1!756 (toList!11110 (set.union (map!16409 s1!414 f!567) (map!16409 s2!385 f!567)))))))

(assert (=> start!693648 e!4279965))

(declare-fun e!4279963 () Bool)

(assert (=> start!693648 e!4279963))

(declare-fun condSetEmpty!51108 () Bool)

(assert (=> start!693648 (= condSetEmpty!51108 (= s1!414 (as set.empty (Set A!617))))))

(assert (=> start!693648 setRes!51108))

(declare-fun condSetEmpty!51109 () Bool)

(assert (=> start!693648 (= condSetEmpty!51109 (= s2!385 (as set.empty (Set A!617))))))

(assert (=> start!693648 setRes!51109))

(assert (=> start!693648 e!4279964))

(assert (=> start!693648 tp!1961284))

(declare-fun b!7122628 () Bool)

(declare-fun res!2905978 () Bool)

(assert (=> b!7122628 (=> (not res!2905978) (not e!4279965))))

(declare-fun l2!745 () List!69007)

(assert (=> b!7122628 (= res!2905978 (= l2!745 (toList!11110 (map!16409 (set.union s1!414 s2!385) f!567))))))

(declare-fun b!7122629 () Bool)

(declare-fun tp!1961281 () Bool)

(assert (=> b!7122629 (= e!4279963 (and tp_is_empty!45385 tp!1961281))))

(declare-fun setIsEmpty!51108 () Bool)

(assert (=> setIsEmpty!51108 setRes!51109))

(declare-fun lambda!432914 () Int)

(declare-fun forall!16894 (List!69007 Int) Bool)

(assert (=> b!7122630 (= e!4279965 (not (forall!16894 l1!756 lambda!432914)))))

(declare-fun setIsEmpty!51109 () Bool)

(assert (=> setIsEmpty!51109 setRes!51108))

(assert (= (and start!693648 res!2905977) b!7122628))

(assert (= (and b!7122628 res!2905978) b!7122627))

(assert (= (and b!7122627 res!2905976) b!7122630))

(assert (= (and start!693648 (is-Cons!68883 l1!756)) b!7122629))

(assert (= (and start!693648 condSetEmpty!51108) setIsEmpty!51109))

(assert (= (and start!693648 (not condSetEmpty!51108)) setNonEmpty!51108))

(assert (= (and start!693648 condSetEmpty!51109) setIsEmpty!51108))

(assert (= (and start!693648 (not condSetEmpty!51109)) setNonEmpty!51109))

(assert (= (and start!693648 (is-Cons!68883 l2!745)) b!7122626))

(declare-fun m!7839922 () Bool)

(assert (=> start!693648 m!7839922))

(declare-fun m!7839924 () Bool)

(assert (=> start!693648 m!7839924))

(declare-fun m!7839926 () Bool)

(assert (=> start!693648 m!7839926))

(assert (=> start!693648 m!7839926))

(declare-fun m!7839928 () Bool)

(assert (=> start!693648 m!7839928))

(declare-fun m!7839930 () Bool)

(assert (=> b!7122628 m!7839930))

(assert (=> b!7122628 m!7839930))

(declare-fun m!7839932 () Bool)

(assert (=> b!7122628 m!7839932))

(declare-fun m!7839934 () Bool)

(assert (=> b!7122630 m!7839934))

(push 1)

(assert (not b!7122630))

(assert (not b!7122626))

(assert (not start!693648))

(assert tp_is_empty!45387)

(assert (not b_next!134501))

(assert tp_is_empty!45385)

(assert (not b!7122628))

(assert b_and!350807)

(assert (not setNonEmpty!51109))

(assert (not setNonEmpty!51108))

(assert (not b!7122629))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350807)

(assert (not b_next!134501))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2222713 () Bool)

(declare-fun res!2905996 () Bool)

(declare-fun e!4279984 () Bool)

(assert (=> d!2222713 (=> res!2905996 e!4279984)))

(assert (=> d!2222713 (= res!2905996 (is-Nil!68883 l1!756))))

(assert (=> d!2222713 (= (subseq!746 l1!756 (toList!11110 (set.union (map!16409 s1!414 f!567) (map!16409 s2!385 f!567)))) e!4279984)))

(declare-fun b!7122658 () Bool)

(declare-fun e!4279983 () Bool)

(assert (=> b!7122658 (= e!4279984 e!4279983)))

(declare-fun res!2905999 () Bool)

(assert (=> b!7122658 (=> (not res!2905999) (not e!4279983))))

(assert (=> b!7122658 (= res!2905999 (is-Cons!68883 (toList!11110 (set.union (map!16409 s1!414 f!567) (map!16409 s2!385 f!567)))))))

(declare-fun e!4279986 () Bool)

(declare-fun b!7122661 () Bool)

(assert (=> b!7122661 (= e!4279986 (subseq!746 l1!756 (t!382918 (toList!11110 (set.union (map!16409 s1!414 f!567) (map!16409 s2!385 f!567))))))))

(declare-fun b!7122659 () Bool)

(assert (=> b!7122659 (= e!4279983 e!4279986)))

(declare-fun res!2905998 () Bool)

(assert (=> b!7122659 (=> res!2905998 e!4279986)))

(declare-fun e!4279985 () Bool)

(assert (=> b!7122659 (= res!2905998 e!4279985)))

(declare-fun res!2905997 () Bool)

(assert (=> b!7122659 (=> (not res!2905997) (not e!4279985))))

(assert (=> b!7122659 (= res!2905997 (= (h!75331 l1!756) (h!75331 (toList!11110 (set.union (map!16409 s1!414 f!567) (map!16409 s2!385 f!567))))))))

(declare-fun b!7122660 () Bool)

(assert (=> b!7122660 (= e!4279985 (subseq!746 (t!382918 l1!756) (t!382918 (toList!11110 (set.union (map!16409 s1!414 f!567) (map!16409 s2!385 f!567))))))))

(assert (= (and d!2222713 (not res!2905996)) b!7122658))

(assert (= (and b!7122658 res!2905999) b!7122659))

(assert (= (and b!7122659 res!2905997) b!7122660))

(assert (= (and b!7122659 (not res!2905998)) b!7122661))

(declare-fun m!7839950 () Bool)

(assert (=> b!7122661 m!7839950))

(declare-fun m!7839952 () Bool)

(assert (=> b!7122660 m!7839952))

(assert (=> start!693648 d!2222713))

(declare-fun d!2222715 () Bool)

(declare-fun e!4279989 () Bool)

(assert (=> d!2222715 e!4279989))

(declare-fun res!2906002 () Bool)

(assert (=> d!2222715 (=> (not res!2906002) (not e!4279989))))

(declare-fun lt!2562190 () List!69007)

(declare-fun noDuplicate!2791 (List!69007) Bool)

(assert (=> d!2222715 (= res!2906002 (noDuplicate!2791 lt!2562190))))

(declare-fun choose!55014 ((Set B!3275)) List!69007)

(assert (=> d!2222715 (= lt!2562190 (choose!55014 (set.union (map!16409 s1!414 f!567) (map!16409 s2!385 f!567))))))

(assert (=> d!2222715 (= (toList!11110 (set.union (map!16409 s1!414 f!567) (map!16409 s2!385 f!567))) lt!2562190)))

(declare-fun b!7122664 () Bool)

(declare-fun content!14090 (List!69007) (Set B!3275))

(assert (=> b!7122664 (= e!4279989 (= (content!14090 lt!2562190) (set.union (map!16409 s1!414 f!567) (map!16409 s2!385 f!567))))))

(assert (= (and d!2222715 res!2906002) b!7122664))

(declare-fun m!7839954 () Bool)

(assert (=> d!2222715 m!7839954))

(declare-fun m!7839956 () Bool)

(assert (=> d!2222715 m!7839956))

(declare-fun m!7839958 () Bool)

(assert (=> b!7122664 m!7839958))

(assert (=> start!693648 d!2222715))

(declare-fun d!2222717 () Bool)

(declare-fun choose!55015 ((Set A!617) Int) (Set B!3275))

(assert (=> d!2222717 (= (map!16409 s1!414 f!567) (choose!55015 s1!414 f!567))))

(declare-fun bs!1886084 () Bool)

(assert (= bs!1886084 d!2222717))

(declare-fun m!7839960 () Bool)

(assert (=> bs!1886084 m!7839960))

(assert (=> start!693648 d!2222717))

(declare-fun d!2222719 () Bool)

(assert (=> d!2222719 (= (map!16409 s2!385 f!567) (choose!55015 s2!385 f!567))))

(declare-fun bs!1886085 () Bool)

(assert (= bs!1886085 d!2222719))

(declare-fun m!7839962 () Bool)

(assert (=> bs!1886085 m!7839962))

(assert (=> start!693648 d!2222719))

(declare-fun d!2222721 () Bool)

(declare-fun res!2906007 () Bool)

(declare-fun e!4279994 () Bool)

(assert (=> d!2222721 (=> res!2906007 e!4279994)))

(assert (=> d!2222721 (= res!2906007 (is-Nil!68883 l1!756))))

(assert (=> d!2222721 (= (forall!16894 l1!756 lambda!432914) e!4279994)))

(declare-fun b!7122669 () Bool)

(declare-fun e!4279995 () Bool)

(assert (=> b!7122669 (= e!4279994 e!4279995)))

(declare-fun res!2906008 () Bool)

(assert (=> b!7122669 (=> (not res!2906008) (not e!4279995))))

(declare-fun dynLambda!28080 (Int B!3275) Bool)

(assert (=> b!7122669 (= res!2906008 (dynLambda!28080 lambda!432914 (h!75331 l1!756)))))

(declare-fun b!7122670 () Bool)

(assert (=> b!7122670 (= e!4279995 (forall!16894 (t!382918 l1!756) lambda!432914))))

(assert (= (and d!2222721 (not res!2906007)) b!7122669))

(assert (= (and b!7122669 res!2906008) b!7122670))

(declare-fun b_lambda!271729 () Bool)

(assert (=> (not b_lambda!271729) (not b!7122669)))

(declare-fun m!7839964 () Bool)

(assert (=> b!7122669 m!7839964))

(declare-fun m!7839966 () Bool)

(assert (=> b!7122670 m!7839966))

(assert (=> b!7122630 d!2222721))

(declare-fun d!2222723 () Bool)

(declare-fun e!4279996 () Bool)

(assert (=> d!2222723 e!4279996))

(declare-fun res!2906009 () Bool)

(assert (=> d!2222723 (=> (not res!2906009) (not e!4279996))))

(declare-fun lt!2562191 () List!69007)

(assert (=> d!2222723 (= res!2906009 (noDuplicate!2791 lt!2562191))))

(assert (=> d!2222723 (= lt!2562191 (choose!55014 (map!16409 (set.union s1!414 s2!385) f!567)))))

(assert (=> d!2222723 (= (toList!11110 (map!16409 (set.union s1!414 s2!385) f!567)) lt!2562191)))

(declare-fun b!7122671 () Bool)

(assert (=> b!7122671 (= e!4279996 (= (content!14090 lt!2562191) (map!16409 (set.union s1!414 s2!385) f!567)))))

(assert (= (and d!2222723 res!2906009) b!7122671))

(declare-fun m!7839968 () Bool)

(assert (=> d!2222723 m!7839968))

(assert (=> d!2222723 m!7839930))

(declare-fun m!7839970 () Bool)

(assert (=> d!2222723 m!7839970))

(declare-fun m!7839972 () Bool)

(assert (=> b!7122671 m!7839972))

(assert (=> b!7122628 d!2222723))

(declare-fun d!2222725 () Bool)

(assert (=> d!2222725 (= (map!16409 (set.union s1!414 s2!385) f!567) (choose!55015 (set.union s1!414 s2!385) f!567))))

(declare-fun bs!1886086 () Bool)

(assert (= bs!1886086 d!2222725))

(declare-fun m!7839974 () Bool)

(assert (=> bs!1886086 m!7839974))

(assert (=> b!7122628 d!2222725))

(declare-fun condSetEmpty!51118 () Bool)

(assert (=> setNonEmpty!51108 (= condSetEmpty!51118 (= setRest!51108 (as set.empty (Set A!617))))))

(declare-fun setRes!51118 () Bool)

(assert (=> setNonEmpty!51108 (= tp!1961283 setRes!51118)))

(declare-fun setIsEmpty!51118 () Bool)

(assert (=> setIsEmpty!51118 setRes!51118))

(declare-fun setNonEmpty!51118 () Bool)

(declare-fun tp!1961302 () Bool)

(assert (=> setNonEmpty!51118 (= setRes!51118 (and tp!1961302 tp_is_empty!45387))))

(declare-fun setElem!51118 () A!617)

(declare-fun setRest!51118 () (Set A!617))

(assert (=> setNonEmpty!51118 (= setRest!51108 (set.union (set.insert setElem!51118 (as set.empty (Set A!617))) setRest!51118))))

(assert (= (and setNonEmpty!51108 condSetEmpty!51118) setIsEmpty!51118))

(assert (= (and setNonEmpty!51108 (not condSetEmpty!51118)) setNonEmpty!51118))

(declare-fun b!7122678 () Bool)

(declare-fun e!4279999 () Bool)

(declare-fun tp!1961305 () Bool)

(assert (=> b!7122678 (= e!4279999 (and tp_is_empty!45385 tp!1961305))))

(assert (=> b!7122629 (= tp!1961281 e!4279999)))

(assert (= (and b!7122629 (is-Cons!68883 (t!382918 l1!756))) b!7122678))

(declare-fun condSetEmpty!51119 () Bool)

(assert (=> setNonEmpty!51109 (= condSetEmpty!51119 (= setRest!51109 (as set.empty (Set A!617))))))

(declare-fun setRes!51119 () Bool)

(assert (=> setNonEmpty!51109 (= tp!1961282 setRes!51119)))

(declare-fun setIsEmpty!51119 () Bool)

(assert (=> setIsEmpty!51119 setRes!51119))

(declare-fun setNonEmpty!51119 () Bool)

(declare-fun tp!1961306 () Bool)

(assert (=> setNonEmpty!51119 (= setRes!51119 (and tp!1961306 tp_is_empty!45387))))

(declare-fun setElem!51119 () A!617)

(declare-fun setRest!51119 () (Set A!617))

(assert (=> setNonEmpty!51119 (= setRest!51109 (set.union (set.insert setElem!51119 (as set.empty (Set A!617))) setRest!51119))))

(assert (= (and setNonEmpty!51109 condSetEmpty!51119) setIsEmpty!51119))

(assert (= (and setNonEmpty!51109 (not condSetEmpty!51119)) setNonEmpty!51119))

(declare-fun b!7122679 () Bool)

(declare-fun e!4280000 () Bool)

(declare-fun tp!1961307 () Bool)

(assert (=> b!7122679 (= e!4280000 (and tp_is_empty!45385 tp!1961307))))

(assert (=> b!7122626 (= tp!1961280 e!4280000)))

(assert (= (and b!7122626 (is-Cons!68883 (t!382918 l2!745))) b!7122679))

(declare-fun b_lambda!271731 () Bool)

(assert (= b_lambda!271729 (or b!7122630 b_lambda!271731)))

(declare-fun bs!1886087 () Bool)

(declare-fun d!2222727 () Bool)

(assert (= bs!1886087 (and d!2222727 b!7122630)))

(declare-fun contains!20524 (List!69007 B!3275) Bool)

(assert (=> bs!1886087 (= (dynLambda!28080 lambda!432914 (h!75331 l1!756)) (contains!20524 l2!745 (h!75331 l1!756)))))

(declare-fun m!7839976 () Bool)

(assert (=> bs!1886087 m!7839976))

(assert (=> b!7122669 d!2222727))

(push 1)

(assert (not setNonEmpty!51119))

(assert b_and!350807)

(assert (not b!7122678))

(assert tp_is_empty!45387)

(assert (not b_next!134501))

(assert (not b!7122660))

(assert (not b_lambda!271731))

(assert tp_is_empty!45385)

(assert (not d!2222725))

(assert (not b!7122670))

(assert (not d!2222715))

(assert (not b!7122664))

(assert (not d!2222717))

(assert (not d!2222723))

(assert (not setNonEmpty!51118))

(assert (not b!7122679))

(assert (not bs!1886087))

(assert (not b!7122671))

(assert (not d!2222719))

(assert (not b!7122661))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350807)

(assert (not b_next!134501))

(check-sat)

(pop 1)

