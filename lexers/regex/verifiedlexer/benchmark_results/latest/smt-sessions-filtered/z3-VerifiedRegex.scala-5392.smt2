; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274518 () Bool)

(assert start!274518)

(declare-fun b_free!81103 () Bool)

(declare-fun b_next!81807 () Bool)

(assert (=> start!274518 (= b_free!81103 (not b_next!81807))))

(declare-fun tp!903103 () Bool)

(declare-fun b_and!206733 () Bool)

(assert (=> start!274518 (= tp!903103 b_and!206733)))

(declare-fun b!2827602 () Bool)

(declare-fun e!1789706 () Bool)

(declare-datatypes ((B!2489 0))(
  ( (B!2490 (val!10464 Int)) )
))
(declare-datatypes ((List!33353 0))(
  ( (Nil!33229) (Cons!33229 (h!38649 B!2489) (t!231128 List!33353)) )
))
(declare-fun l2!930 () List!33353)

(declare-fun p!1912 () Int)

(declare-fun forall!6829 (List!33353 Int) Bool)

(assert (=> b!2827602 (= e!1789706 (not (forall!6829 (t!231128 l2!930) p!1912)))))

(declare-fun b!2827603 () Bool)

(declare-fun res!1177067 () Bool)

(assert (=> b!2827603 (=> (not res!1177067) (not e!1789706))))

(declare-fun l1!953 () List!33353)

(declare-fun subseq!483 (List!33353 List!33353) Bool)

(assert (=> b!2827603 (= res!1177067 (subseq!483 l1!953 l2!930))))

(declare-fun b!2827605 () Bool)

(declare-fun e!1789703 () Bool)

(declare-fun tp_is_empty!14539 () Bool)

(declare-fun tp!903102 () Bool)

(assert (=> b!2827605 (= e!1789703 (and tp_is_empty!14539 tp!903102))))

(declare-fun b!2827606 () Bool)

(declare-fun res!1177066 () Bool)

(assert (=> b!2827606 (=> (not res!1177066) (not e!1789706))))

(declare-fun e!1789705 () Bool)

(assert (=> b!2827606 (= res!1177066 e!1789705)))

(declare-fun res!1177064 () Bool)

(assert (=> b!2827606 (=> res!1177064 e!1789705)))

(assert (=> b!2827606 (= res!1177064 (not (= (h!38649 l1!953) (h!38649 l2!930))))))

(declare-fun b!2827607 () Bool)

(declare-fun e!1789704 () Bool)

(declare-fun tp!903104 () Bool)

(assert (=> b!2827607 (= e!1789704 (and tp_is_empty!14539 tp!903104))))

(declare-fun b!2827604 () Bool)

(assert (=> b!2827604 (= e!1789705 (not (subseq!483 (t!231128 l1!953) (t!231128 l2!930))))))

(declare-fun res!1177069 () Bool)

(assert (=> start!274518 (=> (not res!1177069) (not e!1789706))))

(assert (=> start!274518 (= res!1177069 (forall!6829 l2!930 p!1912))))

(assert (=> start!274518 e!1789706))

(assert (=> start!274518 e!1789703))

(assert (=> start!274518 tp!903103))

(assert (=> start!274518 e!1789704))

(declare-fun b!2827608 () Bool)

(declare-fun res!1177068 () Bool)

(assert (=> b!2827608 (=> (not res!1177068) (not e!1789706))))

(assert (=> b!2827608 (= res!1177068 (subseq!483 l1!953 (t!231128 l2!930)))))

(declare-fun b!2827609 () Bool)

(declare-fun res!1177065 () Bool)

(assert (=> b!2827609 (=> (not res!1177065) (not e!1789706))))

(get-info :version)

(assert (=> b!2827609 (= res!1177065 (and (not ((_ is Nil!33229) l1!953)) ((_ is Cons!33229) l2!930)))))

(assert (= (and start!274518 res!1177069) b!2827603))

(assert (= (and b!2827603 res!1177067) b!2827609))

(assert (= (and b!2827609 res!1177065) b!2827606))

(assert (= (and b!2827606 (not res!1177064)) b!2827604))

(assert (= (and b!2827606 res!1177066) b!2827608))

(assert (= (and b!2827608 res!1177068) b!2827602))

(assert (= (and start!274518 ((_ is Cons!33229) l2!930)) b!2827605))

(assert (= (and start!274518 ((_ is Cons!33229) l1!953)) b!2827607))

(declare-fun m!3257201 () Bool)

(assert (=> b!2827608 m!3257201))

(declare-fun m!3257203 () Bool)

(assert (=> b!2827604 m!3257203))

(declare-fun m!3257205 () Bool)

(assert (=> b!2827603 m!3257205))

(declare-fun m!3257207 () Bool)

(assert (=> b!2827602 m!3257207))

(declare-fun m!3257209 () Bool)

(assert (=> start!274518 m!3257209))

(check-sat tp_is_empty!14539 (not b!2827607) (not start!274518) (not b!2827608) b_and!206733 (not b!2827604) (not b!2827605) (not b_next!81807) (not b!2827602) (not b!2827603))
(check-sat b_and!206733 (not b_next!81807))
(get-model)

(declare-fun b!2827630 () Bool)

(declare-fun e!1789727 () Bool)

(declare-fun e!1789728 () Bool)

(assert (=> b!2827630 (= e!1789727 e!1789728)))

(declare-fun res!1177091 () Bool)

(assert (=> b!2827630 (=> (not res!1177091) (not e!1789728))))

(assert (=> b!2827630 (= res!1177091 ((_ is Cons!33229) (t!231128 l2!930)))))

(declare-fun d!820583 () Bool)

(declare-fun res!1177090 () Bool)

(assert (=> d!820583 (=> res!1177090 e!1789727)))

(assert (=> d!820583 (= res!1177090 ((_ is Nil!33229) (t!231128 l1!953)))))

(assert (=> d!820583 (= (subseq!483 (t!231128 l1!953) (t!231128 l2!930)) e!1789727)))

(declare-fun b!2827633 () Bool)

(declare-fun e!1789729 () Bool)

(assert (=> b!2827633 (= e!1789729 (subseq!483 (t!231128 l1!953) (t!231128 (t!231128 l2!930))))))

(declare-fun b!2827632 () Bool)

(declare-fun e!1789730 () Bool)

(assert (=> b!2827632 (= e!1789730 (subseq!483 (t!231128 (t!231128 l1!953)) (t!231128 (t!231128 l2!930))))))

(declare-fun b!2827631 () Bool)

(assert (=> b!2827631 (= e!1789728 e!1789729)))

(declare-fun res!1177092 () Bool)

(assert (=> b!2827631 (=> res!1177092 e!1789729)))

(assert (=> b!2827631 (= res!1177092 e!1789730)))

(declare-fun res!1177093 () Bool)

(assert (=> b!2827631 (=> (not res!1177093) (not e!1789730))))

(assert (=> b!2827631 (= res!1177093 (= (h!38649 (t!231128 l1!953)) (h!38649 (t!231128 l2!930))))))

(assert (= (and d!820583 (not res!1177090)) b!2827630))

(assert (= (and b!2827630 res!1177091) b!2827631))

(assert (= (and b!2827631 res!1177093) b!2827632))

(assert (= (and b!2827631 (not res!1177092)) b!2827633))

(declare-fun m!3257215 () Bool)

(assert (=> b!2827633 m!3257215))

(declare-fun m!3257217 () Bool)

(assert (=> b!2827632 m!3257217))

(assert (=> b!2827604 d!820583))

(declare-fun d!820587 () Bool)

(declare-fun res!1177104 () Bool)

(declare-fun e!1789741 () Bool)

(assert (=> d!820587 (=> res!1177104 e!1789741)))

(assert (=> d!820587 (= res!1177104 ((_ is Nil!33229) (t!231128 l2!930)))))

(assert (=> d!820587 (= (forall!6829 (t!231128 l2!930) p!1912) e!1789741)))

(declare-fun b!2827644 () Bool)

(declare-fun e!1789742 () Bool)

(assert (=> b!2827644 (= e!1789741 e!1789742)))

(declare-fun res!1177105 () Bool)

(assert (=> b!2827644 (=> (not res!1177105) (not e!1789742))))

(declare-fun dynLambda!13972 (Int B!2489) Bool)

(assert (=> b!2827644 (= res!1177105 (dynLambda!13972 p!1912 (h!38649 (t!231128 l2!930))))))

(declare-fun b!2827645 () Bool)

(assert (=> b!2827645 (= e!1789742 (forall!6829 (t!231128 (t!231128 l2!930)) p!1912))))

(assert (= (and d!820587 (not res!1177104)) b!2827644))

(assert (= (and b!2827644 res!1177105) b!2827645))

(declare-fun b_lambda!84933 () Bool)

(assert (=> (not b_lambda!84933) (not b!2827644)))

(declare-fun t!231132 () Bool)

(declare-fun tb!154135 () Bool)

(assert (=> (and start!274518 (= p!1912 p!1912) t!231132) tb!154135))

(declare-fun result!192064 () Bool)

(assert (=> tb!154135 (= result!192064 true)))

(assert (=> b!2827644 t!231132))

(declare-fun b_and!206737 () Bool)

(assert (= b_and!206733 (and (=> t!231132 result!192064) b_and!206737)))

(declare-fun m!3257221 () Bool)

(assert (=> b!2827644 m!3257221))

(declare-fun m!3257225 () Bool)

(assert (=> b!2827645 m!3257225))

(assert (=> b!2827602 d!820587))

(declare-fun b!2827648 () Bool)

(declare-fun e!1789745 () Bool)

(declare-fun e!1789747 () Bool)

(assert (=> b!2827648 (= e!1789745 e!1789747)))

(declare-fun res!1177109 () Bool)

(assert (=> b!2827648 (=> (not res!1177109) (not e!1789747))))

(assert (=> b!2827648 (= res!1177109 ((_ is Cons!33229) (t!231128 l2!930)))))

(declare-fun d!820591 () Bool)

(declare-fun res!1177108 () Bool)

(assert (=> d!820591 (=> res!1177108 e!1789745)))

(assert (=> d!820591 (= res!1177108 ((_ is Nil!33229) l1!953))))

(assert (=> d!820591 (= (subseq!483 l1!953 (t!231128 l2!930)) e!1789745)))

(declare-fun b!2827653 () Bool)

(declare-fun e!1789748 () Bool)

(assert (=> b!2827653 (= e!1789748 (subseq!483 l1!953 (t!231128 (t!231128 l2!930))))))

(declare-fun b!2827651 () Bool)

(declare-fun e!1789750 () Bool)

(assert (=> b!2827651 (= e!1789750 (subseq!483 (t!231128 l1!953) (t!231128 (t!231128 l2!930))))))

(declare-fun b!2827649 () Bool)

(assert (=> b!2827649 (= e!1789747 e!1789748)))

(declare-fun res!1177112 () Bool)

(assert (=> b!2827649 (=> res!1177112 e!1789748)))

(assert (=> b!2827649 (= res!1177112 e!1789750)))

(declare-fun res!1177114 () Bool)

(assert (=> b!2827649 (=> (not res!1177114) (not e!1789750))))

(assert (=> b!2827649 (= res!1177114 (= (h!38649 l1!953) (h!38649 (t!231128 l2!930))))))

(assert (= (and d!820591 (not res!1177108)) b!2827648))

(assert (= (and b!2827648 res!1177109) b!2827649))

(assert (= (and b!2827649 res!1177114) b!2827651))

(assert (= (and b!2827649 (not res!1177112)) b!2827653))

(declare-fun m!3257231 () Bool)

(assert (=> b!2827653 m!3257231))

(assert (=> b!2827651 m!3257215))

(assert (=> b!2827608 d!820591))

(declare-fun d!820597 () Bool)

(declare-fun res!1177120 () Bool)

(declare-fun e!1789757 () Bool)

(assert (=> d!820597 (=> res!1177120 e!1789757)))

(assert (=> d!820597 (= res!1177120 ((_ is Nil!33229) l2!930))))

(assert (=> d!820597 (= (forall!6829 l2!930 p!1912) e!1789757)))

(declare-fun b!2827660 () Bool)

(declare-fun e!1789758 () Bool)

(assert (=> b!2827660 (= e!1789757 e!1789758)))

(declare-fun res!1177121 () Bool)

(assert (=> b!2827660 (=> (not res!1177121) (not e!1789758))))

(assert (=> b!2827660 (= res!1177121 (dynLambda!13972 p!1912 (h!38649 l2!930)))))

(declare-fun b!2827661 () Bool)

(assert (=> b!2827661 (= e!1789758 (forall!6829 (t!231128 l2!930) p!1912))))

(assert (= (and d!820597 (not res!1177120)) b!2827660))

(assert (= (and b!2827660 res!1177121) b!2827661))

(declare-fun b_lambda!84937 () Bool)

(assert (=> (not b_lambda!84937) (not b!2827660)))

(declare-fun t!231136 () Bool)

(declare-fun tb!154139 () Bool)

(assert (=> (and start!274518 (= p!1912 p!1912) t!231136) tb!154139))

(declare-fun result!192068 () Bool)

(assert (=> tb!154139 (= result!192068 true)))

(assert (=> b!2827660 t!231136))

(declare-fun b_and!206741 () Bool)

(assert (= b_and!206737 (and (=> t!231136 result!192068) b_and!206741)))

(declare-fun m!3257233 () Bool)

(assert (=> b!2827660 m!3257233))

(assert (=> b!2827661 m!3257207))

(assert (=> start!274518 d!820597))

(declare-fun b!2827666 () Bool)

(declare-fun e!1789761 () Bool)

(declare-fun e!1789762 () Bool)

(assert (=> b!2827666 (= e!1789761 e!1789762)))

(declare-fun res!1177123 () Bool)

(assert (=> b!2827666 (=> (not res!1177123) (not e!1789762))))

(assert (=> b!2827666 (= res!1177123 ((_ is Cons!33229) l2!930))))

(declare-fun d!820599 () Bool)

(declare-fun res!1177122 () Bool)

(assert (=> d!820599 (=> res!1177122 e!1789761)))

(assert (=> d!820599 (= res!1177122 ((_ is Nil!33229) l1!953))))

(assert (=> d!820599 (= (subseq!483 l1!953 l2!930) e!1789761)))

(declare-fun b!2827669 () Bool)

(declare-fun e!1789763 () Bool)

(assert (=> b!2827669 (= e!1789763 (subseq!483 l1!953 (t!231128 l2!930)))))

(declare-fun b!2827668 () Bool)

(declare-fun e!1789764 () Bool)

(assert (=> b!2827668 (= e!1789764 (subseq!483 (t!231128 l1!953) (t!231128 l2!930)))))

(declare-fun b!2827667 () Bool)

(assert (=> b!2827667 (= e!1789762 e!1789763)))

(declare-fun res!1177124 () Bool)

(assert (=> b!2827667 (=> res!1177124 e!1789763)))

(assert (=> b!2827667 (= res!1177124 e!1789764)))

(declare-fun res!1177125 () Bool)

(assert (=> b!2827667 (=> (not res!1177125) (not e!1789764))))

(assert (=> b!2827667 (= res!1177125 (= (h!38649 l1!953) (h!38649 l2!930)))))

(assert (= (and d!820599 (not res!1177122)) b!2827666))

(assert (= (and b!2827666 res!1177123) b!2827667))

(assert (= (and b!2827667 res!1177125) b!2827668))

(assert (= (and b!2827667 (not res!1177124)) b!2827669))

(assert (=> b!2827669 m!3257201))

(assert (=> b!2827668 m!3257203))

(assert (=> b!2827603 d!820599))

(declare-fun b!2827676 () Bool)

(declare-fun e!1789769 () Bool)

(declare-fun tp!903111 () Bool)

(assert (=> b!2827676 (= e!1789769 (and tp_is_empty!14539 tp!903111))))

(assert (=> b!2827605 (= tp!903102 e!1789769)))

(assert (= (and b!2827605 ((_ is Cons!33229) (t!231128 l2!930))) b!2827676))

(declare-fun b!2827677 () Bool)

(declare-fun e!1789770 () Bool)

(declare-fun tp!903112 () Bool)

(assert (=> b!2827677 (= e!1789770 (and tp_is_empty!14539 tp!903112))))

(assert (=> b!2827607 (= tp!903104 e!1789770)))

(assert (= (and b!2827607 ((_ is Cons!33229) (t!231128 l1!953))) b!2827677))

(declare-fun b_lambda!84943 () Bool)

(assert (= b_lambda!84937 (or (and start!274518 b_free!81103) b_lambda!84943)))

(declare-fun b_lambda!84945 () Bool)

(assert (= b_lambda!84933 (or (and start!274518 b_free!81103) b_lambda!84945)))

(check-sat (not b_lambda!84943) (not b!2827677) (not b!2827668) (not b!2827669) b_and!206741 (not b!2827632) (not b!2827676) (not b!2827653) (not b!2827633) tp_is_empty!14539 (not b_lambda!84945) (not b!2827651) (not b!2827645) (not b!2827661) (not b_next!81807))
(check-sat b_and!206741 (not b_next!81807))
