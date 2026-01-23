; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14294 () Bool)

(assert start!14294)

(declare-fun b_free!3991 () Bool)

(declare-fun b_next!3991 () Bool)

(assert (=> start!14294 (= b_free!3991 (not b_next!3991))))

(declare-fun tp!71180 () Bool)

(declare-fun b_and!6139 () Bool)

(assert (=> start!14294 (= tp!71180 b_and!6139)))

(declare-datatypes ((IArray!1187 0) (List!2251 0) (BalanceConc!1192 0) (Conc!593 0) (Object!400 0))(
  ( (IArray!1188 (innerList!651 List!2251)) )
  ( (Nil!2243) (Cons!2243 (h!7640 Object!400) (t!22835 List!2251)) )
  ( (BalanceConc!1193 (c!28918 Conc!593)) )
  ( (Node!593 (left!1750 Conc!593) (right!2080 Conc!593) (csize!1416 Int) (cheight!804 Int)) (Leaf!1111 (xs!3188 IArray!1187) (csize!1417 Int)) (Empty!593) )
  ( (BalanceConc!1191 (value!14861 BalanceConc!1192)) (List!2250 (value!14862 List!2251)) (Character!6 (value!14863 (_ BitVec 16))) (Open!6 (value!14864 Int)) )
))
(declare-datatypes ((T!5680 0))(
  ( (T!5681 (val!930 Int)) )
))
(declare-datatypes ((List!2252 0))(
  ( (Nil!2244) (Cons!2244 (h!7641 T!5680) (t!22836 List!2252)) )
))
(declare-datatypes ((Vector!16 0))(
  ( (Vector!17 (underlying!1080 Object!400) (overflowing!65 List!2252)) )
))
(declare-fun thiss!9365 () Vector!16)

(declare-fun f!1094 () Int)

(declare-fun choose!1710 (Vector!16 Int) Bool)

(declare-fun exists!43 (List!2252 Int) Bool)

(declare-fun list!821 (Vector!16) List!2252)

(assert (=> start!14294 (not (= (choose!1710 thiss!9365 f!1094) (exists!43 (list!821 thiss!9365) f!1094)))))

(declare-fun e!79439 () Bool)

(assert (=> start!14294 e!79439))

(assert (=> start!14294 tp!71180))

(declare-fun b!136538 () Bool)

(declare-fun tp!71178 () Bool)

(declare-fun tp!71179 () Bool)

(assert (=> b!136538 (= e!79439 (and tp!71178 tp!71179))))

(assert (= start!14294 b!136538))

(declare-fun m!121115 () Bool)

(assert (=> start!14294 m!121115))

(declare-fun m!121117 () Bool)

(assert (=> start!14294 m!121117))

(assert (=> start!14294 m!121117))

(declare-fun m!121119 () Bool)

(assert (=> start!14294 m!121119))

(check-sat (not start!14294) (not b!136538) b_and!6139 (not b_next!3991))
(check-sat b_and!6139 (not b_next!3991))
(get-model)

(declare-fun d!32734 () Bool)

(declare-fun choose!1712 (Vector!16 Int) Bool)

(assert (=> d!32734 (= (choose!1710 thiss!9365 f!1094) (choose!1712 thiss!9365 f!1094))))

(declare-fun bs!12747 () Bool)

(assert (= bs!12747 d!32734))

(declare-fun m!121123 () Bool)

(assert (=> bs!12747 m!121123))

(assert (=> start!14294 d!32734))

(declare-fun d!32736 () Bool)

(assert (=> d!32736 true))

(declare-fun order!1153 () Int)

(declare-fun lambda!3302 () Int)

(declare-fun dynLambda!761 (Int Int) Int)

(assert (=> d!32736 (< (dynLambda!761 order!1153 f!1094) (dynLambda!761 order!1153 lambda!3302))))

(declare-fun forall!348 (List!2252 Int) Bool)

(assert (=> d!32736 (= (exists!43 (list!821 thiss!9365) f!1094) (not (forall!348 (list!821 thiss!9365) lambda!3302)))))

(declare-fun bs!12750 () Bool)

(assert (= bs!12750 d!32736))

(assert (=> bs!12750 m!121117))

(declare-fun m!121129 () Bool)

(assert (=> bs!12750 m!121129))

(assert (=> start!14294 d!32736))

(declare-fun d!32740 () Bool)

(declare-fun choose!1714 (Vector!16) List!2252)

(assert (=> d!32740 (= (list!821 thiss!9365) (choose!1714 thiss!9365))))

(declare-fun bs!12751 () Bool)

(assert (= bs!12751 d!32740))

(declare-fun m!121131 () Bool)

(assert (=> bs!12751 m!121131))

(assert (=> start!14294 d!32740))

(declare-fun b!136567 () Bool)

(declare-fun e!79453 () Bool)

(declare-fun tp!71193 () Bool)

(declare-fun inv!2946 (Conc!593) Bool)

(assert (=> b!136567 (= e!79453 (and (inv!2946 (c!28918 (value!14861 (underlying!1080 thiss!9365)))) tp!71193))))

(declare-fun b!136566 () Bool)

(declare-fun e!79452 () Bool)

(declare-fun inv!2947 (BalanceConc!1192) Bool)

(assert (=> b!136566 (= e!79452 (and (inv!2947 (value!14861 (underlying!1080 thiss!9365))) e!79453))))

(declare-fun b!136568 () Bool)

(declare-fun tp!71194 () Bool)

(assert (=> b!136568 (= e!79452 tp!71194)))

(assert (=> b!136538 (= tp!71178 e!79452)))

(assert (= b!136566 b!136567))

(get-info :version)

(assert (= (and b!136538 ((_ is BalanceConc!1191) (underlying!1080 thiss!9365))) b!136566))

(assert (= (and b!136538 ((_ is List!2250) (underlying!1080 thiss!9365))) b!136568))

(declare-fun m!121137 () Bool)

(assert (=> b!136567 m!121137))

(declare-fun m!121139 () Bool)

(assert (=> b!136566 m!121139))

(declare-fun b!136574 () Bool)

(declare-fun e!79457 () Bool)

(declare-fun tp_is_empty!1533 () Bool)

(declare-fun tp!71198 () Bool)

(assert (=> b!136574 (= e!79457 (and tp_is_empty!1533 tp!71198))))

(assert (=> b!136538 (= tp!71179 e!79457)))

(assert (= (and b!136538 ((_ is Cons!2244) (overflowing!65 thiss!9365))) b!136574))

(check-sat b_and!6139 (not d!32734) (not b!136566) (not d!32740) tp_is_empty!1533 (not b!136567) (not b!136568) (not d!32736) (not b_next!3991) (not b!136574))
(check-sat b_and!6139 (not b_next!3991))
(get-model)

(declare-fun d!32744 () Bool)

(declare-fun res!64138 () Bool)

(declare-fun e!79464 () Bool)

(assert (=> d!32744 (=> res!64138 e!79464)))

(assert (=> d!32744 (= res!64138 ((_ is Nil!2244) (list!821 thiss!9365)))))

(assert (=> d!32744 (= (forall!348 (list!821 thiss!9365) lambda!3302) e!79464)))

(declare-fun b!136581 () Bool)

(declare-fun e!79465 () Bool)

(assert (=> b!136581 (= e!79464 e!79465)))

(declare-fun res!64139 () Bool)

(assert (=> b!136581 (=> (not res!64139) (not e!79465))))

(declare-fun dynLambda!762 (Int T!5680) Bool)

(assert (=> b!136581 (= res!64139 (dynLambda!762 lambda!3302 (h!7641 (list!821 thiss!9365))))))

(declare-fun b!136582 () Bool)

(assert (=> b!136582 (= e!79465 (forall!348 (t!22836 (list!821 thiss!9365)) lambda!3302))))

(assert (= (and d!32744 (not res!64138)) b!136581))

(assert (= (and b!136581 res!64139) b!136582))

(declare-fun b_lambda!1735 () Bool)

(assert (=> (not b_lambda!1735) (not b!136581)))

(declare-fun m!121141 () Bool)

(assert (=> b!136581 m!121141))

(declare-fun m!121143 () Bool)

(assert (=> b!136582 m!121143))

(assert (=> d!32736 d!32744))

(declare-fun d!32750 () Bool)

(assert (=> d!32750 true))

(declare-fun e!79473 () Bool)

(assert (=> d!32750 e!79473))

(declare-fun res!64147 () List!2252)

(assert (=> d!32750 (= (choose!1714 thiss!9365) res!64147)))

(declare-fun b!136590 () Bool)

(declare-fun tp!71204 () Bool)

(assert (=> b!136590 (= e!79473 (and tp_is_empty!1533 tp!71204))))

(assert (= (and d!32750 ((_ is Cons!2244) res!64147)) b!136590))

(assert (=> d!32740 d!32750))

(declare-fun d!32752 () Bool)

(declare-fun isBalanced!174 (Conc!593) Bool)

(assert (=> d!32752 (= (inv!2947 (value!14861 (underlying!1080 thiss!9365))) (isBalanced!174 (c!28918 (value!14861 (underlying!1080 thiss!9365)))))))

(declare-fun bs!12753 () Bool)

(assert (= bs!12753 d!32752))

(declare-fun m!121149 () Bool)

(assert (=> bs!12753 m!121149))

(assert (=> b!136566 d!32752))

(declare-fun d!32756 () Bool)

(declare-fun c!28921 () Bool)

(assert (=> d!32756 (= c!28921 ((_ is Node!593) (c!28918 (value!14861 (underlying!1080 thiss!9365)))))))

(declare-fun e!79480 () Bool)

(assert (=> d!32756 (= (inv!2946 (c!28918 (value!14861 (underlying!1080 thiss!9365)))) e!79480)))

(declare-fun b!136599 () Bool)

(declare-fun inv!2949 (Conc!593) Bool)

(assert (=> b!136599 (= e!79480 (inv!2949 (c!28918 (value!14861 (underlying!1080 thiss!9365)))))))

(declare-fun b!136600 () Bool)

(declare-fun e!79481 () Bool)

(assert (=> b!136600 (= e!79480 e!79481)))

(declare-fun res!64152 () Bool)

(assert (=> b!136600 (= res!64152 (not ((_ is Leaf!1111) (c!28918 (value!14861 (underlying!1080 thiss!9365))))))))

(assert (=> b!136600 (=> res!64152 e!79481)))

(declare-fun b!136601 () Bool)

(declare-fun inv!2950 (Conc!593) Bool)

(assert (=> b!136601 (= e!79481 (inv!2950 (c!28918 (value!14861 (underlying!1080 thiss!9365)))))))

(assert (= (and d!32756 c!28921) b!136599))

(assert (= (and d!32756 (not c!28921)) b!136600))

(assert (= (and b!136600 (not res!64152)) b!136601))

(declare-fun m!121153 () Bool)

(assert (=> b!136599 m!121153))

(declare-fun m!121155 () Bool)

(assert (=> b!136601 m!121155))

(assert (=> b!136567 d!32756))

(declare-fun d!32760 () Bool)

(declare-fun res!64155 () Bool)

(assert (=> d!32760 (= res!64155 (exists!43 (list!821 thiss!9365) f!1094))))

(assert (=> d!32760 true))

(assert (=> d!32760 (= (choose!1712 thiss!9365 f!1094) res!64155)))

(declare-fun bs!12755 () Bool)

(assert (= bs!12755 d!32760))

(assert (=> bs!12755 m!121117))

(assert (=> bs!12755 m!121117))

(assert (=> bs!12755 m!121119))

(assert (=> d!32734 d!32760))

(declare-fun b!136608 () Bool)

(declare-fun e!79486 () Bool)

(declare-fun tp!71205 () Bool)

(assert (=> b!136608 (= e!79486 (and tp_is_empty!1533 tp!71205))))

(assert (=> b!136574 (= tp!71198 e!79486)))

(assert (= (and b!136574 ((_ is Cons!2244) (t!22836 (overflowing!65 thiss!9365)))) b!136608))

(declare-fun tp!71213 () Bool)

(declare-fun tp!71212 () Bool)

(declare-fun e!79494 () Bool)

(declare-fun b!136620 () Bool)

(assert (=> b!136620 (= e!79494 (and (inv!2946 (left!1750 (c!28918 (value!14861 (underlying!1080 thiss!9365))))) tp!71212 (inv!2946 (right!2080 (c!28918 (value!14861 (underlying!1080 thiss!9365))))) tp!71213))))

(declare-fun b!136622 () Bool)

(declare-fun e!79493 () Bool)

(declare-fun tp!71214 () Bool)

(assert (=> b!136622 (= e!79493 tp!71214)))

(declare-fun b!136621 () Bool)

(declare-fun inv!2951 (IArray!1187) Bool)

(assert (=> b!136621 (= e!79494 (and (inv!2951 (xs!3188 (c!28918 (value!14861 (underlying!1080 thiss!9365))))) e!79493))))

(assert (=> b!136567 (= tp!71193 (and (inv!2946 (c!28918 (value!14861 (underlying!1080 thiss!9365)))) e!79494))))

(assert (= (and b!136567 ((_ is Node!593) (c!28918 (value!14861 (underlying!1080 thiss!9365))))) b!136620))

(assert (= b!136621 b!136622))

(assert (= (and b!136567 ((_ is Leaf!1111) (c!28918 (value!14861 (underlying!1080 thiss!9365))))) b!136621))

(declare-fun m!121161 () Bool)

(assert (=> b!136620 m!121161))

(declare-fun m!121163 () Bool)

(assert (=> b!136620 m!121163))

(declare-fun m!121165 () Bool)

(assert (=> b!136621 m!121165))

(assert (=> b!136567 m!121137))

(declare-fun b!136633 () Bool)

(declare-fun e!79501 () Bool)

(declare-fun tp!71226 () Bool)

(declare-fun tp!71227 () Bool)

(assert (=> b!136633 (= e!79501 (and tp!71226 tp!71227))))

(assert (=> b!136568 (= tp!71194 e!79501)))

(assert (= (and b!136568 ((_ is Cons!2243) (value!14862 (underlying!1080 thiss!9365)))) b!136633))

(declare-fun b_lambda!1739 () Bool)

(assert (= b_lambda!1735 (or d!32736 b_lambda!1739)))

(declare-fun bs!12756 () Bool)

(declare-fun d!32762 () Bool)

(assert (= bs!12756 (and d!32762 d!32736)))

(assert (=> bs!12756 (= (dynLambda!762 lambda!3302 (h!7641 (list!821 thiss!9365))) (not (dynLambda!762 f!1094 (h!7641 (list!821 thiss!9365)))))))

(declare-fun b_lambda!1741 () Bool)

(assert (=> (not b_lambda!1741) (not bs!12756)))

(declare-fun t!22838 () Bool)

(declare-fun tb!3665 () Bool)

(assert (=> (and start!14294 (= f!1094 f!1094) t!22838) tb!3665))

(declare-fun result!5694 () Bool)

(assert (=> tb!3665 (= result!5694 true)))

(assert (=> bs!12756 t!22838))

(declare-fun b_and!6141 () Bool)

(assert (= b_and!6139 (and (=> t!22838 result!5694) b_and!6141)))

(declare-fun m!121167 () Bool)

(assert (=> bs!12756 m!121167))

(assert (=> b!136581 d!32762))

(check-sat (not b!136590) (not b!136621) (not b_lambda!1741) (not b!136599) (not b_lambda!1739) tp_is_empty!1533 (not d!32752) (not b!136622) (not b!136620) (not b!136582) (not b_next!3991) (not d!32760) (not b!136633) (not b!136601) (not b!136608) b_and!6141 (not b!136567))
(check-sat b_and!6141 (not b_next!3991))
