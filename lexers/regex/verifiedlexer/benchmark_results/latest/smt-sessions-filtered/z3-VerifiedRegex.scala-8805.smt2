; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471236 () Bool)

(assert start!471236)

(declare-fun b!4671296 () Bool)

(declare-fun e!2915113 () Bool)

(declare-fun e!2915114 () Bool)

(assert (=> b!4671296 (= e!2915113 (not e!2915114))))

(declare-fun res!1966576 () Bool)

(assert (=> b!4671296 (=> res!1966576 e!2915114)))

(declare-datatypes ((K!13430 0))(
  ( (K!13431 (val!19015 Int)) )
))
(declare-datatypes ((V!13676 0))(
  ( (V!13677 (val!19016 Int)) )
))
(declare-datatypes ((tuple2!53248 0))(
  ( (tuple2!53249 (_1!29918 K!13430) (_2!29918 V!13676)) )
))
(declare-datatypes ((List!52183 0))(
  ( (Nil!52059) (Cons!52059 (h!58239 tuple2!53248) (t!359321 List!52183)) )
))
(declare-fun l!12991 () List!52183)

(declare-fun key!4532 () K!13430)

(declare-fun containsKey!2856 (List!52183 K!13430) Bool)

(assert (=> b!4671296 (= res!1966576 (containsKey!2856 (t!359321 l!12991) key!4532))))

(declare-datatypes ((ListMap!4685 0))(
  ( (ListMap!4686 (toList!5320 List!52183)) )
))
(declare-fun lt!1833107 () ListMap!4685)

(declare-fun lt!1833106 () ListMap!4685)

(declare-fun +!2040 (ListMap!4685 tuple2!53248) ListMap!4685)

(assert (=> b!4671296 (= lt!1833107 (+!2040 lt!1833106 (h!58239 l!12991)))))

(declare-fun lt!1833105 () ListMap!4685)

(declare-fun -!640 (ListMap!4685 K!13430) ListMap!4685)

(assert (=> b!4671296 (= lt!1833107 (-!640 lt!1833105 key!4532))))

(declare-fun lhm!57 () ListMap!4685)

(assert (=> b!4671296 (= lt!1833106 (-!640 lhm!57 key!4532))))

(declare-datatypes ((Unit!121150 0))(
  ( (Unit!121151) )
))
(declare-fun lt!1833103 () Unit!121150)

(declare-fun addRemoveCommutativeForDiffKeys!77 (ListMap!4685 K!13430 V!13676 K!13430) Unit!121150)

(assert (=> b!4671296 (= lt!1833103 (addRemoveCommutativeForDiffKeys!77 lhm!57 (_1!29918 (h!58239 l!12991)) (_2!29918 (h!58239 l!12991)) key!4532))))

(assert (=> b!4671296 (= lt!1833105 (+!2040 lhm!57 (h!58239 l!12991)))))

(declare-fun b!4671297 () Bool)

(declare-fun e!2915116 () Bool)

(declare-fun tp!1343948 () Bool)

(assert (=> b!4671297 (= e!2915116 tp!1343948)))

(declare-fun tp_is_empty!30143 () Bool)

(declare-fun b!4671298 () Bool)

(declare-fun tp_is_empty!30141 () Bool)

(declare-fun tp!1343949 () Bool)

(declare-fun e!2915115 () Bool)

(assert (=> b!4671298 (= e!2915115 (and tp_is_empty!30141 tp_is_empty!30143 tp!1343949))))

(declare-fun res!1966580 () Bool)

(assert (=> start!471236 (=> (not res!1966580) (not e!2915113))))

(assert (=> start!471236 (= res!1966580 (not (containsKey!2856 l!12991 key!4532)))))

(assert (=> start!471236 e!2915113))

(assert (=> start!471236 e!2915115))

(assert (=> start!471236 tp_is_empty!30141))

(declare-fun inv!67304 (ListMap!4685) Bool)

(assert (=> start!471236 (and (inv!67304 lhm!57) e!2915116)))

(declare-fun b!4671299 () Bool)

(declare-fun res!1966578 () Bool)

(assert (=> b!4671299 (=> (not res!1966578) (not e!2915113))))

(declare-fun noDuplicateKeys!1712 (List!52183) Bool)

(assert (=> b!4671299 (= res!1966578 (noDuplicateKeys!1712 l!12991))))

(declare-fun b!4671300 () Bool)

(declare-fun res!1966577 () Bool)

(assert (=> b!4671300 (=> res!1966577 e!2915114)))

(assert (=> b!4671300 (= res!1966577 (not (noDuplicateKeys!1712 (t!359321 l!12991))))))

(declare-fun b!4671301 () Bool)

(declare-fun addToMapMapFromBucket!1151 (List!52183 ListMap!4685) ListMap!4685)

(assert (=> b!4671301 (= e!2915114 (= (addToMapMapFromBucket!1151 l!12991 lt!1833106) (-!640 (addToMapMapFromBucket!1151 l!12991 lhm!57) key!4532)))))

(assert (=> b!4671301 (= (addToMapMapFromBucket!1151 (t!359321 l!12991) lt!1833107) (-!640 (addToMapMapFromBucket!1151 (t!359321 l!12991) lt!1833105) key!4532))))

(declare-fun lt!1833104 () Unit!121150)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!50 (ListMap!4685 K!13430 List!52183) Unit!121150)

(assert (=> b!4671301 (= lt!1833104 (lemmaAddToMapFromBucketMinusKeyIsCommutative!50 lt!1833105 key!4532 (t!359321 l!12991)))))

(declare-fun b!4671302 () Bool)

(declare-fun res!1966579 () Bool)

(assert (=> b!4671302 (=> (not res!1966579) (not e!2915113))))

(get-info :version)

(assert (=> b!4671302 (= res!1966579 ((_ is Cons!52059) l!12991))))

(assert (= (and start!471236 res!1966580) b!4671299))

(assert (= (and b!4671299 res!1966578) b!4671302))

(assert (= (and b!4671302 res!1966579) b!4671296))

(assert (= (and b!4671296 (not res!1966576)) b!4671300))

(assert (= (and b!4671300 (not res!1966577)) b!4671301))

(assert (= (and start!471236 ((_ is Cons!52059) l!12991)) b!4671298))

(assert (= start!471236 b!4671297))

(declare-fun m!5564765 () Bool)

(assert (=> b!4671296 m!5564765))

(declare-fun m!5564767 () Bool)

(assert (=> b!4671296 m!5564767))

(declare-fun m!5564769 () Bool)

(assert (=> b!4671296 m!5564769))

(declare-fun m!5564771 () Bool)

(assert (=> b!4671296 m!5564771))

(declare-fun m!5564773 () Bool)

(assert (=> b!4671296 m!5564773))

(declare-fun m!5564775 () Bool)

(assert (=> b!4671296 m!5564775))

(declare-fun m!5564777 () Bool)

(assert (=> b!4671299 m!5564777))

(declare-fun m!5564779 () Bool)

(assert (=> start!471236 m!5564779))

(declare-fun m!5564781 () Bool)

(assert (=> start!471236 m!5564781))

(declare-fun m!5564783 () Bool)

(assert (=> b!4671301 m!5564783))

(declare-fun m!5564785 () Bool)

(assert (=> b!4671301 m!5564785))

(declare-fun m!5564787 () Bool)

(assert (=> b!4671301 m!5564787))

(declare-fun m!5564789 () Bool)

(assert (=> b!4671301 m!5564789))

(declare-fun m!5564791 () Bool)

(assert (=> b!4671301 m!5564791))

(assert (=> b!4671301 m!5564789))

(declare-fun m!5564793 () Bool)

(assert (=> b!4671301 m!5564793))

(assert (=> b!4671301 m!5564787))

(declare-fun m!5564795 () Bool)

(assert (=> b!4671301 m!5564795))

(declare-fun m!5564797 () Bool)

(assert (=> b!4671300 m!5564797))

(check-sat tp_is_empty!30143 (not b!4671296) tp_is_empty!30141 (not b!4671299) (not start!471236) (not b!4671298) (not b!4671300) (not b!4671301) (not b!4671297))
(check-sat)
(get-model)

(declare-fun d!1485446 () Bool)

(declare-fun res!1966595 () Bool)

(declare-fun e!2915131 () Bool)

(assert (=> d!1485446 (=> res!1966595 e!2915131)))

(assert (=> d!1485446 (= res!1966595 (not ((_ is Cons!52059) l!12991)))))

(assert (=> d!1485446 (= (noDuplicateKeys!1712 l!12991) e!2915131)))

(declare-fun b!4671317 () Bool)

(declare-fun e!2915132 () Bool)

(assert (=> b!4671317 (= e!2915131 e!2915132)))

(declare-fun res!1966596 () Bool)

(assert (=> b!4671317 (=> (not res!1966596) (not e!2915132))))

(assert (=> b!4671317 (= res!1966596 (not (containsKey!2856 (t!359321 l!12991) (_1!29918 (h!58239 l!12991)))))))

(declare-fun b!4671318 () Bool)

(assert (=> b!4671318 (= e!2915132 (noDuplicateKeys!1712 (t!359321 l!12991)))))

(assert (= (and d!1485446 (not res!1966595)) b!4671317))

(assert (= (and b!4671317 res!1966596) b!4671318))

(declare-fun m!5564801 () Bool)

(assert (=> b!4671317 m!5564801))

(assert (=> b!4671318 m!5564797))

(assert (=> b!4671299 d!1485446))

(declare-fun d!1485452 () Bool)

(declare-fun res!1966597 () Bool)

(declare-fun e!2915133 () Bool)

(assert (=> d!1485452 (=> res!1966597 e!2915133)))

(assert (=> d!1485452 (= res!1966597 (not ((_ is Cons!52059) (t!359321 l!12991))))))

(assert (=> d!1485452 (= (noDuplicateKeys!1712 (t!359321 l!12991)) e!2915133)))

(declare-fun b!4671319 () Bool)

(declare-fun e!2915134 () Bool)

(assert (=> b!4671319 (= e!2915133 e!2915134)))

(declare-fun res!1966598 () Bool)

(assert (=> b!4671319 (=> (not res!1966598) (not e!2915134))))

(assert (=> b!4671319 (= res!1966598 (not (containsKey!2856 (t!359321 (t!359321 l!12991)) (_1!29918 (h!58239 (t!359321 l!12991))))))))

(declare-fun b!4671320 () Bool)

(assert (=> b!4671320 (= e!2915134 (noDuplicateKeys!1712 (t!359321 (t!359321 l!12991))))))

(assert (= (and d!1485452 (not res!1966597)) b!4671319))

(assert (= (and b!4671319 res!1966598) b!4671320))

(declare-fun m!5564803 () Bool)

(assert (=> b!4671319 m!5564803))

(declare-fun m!5564805 () Bool)

(assert (=> b!4671320 m!5564805))

(assert (=> b!4671300 d!1485452))

(declare-fun d!1485454 () Bool)

(declare-fun res!1966605 () Bool)

(declare-fun e!2915141 () Bool)

(assert (=> d!1485454 (=> res!1966605 e!2915141)))

(assert (=> d!1485454 (= res!1966605 (and ((_ is Cons!52059) l!12991) (= (_1!29918 (h!58239 l!12991)) key!4532)))))

(assert (=> d!1485454 (= (containsKey!2856 l!12991 key!4532) e!2915141)))

(declare-fun b!4671327 () Bool)

(declare-fun e!2915142 () Bool)

(assert (=> b!4671327 (= e!2915141 e!2915142)))

(declare-fun res!1966606 () Bool)

(assert (=> b!4671327 (=> (not res!1966606) (not e!2915142))))

(assert (=> b!4671327 (= res!1966606 ((_ is Cons!52059) l!12991))))

(declare-fun b!4671328 () Bool)

(assert (=> b!4671328 (= e!2915142 (containsKey!2856 (t!359321 l!12991) key!4532))))

(assert (= (and d!1485454 (not res!1966605)) b!4671327))

(assert (= (and b!4671327 res!1966606) b!4671328))

(assert (=> b!4671328 m!5564769))

(assert (=> start!471236 d!1485454))

(declare-fun d!1485458 () Bool)

(declare-fun invariantList!1342 (List!52183) Bool)

(assert (=> d!1485458 (= (inv!67304 lhm!57) (invariantList!1342 (toList!5320 lhm!57)))))

(declare-fun bs!1078854 () Bool)

(assert (= bs!1078854 d!1485458))

(declare-fun m!5564811 () Bool)

(assert (=> bs!1078854 m!5564811))

(assert (=> start!471236 d!1485458))

(declare-fun d!1485460 () Bool)

(declare-fun e!2915149 () Bool)

(assert (=> d!1485460 e!2915149))

(declare-fun res!1966613 () Bool)

(assert (=> d!1485460 (=> (not res!1966613) (not e!2915149))))

(declare-fun lt!1833114 () ListMap!4685)

(declare-fun contains!15256 (ListMap!4685 K!13430) Bool)

(assert (=> d!1485460 (= res!1966613 (not (contains!15256 lt!1833114 key!4532)))))

(declare-fun removePresrvNoDuplicatedKeys!317 (List!52183 K!13430) List!52183)

(assert (=> d!1485460 (= lt!1833114 (ListMap!4686 (removePresrvNoDuplicatedKeys!317 (toList!5320 lhm!57) key!4532)))))

(assert (=> d!1485460 (= (-!640 lhm!57 key!4532) lt!1833114)))

(declare-fun b!4671335 () Bool)

(declare-datatypes ((List!52185 0))(
  ( (Nil!52061) (Cons!52061 (h!58241 K!13430) (t!359323 List!52185)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9077 (List!52185) (InoxSet K!13430))

(declare-fun keys!18502 (ListMap!4685) List!52185)

(assert (=> b!4671335 (= e!2915149 (= ((_ map and) (content!9077 (keys!18502 lhm!57)) ((_ map not) (store ((as const (Array K!13430 Bool)) false) key!4532 true))) (content!9077 (keys!18502 lt!1833114))))))

(assert (= (and d!1485460 res!1966613) b!4671335))

(declare-fun m!5564839 () Bool)

(assert (=> d!1485460 m!5564839))

(declare-fun m!5564841 () Bool)

(assert (=> d!1485460 m!5564841))

(declare-fun m!5564843 () Bool)

(assert (=> b!4671335 m!5564843))

(declare-fun m!5564845 () Bool)

(assert (=> b!4671335 m!5564845))

(declare-fun m!5564847 () Bool)

(assert (=> b!4671335 m!5564847))

(declare-fun m!5564849 () Bool)

(assert (=> b!4671335 m!5564849))

(assert (=> b!4671335 m!5564843))

(declare-fun m!5564851 () Bool)

(assert (=> b!4671335 m!5564851))

(assert (=> b!4671335 m!5564845))

(assert (=> b!4671296 d!1485460))

(declare-fun d!1485466 () Bool)

(declare-fun e!2915158 () Bool)

(assert (=> d!1485466 e!2915158))

(declare-fun res!1966629 () Bool)

(assert (=> d!1485466 (=> (not res!1966629) (not e!2915158))))

(declare-fun lt!1833140 () ListMap!4685)

(assert (=> d!1485466 (= res!1966629 (contains!15256 lt!1833140 (_1!29918 (h!58239 l!12991))))))

(declare-fun lt!1833139 () List!52183)

(assert (=> d!1485466 (= lt!1833140 (ListMap!4686 lt!1833139))))

(declare-fun lt!1833141 () Unit!121150)

(declare-fun lt!1833142 () Unit!121150)

(assert (=> d!1485466 (= lt!1833141 lt!1833142)))

(declare-datatypes ((Option!11938 0))(
  ( (None!11937) (Some!11937 (v!46297 V!13676)) )
))
(declare-fun getValueByKey!1686 (List!52183 K!13430) Option!11938)

(assert (=> d!1485466 (= (getValueByKey!1686 lt!1833139 (_1!29918 (h!58239 l!12991))) (Some!11937 (_2!29918 (h!58239 l!12991))))))

(declare-fun lemmaContainsTupThenGetReturnValue!960 (List!52183 K!13430 V!13676) Unit!121150)

(assert (=> d!1485466 (= lt!1833142 (lemmaContainsTupThenGetReturnValue!960 lt!1833139 (_1!29918 (h!58239 l!12991)) (_2!29918 (h!58239 l!12991))))))

(declare-fun insertNoDuplicatedKeys!468 (List!52183 K!13430 V!13676) List!52183)

(assert (=> d!1485466 (= lt!1833139 (insertNoDuplicatedKeys!468 (toList!5320 lhm!57) (_1!29918 (h!58239 l!12991)) (_2!29918 (h!58239 l!12991))))))

(assert (=> d!1485466 (= (+!2040 lhm!57 (h!58239 l!12991)) lt!1833140)))

(declare-fun b!4671350 () Bool)

(declare-fun res!1966628 () Bool)

(assert (=> b!4671350 (=> (not res!1966628) (not e!2915158))))

(assert (=> b!4671350 (= res!1966628 (= (getValueByKey!1686 (toList!5320 lt!1833140) (_1!29918 (h!58239 l!12991))) (Some!11937 (_2!29918 (h!58239 l!12991)))))))

(declare-fun b!4671351 () Bool)

(declare-fun contains!15257 (List!52183 tuple2!53248) Bool)

(assert (=> b!4671351 (= e!2915158 (contains!15257 (toList!5320 lt!1833140) (h!58239 l!12991)))))

(assert (= (and d!1485466 res!1966629) b!4671350))

(assert (= (and b!4671350 res!1966628) b!4671351))

(declare-fun m!5564879 () Bool)

(assert (=> d!1485466 m!5564879))

(declare-fun m!5564881 () Bool)

(assert (=> d!1485466 m!5564881))

(declare-fun m!5564883 () Bool)

(assert (=> d!1485466 m!5564883))

(declare-fun m!5564885 () Bool)

(assert (=> d!1485466 m!5564885))

(declare-fun m!5564887 () Bool)

(assert (=> b!4671350 m!5564887))

(declare-fun m!5564889 () Bool)

(assert (=> b!4671351 m!5564889))

(assert (=> b!4671296 d!1485466))

(declare-fun d!1485474 () Bool)

(declare-fun res!1966630 () Bool)

(declare-fun e!2915159 () Bool)

(assert (=> d!1485474 (=> res!1966630 e!2915159)))

(assert (=> d!1485474 (= res!1966630 (and ((_ is Cons!52059) (t!359321 l!12991)) (= (_1!29918 (h!58239 (t!359321 l!12991))) key!4532)))))

(assert (=> d!1485474 (= (containsKey!2856 (t!359321 l!12991) key!4532) e!2915159)))

(declare-fun b!4671352 () Bool)

(declare-fun e!2915160 () Bool)

(assert (=> b!4671352 (= e!2915159 e!2915160)))

(declare-fun res!1966631 () Bool)

(assert (=> b!4671352 (=> (not res!1966631) (not e!2915160))))

(assert (=> b!4671352 (= res!1966631 ((_ is Cons!52059) (t!359321 l!12991)))))

(declare-fun b!4671353 () Bool)

(assert (=> b!4671353 (= e!2915160 (containsKey!2856 (t!359321 (t!359321 l!12991)) key!4532))))

(assert (= (and d!1485474 (not res!1966630)) b!4671352))

(assert (= (and b!4671352 res!1966631) b!4671353))

(declare-fun m!5564891 () Bool)

(assert (=> b!4671353 m!5564891))

(assert (=> b!4671296 d!1485474))

(declare-fun d!1485476 () Bool)

(declare-fun e!2915161 () Bool)

(assert (=> d!1485476 e!2915161))

(declare-fun res!1966632 () Bool)

(assert (=> d!1485476 (=> (not res!1966632) (not e!2915161))))

(declare-fun lt!1833143 () ListMap!4685)

(assert (=> d!1485476 (= res!1966632 (not (contains!15256 lt!1833143 key!4532)))))

(assert (=> d!1485476 (= lt!1833143 (ListMap!4686 (removePresrvNoDuplicatedKeys!317 (toList!5320 lt!1833105) key!4532)))))

(assert (=> d!1485476 (= (-!640 lt!1833105 key!4532) lt!1833143)))

(declare-fun b!4671354 () Bool)

(assert (=> b!4671354 (= e!2915161 (= ((_ map and) (content!9077 (keys!18502 lt!1833105)) ((_ map not) (store ((as const (Array K!13430 Bool)) false) key!4532 true))) (content!9077 (keys!18502 lt!1833143))))))

(assert (= (and d!1485476 res!1966632) b!4671354))

(declare-fun m!5564893 () Bool)

(assert (=> d!1485476 m!5564893))

(declare-fun m!5564895 () Bool)

(assert (=> d!1485476 m!5564895))

(declare-fun m!5564897 () Bool)

(assert (=> b!4671354 m!5564897))

(declare-fun m!5564899 () Bool)

(assert (=> b!4671354 m!5564899))

(declare-fun m!5564901 () Bool)

(assert (=> b!4671354 m!5564901))

(assert (=> b!4671354 m!5564849))

(assert (=> b!4671354 m!5564897))

(declare-fun m!5564903 () Bool)

(assert (=> b!4671354 m!5564903))

(assert (=> b!4671354 m!5564899))

(assert (=> b!4671296 d!1485476))

(declare-fun d!1485478 () Bool)

(assert (=> d!1485478 (= (-!640 (+!2040 lhm!57 (tuple2!53249 (_1!29918 (h!58239 l!12991)) (_2!29918 (h!58239 l!12991)))) key!4532) (+!2040 (-!640 lhm!57 key!4532) (tuple2!53249 (_1!29918 (h!58239 l!12991)) (_2!29918 (h!58239 l!12991)))))))

(declare-fun lt!1833149 () Unit!121150)

(declare-fun choose!32335 (ListMap!4685 K!13430 V!13676 K!13430) Unit!121150)

(assert (=> d!1485478 (= lt!1833149 (choose!32335 lhm!57 (_1!29918 (h!58239 l!12991)) (_2!29918 (h!58239 l!12991)) key!4532))))

(assert (=> d!1485478 (not (= (_1!29918 (h!58239 l!12991)) key!4532))))

(assert (=> d!1485478 (= (addRemoveCommutativeForDiffKeys!77 lhm!57 (_1!29918 (h!58239 l!12991)) (_2!29918 (h!58239 l!12991)) key!4532) lt!1833149)))

(declare-fun bs!1078856 () Bool)

(assert (= bs!1078856 d!1485478))

(declare-fun m!5564913 () Bool)

(assert (=> bs!1078856 m!5564913))

(assert (=> bs!1078856 m!5564913))

(declare-fun m!5564915 () Bool)

(assert (=> bs!1078856 m!5564915))

(declare-fun m!5564917 () Bool)

(assert (=> bs!1078856 m!5564917))

(assert (=> bs!1078856 m!5564773))

(declare-fun m!5564919 () Bool)

(assert (=> bs!1078856 m!5564919))

(assert (=> bs!1078856 m!5564773))

(assert (=> b!4671296 d!1485478))

(declare-fun d!1485482 () Bool)

(declare-fun e!2915162 () Bool)

(assert (=> d!1485482 e!2915162))

(declare-fun res!1966634 () Bool)

(assert (=> d!1485482 (=> (not res!1966634) (not e!2915162))))

(declare-fun lt!1833151 () ListMap!4685)

(assert (=> d!1485482 (= res!1966634 (contains!15256 lt!1833151 (_1!29918 (h!58239 l!12991))))))

(declare-fun lt!1833150 () List!52183)

(assert (=> d!1485482 (= lt!1833151 (ListMap!4686 lt!1833150))))

(declare-fun lt!1833152 () Unit!121150)

(declare-fun lt!1833153 () Unit!121150)

(assert (=> d!1485482 (= lt!1833152 lt!1833153)))

(assert (=> d!1485482 (= (getValueByKey!1686 lt!1833150 (_1!29918 (h!58239 l!12991))) (Some!11937 (_2!29918 (h!58239 l!12991))))))

(assert (=> d!1485482 (= lt!1833153 (lemmaContainsTupThenGetReturnValue!960 lt!1833150 (_1!29918 (h!58239 l!12991)) (_2!29918 (h!58239 l!12991))))))

(assert (=> d!1485482 (= lt!1833150 (insertNoDuplicatedKeys!468 (toList!5320 lt!1833106) (_1!29918 (h!58239 l!12991)) (_2!29918 (h!58239 l!12991))))))

(assert (=> d!1485482 (= (+!2040 lt!1833106 (h!58239 l!12991)) lt!1833151)))

(declare-fun b!4671355 () Bool)

(declare-fun res!1966633 () Bool)

(assert (=> b!4671355 (=> (not res!1966633) (not e!2915162))))

(assert (=> b!4671355 (= res!1966633 (= (getValueByKey!1686 (toList!5320 lt!1833151) (_1!29918 (h!58239 l!12991))) (Some!11937 (_2!29918 (h!58239 l!12991)))))))

(declare-fun b!4671356 () Bool)

(assert (=> b!4671356 (= e!2915162 (contains!15257 (toList!5320 lt!1833151) (h!58239 l!12991)))))

(assert (= (and d!1485482 res!1966634) b!4671355))

(assert (= (and b!4671355 res!1966633) b!4671356))

(declare-fun m!5564921 () Bool)

(assert (=> d!1485482 m!5564921))

(declare-fun m!5564923 () Bool)

(assert (=> d!1485482 m!5564923))

(declare-fun m!5564925 () Bool)

(assert (=> d!1485482 m!5564925))

(declare-fun m!5564927 () Bool)

(assert (=> d!1485482 m!5564927))

(declare-fun m!5564929 () Bool)

(assert (=> b!4671355 m!5564929))

(declare-fun m!5564931 () Bool)

(assert (=> b!4671356 m!5564931))

(assert (=> b!4671296 d!1485482))

(declare-fun b!4671410 () Bool)

(assert (=> b!4671410 true))

(declare-fun bs!1078924 () Bool)

(declare-fun b!4671409 () Bool)

(assert (= bs!1078924 (and b!4671409 b!4671410)))

(declare-fun lambda!202554 () Int)

(declare-fun lambda!202553 () Int)

(assert (=> bs!1078924 (= lambda!202554 lambda!202553)))

(assert (=> b!4671409 true))

(declare-fun lt!1833337 () ListMap!4685)

(declare-fun lambda!202555 () Int)

(assert (=> bs!1078924 (= (= lt!1833337 lt!1833106) (= lambda!202555 lambda!202553))))

(assert (=> b!4671409 (= (= lt!1833337 lt!1833106) (= lambda!202555 lambda!202554))))

(assert (=> b!4671409 true))

(declare-fun bs!1078925 () Bool)

(declare-fun d!1485484 () Bool)

(assert (= bs!1078925 (and d!1485484 b!4671410)))

(declare-fun lt!1833344 () ListMap!4685)

(declare-fun lambda!202556 () Int)

(assert (=> bs!1078925 (= (= lt!1833344 lt!1833106) (= lambda!202556 lambda!202553))))

(declare-fun bs!1078926 () Bool)

(assert (= bs!1078926 (and d!1485484 b!4671409)))

(assert (=> bs!1078926 (= (= lt!1833344 lt!1833106) (= lambda!202556 lambda!202554))))

(assert (=> bs!1078926 (= (= lt!1833344 lt!1833337) (= lambda!202556 lambda!202555))))

(assert (=> d!1485484 true))

(declare-fun e!2915197 () Bool)

(assert (=> d!1485484 e!2915197))

(declare-fun res!1966664 () Bool)

(assert (=> d!1485484 (=> (not res!1966664) (not e!2915197))))

(declare-fun forall!11112 (List!52183 Int) Bool)

(assert (=> d!1485484 (= res!1966664 (forall!11112 l!12991 lambda!202556))))

(declare-fun e!2915195 () ListMap!4685)

(assert (=> d!1485484 (= lt!1833344 e!2915195)))

(declare-fun c!799649 () Bool)

(assert (=> d!1485484 (= c!799649 ((_ is Nil!52059) l!12991))))

(assert (=> d!1485484 (noDuplicateKeys!1712 l!12991)))

(assert (=> d!1485484 (= (addToMapMapFromBucket!1151 l!12991 lt!1833106) lt!1833344)))

(assert (=> b!4671409 (= e!2915195 lt!1833337)))

(declare-fun lt!1833327 () ListMap!4685)

(assert (=> b!4671409 (= lt!1833327 (+!2040 lt!1833106 (h!58239 l!12991)))))

(assert (=> b!4671409 (= lt!1833337 (addToMapMapFromBucket!1151 (t!359321 l!12991) (+!2040 lt!1833106 (h!58239 l!12991))))))

(declare-fun lt!1833343 () Unit!121150)

(declare-fun call!326485 () Unit!121150)

(assert (=> b!4671409 (= lt!1833343 call!326485)))

(declare-fun call!326486 () Bool)

(assert (=> b!4671409 call!326486))

(declare-fun lt!1833345 () Unit!121150)

(assert (=> b!4671409 (= lt!1833345 lt!1833343)))

(assert (=> b!4671409 (forall!11112 (toList!5320 lt!1833327) lambda!202555)))

(declare-fun lt!1833340 () Unit!121150)

(declare-fun Unit!121164 () Unit!121150)

(assert (=> b!4671409 (= lt!1833340 Unit!121164)))

(assert (=> b!4671409 (forall!11112 (t!359321 l!12991) lambda!202555)))

(declare-fun lt!1833335 () Unit!121150)

(declare-fun Unit!121165 () Unit!121150)

(assert (=> b!4671409 (= lt!1833335 Unit!121165)))

(declare-fun lt!1833330 () Unit!121150)

(declare-fun Unit!121166 () Unit!121150)

(assert (=> b!4671409 (= lt!1833330 Unit!121166)))

(declare-fun lt!1833329 () Unit!121150)

(declare-fun forallContained!3316 (List!52183 Int tuple2!53248) Unit!121150)

(assert (=> b!4671409 (= lt!1833329 (forallContained!3316 (toList!5320 lt!1833327) lambda!202555 (h!58239 l!12991)))))

(assert (=> b!4671409 (contains!15256 lt!1833327 (_1!29918 (h!58239 l!12991)))))

(declare-fun lt!1833333 () Unit!121150)

(declare-fun Unit!121167 () Unit!121150)

(assert (=> b!4671409 (= lt!1833333 Unit!121167)))

(assert (=> b!4671409 (contains!15256 lt!1833337 (_1!29918 (h!58239 l!12991)))))

(declare-fun lt!1833342 () Unit!121150)

(declare-fun Unit!121168 () Unit!121150)

(assert (=> b!4671409 (= lt!1833342 Unit!121168)))

(assert (=> b!4671409 (forall!11112 l!12991 lambda!202555)))

(declare-fun lt!1833332 () Unit!121150)

(declare-fun Unit!121169 () Unit!121150)

(assert (=> b!4671409 (= lt!1833332 Unit!121169)))

(assert (=> b!4671409 (forall!11112 (toList!5320 lt!1833327) lambda!202555)))

(declare-fun lt!1833328 () Unit!121150)

(declare-fun Unit!121170 () Unit!121150)

(assert (=> b!4671409 (= lt!1833328 Unit!121170)))

(declare-fun lt!1833336 () Unit!121150)

(declare-fun Unit!121171 () Unit!121150)

(assert (=> b!4671409 (= lt!1833336 Unit!121171)))

(declare-fun lt!1833331 () Unit!121150)

(declare-fun addForallContainsKeyThenBeforeAdding!633 (ListMap!4685 ListMap!4685 K!13430 V!13676) Unit!121150)

(assert (=> b!4671409 (= lt!1833331 (addForallContainsKeyThenBeforeAdding!633 lt!1833106 lt!1833337 (_1!29918 (h!58239 l!12991)) (_2!29918 (h!58239 l!12991))))))

(assert (=> b!4671409 (forall!11112 (toList!5320 lt!1833106) lambda!202555)))

(declare-fun lt!1833346 () Unit!121150)

(assert (=> b!4671409 (= lt!1833346 lt!1833331)))

(assert (=> b!4671409 (forall!11112 (toList!5320 lt!1833106) lambda!202555)))

(declare-fun lt!1833339 () Unit!121150)

(declare-fun Unit!121174 () Unit!121150)

(assert (=> b!4671409 (= lt!1833339 Unit!121174)))

(declare-fun res!1966665 () Bool)

(assert (=> b!4671409 (= res!1966665 (forall!11112 l!12991 lambda!202555))))

(declare-fun e!2915196 () Bool)

(assert (=> b!4671409 (=> (not res!1966665) (not e!2915196))))

(assert (=> b!4671409 e!2915196))

(declare-fun lt!1833338 () Unit!121150)

(declare-fun Unit!121176 () Unit!121150)

(assert (=> b!4671409 (= lt!1833338 Unit!121176)))

(declare-fun bm!326479 () Bool)

(assert (=> bm!326479 (= call!326486 (forall!11112 (toList!5320 lt!1833106) (ite c!799649 lambda!202553 lambda!202554)))))

(declare-fun bm!326480 () Bool)

(declare-fun call!326484 () Bool)

(assert (=> bm!326480 (= call!326484 (forall!11112 (toList!5320 lt!1833106) (ite c!799649 lambda!202553 lambda!202555)))))

(assert (=> b!4671410 (= e!2915195 lt!1833106)))

(declare-fun lt!1833347 () Unit!121150)

(assert (=> b!4671410 (= lt!1833347 call!326485)))

(assert (=> b!4671410 call!326486))

(declare-fun lt!1833334 () Unit!121150)

(assert (=> b!4671410 (= lt!1833334 lt!1833347)))

(assert (=> b!4671410 call!326484))

(declare-fun lt!1833341 () Unit!121150)

(declare-fun Unit!121180 () Unit!121150)

(assert (=> b!4671410 (= lt!1833341 Unit!121180)))

(declare-fun b!4671411 () Bool)

(declare-fun res!1966663 () Bool)

(assert (=> b!4671411 (=> (not res!1966663) (not e!2915197))))

(assert (=> b!4671411 (= res!1966663 (forall!11112 (toList!5320 lt!1833106) lambda!202556))))

(declare-fun b!4671412 () Bool)

(assert (=> b!4671412 (= e!2915196 call!326484)))

(declare-fun b!4671413 () Bool)

(assert (=> b!4671413 (= e!2915197 (invariantList!1342 (toList!5320 lt!1833344)))))

(declare-fun bm!326481 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!634 (ListMap!4685) Unit!121150)

(assert (=> bm!326481 (= call!326485 (lemmaContainsAllItsOwnKeys!634 lt!1833106))))

(assert (= (and d!1485484 c!799649) b!4671410))

(assert (= (and d!1485484 (not c!799649)) b!4671409))

(assert (= (and b!4671409 res!1966665) b!4671412))

(assert (= (or b!4671410 b!4671412) bm!326480))

(assert (= (or b!4671410 b!4671409) bm!326479))

(assert (= (or b!4671410 b!4671409) bm!326481))

(assert (= (and d!1485484 res!1966664) b!4671411))

(assert (= (and b!4671411 res!1966663) b!4671413))

(declare-fun m!5565095 () Bool)

(assert (=> b!4671409 m!5565095))

(declare-fun m!5565097 () Bool)

(assert (=> b!4671409 m!5565097))

(assert (=> b!4671409 m!5564775))

(declare-fun m!5565099 () Bool)

(assert (=> b!4671409 m!5565099))

(assert (=> b!4671409 m!5565097))

(declare-fun m!5565101 () Bool)

(assert (=> b!4671409 m!5565101))

(assert (=> b!4671409 m!5564775))

(declare-fun m!5565103 () Bool)

(assert (=> b!4671409 m!5565103))

(declare-fun m!5565105 () Bool)

(assert (=> b!4671409 m!5565105))

(declare-fun m!5565107 () Bool)

(assert (=> b!4671409 m!5565107))

(declare-fun m!5565109 () Bool)

(assert (=> b!4671409 m!5565109))

(assert (=> b!4671409 m!5565109))

(assert (=> b!4671409 m!5565105))

(declare-fun m!5565111 () Bool)

(assert (=> b!4671409 m!5565111))

(declare-fun m!5565113 () Bool)

(assert (=> bm!326479 m!5565113))

(declare-fun m!5565115 () Bool)

(assert (=> bm!326481 m!5565115))

(declare-fun m!5565117 () Bool)

(assert (=> bm!326480 m!5565117))

(declare-fun m!5565119 () Bool)

(assert (=> b!4671413 m!5565119))

(declare-fun m!5565121 () Bool)

(assert (=> b!4671411 m!5565121))

(declare-fun m!5565123 () Bool)

(assert (=> d!1485484 m!5565123))

(assert (=> d!1485484 m!5564777))

(assert (=> b!4671301 d!1485484))

(declare-fun bs!1078927 () Bool)

(declare-fun b!4671417 () Bool)

(assert (= bs!1078927 (and b!4671417 b!4671410)))

(declare-fun lambda!202557 () Int)

(assert (=> bs!1078927 (= (= lt!1833107 lt!1833106) (= lambda!202557 lambda!202553))))

(declare-fun bs!1078928 () Bool)

(assert (= bs!1078928 (and b!4671417 b!4671409)))

(assert (=> bs!1078928 (= (= lt!1833107 lt!1833106) (= lambda!202557 lambda!202554))))

(assert (=> bs!1078928 (= (= lt!1833107 lt!1833337) (= lambda!202557 lambda!202555))))

(declare-fun bs!1078929 () Bool)

(assert (= bs!1078929 (and b!4671417 d!1485484)))

(assert (=> bs!1078929 (= (= lt!1833107 lt!1833344) (= lambda!202557 lambda!202556))))

(assert (=> b!4671417 true))

(declare-fun bs!1078930 () Bool)

(declare-fun b!4671416 () Bool)

(assert (= bs!1078930 (and b!4671416 b!4671417)))

(declare-fun lambda!202558 () Int)

(assert (=> bs!1078930 (= lambda!202558 lambda!202557)))

(declare-fun bs!1078931 () Bool)

(assert (= bs!1078931 (and b!4671416 d!1485484)))

(assert (=> bs!1078931 (= (= lt!1833107 lt!1833344) (= lambda!202558 lambda!202556))))

(declare-fun bs!1078932 () Bool)

(assert (= bs!1078932 (and b!4671416 b!4671409)))

(assert (=> bs!1078932 (= (= lt!1833107 lt!1833106) (= lambda!202558 lambda!202554))))

(assert (=> bs!1078932 (= (= lt!1833107 lt!1833337) (= lambda!202558 lambda!202555))))

(declare-fun bs!1078933 () Bool)

(assert (= bs!1078933 (and b!4671416 b!4671410)))

(assert (=> bs!1078933 (= (= lt!1833107 lt!1833106) (= lambda!202558 lambda!202553))))

(assert (=> b!4671416 true))

(declare-fun lambda!202559 () Int)

(declare-fun lt!1833358 () ListMap!4685)

(assert (=> bs!1078930 (= (= lt!1833358 lt!1833107) (= lambda!202559 lambda!202557))))

(assert (=> bs!1078931 (= (= lt!1833358 lt!1833344) (= lambda!202559 lambda!202556))))

(assert (=> bs!1078932 (= (= lt!1833358 lt!1833106) (= lambda!202559 lambda!202554))))

(assert (=> bs!1078933 (= (= lt!1833358 lt!1833106) (= lambda!202559 lambda!202553))))

(assert (=> b!4671416 (= (= lt!1833358 lt!1833107) (= lambda!202559 lambda!202558))))

(assert (=> bs!1078932 (= (= lt!1833358 lt!1833337) (= lambda!202559 lambda!202555))))

(assert (=> b!4671416 true))

(declare-fun bs!1078934 () Bool)

(declare-fun d!1485500 () Bool)

(assert (= bs!1078934 (and d!1485500 b!4671416)))

(declare-fun lambda!202560 () Int)

(declare-fun lt!1833365 () ListMap!4685)

(assert (=> bs!1078934 (= (= lt!1833365 lt!1833358) (= lambda!202560 lambda!202559))))

(declare-fun bs!1078935 () Bool)

(assert (= bs!1078935 (and d!1485500 b!4671417)))

(assert (=> bs!1078935 (= (= lt!1833365 lt!1833107) (= lambda!202560 lambda!202557))))

(declare-fun bs!1078936 () Bool)

(assert (= bs!1078936 (and d!1485500 d!1485484)))

(assert (=> bs!1078936 (= (= lt!1833365 lt!1833344) (= lambda!202560 lambda!202556))))

(declare-fun bs!1078937 () Bool)

(assert (= bs!1078937 (and d!1485500 b!4671409)))

(assert (=> bs!1078937 (= (= lt!1833365 lt!1833106) (= lambda!202560 lambda!202554))))

(declare-fun bs!1078938 () Bool)

(assert (= bs!1078938 (and d!1485500 b!4671410)))

(assert (=> bs!1078938 (= (= lt!1833365 lt!1833106) (= lambda!202560 lambda!202553))))

(assert (=> bs!1078934 (= (= lt!1833365 lt!1833107) (= lambda!202560 lambda!202558))))

(assert (=> bs!1078937 (= (= lt!1833365 lt!1833337) (= lambda!202560 lambda!202555))))

(assert (=> d!1485500 true))

(declare-fun e!2915200 () Bool)

(assert (=> d!1485500 e!2915200))

(declare-fun res!1966667 () Bool)

(assert (=> d!1485500 (=> (not res!1966667) (not e!2915200))))

(assert (=> d!1485500 (= res!1966667 (forall!11112 (t!359321 l!12991) lambda!202560))))

(declare-fun e!2915198 () ListMap!4685)

(assert (=> d!1485500 (= lt!1833365 e!2915198)))

(declare-fun c!799650 () Bool)

(assert (=> d!1485500 (= c!799650 ((_ is Nil!52059) (t!359321 l!12991)))))

(assert (=> d!1485500 (noDuplicateKeys!1712 (t!359321 l!12991))))

(assert (=> d!1485500 (= (addToMapMapFromBucket!1151 (t!359321 l!12991) lt!1833107) lt!1833365)))

(assert (=> b!4671416 (= e!2915198 lt!1833358)))

(declare-fun lt!1833348 () ListMap!4685)

(assert (=> b!4671416 (= lt!1833348 (+!2040 lt!1833107 (h!58239 (t!359321 l!12991))))))

(assert (=> b!4671416 (= lt!1833358 (addToMapMapFromBucket!1151 (t!359321 (t!359321 l!12991)) (+!2040 lt!1833107 (h!58239 (t!359321 l!12991)))))))

(declare-fun lt!1833364 () Unit!121150)

(declare-fun call!326488 () Unit!121150)

(assert (=> b!4671416 (= lt!1833364 call!326488)))

(declare-fun call!326489 () Bool)

(assert (=> b!4671416 call!326489))

(declare-fun lt!1833366 () Unit!121150)

(assert (=> b!4671416 (= lt!1833366 lt!1833364)))

(assert (=> b!4671416 (forall!11112 (toList!5320 lt!1833348) lambda!202559)))

(declare-fun lt!1833361 () Unit!121150)

(declare-fun Unit!121185 () Unit!121150)

(assert (=> b!4671416 (= lt!1833361 Unit!121185)))

(assert (=> b!4671416 (forall!11112 (t!359321 (t!359321 l!12991)) lambda!202559)))

(declare-fun lt!1833356 () Unit!121150)

(declare-fun Unit!121186 () Unit!121150)

(assert (=> b!4671416 (= lt!1833356 Unit!121186)))

(declare-fun lt!1833351 () Unit!121150)

(declare-fun Unit!121187 () Unit!121150)

(assert (=> b!4671416 (= lt!1833351 Unit!121187)))

(declare-fun lt!1833350 () Unit!121150)

(assert (=> b!4671416 (= lt!1833350 (forallContained!3316 (toList!5320 lt!1833348) lambda!202559 (h!58239 (t!359321 l!12991))))))

(assert (=> b!4671416 (contains!15256 lt!1833348 (_1!29918 (h!58239 (t!359321 l!12991))))))

(declare-fun lt!1833354 () Unit!121150)

(declare-fun Unit!121188 () Unit!121150)

(assert (=> b!4671416 (= lt!1833354 Unit!121188)))

(assert (=> b!4671416 (contains!15256 lt!1833358 (_1!29918 (h!58239 (t!359321 l!12991))))))

(declare-fun lt!1833363 () Unit!121150)

(declare-fun Unit!121189 () Unit!121150)

(assert (=> b!4671416 (= lt!1833363 Unit!121189)))

(assert (=> b!4671416 (forall!11112 (t!359321 l!12991) lambda!202559)))

(declare-fun lt!1833353 () Unit!121150)

(declare-fun Unit!121190 () Unit!121150)

(assert (=> b!4671416 (= lt!1833353 Unit!121190)))

(assert (=> b!4671416 (forall!11112 (toList!5320 lt!1833348) lambda!202559)))

(declare-fun lt!1833349 () Unit!121150)

(declare-fun Unit!121191 () Unit!121150)

(assert (=> b!4671416 (= lt!1833349 Unit!121191)))

(declare-fun lt!1833357 () Unit!121150)

(declare-fun Unit!121192 () Unit!121150)

(assert (=> b!4671416 (= lt!1833357 Unit!121192)))

(declare-fun lt!1833352 () Unit!121150)

(assert (=> b!4671416 (= lt!1833352 (addForallContainsKeyThenBeforeAdding!633 lt!1833107 lt!1833358 (_1!29918 (h!58239 (t!359321 l!12991))) (_2!29918 (h!58239 (t!359321 l!12991)))))))

(assert (=> b!4671416 (forall!11112 (toList!5320 lt!1833107) lambda!202559)))

(declare-fun lt!1833367 () Unit!121150)

(assert (=> b!4671416 (= lt!1833367 lt!1833352)))

(assert (=> b!4671416 (forall!11112 (toList!5320 lt!1833107) lambda!202559)))

(declare-fun lt!1833360 () Unit!121150)

(declare-fun Unit!121193 () Unit!121150)

(assert (=> b!4671416 (= lt!1833360 Unit!121193)))

(declare-fun res!1966668 () Bool)

(assert (=> b!4671416 (= res!1966668 (forall!11112 (t!359321 l!12991) lambda!202559))))

(declare-fun e!2915199 () Bool)

(assert (=> b!4671416 (=> (not res!1966668) (not e!2915199))))

(assert (=> b!4671416 e!2915199))

(declare-fun lt!1833359 () Unit!121150)

(declare-fun Unit!121194 () Unit!121150)

(assert (=> b!4671416 (= lt!1833359 Unit!121194)))

(declare-fun bm!326482 () Bool)

(assert (=> bm!326482 (= call!326489 (forall!11112 (toList!5320 lt!1833107) (ite c!799650 lambda!202557 lambda!202558)))))

(declare-fun bm!326483 () Bool)

(declare-fun call!326487 () Bool)

(assert (=> bm!326483 (= call!326487 (forall!11112 (toList!5320 lt!1833107) (ite c!799650 lambda!202557 lambda!202559)))))

(assert (=> b!4671417 (= e!2915198 lt!1833107)))

(declare-fun lt!1833368 () Unit!121150)

(assert (=> b!4671417 (= lt!1833368 call!326488)))

(assert (=> b!4671417 call!326489))

(declare-fun lt!1833355 () Unit!121150)

(assert (=> b!4671417 (= lt!1833355 lt!1833368)))

(assert (=> b!4671417 call!326487))

(declare-fun lt!1833362 () Unit!121150)

(declare-fun Unit!121195 () Unit!121150)

(assert (=> b!4671417 (= lt!1833362 Unit!121195)))

(declare-fun b!4671418 () Bool)

(declare-fun res!1966666 () Bool)

(assert (=> b!4671418 (=> (not res!1966666) (not e!2915200))))

(assert (=> b!4671418 (= res!1966666 (forall!11112 (toList!5320 lt!1833107) lambda!202560))))

(declare-fun b!4671419 () Bool)

(assert (=> b!4671419 (= e!2915199 call!326487)))

(declare-fun b!4671420 () Bool)

(assert (=> b!4671420 (= e!2915200 (invariantList!1342 (toList!5320 lt!1833365)))))

(declare-fun bm!326484 () Bool)

(assert (=> bm!326484 (= call!326488 (lemmaContainsAllItsOwnKeys!634 lt!1833107))))

(assert (= (and d!1485500 c!799650) b!4671417))

(assert (= (and d!1485500 (not c!799650)) b!4671416))

(assert (= (and b!4671416 res!1966668) b!4671419))

(assert (= (or b!4671417 b!4671419) bm!326483))

(assert (= (or b!4671417 b!4671416) bm!326482))

(assert (= (or b!4671417 b!4671416) bm!326484))

(assert (= (and d!1485500 res!1966667) b!4671418))

(assert (= (and b!4671418 res!1966666) b!4671420))

(declare-fun m!5565125 () Bool)

(assert (=> b!4671416 m!5565125))

(declare-fun m!5565127 () Bool)

(assert (=> b!4671416 m!5565127))

(declare-fun m!5565129 () Bool)

(assert (=> b!4671416 m!5565129))

(declare-fun m!5565131 () Bool)

(assert (=> b!4671416 m!5565131))

(assert (=> b!4671416 m!5565127))

(declare-fun m!5565133 () Bool)

(assert (=> b!4671416 m!5565133))

(assert (=> b!4671416 m!5565129))

(declare-fun m!5565135 () Bool)

(assert (=> b!4671416 m!5565135))

(declare-fun m!5565137 () Bool)

(assert (=> b!4671416 m!5565137))

(declare-fun m!5565139 () Bool)

(assert (=> b!4671416 m!5565139))

(declare-fun m!5565141 () Bool)

(assert (=> b!4671416 m!5565141))

(assert (=> b!4671416 m!5565141))

(assert (=> b!4671416 m!5565137))

(declare-fun m!5565143 () Bool)

(assert (=> b!4671416 m!5565143))

(declare-fun m!5565145 () Bool)

(assert (=> bm!326482 m!5565145))

(declare-fun m!5565147 () Bool)

(assert (=> bm!326484 m!5565147))

(declare-fun m!5565149 () Bool)

(assert (=> bm!326483 m!5565149))

(declare-fun m!5565151 () Bool)

(assert (=> b!4671420 m!5565151))

(declare-fun m!5565153 () Bool)

(assert (=> b!4671418 m!5565153))

(declare-fun m!5565155 () Bool)

(assert (=> d!1485500 m!5565155))

(assert (=> d!1485500 m!5564797))

(assert (=> b!4671301 d!1485500))

(declare-fun d!1485502 () Bool)

(declare-fun e!2915201 () Bool)

(assert (=> d!1485502 e!2915201))

(declare-fun res!1966669 () Bool)

(assert (=> d!1485502 (=> (not res!1966669) (not e!2915201))))

(declare-fun lt!1833369 () ListMap!4685)

(assert (=> d!1485502 (= res!1966669 (not (contains!15256 lt!1833369 key!4532)))))

(assert (=> d!1485502 (= lt!1833369 (ListMap!4686 (removePresrvNoDuplicatedKeys!317 (toList!5320 (addToMapMapFromBucket!1151 (t!359321 l!12991) lt!1833105)) key!4532)))))

(assert (=> d!1485502 (= (-!640 (addToMapMapFromBucket!1151 (t!359321 l!12991) lt!1833105) key!4532) lt!1833369)))

(declare-fun b!4671421 () Bool)

(assert (=> b!4671421 (= e!2915201 (= ((_ map and) (content!9077 (keys!18502 (addToMapMapFromBucket!1151 (t!359321 l!12991) lt!1833105))) ((_ map not) (store ((as const (Array K!13430 Bool)) false) key!4532 true))) (content!9077 (keys!18502 lt!1833369))))))

(assert (= (and d!1485502 res!1966669) b!4671421))

(declare-fun m!5565157 () Bool)

(assert (=> d!1485502 m!5565157))

(declare-fun m!5565159 () Bool)

(assert (=> d!1485502 m!5565159))

(declare-fun m!5565161 () Bool)

(assert (=> b!4671421 m!5565161))

(declare-fun m!5565163 () Bool)

(assert (=> b!4671421 m!5565163))

(declare-fun m!5565165 () Bool)

(assert (=> b!4671421 m!5565165))

(assert (=> b!4671421 m!5564849))

(assert (=> b!4671421 m!5565161))

(declare-fun m!5565167 () Bool)

(assert (=> b!4671421 m!5565167))

(assert (=> b!4671421 m!5564787))

(assert (=> b!4671421 m!5565163))

(assert (=> b!4671301 d!1485502))

(declare-fun d!1485504 () Bool)

(assert (=> d!1485504 (= (addToMapMapFromBucket!1151 (t!359321 l!12991) (-!640 lt!1833105 key!4532)) (-!640 (addToMapMapFromBucket!1151 (t!359321 l!12991) lt!1833105) key!4532))))

(declare-fun lt!1833372 () Unit!121150)

(declare-fun choose!32336 (ListMap!4685 K!13430 List!52183) Unit!121150)

(assert (=> d!1485504 (= lt!1833372 (choose!32336 lt!1833105 key!4532 (t!359321 l!12991)))))

(assert (=> d!1485504 (not (containsKey!2856 (t!359321 l!12991) key!4532))))

(assert (=> d!1485504 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!50 lt!1833105 key!4532 (t!359321 l!12991)) lt!1833372)))

(declare-fun bs!1078939 () Bool)

(assert (= bs!1078939 d!1485504))

(assert (=> bs!1078939 m!5564769))

(assert (=> bs!1078939 m!5564771))

(assert (=> bs!1078939 m!5564771))

(declare-fun m!5565169 () Bool)

(assert (=> bs!1078939 m!5565169))

(declare-fun m!5565171 () Bool)

(assert (=> bs!1078939 m!5565171))

(assert (=> bs!1078939 m!5564787))

(assert (=> bs!1078939 m!5564795))

(assert (=> bs!1078939 m!5564787))

(assert (=> b!4671301 d!1485504))

(declare-fun bs!1078940 () Bool)

(declare-fun b!4671423 () Bool)

(assert (= bs!1078940 (and b!4671423 b!4671416)))

(declare-fun lambda!202561 () Int)

(assert (=> bs!1078940 (= (= lt!1833105 lt!1833358) (= lambda!202561 lambda!202559))))

(declare-fun bs!1078941 () Bool)

(assert (= bs!1078941 (and b!4671423 d!1485484)))

(assert (=> bs!1078941 (= (= lt!1833105 lt!1833344) (= lambda!202561 lambda!202556))))

(declare-fun bs!1078942 () Bool)

(assert (= bs!1078942 (and b!4671423 b!4671409)))

(assert (=> bs!1078942 (= (= lt!1833105 lt!1833106) (= lambda!202561 lambda!202554))))

(declare-fun bs!1078943 () Bool)

(assert (= bs!1078943 (and b!4671423 b!4671410)))

(assert (=> bs!1078943 (= (= lt!1833105 lt!1833106) (= lambda!202561 lambda!202553))))

(declare-fun bs!1078944 () Bool)

(assert (= bs!1078944 (and b!4671423 d!1485500)))

(assert (=> bs!1078944 (= (= lt!1833105 lt!1833365) (= lambda!202561 lambda!202560))))

(declare-fun bs!1078945 () Bool)

(assert (= bs!1078945 (and b!4671423 b!4671417)))

(assert (=> bs!1078945 (= (= lt!1833105 lt!1833107) (= lambda!202561 lambda!202557))))

(assert (=> bs!1078940 (= (= lt!1833105 lt!1833107) (= lambda!202561 lambda!202558))))

(assert (=> bs!1078942 (= (= lt!1833105 lt!1833337) (= lambda!202561 lambda!202555))))

(assert (=> b!4671423 true))

(declare-fun bs!1078946 () Bool)

(declare-fun b!4671422 () Bool)

(assert (= bs!1078946 (and b!4671422 b!4671416)))

(declare-fun lambda!202562 () Int)

(assert (=> bs!1078946 (= (= lt!1833105 lt!1833358) (= lambda!202562 lambda!202559))))

(declare-fun bs!1078947 () Bool)

(assert (= bs!1078947 (and b!4671422 d!1485484)))

(assert (=> bs!1078947 (= (= lt!1833105 lt!1833344) (= lambda!202562 lambda!202556))))

(declare-fun bs!1078948 () Bool)

(assert (= bs!1078948 (and b!4671422 b!4671409)))

(assert (=> bs!1078948 (= (= lt!1833105 lt!1833106) (= lambda!202562 lambda!202554))))

(declare-fun bs!1078949 () Bool)

(assert (= bs!1078949 (and b!4671422 b!4671423)))

(assert (=> bs!1078949 (= lambda!202562 lambda!202561)))

(declare-fun bs!1078950 () Bool)

(assert (= bs!1078950 (and b!4671422 b!4671410)))

(assert (=> bs!1078950 (= (= lt!1833105 lt!1833106) (= lambda!202562 lambda!202553))))

(declare-fun bs!1078951 () Bool)

(assert (= bs!1078951 (and b!4671422 d!1485500)))

(assert (=> bs!1078951 (= (= lt!1833105 lt!1833365) (= lambda!202562 lambda!202560))))

(declare-fun bs!1078952 () Bool)

(assert (= bs!1078952 (and b!4671422 b!4671417)))

(assert (=> bs!1078952 (= (= lt!1833105 lt!1833107) (= lambda!202562 lambda!202557))))

(assert (=> bs!1078946 (= (= lt!1833105 lt!1833107) (= lambda!202562 lambda!202558))))

(assert (=> bs!1078948 (= (= lt!1833105 lt!1833337) (= lambda!202562 lambda!202555))))

(assert (=> b!4671422 true))

(declare-fun lambda!202563 () Int)

(declare-fun lt!1833383 () ListMap!4685)

(assert (=> bs!1078946 (= (= lt!1833383 lt!1833358) (= lambda!202563 lambda!202559))))

(assert (=> b!4671422 (= (= lt!1833383 lt!1833105) (= lambda!202563 lambda!202562))))

(assert (=> bs!1078947 (= (= lt!1833383 lt!1833344) (= lambda!202563 lambda!202556))))

(assert (=> bs!1078948 (= (= lt!1833383 lt!1833106) (= lambda!202563 lambda!202554))))

(assert (=> bs!1078949 (= (= lt!1833383 lt!1833105) (= lambda!202563 lambda!202561))))

(assert (=> bs!1078950 (= (= lt!1833383 lt!1833106) (= lambda!202563 lambda!202553))))

(assert (=> bs!1078951 (= (= lt!1833383 lt!1833365) (= lambda!202563 lambda!202560))))

(assert (=> bs!1078952 (= (= lt!1833383 lt!1833107) (= lambda!202563 lambda!202557))))

(assert (=> bs!1078946 (= (= lt!1833383 lt!1833107) (= lambda!202563 lambda!202558))))

(assert (=> bs!1078948 (= (= lt!1833383 lt!1833337) (= lambda!202563 lambda!202555))))

(assert (=> b!4671422 true))

(declare-fun bs!1078953 () Bool)

(declare-fun d!1485506 () Bool)

(assert (= bs!1078953 (and d!1485506 b!4671416)))

(declare-fun lambda!202564 () Int)

(declare-fun lt!1833390 () ListMap!4685)

(assert (=> bs!1078953 (= (= lt!1833390 lt!1833358) (= lambda!202564 lambda!202559))))

(declare-fun bs!1078954 () Bool)

(assert (= bs!1078954 (and d!1485506 b!4671422)))

(assert (=> bs!1078954 (= (= lt!1833390 lt!1833383) (= lambda!202564 lambda!202563))))

(assert (=> bs!1078954 (= (= lt!1833390 lt!1833105) (= lambda!202564 lambda!202562))))

(declare-fun bs!1078955 () Bool)

(assert (= bs!1078955 (and d!1485506 d!1485484)))

(assert (=> bs!1078955 (= (= lt!1833390 lt!1833344) (= lambda!202564 lambda!202556))))

(declare-fun bs!1078956 () Bool)

(assert (= bs!1078956 (and d!1485506 b!4671409)))

(assert (=> bs!1078956 (= (= lt!1833390 lt!1833106) (= lambda!202564 lambda!202554))))

(declare-fun bs!1078957 () Bool)

(assert (= bs!1078957 (and d!1485506 b!4671423)))

(assert (=> bs!1078957 (= (= lt!1833390 lt!1833105) (= lambda!202564 lambda!202561))))

(declare-fun bs!1078958 () Bool)

(assert (= bs!1078958 (and d!1485506 b!4671410)))

(assert (=> bs!1078958 (= (= lt!1833390 lt!1833106) (= lambda!202564 lambda!202553))))

(declare-fun bs!1078959 () Bool)

(assert (= bs!1078959 (and d!1485506 d!1485500)))

(assert (=> bs!1078959 (= (= lt!1833390 lt!1833365) (= lambda!202564 lambda!202560))))

(declare-fun bs!1078960 () Bool)

(assert (= bs!1078960 (and d!1485506 b!4671417)))

(assert (=> bs!1078960 (= (= lt!1833390 lt!1833107) (= lambda!202564 lambda!202557))))

(assert (=> bs!1078953 (= (= lt!1833390 lt!1833107) (= lambda!202564 lambda!202558))))

(assert (=> bs!1078956 (= (= lt!1833390 lt!1833337) (= lambda!202564 lambda!202555))))

(assert (=> d!1485506 true))

(declare-fun e!2915204 () Bool)

(assert (=> d!1485506 e!2915204))

(declare-fun res!1966671 () Bool)

(assert (=> d!1485506 (=> (not res!1966671) (not e!2915204))))

(assert (=> d!1485506 (= res!1966671 (forall!11112 (t!359321 l!12991) lambda!202564))))

(declare-fun e!2915202 () ListMap!4685)

(assert (=> d!1485506 (= lt!1833390 e!2915202)))

(declare-fun c!799651 () Bool)

(assert (=> d!1485506 (= c!799651 ((_ is Nil!52059) (t!359321 l!12991)))))

(assert (=> d!1485506 (noDuplicateKeys!1712 (t!359321 l!12991))))

(assert (=> d!1485506 (= (addToMapMapFromBucket!1151 (t!359321 l!12991) lt!1833105) lt!1833390)))

(assert (=> b!4671422 (= e!2915202 lt!1833383)))

(declare-fun lt!1833373 () ListMap!4685)

(assert (=> b!4671422 (= lt!1833373 (+!2040 lt!1833105 (h!58239 (t!359321 l!12991))))))

(assert (=> b!4671422 (= lt!1833383 (addToMapMapFromBucket!1151 (t!359321 (t!359321 l!12991)) (+!2040 lt!1833105 (h!58239 (t!359321 l!12991)))))))

(declare-fun lt!1833389 () Unit!121150)

(declare-fun call!326491 () Unit!121150)

(assert (=> b!4671422 (= lt!1833389 call!326491)))

(declare-fun call!326492 () Bool)

(assert (=> b!4671422 call!326492))

(declare-fun lt!1833391 () Unit!121150)

(assert (=> b!4671422 (= lt!1833391 lt!1833389)))

(assert (=> b!4671422 (forall!11112 (toList!5320 lt!1833373) lambda!202563)))

(declare-fun lt!1833386 () Unit!121150)

(declare-fun Unit!121207 () Unit!121150)

(assert (=> b!4671422 (= lt!1833386 Unit!121207)))

(assert (=> b!4671422 (forall!11112 (t!359321 (t!359321 l!12991)) lambda!202563)))

(declare-fun lt!1833381 () Unit!121150)

(declare-fun Unit!121208 () Unit!121150)

(assert (=> b!4671422 (= lt!1833381 Unit!121208)))

(declare-fun lt!1833376 () Unit!121150)

(declare-fun Unit!121209 () Unit!121150)

(assert (=> b!4671422 (= lt!1833376 Unit!121209)))

(declare-fun lt!1833375 () Unit!121150)

(assert (=> b!4671422 (= lt!1833375 (forallContained!3316 (toList!5320 lt!1833373) lambda!202563 (h!58239 (t!359321 l!12991))))))

(assert (=> b!4671422 (contains!15256 lt!1833373 (_1!29918 (h!58239 (t!359321 l!12991))))))

(declare-fun lt!1833379 () Unit!121150)

(declare-fun Unit!121210 () Unit!121150)

(assert (=> b!4671422 (= lt!1833379 Unit!121210)))

(assert (=> b!4671422 (contains!15256 lt!1833383 (_1!29918 (h!58239 (t!359321 l!12991))))))

(declare-fun lt!1833388 () Unit!121150)

(declare-fun Unit!121211 () Unit!121150)

(assert (=> b!4671422 (= lt!1833388 Unit!121211)))

(assert (=> b!4671422 (forall!11112 (t!359321 l!12991) lambda!202563)))

(declare-fun lt!1833378 () Unit!121150)

(declare-fun Unit!121212 () Unit!121150)

(assert (=> b!4671422 (= lt!1833378 Unit!121212)))

(assert (=> b!4671422 (forall!11112 (toList!5320 lt!1833373) lambda!202563)))

(declare-fun lt!1833374 () Unit!121150)

(declare-fun Unit!121213 () Unit!121150)

(assert (=> b!4671422 (= lt!1833374 Unit!121213)))

(declare-fun lt!1833382 () Unit!121150)

(declare-fun Unit!121214 () Unit!121150)

(assert (=> b!4671422 (= lt!1833382 Unit!121214)))

(declare-fun lt!1833377 () Unit!121150)

(assert (=> b!4671422 (= lt!1833377 (addForallContainsKeyThenBeforeAdding!633 lt!1833105 lt!1833383 (_1!29918 (h!58239 (t!359321 l!12991))) (_2!29918 (h!58239 (t!359321 l!12991)))))))

(assert (=> b!4671422 (forall!11112 (toList!5320 lt!1833105) lambda!202563)))

(declare-fun lt!1833392 () Unit!121150)

(assert (=> b!4671422 (= lt!1833392 lt!1833377)))

(assert (=> b!4671422 (forall!11112 (toList!5320 lt!1833105) lambda!202563)))

(declare-fun lt!1833385 () Unit!121150)

(declare-fun Unit!121215 () Unit!121150)

(assert (=> b!4671422 (= lt!1833385 Unit!121215)))

(declare-fun res!1966672 () Bool)

(assert (=> b!4671422 (= res!1966672 (forall!11112 (t!359321 l!12991) lambda!202563))))

(declare-fun e!2915203 () Bool)

(assert (=> b!4671422 (=> (not res!1966672) (not e!2915203))))

(assert (=> b!4671422 e!2915203))

(declare-fun lt!1833384 () Unit!121150)

(declare-fun Unit!121216 () Unit!121150)

(assert (=> b!4671422 (= lt!1833384 Unit!121216)))

(declare-fun bm!326485 () Bool)

(assert (=> bm!326485 (= call!326492 (forall!11112 (toList!5320 lt!1833105) (ite c!799651 lambda!202561 lambda!202562)))))

(declare-fun bm!326486 () Bool)

(declare-fun call!326490 () Bool)

(assert (=> bm!326486 (= call!326490 (forall!11112 (toList!5320 lt!1833105) (ite c!799651 lambda!202561 lambda!202563)))))

(assert (=> b!4671423 (= e!2915202 lt!1833105)))

(declare-fun lt!1833393 () Unit!121150)

(assert (=> b!4671423 (= lt!1833393 call!326491)))

(assert (=> b!4671423 call!326492))

(declare-fun lt!1833380 () Unit!121150)

(assert (=> b!4671423 (= lt!1833380 lt!1833393)))

(assert (=> b!4671423 call!326490))

(declare-fun lt!1833387 () Unit!121150)

(declare-fun Unit!121217 () Unit!121150)

(assert (=> b!4671423 (= lt!1833387 Unit!121217)))

(declare-fun b!4671424 () Bool)

(declare-fun res!1966670 () Bool)

(assert (=> b!4671424 (=> (not res!1966670) (not e!2915204))))

(assert (=> b!4671424 (= res!1966670 (forall!11112 (toList!5320 lt!1833105) lambda!202564))))

(declare-fun b!4671425 () Bool)

(assert (=> b!4671425 (= e!2915203 call!326490)))

(declare-fun b!4671426 () Bool)

(assert (=> b!4671426 (= e!2915204 (invariantList!1342 (toList!5320 lt!1833390)))))

(declare-fun bm!326487 () Bool)

(assert (=> bm!326487 (= call!326491 (lemmaContainsAllItsOwnKeys!634 lt!1833105))))

(assert (= (and d!1485506 c!799651) b!4671423))

(assert (= (and d!1485506 (not c!799651)) b!4671422))

(assert (= (and b!4671422 res!1966672) b!4671425))

(assert (= (or b!4671423 b!4671425) bm!326486))

(assert (= (or b!4671423 b!4671422) bm!326485))

(assert (= (or b!4671423 b!4671422) bm!326487))

(assert (= (and d!1485506 res!1966671) b!4671424))

(assert (= (and b!4671424 res!1966670) b!4671426))

(declare-fun m!5565173 () Bool)

(assert (=> b!4671422 m!5565173))

(declare-fun m!5565175 () Bool)

(assert (=> b!4671422 m!5565175))

(declare-fun m!5565177 () Bool)

(assert (=> b!4671422 m!5565177))

(declare-fun m!5565179 () Bool)

(assert (=> b!4671422 m!5565179))

(assert (=> b!4671422 m!5565175))

(declare-fun m!5565181 () Bool)

(assert (=> b!4671422 m!5565181))

(assert (=> b!4671422 m!5565177))

(declare-fun m!5565183 () Bool)

(assert (=> b!4671422 m!5565183))

(declare-fun m!5565185 () Bool)

(assert (=> b!4671422 m!5565185))

(declare-fun m!5565187 () Bool)

(assert (=> b!4671422 m!5565187))

(declare-fun m!5565189 () Bool)

(assert (=> b!4671422 m!5565189))

(assert (=> b!4671422 m!5565189))

(assert (=> b!4671422 m!5565185))

(declare-fun m!5565191 () Bool)

(assert (=> b!4671422 m!5565191))

(declare-fun m!5565193 () Bool)

(assert (=> bm!326485 m!5565193))

(declare-fun m!5565195 () Bool)

(assert (=> bm!326487 m!5565195))

(declare-fun m!5565197 () Bool)

(assert (=> bm!326486 m!5565197))

(declare-fun m!5565199 () Bool)

(assert (=> b!4671426 m!5565199))

(declare-fun m!5565201 () Bool)

(assert (=> b!4671424 m!5565201))

(declare-fun m!5565203 () Bool)

(assert (=> d!1485506 m!5565203))

(assert (=> d!1485506 m!5564797))

(assert (=> b!4671301 d!1485506))

(declare-fun d!1485508 () Bool)

(declare-fun e!2915205 () Bool)

(assert (=> d!1485508 e!2915205))

(declare-fun res!1966673 () Bool)

(assert (=> d!1485508 (=> (not res!1966673) (not e!2915205))))

(declare-fun lt!1833394 () ListMap!4685)

(assert (=> d!1485508 (= res!1966673 (not (contains!15256 lt!1833394 key!4532)))))

(assert (=> d!1485508 (= lt!1833394 (ListMap!4686 (removePresrvNoDuplicatedKeys!317 (toList!5320 (addToMapMapFromBucket!1151 l!12991 lhm!57)) key!4532)))))

(assert (=> d!1485508 (= (-!640 (addToMapMapFromBucket!1151 l!12991 lhm!57) key!4532) lt!1833394)))

(declare-fun b!4671427 () Bool)

(assert (=> b!4671427 (= e!2915205 (= ((_ map and) (content!9077 (keys!18502 (addToMapMapFromBucket!1151 l!12991 lhm!57))) ((_ map not) (store ((as const (Array K!13430 Bool)) false) key!4532 true))) (content!9077 (keys!18502 lt!1833394))))))

(assert (= (and d!1485508 res!1966673) b!4671427))

(declare-fun m!5565205 () Bool)

(assert (=> d!1485508 m!5565205))

(declare-fun m!5565207 () Bool)

(assert (=> d!1485508 m!5565207))

(declare-fun m!5565209 () Bool)

(assert (=> b!4671427 m!5565209))

(declare-fun m!5565211 () Bool)

(assert (=> b!4671427 m!5565211))

(declare-fun m!5565213 () Bool)

(assert (=> b!4671427 m!5565213))

(assert (=> b!4671427 m!5564849))

(assert (=> b!4671427 m!5565209))

(declare-fun m!5565215 () Bool)

(assert (=> b!4671427 m!5565215))

(assert (=> b!4671427 m!5564789))

(assert (=> b!4671427 m!5565211))

(assert (=> b!4671301 d!1485508))

(declare-fun bs!1078961 () Bool)

(declare-fun b!4671429 () Bool)

(assert (= bs!1078961 (and b!4671429 b!4671416)))

(declare-fun lambda!202565 () Int)

(assert (=> bs!1078961 (= (= lhm!57 lt!1833358) (= lambda!202565 lambda!202559))))

(declare-fun bs!1078962 () Bool)

(assert (= bs!1078962 (and b!4671429 b!4671422)))

(assert (=> bs!1078962 (= (= lhm!57 lt!1833383) (= lambda!202565 lambda!202563))))

(declare-fun bs!1078963 () Bool)

(assert (= bs!1078963 (and b!4671429 d!1485484)))

(assert (=> bs!1078963 (= (= lhm!57 lt!1833344) (= lambda!202565 lambda!202556))))

(declare-fun bs!1078964 () Bool)

(assert (= bs!1078964 (and b!4671429 b!4671409)))

(assert (=> bs!1078964 (= (= lhm!57 lt!1833106) (= lambda!202565 lambda!202554))))

(declare-fun bs!1078965 () Bool)

(assert (= bs!1078965 (and b!4671429 b!4671423)))

(assert (=> bs!1078965 (= (= lhm!57 lt!1833105) (= lambda!202565 lambda!202561))))

(declare-fun bs!1078966 () Bool)

(assert (= bs!1078966 (and b!4671429 b!4671410)))

(assert (=> bs!1078966 (= (= lhm!57 lt!1833106) (= lambda!202565 lambda!202553))))

(declare-fun bs!1078967 () Bool)

(assert (= bs!1078967 (and b!4671429 d!1485506)))

(assert (=> bs!1078967 (= (= lhm!57 lt!1833390) (= lambda!202565 lambda!202564))))

(assert (=> bs!1078962 (= (= lhm!57 lt!1833105) (= lambda!202565 lambda!202562))))

(declare-fun bs!1078968 () Bool)

(assert (= bs!1078968 (and b!4671429 d!1485500)))

(assert (=> bs!1078968 (= (= lhm!57 lt!1833365) (= lambda!202565 lambda!202560))))

(declare-fun bs!1078969 () Bool)

(assert (= bs!1078969 (and b!4671429 b!4671417)))

(assert (=> bs!1078969 (= (= lhm!57 lt!1833107) (= lambda!202565 lambda!202557))))

(assert (=> bs!1078961 (= (= lhm!57 lt!1833107) (= lambda!202565 lambda!202558))))

(assert (=> bs!1078964 (= (= lhm!57 lt!1833337) (= lambda!202565 lambda!202555))))

(assert (=> b!4671429 true))

(declare-fun bs!1078970 () Bool)

(declare-fun b!4671428 () Bool)

(assert (= bs!1078970 (and b!4671428 b!4671416)))

(declare-fun lambda!202566 () Int)

(assert (=> bs!1078970 (= (= lhm!57 lt!1833358) (= lambda!202566 lambda!202559))))

(declare-fun bs!1078971 () Bool)

(assert (= bs!1078971 (and b!4671428 b!4671422)))

(assert (=> bs!1078971 (= (= lhm!57 lt!1833383) (= lambda!202566 lambda!202563))))

(declare-fun bs!1078972 () Bool)

(assert (= bs!1078972 (and b!4671428 d!1485484)))

(assert (=> bs!1078972 (= (= lhm!57 lt!1833344) (= lambda!202566 lambda!202556))))

(declare-fun bs!1078973 () Bool)

(assert (= bs!1078973 (and b!4671428 b!4671423)))

(assert (=> bs!1078973 (= (= lhm!57 lt!1833105) (= lambda!202566 lambda!202561))))

(declare-fun bs!1078974 () Bool)

(assert (= bs!1078974 (and b!4671428 b!4671410)))

(assert (=> bs!1078974 (= (= lhm!57 lt!1833106) (= lambda!202566 lambda!202553))))

(declare-fun bs!1078975 () Bool)

(assert (= bs!1078975 (and b!4671428 d!1485506)))

(assert (=> bs!1078975 (= (= lhm!57 lt!1833390) (= lambda!202566 lambda!202564))))

(assert (=> bs!1078971 (= (= lhm!57 lt!1833105) (= lambda!202566 lambda!202562))))

(declare-fun bs!1078976 () Bool)

(assert (= bs!1078976 (and b!4671428 d!1485500)))

(assert (=> bs!1078976 (= (= lhm!57 lt!1833365) (= lambda!202566 lambda!202560))))

(declare-fun bs!1078977 () Bool)

(assert (= bs!1078977 (and b!4671428 b!4671417)))

(assert (=> bs!1078977 (= (= lhm!57 lt!1833107) (= lambda!202566 lambda!202557))))

(declare-fun bs!1078978 () Bool)

(assert (= bs!1078978 (and b!4671428 b!4671409)))

(assert (=> bs!1078978 (= (= lhm!57 lt!1833106) (= lambda!202566 lambda!202554))))

(declare-fun bs!1078979 () Bool)

(assert (= bs!1078979 (and b!4671428 b!4671429)))

(assert (=> bs!1078979 (= lambda!202566 lambda!202565)))

(assert (=> bs!1078970 (= (= lhm!57 lt!1833107) (= lambda!202566 lambda!202558))))

(assert (=> bs!1078978 (= (= lhm!57 lt!1833337) (= lambda!202566 lambda!202555))))

(assert (=> b!4671428 true))

(declare-fun lt!1833405 () ListMap!4685)

(declare-fun lambda!202567 () Int)

(assert (=> bs!1078970 (= (= lt!1833405 lt!1833358) (= lambda!202567 lambda!202559))))

(assert (=> bs!1078971 (= (= lt!1833405 lt!1833383) (= lambda!202567 lambda!202563))))

(assert (=> bs!1078972 (= (= lt!1833405 lt!1833344) (= lambda!202567 lambda!202556))))

(assert (=> bs!1078973 (= (= lt!1833405 lt!1833105) (= lambda!202567 lambda!202561))))

(assert (=> bs!1078974 (= (= lt!1833405 lt!1833106) (= lambda!202567 lambda!202553))))

(assert (=> bs!1078975 (= (= lt!1833405 lt!1833390) (= lambda!202567 lambda!202564))))

(assert (=> b!4671428 (= (= lt!1833405 lhm!57) (= lambda!202567 lambda!202566))))

(assert (=> bs!1078971 (= (= lt!1833405 lt!1833105) (= lambda!202567 lambda!202562))))

(assert (=> bs!1078976 (= (= lt!1833405 lt!1833365) (= lambda!202567 lambda!202560))))

(assert (=> bs!1078977 (= (= lt!1833405 lt!1833107) (= lambda!202567 lambda!202557))))

(assert (=> bs!1078978 (= (= lt!1833405 lt!1833106) (= lambda!202567 lambda!202554))))

(assert (=> bs!1078979 (= (= lt!1833405 lhm!57) (= lambda!202567 lambda!202565))))

(assert (=> bs!1078970 (= (= lt!1833405 lt!1833107) (= lambda!202567 lambda!202558))))

(assert (=> bs!1078978 (= (= lt!1833405 lt!1833337) (= lambda!202567 lambda!202555))))

(assert (=> b!4671428 true))

(declare-fun bs!1078980 () Bool)

(declare-fun d!1485510 () Bool)

(assert (= bs!1078980 (and d!1485510 b!4671416)))

(declare-fun lt!1833412 () ListMap!4685)

(declare-fun lambda!202568 () Int)

(assert (=> bs!1078980 (= (= lt!1833412 lt!1833358) (= lambda!202568 lambda!202559))))

(declare-fun bs!1078981 () Bool)

(assert (= bs!1078981 (and d!1485510 b!4671422)))

(assert (=> bs!1078981 (= (= lt!1833412 lt!1833383) (= lambda!202568 lambda!202563))))

(declare-fun bs!1078982 () Bool)

(assert (= bs!1078982 (and d!1485510 d!1485484)))

(assert (=> bs!1078982 (= (= lt!1833412 lt!1833344) (= lambda!202568 lambda!202556))))

(declare-fun bs!1078983 () Bool)

(assert (= bs!1078983 (and d!1485510 b!4671423)))

(assert (=> bs!1078983 (= (= lt!1833412 lt!1833105) (= lambda!202568 lambda!202561))))

(declare-fun bs!1078984 () Bool)

(assert (= bs!1078984 (and d!1485510 b!4671410)))

(assert (=> bs!1078984 (= (= lt!1833412 lt!1833106) (= lambda!202568 lambda!202553))))

(declare-fun bs!1078985 () Bool)

(assert (= bs!1078985 (and d!1485510 d!1485506)))

(assert (=> bs!1078985 (= (= lt!1833412 lt!1833390) (= lambda!202568 lambda!202564))))

(declare-fun bs!1078986 () Bool)

(assert (= bs!1078986 (and d!1485510 b!4671428)))

(assert (=> bs!1078986 (= (= lt!1833412 lhm!57) (= lambda!202568 lambda!202566))))

(assert (=> bs!1078981 (= (= lt!1833412 lt!1833105) (= lambda!202568 lambda!202562))))

(assert (=> bs!1078986 (= (= lt!1833412 lt!1833405) (= lambda!202568 lambda!202567))))

(declare-fun bs!1078987 () Bool)

(assert (= bs!1078987 (and d!1485510 d!1485500)))

(assert (=> bs!1078987 (= (= lt!1833412 lt!1833365) (= lambda!202568 lambda!202560))))

(declare-fun bs!1078988 () Bool)

(assert (= bs!1078988 (and d!1485510 b!4671417)))

(assert (=> bs!1078988 (= (= lt!1833412 lt!1833107) (= lambda!202568 lambda!202557))))

(declare-fun bs!1078989 () Bool)

(assert (= bs!1078989 (and d!1485510 b!4671409)))

(assert (=> bs!1078989 (= (= lt!1833412 lt!1833106) (= lambda!202568 lambda!202554))))

(declare-fun bs!1078990 () Bool)

(assert (= bs!1078990 (and d!1485510 b!4671429)))

(assert (=> bs!1078990 (= (= lt!1833412 lhm!57) (= lambda!202568 lambda!202565))))

(assert (=> bs!1078980 (= (= lt!1833412 lt!1833107) (= lambda!202568 lambda!202558))))

(assert (=> bs!1078989 (= (= lt!1833412 lt!1833337) (= lambda!202568 lambda!202555))))

(assert (=> d!1485510 true))

(declare-fun e!2915208 () Bool)

(assert (=> d!1485510 e!2915208))

(declare-fun res!1966675 () Bool)

(assert (=> d!1485510 (=> (not res!1966675) (not e!2915208))))

(assert (=> d!1485510 (= res!1966675 (forall!11112 l!12991 lambda!202568))))

(declare-fun e!2915206 () ListMap!4685)

(assert (=> d!1485510 (= lt!1833412 e!2915206)))

(declare-fun c!799652 () Bool)

(assert (=> d!1485510 (= c!799652 ((_ is Nil!52059) l!12991))))

(assert (=> d!1485510 (noDuplicateKeys!1712 l!12991)))

(assert (=> d!1485510 (= (addToMapMapFromBucket!1151 l!12991 lhm!57) lt!1833412)))

(assert (=> b!4671428 (= e!2915206 lt!1833405)))

(declare-fun lt!1833395 () ListMap!4685)

(assert (=> b!4671428 (= lt!1833395 (+!2040 lhm!57 (h!58239 l!12991)))))

(assert (=> b!4671428 (= lt!1833405 (addToMapMapFromBucket!1151 (t!359321 l!12991) (+!2040 lhm!57 (h!58239 l!12991))))))

(declare-fun lt!1833411 () Unit!121150)

(declare-fun call!326494 () Unit!121150)

(assert (=> b!4671428 (= lt!1833411 call!326494)))

(declare-fun call!326495 () Bool)

(assert (=> b!4671428 call!326495))

(declare-fun lt!1833413 () Unit!121150)

(assert (=> b!4671428 (= lt!1833413 lt!1833411)))

(assert (=> b!4671428 (forall!11112 (toList!5320 lt!1833395) lambda!202567)))

(declare-fun lt!1833408 () Unit!121150)

(declare-fun Unit!121229 () Unit!121150)

(assert (=> b!4671428 (= lt!1833408 Unit!121229)))

(assert (=> b!4671428 (forall!11112 (t!359321 l!12991) lambda!202567)))

(declare-fun lt!1833403 () Unit!121150)

(declare-fun Unit!121230 () Unit!121150)

(assert (=> b!4671428 (= lt!1833403 Unit!121230)))

(declare-fun lt!1833398 () Unit!121150)

(declare-fun Unit!121231 () Unit!121150)

(assert (=> b!4671428 (= lt!1833398 Unit!121231)))

(declare-fun lt!1833397 () Unit!121150)

(assert (=> b!4671428 (= lt!1833397 (forallContained!3316 (toList!5320 lt!1833395) lambda!202567 (h!58239 l!12991)))))

(assert (=> b!4671428 (contains!15256 lt!1833395 (_1!29918 (h!58239 l!12991)))))

(declare-fun lt!1833401 () Unit!121150)

(declare-fun Unit!121232 () Unit!121150)

(assert (=> b!4671428 (= lt!1833401 Unit!121232)))

(assert (=> b!4671428 (contains!15256 lt!1833405 (_1!29918 (h!58239 l!12991)))))

(declare-fun lt!1833410 () Unit!121150)

(declare-fun Unit!121233 () Unit!121150)

(assert (=> b!4671428 (= lt!1833410 Unit!121233)))

(assert (=> b!4671428 (forall!11112 l!12991 lambda!202567)))

(declare-fun lt!1833400 () Unit!121150)

(declare-fun Unit!121234 () Unit!121150)

(assert (=> b!4671428 (= lt!1833400 Unit!121234)))

(assert (=> b!4671428 (forall!11112 (toList!5320 lt!1833395) lambda!202567)))

(declare-fun lt!1833396 () Unit!121150)

(declare-fun Unit!121235 () Unit!121150)

(assert (=> b!4671428 (= lt!1833396 Unit!121235)))

(declare-fun lt!1833404 () Unit!121150)

(declare-fun Unit!121236 () Unit!121150)

(assert (=> b!4671428 (= lt!1833404 Unit!121236)))

(declare-fun lt!1833399 () Unit!121150)

(assert (=> b!4671428 (= lt!1833399 (addForallContainsKeyThenBeforeAdding!633 lhm!57 lt!1833405 (_1!29918 (h!58239 l!12991)) (_2!29918 (h!58239 l!12991))))))

(assert (=> b!4671428 (forall!11112 (toList!5320 lhm!57) lambda!202567)))

(declare-fun lt!1833414 () Unit!121150)

(assert (=> b!4671428 (= lt!1833414 lt!1833399)))

(assert (=> b!4671428 (forall!11112 (toList!5320 lhm!57) lambda!202567)))

(declare-fun lt!1833407 () Unit!121150)

(declare-fun Unit!121237 () Unit!121150)

(assert (=> b!4671428 (= lt!1833407 Unit!121237)))

(declare-fun res!1966676 () Bool)

(assert (=> b!4671428 (= res!1966676 (forall!11112 l!12991 lambda!202567))))

(declare-fun e!2915207 () Bool)

(assert (=> b!4671428 (=> (not res!1966676) (not e!2915207))))

(assert (=> b!4671428 e!2915207))

(declare-fun lt!1833406 () Unit!121150)

(declare-fun Unit!121238 () Unit!121150)

(assert (=> b!4671428 (= lt!1833406 Unit!121238)))

(declare-fun bm!326488 () Bool)

(assert (=> bm!326488 (= call!326495 (forall!11112 (toList!5320 lhm!57) (ite c!799652 lambda!202565 lambda!202566)))))

(declare-fun bm!326489 () Bool)

(declare-fun call!326493 () Bool)

(assert (=> bm!326489 (= call!326493 (forall!11112 (toList!5320 lhm!57) (ite c!799652 lambda!202565 lambda!202567)))))

(assert (=> b!4671429 (= e!2915206 lhm!57)))

(declare-fun lt!1833415 () Unit!121150)

(assert (=> b!4671429 (= lt!1833415 call!326494)))

(assert (=> b!4671429 call!326495))

(declare-fun lt!1833402 () Unit!121150)

(assert (=> b!4671429 (= lt!1833402 lt!1833415)))

(assert (=> b!4671429 call!326493))

(declare-fun lt!1833409 () Unit!121150)

(declare-fun Unit!121239 () Unit!121150)

(assert (=> b!4671429 (= lt!1833409 Unit!121239)))

(declare-fun b!4671430 () Bool)

(declare-fun res!1966674 () Bool)

(assert (=> b!4671430 (=> (not res!1966674) (not e!2915208))))

(assert (=> b!4671430 (= res!1966674 (forall!11112 (toList!5320 lhm!57) lambda!202568))))

(declare-fun b!4671431 () Bool)

(assert (=> b!4671431 (= e!2915207 call!326493)))

(declare-fun b!4671432 () Bool)

(assert (=> b!4671432 (= e!2915208 (invariantList!1342 (toList!5320 lt!1833412)))))

(declare-fun bm!326490 () Bool)

(assert (=> bm!326490 (= call!326494 (lemmaContainsAllItsOwnKeys!634 lhm!57))))

(assert (= (and d!1485510 c!799652) b!4671429))

(assert (= (and d!1485510 (not c!799652)) b!4671428))

(assert (= (and b!4671428 res!1966676) b!4671431))

(assert (= (or b!4671429 b!4671431) bm!326489))

(assert (= (or b!4671429 b!4671428) bm!326488))

(assert (= (or b!4671429 b!4671428) bm!326490))

(assert (= (and d!1485510 res!1966675) b!4671430))

(assert (= (and b!4671430 res!1966674) b!4671432))

(declare-fun m!5565217 () Bool)

(assert (=> b!4671428 m!5565217))

(declare-fun m!5565219 () Bool)

(assert (=> b!4671428 m!5565219))

(assert (=> b!4671428 m!5564765))

(declare-fun m!5565221 () Bool)

(assert (=> b!4671428 m!5565221))

(assert (=> b!4671428 m!5565219))

(declare-fun m!5565223 () Bool)

(assert (=> b!4671428 m!5565223))

(assert (=> b!4671428 m!5564765))

(declare-fun m!5565225 () Bool)

(assert (=> b!4671428 m!5565225))

(declare-fun m!5565227 () Bool)

(assert (=> b!4671428 m!5565227))

(declare-fun m!5565229 () Bool)

(assert (=> b!4671428 m!5565229))

(declare-fun m!5565231 () Bool)

(assert (=> b!4671428 m!5565231))

(assert (=> b!4671428 m!5565231))

(assert (=> b!4671428 m!5565227))

(declare-fun m!5565233 () Bool)

(assert (=> b!4671428 m!5565233))

(declare-fun m!5565235 () Bool)

(assert (=> bm!326488 m!5565235))

(declare-fun m!5565237 () Bool)

(assert (=> bm!326490 m!5565237))

(declare-fun m!5565239 () Bool)

(assert (=> bm!326489 m!5565239))

(declare-fun m!5565241 () Bool)

(assert (=> b!4671432 m!5565241))

(declare-fun m!5565243 () Bool)

(assert (=> b!4671430 m!5565243))

(declare-fun m!5565245 () Bool)

(assert (=> d!1485510 m!5565245))

(assert (=> d!1485510 m!5564777))

(assert (=> b!4671301 d!1485510))

(declare-fun tp!1343956 () Bool)

(declare-fun e!2915211 () Bool)

(declare-fun b!4671437 () Bool)

(assert (=> b!4671437 (= e!2915211 (and tp_is_empty!30141 tp_is_empty!30143 tp!1343956))))

(assert (=> b!4671298 (= tp!1343949 e!2915211)))

(assert (= (and b!4671298 ((_ is Cons!52059) (t!359321 l!12991))) b!4671437))

(declare-fun b!4671438 () Bool)

(declare-fun e!2915212 () Bool)

(declare-fun tp!1343957 () Bool)

(assert (=> b!4671438 (= e!2915212 (and tp_is_empty!30141 tp_is_empty!30143 tp!1343957))))

(assert (=> b!4671297 (= tp!1343948 e!2915212)))

(assert (= (and b!4671297 ((_ is Cons!52059) (toList!5320 lhm!57))) b!4671438))

(check-sat tp_is_empty!30143 (not bm!326483) (not b!4671350) (not d!1485502) (not bm!326482) (not b!4671437) (not d!1485466) (not b!4671430) (not bm!326489) (not d!1485506) (not b!4671411) (not b!4671418) (not b!4671421) (not b!4671354) (not b!4671427) (not b!4671317) (not b!4671351) (not b!4671438) tp_is_empty!30141 (not d!1485476) (not b!4671319) (not b!4671424) (not b!4671328) (not d!1485510) (not d!1485500) (not bm!326485) (not d!1485478) (not b!4671320) (not b!4671426) (not bm!326481) (not bm!326488) (not bm!326480) (not b!4671355) (not d!1485508) (not b!4671409) (not b!4671356) (not b!4671428) (not b!4671420) (not b!4671318) (not b!4671432) (not b!4671413) (not bm!326479) (not bm!326487) (not d!1485458) (not b!4671335) (not b!4671353) (not b!4671416) (not d!1485504) (not bm!326490) (not d!1485484) (not b!4671422) (not d!1485482) (not bm!326484) (not bm!326486) (not d!1485460))
(check-sat)
