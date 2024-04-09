; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7270 () Bool)

(assert start!7270)

(declare-fun b!46489 () Bool)

(declare-fun e!29635 () Bool)

(declare-fun tp_is_empty!1987 () Bool)

(declare-fun tp!6137 () Bool)

(assert (=> b!46489 (= e!29635 (and tp_is_empty!1987 tp!6137))))

(declare-fun b!46488 () Bool)

(declare-datatypes ((B!890 0))(
  ( (B!891 (val!1032 Int)) )
))
(declare-datatypes ((tuple2!1716 0))(
  ( (tuple2!1717 (_1!868 (_ BitVec 64)) (_2!868 B!890)) )
))
(declare-datatypes ((List!1266 0))(
  ( (Nil!1263) (Cons!1262 (h!1842 tuple2!1716) (t!4299 List!1266)) )
))
(declare-fun l!812 () List!1266)

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun e!29636 () Bool)

(declare-fun removeStrictlySorted!43 (List!1266 (_ BitVec 64)) List!1266)

(assert (=> b!46488 (= e!29636 (not (= (removeStrictlySorted!43 (removeStrictlySorted!43 l!812 key1!43) key2!27) (removeStrictlySorted!43 (removeStrictlySorted!43 l!812 key2!27) key1!43))))))

(assert (=> b!46488 (= (removeStrictlySorted!43 (removeStrictlySorted!43 (t!4299 l!812) key1!43) key2!27) (removeStrictlySorted!43 (removeStrictlySorted!43 (t!4299 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1321 0))(
  ( (Unit!1322) )
))
(declare-fun lt!20312 () Unit!1321)

(declare-fun lemmaRemoveStrictlySortedCommutative!16 (List!1266 (_ BitVec 64) (_ BitVec 64)) Unit!1321)

(assert (=> b!46488 (= lt!20312 (lemmaRemoveStrictlySortedCommutative!16 (t!4299 l!812) key1!43 key2!27))))

(declare-fun b!46487 () Bool)

(declare-fun res!27145 () Bool)

(assert (=> b!46487 (=> (not res!27145) (not e!29636))))

(declare-fun isStrictlySorted!237 (List!1266) Bool)

(assert (=> b!46487 (= res!27145 (isStrictlySorted!237 (t!4299 l!812)))))

(declare-fun res!27143 () Bool)

(assert (=> start!7270 (=> (not res!27143) (not e!29636))))

(assert (=> start!7270 (= res!27143 (isStrictlySorted!237 l!812))))

(assert (=> start!7270 e!29636))

(assert (=> start!7270 e!29635))

(assert (=> start!7270 true))

(declare-fun b!46486 () Bool)

(declare-fun res!27144 () Bool)

(assert (=> b!46486 (=> (not res!27144) (not e!29636))))

(assert (=> b!46486 (= res!27144 (is-Cons!1262 l!812))))

(assert (= (and start!7270 res!27143) b!46486))

(assert (= (and b!46486 res!27144) b!46487))

(assert (= (and b!46487 res!27145) b!46488))

(assert (= (and start!7270 (is-Cons!1262 l!812)) b!46489))

(declare-fun m!40779 () Bool)

(assert (=> b!46488 m!40779))

(declare-fun m!40781 () Bool)

(assert (=> b!46488 m!40781))

(declare-fun m!40783 () Bool)

(assert (=> b!46488 m!40783))

(assert (=> b!46488 m!40781))

(declare-fun m!40785 () Bool)

(assert (=> b!46488 m!40785))

(declare-fun m!40787 () Bool)

(assert (=> b!46488 m!40787))

(declare-fun m!40789 () Bool)

(assert (=> b!46488 m!40789))

(assert (=> b!46488 m!40779))

(declare-fun m!40791 () Bool)

(assert (=> b!46488 m!40791))

(declare-fun m!40793 () Bool)

(assert (=> b!46488 m!40793))

(assert (=> b!46488 m!40789))

(declare-fun m!40795 () Bool)

(assert (=> b!46488 m!40795))

(assert (=> b!46488 m!40785))

(declare-fun m!40797 () Bool)

(assert (=> b!46487 m!40797))

(declare-fun m!40799 () Bool)

(assert (=> start!7270 m!40799))

(push 1)

(assert tp_is_empty!1987)

(assert (not b!46489))

(assert (not b!46487))

(assert (not b!46488))

(assert (not start!7270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9128 () Bool)

(declare-fun res!27172 () Bool)

(declare-fun e!29657 () Bool)

(assert (=> d!9128 (=> res!27172 e!29657)))

(assert (=> d!9128 (= res!27172 (or (is-Nil!1263 l!812) (is-Nil!1263 (t!4299 l!812))))))

(assert (=> d!9128 (= (isStrictlySorted!237 l!812) e!29657)))

(declare-fun b!46522 () Bool)

(declare-fun e!29659 () Bool)

(assert (=> b!46522 (= e!29657 e!29659)))

(declare-fun res!27174 () Bool)

(assert (=> b!46522 (=> (not res!27174) (not e!29659))))

(assert (=> b!46522 (= res!27174 (bvslt (_1!868 (h!1842 l!812)) (_1!868 (h!1842 (t!4299 l!812)))))))

(declare-fun b!46524 () Bool)

(assert (=> b!46524 (= e!29659 (isStrictlySorted!237 (t!4299 l!812)))))

(assert (= (and d!9128 (not res!27172)) b!46522))

(assert (= (and b!46522 res!27174) b!46524))

(assert (=> b!46524 m!40797))

(assert (=> start!7270 d!9128))

(declare-fun d!9135 () Bool)

(declare-fun res!27177 () Bool)

(declare-fun e!29662 () Bool)

(assert (=> d!9135 (=> res!27177 e!29662)))

(assert (=> d!9135 (= res!27177 (or (is-Nil!1263 (t!4299 l!812)) (is-Nil!1263 (t!4299 (t!4299 l!812)))))))

(assert (=> d!9135 (= (isStrictlySorted!237 (t!4299 l!812)) e!29662)))

(declare-fun b!46528 () Bool)

(declare-fun e!29664 () Bool)

(assert (=> b!46528 (= e!29662 e!29664)))

(declare-fun res!27179 () Bool)

(assert (=> b!46528 (=> (not res!27179) (not e!29664))))

(assert (=> b!46528 (= res!27179 (bvslt (_1!868 (h!1842 (t!4299 l!812))) (_1!868 (h!1842 (t!4299 (t!4299 l!812))))))))

(declare-fun b!46529 () Bool)

(assert (=> b!46529 (= e!29664 (isStrictlySorted!237 (t!4299 (t!4299 l!812))))))

(assert (= (and d!9135 (not res!27177)) b!46528))

(assert (= (and b!46528 res!27179) b!46529))

(declare-fun m!40847 () Bool)

(assert (=> b!46529 m!40847))

(assert (=> b!46487 d!9135))

(declare-fun b!46580 () Bool)

(declare-fun e!29697 () List!1266)

(assert (=> b!46580 (= e!29697 (t!4299 (removeStrictlySorted!43 l!812 key2!27)))))

(declare-fun b!46581 () Bool)

(declare-fun e!29696 () List!1266)

(assert (=> b!46581 (= e!29696 Nil!1263)))

(declare-fun b!46582 () Bool)

(declare-fun e!29695 () Bool)

(declare-fun lt!20329 () List!1266)

(declare-fun containsKey!91 (List!1266 (_ BitVec 64)) Bool)

(assert (=> b!46582 (= e!29695 (not (containsKey!91 lt!20329 key1!43)))))

(declare-fun b!46583 () Bool)

(assert (=> b!46583 (= e!29697 e!29696)))

(declare-fun c!6303 () Bool)

(assert (=> b!46583 (= c!6303 (and (is-Cons!1262 (removeStrictlySorted!43 l!812 key2!27)) (not (= (_1!868 (h!1842 (removeStrictlySorted!43 l!812 key2!27))) key1!43))))))

(declare-fun d!9139 () Bool)

(assert (=> d!9139 e!29695))

(declare-fun res!27190 () Bool)

(assert (=> d!9139 (=> (not res!27190) (not e!29695))))

(assert (=> d!9139 (= res!27190 (isStrictlySorted!237 lt!20329))))

(assert (=> d!9139 (= lt!20329 e!29697)))

(declare-fun c!6304 () Bool)

(assert (=> d!9139 (= c!6304 (and (is-Cons!1262 (removeStrictlySorted!43 l!812 key2!27)) (= (_1!868 (h!1842 (removeStrictlySorted!43 l!812 key2!27))) key1!43)))))

(assert (=> d!9139 (isStrictlySorted!237 (removeStrictlySorted!43 l!812 key2!27))))

(assert (=> d!9139 (= (removeStrictlySorted!43 (removeStrictlySorted!43 l!812 key2!27) key1!43) lt!20329)))

(declare-fun b!46584 () Bool)

(declare-fun $colon$colon!45 (List!1266 tuple2!1716) List!1266)

(assert (=> b!46584 (= e!29696 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 l!812 key2!27)) key1!43) (h!1842 (removeStrictlySorted!43 l!812 key2!27))))))

(assert (= (and d!9139 c!6304) b!46580))

(assert (= (and d!9139 (not c!6304)) b!46583))

(assert (= (and b!46583 c!6303) b!46584))

(assert (= (and b!46583 (not c!6303)) b!46581))

(assert (= (and d!9139 res!27190) b!46582))

(declare-fun m!40875 () Bool)

(assert (=> b!46582 m!40875))

(declare-fun m!40879 () Bool)

(assert (=> d!9139 m!40879))

(assert (=> d!9139 m!40781))

(declare-fun m!40883 () Bool)

(assert (=> d!9139 m!40883))

(declare-fun m!40887 () Bool)

(assert (=> b!46584 m!40887))

(assert (=> b!46584 m!40887))

(declare-fun m!40889 () Bool)

(assert (=> b!46584 m!40889))

(assert (=> b!46488 d!9139))

(declare-fun b!46590 () Bool)

(declare-fun e!29703 () List!1266)

(assert (=> b!46590 (= e!29703 (t!4299 l!812))))

(declare-fun b!46591 () Bool)

(declare-fun e!29702 () List!1266)

(assert (=> b!46591 (= e!29702 Nil!1263)))

(declare-fun b!46592 () Bool)

(declare-fun e!29701 () Bool)

(declare-fun lt!20331 () List!1266)

(assert (=> b!46592 (= e!29701 (not (containsKey!91 lt!20331 key1!43)))))

(declare-fun b!46593 () Bool)

(assert (=> b!46593 (= e!29703 e!29702)))

(declare-fun c!6307 () Bool)

(assert (=> b!46593 (= c!6307 (and (is-Cons!1262 l!812) (not (= (_1!868 (h!1842 l!812)) key1!43))))))

(declare-fun d!9149 () Bool)

(assert (=> d!9149 e!29701))

(declare-fun res!27192 () Bool)

(assert (=> d!9149 (=> (not res!27192) (not e!29701))))

(assert (=> d!9149 (= res!27192 (isStrictlySorted!237 lt!20331))))

(assert (=> d!9149 (= lt!20331 e!29703)))

(declare-fun c!6308 () Bool)

(assert (=> d!9149 (= c!6308 (and (is-Cons!1262 l!812) (= (_1!868 (h!1842 l!812)) key1!43)))))

(assert (=> d!9149 (isStrictlySorted!237 l!812)))

(assert (=> d!9149 (= (removeStrictlySorted!43 l!812 key1!43) lt!20331)))

(declare-fun b!46594 () Bool)

(assert (=> b!46594 (= e!29702 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 l!812) key1!43) (h!1842 l!812)))))

(assert (= (and d!9149 c!6308) b!46590))

(assert (= (and d!9149 (not c!6308)) b!46593))

(assert (= (and b!46593 c!6307) b!46594))

(assert (= (and b!46593 (not c!6307)) b!46591))

(assert (= (and d!9149 res!27192) b!46592))

(declare-fun m!40895 () Bool)

(assert (=> b!46592 m!40895))

(declare-fun m!40897 () Bool)

(assert (=> d!9149 m!40897))

(assert (=> d!9149 m!40799))

(assert (=> b!46594 m!40785))

(assert (=> b!46594 m!40785))

(declare-fun m!40901 () Bool)

(assert (=> b!46594 m!40901))

(assert (=> b!46488 d!9149))

(declare-fun b!46600 () Bool)

(declare-fun e!29709 () List!1266)

(assert (=> b!46600 (= e!29709 (t!4299 l!812))))

(declare-fun b!46601 () Bool)

(declare-fun e!29708 () List!1266)

(assert (=> b!46601 (= e!29708 Nil!1263)))

(declare-fun b!46602 () Bool)

(declare-fun e!29707 () Bool)

(declare-fun lt!20335 () List!1266)

(assert (=> b!46602 (= e!29707 (not (containsKey!91 lt!20335 key2!27)))))

(declare-fun b!46603 () Bool)

(assert (=> b!46603 (= e!29709 e!29708)))

(declare-fun c!6311 () Bool)

(assert (=> b!46603 (= c!6311 (and (is-Cons!1262 l!812) (not (= (_1!868 (h!1842 l!812)) key2!27))))))

(declare-fun d!9153 () Bool)

(assert (=> d!9153 e!29707))

(declare-fun res!27194 () Bool)

(assert (=> d!9153 (=> (not res!27194) (not e!29707))))

(assert (=> d!9153 (= res!27194 (isStrictlySorted!237 lt!20335))))

(assert (=> d!9153 (= lt!20335 e!29709)))

(declare-fun c!6312 () Bool)

(assert (=> d!9153 (= c!6312 (and (is-Cons!1262 l!812) (= (_1!868 (h!1842 l!812)) key2!27)))))

(assert (=> d!9153 (isStrictlySorted!237 l!812)))

(assert (=> d!9153 (= (removeStrictlySorted!43 l!812 key2!27) lt!20335)))

(declare-fun b!46604 () Bool)

(assert (=> b!46604 (= e!29708 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 l!812) key2!27) (h!1842 l!812)))))

(assert (= (and d!9153 c!6312) b!46600))

(assert (= (and d!9153 (not c!6312)) b!46603))

(assert (= (and b!46603 c!6311) b!46604))

(assert (= (and b!46603 (not c!6311)) b!46601))

(assert (= (and d!9153 res!27194) b!46602))

(declare-fun m!40907 () Bool)

(assert (=> b!46602 m!40907))

(declare-fun m!40910 () Bool)

(assert (=> d!9153 m!40910))

(assert (=> d!9153 m!40799))

(assert (=> b!46604 m!40779))

(assert (=> b!46604 m!40779))

(declare-fun m!40915 () Bool)

(assert (=> b!46604 m!40915))

(assert (=> b!46488 d!9153))

(declare-fun d!9157 () Bool)

(assert (=> d!9157 (= (removeStrictlySorted!43 (removeStrictlySorted!43 (t!4299 l!812) key1!43) key2!27) (removeStrictlySorted!43 (removeStrictlySorted!43 (t!4299 l!812) key2!27) key1!43))))

(declare-fun lt!20346 () Unit!1321)

(declare-fun choose!286 (List!1266 (_ BitVec 64) (_ BitVec 64)) Unit!1321)

(assert (=> d!9157 (= lt!20346 (choose!286 (t!4299 l!812) key1!43 key2!27))))

(assert (=> d!9157 (isStrictlySorted!237 (t!4299 l!812))))

(assert (=> d!9157 (= (lemmaRemoveStrictlySortedCommutative!16 (t!4299 l!812) key1!43 key2!27) lt!20346)))

(declare-fun bs!2185 () Bool)

(assert (= bs!2185 d!9157))

(declare-fun m!40953 () Bool)

(assert (=> bs!2185 m!40953))

(assert (=> bs!2185 m!40779))

(assert (=> bs!2185 m!40785))

(assert (=> bs!2185 m!40785))

(assert (=> bs!2185 m!40787))

(assert (=> bs!2185 m!40779))

(assert (=> bs!2185 m!40791))

(assert (=> bs!2185 m!40797))

(assert (=> b!46488 d!9157))

(declare-fun b!46635 () Bool)

(declare-fun e!29730 () List!1266)

(assert (=> b!46635 (= e!29730 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43)))))

(declare-fun b!46636 () Bool)

(declare-fun e!29729 () List!1266)

(assert (=> b!46636 (= e!29729 Nil!1263)))

(declare-fun b!46637 () Bool)

(declare-fun e!29728 () Bool)

(declare-fun lt!20349 () List!1266)

(assert (=> b!46637 (= e!29728 (not (containsKey!91 lt!20349 key2!27)))))

(declare-fun b!46638 () Bool)

(assert (=> b!46638 (= e!29730 e!29729)))

(declare-fun c!6325 () Bool)

(assert (=> b!46638 (= c!6325 (and (is-Cons!1262 (removeStrictlySorted!43 (t!4299 l!812) key1!43)) (not (= (_1!868 (h!1842 (removeStrictlySorted!43 (t!4299 l!812) key1!43))) key2!27))))))

(declare-fun d!9171 () Bool)

(assert (=> d!9171 e!29728))

(declare-fun res!27201 () Bool)

(assert (=> d!9171 (=> (not res!27201) (not e!29728))))

(assert (=> d!9171 (= res!27201 (isStrictlySorted!237 lt!20349))))

(assert (=> d!9171 (= lt!20349 e!29730)))

(declare-fun c!6326 () Bool)

(assert (=> d!9171 (= c!6326 (and (is-Cons!1262 (removeStrictlySorted!43 (t!4299 l!812) key1!43)) (= (_1!868 (h!1842 (removeStrictlySorted!43 (t!4299 l!812) key1!43))) key2!27)))))

(assert (=> d!9171 (isStrictlySorted!237 (removeStrictlySorted!43 (t!4299 l!812) key1!43))))

(assert (=> d!9171 (= (removeStrictlySorted!43 (removeStrictlySorted!43 (t!4299 l!812) key1!43) key2!27) lt!20349)))

(declare-fun b!46639 () Bool)

(assert (=> b!46639 (= e!29729 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43)) key2!27) (h!1842 (removeStrictlySorted!43 (t!4299 l!812) key1!43))))))

(assert (= (and d!9171 c!6326) b!46635))

(assert (= (and d!9171 (not c!6326)) b!46638))

(assert (= (and b!46638 c!6325) b!46639))

(assert (= (and b!46638 (not c!6325)) b!46636))

(assert (= (and d!9171 res!27201) b!46637))

(declare-fun m!40973 () Bool)

(assert (=> b!46637 m!40973))

(declare-fun m!40977 () Bool)

(assert (=> d!9171 m!40977))

(assert (=> d!9171 m!40785))

(declare-fun m!40979 () Bool)

(assert (=> d!9171 m!40979))

(declare-fun m!40983 () Bool)

(assert (=> b!46639 m!40983))

(assert (=> b!46639 m!40983))

(declare-fun m!40985 () Bool)

(assert (=> b!46639 m!40985))

(assert (=> b!46488 d!9171))

(declare-fun b!46645 () Bool)

(declare-fun e!29736 () List!1266)

(assert (=> b!46645 (= e!29736 (t!4299 (t!4299 l!812)))))

(declare-fun b!46646 () Bool)

(declare-fun e!29735 () List!1266)

(assert (=> b!46646 (= e!29735 Nil!1263)))

(declare-fun b!46647 () Bool)

(declare-fun e!29734 () Bool)

(declare-fun lt!20351 () List!1266)

(assert (=> b!46647 (= e!29734 (not (containsKey!91 lt!20351 key1!43)))))

(declare-fun b!46648 () Bool)

(assert (=> b!46648 (= e!29736 e!29735)))

(declare-fun c!6329 () Bool)

(assert (=> b!46648 (= c!6329 (and (is-Cons!1262 (t!4299 l!812)) (not (= (_1!868 (h!1842 (t!4299 l!812))) key1!43))))))

(declare-fun d!9177 () Bool)

(assert (=> d!9177 e!29734))

(declare-fun res!27203 () Bool)

(assert (=> d!9177 (=> (not res!27203) (not e!29734))))

(assert (=> d!9177 (= res!27203 (isStrictlySorted!237 lt!20351))))

(assert (=> d!9177 (= lt!20351 e!29736)))

(declare-fun c!6330 () Bool)

(assert (=> d!9177 (= c!6330 (and (is-Cons!1262 (t!4299 l!812)) (= (_1!868 (h!1842 (t!4299 l!812))) key1!43)))))

(assert (=> d!9177 (isStrictlySorted!237 (t!4299 l!812))))

(assert (=> d!9177 (= (removeStrictlySorted!43 (t!4299 l!812) key1!43) lt!20351)))

(declare-fun b!46649 () Bool)

(assert (=> b!46649 (= e!29735 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (t!4299 l!812)) key1!43) (h!1842 (t!4299 l!812))))))

(assert (= (and d!9177 c!6330) b!46645))

(assert (= (and d!9177 (not c!6330)) b!46648))

(assert (= (and b!46648 c!6329) b!46649))

(assert (= (and b!46648 (not c!6329)) b!46646))

(assert (= (and d!9177 res!27203) b!46647))

(declare-fun m!40993 () Bool)

(assert (=> b!46647 m!40993))

(declare-fun m!40997 () Bool)

(assert (=> d!9177 m!40997))

(assert (=> d!9177 m!40797))

(declare-fun m!40999 () Bool)

(assert (=> b!46649 m!40999))

(assert (=> b!46649 m!40999))

(declare-fun m!41001 () Bool)

(assert (=> b!46649 m!41001))

(assert (=> b!46488 d!9177))

(declare-fun b!46655 () Bool)

(declare-fun e!29744 () List!1266)

(assert (=> b!46655 (= e!29744 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27)))))

(declare-fun b!46656 () Bool)

(declare-fun e!29742 () List!1266)

(assert (=> b!46656 (= e!29742 Nil!1263)))

(declare-fun b!46657 () Bool)

(declare-fun e!29740 () Bool)

(declare-fun lt!20353 () List!1266)

(assert (=> b!46657 (= e!29740 (not (containsKey!91 lt!20353 key1!43)))))

(declare-fun b!46658 () Bool)

(assert (=> b!46658 (= e!29744 e!29742)))

(declare-fun c!6333 () Bool)

(assert (=> b!46658 (= c!6333 (and (is-Cons!1262 (removeStrictlySorted!43 (t!4299 l!812) key2!27)) (not (= (_1!868 (h!1842 (removeStrictlySorted!43 (t!4299 l!812) key2!27))) key1!43))))))

(declare-fun d!9181 () Bool)

(assert (=> d!9181 e!29740))

(declare-fun res!27205 () Bool)

(assert (=> d!9181 (=> (not res!27205) (not e!29740))))

(assert (=> d!9181 (= res!27205 (isStrictlySorted!237 lt!20353))))

(assert (=> d!9181 (= lt!20353 e!29744)))

(declare-fun c!6334 () Bool)

(assert (=> d!9181 (= c!6334 (and (is-Cons!1262 (removeStrictlySorted!43 (t!4299 l!812) key2!27)) (= (_1!868 (h!1842 (removeStrictlySorted!43 (t!4299 l!812) key2!27))) key1!43)))))

(assert (=> d!9181 (isStrictlySorted!237 (removeStrictlySorted!43 (t!4299 l!812) key2!27))))

(assert (=> d!9181 (= (removeStrictlySorted!43 (removeStrictlySorted!43 (t!4299 l!812) key2!27) key1!43) lt!20353)))

(declare-fun b!46659 () Bool)

(assert (=> b!46659 (= e!29742 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27)) key1!43) (h!1842 (removeStrictlySorted!43 (t!4299 l!812) key2!27))))))

(assert (= (and d!9181 c!6334) b!46655))

(assert (= (and d!9181 (not c!6334)) b!46658))

(assert (= (and b!46658 c!6333) b!46659))

(assert (= (and b!46658 (not c!6333)) b!46656))

(assert (= (and d!9181 res!27205) b!46657))

(declare-fun m!41011 () Bool)

(assert (=> b!46657 m!41011))

(declare-fun m!41013 () Bool)

(assert (=> d!9181 m!41013))

(assert (=> d!9181 m!40779))

(declare-fun m!41017 () Bool)

(assert (=> d!9181 m!41017))

(declare-fun m!41019 () Bool)

(assert (=> b!46659 m!41019))

(assert (=> b!46659 m!41019))

(declare-fun m!41021 () Bool)

(assert (=> b!46659 m!41021))

(assert (=> b!46488 d!9181))

(declare-fun b!46669 () Bool)

(declare-fun e!29752 () List!1266)

(assert (=> b!46669 (= e!29752 (t!4299 (t!4299 l!812)))))

(declare-fun b!46670 () Bool)

(declare-fun e!29751 () List!1266)

(assert (=> b!46670 (= e!29751 Nil!1263)))

(declare-fun b!46671 () Bool)

(declare-fun e!29750 () Bool)

(declare-fun lt!20355 () List!1266)

(assert (=> b!46671 (= e!29750 (not (containsKey!91 lt!20355 key2!27)))))

(declare-fun b!46672 () Bool)

(assert (=> b!46672 (= e!29752 e!29751)))

(declare-fun c!6337 () Bool)

(assert (=> b!46672 (= c!6337 (and (is-Cons!1262 (t!4299 l!812)) (not (= (_1!868 (h!1842 (t!4299 l!812))) key2!27))))))

(declare-fun d!9185 () Bool)

(assert (=> d!9185 e!29750))

(declare-fun res!27211 () Bool)

(assert (=> d!9185 (=> (not res!27211) (not e!29750))))

(assert (=> d!9185 (= res!27211 (isStrictlySorted!237 lt!20355))))

(assert (=> d!9185 (= lt!20355 e!29752)))

(declare-fun c!6338 () Bool)

(assert (=> d!9185 (= c!6338 (and (is-Cons!1262 (t!4299 l!812)) (= (_1!868 (h!1842 (t!4299 l!812))) key2!27)))))

(assert (=> d!9185 (isStrictlySorted!237 (t!4299 l!812))))

(assert (=> d!9185 (= (removeStrictlySorted!43 (t!4299 l!812) key2!27) lt!20355)))

(declare-fun b!46673 () Bool)

(assert (=> b!46673 (= e!29751 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (t!4299 l!812)) key2!27) (h!1842 (t!4299 l!812))))))

(assert (= (and d!9185 c!6338) b!46669))

(assert (= (and d!9185 (not c!6338)) b!46672))

(assert (= (and b!46672 c!6337) b!46673))

(assert (= (and b!46672 (not c!6337)) b!46670))

(assert (= (and d!9185 res!27211) b!46671))

(declare-fun m!41030 () Bool)

(assert (=> b!46671 m!41030))

(declare-fun m!41033 () Bool)

(assert (=> d!9185 m!41033))

(assert (=> d!9185 m!40797))

(declare-fun m!41035 () Bool)

(assert (=> b!46673 m!41035))

(assert (=> b!46673 m!41035))

(declare-fun m!41037 () Bool)

(assert (=> b!46673 m!41037))

(assert (=> b!46488 d!9185))

(declare-fun b!46683 () Bool)

(declare-fun e!29762 () List!1266)

(assert (=> b!46683 (= e!29762 (t!4299 (removeStrictlySorted!43 l!812 key1!43)))))

(declare-fun b!46684 () Bool)

(declare-fun e!29761 () List!1266)

(assert (=> b!46684 (= e!29761 Nil!1263)))

(declare-fun b!46685 () Bool)

(declare-fun e!29760 () Bool)

(declare-fun lt!20357 () List!1266)

(assert (=> b!46685 (= e!29760 (not (containsKey!91 lt!20357 key2!27)))))

(declare-fun b!46686 () Bool)

(assert (=> b!46686 (= e!29762 e!29761)))

(declare-fun c!6341 () Bool)

(assert (=> b!46686 (= c!6341 (and (is-Cons!1262 (removeStrictlySorted!43 l!812 key1!43)) (not (= (_1!868 (h!1842 (removeStrictlySorted!43 l!812 key1!43))) key2!27))))))

(declare-fun d!9191 () Bool)

(assert (=> d!9191 e!29760))

(declare-fun res!27217 () Bool)

(assert (=> d!9191 (=> (not res!27217) (not e!29760))))

(assert (=> d!9191 (= res!27217 (isStrictlySorted!237 lt!20357))))

(assert (=> d!9191 (= lt!20357 e!29762)))

(declare-fun c!6342 () Bool)

(assert (=> d!9191 (= c!6342 (and (is-Cons!1262 (removeStrictlySorted!43 l!812 key1!43)) (= (_1!868 (h!1842 (removeStrictlySorted!43 l!812 key1!43))) key2!27)))))

(assert (=> d!9191 (isStrictlySorted!237 (removeStrictlySorted!43 l!812 key1!43))))

(assert (=> d!9191 (= (removeStrictlySorted!43 (removeStrictlySorted!43 l!812 key1!43) key2!27) lt!20357)))

(declare-fun b!46687 () Bool)

(assert (=> b!46687 (= e!29761 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 l!812 key1!43)) key2!27) (h!1842 (removeStrictlySorted!43 l!812 key1!43))))))

(assert (= (and d!9191 c!6342) b!46683))

(assert (= (and d!9191 (not c!6342)) b!46686))

(assert (= (and b!46686 c!6341) b!46687))

(assert (= (and b!46686 (not c!6341)) b!46684))

(assert (= (and d!9191 res!27217) b!46685))

(declare-fun m!41049 () Bool)

(assert (=> b!46685 m!41049))

(declare-fun m!41053 () Bool)

(assert (=> d!9191 m!41053))

(assert (=> d!9191 m!40789))

(declare-fun m!41055 () Bool)

(assert (=> d!9191 m!41055))

(declare-fun m!41057 () Bool)

(assert (=> b!46687 m!41057))

(assert (=> b!46687 m!41057))

(declare-fun m!41059 () Bool)

(assert (=> b!46687 m!41059))

(assert (=> b!46488 d!9191))

(declare-fun b!46702 () Bool)

(declare-fun e!29771 () Bool)

(declare-fun tp!6152 () Bool)

(assert (=> b!46702 (= e!29771 (and tp_is_empty!1987 tp!6152))))

(assert (=> b!46489 (= tp!6137 e!29771)))

(assert (= (and b!46489 (is-Cons!1262 (t!4299 l!812))) b!46702))

(push 1)

(assert (not d!9139))

(assert (not b!46524))

(assert (not b!46602))

(assert (not b!46604))

(assert (not d!9171))

(assert (not d!9157))

(assert (not b!46639))

(assert (not b!46687))

(assert (not b!46594))

(assert (not d!9185))

(assert (not d!9177))

(assert (not b!46671))

(assert (not b!46647))

(assert tp_is_empty!1987)

(assert (not d!9149))

(assert (not b!46529))

(assert (not d!9153))

(assert (not d!9191))

(assert (not b!46685))

(assert (not b!46582))

(assert (not b!46649))

(assert (not b!46673))

(assert (not d!9181))

(assert (not b!46659))

(assert (not b!46657))

(assert (not b!46592))

(assert (not b!46637))

(assert (not b!46584))

(assert (not b!46702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9265 () Bool)

(assert (=> d!9265 (= ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27)) key1!43) (h!1842 (removeStrictlySorted!43 (t!4299 l!812) key2!27))) (Cons!1262 (h!1842 (removeStrictlySorted!43 (t!4299 l!812) key2!27)) (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27)) key1!43)))))

(assert (=> b!46659 d!9265))

(declare-fun b!46780 () Bool)

(declare-fun e!29839 () List!1266)

(assert (=> b!46780 (= e!29839 (t!4299 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27))))))

(declare-fun b!46781 () Bool)

(declare-fun e!29838 () List!1266)

(assert (=> b!46781 (= e!29838 Nil!1263)))

(declare-fun b!46782 () Bool)

(declare-fun e!29837 () Bool)

(declare-fun lt!20364 () List!1266)

(assert (=> b!46782 (= e!29837 (not (containsKey!91 lt!20364 key1!43)))))

(declare-fun b!46783 () Bool)

(assert (=> b!46783 (= e!29839 e!29838)))

(declare-fun c!6355 () Bool)

(assert (=> b!46783 (= c!6355 (and (is-Cons!1262 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27))) (not (= (_1!868 (h!1842 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27)))) key1!43))))))

(declare-fun d!9267 () Bool)

(assert (=> d!9267 e!29837))

(declare-fun res!27270 () Bool)

(assert (=> d!9267 (=> (not res!27270) (not e!29837))))

(assert (=> d!9267 (= res!27270 (isStrictlySorted!237 lt!20364))))

(assert (=> d!9267 (= lt!20364 e!29839)))

(declare-fun c!6356 () Bool)

(assert (=> d!9267 (= c!6356 (and (is-Cons!1262 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27))) (= (_1!868 (h!1842 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27)))) key1!43)))))

(assert (=> d!9267 (isStrictlySorted!237 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27)))))

(assert (=> d!9267 (= (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27)) key1!43) lt!20364)))

(declare-fun b!46784 () Bool)

(assert (=> b!46784 (= e!29838 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27))) key1!43) (h!1842 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27)))))))

(assert (= (and d!9267 c!6356) b!46780))

(assert (= (and d!9267 (not c!6356)) b!46783))

(assert (= (and b!46783 c!6355) b!46784))

(assert (= (and b!46783 (not c!6355)) b!46781))

(assert (= (and d!9267 res!27270) b!46782))

(declare-fun m!41151 () Bool)

(assert (=> b!46782 m!41151))

(declare-fun m!41153 () Bool)

(assert (=> d!9267 m!41153))

(declare-fun m!41155 () Bool)

(assert (=> d!9267 m!41155))

(declare-fun m!41157 () Bool)

(assert (=> b!46784 m!41157))

(assert (=> b!46784 m!41157))

(declare-fun m!41159 () Bool)

(assert (=> b!46784 m!41159))

(assert (=> b!46659 d!9267))

(declare-fun d!9269 () Bool)

(declare-fun res!27275 () Bool)

(declare-fun e!29844 () Bool)

(assert (=> d!9269 (=> res!27275 e!29844)))

(assert (=> d!9269 (= res!27275 (and (is-Cons!1262 lt!20329) (= (_1!868 (h!1842 lt!20329)) key1!43)))))

(assert (=> d!9269 (= (containsKey!91 lt!20329 key1!43) e!29844)))

(declare-fun b!46789 () Bool)

(declare-fun e!29845 () Bool)

(assert (=> b!46789 (= e!29844 e!29845)))

(declare-fun res!27276 () Bool)

(assert (=> b!46789 (=> (not res!27276) (not e!29845))))

(assert (=> b!46789 (= res!27276 (and (or (not (is-Cons!1262 lt!20329)) (bvsle (_1!868 (h!1842 lt!20329)) key1!43)) (is-Cons!1262 lt!20329) (bvslt (_1!868 (h!1842 lt!20329)) key1!43)))))

(declare-fun b!46790 () Bool)

(assert (=> b!46790 (= e!29845 (containsKey!91 (t!4299 lt!20329) key1!43))))

(assert (= (and d!9269 (not res!27275)) b!46789))

(assert (= (and b!46789 res!27276) b!46790))

(declare-fun m!41161 () Bool)

(assert (=> b!46790 m!41161))

(assert (=> b!46582 d!9269))

(declare-fun d!9271 () Bool)

(declare-fun res!27277 () Bool)

(declare-fun e!29846 () Bool)

(assert (=> d!9271 (=> res!27277 e!29846)))

(assert (=> d!9271 (= res!27277 (or (is-Nil!1263 lt!20351) (is-Nil!1263 (t!4299 lt!20351))))))

(assert (=> d!9271 (= (isStrictlySorted!237 lt!20351) e!29846)))

(declare-fun b!46791 () Bool)

(declare-fun e!29847 () Bool)

(assert (=> b!46791 (= e!29846 e!29847)))

(declare-fun res!27278 () Bool)

(assert (=> b!46791 (=> (not res!27278) (not e!29847))))

(assert (=> b!46791 (= res!27278 (bvslt (_1!868 (h!1842 lt!20351)) (_1!868 (h!1842 (t!4299 lt!20351)))))))

(declare-fun b!46792 () Bool)

(assert (=> b!46792 (= e!29847 (isStrictlySorted!237 (t!4299 lt!20351)))))

(assert (= (and d!9271 (not res!27277)) b!46791))

(assert (= (and b!46791 res!27278) b!46792))

(declare-fun m!41163 () Bool)

(assert (=> b!46792 m!41163))

(assert (=> d!9177 d!9271))

(assert (=> d!9177 d!9135))

(declare-fun d!9273 () Bool)

(declare-fun res!27279 () Bool)

(declare-fun e!29848 () Bool)

(assert (=> d!9273 (=> res!27279 e!29848)))

(assert (=> d!9273 (= res!27279 (or (is-Nil!1263 lt!20329) (is-Nil!1263 (t!4299 lt!20329))))))

(assert (=> d!9273 (= (isStrictlySorted!237 lt!20329) e!29848)))

(declare-fun b!46793 () Bool)

(declare-fun e!29849 () Bool)

(assert (=> b!46793 (= e!29848 e!29849)))

(declare-fun res!27280 () Bool)

(assert (=> b!46793 (=> (not res!27280) (not e!29849))))

(assert (=> b!46793 (= res!27280 (bvslt (_1!868 (h!1842 lt!20329)) (_1!868 (h!1842 (t!4299 lt!20329)))))))

(declare-fun b!46794 () Bool)

(assert (=> b!46794 (= e!29849 (isStrictlySorted!237 (t!4299 lt!20329)))))

(assert (= (and d!9273 (not res!27279)) b!46793))

(assert (= (and b!46793 res!27280) b!46794))

(declare-fun m!41165 () Bool)

(assert (=> b!46794 m!41165))

(assert (=> d!9139 d!9273))

(declare-fun d!9275 () Bool)

(declare-fun res!27281 () Bool)

(declare-fun e!29850 () Bool)

(assert (=> d!9275 (=> res!27281 e!29850)))

(assert (=> d!9275 (= res!27281 (or (is-Nil!1263 (removeStrictlySorted!43 l!812 key2!27)) (is-Nil!1263 (t!4299 (removeStrictlySorted!43 l!812 key2!27)))))))

(assert (=> d!9275 (= (isStrictlySorted!237 (removeStrictlySorted!43 l!812 key2!27)) e!29850)))

(declare-fun b!46795 () Bool)

(declare-fun e!29851 () Bool)

(assert (=> b!46795 (= e!29850 e!29851)))

(declare-fun res!27282 () Bool)

(assert (=> b!46795 (=> (not res!27282) (not e!29851))))

(assert (=> b!46795 (= res!27282 (bvslt (_1!868 (h!1842 (removeStrictlySorted!43 l!812 key2!27))) (_1!868 (h!1842 (t!4299 (removeStrictlySorted!43 l!812 key2!27))))))))

(declare-fun b!46796 () Bool)

(assert (=> b!46796 (= e!29851 (isStrictlySorted!237 (t!4299 (removeStrictlySorted!43 l!812 key2!27))))))

(assert (= (and d!9275 (not res!27281)) b!46795))

(assert (= (and b!46795 res!27282) b!46796))

(declare-fun m!41167 () Bool)

(assert (=> b!46796 m!41167))

(assert (=> d!9139 d!9275))

(declare-fun d!9277 () Bool)

(declare-fun res!27283 () Bool)

(declare-fun e!29852 () Bool)

(assert (=> d!9277 (=> res!27283 e!29852)))

(assert (=> d!9277 (= res!27283 (or (is-Nil!1263 lt!20355) (is-Nil!1263 (t!4299 lt!20355))))))

(assert (=> d!9277 (= (isStrictlySorted!237 lt!20355) e!29852)))

(declare-fun b!46797 () Bool)

(declare-fun e!29853 () Bool)

(assert (=> b!46797 (= e!29852 e!29853)))

(declare-fun res!27284 () Bool)

(assert (=> b!46797 (=> (not res!27284) (not e!29853))))

(assert (=> b!46797 (= res!27284 (bvslt (_1!868 (h!1842 lt!20355)) (_1!868 (h!1842 (t!4299 lt!20355)))))))

(declare-fun b!46798 () Bool)

(assert (=> b!46798 (= e!29853 (isStrictlySorted!237 (t!4299 lt!20355)))))

(assert (= (and d!9277 (not res!27283)) b!46797))

(assert (= (and b!46797 res!27284) b!46798))

(declare-fun m!41169 () Bool)

(assert (=> b!46798 m!41169))

(assert (=> d!9185 d!9277))

(assert (=> d!9185 d!9135))

(declare-fun d!9279 () Bool)

(declare-fun res!27285 () Bool)

(declare-fun e!29854 () Bool)

(assert (=> d!9279 (=> res!27285 e!29854)))

(assert (=> d!9279 (= res!27285 (or (is-Nil!1263 lt!20353) (is-Nil!1263 (t!4299 lt!20353))))))

(assert (=> d!9279 (= (isStrictlySorted!237 lt!20353) e!29854)))

(declare-fun b!46799 () Bool)

(declare-fun e!29855 () Bool)

(assert (=> b!46799 (= e!29854 e!29855)))

(declare-fun res!27286 () Bool)

(assert (=> b!46799 (=> (not res!27286) (not e!29855))))

(assert (=> b!46799 (= res!27286 (bvslt (_1!868 (h!1842 lt!20353)) (_1!868 (h!1842 (t!4299 lt!20353)))))))

(declare-fun b!46800 () Bool)

(assert (=> b!46800 (= e!29855 (isStrictlySorted!237 (t!4299 lt!20353)))))

(assert (= (and d!9279 (not res!27285)) b!46799))

(assert (= (and b!46799 res!27286) b!46800))

(declare-fun m!41171 () Bool)

(assert (=> b!46800 m!41171))

(assert (=> d!9181 d!9279))

(declare-fun d!9281 () Bool)

(declare-fun res!27287 () Bool)

(declare-fun e!29856 () Bool)

(assert (=> d!9281 (=> res!27287 e!29856)))

(assert (=> d!9281 (= res!27287 (or (is-Nil!1263 (removeStrictlySorted!43 (t!4299 l!812) key2!27)) (is-Nil!1263 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27)))))))

(assert (=> d!9281 (= (isStrictlySorted!237 (removeStrictlySorted!43 (t!4299 l!812) key2!27)) e!29856)))

(declare-fun b!46801 () Bool)

(declare-fun e!29857 () Bool)

(assert (=> b!46801 (= e!29856 e!29857)))

(declare-fun res!27288 () Bool)

(assert (=> b!46801 (=> (not res!27288) (not e!29857))))

(assert (=> b!46801 (= res!27288 (bvslt (_1!868 (h!1842 (removeStrictlySorted!43 (t!4299 l!812) key2!27))) (_1!868 (h!1842 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27))))))))

(declare-fun b!46802 () Bool)

(assert (=> b!46802 (= e!29857 (isStrictlySorted!237 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key2!27))))))

(assert (= (and d!9281 (not res!27287)) b!46801))

(assert (= (and b!46801 res!27288) b!46802))

(assert (=> b!46802 m!41155))

(assert (=> d!9181 d!9281))

(declare-fun d!9283 () Bool)

(assert (=> d!9283 (= ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 l!812 key2!27)) key1!43) (h!1842 (removeStrictlySorted!43 l!812 key2!27))) (Cons!1262 (h!1842 (removeStrictlySorted!43 l!812 key2!27)) (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 l!812 key2!27)) key1!43)))))

(assert (=> b!46584 d!9283))

(declare-fun b!46803 () Bool)

(declare-fun e!29860 () List!1266)

(assert (=> b!46803 (= e!29860 (t!4299 (t!4299 (removeStrictlySorted!43 l!812 key2!27))))))

(declare-fun b!46804 () Bool)

(declare-fun e!29859 () List!1266)

(assert (=> b!46804 (= e!29859 Nil!1263)))

(declare-fun b!46805 () Bool)

(declare-fun e!29858 () Bool)

(declare-fun lt!20365 () List!1266)

(assert (=> b!46805 (= e!29858 (not (containsKey!91 lt!20365 key1!43)))))

(declare-fun b!46806 () Bool)

(assert (=> b!46806 (= e!29860 e!29859)))

(declare-fun c!6357 () Bool)

(assert (=> b!46806 (= c!6357 (and (is-Cons!1262 (t!4299 (removeStrictlySorted!43 l!812 key2!27))) (not (= (_1!868 (h!1842 (t!4299 (removeStrictlySorted!43 l!812 key2!27)))) key1!43))))))

(declare-fun d!9285 () Bool)

(assert (=> d!9285 e!29858))

(declare-fun res!27289 () Bool)

(assert (=> d!9285 (=> (not res!27289) (not e!29858))))

(assert (=> d!9285 (= res!27289 (isStrictlySorted!237 lt!20365))))

(assert (=> d!9285 (= lt!20365 e!29860)))

(declare-fun c!6358 () Bool)

(assert (=> d!9285 (= c!6358 (and (is-Cons!1262 (t!4299 (removeStrictlySorted!43 l!812 key2!27))) (= (_1!868 (h!1842 (t!4299 (removeStrictlySorted!43 l!812 key2!27)))) key1!43)))))

(assert (=> d!9285 (isStrictlySorted!237 (t!4299 (removeStrictlySorted!43 l!812 key2!27)))))

(assert (=> d!9285 (= (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 l!812 key2!27)) key1!43) lt!20365)))

(declare-fun b!46807 () Bool)

(assert (=> b!46807 (= e!29859 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (t!4299 (removeStrictlySorted!43 l!812 key2!27))) key1!43) (h!1842 (t!4299 (removeStrictlySorted!43 l!812 key2!27)))))))

(assert (= (and d!9285 c!6358) b!46803))

(assert (= (and d!9285 (not c!6358)) b!46806))

(assert (= (and b!46806 c!6357) b!46807))

(assert (= (and b!46806 (not c!6357)) b!46804))

(assert (= (and d!9285 res!27289) b!46805))

(declare-fun m!41173 () Bool)

(assert (=> b!46805 m!41173))

(declare-fun m!41175 () Bool)

(assert (=> d!9285 m!41175))

(assert (=> d!9285 m!41167))

(declare-fun m!41177 () Bool)

(assert (=> b!46807 m!41177))

(assert (=> b!46807 m!41177))

(declare-fun m!41179 () Bool)

(assert (=> b!46807 m!41179))

(assert (=> b!46584 d!9285))

(declare-fun d!9287 () Bool)

(assert (=> d!9287 (= ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43)) key2!27) (h!1842 (removeStrictlySorted!43 (t!4299 l!812) key1!43))) (Cons!1262 (h!1842 (removeStrictlySorted!43 (t!4299 l!812) key1!43)) (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43)) key2!27)))))

(assert (=> b!46639 d!9287))

(declare-fun b!46808 () Bool)

(declare-fun e!29863 () List!1266)

(assert (=> b!46808 (= e!29863 (t!4299 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43))))))

(declare-fun b!46809 () Bool)

(declare-fun e!29862 () List!1266)

(assert (=> b!46809 (= e!29862 Nil!1263)))

(declare-fun b!46810 () Bool)

(declare-fun e!29861 () Bool)

(declare-fun lt!20366 () List!1266)

(assert (=> b!46810 (= e!29861 (not (containsKey!91 lt!20366 key2!27)))))

(declare-fun b!46811 () Bool)

(assert (=> b!46811 (= e!29863 e!29862)))

(declare-fun c!6359 () Bool)

(assert (=> b!46811 (= c!6359 (and (is-Cons!1262 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43))) (not (= (_1!868 (h!1842 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43)))) key2!27))))))

(declare-fun d!9289 () Bool)

(assert (=> d!9289 e!29861))

(declare-fun res!27290 () Bool)

(assert (=> d!9289 (=> (not res!27290) (not e!29861))))

(assert (=> d!9289 (= res!27290 (isStrictlySorted!237 lt!20366))))

(assert (=> d!9289 (= lt!20366 e!29863)))

(declare-fun c!6360 () Bool)

(assert (=> d!9289 (= c!6360 (and (is-Cons!1262 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43))) (= (_1!868 (h!1842 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43)))) key2!27)))))

(assert (=> d!9289 (isStrictlySorted!237 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43)))))

(assert (=> d!9289 (= (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43)) key2!27) lt!20366)))

(declare-fun b!46812 () Bool)

(assert (=> b!46812 (= e!29862 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43))) key2!27) (h!1842 (t!4299 (removeStrictlySorted!43 (t!4299 l!812) key1!43)))))))

(assert (= (and d!9289 c!6360) b!46808))

(assert (= (and d!9289 (not c!6360)) b!46811))

(assert (= (and b!46811 c!6359) b!46812))

(assert (= (and b!46811 (not c!6359)) b!46809))

(assert (= (and d!9289 res!27290) b!46810))

(declare-fun m!41181 () Bool)

(assert (=> b!46810 m!41181))

(declare-fun m!41183 () Bool)

(assert (=> d!9289 m!41183))

(declare-fun m!41185 () Bool)

(assert (=> d!9289 m!41185))

(declare-fun m!41187 () Bool)

(assert (=> b!46812 m!41187))

(assert (=> b!46812 m!41187))

(declare-fun m!41189 () Bool)

(assert (=> b!46812 m!41189))

(assert (=> b!46639 d!9289))

(declare-fun d!9291 () Bool)

(declare-fun res!27291 () Bool)

(declare-fun e!29864 () Bool)

(assert (=> d!9291 (=> res!27291 e!29864)))

(assert (=> d!9291 (= res!27291 (and (is-Cons!1262 lt!20353) (= (_1!868 (h!1842 lt!20353)) key1!43)))))

(assert (=> d!9291 (= (containsKey!91 lt!20353 key1!43) e!29864)))

(declare-fun b!46813 () Bool)

(declare-fun e!29865 () Bool)

(assert (=> b!46813 (= e!29864 e!29865)))

(declare-fun res!27292 () Bool)

(assert (=> b!46813 (=> (not res!27292) (not e!29865))))

(assert (=> b!46813 (= res!27292 (and (or (not (is-Cons!1262 lt!20353)) (bvsle (_1!868 (h!1842 lt!20353)) key1!43)) (is-Cons!1262 lt!20353) (bvslt (_1!868 (h!1842 lt!20353)) key1!43)))))

(declare-fun b!46814 () Bool)

(assert (=> b!46814 (= e!29865 (containsKey!91 (t!4299 lt!20353) key1!43))))

(assert (= (and d!9291 (not res!27291)) b!46813))

(assert (= (and b!46813 res!27292) b!46814))

(declare-fun m!41191 () Bool)

(assert (=> b!46814 m!41191))

(assert (=> b!46657 d!9291))

(declare-fun d!9293 () Bool)

(declare-fun res!27293 () Bool)

(declare-fun e!29866 () Bool)

(assert (=> d!9293 (=> res!27293 e!29866)))

(assert (=> d!9293 (= res!27293 (or (is-Nil!1263 lt!20335) (is-Nil!1263 (t!4299 lt!20335))))))

(assert (=> d!9293 (= (isStrictlySorted!237 lt!20335) e!29866)))

(declare-fun b!46815 () Bool)

(declare-fun e!29867 () Bool)

(assert (=> b!46815 (= e!29866 e!29867)))

(declare-fun res!27294 () Bool)

(assert (=> b!46815 (=> (not res!27294) (not e!29867))))

(assert (=> b!46815 (= res!27294 (bvslt (_1!868 (h!1842 lt!20335)) (_1!868 (h!1842 (t!4299 lt!20335)))))))

(declare-fun b!46816 () Bool)

(assert (=> b!46816 (= e!29867 (isStrictlySorted!237 (t!4299 lt!20335)))))

(assert (= (and d!9293 (not res!27293)) b!46815))

(assert (= (and b!46815 res!27294) b!46816))

(declare-fun m!41193 () Bool)

(assert (=> b!46816 m!41193))

(assert (=> d!9153 d!9293))

(assert (=> d!9153 d!9128))

(declare-fun d!9295 () Bool)

(declare-fun res!27295 () Bool)

(declare-fun e!29868 () Bool)

(assert (=> d!9295 (=> res!27295 e!29868)))

(assert (=> d!9295 (= res!27295 (and (is-Cons!1262 lt!20357) (= (_1!868 (h!1842 lt!20357)) key2!27)))))

(assert (=> d!9295 (= (containsKey!91 lt!20357 key2!27) e!29868)))

(declare-fun b!46817 () Bool)

(declare-fun e!29869 () Bool)

(assert (=> b!46817 (= e!29868 e!29869)))

(declare-fun res!27296 () Bool)

(assert (=> b!46817 (=> (not res!27296) (not e!29869))))

(assert (=> b!46817 (= res!27296 (and (or (not (is-Cons!1262 lt!20357)) (bvsle (_1!868 (h!1842 lt!20357)) key2!27)) (is-Cons!1262 lt!20357) (bvslt (_1!868 (h!1842 lt!20357)) key2!27)))))

(declare-fun b!46818 () Bool)

(assert (=> b!46818 (= e!29869 (containsKey!91 (t!4299 lt!20357) key2!27))))

(assert (= (and d!9295 (not res!27295)) b!46817))

(assert (= (and b!46817 res!27296) b!46818))

(declare-fun m!41195 () Bool)

(assert (=> b!46818 m!41195))

(assert (=> b!46685 d!9295))

(declare-fun d!9297 () Bool)

(assert (=> d!9297 (= ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 l!812 key1!43)) key2!27) (h!1842 (removeStrictlySorted!43 l!812 key1!43))) (Cons!1262 (h!1842 (removeStrictlySorted!43 l!812 key1!43)) (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 l!812 key1!43)) key2!27)))))

(assert (=> b!46687 d!9297))

(declare-fun b!46819 () Bool)

(declare-fun e!29872 () List!1266)

(assert (=> b!46819 (= e!29872 (t!4299 (t!4299 (removeStrictlySorted!43 l!812 key1!43))))))

(declare-fun b!46820 () Bool)

(declare-fun e!29871 () List!1266)

(assert (=> b!46820 (= e!29871 Nil!1263)))

(declare-fun b!46821 () Bool)

(declare-fun e!29870 () Bool)

(declare-fun lt!20367 () List!1266)

(assert (=> b!46821 (= e!29870 (not (containsKey!91 lt!20367 key2!27)))))

(declare-fun b!46822 () Bool)

(assert (=> b!46822 (= e!29872 e!29871)))

(declare-fun c!6361 () Bool)

(assert (=> b!46822 (= c!6361 (and (is-Cons!1262 (t!4299 (removeStrictlySorted!43 l!812 key1!43))) (not (= (_1!868 (h!1842 (t!4299 (removeStrictlySorted!43 l!812 key1!43)))) key2!27))))))

(declare-fun d!9299 () Bool)

(assert (=> d!9299 e!29870))

(declare-fun res!27297 () Bool)

(assert (=> d!9299 (=> (not res!27297) (not e!29870))))

(assert (=> d!9299 (= res!27297 (isStrictlySorted!237 lt!20367))))

(assert (=> d!9299 (= lt!20367 e!29872)))

(declare-fun c!6362 () Bool)

(assert (=> d!9299 (= c!6362 (and (is-Cons!1262 (t!4299 (removeStrictlySorted!43 l!812 key1!43))) (= (_1!868 (h!1842 (t!4299 (removeStrictlySorted!43 l!812 key1!43)))) key2!27)))))

(assert (=> d!9299 (isStrictlySorted!237 (t!4299 (removeStrictlySorted!43 l!812 key1!43)))))

(assert (=> d!9299 (= (removeStrictlySorted!43 (t!4299 (removeStrictlySorted!43 l!812 key1!43)) key2!27) lt!20367)))

(declare-fun b!46823 () Bool)

(assert (=> b!46823 (= e!29871 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (t!4299 (removeStrictlySorted!43 l!812 key1!43))) key2!27) (h!1842 (t!4299 (removeStrictlySorted!43 l!812 key1!43)))))))

(assert (= (and d!9299 c!6362) b!46819))

(assert (= (and d!9299 (not c!6362)) b!46822))

(assert (= (and b!46822 c!6361) b!46823))

(assert (= (and b!46822 (not c!6361)) b!46820))

(assert (= (and d!9299 res!27297) b!46821))

(declare-fun m!41197 () Bool)

(assert (=> b!46821 m!41197))

(declare-fun m!41199 () Bool)

(assert (=> d!9299 m!41199))

(declare-fun m!41201 () Bool)

(assert (=> d!9299 m!41201))

(declare-fun m!41203 () Bool)

(assert (=> b!46823 m!41203))

(assert (=> b!46823 m!41203))

(declare-fun m!41205 () Bool)

(assert (=> b!46823 m!41205))

(assert (=> b!46687 d!9299))

(declare-fun d!9301 () Bool)

(declare-fun res!27298 () Bool)

(declare-fun e!29873 () Bool)

(assert (=> d!9301 (=> res!27298 e!29873)))

(assert (=> d!9301 (= res!27298 (and (is-Cons!1262 lt!20351) (= (_1!868 (h!1842 lt!20351)) key1!43)))))

(assert (=> d!9301 (= (containsKey!91 lt!20351 key1!43) e!29873)))

(declare-fun b!46824 () Bool)

(declare-fun e!29874 () Bool)

(assert (=> b!46824 (= e!29873 e!29874)))

(declare-fun res!27299 () Bool)

(assert (=> b!46824 (=> (not res!27299) (not e!29874))))

(assert (=> b!46824 (= res!27299 (and (or (not (is-Cons!1262 lt!20351)) (bvsle (_1!868 (h!1842 lt!20351)) key1!43)) (is-Cons!1262 lt!20351) (bvslt (_1!868 (h!1842 lt!20351)) key1!43)))))

(declare-fun b!46825 () Bool)

(assert (=> b!46825 (= e!29874 (containsKey!91 (t!4299 lt!20351) key1!43))))

(assert (= (and d!9301 (not res!27298)) b!46824))

(assert (= (and b!46824 res!27299) b!46825))

(declare-fun m!41207 () Bool)

(assert (=> b!46825 m!41207))

(assert (=> b!46647 d!9301))

(declare-fun d!9303 () Bool)

(assert (=> d!9303 (= ($colon$colon!45 (removeStrictlySorted!43 (t!4299 l!812) key2!27) (h!1842 l!812)) (Cons!1262 (h!1842 l!812) (removeStrictlySorted!43 (t!4299 l!812) key2!27)))))

(assert (=> b!46604 d!9303))

(assert (=> b!46604 d!9185))

(declare-fun d!9305 () Bool)

(declare-fun res!27300 () Bool)

(declare-fun e!29875 () Bool)

(assert (=> d!9305 (=> res!27300 e!29875)))

(assert (=> d!9305 (= res!27300 (and (is-Cons!1262 lt!20355) (= (_1!868 (h!1842 lt!20355)) key2!27)))))

(assert (=> d!9305 (= (containsKey!91 lt!20355 key2!27) e!29875)))

(declare-fun b!46826 () Bool)

(declare-fun e!29876 () Bool)

(assert (=> b!46826 (= e!29875 e!29876)))

(declare-fun res!27301 () Bool)

(assert (=> b!46826 (=> (not res!27301) (not e!29876))))

(assert (=> b!46826 (= res!27301 (and (or (not (is-Cons!1262 lt!20355)) (bvsle (_1!868 (h!1842 lt!20355)) key2!27)) (is-Cons!1262 lt!20355) (bvslt (_1!868 (h!1842 lt!20355)) key2!27)))))

(declare-fun b!46827 () Bool)

(assert (=> b!46827 (= e!29876 (containsKey!91 (t!4299 lt!20355) key2!27))))

(assert (= (and d!9305 (not res!27300)) b!46826))

(assert (= (and b!46826 res!27301) b!46827))

(declare-fun m!41209 () Bool)

(assert (=> b!46827 m!41209))

(assert (=> b!46671 d!9305))

(declare-fun d!9307 () Bool)

(assert (=> d!9307 (= ($colon$colon!45 (removeStrictlySorted!43 (t!4299 l!812) key1!43) (h!1842 l!812)) (Cons!1262 (h!1842 l!812) (removeStrictlySorted!43 (t!4299 l!812) key1!43)))))

(assert (=> b!46594 d!9307))

(assert (=> b!46594 d!9177))

(declare-fun d!9309 () Bool)

(assert (=> d!9309 (= ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (t!4299 l!812)) key1!43) (h!1842 (t!4299 l!812))) (Cons!1262 (h!1842 (t!4299 l!812)) (removeStrictlySorted!43 (t!4299 (t!4299 l!812)) key1!43)))))

(assert (=> b!46649 d!9309))

(declare-fun b!46828 () Bool)

(declare-fun e!29879 () List!1266)

(assert (=> b!46828 (= e!29879 (t!4299 (t!4299 (t!4299 l!812))))))

(declare-fun b!46829 () Bool)

(declare-fun e!29878 () List!1266)

(assert (=> b!46829 (= e!29878 Nil!1263)))

(declare-fun b!46830 () Bool)

(declare-fun e!29877 () Bool)

(declare-fun lt!20368 () List!1266)

(assert (=> b!46830 (= e!29877 (not (containsKey!91 lt!20368 key1!43)))))

(declare-fun b!46831 () Bool)

(assert (=> b!46831 (= e!29879 e!29878)))

(declare-fun c!6363 () Bool)

(assert (=> b!46831 (= c!6363 (and (is-Cons!1262 (t!4299 (t!4299 l!812))) (not (= (_1!868 (h!1842 (t!4299 (t!4299 l!812)))) key1!43))))))

(declare-fun d!9311 () Bool)

(assert (=> d!9311 e!29877))

(declare-fun res!27302 () Bool)

(assert (=> d!9311 (=> (not res!27302) (not e!29877))))

(assert (=> d!9311 (= res!27302 (isStrictlySorted!237 lt!20368))))

(assert (=> d!9311 (= lt!20368 e!29879)))

(declare-fun c!6364 () Bool)

(assert (=> d!9311 (= c!6364 (and (is-Cons!1262 (t!4299 (t!4299 l!812))) (= (_1!868 (h!1842 (t!4299 (t!4299 l!812)))) key1!43)))))

(assert (=> d!9311 (isStrictlySorted!237 (t!4299 (t!4299 l!812)))))

(assert (=> d!9311 (= (removeStrictlySorted!43 (t!4299 (t!4299 l!812)) key1!43) lt!20368)))

(declare-fun b!46832 () Bool)

(assert (=> b!46832 (= e!29878 ($colon$colon!45 (removeStrictlySorted!43 (t!4299 (t!4299 (t!4299 l!812))) key1!43) (h!1842 (t!4299 (t!4299 l!812)))))))

(assert (= (and d!9311 c!6364) b!46828))

(assert (= (and d!9311 (not c!6364)) b!46831))

(assert (= (and b!46831 c!6363) b!46832))

(assert (= (and b!46831 (not c!6363)) b!46829))

(assert (= (and d!9311 res!27302) b!46830))

(declare-fun m!41211 () Bool)

(assert (=> b!46830 m!41211))

(declare-fun m!41213 () Bool)

(assert (=> d!9311 m!41213))

(assert (=> d!9311 m!40847))

(declare-fun m!41215 () Bool)

(assert (=> b!46832 m!41215))

(assert (=> b!46832 m!41215))

(declare-fun m!41217 () Bool)

(assert (=> b!46832 m!41217))

(assert (=> b!46649 d!9311))

(declare-fun d!9313 () Bool)

(declare-fun res!27303 () Bool)

(declare-fun e!29880 () Bool)

(assert (=> d!9313 (=> res!27303 e!29880)))

(assert (=> d!9313 (= res!27303 (and (is-Cons!1262 lt!20335) (= (_1!868 (h!1842 lt!20335)) key2!27)))))

(assert (=> d!9313 (= (containsKey!91 lt!20335 key2!27) e!29880)))

(declare-fun b!46833 () Bool)

(declare-fun e!29881 () Bool)

(assert (=> b!46833 (= e!29880 e!29881)))

(declare-fun res!27304 () Bool)

(assert (=> b!46833 (=> (not res!27304) (not e!29881))))

(assert (=> b!46833 (= res!27304 (and (or (not (is-Cons!1262 lt!20335)) (bvsle (_1!868 (h!1842 lt!20335)) key2!27)) (is-Cons!1262 lt!20335) (bvslt (_1!868 (h!1842 lt!20335)) key2!27)))))

(declare-fun b!46834 () Bool)

(assert (=> b!46834 (= e!29881 (containsKey!91 (t!4299 lt!20335) key2!27))))

(assert (= (and d!9313 (not res!27303)) b!46833))

(assert (= (and b!46833 res!27304) b!46834))

(declare-fun m!41219 () Bool)

(assert (=> b!46834 m!41219))

(assert (=> b!46602 d!9313))

(assert (=> d!9157 d!9135))

(declare-fun d!9315 () Bool)

(assert (=> d!9315 (= (removeStrictlySorted!43 (removeStrictlySorted!43 (t!4299 l!812) key1!43) key2!27) (removeStrictlySorted!43 (removeStrictlySorted!43 (t!4299 l!812) key2!27) key1!43))))

(assert (=> d!9315 true))

(declare-fun _$6!53 () Unit!1321)

(assert (=> d!9315 (= (choose!286 (t!4299 l!812) key1!43 key2!27) _$6!53)))

(declare-fun bs!2187 () Bool)

(assert (= bs!2187 d!9315))

(assert (=> bs!2187 m!40785))

(assert (=> bs!2187 m!40785))

(assert (=> bs!2187 m!40787))

(assert (=> bs!2187 m!40779))

(assert (=> bs!2187 m!40779))

(assert (=> bs!2187 m!40791))

(assert (=> d!9157 d!9315))

(assert (=> d!9157 d!9185))

(assert (=> d!9157 d!9171))

(assert (=> d!9157 d!9177))

(assert (=> d!9157 d!9181))

(declare-fun d!9317 () Bool)

(declare-fun res!27305 () Bool)

(declare-fun e!29882 () Bool)

(assert (=> d!9317 (=> res!27305 e!29882)))

(assert (=> d!9317 (= res!27305 (and (is-Cons!1262 lt!20331) (= (_1!868 (h!1842 lt!20331)) key1!43)))))

(assert (=> d!9317 (= (containsKey!91 lt!20331 key1!43) e!29882)))

(declare-fun b!46835 () Bool)

(declare-fun e!29883 () Bool)

(assert (=> b!46835 (= e!29882 e!29883)))

(declare-fun res!27306 () Bool)

(assert (=> b!46835 (=> (not res!27306) (not e!29883))))

(assert (=> b!46835 (= res!27306 (and (or (not (is-Cons!1262 lt!20331)) (bvsle (_1!868 (h!1842 lt!20331)) key1!43)) (is-Cons!1262 lt!20331) (bvslt (_1!868 (h!1842 lt!20331)) key1!43)))))

(declare-fun b!46836 () Bool)

(assert (=> b!46836 (= e!29883 (containsKey!91 (t!4299 lt!20331) key1!43))))

(assert (= (and d!9317 (not res!27305)) b!46835))

(assert (= (and b!46835 res!27306) b!46836))

(declare-fun m!41221 () Bool)

(assert (=> b!46836 m!41221))

(assert (=> b!46592 d!9317))

(declare-fun d!9319 () Bool)

(declare-fun res!27307 () Bool)

(declare-fun e!29884 () Bool)

(assert (=> d!9319 (=> res!27307 e!29884)))

(assert (=> d!9319 (= res!27307 (and (is-Cons!1262 lt!20349) (= (_1!868 (h!1842 lt!20349)) key2!27)))))

(assert (=> d!9319 (= (containsKey!91 lt!20349 key2!27) e!29884)))

(declare-fun b!46837 () Bool)

(declare-fun e!29885 () Bool)

(assert (=> b!46837 (= e!29884 e!29885)))

(declare-fun res!27308 () Bool)

(assert (=> b!46837 (=> (not res!27308) (not e!29885))))

(assert (=> b!46837 (= res!27308 (and (or (not (is-Cons!1262 lt!20349)) (bvsle (_1!868 (h!1842 lt!20349)) key2!27)) (is-Cons!1262 lt!20349) (bvslt (_1!868 (h!1842 lt!20349)) key2!27)))))

(declare-fun b!46838 () Bool)

(assert (=> b!46838 (= e!29885 (containsKey!91 (t!4299 lt!20349) key2!27))))

(assert (= (and d!9319 (not res!27307)) b!46837))

(assert (= (and b!46837 res!27308) b!46838))

(declare-fun m!41223 () Bool)

(assert (=> b!46838 m!41223))

(assert (=> b!46637 d!9319))

(declare-fun d!9321 () Bool)

(declare-fun res!27309 () Bool)

(declare-fun e!29886 () Bool)

(assert (=> d!9321 (=> res!27309 e!29886)))

(assert (=> d!9321 (= res!27309 (or (is-Nil!1263 lt!20357) (is-Nil!1263 (t!4299 lt!20357))))))

(assert (=> d!9321 (= (isStrictlySorted!237 lt!20357) e!29886)))

(declare-fun b!46839 () Bool)

(declare-fun e!29887 () Bool)

(assert (=> b!46839 (= e!29886 e!29887)))

(declare-fun res!27310 () Bool)

(assert (=> b!46839 (=> (not res!27310) (not e!29887))))

(assert (=> b!46839 (= res!27310 (bvslt (_1!868 (h!1842 lt!20357)) (_1!868 (h!1842 (t!4299 lt!20357)))))))

(declare-fun b!46840 () Bool)

(assert (=> b!46840 (= e!29887 (isStrictlySorted!237 (t!4299 lt!20357)))))

(assert (= (and d!9321 (not res!27309)) b!46839))

(assert (= (and b!46839 res!27310) b!46840))

(declare-fun m!41225 () Bool)

(assert (=> b!46840 m!41225))

(assert (=> d!9191 d!9321))

(declare-fun d!9323 () Bool)

(declare-fun res!27311 () Bool)

(declare-fun e!29888 () Bool)

(assert (=> d!9323 (=> res!27311 e!29888)))

(assert (=> d!9323 (= res!27311 (or (is-Nil!1263 (removeStrictlySorted!43 l!812 key1!43)) (is-Nil!1263 (t!4299 (removeStrictlySorted!43 l!812 key1!43)))))))

(assert (=> d!9323 (= (isStrictlySorted!237 (removeStrictlySorted!43 l!812 key1!43)) e!29888)))

(declare-fun b!46841 () Bool)

(declare-fun e!29889 () Bool)

(assert (=> b!46841 (= e!29888 e!29889)))

(declare-fun res!27312 () Bool)

(assert (=> b!46841 (=> (not res!27312) (not e!29889))))

(assert (=> b!46841 (= res!27312 (bvslt (_1!868 (h!1842 (removeStrictlySorted!43 l!812 key1!43))) (_1!868 (h!1842 (t!4299 (removeStrictlySorted!43 l!812 key1!43))))))))

(declare-fun b!46842 () Bool)

(assert (=> b!46842 (= e!29889 (isStrictlySorted!237 (t!4299 (removeStrictlySorted!43 l!812 key1!43))))))

(assert (= (and d!9323 (not res!27311)) b!46841))

(assert (= (and b!46841 res!27312) b!46842))

(assert (=> b!46842 m!41201))

(assert (=> d!9191 d!9323))

(declare-fun d!9325 () Bool)

(declare-fun res!27313 () Bool)

(declare-fun e!29890 () Bool)

(assert (=> d!9325 (=> res!27313 e!29890)))

(assert (=> d!9325 (= res!27313 (or (is-Nil!1263 lt!20331) (is-Nil!1263 (t!4299 lt!20331))))))

(assert (=> d!9325 (= (isStrictlySorted!237 lt!20331) e!29890)))

(declare-fun b!46843 () Bool)

(declare-fun e!29891 () Bool)

(assert (=> b!46843 (= e!29890 e!29891)))

(declare-fun res!27314 () Bool)

(assert (=> b!46843 (=> (not res!27314) (not e!29891))))

(assert (=> b!46843 (= res!27314 (bvslt (_1!868 (h!1842 lt!20331)) (_1!868 (h!1842 (t!4299 lt!20331)))))))

