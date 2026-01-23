; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274530 () Bool)

(assert start!274530)

(declare-fun b_free!81107 () Bool)

(declare-fun b_next!81811 () Bool)

(assert (=> start!274530 (= b_free!81107 (not b_next!81811))))

(declare-fun tp!903130 () Bool)

(declare-fun b_and!206745 () Bool)

(assert (=> start!274530 (= tp!903130 b_and!206745)))

(declare-fun b!2827723 () Bool)

(declare-fun res!1177161 () Bool)

(declare-fun e!1789794 () Bool)

(assert (=> b!2827723 (=> (not res!1177161) (not e!1789794))))

(declare-datatypes ((B!2493 0))(
  ( (B!2494 (val!10466 Int)) )
))
(declare-datatypes ((List!33355 0))(
  ( (Nil!33231) (Cons!33231 (h!38651 B!2493) (t!231138 List!33355)) )
))
(declare-fun l2!930 () List!33355)

(declare-fun p!1912 () Int)

(declare-fun forall!6831 (List!33355 Int) Bool)

(assert (=> b!2827723 (= res!1177161 (forall!6831 (t!231138 l2!930) p!1912))))

(declare-fun b!2827724 () Bool)

(declare-fun e!1789792 () Bool)

(declare-fun tp_is_empty!14543 () Bool)

(declare-fun tp!903128 () Bool)

(assert (=> b!2827724 (= e!1789792 (and tp_is_empty!14543 tp!903128))))

(declare-fun b!2827725 () Bool)

(declare-fun e!1789793 () Bool)

(declare-fun l1!953 () List!33355)

(declare-fun subseq!485 (List!33355 List!33355) Bool)

(assert (=> b!2827725 (= e!1789793 (not (subseq!485 (t!231138 l1!953) (t!231138 l2!930))))))

(declare-fun b!2827726 () Bool)

(declare-fun res!1177162 () Bool)

(assert (=> b!2827726 (=> (not res!1177162) (not e!1789794))))

(assert (=> b!2827726 (= res!1177162 (subseq!485 l1!953 (t!231138 l2!930)))))

(declare-fun res!1177166 () Bool)

(assert (=> start!274530 (=> (not res!1177166) (not e!1789794))))

(assert (=> start!274530 (= res!1177166 (forall!6831 l2!930 p!1912))))

(assert (=> start!274530 e!1789794))

(declare-fun e!1789791 () Bool)

(assert (=> start!274530 e!1789791))

(assert (=> start!274530 tp!903130))

(assert (=> start!274530 e!1789792))

(declare-fun b!2827727 () Bool)

(declare-fun res!1177167 () Bool)

(assert (=> b!2827727 (=> (not res!1177167) (not e!1789794))))

(get-info :version)

(assert (=> b!2827727 (= res!1177167 (and (not ((_ is Nil!33231) l1!953)) ((_ is Cons!33231) l2!930)))))

(declare-fun b!2827728 () Bool)

(declare-fun ListPrimitiveSize!219 (List!33355) Int)

(assert (=> b!2827728 (= e!1789794 (>= (ListPrimitiveSize!219 (t!231138 l2!930)) (ListPrimitiveSize!219 l2!930)))))

(declare-fun b!2827729 () Bool)

(declare-fun res!1177164 () Bool)

(assert (=> b!2827729 (=> (not res!1177164) (not e!1789794))))

(assert (=> b!2827729 (= res!1177164 (subseq!485 l1!953 l2!930))))

(declare-fun b!2827730 () Bool)

(declare-fun res!1177163 () Bool)

(assert (=> b!2827730 (=> (not res!1177163) (not e!1789794))))

(assert (=> b!2827730 (= res!1177163 e!1789793)))

(declare-fun res!1177165 () Bool)

(assert (=> b!2827730 (=> res!1177165 e!1789793)))

(assert (=> b!2827730 (= res!1177165 (not (= (h!38651 l1!953) (h!38651 l2!930))))))

(declare-fun b!2827731 () Bool)

(declare-fun tp!903129 () Bool)

(assert (=> b!2827731 (= e!1789791 (and tp_is_empty!14543 tp!903129))))

(assert (= (and start!274530 res!1177166) b!2827729))

(assert (= (and b!2827729 res!1177164) b!2827727))

(assert (= (and b!2827727 res!1177167) b!2827730))

(assert (= (and b!2827730 (not res!1177165)) b!2827725))

(assert (= (and b!2827730 res!1177163) b!2827726))

(assert (= (and b!2827726 res!1177162) b!2827723))

(assert (= (and b!2827723 res!1177161) b!2827728))

(assert (= (and start!274530 ((_ is Cons!33231) l2!930)) b!2827731))

(assert (= (and start!274530 ((_ is Cons!33231) l1!953)) b!2827724))

(declare-fun m!3257249 () Bool)

(assert (=> b!2827729 m!3257249))

(declare-fun m!3257251 () Bool)

(assert (=> start!274530 m!3257251))

(declare-fun m!3257253 () Bool)

(assert (=> b!2827725 m!3257253))

(declare-fun m!3257255 () Bool)

(assert (=> b!2827723 m!3257255))

(declare-fun m!3257257 () Bool)

(assert (=> b!2827726 m!3257257))

(declare-fun m!3257259 () Bool)

(assert (=> b!2827728 m!3257259))

(declare-fun m!3257261 () Bool)

(assert (=> b!2827728 m!3257261))

(check-sat tp_is_empty!14543 (not b!2827726) (not b!2827731) (not b!2827728) (not b!2827723) (not b!2827729) (not b!2827724) b_and!206745 (not b_next!81811) (not b!2827725) (not start!274530))
(check-sat b_and!206745 (not b_next!81811))
(get-model)

(declare-fun b!2827741 () Bool)

(declare-fun e!1789805 () Bool)

(declare-fun e!1789804 () Bool)

(assert (=> b!2827741 (= e!1789805 e!1789804)))

(declare-fun res!1177179 () Bool)

(assert (=> b!2827741 (=> res!1177179 e!1789804)))

(declare-fun e!1789806 () Bool)

(assert (=> b!2827741 (= res!1177179 e!1789806)))

(declare-fun res!1177177 () Bool)

(assert (=> b!2827741 (=> (not res!1177177) (not e!1789806))))

(assert (=> b!2827741 (= res!1177177 (= (h!38651 l1!953) (h!38651 (t!231138 l2!930))))))

(declare-fun d!820602 () Bool)

(declare-fun res!1177178 () Bool)

(declare-fun e!1789803 () Bool)

(assert (=> d!820602 (=> res!1177178 e!1789803)))

(assert (=> d!820602 (= res!1177178 ((_ is Nil!33231) l1!953))))

(assert (=> d!820602 (= (subseq!485 l1!953 (t!231138 l2!930)) e!1789803)))

(declare-fun b!2827740 () Bool)

(assert (=> b!2827740 (= e!1789803 e!1789805)))

(declare-fun res!1177176 () Bool)

(assert (=> b!2827740 (=> (not res!1177176) (not e!1789805))))

(assert (=> b!2827740 (= res!1177176 ((_ is Cons!33231) (t!231138 l2!930)))))

(declare-fun b!2827742 () Bool)

(assert (=> b!2827742 (= e!1789806 (subseq!485 (t!231138 l1!953) (t!231138 (t!231138 l2!930))))))

(declare-fun b!2827743 () Bool)

(assert (=> b!2827743 (= e!1789804 (subseq!485 l1!953 (t!231138 (t!231138 l2!930))))))

(assert (= (and d!820602 (not res!1177178)) b!2827740))

(assert (= (and b!2827740 res!1177176) b!2827741))

(assert (= (and b!2827741 res!1177177) b!2827742))

(assert (= (and b!2827741 (not res!1177179)) b!2827743))

(declare-fun m!3257263 () Bool)

(assert (=> b!2827742 m!3257263))

(declare-fun m!3257265 () Bool)

(assert (=> b!2827743 m!3257265))

(assert (=> b!2827726 d!820602))

(declare-fun b!2827753 () Bool)

(declare-fun e!1789817 () Bool)

(declare-fun e!1789816 () Bool)

(assert (=> b!2827753 (= e!1789817 e!1789816)))

(declare-fun res!1177191 () Bool)

(assert (=> b!2827753 (=> res!1177191 e!1789816)))

(declare-fun e!1789818 () Bool)

(assert (=> b!2827753 (= res!1177191 e!1789818)))

(declare-fun res!1177189 () Bool)

(assert (=> b!2827753 (=> (not res!1177189) (not e!1789818))))

(assert (=> b!2827753 (= res!1177189 (= (h!38651 (t!231138 l1!953)) (h!38651 (t!231138 l2!930))))))

(declare-fun d!820606 () Bool)

(declare-fun res!1177190 () Bool)

(declare-fun e!1789815 () Bool)

(assert (=> d!820606 (=> res!1177190 e!1789815)))

(assert (=> d!820606 (= res!1177190 ((_ is Nil!33231) (t!231138 l1!953)))))

(assert (=> d!820606 (= (subseq!485 (t!231138 l1!953) (t!231138 l2!930)) e!1789815)))

(declare-fun b!2827752 () Bool)

(assert (=> b!2827752 (= e!1789815 e!1789817)))

(declare-fun res!1177188 () Bool)

(assert (=> b!2827752 (=> (not res!1177188) (not e!1789817))))

(assert (=> b!2827752 (= res!1177188 ((_ is Cons!33231) (t!231138 l2!930)))))

(declare-fun b!2827754 () Bool)

(assert (=> b!2827754 (= e!1789818 (subseq!485 (t!231138 (t!231138 l1!953)) (t!231138 (t!231138 l2!930))))))

(declare-fun b!2827755 () Bool)

(assert (=> b!2827755 (= e!1789816 (subseq!485 (t!231138 l1!953) (t!231138 (t!231138 l2!930))))))

(assert (= (and d!820606 (not res!1177190)) b!2827752))

(assert (= (and b!2827752 res!1177188) b!2827753))

(assert (= (and b!2827753 res!1177189) b!2827754))

(assert (= (and b!2827753 (not res!1177191)) b!2827755))

(declare-fun m!3257267 () Bool)

(assert (=> b!2827754 m!3257267))

(assert (=> b!2827755 m!3257263))

(assert (=> b!2827725 d!820606))

(declare-fun d!820608 () Bool)

(declare-fun res!1177204 () Bool)

(declare-fun e!1789831 () Bool)

(assert (=> d!820608 (=> res!1177204 e!1789831)))

(assert (=> d!820608 (= res!1177204 ((_ is Nil!33231) l2!930))))

(assert (=> d!820608 (= (forall!6831 l2!930 p!1912) e!1789831)))

(declare-fun b!2827768 () Bool)

(declare-fun e!1789832 () Bool)

(assert (=> b!2827768 (= e!1789831 e!1789832)))

(declare-fun res!1177205 () Bool)

(assert (=> b!2827768 (=> (not res!1177205) (not e!1789832))))

(declare-fun dynLambda!13974 (Int B!2493) Bool)

(assert (=> b!2827768 (= res!1177205 (dynLambda!13974 p!1912 (h!38651 l2!930)))))

(declare-fun b!2827769 () Bool)

(assert (=> b!2827769 (= e!1789832 (forall!6831 (t!231138 l2!930) p!1912))))

(assert (= (and d!820608 (not res!1177204)) b!2827768))

(assert (= (and b!2827768 res!1177205) b!2827769))

(declare-fun b_lambda!84947 () Bool)

(assert (=> (not b_lambda!84947) (not b!2827768)))

(declare-fun t!231140 () Bool)

(declare-fun tb!154141 () Bool)

(assert (=> (and start!274530 (= p!1912 p!1912) t!231140) tb!154141))

(declare-fun result!192074 () Bool)

(assert (=> tb!154141 (= result!192074 true)))

(assert (=> b!2827768 t!231140))

(declare-fun b_and!206747 () Bool)

(assert (= b_and!206745 (and (=> t!231140 result!192074) b_and!206747)))

(declare-fun m!3257273 () Bool)

(assert (=> b!2827768 m!3257273))

(assert (=> b!2827769 m!3257255))

(assert (=> start!274530 d!820608))

(declare-fun b!2827771 () Bool)

(declare-fun e!1789835 () Bool)

(declare-fun e!1789834 () Bool)

(assert (=> b!2827771 (= e!1789835 e!1789834)))

(declare-fun res!1177209 () Bool)

(assert (=> b!2827771 (=> res!1177209 e!1789834)))

(declare-fun e!1789836 () Bool)

(assert (=> b!2827771 (= res!1177209 e!1789836)))

(declare-fun res!1177207 () Bool)

(assert (=> b!2827771 (=> (not res!1177207) (not e!1789836))))

(assert (=> b!2827771 (= res!1177207 (= (h!38651 l1!953) (h!38651 l2!930)))))

(declare-fun d!820614 () Bool)

(declare-fun res!1177208 () Bool)

(declare-fun e!1789833 () Bool)

(assert (=> d!820614 (=> res!1177208 e!1789833)))

(assert (=> d!820614 (= res!1177208 ((_ is Nil!33231) l1!953))))

(assert (=> d!820614 (= (subseq!485 l1!953 l2!930) e!1789833)))

(declare-fun b!2827770 () Bool)

(assert (=> b!2827770 (= e!1789833 e!1789835)))

(declare-fun res!1177206 () Bool)

(assert (=> b!2827770 (=> (not res!1177206) (not e!1789835))))

(assert (=> b!2827770 (= res!1177206 ((_ is Cons!33231) l2!930))))

(declare-fun b!2827772 () Bool)

(assert (=> b!2827772 (= e!1789836 (subseq!485 (t!231138 l1!953) (t!231138 l2!930)))))

(declare-fun b!2827773 () Bool)

(assert (=> b!2827773 (= e!1789834 (subseq!485 l1!953 (t!231138 l2!930)))))

(assert (= (and d!820614 (not res!1177208)) b!2827770))

(assert (= (and b!2827770 res!1177206) b!2827771))

(assert (= (and b!2827771 res!1177207) b!2827772))

(assert (= (and b!2827771 (not res!1177209)) b!2827773))

(assert (=> b!2827772 m!3257253))

(assert (=> b!2827773 m!3257257))

(assert (=> b!2827729 d!820614))

(declare-fun d!820616 () Bool)

(declare-fun res!1177214 () Bool)

(declare-fun e!1789841 () Bool)

(assert (=> d!820616 (=> res!1177214 e!1789841)))

(assert (=> d!820616 (= res!1177214 ((_ is Nil!33231) (t!231138 l2!930)))))

(assert (=> d!820616 (= (forall!6831 (t!231138 l2!930) p!1912) e!1789841)))

(declare-fun b!2827778 () Bool)

(declare-fun e!1789842 () Bool)

(assert (=> b!2827778 (= e!1789841 e!1789842)))

(declare-fun res!1177215 () Bool)

(assert (=> b!2827778 (=> (not res!1177215) (not e!1789842))))

(assert (=> b!2827778 (= res!1177215 (dynLambda!13974 p!1912 (h!38651 (t!231138 l2!930))))))

(declare-fun b!2827779 () Bool)

(assert (=> b!2827779 (= e!1789842 (forall!6831 (t!231138 (t!231138 l2!930)) p!1912))))

(assert (= (and d!820616 (not res!1177214)) b!2827778))

(assert (= (and b!2827778 res!1177215) b!2827779))

(declare-fun b_lambda!84949 () Bool)

(assert (=> (not b_lambda!84949) (not b!2827778)))

(declare-fun t!231142 () Bool)

(declare-fun tb!154143 () Bool)

(assert (=> (and start!274530 (= p!1912 p!1912) t!231142) tb!154143))

(declare-fun result!192076 () Bool)

(assert (=> tb!154143 (= result!192076 true)))

(assert (=> b!2827778 t!231142))

(declare-fun b_and!206749 () Bool)

(assert (= b_and!206747 (and (=> t!231142 result!192076) b_and!206749)))

(declare-fun m!3257275 () Bool)

(assert (=> b!2827778 m!3257275))

(declare-fun m!3257277 () Bool)

(assert (=> b!2827779 m!3257277))

(assert (=> b!2827723 d!820616))

(declare-fun d!820618 () Bool)

(declare-fun lt!1008568 () Int)

(assert (=> d!820618 (>= lt!1008568 0)))

(declare-fun e!1789847 () Int)

(assert (=> d!820618 (= lt!1008568 e!1789847)))

(declare-fun c!457534 () Bool)

(assert (=> d!820618 (= c!457534 ((_ is Nil!33231) (t!231138 l2!930)))))

(assert (=> d!820618 (= (ListPrimitiveSize!219 (t!231138 l2!930)) lt!1008568)))

(declare-fun b!2827786 () Bool)

(assert (=> b!2827786 (= e!1789847 0)))

(declare-fun b!2827787 () Bool)

(assert (=> b!2827787 (= e!1789847 (+ 1 (ListPrimitiveSize!219 (t!231138 (t!231138 l2!930)))))))

(assert (= (and d!820618 c!457534) b!2827786))

(assert (= (and d!820618 (not c!457534)) b!2827787))

(declare-fun m!3257283 () Bool)

(assert (=> b!2827787 m!3257283))

(assert (=> b!2827728 d!820618))

(declare-fun d!820622 () Bool)

(declare-fun lt!1008571 () Int)

(assert (=> d!820622 (>= lt!1008571 0)))

(declare-fun e!1789850 () Int)

(assert (=> d!820622 (= lt!1008571 e!1789850)))

(declare-fun c!457537 () Bool)

(assert (=> d!820622 (= c!457537 ((_ is Nil!33231) l2!930))))

(assert (=> d!820622 (= (ListPrimitiveSize!219 l2!930) lt!1008571)))

(declare-fun b!2827792 () Bool)

(assert (=> b!2827792 (= e!1789850 0)))

(declare-fun b!2827793 () Bool)

(assert (=> b!2827793 (= e!1789850 (+ 1 (ListPrimitiveSize!219 (t!231138 l2!930))))))

(assert (= (and d!820622 c!457537) b!2827792))

(assert (= (and d!820622 (not c!457537)) b!2827793))

(assert (=> b!2827793 m!3257259))

(assert (=> b!2827728 d!820622))

(declare-fun b!2827798 () Bool)

(declare-fun e!1789853 () Bool)

(declare-fun tp!903133 () Bool)

(assert (=> b!2827798 (= e!1789853 (and tp_is_empty!14543 tp!903133))))

(assert (=> b!2827731 (= tp!903129 e!1789853)))

(assert (= (and b!2827731 ((_ is Cons!33231) (t!231138 l2!930))) b!2827798))

(declare-fun b!2827799 () Bool)

(declare-fun e!1789854 () Bool)

(declare-fun tp!903134 () Bool)

(assert (=> b!2827799 (= e!1789854 (and tp_is_empty!14543 tp!903134))))

(assert (=> b!2827724 (= tp!903128 e!1789854)))

(assert (= (and b!2827724 ((_ is Cons!33231) (t!231138 l1!953))) b!2827799))

(declare-fun b_lambda!84953 () Bool)

(assert (= b_lambda!84949 (or (and start!274530 b_free!81107) b_lambda!84953)))

(declare-fun b_lambda!84955 () Bool)

(assert (= b_lambda!84947 (or (and start!274530 b_free!81107) b_lambda!84955)))

(check-sat (not b!2827798) tp_is_empty!14543 (not b!2827754) (not b!2827772) (not b!2827787) (not b!2827742) (not b!2827799) (not b!2827743) (not b!2827793) (not b_lambda!84953) (not b_next!81811) (not b!2827769) (not b_lambda!84955) b_and!206749 (not b!2827779) (not b!2827755) (not b!2827773))
(check-sat b_and!206749 (not b_next!81811))
