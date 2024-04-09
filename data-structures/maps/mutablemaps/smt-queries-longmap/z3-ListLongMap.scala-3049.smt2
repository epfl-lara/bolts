; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42874 () Bool)

(assert start!42874)

(declare-fun b_free!12105 () Bool)

(declare-fun b_next!12105 () Bool)

(assert (=> start!42874 (= b_free!12105 (not b_next!12105))))

(declare-fun tp!42402 () Bool)

(declare-fun b_and!20739 () Bool)

(assert (=> start!42874 (= tp!42402 b_and!20739)))

(declare-fun b!476699 () Bool)

(declare-fun res!284638 () Bool)

(declare-fun e!280058 () Bool)

(assert (=> b!476699 (=> (not res!284638) (not e!280058))))

(declare-datatypes ((B!1054 0))(
  ( (B!1055 (val!6811 Int)) )
))
(declare-datatypes ((tuple2!8992 0))(
  ( (tuple2!8993 (_1!4506 (_ BitVec 64)) (_2!4506 B!1054)) )
))
(declare-datatypes ((List!9085 0))(
  ( (Nil!9082) (Cons!9081 (h!9937 tuple2!8992) (t!15159 List!9085)) )
))
(declare-datatypes ((ListLongMap!7919 0))(
  ( (ListLongMap!7920 (toList!3975 List!9085)) )
))
(declare-fun lm!215 () ListLongMap!7919)

(declare-fun isEmpty!607 (ListLongMap!7919) Bool)

(assert (=> b!476699 (= res!284638 (not (isEmpty!607 lm!215)))))

(declare-fun b!476700 () Bool)

(declare-fun e!280056 () Bool)

(declare-fun tp!42403 () Bool)

(assert (=> b!476700 (= e!280056 tp!42403)))

(declare-fun res!284639 () Bool)

(declare-fun e!280057 () Bool)

(assert (=> start!42874 (=> (not res!284639) (not e!280057))))

(declare-fun p!166 () Int)

(declare-fun forall!198 (List!9085 Int) Bool)

(assert (=> start!42874 (= res!284639 (forall!198 (toList!3975 lm!215) p!166))))

(assert (=> start!42874 e!280057))

(declare-fun inv!15496 (ListLongMap!7919) Bool)

(assert (=> start!42874 (and (inv!15496 lm!215) e!280056)))

(assert (=> start!42874 tp!42402))

(declare-fun tp_is_empty!13527 () Bool)

(assert (=> start!42874 tp_is_empty!13527))

(assert (=> start!42874 true))

(declare-fun b!476701 () Bool)

(declare-fun lt!217315 () tuple2!8992)

(declare-fun e!280055 () Bool)

(declare-fun +!1737 (ListLongMap!7919 tuple2!8992) ListLongMap!7919)

(assert (=> b!476701 (= e!280055 (not (forall!198 (toList!3975 (+!1737 lm!215 lt!217315)) p!166)))))

(declare-fun lt!217314 () ListLongMap!7919)

(assert (=> b!476701 (forall!198 (toList!3975 (+!1737 lt!217314 lt!217315)) p!166)))

(declare-fun b!85 () B!1054)

(declare-fun a!501 () (_ BitVec 64))

(declare-datatypes ((Unit!14005 0))(
  ( (Unit!14006) )
))
(declare-fun lt!217313 () Unit!14005)

(declare-fun addValidProp!21 (ListLongMap!7919 Int (_ BitVec 64) B!1054) Unit!14005)

(assert (=> b!476701 (= lt!217313 (addValidProp!21 lt!217314 p!166 a!501 b!85))))

(declare-fun b!476702 () Bool)

(assert (=> b!476702 (= e!280058 e!280055)))

(declare-fun res!284641 () Bool)

(assert (=> b!476702 (=> (not res!284641) (not e!280055))))

(assert (=> b!476702 (= res!284641 (forall!198 (toList!3975 lt!217314) p!166))))

(declare-fun tail!126 (ListLongMap!7919) ListLongMap!7919)

(assert (=> b!476702 (= lt!217314 (tail!126 lm!215))))

(declare-fun b!476703 () Bool)

(assert (=> b!476703 (= e!280057 e!280058)))

(declare-fun res!284640 () Bool)

(assert (=> b!476703 (=> (not res!284640) (not e!280058))))

(declare-fun dynLambda!944 (Int tuple2!8992) Bool)

(assert (=> b!476703 (= res!284640 (dynLambda!944 p!166 lt!217315))))

(assert (=> b!476703 (= lt!217315 (tuple2!8993 a!501 b!85))))

(assert (= (and start!42874 res!284639) b!476703))

(assert (= (and b!476703 res!284640) b!476699))

(assert (= (and b!476699 res!284638) b!476702))

(assert (= (and b!476702 res!284641) b!476701))

(assert (= start!42874 b!476700))

(declare-fun b_lambda!10547 () Bool)

(assert (=> (not b_lambda!10547) (not b!476703)))

(declare-fun t!15158 () Bool)

(declare-fun tb!4031 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15158) tb!4031))

(declare-fun result!7593 () Bool)

(assert (=> tb!4031 (= result!7593 true)))

(assert (=> b!476703 t!15158))

(declare-fun b_and!20741 () Bool)

(assert (= b_and!20739 (and (=> t!15158 result!7593) b_and!20741)))

(declare-fun m!459001 () Bool)

(assert (=> b!476699 m!459001))

(declare-fun m!459003 () Bool)

(assert (=> b!476701 m!459003))

(declare-fun m!459005 () Bool)

(assert (=> b!476701 m!459005))

(declare-fun m!459007 () Bool)

(assert (=> b!476701 m!459007))

(declare-fun m!459009 () Bool)

(assert (=> b!476701 m!459009))

(declare-fun m!459011 () Bool)

(assert (=> b!476701 m!459011))

(declare-fun m!459013 () Bool)

(assert (=> start!42874 m!459013))

(declare-fun m!459015 () Bool)

(assert (=> start!42874 m!459015))

(declare-fun m!459017 () Bool)

(assert (=> b!476703 m!459017))

(declare-fun m!459019 () Bool)

(assert (=> b!476702 m!459019))

(declare-fun m!459021 () Bool)

(assert (=> b!476702 m!459021))

(check-sat (not b!476702) b_and!20741 tp_is_empty!13527 (not b_next!12105) (not b_lambda!10547) (not b!476699) (not b!476700) (not start!42874) (not b!476701))
(check-sat b_and!20741 (not b_next!12105))
(get-model)

(declare-fun b_lambda!10555 () Bool)

(assert (= b_lambda!10547 (or (and start!42874 b_free!12105) b_lambda!10555)))

(check-sat (not b!476702) b_and!20741 (not b_lambda!10555) tp_is_empty!13527 (not b_next!12105) (not b!476699) (not b!476700) (not start!42874) (not b!476701))
(check-sat b_and!20741 (not b_next!12105))
(get-model)

(declare-fun d!75791 () Bool)

(declare-fun res!284670 () Bool)

(declare-fun e!280087 () Bool)

(assert (=> d!75791 (=> res!284670 e!280087)))

(get-info :version)

(assert (=> d!75791 (= res!284670 ((_ is Nil!9082) (toList!3975 lm!215)))))

(assert (=> d!75791 (= (forall!198 (toList!3975 lm!215) p!166) e!280087)))

(declare-fun b!476735 () Bool)

(declare-fun e!280088 () Bool)

(assert (=> b!476735 (= e!280087 e!280088)))

(declare-fun res!284671 () Bool)

(assert (=> b!476735 (=> (not res!284671) (not e!280088))))

(assert (=> b!476735 (= res!284671 (dynLambda!944 p!166 (h!9937 (toList!3975 lm!215))))))

(declare-fun b!476736 () Bool)

(assert (=> b!476736 (= e!280088 (forall!198 (t!15159 (toList!3975 lm!215)) p!166))))

(assert (= (and d!75791 (not res!284670)) b!476735))

(assert (= (and b!476735 res!284671) b!476736))

(declare-fun b_lambda!10561 () Bool)

(assert (=> (not b_lambda!10561) (not b!476735)))

(declare-fun t!15168 () Bool)

(declare-fun tb!4039 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15168) tb!4039))

(declare-fun result!7601 () Bool)

(assert (=> tb!4039 (= result!7601 true)))

(assert (=> b!476735 t!15168))

(declare-fun b_and!20751 () Bool)

(assert (= b_and!20741 (and (=> t!15168 result!7601) b_and!20751)))

(declare-fun m!459055 () Bool)

(assert (=> b!476735 m!459055))

(declare-fun m!459057 () Bool)

(assert (=> b!476736 m!459057))

(assert (=> start!42874 d!75791))

(declare-fun d!75793 () Bool)

(declare-fun isStrictlySorted!383 (List!9085) Bool)

(assert (=> d!75793 (= (inv!15496 lm!215) (isStrictlySorted!383 (toList!3975 lm!215)))))

(declare-fun bs!15156 () Bool)

(assert (= bs!15156 d!75793))

(declare-fun m!459059 () Bool)

(assert (=> bs!15156 m!459059))

(assert (=> start!42874 d!75793))

(declare-fun d!75795 () Bool)

(declare-fun isEmpty!610 (List!9085) Bool)

(assert (=> d!75795 (= (isEmpty!607 lm!215) (isEmpty!610 (toList!3975 lm!215)))))

(declare-fun bs!15157 () Bool)

(assert (= bs!15157 d!75795))

(declare-fun m!459061 () Bool)

(assert (=> bs!15157 m!459061))

(assert (=> b!476699 d!75795))

(declare-fun d!75797 () Bool)

(declare-fun e!280101 () Bool)

(assert (=> d!75797 e!280101))

(declare-fun res!284694 () Bool)

(assert (=> d!75797 (=> (not res!284694) (not e!280101))))

(declare-fun lt!217368 () ListLongMap!7919)

(declare-fun contains!2574 (ListLongMap!7919 (_ BitVec 64)) Bool)

(assert (=> d!75797 (= res!284694 (contains!2574 lt!217368 (_1!4506 lt!217315)))))

(declare-fun lt!217365 () List!9085)

(assert (=> d!75797 (= lt!217368 (ListLongMap!7920 lt!217365))))

(declare-fun lt!217366 () Unit!14005)

(declare-fun lt!217367 () Unit!14005)

(assert (=> d!75797 (= lt!217366 lt!217367)))

(declare-datatypes ((Option!393 0))(
  ( (Some!392 (v!9090 B!1054)) (None!391) )
))
(declare-fun getValueByKey!387 (List!9085 (_ BitVec 64)) Option!393)

(assert (=> d!75797 (= (getValueByKey!387 lt!217365 (_1!4506 lt!217315)) (Some!392 (_2!4506 lt!217315)))))

(declare-fun lemmaContainsTupThenGetReturnValue!211 (List!9085 (_ BitVec 64) B!1054) Unit!14005)

(assert (=> d!75797 (= lt!217367 (lemmaContainsTupThenGetReturnValue!211 lt!217365 (_1!4506 lt!217315) (_2!4506 lt!217315)))))

(declare-fun insertStrictlySorted!213 (List!9085 (_ BitVec 64) B!1054) List!9085)

(assert (=> d!75797 (= lt!217365 (insertStrictlySorted!213 (toList!3975 lt!217314) (_1!4506 lt!217315) (_2!4506 lt!217315)))))

(assert (=> d!75797 (= (+!1737 lt!217314 lt!217315) lt!217368)))

(declare-fun b!476759 () Bool)

(declare-fun res!284695 () Bool)

(assert (=> b!476759 (=> (not res!284695) (not e!280101))))

(assert (=> b!476759 (= res!284695 (= (getValueByKey!387 (toList!3975 lt!217368) (_1!4506 lt!217315)) (Some!392 (_2!4506 lt!217315))))))

(declare-fun b!476760 () Bool)

(declare-fun contains!2576 (List!9085 tuple2!8992) Bool)

(assert (=> b!476760 (= e!280101 (contains!2576 (toList!3975 lt!217368) lt!217315))))

(assert (= (and d!75797 res!284694) b!476759))

(assert (= (and b!476759 res!284695) b!476760))

(declare-fun m!459115 () Bool)

(assert (=> d!75797 m!459115))

(declare-fun m!459117 () Bool)

(assert (=> d!75797 m!459117))

(declare-fun m!459119 () Bool)

(assert (=> d!75797 m!459119))

(declare-fun m!459121 () Bool)

(assert (=> d!75797 m!459121))

(declare-fun m!459123 () Bool)

(assert (=> b!476759 m!459123))

(declare-fun m!459125 () Bool)

(assert (=> b!476760 m!459125))

(assert (=> b!476701 d!75797))

(declare-fun d!75809 () Bool)

(declare-fun res!284698 () Bool)

(declare-fun e!280104 () Bool)

(assert (=> d!75809 (=> res!284698 e!280104)))

(assert (=> d!75809 (= res!284698 ((_ is Nil!9082) (toList!3975 (+!1737 lt!217314 lt!217315))))))

(assert (=> d!75809 (= (forall!198 (toList!3975 (+!1737 lt!217314 lt!217315)) p!166) e!280104)))

(declare-fun b!476764 () Bool)

(declare-fun e!280105 () Bool)

(assert (=> b!476764 (= e!280104 e!280105)))

(declare-fun res!284699 () Bool)

(assert (=> b!476764 (=> (not res!284699) (not e!280105))))

(assert (=> b!476764 (= res!284699 (dynLambda!944 p!166 (h!9937 (toList!3975 (+!1737 lt!217314 lt!217315)))))))

(declare-fun b!476765 () Bool)

(assert (=> b!476765 (= e!280105 (forall!198 (t!15159 (toList!3975 (+!1737 lt!217314 lt!217315))) p!166))))

(assert (= (and d!75809 (not res!284698)) b!476764))

(assert (= (and b!476764 res!284699) b!476765))

(declare-fun b_lambda!10565 () Bool)

(assert (=> (not b_lambda!10565) (not b!476764)))

(declare-fun t!15172 () Bool)

(declare-fun tb!4043 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15172) tb!4043))

(declare-fun result!7605 () Bool)

(assert (=> tb!4043 (= result!7605 true)))

(assert (=> b!476764 t!15172))

(declare-fun b_and!20755 () Bool)

(assert (= b_and!20751 (and (=> t!15172 result!7605) b_and!20755)))

(declare-fun m!459127 () Bool)

(assert (=> b!476764 m!459127))

(declare-fun m!459129 () Bool)

(assert (=> b!476765 m!459129))

(assert (=> b!476701 d!75809))

(declare-fun d!75811 () Bool)

(assert (=> d!75811 (forall!198 (toList!3975 (+!1737 lt!217314 (tuple2!8993 a!501 b!85))) p!166)))

(declare-fun lt!217377 () Unit!14005)

(declare-fun choose!1370 (ListLongMap!7919 Int (_ BitVec 64) B!1054) Unit!14005)

(assert (=> d!75811 (= lt!217377 (choose!1370 lt!217314 p!166 a!501 b!85))))

(declare-fun e!280125 () Bool)

(assert (=> d!75811 e!280125))

(declare-fun res!284716 () Bool)

(assert (=> d!75811 (=> (not res!284716) (not e!280125))))

(assert (=> d!75811 (= res!284716 (forall!198 (toList!3975 lt!217314) p!166))))

(assert (=> d!75811 (= (addValidProp!21 lt!217314 p!166 a!501 b!85) lt!217377)))

(declare-fun b!476789 () Bool)

(assert (=> b!476789 (= e!280125 (dynLambda!944 p!166 (tuple2!8993 a!501 b!85)))))

(assert (= (and d!75811 res!284716) b!476789))

(declare-fun b_lambda!10591 () Bool)

(assert (=> (not b_lambda!10591) (not b!476789)))

(declare-fun t!15188 () Bool)

(declare-fun tb!4059 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15188) tb!4059))

(declare-fun result!7625 () Bool)

(assert (=> tb!4059 (= result!7625 true)))

(assert (=> b!476789 t!15188))

(declare-fun b_and!20771 () Bool)

(assert (= b_and!20755 (and (=> t!15188 result!7625) b_and!20771)))

(declare-fun m!459177 () Bool)

(assert (=> d!75811 m!459177))

(declare-fun m!459179 () Bool)

(assert (=> d!75811 m!459179))

(declare-fun m!459181 () Bool)

(assert (=> d!75811 m!459181))

(assert (=> d!75811 m!459019))

(declare-fun m!459183 () Bool)

(assert (=> b!476789 m!459183))

(assert (=> b!476701 d!75811))

(declare-fun d!75833 () Bool)

(declare-fun e!280129 () Bool)

(assert (=> d!75833 e!280129))

(declare-fun res!284717 () Bool)

(assert (=> d!75833 (=> (not res!284717) (not e!280129))))

(declare-fun lt!217381 () ListLongMap!7919)

(assert (=> d!75833 (= res!284717 (contains!2574 lt!217381 (_1!4506 lt!217315)))))

(declare-fun lt!217378 () List!9085)

(assert (=> d!75833 (= lt!217381 (ListLongMap!7920 lt!217378))))

(declare-fun lt!217379 () Unit!14005)

(declare-fun lt!217380 () Unit!14005)

(assert (=> d!75833 (= lt!217379 lt!217380)))

(assert (=> d!75833 (= (getValueByKey!387 lt!217378 (_1!4506 lt!217315)) (Some!392 (_2!4506 lt!217315)))))

(assert (=> d!75833 (= lt!217380 (lemmaContainsTupThenGetReturnValue!211 lt!217378 (_1!4506 lt!217315) (_2!4506 lt!217315)))))

(assert (=> d!75833 (= lt!217378 (insertStrictlySorted!213 (toList!3975 lm!215) (_1!4506 lt!217315) (_2!4506 lt!217315)))))

(assert (=> d!75833 (= (+!1737 lm!215 lt!217315) lt!217381)))

(declare-fun b!476795 () Bool)

(declare-fun res!284718 () Bool)

(assert (=> b!476795 (=> (not res!284718) (not e!280129))))

(assert (=> b!476795 (= res!284718 (= (getValueByKey!387 (toList!3975 lt!217381) (_1!4506 lt!217315)) (Some!392 (_2!4506 lt!217315))))))

(declare-fun b!476796 () Bool)

(assert (=> b!476796 (= e!280129 (contains!2576 (toList!3975 lt!217381) lt!217315))))

(assert (= (and d!75833 res!284717) b!476795))

(assert (= (and b!476795 res!284718) b!476796))

(declare-fun m!459185 () Bool)

(assert (=> d!75833 m!459185))

(declare-fun m!459187 () Bool)

(assert (=> d!75833 m!459187))

(declare-fun m!459189 () Bool)

(assert (=> d!75833 m!459189))

(declare-fun m!459191 () Bool)

(assert (=> d!75833 m!459191))

(declare-fun m!459193 () Bool)

(assert (=> b!476795 m!459193))

(declare-fun m!459195 () Bool)

(assert (=> b!476796 m!459195))

(assert (=> b!476701 d!75833))

(declare-fun d!75835 () Bool)

(declare-fun res!284719 () Bool)

(declare-fun e!280130 () Bool)

(assert (=> d!75835 (=> res!284719 e!280130)))

(assert (=> d!75835 (= res!284719 ((_ is Nil!9082) (toList!3975 (+!1737 lm!215 lt!217315))))))

(assert (=> d!75835 (= (forall!198 (toList!3975 (+!1737 lm!215 lt!217315)) p!166) e!280130)))

(declare-fun b!476797 () Bool)

(declare-fun e!280131 () Bool)

(assert (=> b!476797 (= e!280130 e!280131)))

(declare-fun res!284720 () Bool)

(assert (=> b!476797 (=> (not res!284720) (not e!280131))))

(assert (=> b!476797 (= res!284720 (dynLambda!944 p!166 (h!9937 (toList!3975 (+!1737 lm!215 lt!217315)))))))

(declare-fun b!476798 () Bool)

(assert (=> b!476798 (= e!280131 (forall!198 (t!15159 (toList!3975 (+!1737 lm!215 lt!217315))) p!166))))

(assert (= (and d!75835 (not res!284719)) b!476797))

(assert (= (and b!476797 res!284720) b!476798))

(declare-fun b_lambda!10603 () Bool)

(assert (=> (not b_lambda!10603) (not b!476797)))

(declare-fun t!15190 () Bool)

(declare-fun tb!4061 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15190) tb!4061))

(declare-fun result!7627 () Bool)

(assert (=> tb!4061 (= result!7627 true)))

(assert (=> b!476797 t!15190))

(declare-fun b_and!20773 () Bool)

(assert (= b_and!20771 (and (=> t!15190 result!7627) b_and!20773)))

(declare-fun m!459197 () Bool)

(assert (=> b!476797 m!459197))

(declare-fun m!459199 () Bool)

(assert (=> b!476798 m!459199))

(assert (=> b!476701 d!75835))

(declare-fun d!75837 () Bool)

(declare-fun res!284721 () Bool)

(declare-fun e!280132 () Bool)

(assert (=> d!75837 (=> res!284721 e!280132)))

(assert (=> d!75837 (= res!284721 ((_ is Nil!9082) (toList!3975 lt!217314)))))

(assert (=> d!75837 (= (forall!198 (toList!3975 lt!217314) p!166) e!280132)))

(declare-fun b!476799 () Bool)

(declare-fun e!280133 () Bool)

(assert (=> b!476799 (= e!280132 e!280133)))

(declare-fun res!284722 () Bool)

(assert (=> b!476799 (=> (not res!284722) (not e!280133))))

(assert (=> b!476799 (= res!284722 (dynLambda!944 p!166 (h!9937 (toList!3975 lt!217314))))))

(declare-fun b!476800 () Bool)

(assert (=> b!476800 (= e!280133 (forall!198 (t!15159 (toList!3975 lt!217314)) p!166))))

(assert (= (and d!75837 (not res!284721)) b!476799))

(assert (= (and b!476799 res!284722) b!476800))

(declare-fun b_lambda!10605 () Bool)

(assert (=> (not b_lambda!10605) (not b!476799)))

(declare-fun t!15192 () Bool)

(declare-fun tb!4063 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15192) tb!4063))

(declare-fun result!7629 () Bool)

(assert (=> tb!4063 (= result!7629 true)))

(assert (=> b!476799 t!15192))

(declare-fun b_and!20775 () Bool)

(assert (= b_and!20773 (and (=> t!15192 result!7629) b_and!20775)))

(declare-fun m!459201 () Bool)

(assert (=> b!476799 m!459201))

(declare-fun m!459203 () Bool)

(assert (=> b!476800 m!459203))

(assert (=> b!476702 d!75837))

(declare-fun d!75839 () Bool)

(declare-fun tail!129 (List!9085) List!9085)

(assert (=> d!75839 (= (tail!126 lm!215) (ListLongMap!7920 (tail!129 (toList!3975 lm!215))))))

(declare-fun bs!15163 () Bool)

(assert (= bs!15163 d!75839))

(declare-fun m!459205 () Bool)

(assert (=> bs!15163 m!459205))

(assert (=> b!476702 d!75839))

(declare-fun b!476805 () Bool)

(declare-fun e!280136 () Bool)

(declare-fun tp!42418 () Bool)

(assert (=> b!476805 (= e!280136 (and tp_is_empty!13527 tp!42418))))

(assert (=> b!476700 (= tp!42403 e!280136)))

(assert (= (and b!476700 ((_ is Cons!9081) (toList!3975 lm!215))) b!476805))

(declare-fun b_lambda!10607 () Bool)

(assert (= b_lambda!10565 (or (and start!42874 b_free!12105) b_lambda!10607)))

(declare-fun b_lambda!10609 () Bool)

(assert (= b_lambda!10591 (or (and start!42874 b_free!12105) b_lambda!10609)))

(declare-fun b_lambda!10611 () Bool)

(assert (= b_lambda!10605 (or (and start!42874 b_free!12105) b_lambda!10611)))

(declare-fun b_lambda!10613 () Bool)

(assert (= b_lambda!10603 (or (and start!42874 b_free!12105) b_lambda!10613)))

(declare-fun b_lambda!10615 () Bool)

(assert (= b_lambda!10561 (or (and start!42874 b_free!12105) b_lambda!10615)))

(check-sat (not b_lambda!10611) (not b!476805) (not b!476759) (not d!75811) (not b_lambda!10555) (not b!476800) (not d!75833) (not b!476760) (not b_lambda!10615) (not b_next!12105) (not b!476798) b_and!20775 (not d!75793) (not d!75797) (not b_lambda!10607) (not b_lambda!10609) tp_is_empty!13527 (not b!476765) (not b_lambda!10613) (not b!476736) (not b!476795) (not b!476796) (not d!75839) (not d!75795))
(check-sat b_and!20775 (not b_next!12105))
(get-model)

(declare-fun d!75841 () Bool)

(declare-fun res!284729 () Bool)

(declare-fun e!280143 () Bool)

(assert (=> d!75841 (=> res!284729 e!280143)))

(assert (=> d!75841 (= res!284729 (or ((_ is Nil!9082) (toList!3975 lm!215)) ((_ is Nil!9082) (t!15159 (toList!3975 lm!215)))))))

(assert (=> d!75841 (= (isStrictlySorted!383 (toList!3975 lm!215)) e!280143)))

(declare-fun b!476812 () Bool)

(declare-fun e!280144 () Bool)

(assert (=> b!476812 (= e!280143 e!280144)))

(declare-fun res!284730 () Bool)

(assert (=> b!476812 (=> (not res!284730) (not e!280144))))

(assert (=> b!476812 (= res!284730 (bvslt (_1!4506 (h!9937 (toList!3975 lm!215))) (_1!4506 (h!9937 (t!15159 (toList!3975 lm!215))))))))

(declare-fun b!476813 () Bool)

(assert (=> b!476813 (= e!280144 (isStrictlySorted!383 (t!15159 (toList!3975 lm!215))))))

(assert (= (and d!75841 (not res!284729)) b!476812))

(assert (= (and b!476812 res!284730) b!476813))

(declare-fun m!459207 () Bool)

(assert (=> b!476813 m!459207))

(assert (=> d!75793 d!75841))

(declare-fun d!75845 () Bool)

(assert (=> d!75845 (= (tail!129 (toList!3975 lm!215)) (t!15159 (toList!3975 lm!215)))))

(assert (=> d!75839 d!75845))

(declare-fun d!75849 () Bool)

(declare-fun e!280157 () Bool)

(assert (=> d!75849 e!280157))

(declare-fun res!284741 () Bool)

(assert (=> d!75849 (=> res!284741 e!280157)))

(declare-fun lt!217394 () Bool)

(assert (=> d!75849 (= res!284741 (not lt!217394))))

(declare-fun lt!217397 () Bool)

(assert (=> d!75849 (= lt!217394 lt!217397)))

(declare-fun lt!217396 () Unit!14005)

(declare-fun e!280156 () Unit!14005)

(assert (=> d!75849 (= lt!217396 e!280156)))

(declare-fun c!57301 () Bool)

(assert (=> d!75849 (= c!57301 lt!217397)))

(declare-fun containsKey!347 (List!9085 (_ BitVec 64)) Bool)

(assert (=> d!75849 (= lt!217397 (containsKey!347 (toList!3975 lt!217368) (_1!4506 lt!217315)))))

(assert (=> d!75849 (= (contains!2574 lt!217368 (_1!4506 lt!217315)) lt!217394)))

(declare-fun b!476829 () Bool)

(declare-fun lt!217395 () Unit!14005)

(assert (=> b!476829 (= e!280156 lt!217395)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!296 (List!9085 (_ BitVec 64)) Unit!14005)

(assert (=> b!476829 (= lt!217395 (lemmaContainsKeyImpliesGetValueByKeyDefined!296 (toList!3975 lt!217368) (_1!4506 lt!217315)))))

(declare-fun isDefined!297 (Option!393) Bool)

(assert (=> b!476829 (isDefined!297 (getValueByKey!387 (toList!3975 lt!217368) (_1!4506 lt!217315)))))

(declare-fun b!476830 () Bool)

(declare-fun Unit!14009 () Unit!14005)

(assert (=> b!476830 (= e!280156 Unit!14009)))

(declare-fun b!476831 () Bool)

(assert (=> b!476831 (= e!280157 (isDefined!297 (getValueByKey!387 (toList!3975 lt!217368) (_1!4506 lt!217315))))))

(assert (= (and d!75849 c!57301) b!476829))

(assert (= (and d!75849 (not c!57301)) b!476830))

(assert (= (and d!75849 (not res!284741)) b!476831))

(declare-fun m!459237 () Bool)

(assert (=> d!75849 m!459237))

(declare-fun m!459239 () Bool)

(assert (=> b!476829 m!459239))

(assert (=> b!476829 m!459123))

(assert (=> b!476829 m!459123))

(declare-fun m!459241 () Bool)

(assert (=> b!476829 m!459241))

(assert (=> b!476831 m!459123))

(assert (=> b!476831 m!459123))

(assert (=> b!476831 m!459241))

(assert (=> d!75797 d!75849))

(declare-fun b!476842 () Bool)

(declare-fun e!280163 () Option!393)

(assert (=> b!476842 (= e!280163 (getValueByKey!387 (t!15159 lt!217365) (_1!4506 lt!217315)))))

(declare-fun d!75863 () Bool)

(declare-fun c!57306 () Bool)

(assert (=> d!75863 (= c!57306 (and ((_ is Cons!9081) lt!217365) (= (_1!4506 (h!9937 lt!217365)) (_1!4506 lt!217315))))))

(declare-fun e!280162 () Option!393)

(assert (=> d!75863 (= (getValueByKey!387 lt!217365 (_1!4506 lt!217315)) e!280162)))

(declare-fun b!476843 () Bool)

(assert (=> b!476843 (= e!280163 None!391)))

(declare-fun b!476841 () Bool)

(assert (=> b!476841 (= e!280162 e!280163)))

(declare-fun c!57307 () Bool)

(assert (=> b!476841 (= c!57307 (and ((_ is Cons!9081) lt!217365) (not (= (_1!4506 (h!9937 lt!217365)) (_1!4506 lt!217315)))))))

(declare-fun b!476840 () Bool)

(assert (=> b!476840 (= e!280162 (Some!392 (_2!4506 (h!9937 lt!217365))))))

(assert (= (and d!75863 c!57306) b!476840))

(assert (= (and d!75863 (not c!57306)) b!476841))

(assert (= (and b!476841 c!57307) b!476842))

(assert (= (and b!476841 (not c!57307)) b!476843))

(declare-fun m!459243 () Bool)

(assert (=> b!476842 m!459243))

(assert (=> d!75797 d!75863))

(declare-fun d!75865 () Bool)

(assert (=> d!75865 (= (getValueByKey!387 lt!217365 (_1!4506 lt!217315)) (Some!392 (_2!4506 lt!217315)))))

(declare-fun lt!217412 () Unit!14005)

(declare-fun choose!1372 (List!9085 (_ BitVec 64) B!1054) Unit!14005)

(assert (=> d!75865 (= lt!217412 (choose!1372 lt!217365 (_1!4506 lt!217315) (_2!4506 lt!217315)))))

(declare-fun e!280172 () Bool)

(assert (=> d!75865 e!280172))

(declare-fun res!284749 () Bool)

(assert (=> d!75865 (=> (not res!284749) (not e!280172))))

(assert (=> d!75865 (= res!284749 (isStrictlySorted!383 lt!217365))))

(assert (=> d!75865 (= (lemmaContainsTupThenGetReturnValue!211 lt!217365 (_1!4506 lt!217315) (_2!4506 lt!217315)) lt!217412)))

(declare-fun b!476857 () Bool)

(declare-fun res!284750 () Bool)

(assert (=> b!476857 (=> (not res!284750) (not e!280172))))

(assert (=> b!476857 (= res!284750 (containsKey!347 lt!217365 (_1!4506 lt!217315)))))

(declare-fun b!476858 () Bool)

(assert (=> b!476858 (= e!280172 (contains!2576 lt!217365 (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(assert (= (and d!75865 res!284749) b!476857))

(assert (= (and b!476857 res!284750) b!476858))

(assert (=> d!75865 m!459117))

(declare-fun m!459251 () Bool)

(assert (=> d!75865 m!459251))

(declare-fun m!459253 () Bool)

(assert (=> d!75865 m!459253))

(declare-fun m!459255 () Bool)

(assert (=> b!476857 m!459255))

(declare-fun m!459257 () Bool)

(assert (=> b!476858 m!459257))

(assert (=> d!75797 d!75865))

(declare-fun b!476916 () Bool)

(declare-fun e!280204 () List!9085)

(declare-fun call!30735 () List!9085)

(assert (=> b!476916 (= e!280204 call!30735)))

(declare-fun b!476917 () Bool)

(declare-fun res!284767 () Bool)

(declare-fun e!280208 () Bool)

(assert (=> b!476917 (=> (not res!284767) (not e!280208))))

(declare-fun lt!217430 () List!9085)

(assert (=> b!476917 (= res!284767 (containsKey!347 lt!217430 (_1!4506 lt!217315)))))

(declare-fun b!476918 () Bool)

(assert (=> b!476918 (= e!280204 call!30735)))

(declare-fun b!476919 () Bool)

(declare-fun c!57332 () Bool)

(assert (=> b!476919 (= c!57332 (and ((_ is Cons!9081) (toList!3975 lt!217314)) (bvsgt (_1!4506 (h!9937 (toList!3975 lt!217314))) (_1!4506 lt!217315))))))

(declare-fun e!280205 () List!9085)

(assert (=> b!476919 (= e!280205 e!280204)))

(declare-fun b!476920 () Bool)

(declare-fun call!30736 () List!9085)

(assert (=> b!476920 (= e!280205 call!30736)))

(declare-fun b!476921 () Bool)

(declare-fun e!280206 () List!9085)

(assert (=> b!476921 (= e!280206 e!280205)))

(declare-fun c!57333 () Bool)

(assert (=> b!476921 (= c!57333 (and ((_ is Cons!9081) (toList!3975 lt!217314)) (= (_1!4506 (h!9937 (toList!3975 lt!217314))) (_1!4506 lt!217315))))))

(declare-fun b!476922 () Bool)

(declare-fun e!280207 () List!9085)

(assert (=> b!476922 (= e!280207 (insertStrictlySorted!213 (t!15159 (toList!3975 lt!217314)) (_1!4506 lt!217315) (_2!4506 lt!217315)))))

(declare-fun b!476923 () Bool)

(assert (=> b!476923 (= e!280207 (ite c!57333 (t!15159 (toList!3975 lt!217314)) (ite c!57332 (Cons!9081 (h!9937 (toList!3975 lt!217314)) (t!15159 (toList!3975 lt!217314))) Nil!9082)))))

(declare-fun b!476924 () Bool)

(assert (=> b!476924 (= e!280208 (contains!2576 lt!217430 (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun bm!30731 () Bool)

(declare-fun call!30734 () List!9085)

(assert (=> bm!30731 (= call!30736 call!30734)))

(declare-fun c!57334 () Bool)

(declare-fun bm!30732 () Bool)

(declare-fun $colon$colon!109 (List!9085 tuple2!8992) List!9085)

(assert (=> bm!30732 (= call!30734 ($colon$colon!109 e!280207 (ite c!57334 (h!9937 (toList!3975 lt!217314)) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315)))))))

(declare-fun c!57335 () Bool)

(assert (=> bm!30732 (= c!57335 c!57334)))

(declare-fun d!75869 () Bool)

(assert (=> d!75869 e!280208))

(declare-fun res!284766 () Bool)

(assert (=> d!75869 (=> (not res!284766) (not e!280208))))

(assert (=> d!75869 (= res!284766 (isStrictlySorted!383 lt!217430))))

(assert (=> d!75869 (= lt!217430 e!280206)))

(assert (=> d!75869 (= c!57334 (and ((_ is Cons!9081) (toList!3975 lt!217314)) (bvslt (_1!4506 (h!9937 (toList!3975 lt!217314))) (_1!4506 lt!217315))))))

(assert (=> d!75869 (isStrictlySorted!383 (toList!3975 lt!217314))))

(assert (=> d!75869 (= (insertStrictlySorted!213 (toList!3975 lt!217314) (_1!4506 lt!217315) (_2!4506 lt!217315)) lt!217430)))

(declare-fun b!476925 () Bool)

(assert (=> b!476925 (= e!280206 call!30734)))

(declare-fun bm!30733 () Bool)

(assert (=> bm!30733 (= call!30735 call!30736)))

(assert (= (and d!75869 c!57334) b!476925))

(assert (= (and d!75869 (not c!57334)) b!476921))

(assert (= (and b!476921 c!57333) b!476920))

(assert (= (and b!476921 (not c!57333)) b!476919))

(assert (= (and b!476919 c!57332) b!476918))

(assert (= (and b!476919 (not c!57332)) b!476916))

(assert (= (or b!476918 b!476916) bm!30733))

(assert (= (or b!476920 bm!30733) bm!30731))

(assert (= (or b!476925 bm!30731) bm!30732))

(assert (= (and bm!30732 c!57335) b!476922))

(assert (= (and bm!30732 (not c!57335)) b!476923))

(assert (= (and d!75869 res!284766) b!476917))

(assert (= (and b!476917 res!284767) b!476924))

(declare-fun m!459279 () Bool)

(assert (=> b!476924 m!459279))

(declare-fun m!459281 () Bool)

(assert (=> b!476922 m!459281))

(declare-fun m!459283 () Bool)

(assert (=> b!476917 m!459283))

(declare-fun m!459285 () Bool)

(assert (=> bm!30732 m!459285))

(declare-fun m!459287 () Bool)

(assert (=> d!75869 m!459287))

(declare-fun m!459289 () Bool)

(assert (=> d!75869 m!459289))

(assert (=> d!75797 d!75869))

(declare-fun b!476928 () Bool)

(declare-fun e!280210 () Option!393)

(assert (=> b!476928 (= e!280210 (getValueByKey!387 (t!15159 (toList!3975 lt!217368)) (_1!4506 lt!217315)))))

(declare-fun d!75881 () Bool)

(declare-fun c!57336 () Bool)

(assert (=> d!75881 (= c!57336 (and ((_ is Cons!9081) (toList!3975 lt!217368)) (= (_1!4506 (h!9937 (toList!3975 lt!217368))) (_1!4506 lt!217315))))))

(declare-fun e!280209 () Option!393)

(assert (=> d!75881 (= (getValueByKey!387 (toList!3975 lt!217368) (_1!4506 lt!217315)) e!280209)))

(declare-fun b!476929 () Bool)

(assert (=> b!476929 (= e!280210 None!391)))

(declare-fun b!476927 () Bool)

(assert (=> b!476927 (= e!280209 e!280210)))

(declare-fun c!57337 () Bool)

(assert (=> b!476927 (= c!57337 (and ((_ is Cons!9081) (toList!3975 lt!217368)) (not (= (_1!4506 (h!9937 (toList!3975 lt!217368))) (_1!4506 lt!217315)))))))

(declare-fun b!476926 () Bool)

(assert (=> b!476926 (= e!280209 (Some!392 (_2!4506 (h!9937 (toList!3975 lt!217368)))))))

(assert (= (and d!75881 c!57336) b!476926))

(assert (= (and d!75881 (not c!57336)) b!476927))

(assert (= (and b!476927 c!57337) b!476928))

(assert (= (and b!476927 (not c!57337)) b!476929))

(declare-fun m!459291 () Bool)

(assert (=> b!476928 m!459291))

(assert (=> b!476759 d!75881))

(declare-fun d!75883 () Bool)

(declare-fun res!284768 () Bool)

(declare-fun e!280217 () Bool)

(assert (=> d!75883 (=> res!284768 e!280217)))

(assert (=> d!75883 (= res!284768 ((_ is Nil!9082) (toList!3975 (+!1737 lt!217314 (tuple2!8993 a!501 b!85)))))))

(assert (=> d!75883 (= (forall!198 (toList!3975 (+!1737 lt!217314 (tuple2!8993 a!501 b!85))) p!166) e!280217)))

(declare-fun b!476942 () Bool)

(declare-fun e!280218 () Bool)

(assert (=> b!476942 (= e!280217 e!280218)))

(declare-fun res!284769 () Bool)

(assert (=> b!476942 (=> (not res!284769) (not e!280218))))

(assert (=> b!476942 (= res!284769 (dynLambda!944 p!166 (h!9937 (toList!3975 (+!1737 lt!217314 (tuple2!8993 a!501 b!85))))))))

(declare-fun b!476943 () Bool)

(assert (=> b!476943 (= e!280218 (forall!198 (t!15159 (toList!3975 (+!1737 lt!217314 (tuple2!8993 a!501 b!85)))) p!166))))

(assert (= (and d!75883 (not res!284768)) b!476942))

(assert (= (and b!476942 res!284769) b!476943))

(declare-fun b_lambda!10627 () Bool)

(assert (=> (not b_lambda!10627) (not b!476942)))

(declare-fun t!15204 () Bool)

(declare-fun tb!4075 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15204) tb!4075))

(declare-fun result!7643 () Bool)

(assert (=> tb!4075 (= result!7643 true)))

(assert (=> b!476942 t!15204))

(declare-fun b_and!20787 () Bool)

(assert (= b_and!20775 (and (=> t!15204 result!7643) b_and!20787)))

(declare-fun m!459295 () Bool)

(assert (=> b!476942 m!459295))

(declare-fun m!459297 () Bool)

(assert (=> b!476943 m!459297))

(assert (=> d!75811 d!75883))

(declare-fun d!75887 () Bool)

(declare-fun e!280221 () Bool)

(assert (=> d!75887 e!280221))

(declare-fun res!284770 () Bool)

(assert (=> d!75887 (=> (not res!284770) (not e!280221))))

(declare-fun lt!217436 () ListLongMap!7919)

(assert (=> d!75887 (= res!284770 (contains!2574 lt!217436 (_1!4506 (tuple2!8993 a!501 b!85))))))

(declare-fun lt!217433 () List!9085)

(assert (=> d!75887 (= lt!217436 (ListLongMap!7920 lt!217433))))

(declare-fun lt!217434 () Unit!14005)

(declare-fun lt!217435 () Unit!14005)

(assert (=> d!75887 (= lt!217434 lt!217435)))

(assert (=> d!75887 (= (getValueByKey!387 lt!217433 (_1!4506 (tuple2!8993 a!501 b!85))) (Some!392 (_2!4506 (tuple2!8993 a!501 b!85))))))

(assert (=> d!75887 (= lt!217435 (lemmaContainsTupThenGetReturnValue!211 lt!217433 (_1!4506 (tuple2!8993 a!501 b!85)) (_2!4506 (tuple2!8993 a!501 b!85))))))

(assert (=> d!75887 (= lt!217433 (insertStrictlySorted!213 (toList!3975 lt!217314) (_1!4506 (tuple2!8993 a!501 b!85)) (_2!4506 (tuple2!8993 a!501 b!85))))))

(assert (=> d!75887 (= (+!1737 lt!217314 (tuple2!8993 a!501 b!85)) lt!217436)))

(declare-fun b!476948 () Bool)

(declare-fun res!284771 () Bool)

(assert (=> b!476948 (=> (not res!284771) (not e!280221))))

(assert (=> b!476948 (= res!284771 (= (getValueByKey!387 (toList!3975 lt!217436) (_1!4506 (tuple2!8993 a!501 b!85))) (Some!392 (_2!4506 (tuple2!8993 a!501 b!85)))))))

(declare-fun b!476949 () Bool)

(assert (=> b!476949 (= e!280221 (contains!2576 (toList!3975 lt!217436) (tuple2!8993 a!501 b!85)))))

(assert (= (and d!75887 res!284770) b!476948))

(assert (= (and b!476948 res!284771) b!476949))

(declare-fun m!459299 () Bool)

(assert (=> d!75887 m!459299))

(declare-fun m!459301 () Bool)

(assert (=> d!75887 m!459301))

(declare-fun m!459303 () Bool)

(assert (=> d!75887 m!459303))

(declare-fun m!459305 () Bool)

(assert (=> d!75887 m!459305))

(declare-fun m!459307 () Bool)

(assert (=> b!476948 m!459307))

(declare-fun m!459309 () Bool)

(assert (=> b!476949 m!459309))

(assert (=> d!75811 d!75887))

(declare-fun d!75889 () Bool)

(assert (=> d!75889 (forall!198 (toList!3975 (+!1737 lt!217314 (tuple2!8993 a!501 b!85))) p!166)))

(assert (=> d!75889 true))

(declare-fun _$30!90 () Unit!14005)

(assert (=> d!75889 (= (choose!1370 lt!217314 p!166 a!501 b!85) _$30!90)))

(declare-fun bs!15165 () Bool)

(assert (= bs!15165 d!75889))

(assert (=> bs!15165 m!459177))

(assert (=> bs!15165 m!459179))

(assert (=> d!75811 d!75889))

(assert (=> d!75811 d!75837))

(declare-fun d!75893 () Bool)

(declare-fun lt!217443 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!206 (List!9085) (InoxSet tuple2!8992))

(assert (=> d!75893 (= lt!217443 (select (content!206 (toList!3975 lt!217368)) lt!217315))))

(declare-fun e!280243 () Bool)

(assert (=> d!75893 (= lt!217443 e!280243)))

(declare-fun res!284788 () Bool)

(assert (=> d!75893 (=> (not res!284788) (not e!280243))))

(assert (=> d!75893 (= res!284788 ((_ is Cons!9081) (toList!3975 lt!217368)))))

(assert (=> d!75893 (= (contains!2576 (toList!3975 lt!217368) lt!217315) lt!217443)))

(declare-fun b!476987 () Bool)

(declare-fun e!280242 () Bool)

(assert (=> b!476987 (= e!280243 e!280242)))

(declare-fun res!284789 () Bool)

(assert (=> b!476987 (=> res!284789 e!280242)))

(assert (=> b!476987 (= res!284789 (= (h!9937 (toList!3975 lt!217368)) lt!217315))))

(declare-fun b!476988 () Bool)

(assert (=> b!476988 (= e!280242 (contains!2576 (t!15159 (toList!3975 lt!217368)) lt!217315))))

(assert (= (and d!75893 res!284788) b!476987))

(assert (= (and b!476987 (not res!284789)) b!476988))

(declare-fun m!459335 () Bool)

(assert (=> d!75893 m!459335))

(declare-fun m!459337 () Bool)

(assert (=> d!75893 m!459337))

(declare-fun m!459339 () Bool)

(assert (=> b!476988 m!459339))

(assert (=> b!476760 d!75893))

(declare-fun d!75901 () Bool)

(declare-fun res!284790 () Bool)

(declare-fun e!280244 () Bool)

(assert (=> d!75901 (=> res!284790 e!280244)))

(assert (=> d!75901 (= res!284790 ((_ is Nil!9082) (t!15159 (toList!3975 lm!215))))))

(assert (=> d!75901 (= (forall!198 (t!15159 (toList!3975 lm!215)) p!166) e!280244)))

(declare-fun b!476989 () Bool)

(declare-fun e!280245 () Bool)

(assert (=> b!476989 (= e!280244 e!280245)))

(declare-fun res!284791 () Bool)

(assert (=> b!476989 (=> (not res!284791) (not e!280245))))

(assert (=> b!476989 (= res!284791 (dynLambda!944 p!166 (h!9937 (t!15159 (toList!3975 lm!215)))))))

(declare-fun b!476990 () Bool)

(assert (=> b!476990 (= e!280245 (forall!198 (t!15159 (t!15159 (toList!3975 lm!215))) p!166))))

(assert (= (and d!75901 (not res!284790)) b!476989))

(assert (= (and b!476989 res!284791) b!476990))

(declare-fun b_lambda!10629 () Bool)

(assert (=> (not b_lambda!10629) (not b!476989)))

(declare-fun t!15206 () Bool)

(declare-fun tb!4077 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15206) tb!4077))

(declare-fun result!7645 () Bool)

(assert (=> tb!4077 (= result!7645 true)))

(assert (=> b!476989 t!15206))

(declare-fun b_and!20789 () Bool)

(assert (= b_and!20787 (and (=> t!15206 result!7645) b_and!20789)))

(declare-fun m!459341 () Bool)

(assert (=> b!476989 m!459341))

(declare-fun m!459343 () Bool)

(assert (=> b!476990 m!459343))

(assert (=> b!476736 d!75901))

(declare-fun d!75903 () Bool)

(declare-fun res!284796 () Bool)

(declare-fun e!280250 () Bool)

(assert (=> d!75903 (=> res!284796 e!280250)))

(assert (=> d!75903 (= res!284796 ((_ is Nil!9082) (t!15159 (toList!3975 lt!217314))))))

(assert (=> d!75903 (= (forall!198 (t!15159 (toList!3975 lt!217314)) p!166) e!280250)))

(declare-fun b!476993 () Bool)

(declare-fun e!280251 () Bool)

(assert (=> b!476993 (= e!280250 e!280251)))

(declare-fun res!284797 () Bool)

(assert (=> b!476993 (=> (not res!284797) (not e!280251))))

(assert (=> b!476993 (= res!284797 (dynLambda!944 p!166 (h!9937 (t!15159 (toList!3975 lt!217314)))))))

(declare-fun b!476994 () Bool)

(assert (=> b!476994 (= e!280251 (forall!198 (t!15159 (t!15159 (toList!3975 lt!217314))) p!166))))

(assert (= (and d!75903 (not res!284796)) b!476993))

(assert (= (and b!476993 res!284797) b!476994))

(declare-fun b_lambda!10631 () Bool)

(assert (=> (not b_lambda!10631) (not b!476993)))

(declare-fun t!15208 () Bool)

(declare-fun tb!4079 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15208) tb!4079))

(declare-fun result!7647 () Bool)

(assert (=> tb!4079 (= result!7647 true)))

(assert (=> b!476993 t!15208))

(declare-fun b_and!20791 () Bool)

(assert (= b_and!20789 (and (=> t!15208 result!7647) b_and!20791)))

(declare-fun m!459345 () Bool)

(assert (=> b!476993 m!459345))

(declare-fun m!459347 () Bool)

(assert (=> b!476994 m!459347))

(assert (=> b!476800 d!75903))

(declare-fun d!75905 () Bool)

(declare-fun lt!217446 () Bool)

(assert (=> d!75905 (= lt!217446 (select (content!206 (toList!3975 lt!217381)) lt!217315))))

(declare-fun e!280253 () Bool)

(assert (=> d!75905 (= lt!217446 e!280253)))

(declare-fun res!284798 () Bool)

(assert (=> d!75905 (=> (not res!284798) (not e!280253))))

(assert (=> d!75905 (= res!284798 ((_ is Cons!9081) (toList!3975 lt!217381)))))

(assert (=> d!75905 (= (contains!2576 (toList!3975 lt!217381) lt!217315) lt!217446)))

(declare-fun b!476997 () Bool)

(declare-fun e!280252 () Bool)

(assert (=> b!476997 (= e!280253 e!280252)))

(declare-fun res!284799 () Bool)

(assert (=> b!476997 (=> res!284799 e!280252)))

(assert (=> b!476997 (= res!284799 (= (h!9937 (toList!3975 lt!217381)) lt!217315))))

(declare-fun b!476998 () Bool)

(assert (=> b!476998 (= e!280252 (contains!2576 (t!15159 (toList!3975 lt!217381)) lt!217315))))

(assert (= (and d!75905 res!284798) b!476997))

(assert (= (and b!476997 (not res!284799)) b!476998))

(declare-fun m!459349 () Bool)

(assert (=> d!75905 m!459349))

(declare-fun m!459351 () Bool)

(assert (=> d!75905 m!459351))

(declare-fun m!459353 () Bool)

(assert (=> b!476998 m!459353))

(assert (=> b!476796 d!75905))

(declare-fun d!75907 () Bool)

(declare-fun res!284800 () Bool)

(declare-fun e!280254 () Bool)

(assert (=> d!75907 (=> res!284800 e!280254)))

(assert (=> d!75907 (= res!284800 ((_ is Nil!9082) (t!15159 (toList!3975 (+!1737 lt!217314 lt!217315)))))))

(assert (=> d!75907 (= (forall!198 (t!15159 (toList!3975 (+!1737 lt!217314 lt!217315))) p!166) e!280254)))

(declare-fun b!476999 () Bool)

(declare-fun e!280255 () Bool)

(assert (=> b!476999 (= e!280254 e!280255)))

(declare-fun res!284801 () Bool)

(assert (=> b!476999 (=> (not res!284801) (not e!280255))))

(assert (=> b!476999 (= res!284801 (dynLambda!944 p!166 (h!9937 (t!15159 (toList!3975 (+!1737 lt!217314 lt!217315))))))))

(declare-fun b!477000 () Bool)

(assert (=> b!477000 (= e!280255 (forall!198 (t!15159 (t!15159 (toList!3975 (+!1737 lt!217314 lt!217315)))) p!166))))

(assert (= (and d!75907 (not res!284800)) b!476999))

(assert (= (and b!476999 res!284801) b!477000))

(declare-fun b_lambda!10633 () Bool)

(assert (=> (not b_lambda!10633) (not b!476999)))

(declare-fun t!15210 () Bool)

(declare-fun tb!4081 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15210) tb!4081))

(declare-fun result!7649 () Bool)

(assert (=> tb!4081 (= result!7649 true)))

(assert (=> b!476999 t!15210))

(declare-fun b_and!20793 () Bool)

(assert (= b_and!20791 (and (=> t!15210 result!7649) b_and!20793)))

(declare-fun m!459361 () Bool)

(assert (=> b!476999 m!459361))

(declare-fun m!459363 () Bool)

(assert (=> b!477000 m!459363))

(assert (=> b!476765 d!75907))

(declare-fun d!75911 () Bool)

(declare-fun e!280261 () Bool)

(assert (=> d!75911 e!280261))

(declare-fun res!284806 () Bool)

(assert (=> d!75911 (=> res!284806 e!280261)))

(declare-fun lt!217451 () Bool)

(assert (=> d!75911 (= res!284806 (not lt!217451))))

(declare-fun lt!217454 () Bool)

(assert (=> d!75911 (= lt!217451 lt!217454)))

(declare-fun lt!217453 () Unit!14005)

(declare-fun e!280260 () Unit!14005)

(assert (=> d!75911 (= lt!217453 e!280260)))

(declare-fun c!57356 () Bool)

(assert (=> d!75911 (= c!57356 lt!217454)))

(assert (=> d!75911 (= lt!217454 (containsKey!347 (toList!3975 lt!217381) (_1!4506 lt!217315)))))

(assert (=> d!75911 (= (contains!2574 lt!217381 (_1!4506 lt!217315)) lt!217451)))

(declare-fun b!477007 () Bool)

(declare-fun lt!217452 () Unit!14005)

(assert (=> b!477007 (= e!280260 lt!217452)))

(assert (=> b!477007 (= lt!217452 (lemmaContainsKeyImpliesGetValueByKeyDefined!296 (toList!3975 lt!217381) (_1!4506 lt!217315)))))

(assert (=> b!477007 (isDefined!297 (getValueByKey!387 (toList!3975 lt!217381) (_1!4506 lt!217315)))))

(declare-fun b!477008 () Bool)

(declare-fun Unit!14012 () Unit!14005)

(assert (=> b!477008 (= e!280260 Unit!14012)))

(declare-fun b!477009 () Bool)

(assert (=> b!477009 (= e!280261 (isDefined!297 (getValueByKey!387 (toList!3975 lt!217381) (_1!4506 lt!217315))))))

(assert (= (and d!75911 c!57356) b!477007))

(assert (= (and d!75911 (not c!57356)) b!477008))

(assert (= (and d!75911 (not res!284806)) b!477009))

(declare-fun m!459371 () Bool)

(assert (=> d!75911 m!459371))

(declare-fun m!459373 () Bool)

(assert (=> b!477007 m!459373))

(assert (=> b!477007 m!459193))

(assert (=> b!477007 m!459193))

(declare-fun m!459375 () Bool)

(assert (=> b!477007 m!459375))

(assert (=> b!477009 m!459193))

(assert (=> b!477009 m!459193))

(assert (=> b!477009 m!459375))

(assert (=> d!75833 d!75911))

(declare-fun b!477022 () Bool)

(declare-fun e!280269 () Option!393)

(assert (=> b!477022 (= e!280269 (getValueByKey!387 (t!15159 lt!217378) (_1!4506 lt!217315)))))

(declare-fun d!75915 () Bool)

(declare-fun c!57363 () Bool)

(assert (=> d!75915 (= c!57363 (and ((_ is Cons!9081) lt!217378) (= (_1!4506 (h!9937 lt!217378)) (_1!4506 lt!217315))))))

(declare-fun e!280268 () Option!393)

(assert (=> d!75915 (= (getValueByKey!387 lt!217378 (_1!4506 lt!217315)) e!280268)))

(declare-fun b!477023 () Bool)

(assert (=> b!477023 (= e!280269 None!391)))

(declare-fun b!477021 () Bool)

(assert (=> b!477021 (= e!280268 e!280269)))

(declare-fun c!57364 () Bool)

(assert (=> b!477021 (= c!57364 (and ((_ is Cons!9081) lt!217378) (not (= (_1!4506 (h!9937 lt!217378)) (_1!4506 lt!217315)))))))

(declare-fun b!477020 () Bool)

(assert (=> b!477020 (= e!280268 (Some!392 (_2!4506 (h!9937 lt!217378))))))

(assert (= (and d!75915 c!57363) b!477020))

(assert (= (and d!75915 (not c!57363)) b!477021))

(assert (= (and b!477021 c!57364) b!477022))

(assert (= (and b!477021 (not c!57364)) b!477023))

(declare-fun m!459377 () Bool)

(assert (=> b!477022 m!459377))

(assert (=> d!75833 d!75915))

(declare-fun d!75919 () Bool)

(assert (=> d!75919 (= (getValueByKey!387 lt!217378 (_1!4506 lt!217315)) (Some!392 (_2!4506 lt!217315)))))

(declare-fun lt!217455 () Unit!14005)

(assert (=> d!75919 (= lt!217455 (choose!1372 lt!217378 (_1!4506 lt!217315) (_2!4506 lt!217315)))))

(declare-fun e!280272 () Bool)

(assert (=> d!75919 e!280272))

(declare-fun res!284809 () Bool)

(assert (=> d!75919 (=> (not res!284809) (not e!280272))))

(assert (=> d!75919 (= res!284809 (isStrictlySorted!383 lt!217378))))

(assert (=> d!75919 (= (lemmaContainsTupThenGetReturnValue!211 lt!217378 (_1!4506 lt!217315) (_2!4506 lt!217315)) lt!217455)))

(declare-fun b!477026 () Bool)

(declare-fun res!284810 () Bool)

(assert (=> b!477026 (=> (not res!284810) (not e!280272))))

(assert (=> b!477026 (= res!284810 (containsKey!347 lt!217378 (_1!4506 lt!217315)))))

(declare-fun b!477027 () Bool)

(assert (=> b!477027 (= e!280272 (contains!2576 lt!217378 (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(assert (= (and d!75919 res!284809) b!477026))

(assert (= (and b!477026 res!284810) b!477027))

(assert (=> d!75919 m!459187))

(declare-fun m!459381 () Bool)

(assert (=> d!75919 m!459381))

(declare-fun m!459385 () Bool)

(assert (=> d!75919 m!459385))

(declare-fun m!459387 () Bool)

(assert (=> b!477026 m!459387))

(declare-fun m!459389 () Bool)

(assert (=> b!477027 m!459389))

(assert (=> d!75833 d!75919))

(declare-fun b!477028 () Bool)

(declare-fun e!280273 () List!9085)

(declare-fun call!30751 () List!9085)

(assert (=> b!477028 (= e!280273 call!30751)))

(declare-fun b!477029 () Bool)

(declare-fun res!284812 () Bool)

(declare-fun e!280277 () Bool)

(assert (=> b!477029 (=> (not res!284812) (not e!280277))))

(declare-fun lt!217456 () List!9085)

(assert (=> b!477029 (= res!284812 (containsKey!347 lt!217456 (_1!4506 lt!217315)))))

(declare-fun b!477030 () Bool)

(assert (=> b!477030 (= e!280273 call!30751)))

(declare-fun b!477031 () Bool)

(declare-fun c!57365 () Bool)

(assert (=> b!477031 (= c!57365 (and ((_ is Cons!9081) (toList!3975 lm!215)) (bvsgt (_1!4506 (h!9937 (toList!3975 lm!215))) (_1!4506 lt!217315))))))

(declare-fun e!280274 () List!9085)

(assert (=> b!477031 (= e!280274 e!280273)))

(declare-fun b!477032 () Bool)

(declare-fun call!30752 () List!9085)

(assert (=> b!477032 (= e!280274 call!30752)))

(declare-fun b!477033 () Bool)

(declare-fun e!280275 () List!9085)

(assert (=> b!477033 (= e!280275 e!280274)))

(declare-fun c!57366 () Bool)

(assert (=> b!477033 (= c!57366 (and ((_ is Cons!9081) (toList!3975 lm!215)) (= (_1!4506 (h!9937 (toList!3975 lm!215))) (_1!4506 lt!217315))))))

(declare-fun b!477034 () Bool)

(declare-fun e!280276 () List!9085)

(assert (=> b!477034 (= e!280276 (insertStrictlySorted!213 (t!15159 (toList!3975 lm!215)) (_1!4506 lt!217315) (_2!4506 lt!217315)))))

(declare-fun b!477035 () Bool)

(assert (=> b!477035 (= e!280276 (ite c!57366 (t!15159 (toList!3975 lm!215)) (ite c!57365 (Cons!9081 (h!9937 (toList!3975 lm!215)) (t!15159 (toList!3975 lm!215))) Nil!9082)))))

(declare-fun b!477036 () Bool)

(assert (=> b!477036 (= e!280277 (contains!2576 lt!217456 (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun bm!30747 () Bool)

(declare-fun call!30750 () List!9085)

(assert (=> bm!30747 (= call!30752 call!30750)))

(declare-fun c!57367 () Bool)

(declare-fun bm!30748 () Bool)

(assert (=> bm!30748 (= call!30750 ($colon$colon!109 e!280276 (ite c!57367 (h!9937 (toList!3975 lm!215)) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315)))))))

(declare-fun c!57368 () Bool)

(assert (=> bm!30748 (= c!57368 c!57367)))

(declare-fun d!75923 () Bool)

(assert (=> d!75923 e!280277))

(declare-fun res!284811 () Bool)

(assert (=> d!75923 (=> (not res!284811) (not e!280277))))

(assert (=> d!75923 (= res!284811 (isStrictlySorted!383 lt!217456))))

(assert (=> d!75923 (= lt!217456 e!280275)))

(assert (=> d!75923 (= c!57367 (and ((_ is Cons!9081) (toList!3975 lm!215)) (bvslt (_1!4506 (h!9937 (toList!3975 lm!215))) (_1!4506 lt!217315))))))

(assert (=> d!75923 (isStrictlySorted!383 (toList!3975 lm!215))))

(assert (=> d!75923 (= (insertStrictlySorted!213 (toList!3975 lm!215) (_1!4506 lt!217315) (_2!4506 lt!217315)) lt!217456)))

(declare-fun b!477037 () Bool)

(assert (=> b!477037 (= e!280275 call!30750)))

(declare-fun bm!30749 () Bool)

(assert (=> bm!30749 (= call!30751 call!30752)))

(assert (= (and d!75923 c!57367) b!477037))

(assert (= (and d!75923 (not c!57367)) b!477033))

(assert (= (and b!477033 c!57366) b!477032))

(assert (= (and b!477033 (not c!57366)) b!477031))

(assert (= (and b!477031 c!57365) b!477030))

(assert (= (and b!477031 (not c!57365)) b!477028))

(assert (= (or b!477030 b!477028) bm!30749))

(assert (= (or b!477032 bm!30749) bm!30747))

(assert (= (or b!477037 bm!30747) bm!30748))

(assert (= (and bm!30748 c!57368) b!477034))

(assert (= (and bm!30748 (not c!57368)) b!477035))

(assert (= (and d!75923 res!284811) b!477029))

(assert (= (and b!477029 res!284812) b!477036))

(declare-fun m!459391 () Bool)

(assert (=> b!477036 m!459391))

(declare-fun m!459393 () Bool)

(assert (=> b!477034 m!459393))

(declare-fun m!459395 () Bool)

(assert (=> b!477029 m!459395))

(declare-fun m!459397 () Bool)

(assert (=> bm!30748 m!459397))

(declare-fun m!459399 () Bool)

(assert (=> d!75923 m!459399))

(assert (=> d!75923 m!459059))

(assert (=> d!75833 d!75923))

(declare-fun b!477044 () Bool)

(declare-fun e!280281 () Option!393)

(assert (=> b!477044 (= e!280281 (getValueByKey!387 (t!15159 (toList!3975 lt!217381)) (_1!4506 lt!217315)))))

(declare-fun d!75925 () Bool)

(declare-fun c!57371 () Bool)

(assert (=> d!75925 (= c!57371 (and ((_ is Cons!9081) (toList!3975 lt!217381)) (= (_1!4506 (h!9937 (toList!3975 lt!217381))) (_1!4506 lt!217315))))))

(declare-fun e!280280 () Option!393)

(assert (=> d!75925 (= (getValueByKey!387 (toList!3975 lt!217381) (_1!4506 lt!217315)) e!280280)))

(declare-fun b!477045 () Bool)

(assert (=> b!477045 (= e!280281 None!391)))

(declare-fun b!477043 () Bool)

(assert (=> b!477043 (= e!280280 e!280281)))

(declare-fun c!57372 () Bool)

(assert (=> b!477043 (= c!57372 (and ((_ is Cons!9081) (toList!3975 lt!217381)) (not (= (_1!4506 (h!9937 (toList!3975 lt!217381))) (_1!4506 lt!217315)))))))

(declare-fun b!477042 () Bool)

(assert (=> b!477042 (= e!280280 (Some!392 (_2!4506 (h!9937 (toList!3975 lt!217381)))))))

(assert (= (and d!75925 c!57371) b!477042))

(assert (= (and d!75925 (not c!57371)) b!477043))

(assert (= (and b!477043 c!57372) b!477044))

(assert (= (and b!477043 (not c!57372)) b!477045))

(declare-fun m!459401 () Bool)

(assert (=> b!477044 m!459401))

(assert (=> b!476795 d!75925))

(declare-fun d!75927 () Bool)

(declare-fun res!284821 () Bool)

(declare-fun e!280288 () Bool)

(assert (=> d!75927 (=> res!284821 e!280288)))

(assert (=> d!75927 (= res!284821 ((_ is Nil!9082) (t!15159 (toList!3975 (+!1737 lm!215 lt!217315)))))))

(assert (=> d!75927 (= (forall!198 (t!15159 (toList!3975 (+!1737 lm!215 lt!217315))) p!166) e!280288)))

(declare-fun b!477054 () Bool)

(declare-fun e!280289 () Bool)

(assert (=> b!477054 (= e!280288 e!280289)))

(declare-fun res!284822 () Bool)

(assert (=> b!477054 (=> (not res!284822) (not e!280289))))

(assert (=> b!477054 (= res!284822 (dynLambda!944 p!166 (h!9937 (t!15159 (toList!3975 (+!1737 lm!215 lt!217315))))))))

(declare-fun b!477055 () Bool)

(assert (=> b!477055 (= e!280289 (forall!198 (t!15159 (t!15159 (toList!3975 (+!1737 lm!215 lt!217315)))) p!166))))

(assert (= (and d!75927 (not res!284821)) b!477054))

(assert (= (and b!477054 res!284822) b!477055))

(declare-fun b_lambda!10637 () Bool)

(assert (=> (not b_lambda!10637) (not b!477054)))

(declare-fun t!15214 () Bool)

(declare-fun tb!4085 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15214) tb!4085))

(declare-fun result!7653 () Bool)

(assert (=> tb!4085 (= result!7653 true)))

(assert (=> b!477054 t!15214))

(declare-fun b_and!20797 () Bool)

(assert (= b_and!20793 (and (=> t!15214 result!7653) b_and!20797)))

(declare-fun m!459403 () Bool)

(assert (=> b!477054 m!459403))

(declare-fun m!459405 () Bool)

(assert (=> b!477055 m!459405))

(assert (=> b!476798 d!75927))

(declare-fun d!75929 () Bool)

(assert (=> d!75929 (= (isEmpty!610 (toList!3975 lm!215)) ((_ is Nil!9082) (toList!3975 lm!215)))))

(assert (=> d!75795 d!75929))

(declare-fun b!477061 () Bool)

(declare-fun e!280294 () Bool)

(declare-fun tp!42419 () Bool)

(assert (=> b!477061 (= e!280294 (and tp_is_empty!13527 tp!42419))))

(assert (=> b!476805 (= tp!42418 e!280294)))

(assert (= (and b!476805 ((_ is Cons!9081) (t!15159 (toList!3975 lm!215)))) b!477061))

(declare-fun b_lambda!10639 () Bool)

(assert (= b_lambda!10629 (or (and start!42874 b_free!12105) b_lambda!10639)))

(declare-fun b_lambda!10641 () Bool)

(assert (= b_lambda!10637 (or (and start!42874 b_free!12105) b_lambda!10641)))

(declare-fun b_lambda!10643 () Bool)

(assert (= b_lambda!10627 (or (and start!42874 b_free!12105) b_lambda!10643)))

(declare-fun b_lambda!10645 () Bool)

(assert (= b_lambda!10631 (or (and start!42874 b_free!12105) b_lambda!10645)))

(declare-fun b_lambda!10647 () Bool)

(assert (= b_lambda!10633 (or (and start!42874 b_free!12105) b_lambda!10647)))

(check-sat (not b!477055) (not b!477044) (not b_lambda!10613) (not b!476990) (not b!476858) (not b_lambda!10645) (not b!476829) (not d!75889) (not b!477061) (not b_lambda!10611) (not b!476928) (not d!75869) (not b_lambda!10607) (not b_lambda!10609) (not b!476842) (not b_lambda!10555) (not b!476949) (not b!476922) (not d!75905) (not b_lambda!10643) tp_is_empty!13527 (not b_lambda!10639) (not b!477034) (not b!476943) (not b!476924) (not b!476857) (not d!75919) (not d!75865) (not b!477026) (not b_lambda!10615) (not bm!30748) (not b!477027) (not d!75887) (not b!477007) (not b!476994) (not b_next!12105) (not b!476813) (not bm!30732) (not b!476917) (not b!477000) (not b!476998) (not b!476948) (not b_lambda!10641) (not d!75849) (not d!75893) (not d!75911) (not b!476988) (not b!476831) (not b!477022) (not d!75923) (not b!477009) (not b_lambda!10647) (not b!477036) b_and!20797 (not b!477029))
(check-sat b_and!20797 (not b_next!12105))
(get-model)

(declare-fun d!75973 () Bool)

(declare-fun res!284861 () Bool)

(declare-fun e!280347 () Bool)

(assert (=> d!75973 (=> res!284861 e!280347)))

(assert (=> d!75973 (= res!284861 ((_ is Nil!9082) (t!15159 (t!15159 (toList!3975 lt!217314)))))))

(assert (=> d!75973 (= (forall!198 (t!15159 (t!15159 (toList!3975 lt!217314))) p!166) e!280347)))

(declare-fun b!477142 () Bool)

(declare-fun e!280348 () Bool)

(assert (=> b!477142 (= e!280347 e!280348)))

(declare-fun res!284862 () Bool)

(assert (=> b!477142 (=> (not res!284862) (not e!280348))))

(assert (=> b!477142 (= res!284862 (dynLambda!944 p!166 (h!9937 (t!15159 (t!15159 (toList!3975 lt!217314))))))))

(declare-fun b!477143 () Bool)

(assert (=> b!477143 (= e!280348 (forall!198 (t!15159 (t!15159 (t!15159 (toList!3975 lt!217314)))) p!166))))

(assert (= (and d!75973 (not res!284861)) b!477142))

(assert (= (and b!477142 res!284862) b!477143))

(declare-fun b_lambda!10677 () Bool)

(assert (=> (not b_lambda!10677) (not b!477142)))

(declare-fun t!15224 () Bool)

(declare-fun tb!4095 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15224) tb!4095))

(declare-fun result!7663 () Bool)

(assert (=> tb!4095 (= result!7663 true)))

(assert (=> b!477142 t!15224))

(declare-fun b_and!20807 () Bool)

(assert (= b_and!20797 (and (=> t!15224 result!7663) b_and!20807)))

(declare-fun m!459519 () Bool)

(assert (=> b!477142 m!459519))

(declare-fun m!459521 () Bool)

(assert (=> b!477143 m!459521))

(assert (=> b!476994 d!75973))

(declare-fun b!477146 () Bool)

(declare-fun e!280350 () Option!393)

(assert (=> b!477146 (= e!280350 (getValueByKey!387 (t!15159 (t!15159 lt!217378)) (_1!4506 lt!217315)))))

(declare-fun d!75975 () Bool)

(declare-fun c!57395 () Bool)

(assert (=> d!75975 (= c!57395 (and ((_ is Cons!9081) (t!15159 lt!217378)) (= (_1!4506 (h!9937 (t!15159 lt!217378))) (_1!4506 lt!217315))))))

(declare-fun e!280349 () Option!393)

(assert (=> d!75975 (= (getValueByKey!387 (t!15159 lt!217378) (_1!4506 lt!217315)) e!280349)))

(declare-fun b!477147 () Bool)

(assert (=> b!477147 (= e!280350 None!391)))

(declare-fun b!477145 () Bool)

(assert (=> b!477145 (= e!280349 e!280350)))

(declare-fun c!57396 () Bool)

(assert (=> b!477145 (= c!57396 (and ((_ is Cons!9081) (t!15159 lt!217378)) (not (= (_1!4506 (h!9937 (t!15159 lt!217378))) (_1!4506 lt!217315)))))))

(declare-fun b!477144 () Bool)

(assert (=> b!477144 (= e!280349 (Some!392 (_2!4506 (h!9937 (t!15159 lt!217378)))))))

(assert (= (and d!75975 c!57395) b!477144))

(assert (= (and d!75975 (not c!57395)) b!477145))

(assert (= (and b!477145 c!57396) b!477146))

(assert (= (and b!477145 (not c!57396)) b!477147))

(declare-fun m!459523 () Bool)

(assert (=> b!477146 m!459523))

(assert (=> b!477022 d!75975))

(declare-fun d!75977 () Bool)

(declare-fun res!284867 () Bool)

(declare-fun e!280355 () Bool)

(assert (=> d!75977 (=> res!284867 e!280355)))

(assert (=> d!75977 (= res!284867 (and ((_ is Cons!9081) lt!217456) (= (_1!4506 (h!9937 lt!217456)) (_1!4506 lt!217315))))))

(assert (=> d!75977 (= (containsKey!347 lt!217456 (_1!4506 lt!217315)) e!280355)))

(declare-fun b!477152 () Bool)

(declare-fun e!280356 () Bool)

(assert (=> b!477152 (= e!280355 e!280356)))

(declare-fun res!284868 () Bool)

(assert (=> b!477152 (=> (not res!284868) (not e!280356))))

(assert (=> b!477152 (= res!284868 (and (or (not ((_ is Cons!9081) lt!217456)) (bvsle (_1!4506 (h!9937 lt!217456)) (_1!4506 lt!217315))) ((_ is Cons!9081) lt!217456) (bvslt (_1!4506 (h!9937 lt!217456)) (_1!4506 lt!217315))))))

(declare-fun b!477153 () Bool)

(assert (=> b!477153 (= e!280356 (containsKey!347 (t!15159 lt!217456) (_1!4506 lt!217315)))))

(assert (= (and d!75977 (not res!284867)) b!477152))

(assert (= (and b!477152 res!284868) b!477153))

(declare-fun m!459525 () Bool)

(assert (=> b!477153 m!459525))

(assert (=> b!477029 d!75977))

(declare-fun b!477156 () Bool)

(declare-fun e!280358 () Option!393)

(assert (=> b!477156 (= e!280358 (getValueByKey!387 (t!15159 (t!15159 (toList!3975 lt!217381))) (_1!4506 lt!217315)))))

(declare-fun d!75979 () Bool)

(declare-fun c!57397 () Bool)

(assert (=> d!75979 (= c!57397 (and ((_ is Cons!9081) (t!15159 (toList!3975 lt!217381))) (= (_1!4506 (h!9937 (t!15159 (toList!3975 lt!217381)))) (_1!4506 lt!217315))))))

(declare-fun e!280357 () Option!393)

(assert (=> d!75979 (= (getValueByKey!387 (t!15159 (toList!3975 lt!217381)) (_1!4506 lt!217315)) e!280357)))

(declare-fun b!477157 () Bool)

(assert (=> b!477157 (= e!280358 None!391)))

(declare-fun b!477155 () Bool)

(assert (=> b!477155 (= e!280357 e!280358)))

(declare-fun c!57398 () Bool)

(assert (=> b!477155 (= c!57398 (and ((_ is Cons!9081) (t!15159 (toList!3975 lt!217381))) (not (= (_1!4506 (h!9937 (t!15159 (toList!3975 lt!217381)))) (_1!4506 lt!217315)))))))

(declare-fun b!477154 () Bool)

(assert (=> b!477154 (= e!280357 (Some!392 (_2!4506 (h!9937 (t!15159 (toList!3975 lt!217381))))))))

(assert (= (and d!75979 c!57397) b!477154))

(assert (= (and d!75979 (not c!57397)) b!477155))

(assert (= (and b!477155 c!57398) b!477156))

(assert (= (and b!477155 (not c!57398)) b!477157))

(declare-fun m!459527 () Bool)

(assert (=> b!477156 m!459527))

(assert (=> b!477044 d!75979))

(declare-fun d!75981 () Bool)

(declare-fun res!284869 () Bool)

(declare-fun e!280359 () Bool)

(assert (=> d!75981 (=> res!284869 e!280359)))

(assert (=> d!75981 (= res!284869 (or ((_ is Nil!9082) lt!217430) ((_ is Nil!9082) (t!15159 lt!217430))))))

(assert (=> d!75981 (= (isStrictlySorted!383 lt!217430) e!280359)))

(declare-fun b!477158 () Bool)

(declare-fun e!280360 () Bool)

(assert (=> b!477158 (= e!280359 e!280360)))

(declare-fun res!284870 () Bool)

(assert (=> b!477158 (=> (not res!284870) (not e!280360))))

(assert (=> b!477158 (= res!284870 (bvslt (_1!4506 (h!9937 lt!217430)) (_1!4506 (h!9937 (t!15159 lt!217430)))))))

(declare-fun b!477159 () Bool)

(assert (=> b!477159 (= e!280360 (isStrictlySorted!383 (t!15159 lt!217430)))))

(assert (= (and d!75981 (not res!284869)) b!477158))

(assert (= (and b!477158 res!284870) b!477159))

(declare-fun m!459529 () Bool)

(assert (=> b!477159 m!459529))

(assert (=> d!75869 d!75981))

(declare-fun d!75983 () Bool)

(declare-fun res!284871 () Bool)

(declare-fun e!280361 () Bool)

(assert (=> d!75983 (=> res!284871 e!280361)))

(assert (=> d!75983 (= res!284871 (or ((_ is Nil!9082) (toList!3975 lt!217314)) ((_ is Nil!9082) (t!15159 (toList!3975 lt!217314)))))))

(assert (=> d!75983 (= (isStrictlySorted!383 (toList!3975 lt!217314)) e!280361)))

(declare-fun b!477160 () Bool)

(declare-fun e!280362 () Bool)

(assert (=> b!477160 (= e!280361 e!280362)))

(declare-fun res!284872 () Bool)

(assert (=> b!477160 (=> (not res!284872) (not e!280362))))

(assert (=> b!477160 (= res!284872 (bvslt (_1!4506 (h!9937 (toList!3975 lt!217314))) (_1!4506 (h!9937 (t!15159 (toList!3975 lt!217314))))))))

(declare-fun b!477161 () Bool)

(assert (=> b!477161 (= e!280362 (isStrictlySorted!383 (t!15159 (toList!3975 lt!217314))))))

(assert (= (and d!75983 (not res!284871)) b!477160))

(assert (= (and b!477160 res!284872) b!477161))

(declare-fun m!459531 () Bool)

(assert (=> b!477161 m!459531))

(assert (=> d!75869 d!75983))

(assert (=> d!75889 d!75883))

(assert (=> d!75889 d!75887))

(declare-fun b!477162 () Bool)

(declare-fun e!280363 () List!9085)

(declare-fun call!30765 () List!9085)

(assert (=> b!477162 (= e!280363 call!30765)))

(declare-fun b!477163 () Bool)

(declare-fun res!284874 () Bool)

(declare-fun e!280367 () Bool)

(assert (=> b!477163 (=> (not res!284874) (not e!280367))))

(declare-fun lt!217478 () List!9085)

(assert (=> b!477163 (= res!284874 (containsKey!347 lt!217478 (_1!4506 lt!217315)))))

(declare-fun b!477164 () Bool)

(assert (=> b!477164 (= e!280363 call!30765)))

(declare-fun b!477165 () Bool)

(declare-fun c!57399 () Bool)

(assert (=> b!477165 (= c!57399 (and ((_ is Cons!9081) (t!15159 (toList!3975 lt!217314))) (bvsgt (_1!4506 (h!9937 (t!15159 (toList!3975 lt!217314)))) (_1!4506 lt!217315))))))

(declare-fun e!280364 () List!9085)

(assert (=> b!477165 (= e!280364 e!280363)))

(declare-fun b!477166 () Bool)

(declare-fun call!30766 () List!9085)

(assert (=> b!477166 (= e!280364 call!30766)))

(declare-fun b!477167 () Bool)

(declare-fun e!280365 () List!9085)

(assert (=> b!477167 (= e!280365 e!280364)))

(declare-fun c!57400 () Bool)

(assert (=> b!477167 (= c!57400 (and ((_ is Cons!9081) (t!15159 (toList!3975 lt!217314))) (= (_1!4506 (h!9937 (t!15159 (toList!3975 lt!217314)))) (_1!4506 lt!217315))))))

(declare-fun b!477168 () Bool)

(declare-fun e!280366 () List!9085)

(assert (=> b!477168 (= e!280366 (insertStrictlySorted!213 (t!15159 (t!15159 (toList!3975 lt!217314))) (_1!4506 lt!217315) (_2!4506 lt!217315)))))

(declare-fun b!477169 () Bool)

(assert (=> b!477169 (= e!280366 (ite c!57400 (t!15159 (t!15159 (toList!3975 lt!217314))) (ite c!57399 (Cons!9081 (h!9937 (t!15159 (toList!3975 lt!217314))) (t!15159 (t!15159 (toList!3975 lt!217314)))) Nil!9082)))))

(declare-fun b!477170 () Bool)

(assert (=> b!477170 (= e!280367 (contains!2576 lt!217478 (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun bm!30761 () Bool)

(declare-fun call!30764 () List!9085)

(assert (=> bm!30761 (= call!30766 call!30764)))

(declare-fun c!57401 () Bool)

(declare-fun bm!30762 () Bool)

(assert (=> bm!30762 (= call!30764 ($colon$colon!109 e!280366 (ite c!57401 (h!9937 (t!15159 (toList!3975 lt!217314))) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315)))))))

(declare-fun c!57402 () Bool)

(assert (=> bm!30762 (= c!57402 c!57401)))

(declare-fun d!75985 () Bool)

(assert (=> d!75985 e!280367))

(declare-fun res!284873 () Bool)

(assert (=> d!75985 (=> (not res!284873) (not e!280367))))

(assert (=> d!75985 (= res!284873 (isStrictlySorted!383 lt!217478))))

(assert (=> d!75985 (= lt!217478 e!280365)))

(assert (=> d!75985 (= c!57401 (and ((_ is Cons!9081) (t!15159 (toList!3975 lt!217314))) (bvslt (_1!4506 (h!9937 (t!15159 (toList!3975 lt!217314)))) (_1!4506 lt!217315))))))

(assert (=> d!75985 (isStrictlySorted!383 (t!15159 (toList!3975 lt!217314)))))

(assert (=> d!75985 (= (insertStrictlySorted!213 (t!15159 (toList!3975 lt!217314)) (_1!4506 lt!217315) (_2!4506 lt!217315)) lt!217478)))

(declare-fun b!477171 () Bool)

(assert (=> b!477171 (= e!280365 call!30764)))

(declare-fun bm!30763 () Bool)

(assert (=> bm!30763 (= call!30765 call!30766)))

(assert (= (and d!75985 c!57401) b!477171))

(assert (= (and d!75985 (not c!57401)) b!477167))

(assert (= (and b!477167 c!57400) b!477166))

(assert (= (and b!477167 (not c!57400)) b!477165))

(assert (= (and b!477165 c!57399) b!477164))

(assert (= (and b!477165 (not c!57399)) b!477162))

(assert (= (or b!477164 b!477162) bm!30763))

(assert (= (or b!477166 bm!30763) bm!30761))

(assert (= (or b!477171 bm!30761) bm!30762))

(assert (= (and bm!30762 c!57402) b!477168))

(assert (= (and bm!30762 (not c!57402)) b!477169))

(assert (= (and d!75985 res!284873) b!477163))

(assert (= (and b!477163 res!284874) b!477170))

(declare-fun m!459533 () Bool)

(assert (=> b!477170 m!459533))

(declare-fun m!459535 () Bool)

(assert (=> b!477168 m!459535))

(declare-fun m!459537 () Bool)

(assert (=> b!477163 m!459537))

(declare-fun m!459539 () Bool)

(assert (=> bm!30762 m!459539))

(declare-fun m!459541 () Bool)

(assert (=> d!75985 m!459541))

(assert (=> d!75985 m!459531))

(assert (=> b!476922 d!75985))

(assert (=> d!75865 d!75863))

(declare-fun d!75987 () Bool)

(assert (=> d!75987 (= (getValueByKey!387 lt!217365 (_1!4506 lt!217315)) (Some!392 (_2!4506 lt!217315)))))

(assert (=> d!75987 true))

(declare-fun _$22!547 () Unit!14005)

(assert (=> d!75987 (= (choose!1372 lt!217365 (_1!4506 lt!217315) (_2!4506 lt!217315)) _$22!547)))

(declare-fun bs!15167 () Bool)

(assert (= bs!15167 d!75987))

(assert (=> bs!15167 m!459117))

(assert (=> d!75865 d!75987))

(declare-fun d!75989 () Bool)

(declare-fun res!284875 () Bool)

(declare-fun e!280368 () Bool)

(assert (=> d!75989 (=> res!284875 e!280368)))

(assert (=> d!75989 (= res!284875 (or ((_ is Nil!9082) lt!217365) ((_ is Nil!9082) (t!15159 lt!217365))))))

(assert (=> d!75989 (= (isStrictlySorted!383 lt!217365) e!280368)))

(declare-fun b!477172 () Bool)

(declare-fun e!280369 () Bool)

(assert (=> b!477172 (= e!280368 e!280369)))

(declare-fun res!284876 () Bool)

(assert (=> b!477172 (=> (not res!284876) (not e!280369))))

(assert (=> b!477172 (= res!284876 (bvslt (_1!4506 (h!9937 lt!217365)) (_1!4506 (h!9937 (t!15159 lt!217365)))))))

(declare-fun b!477173 () Bool)

(assert (=> b!477173 (= e!280369 (isStrictlySorted!383 (t!15159 lt!217365)))))

(assert (= (and d!75989 (not res!284875)) b!477172))

(assert (= (and b!477172 res!284876) b!477173))

(declare-fun m!459543 () Bool)

(assert (=> b!477173 m!459543))

(assert (=> d!75865 d!75989))

(declare-fun d!75991 () Bool)

(declare-fun res!284877 () Bool)

(declare-fun e!280370 () Bool)

(assert (=> d!75991 (=> res!284877 e!280370)))

(assert (=> d!75991 (= res!284877 ((_ is Nil!9082) (t!15159 (t!15159 (toList!3975 lm!215)))))))

(assert (=> d!75991 (= (forall!198 (t!15159 (t!15159 (toList!3975 lm!215))) p!166) e!280370)))

(declare-fun b!477174 () Bool)

(declare-fun e!280371 () Bool)

(assert (=> b!477174 (= e!280370 e!280371)))

(declare-fun res!284878 () Bool)

(assert (=> b!477174 (=> (not res!284878) (not e!280371))))

(assert (=> b!477174 (= res!284878 (dynLambda!944 p!166 (h!9937 (t!15159 (t!15159 (toList!3975 lm!215))))))))

(declare-fun b!477175 () Bool)

(assert (=> b!477175 (= e!280371 (forall!198 (t!15159 (t!15159 (t!15159 (toList!3975 lm!215)))) p!166))))

(assert (= (and d!75991 (not res!284877)) b!477174))

(assert (= (and b!477174 res!284878) b!477175))

(declare-fun b_lambda!10679 () Bool)

(assert (=> (not b_lambda!10679) (not b!477174)))

(declare-fun t!15226 () Bool)

(declare-fun tb!4097 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15226) tb!4097))

(declare-fun result!7665 () Bool)

(assert (=> tb!4097 (= result!7665 true)))

(assert (=> b!477174 t!15226))

(declare-fun b_and!20809 () Bool)

(assert (= b_and!20807 (and (=> t!15226 result!7665) b_and!20809)))

(declare-fun m!459545 () Bool)

(assert (=> b!477174 m!459545))

(declare-fun m!459547 () Bool)

(assert (=> b!477175 m!459547))

(assert (=> b!476990 d!75991))

(declare-fun d!75993 () Bool)

(declare-fun lt!217479 () Bool)

(assert (=> d!75993 (= lt!217479 (select (content!206 (t!15159 (toList!3975 lt!217381))) lt!217315))))

(declare-fun e!280373 () Bool)

(assert (=> d!75993 (= lt!217479 e!280373)))

(declare-fun res!284879 () Bool)

(assert (=> d!75993 (=> (not res!284879) (not e!280373))))

(assert (=> d!75993 (= res!284879 ((_ is Cons!9081) (t!15159 (toList!3975 lt!217381))))))

(assert (=> d!75993 (= (contains!2576 (t!15159 (toList!3975 lt!217381)) lt!217315) lt!217479)))

(declare-fun b!477176 () Bool)

(declare-fun e!280372 () Bool)

(assert (=> b!477176 (= e!280373 e!280372)))

(declare-fun res!284880 () Bool)

(assert (=> b!477176 (=> res!284880 e!280372)))

(assert (=> b!477176 (= res!284880 (= (h!9937 (t!15159 (toList!3975 lt!217381))) lt!217315))))

(declare-fun b!477177 () Bool)

(assert (=> b!477177 (= e!280372 (contains!2576 (t!15159 (t!15159 (toList!3975 lt!217381))) lt!217315))))

(assert (= (and d!75993 res!284879) b!477176))

(assert (= (and b!477176 (not res!284880)) b!477177))

(declare-fun m!459549 () Bool)

(assert (=> d!75993 m!459549))

(declare-fun m!459551 () Bool)

(assert (=> d!75993 m!459551))

(declare-fun m!459553 () Bool)

(assert (=> b!477177 m!459553))

(assert (=> b!476998 d!75993))

(declare-fun d!75995 () Bool)

(declare-fun res!284881 () Bool)

(declare-fun e!280374 () Bool)

(assert (=> d!75995 (=> res!284881 e!280374)))

(assert (=> d!75995 (= res!284881 (or ((_ is Nil!9082) lt!217456) ((_ is Nil!9082) (t!15159 lt!217456))))))

(assert (=> d!75995 (= (isStrictlySorted!383 lt!217456) e!280374)))

(declare-fun b!477178 () Bool)

(declare-fun e!280375 () Bool)

(assert (=> b!477178 (= e!280374 e!280375)))

(declare-fun res!284882 () Bool)

(assert (=> b!477178 (=> (not res!284882) (not e!280375))))

(assert (=> b!477178 (= res!284882 (bvslt (_1!4506 (h!9937 lt!217456)) (_1!4506 (h!9937 (t!15159 lt!217456)))))))

(declare-fun b!477179 () Bool)

(assert (=> b!477179 (= e!280375 (isStrictlySorted!383 (t!15159 lt!217456)))))

(assert (= (and d!75995 (not res!284881)) b!477178))

(assert (= (and b!477178 res!284882) b!477179))

(declare-fun m!459555 () Bool)

(assert (=> b!477179 m!459555))

(assert (=> d!75923 d!75995))

(assert (=> d!75923 d!75841))

(declare-fun e!280377 () Option!393)

(declare-fun b!477182 () Bool)

(assert (=> b!477182 (= e!280377 (getValueByKey!387 (t!15159 (toList!3975 lt!217436)) (_1!4506 (tuple2!8993 a!501 b!85))))))

(declare-fun c!57403 () Bool)

(declare-fun d!75997 () Bool)

(assert (=> d!75997 (= c!57403 (and ((_ is Cons!9081) (toList!3975 lt!217436)) (= (_1!4506 (h!9937 (toList!3975 lt!217436))) (_1!4506 (tuple2!8993 a!501 b!85)))))))

(declare-fun e!280376 () Option!393)

(assert (=> d!75997 (= (getValueByKey!387 (toList!3975 lt!217436) (_1!4506 (tuple2!8993 a!501 b!85))) e!280376)))

(declare-fun b!477183 () Bool)

(assert (=> b!477183 (= e!280377 None!391)))

(declare-fun b!477181 () Bool)

(assert (=> b!477181 (= e!280376 e!280377)))

(declare-fun c!57404 () Bool)

(assert (=> b!477181 (= c!57404 (and ((_ is Cons!9081) (toList!3975 lt!217436)) (not (= (_1!4506 (h!9937 (toList!3975 lt!217436))) (_1!4506 (tuple2!8993 a!501 b!85))))))))

(declare-fun b!477180 () Bool)

(assert (=> b!477180 (= e!280376 (Some!392 (_2!4506 (h!9937 (toList!3975 lt!217436)))))))

(assert (= (and d!75997 c!57403) b!477180))

(assert (= (and d!75997 (not c!57403)) b!477181))

(assert (= (and b!477181 c!57404) b!477182))

(assert (= (and b!477181 (not c!57404)) b!477183))

(declare-fun m!459557 () Bool)

(assert (=> b!477182 m!459557))

(assert (=> b!476948 d!75997))

(declare-fun d!75999 () Bool)

(declare-fun lt!217480 () Bool)

(assert (=> d!75999 (= lt!217480 (select (content!206 lt!217430) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun e!280379 () Bool)

(assert (=> d!75999 (= lt!217480 e!280379)))

(declare-fun res!284883 () Bool)

(assert (=> d!75999 (=> (not res!284883) (not e!280379))))

(assert (=> d!75999 (= res!284883 ((_ is Cons!9081) lt!217430))))

(assert (=> d!75999 (= (contains!2576 lt!217430 (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))) lt!217480)))

(declare-fun b!477184 () Bool)

(declare-fun e!280378 () Bool)

(assert (=> b!477184 (= e!280379 e!280378)))

(declare-fun res!284884 () Bool)

(assert (=> b!477184 (=> res!284884 e!280378)))

(assert (=> b!477184 (= res!284884 (= (h!9937 lt!217430) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun b!477185 () Bool)

(assert (=> b!477185 (= e!280378 (contains!2576 (t!15159 lt!217430) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(assert (= (and d!75999 res!284883) b!477184))

(assert (= (and b!477184 (not res!284884)) b!477185))

(declare-fun m!459559 () Bool)

(assert (=> d!75999 m!459559))

(declare-fun m!459561 () Bool)

(assert (=> d!75999 m!459561))

(declare-fun m!459563 () Bool)

(assert (=> b!477185 m!459563))

(assert (=> b!476924 d!75999))

(declare-fun d!76001 () Bool)

(assert (=> d!76001 (= ($colon$colon!109 e!280207 (ite c!57334 (h!9937 (toList!3975 lt!217314)) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315)))) (Cons!9081 (ite c!57334 (h!9937 (toList!3975 lt!217314)) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))) e!280207))))

(assert (=> bm!30732 d!76001))

(declare-fun b!477186 () Bool)

(declare-fun e!280380 () List!9085)

(declare-fun call!30768 () List!9085)

(assert (=> b!477186 (= e!280380 call!30768)))

(declare-fun b!477187 () Bool)

(declare-fun res!284886 () Bool)

(declare-fun e!280384 () Bool)

(assert (=> b!477187 (=> (not res!284886) (not e!280384))))

(declare-fun lt!217481 () List!9085)

(assert (=> b!477187 (= res!284886 (containsKey!347 lt!217481 (_1!4506 lt!217315)))))

(declare-fun b!477188 () Bool)

(assert (=> b!477188 (= e!280380 call!30768)))

(declare-fun b!477189 () Bool)

(declare-fun c!57405 () Bool)

(assert (=> b!477189 (= c!57405 (and ((_ is Cons!9081) (t!15159 (toList!3975 lm!215))) (bvsgt (_1!4506 (h!9937 (t!15159 (toList!3975 lm!215)))) (_1!4506 lt!217315))))))

(declare-fun e!280381 () List!9085)

(assert (=> b!477189 (= e!280381 e!280380)))

(declare-fun b!477190 () Bool)

(declare-fun call!30769 () List!9085)

(assert (=> b!477190 (= e!280381 call!30769)))

(declare-fun b!477191 () Bool)

(declare-fun e!280382 () List!9085)

(assert (=> b!477191 (= e!280382 e!280381)))

(declare-fun c!57406 () Bool)

(assert (=> b!477191 (= c!57406 (and ((_ is Cons!9081) (t!15159 (toList!3975 lm!215))) (= (_1!4506 (h!9937 (t!15159 (toList!3975 lm!215)))) (_1!4506 lt!217315))))))

(declare-fun b!477192 () Bool)

(declare-fun e!280383 () List!9085)

(assert (=> b!477192 (= e!280383 (insertStrictlySorted!213 (t!15159 (t!15159 (toList!3975 lm!215))) (_1!4506 lt!217315) (_2!4506 lt!217315)))))

(declare-fun b!477193 () Bool)

(assert (=> b!477193 (= e!280383 (ite c!57406 (t!15159 (t!15159 (toList!3975 lm!215))) (ite c!57405 (Cons!9081 (h!9937 (t!15159 (toList!3975 lm!215))) (t!15159 (t!15159 (toList!3975 lm!215)))) Nil!9082)))))

(declare-fun b!477194 () Bool)

(assert (=> b!477194 (= e!280384 (contains!2576 lt!217481 (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun bm!30764 () Bool)

(declare-fun call!30767 () List!9085)

(assert (=> bm!30764 (= call!30769 call!30767)))

(declare-fun c!57407 () Bool)

(declare-fun bm!30765 () Bool)

(assert (=> bm!30765 (= call!30767 ($colon$colon!109 e!280383 (ite c!57407 (h!9937 (t!15159 (toList!3975 lm!215))) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315)))))))

(declare-fun c!57408 () Bool)

(assert (=> bm!30765 (= c!57408 c!57407)))

(declare-fun d!76003 () Bool)

(assert (=> d!76003 e!280384))

(declare-fun res!284885 () Bool)

(assert (=> d!76003 (=> (not res!284885) (not e!280384))))

(assert (=> d!76003 (= res!284885 (isStrictlySorted!383 lt!217481))))

(assert (=> d!76003 (= lt!217481 e!280382)))

(assert (=> d!76003 (= c!57407 (and ((_ is Cons!9081) (t!15159 (toList!3975 lm!215))) (bvslt (_1!4506 (h!9937 (t!15159 (toList!3975 lm!215)))) (_1!4506 lt!217315))))))

(assert (=> d!76003 (isStrictlySorted!383 (t!15159 (toList!3975 lm!215)))))

(assert (=> d!76003 (= (insertStrictlySorted!213 (t!15159 (toList!3975 lm!215)) (_1!4506 lt!217315) (_2!4506 lt!217315)) lt!217481)))

(declare-fun b!477195 () Bool)

(assert (=> b!477195 (= e!280382 call!30767)))

(declare-fun bm!30766 () Bool)

(assert (=> bm!30766 (= call!30768 call!30769)))

(assert (= (and d!76003 c!57407) b!477195))

(assert (= (and d!76003 (not c!57407)) b!477191))

(assert (= (and b!477191 c!57406) b!477190))

(assert (= (and b!477191 (not c!57406)) b!477189))

(assert (= (and b!477189 c!57405) b!477188))

(assert (= (and b!477189 (not c!57405)) b!477186))

(assert (= (or b!477188 b!477186) bm!30766))

(assert (= (or b!477190 bm!30766) bm!30764))

(assert (= (or b!477195 bm!30764) bm!30765))

(assert (= (and bm!30765 c!57408) b!477192))

(assert (= (and bm!30765 (not c!57408)) b!477193))

(assert (= (and d!76003 res!284885) b!477187))

(assert (= (and b!477187 res!284886) b!477194))

(declare-fun m!459565 () Bool)

(assert (=> b!477194 m!459565))

(declare-fun m!459567 () Bool)

(assert (=> b!477192 m!459567))

(declare-fun m!459569 () Bool)

(assert (=> b!477187 m!459569))

(declare-fun m!459571 () Bool)

(assert (=> bm!30765 m!459571))

(declare-fun m!459573 () Bool)

(assert (=> d!76003 m!459573))

(assert (=> d!76003 m!459207))

(assert (=> b!477034 d!76003))

(declare-fun lt!217482 () Bool)

(declare-fun d!76005 () Bool)

(assert (=> d!76005 (= lt!217482 (select (content!206 (toList!3975 lt!217436)) (tuple2!8993 a!501 b!85)))))

(declare-fun e!280386 () Bool)

(assert (=> d!76005 (= lt!217482 e!280386)))

(declare-fun res!284887 () Bool)

(assert (=> d!76005 (=> (not res!284887) (not e!280386))))

(assert (=> d!76005 (= res!284887 ((_ is Cons!9081) (toList!3975 lt!217436)))))

(assert (=> d!76005 (= (contains!2576 (toList!3975 lt!217436) (tuple2!8993 a!501 b!85)) lt!217482)))

(declare-fun b!477196 () Bool)

(declare-fun e!280385 () Bool)

(assert (=> b!477196 (= e!280386 e!280385)))

(declare-fun res!284888 () Bool)

(assert (=> b!477196 (=> res!284888 e!280385)))

(assert (=> b!477196 (= res!284888 (= (h!9937 (toList!3975 lt!217436)) (tuple2!8993 a!501 b!85)))))

(declare-fun b!477197 () Bool)

(assert (=> b!477197 (= e!280385 (contains!2576 (t!15159 (toList!3975 lt!217436)) (tuple2!8993 a!501 b!85)))))

(assert (= (and d!76005 res!284887) b!477196))

(assert (= (and b!477196 (not res!284888)) b!477197))

(declare-fun m!459575 () Bool)

(assert (=> d!76005 m!459575))

(declare-fun m!459577 () Bool)

(assert (=> d!76005 m!459577))

(declare-fun m!459579 () Bool)

(assert (=> b!477197 m!459579))

(assert (=> b!476949 d!76005))

(declare-fun d!76007 () Bool)

(declare-fun c!57411 () Bool)

(assert (=> d!76007 (= c!57411 ((_ is Nil!9082) (toList!3975 lt!217368)))))

(declare-fun e!280389 () (InoxSet tuple2!8992))

(assert (=> d!76007 (= (content!206 (toList!3975 lt!217368)) e!280389)))

(declare-fun b!477202 () Bool)

(assert (=> b!477202 (= e!280389 ((as const (Array tuple2!8992 Bool)) false))))

(declare-fun b!477203 () Bool)

(assert (=> b!477203 (= e!280389 ((_ map or) (store ((as const (Array tuple2!8992 Bool)) false) (h!9937 (toList!3975 lt!217368)) true) (content!206 (t!15159 (toList!3975 lt!217368)))))))

(assert (= (and d!76007 c!57411) b!477202))

(assert (= (and d!76007 (not c!57411)) b!477203))

(declare-fun m!459581 () Bool)

(assert (=> b!477203 m!459581))

(declare-fun m!459583 () Bool)

(assert (=> b!477203 m!459583))

(assert (=> d!75893 d!76007))

(declare-fun d!76009 () Bool)

(declare-fun lt!217483 () Bool)

(assert (=> d!76009 (= lt!217483 (select (content!206 lt!217456) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun e!280391 () Bool)

(assert (=> d!76009 (= lt!217483 e!280391)))

(declare-fun res!284889 () Bool)

(assert (=> d!76009 (=> (not res!284889) (not e!280391))))

(assert (=> d!76009 (= res!284889 ((_ is Cons!9081) lt!217456))))

(assert (=> d!76009 (= (contains!2576 lt!217456 (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))) lt!217483)))

(declare-fun b!477204 () Bool)

(declare-fun e!280390 () Bool)

(assert (=> b!477204 (= e!280391 e!280390)))

(declare-fun res!284890 () Bool)

(assert (=> b!477204 (=> res!284890 e!280390)))

(assert (=> b!477204 (= res!284890 (= (h!9937 lt!217456) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun b!477205 () Bool)

(assert (=> b!477205 (= e!280390 (contains!2576 (t!15159 lt!217456) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(assert (= (and d!76009 res!284889) b!477204))

(assert (= (and b!477204 (not res!284890)) b!477205))

(declare-fun m!459585 () Bool)

(assert (=> d!76009 m!459585))

(declare-fun m!459587 () Bool)

(assert (=> d!76009 m!459587))

(declare-fun m!459589 () Bool)

(assert (=> b!477205 m!459589))

(assert (=> b!477036 d!76009))

(declare-fun d!76011 () Bool)

(declare-fun res!284891 () Bool)

(declare-fun e!280392 () Bool)

(assert (=> d!76011 (=> res!284891 e!280392)))

(assert (=> d!76011 (= res!284891 ((_ is Nil!9082) (t!15159 (toList!3975 (+!1737 lt!217314 (tuple2!8993 a!501 b!85))))))))

(assert (=> d!76011 (= (forall!198 (t!15159 (toList!3975 (+!1737 lt!217314 (tuple2!8993 a!501 b!85)))) p!166) e!280392)))

(declare-fun b!477206 () Bool)

(declare-fun e!280393 () Bool)

(assert (=> b!477206 (= e!280392 e!280393)))

(declare-fun res!284892 () Bool)

(assert (=> b!477206 (=> (not res!284892) (not e!280393))))

(assert (=> b!477206 (= res!284892 (dynLambda!944 p!166 (h!9937 (t!15159 (toList!3975 (+!1737 lt!217314 (tuple2!8993 a!501 b!85)))))))))

(declare-fun b!477207 () Bool)

(assert (=> b!477207 (= e!280393 (forall!198 (t!15159 (t!15159 (toList!3975 (+!1737 lt!217314 (tuple2!8993 a!501 b!85))))) p!166))))

(assert (= (and d!76011 (not res!284891)) b!477206))

(assert (= (and b!477206 res!284892) b!477207))

(declare-fun b_lambda!10681 () Bool)

(assert (=> (not b_lambda!10681) (not b!477206)))

(declare-fun t!15229 () Bool)

(declare-fun tb!4099 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15229) tb!4099))

(declare-fun result!7667 () Bool)

(assert (=> tb!4099 (= result!7667 true)))

(assert (=> b!477206 t!15229))

(declare-fun b_and!20811 () Bool)

(assert (= b_and!20809 (and (=> t!15229 result!7667) b_and!20811)))

(declare-fun m!459591 () Bool)

(assert (=> b!477206 m!459591))

(declare-fun m!459593 () Bool)

(assert (=> b!477207 m!459593))

(assert (=> b!476943 d!76011))

(declare-fun d!76013 () Bool)

(assert (=> d!76013 (isDefined!297 (getValueByKey!387 (toList!3975 lt!217381) (_1!4506 lt!217315)))))

(declare-fun lt!217486 () Unit!14005)

(declare-fun choose!1375 (List!9085 (_ BitVec 64)) Unit!14005)

(assert (=> d!76013 (= lt!217486 (choose!1375 (toList!3975 lt!217381) (_1!4506 lt!217315)))))

(declare-fun e!280396 () Bool)

(assert (=> d!76013 e!280396))

(declare-fun res!284895 () Bool)

(assert (=> d!76013 (=> (not res!284895) (not e!280396))))

(assert (=> d!76013 (= res!284895 (isStrictlySorted!383 (toList!3975 lt!217381)))))

(assert (=> d!76013 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!296 (toList!3975 lt!217381) (_1!4506 lt!217315)) lt!217486)))

(declare-fun b!477210 () Bool)

(assert (=> b!477210 (= e!280396 (containsKey!347 (toList!3975 lt!217381) (_1!4506 lt!217315)))))

(assert (= (and d!76013 res!284895) b!477210))

(assert (=> d!76013 m!459193))

(assert (=> d!76013 m!459193))

(assert (=> d!76013 m!459375))

(declare-fun m!459595 () Bool)

(assert (=> d!76013 m!459595))

(declare-fun m!459597 () Bool)

(assert (=> d!76013 m!459597))

(assert (=> b!477210 m!459371))

(assert (=> b!477007 d!76013))

(declare-fun d!76015 () Bool)

(declare-fun isEmpty!612 (Option!393) Bool)

(assert (=> d!76015 (= (isDefined!297 (getValueByKey!387 (toList!3975 lt!217381) (_1!4506 lt!217315))) (not (isEmpty!612 (getValueByKey!387 (toList!3975 lt!217381) (_1!4506 lt!217315)))))))

(declare-fun bs!15168 () Bool)

(assert (= bs!15168 d!76015))

(assert (=> bs!15168 m!459193))

(declare-fun m!459599 () Bool)

(assert (=> bs!15168 m!459599))

(assert (=> b!477007 d!76015))

(assert (=> b!477007 d!75925))

(declare-fun d!76017 () Bool)

(declare-fun res!284896 () Bool)

(declare-fun e!280397 () Bool)

(assert (=> d!76017 (=> res!284896 e!280397)))

(assert (=> d!76017 (= res!284896 (or ((_ is Nil!9082) (t!15159 (toList!3975 lm!215))) ((_ is Nil!9082) (t!15159 (t!15159 (toList!3975 lm!215))))))))

(assert (=> d!76017 (= (isStrictlySorted!383 (t!15159 (toList!3975 lm!215))) e!280397)))

(declare-fun b!477211 () Bool)

(declare-fun e!280398 () Bool)

(assert (=> b!477211 (= e!280397 e!280398)))

(declare-fun res!284897 () Bool)

(assert (=> b!477211 (=> (not res!284897) (not e!280398))))

(assert (=> b!477211 (= res!284897 (bvslt (_1!4506 (h!9937 (t!15159 (toList!3975 lm!215)))) (_1!4506 (h!9937 (t!15159 (t!15159 (toList!3975 lm!215)))))))))

(declare-fun b!477212 () Bool)

(assert (=> b!477212 (= e!280398 (isStrictlySorted!383 (t!15159 (t!15159 (toList!3975 lm!215)))))))

(assert (= (and d!76017 (not res!284896)) b!477211))

(assert (= (and b!477211 res!284897) b!477212))

(declare-fun m!459601 () Bool)

(assert (=> b!477212 m!459601))

(assert (=> b!476813 d!76017))

(declare-fun d!76019 () Bool)

(declare-fun res!284898 () Bool)

(declare-fun e!280399 () Bool)

(assert (=> d!76019 (=> res!284898 e!280399)))

(assert (=> d!76019 (= res!284898 (and ((_ is Cons!9081) lt!217365) (= (_1!4506 (h!9937 lt!217365)) (_1!4506 lt!217315))))))

(assert (=> d!76019 (= (containsKey!347 lt!217365 (_1!4506 lt!217315)) e!280399)))

(declare-fun b!477213 () Bool)

(declare-fun e!280400 () Bool)

(assert (=> b!477213 (= e!280399 e!280400)))

(declare-fun res!284899 () Bool)

(assert (=> b!477213 (=> (not res!284899) (not e!280400))))

(assert (=> b!477213 (= res!284899 (and (or (not ((_ is Cons!9081) lt!217365)) (bvsle (_1!4506 (h!9937 lt!217365)) (_1!4506 lt!217315))) ((_ is Cons!9081) lt!217365) (bvslt (_1!4506 (h!9937 lt!217365)) (_1!4506 lt!217315))))))

(declare-fun b!477214 () Bool)

(assert (=> b!477214 (= e!280400 (containsKey!347 (t!15159 lt!217365) (_1!4506 lt!217315)))))

(assert (= (and d!76019 (not res!284898)) b!477213))

(assert (= (and b!477213 res!284899) b!477214))

(declare-fun m!459603 () Bool)

(assert (=> b!477214 m!459603))

(assert (=> b!476857 d!76019))

(declare-fun d!76021 () Bool)

(declare-fun res!284900 () Bool)

(declare-fun e!280401 () Bool)

(assert (=> d!76021 (=> res!284900 e!280401)))

(assert (=> d!76021 (= res!284900 (and ((_ is Cons!9081) (toList!3975 lt!217368)) (= (_1!4506 (h!9937 (toList!3975 lt!217368))) (_1!4506 lt!217315))))))

(assert (=> d!76021 (= (containsKey!347 (toList!3975 lt!217368) (_1!4506 lt!217315)) e!280401)))

(declare-fun b!477215 () Bool)

(declare-fun e!280402 () Bool)

(assert (=> b!477215 (= e!280401 e!280402)))

(declare-fun res!284901 () Bool)

(assert (=> b!477215 (=> (not res!284901) (not e!280402))))

(assert (=> b!477215 (= res!284901 (and (or (not ((_ is Cons!9081) (toList!3975 lt!217368))) (bvsle (_1!4506 (h!9937 (toList!3975 lt!217368))) (_1!4506 lt!217315))) ((_ is Cons!9081) (toList!3975 lt!217368)) (bvslt (_1!4506 (h!9937 (toList!3975 lt!217368))) (_1!4506 lt!217315))))))

(declare-fun b!477216 () Bool)

(assert (=> b!477216 (= e!280402 (containsKey!347 (t!15159 (toList!3975 lt!217368)) (_1!4506 lt!217315)))))

(assert (= (and d!76021 (not res!284900)) b!477215))

(assert (= (and b!477215 res!284901) b!477216))

(declare-fun m!459605 () Bool)

(assert (=> b!477216 m!459605))

(assert (=> d!75849 d!76021))

(declare-fun d!76023 () Bool)

(assert (=> d!76023 (= ($colon$colon!109 e!280276 (ite c!57367 (h!9937 (toList!3975 lm!215)) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315)))) (Cons!9081 (ite c!57367 (h!9937 (toList!3975 lm!215)) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))) e!280276))))

(assert (=> bm!30748 d!76023))

(assert (=> d!75919 d!75915))

(declare-fun d!76025 () Bool)

(assert (=> d!76025 (= (getValueByKey!387 lt!217378 (_1!4506 lt!217315)) (Some!392 (_2!4506 lt!217315)))))

(assert (=> d!76025 true))

(declare-fun _$22!548 () Unit!14005)

(assert (=> d!76025 (= (choose!1372 lt!217378 (_1!4506 lt!217315) (_2!4506 lt!217315)) _$22!548)))

(declare-fun bs!15169 () Bool)

(assert (= bs!15169 d!76025))

(assert (=> bs!15169 m!459187))

(assert (=> d!75919 d!76025))

(declare-fun d!76027 () Bool)

(declare-fun res!284902 () Bool)

(declare-fun e!280403 () Bool)

(assert (=> d!76027 (=> res!284902 e!280403)))

(assert (=> d!76027 (= res!284902 (or ((_ is Nil!9082) lt!217378) ((_ is Nil!9082) (t!15159 lt!217378))))))

(assert (=> d!76027 (= (isStrictlySorted!383 lt!217378) e!280403)))

(declare-fun b!477217 () Bool)

(declare-fun e!280404 () Bool)

(assert (=> b!477217 (= e!280403 e!280404)))

(declare-fun res!284903 () Bool)

(assert (=> b!477217 (=> (not res!284903) (not e!280404))))

(assert (=> b!477217 (= res!284903 (bvslt (_1!4506 (h!9937 lt!217378)) (_1!4506 (h!9937 (t!15159 lt!217378)))))))

(declare-fun b!477218 () Bool)

(assert (=> b!477218 (= e!280404 (isStrictlySorted!383 (t!15159 lt!217378)))))

(assert (= (and d!76027 (not res!284902)) b!477217))

(assert (= (and b!477217 res!284903) b!477218))

(declare-fun m!459607 () Bool)

(assert (=> b!477218 m!459607))

(assert (=> d!75919 d!76027))

(declare-fun d!76029 () Bool)

(declare-fun lt!217487 () Bool)

(assert (=> d!76029 (= lt!217487 (select (content!206 lt!217365) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun e!280406 () Bool)

(assert (=> d!76029 (= lt!217487 e!280406)))

(declare-fun res!284904 () Bool)

(assert (=> d!76029 (=> (not res!284904) (not e!280406))))

(assert (=> d!76029 (= res!284904 ((_ is Cons!9081) lt!217365))))

(assert (=> d!76029 (= (contains!2576 lt!217365 (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))) lt!217487)))

(declare-fun b!477219 () Bool)

(declare-fun e!280405 () Bool)

(assert (=> b!477219 (= e!280406 e!280405)))

(declare-fun res!284905 () Bool)

(assert (=> b!477219 (=> res!284905 e!280405)))

(assert (=> b!477219 (= res!284905 (= (h!9937 lt!217365) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun b!477220 () Bool)

(assert (=> b!477220 (= e!280405 (contains!2576 (t!15159 lt!217365) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(assert (= (and d!76029 res!284904) b!477219))

(assert (= (and b!477219 (not res!284905)) b!477220))

(declare-fun m!459609 () Bool)

(assert (=> d!76029 m!459609))

(declare-fun m!459611 () Bool)

(assert (=> d!76029 m!459611))

(declare-fun m!459613 () Bool)

(assert (=> b!477220 m!459613))

(assert (=> b!476858 d!76029))

(declare-fun d!76031 () Bool)

(declare-fun lt!217488 () Bool)

(assert (=> d!76031 (= lt!217488 (select (content!206 (t!15159 (toList!3975 lt!217368))) lt!217315))))

(declare-fun e!280408 () Bool)

(assert (=> d!76031 (= lt!217488 e!280408)))

(declare-fun res!284906 () Bool)

(assert (=> d!76031 (=> (not res!284906) (not e!280408))))

(assert (=> d!76031 (= res!284906 ((_ is Cons!9081) (t!15159 (toList!3975 lt!217368))))))

(assert (=> d!76031 (= (contains!2576 (t!15159 (toList!3975 lt!217368)) lt!217315) lt!217488)))

(declare-fun b!477221 () Bool)

(declare-fun e!280407 () Bool)

(assert (=> b!477221 (= e!280408 e!280407)))

(declare-fun res!284907 () Bool)

(assert (=> b!477221 (=> res!284907 e!280407)))

(assert (=> b!477221 (= res!284907 (= (h!9937 (t!15159 (toList!3975 lt!217368))) lt!217315))))

(declare-fun b!477222 () Bool)

(assert (=> b!477222 (= e!280407 (contains!2576 (t!15159 (t!15159 (toList!3975 lt!217368))) lt!217315))))

(assert (= (and d!76031 res!284906) b!477221))

(assert (= (and b!477221 (not res!284907)) b!477222))

(assert (=> d!76031 m!459583))

(declare-fun m!459615 () Bool)

(assert (=> d!76031 m!459615))

(declare-fun m!459617 () Bool)

(assert (=> b!477222 m!459617))

(assert (=> b!476988 d!76031))

(declare-fun d!76033 () Bool)

(assert (=> d!76033 (isDefined!297 (getValueByKey!387 (toList!3975 lt!217368) (_1!4506 lt!217315)))))

(declare-fun lt!217489 () Unit!14005)

(assert (=> d!76033 (= lt!217489 (choose!1375 (toList!3975 lt!217368) (_1!4506 lt!217315)))))

(declare-fun e!280409 () Bool)

(assert (=> d!76033 e!280409))

(declare-fun res!284908 () Bool)

(assert (=> d!76033 (=> (not res!284908) (not e!280409))))

(assert (=> d!76033 (= res!284908 (isStrictlySorted!383 (toList!3975 lt!217368)))))

(assert (=> d!76033 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!296 (toList!3975 lt!217368) (_1!4506 lt!217315)) lt!217489)))

(declare-fun b!477223 () Bool)

(assert (=> b!477223 (= e!280409 (containsKey!347 (toList!3975 lt!217368) (_1!4506 lt!217315)))))

(assert (= (and d!76033 res!284908) b!477223))

(assert (=> d!76033 m!459123))

(assert (=> d!76033 m!459123))

(assert (=> d!76033 m!459241))

(declare-fun m!459619 () Bool)

(assert (=> d!76033 m!459619))

(declare-fun m!459621 () Bool)

(assert (=> d!76033 m!459621))

(assert (=> b!477223 m!459237))

(assert (=> b!476829 d!76033))

(declare-fun d!76035 () Bool)

(assert (=> d!76035 (= (isDefined!297 (getValueByKey!387 (toList!3975 lt!217368) (_1!4506 lt!217315))) (not (isEmpty!612 (getValueByKey!387 (toList!3975 lt!217368) (_1!4506 lt!217315)))))))

(declare-fun bs!15170 () Bool)

(assert (= bs!15170 d!76035))

(assert (=> bs!15170 m!459123))

(declare-fun m!459623 () Bool)

(assert (=> bs!15170 m!459623))

(assert (=> b!476829 d!76035))

(assert (=> b!476829 d!75881))

(assert (=> b!477009 d!76015))

(assert (=> b!477009 d!75925))

(declare-fun b!477226 () Bool)

(declare-fun e!280411 () Option!393)

(assert (=> b!477226 (= e!280411 (getValueByKey!387 (t!15159 (t!15159 (toList!3975 lt!217368))) (_1!4506 lt!217315)))))

(declare-fun d!76037 () Bool)

(declare-fun c!57412 () Bool)

(assert (=> d!76037 (= c!57412 (and ((_ is Cons!9081) (t!15159 (toList!3975 lt!217368))) (= (_1!4506 (h!9937 (t!15159 (toList!3975 lt!217368)))) (_1!4506 lt!217315))))))

(declare-fun e!280410 () Option!393)

(assert (=> d!76037 (= (getValueByKey!387 (t!15159 (toList!3975 lt!217368)) (_1!4506 lt!217315)) e!280410)))

(declare-fun b!477227 () Bool)

(assert (=> b!477227 (= e!280411 None!391)))

(declare-fun b!477225 () Bool)

(assert (=> b!477225 (= e!280410 e!280411)))

(declare-fun c!57413 () Bool)

(assert (=> b!477225 (= c!57413 (and ((_ is Cons!9081) (t!15159 (toList!3975 lt!217368))) (not (= (_1!4506 (h!9937 (t!15159 (toList!3975 lt!217368)))) (_1!4506 lt!217315)))))))

(declare-fun b!477224 () Bool)

(assert (=> b!477224 (= e!280410 (Some!392 (_2!4506 (h!9937 (t!15159 (toList!3975 lt!217368))))))))

(assert (= (and d!76037 c!57412) b!477224))

(assert (= (and d!76037 (not c!57412)) b!477225))

(assert (= (and b!477225 c!57413) b!477226))

(assert (= (and b!477225 (not c!57413)) b!477227))

(declare-fun m!459625 () Bool)

(assert (=> b!477226 m!459625))

(assert (=> b!476928 d!76037))

(assert (=> b!476831 d!76035))

(assert (=> b!476831 d!75881))

(declare-fun d!76039 () Bool)

(declare-fun res!284909 () Bool)

(declare-fun e!280412 () Bool)

(assert (=> d!76039 (=> res!284909 e!280412)))

(assert (=> d!76039 (= res!284909 ((_ is Nil!9082) (t!15159 (t!15159 (toList!3975 (+!1737 lm!215 lt!217315))))))))

(assert (=> d!76039 (= (forall!198 (t!15159 (t!15159 (toList!3975 (+!1737 lm!215 lt!217315)))) p!166) e!280412)))

(declare-fun b!477228 () Bool)

(declare-fun e!280413 () Bool)

(assert (=> b!477228 (= e!280412 e!280413)))

(declare-fun res!284910 () Bool)

(assert (=> b!477228 (=> (not res!284910) (not e!280413))))

(assert (=> b!477228 (= res!284910 (dynLambda!944 p!166 (h!9937 (t!15159 (t!15159 (toList!3975 (+!1737 lm!215 lt!217315)))))))))

(declare-fun b!477229 () Bool)

(assert (=> b!477229 (= e!280413 (forall!198 (t!15159 (t!15159 (t!15159 (toList!3975 (+!1737 lm!215 lt!217315))))) p!166))))

(assert (= (and d!76039 (not res!284909)) b!477228))

(assert (= (and b!477228 res!284910) b!477229))

(declare-fun b_lambda!10683 () Bool)

(assert (=> (not b_lambda!10683) (not b!477228)))

(declare-fun t!15231 () Bool)

(declare-fun tb!4101 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15231) tb!4101))

(declare-fun result!7669 () Bool)

(assert (=> tb!4101 (= result!7669 true)))

(assert (=> b!477228 t!15231))

(declare-fun b_and!20813 () Bool)

(assert (= b_and!20811 (and (=> t!15231 result!7669) b_and!20813)))

(declare-fun m!459627 () Bool)

(assert (=> b!477228 m!459627))

(declare-fun m!459629 () Bool)

(assert (=> b!477229 m!459629))

(assert (=> b!477055 d!76039))

(declare-fun d!76041 () Bool)

(declare-fun c!57414 () Bool)

(assert (=> d!76041 (= c!57414 ((_ is Nil!9082) (toList!3975 lt!217381)))))

(declare-fun e!280414 () (InoxSet tuple2!8992))

(assert (=> d!76041 (= (content!206 (toList!3975 lt!217381)) e!280414)))

(declare-fun b!477230 () Bool)

(assert (=> b!477230 (= e!280414 ((as const (Array tuple2!8992 Bool)) false))))

(declare-fun b!477231 () Bool)

(assert (=> b!477231 (= e!280414 ((_ map or) (store ((as const (Array tuple2!8992 Bool)) false) (h!9937 (toList!3975 lt!217381)) true) (content!206 (t!15159 (toList!3975 lt!217381)))))))

(assert (= (and d!76041 c!57414) b!477230))

(assert (= (and d!76041 (not c!57414)) b!477231))

(declare-fun m!459631 () Bool)

(assert (=> b!477231 m!459631))

(assert (=> b!477231 m!459549))

(assert (=> d!75905 d!76041))

(declare-fun d!76043 () Bool)

(declare-fun res!284911 () Bool)

(declare-fun e!280415 () Bool)

(assert (=> d!76043 (=> res!284911 e!280415)))

(assert (=> d!76043 (= res!284911 (and ((_ is Cons!9081) lt!217378) (= (_1!4506 (h!9937 lt!217378)) (_1!4506 lt!217315))))))

(assert (=> d!76043 (= (containsKey!347 lt!217378 (_1!4506 lt!217315)) e!280415)))

(declare-fun b!477232 () Bool)

(declare-fun e!280416 () Bool)

(assert (=> b!477232 (= e!280415 e!280416)))

(declare-fun res!284912 () Bool)

(assert (=> b!477232 (=> (not res!284912) (not e!280416))))

(assert (=> b!477232 (= res!284912 (and (or (not ((_ is Cons!9081) lt!217378)) (bvsle (_1!4506 (h!9937 lt!217378)) (_1!4506 lt!217315))) ((_ is Cons!9081) lt!217378) (bvslt (_1!4506 (h!9937 lt!217378)) (_1!4506 lt!217315))))))

(declare-fun b!477233 () Bool)

(assert (=> b!477233 (= e!280416 (containsKey!347 (t!15159 lt!217378) (_1!4506 lt!217315)))))

(assert (= (and d!76043 (not res!284911)) b!477232))

(assert (= (and b!477232 res!284912) b!477233))

(declare-fun m!459633 () Bool)

(assert (=> b!477233 m!459633))

(assert (=> b!477026 d!76043))

(declare-fun d!76045 () Bool)

(declare-fun res!284913 () Bool)

(declare-fun e!280417 () Bool)

(assert (=> d!76045 (=> res!284913 e!280417)))

(assert (=> d!76045 (= res!284913 ((_ is Nil!9082) (t!15159 (t!15159 (toList!3975 (+!1737 lt!217314 lt!217315))))))))

(assert (=> d!76045 (= (forall!198 (t!15159 (t!15159 (toList!3975 (+!1737 lt!217314 lt!217315)))) p!166) e!280417)))

(declare-fun b!477234 () Bool)

(declare-fun e!280418 () Bool)

(assert (=> b!477234 (= e!280417 e!280418)))

(declare-fun res!284914 () Bool)

(assert (=> b!477234 (=> (not res!284914) (not e!280418))))

(assert (=> b!477234 (= res!284914 (dynLambda!944 p!166 (h!9937 (t!15159 (t!15159 (toList!3975 (+!1737 lt!217314 lt!217315)))))))))

(declare-fun b!477235 () Bool)

(assert (=> b!477235 (= e!280418 (forall!198 (t!15159 (t!15159 (t!15159 (toList!3975 (+!1737 lt!217314 lt!217315))))) p!166))))

(assert (= (and d!76045 (not res!284913)) b!477234))

(assert (= (and b!477234 res!284914) b!477235))

(declare-fun b_lambda!10685 () Bool)

(assert (=> (not b_lambda!10685) (not b!477234)))

(declare-fun t!15233 () Bool)

(declare-fun tb!4103 () Bool)

(assert (=> (and start!42874 (= p!166 p!166) t!15233) tb!4103))

(declare-fun result!7671 () Bool)

(assert (=> tb!4103 (= result!7671 true)))

(assert (=> b!477234 t!15233))

(declare-fun b_and!20815 () Bool)

(assert (= b_and!20813 (and (=> t!15233 result!7671) b_and!20815)))

(declare-fun m!459635 () Bool)

(assert (=> b!477234 m!459635))

(declare-fun m!459637 () Bool)

(assert (=> b!477235 m!459637))

(assert (=> b!477000 d!76045))

(declare-fun d!76047 () Bool)

(declare-fun e!280420 () Bool)

(assert (=> d!76047 e!280420))

(declare-fun res!284915 () Bool)

(assert (=> d!76047 (=> res!284915 e!280420)))

(declare-fun lt!217490 () Bool)

(assert (=> d!76047 (= res!284915 (not lt!217490))))

(declare-fun lt!217493 () Bool)

(assert (=> d!76047 (= lt!217490 lt!217493)))

(declare-fun lt!217492 () Unit!14005)

(declare-fun e!280419 () Unit!14005)

(assert (=> d!76047 (= lt!217492 e!280419)))

(declare-fun c!57415 () Bool)

(assert (=> d!76047 (= c!57415 lt!217493)))

(assert (=> d!76047 (= lt!217493 (containsKey!347 (toList!3975 lt!217436) (_1!4506 (tuple2!8993 a!501 b!85))))))

(assert (=> d!76047 (= (contains!2574 lt!217436 (_1!4506 (tuple2!8993 a!501 b!85))) lt!217490)))

(declare-fun b!477236 () Bool)

(declare-fun lt!217491 () Unit!14005)

(assert (=> b!477236 (= e!280419 lt!217491)))

(assert (=> b!477236 (= lt!217491 (lemmaContainsKeyImpliesGetValueByKeyDefined!296 (toList!3975 lt!217436) (_1!4506 (tuple2!8993 a!501 b!85))))))

(assert (=> b!477236 (isDefined!297 (getValueByKey!387 (toList!3975 lt!217436) (_1!4506 (tuple2!8993 a!501 b!85))))))

(declare-fun b!477237 () Bool)

(declare-fun Unit!14015 () Unit!14005)

(assert (=> b!477237 (= e!280419 Unit!14015)))

(declare-fun b!477238 () Bool)

(assert (=> b!477238 (= e!280420 (isDefined!297 (getValueByKey!387 (toList!3975 lt!217436) (_1!4506 (tuple2!8993 a!501 b!85)))))))

(assert (= (and d!76047 c!57415) b!477236))

(assert (= (and d!76047 (not c!57415)) b!477237))

(assert (= (and d!76047 (not res!284915)) b!477238))

(declare-fun m!459639 () Bool)

(assert (=> d!76047 m!459639))

(declare-fun m!459641 () Bool)

(assert (=> b!477236 m!459641))

(assert (=> b!477236 m!459307))

(assert (=> b!477236 m!459307))

(declare-fun m!459643 () Bool)

(assert (=> b!477236 m!459643))

(assert (=> b!477238 m!459307))

(assert (=> b!477238 m!459307))

(assert (=> b!477238 m!459643))

(assert (=> d!75887 d!76047))

(declare-fun b!477241 () Bool)

(declare-fun e!280422 () Option!393)

(assert (=> b!477241 (= e!280422 (getValueByKey!387 (t!15159 lt!217433) (_1!4506 (tuple2!8993 a!501 b!85))))))

(declare-fun c!57416 () Bool)

(declare-fun d!76049 () Bool)

(assert (=> d!76049 (= c!57416 (and ((_ is Cons!9081) lt!217433) (= (_1!4506 (h!9937 lt!217433)) (_1!4506 (tuple2!8993 a!501 b!85)))))))

(declare-fun e!280421 () Option!393)

(assert (=> d!76049 (= (getValueByKey!387 lt!217433 (_1!4506 (tuple2!8993 a!501 b!85))) e!280421)))

(declare-fun b!477242 () Bool)

(assert (=> b!477242 (= e!280422 None!391)))

(declare-fun b!477240 () Bool)

(assert (=> b!477240 (= e!280421 e!280422)))

(declare-fun c!57417 () Bool)

(assert (=> b!477240 (= c!57417 (and ((_ is Cons!9081) lt!217433) (not (= (_1!4506 (h!9937 lt!217433)) (_1!4506 (tuple2!8993 a!501 b!85))))))))

(declare-fun b!477239 () Bool)

(assert (=> b!477239 (= e!280421 (Some!392 (_2!4506 (h!9937 lt!217433))))))

(assert (= (and d!76049 c!57416) b!477239))

(assert (= (and d!76049 (not c!57416)) b!477240))

(assert (= (and b!477240 c!57417) b!477241))

(assert (= (and b!477240 (not c!57417)) b!477242))

(declare-fun m!459645 () Bool)

(assert (=> b!477241 m!459645))

(assert (=> d!75887 d!76049))

(declare-fun d!76051 () Bool)

(assert (=> d!76051 (= (getValueByKey!387 lt!217433 (_1!4506 (tuple2!8993 a!501 b!85))) (Some!392 (_2!4506 (tuple2!8993 a!501 b!85))))))

(declare-fun lt!217494 () Unit!14005)

(assert (=> d!76051 (= lt!217494 (choose!1372 lt!217433 (_1!4506 (tuple2!8993 a!501 b!85)) (_2!4506 (tuple2!8993 a!501 b!85))))))

(declare-fun e!280423 () Bool)

(assert (=> d!76051 e!280423))

(declare-fun res!284916 () Bool)

(assert (=> d!76051 (=> (not res!284916) (not e!280423))))

(assert (=> d!76051 (= res!284916 (isStrictlySorted!383 lt!217433))))

(assert (=> d!76051 (= (lemmaContainsTupThenGetReturnValue!211 lt!217433 (_1!4506 (tuple2!8993 a!501 b!85)) (_2!4506 (tuple2!8993 a!501 b!85))) lt!217494)))

(declare-fun b!477243 () Bool)

(declare-fun res!284917 () Bool)

(assert (=> b!477243 (=> (not res!284917) (not e!280423))))

(assert (=> b!477243 (= res!284917 (containsKey!347 lt!217433 (_1!4506 (tuple2!8993 a!501 b!85))))))

(declare-fun b!477244 () Bool)

(assert (=> b!477244 (= e!280423 (contains!2576 lt!217433 (tuple2!8993 (_1!4506 (tuple2!8993 a!501 b!85)) (_2!4506 (tuple2!8993 a!501 b!85)))))))

(assert (= (and d!76051 res!284916) b!477243))

(assert (= (and b!477243 res!284917) b!477244))

(assert (=> d!76051 m!459301))

(declare-fun m!459647 () Bool)

(assert (=> d!76051 m!459647))

(declare-fun m!459649 () Bool)

(assert (=> d!76051 m!459649))

(declare-fun m!459651 () Bool)

(assert (=> b!477243 m!459651))

(declare-fun m!459653 () Bool)

(assert (=> b!477244 m!459653))

(assert (=> d!75887 d!76051))

(declare-fun b!477245 () Bool)

(declare-fun e!280424 () List!9085)

(declare-fun call!30771 () List!9085)

(assert (=> b!477245 (= e!280424 call!30771)))

(declare-fun b!477246 () Bool)

(declare-fun res!284919 () Bool)

(declare-fun e!280428 () Bool)

(assert (=> b!477246 (=> (not res!284919) (not e!280428))))

(declare-fun lt!217495 () List!9085)

(assert (=> b!477246 (= res!284919 (containsKey!347 lt!217495 (_1!4506 (tuple2!8993 a!501 b!85))))))

(declare-fun b!477247 () Bool)

(assert (=> b!477247 (= e!280424 call!30771)))

(declare-fun c!57418 () Bool)

(declare-fun b!477248 () Bool)

(assert (=> b!477248 (= c!57418 (and ((_ is Cons!9081) (toList!3975 lt!217314)) (bvsgt (_1!4506 (h!9937 (toList!3975 lt!217314))) (_1!4506 (tuple2!8993 a!501 b!85)))))))

(declare-fun e!280425 () List!9085)

(assert (=> b!477248 (= e!280425 e!280424)))

(declare-fun b!477249 () Bool)

(declare-fun call!30772 () List!9085)

(assert (=> b!477249 (= e!280425 call!30772)))

(declare-fun b!477250 () Bool)

(declare-fun e!280426 () List!9085)

(assert (=> b!477250 (= e!280426 e!280425)))

(declare-fun c!57419 () Bool)

(assert (=> b!477250 (= c!57419 (and ((_ is Cons!9081) (toList!3975 lt!217314)) (= (_1!4506 (h!9937 (toList!3975 lt!217314))) (_1!4506 (tuple2!8993 a!501 b!85)))))))

(declare-fun b!477251 () Bool)

(declare-fun e!280427 () List!9085)

(assert (=> b!477251 (= e!280427 (insertStrictlySorted!213 (t!15159 (toList!3975 lt!217314)) (_1!4506 (tuple2!8993 a!501 b!85)) (_2!4506 (tuple2!8993 a!501 b!85))))))

(declare-fun b!477252 () Bool)

(assert (=> b!477252 (= e!280427 (ite c!57419 (t!15159 (toList!3975 lt!217314)) (ite c!57418 (Cons!9081 (h!9937 (toList!3975 lt!217314)) (t!15159 (toList!3975 lt!217314))) Nil!9082)))))

(declare-fun b!477253 () Bool)

(assert (=> b!477253 (= e!280428 (contains!2576 lt!217495 (tuple2!8993 (_1!4506 (tuple2!8993 a!501 b!85)) (_2!4506 (tuple2!8993 a!501 b!85)))))))

(declare-fun bm!30767 () Bool)

(declare-fun call!30770 () List!9085)

(assert (=> bm!30767 (= call!30772 call!30770)))

(declare-fun c!57420 () Bool)

(declare-fun bm!30768 () Bool)

(assert (=> bm!30768 (= call!30770 ($colon$colon!109 e!280427 (ite c!57420 (h!9937 (toList!3975 lt!217314)) (tuple2!8993 (_1!4506 (tuple2!8993 a!501 b!85)) (_2!4506 (tuple2!8993 a!501 b!85))))))))

(declare-fun c!57421 () Bool)

(assert (=> bm!30768 (= c!57421 c!57420)))

(declare-fun d!76053 () Bool)

(assert (=> d!76053 e!280428))

(declare-fun res!284918 () Bool)

(assert (=> d!76053 (=> (not res!284918) (not e!280428))))

(assert (=> d!76053 (= res!284918 (isStrictlySorted!383 lt!217495))))

(assert (=> d!76053 (= lt!217495 e!280426)))

(assert (=> d!76053 (= c!57420 (and ((_ is Cons!9081) (toList!3975 lt!217314)) (bvslt (_1!4506 (h!9937 (toList!3975 lt!217314))) (_1!4506 (tuple2!8993 a!501 b!85)))))))

(assert (=> d!76053 (isStrictlySorted!383 (toList!3975 lt!217314))))

(assert (=> d!76053 (= (insertStrictlySorted!213 (toList!3975 lt!217314) (_1!4506 (tuple2!8993 a!501 b!85)) (_2!4506 (tuple2!8993 a!501 b!85))) lt!217495)))

(declare-fun b!477254 () Bool)

(assert (=> b!477254 (= e!280426 call!30770)))

(declare-fun bm!30769 () Bool)

(assert (=> bm!30769 (= call!30771 call!30772)))

(assert (= (and d!76053 c!57420) b!477254))

(assert (= (and d!76053 (not c!57420)) b!477250))

(assert (= (and b!477250 c!57419) b!477249))

(assert (= (and b!477250 (not c!57419)) b!477248))

(assert (= (and b!477248 c!57418) b!477247))

(assert (= (and b!477248 (not c!57418)) b!477245))

(assert (= (or b!477247 b!477245) bm!30769))

(assert (= (or b!477249 bm!30769) bm!30767))

(assert (= (or b!477254 bm!30767) bm!30768))

(assert (= (and bm!30768 c!57421) b!477251))

(assert (= (and bm!30768 (not c!57421)) b!477252))

(assert (= (and d!76053 res!284918) b!477246))

(assert (= (and b!477246 res!284919) b!477253))

(declare-fun m!459655 () Bool)

(assert (=> b!477253 m!459655))

(declare-fun m!459657 () Bool)

(assert (=> b!477251 m!459657))

(declare-fun m!459659 () Bool)

(assert (=> b!477246 m!459659))

(declare-fun m!459661 () Bool)

(assert (=> bm!30768 m!459661))

(declare-fun m!459663 () Bool)

(assert (=> d!76053 m!459663))

(assert (=> d!76053 m!459289))

(assert (=> d!75887 d!76053))

(declare-fun d!76055 () Bool)

(declare-fun lt!217496 () Bool)

(assert (=> d!76055 (= lt!217496 (select (content!206 lt!217378) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun e!280430 () Bool)

(assert (=> d!76055 (= lt!217496 e!280430)))

(declare-fun res!284920 () Bool)

(assert (=> d!76055 (=> (not res!284920) (not e!280430))))

(assert (=> d!76055 (= res!284920 ((_ is Cons!9081) lt!217378))))

(assert (=> d!76055 (= (contains!2576 lt!217378 (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))) lt!217496)))

(declare-fun b!477255 () Bool)

(declare-fun e!280429 () Bool)

(assert (=> b!477255 (= e!280430 e!280429)))

(declare-fun res!284921 () Bool)

(assert (=> b!477255 (=> res!284921 e!280429)))

(assert (=> b!477255 (= res!284921 (= (h!9937 lt!217378) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(declare-fun b!477256 () Bool)

(assert (=> b!477256 (= e!280429 (contains!2576 (t!15159 lt!217378) (tuple2!8993 (_1!4506 lt!217315) (_2!4506 lt!217315))))))

(assert (= (and d!76055 res!284920) b!477255))

(assert (= (and b!477255 (not res!284921)) b!477256))

(declare-fun m!459665 () Bool)

(assert (=> d!76055 m!459665))

(declare-fun m!459667 () Bool)

(assert (=> d!76055 m!459667))

(declare-fun m!459669 () Bool)

(assert (=> b!477256 m!459669))

(assert (=> b!477027 d!76055))

(declare-fun d!76057 () Bool)

(declare-fun res!284922 () Bool)

(declare-fun e!280431 () Bool)

(assert (=> d!76057 (=> res!284922 e!280431)))

(assert (=> d!76057 (= res!284922 (and ((_ is Cons!9081) (toList!3975 lt!217381)) (= (_1!4506 (h!9937 (toList!3975 lt!217381))) (_1!4506 lt!217315))))))

(assert (=> d!76057 (= (containsKey!347 (toList!3975 lt!217381) (_1!4506 lt!217315)) e!280431)))

(declare-fun b!477257 () Bool)

(declare-fun e!280432 () Bool)

(assert (=> b!477257 (= e!280431 e!280432)))

(declare-fun res!284923 () Bool)

(assert (=> b!477257 (=> (not res!284923) (not e!280432))))

(assert (=> b!477257 (= res!284923 (and (or (not ((_ is Cons!9081) (toList!3975 lt!217381))) (bvsle (_1!4506 (h!9937 (toList!3975 lt!217381))) (_1!4506 lt!217315))) ((_ is Cons!9081) (toList!3975 lt!217381)) (bvslt (_1!4506 (h!9937 (toList!3975 lt!217381))) (_1!4506 lt!217315))))))

(declare-fun b!477258 () Bool)

(assert (=> b!477258 (= e!280432 (containsKey!347 (t!15159 (toList!3975 lt!217381)) (_1!4506 lt!217315)))))

(assert (= (and d!76057 (not res!284922)) b!477257))

(assert (= (and b!477257 res!284923) b!477258))

(declare-fun m!459671 () Bool)

(assert (=> b!477258 m!459671))

(assert (=> d!75911 d!76057))

(declare-fun d!76059 () Bool)

(declare-fun res!284924 () Bool)

(declare-fun e!280433 () Bool)

(assert (=> d!76059 (=> res!284924 e!280433)))

(assert (=> d!76059 (= res!284924 (and ((_ is Cons!9081) lt!217430) (= (_1!4506 (h!9937 lt!217430)) (_1!4506 lt!217315))))))

(assert (=> d!76059 (= (containsKey!347 lt!217430 (_1!4506 lt!217315)) e!280433)))

(declare-fun b!477259 () Bool)

(declare-fun e!280434 () Bool)

(assert (=> b!477259 (= e!280433 e!280434)))

(declare-fun res!284925 () Bool)

(assert (=> b!477259 (=> (not res!284925) (not e!280434))))

(assert (=> b!477259 (= res!284925 (and (or (not ((_ is Cons!9081) lt!217430)) (bvsle (_1!4506 (h!9937 lt!217430)) (_1!4506 lt!217315))) ((_ is Cons!9081) lt!217430) (bvslt (_1!4506 (h!9937 lt!217430)) (_1!4506 lt!217315))))))

(declare-fun b!477260 () Bool)

(assert (=> b!477260 (= e!280434 (containsKey!347 (t!15159 lt!217430) (_1!4506 lt!217315)))))

(assert (= (and d!76059 (not res!284924)) b!477259))

(assert (= (and b!477259 res!284925) b!477260))

(declare-fun m!459673 () Bool)

(assert (=> b!477260 m!459673))

(assert (=> b!476917 d!76059))

(declare-fun b!477263 () Bool)

(declare-fun e!280436 () Option!393)

(assert (=> b!477263 (= e!280436 (getValueByKey!387 (t!15159 (t!15159 lt!217365)) (_1!4506 lt!217315)))))

(declare-fun d!76061 () Bool)

(declare-fun c!57422 () Bool)

(assert (=> d!76061 (= c!57422 (and ((_ is Cons!9081) (t!15159 lt!217365)) (= (_1!4506 (h!9937 (t!15159 lt!217365))) (_1!4506 lt!217315))))))

(declare-fun e!280435 () Option!393)

(assert (=> d!76061 (= (getValueByKey!387 (t!15159 lt!217365) (_1!4506 lt!217315)) e!280435)))

(declare-fun b!477264 () Bool)

(assert (=> b!477264 (= e!280436 None!391)))

(declare-fun b!477262 () Bool)

(assert (=> b!477262 (= e!280435 e!280436)))

(declare-fun c!57423 () Bool)

(assert (=> b!477262 (= c!57423 (and ((_ is Cons!9081) (t!15159 lt!217365)) (not (= (_1!4506 (h!9937 (t!15159 lt!217365))) (_1!4506 lt!217315)))))))

(declare-fun b!477261 () Bool)

(assert (=> b!477261 (= e!280435 (Some!392 (_2!4506 (h!9937 (t!15159 lt!217365)))))))

(assert (= (and d!76061 c!57422) b!477261))

(assert (= (and d!76061 (not c!57422)) b!477262))

(assert (= (and b!477262 c!57423) b!477263))

(assert (= (and b!477262 (not c!57423)) b!477264))

(declare-fun m!459675 () Bool)

(assert (=> b!477263 m!459675))

(assert (=> b!476842 d!76061))

(declare-fun b!477265 () Bool)

(declare-fun e!280437 () Bool)

(declare-fun tp!42422 () Bool)

(assert (=> b!477265 (= e!280437 (and tp_is_empty!13527 tp!42422))))

(assert (=> b!477061 (= tp!42419 e!280437)))

(assert (= (and b!477061 ((_ is Cons!9081) (t!15159 (t!15159 (toList!3975 lm!215))))) b!477265))

(declare-fun b_lambda!10687 () Bool)

(assert (= b_lambda!10681 (or (and start!42874 b_free!12105) b_lambda!10687)))

(declare-fun b_lambda!10689 () Bool)

(assert (= b_lambda!10679 (or (and start!42874 b_free!12105) b_lambda!10689)))

(declare-fun b_lambda!10691 () Bool)

(assert (= b_lambda!10683 (or (and start!42874 b_free!12105) b_lambda!10691)))

(declare-fun b_lambda!10693 () Bool)

(assert (= b_lambda!10677 (or (and start!42874 b_free!12105) b_lambda!10693)))

(declare-fun b_lambda!10695 () Bool)

(assert (= b_lambda!10685 (or (and start!42874 b_free!12105) b_lambda!10695)))

(check-sat (not d!76013) (not b!477243) (not b!477223) (not d!76035) (not b_lambda!10641) (not b!477212) (not b!477210) (not d!76055) (not b!477175) (not b!477216) (not d!76047) (not b_lambda!10611) (not b!477226) (not d!76005) (not d!76025) (not b!477222) (not b!477143) (not d!75987) (not b!477233) (not d!75993) (not b!477161) (not b!477256) (not b_lambda!10691) (not b!477258) (not b!477185) (not b_lambda!10607) (not b_lambda!10609) (not d!76003) (not b!477187) (not b_lambda!10555) (not b_lambda!10643) (not b!477205) tp_is_empty!13527 (not b!477177) (not b_lambda!10695) (not b_lambda!10613) (not b!477182) (not b_lambda!10639) (not b!477236) (not b_lambda!10689) (not b_lambda!10687) (not b!477146) (not b!477156) (not b!477229) (not b_lambda!10615) (not b!477179) (not b!477218) (not d!76029) (not b_next!12105) b_and!20815 (not b!477214) (not b!477238) (not b!477220) (not b!477241) (not b!477197) (not b!477194) (not b_lambda!10693) (not d!75999) (not d!76009) (not b!477251) (not b!477192) (not b!477168) (not b!477253) (not b!477260) (not d!76015) (not b!477231) (not bm!30768) (not b_lambda!10645) (not b!477170) (not bm!30762) (not b!477265) (not bm!30765) (not d!76051) (not b_lambda!10647) (not b!477203) (not b!477163) (not d!75985) (not b!477173) (not d!76053) (not b!477153) (not b!477246) (not d!76031) (not b!477263) (not d!76033) (not b!477159) (not b!477244) (not b!477235) (not b!477207))
(check-sat b_and!20815 (not b_next!12105))
