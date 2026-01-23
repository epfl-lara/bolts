; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231116 () Bool)

(assert start!231116)

(declare-fun b!2358140 () Bool)

(declare-fun b_free!70357 () Bool)

(declare-fun b_next!71061 () Bool)

(assert (=> b!2358140 (= b_free!70357 (not b_next!71061))))

(declare-fun tp!753993 () Bool)

(declare-fun b_and!185277 () Bool)

(assert (=> b!2358140 (= tp!753993 b_and!185277)))

(declare-fun b!2358135 () Bool)

(declare-fun b_free!70359 () Bool)

(declare-fun b_next!71063 () Bool)

(assert (=> b!2358135 (= b_free!70359 (not b_next!71063))))

(declare-fun tp!753991 () Bool)

(declare-fun b_and!185279 () Bool)

(assert (=> b!2358135 (= tp!753991 b_and!185279)))

(declare-fun res!1000917 () Bool)

(declare-fun e!1506097 () Bool)

(assert (=> start!231116 (=> (not res!1000917) (not e!1506097))))

(declare-datatypes ((V!5139 0))(
  ( (V!5140 (val!8173 Int)) )
))
(declare-datatypes ((K!4937 0))(
  ( (K!4938 (val!8174 Int)) )
))
(declare-datatypes ((Hashable!3136 0))(
  ( (HashableExt!3135 (__x!18436 Int)) )
))
(declare-datatypes ((tuple2!27602 0))(
  ( (tuple2!27603 (_1!16342 K!4937) (_2!16342 V!5139)) )
))
(declare-datatypes ((List!27970 0))(
  ( (Nil!27872) (Cons!27872 (h!33273 tuple2!27602) (t!207837 List!27970)) )
))
(declare-datatypes ((array!11319 0))(
  ( (array!11320 (arr!5042 (Array (_ BitVec 32) List!27970)) (size!22066 (_ BitVec 32))) )
))
(declare-datatypes ((array!11321 0))(
  ( (array!11322 (arr!5043 (Array (_ BitVec 32) (_ BitVec 64))) (size!22067 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6452 0))(
  ( (LongMapFixedSize!6453 (defaultEntry!3594 Int) (mask!8115 (_ BitVec 32)) (extraKeys!3474 (_ BitVec 32)) (zeroValue!3484 List!27970) (minValue!3484 List!27970) (_size!6499 (_ BitVec 32)) (_keys!3523 array!11321) (_values!3506 array!11319) (_vacant!3287 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12721 0))(
  ( (Cell!12722 (v!30782 LongMapFixedSize!6452)) )
))
(declare-datatypes ((MutLongMap!3226 0))(
  ( (LongMap!3226 (underlying!6657 Cell!12721)) (MutLongMapExt!3225 (__x!18437 Int)) )
))
(declare-datatypes ((Cell!12723 0))(
  ( (Cell!12724 (v!30783 MutLongMap!3226)) )
))
(declare-datatypes ((MutableMap!3136 0))(
  ( (MutableMapExt!3135 (__x!18438 Int)) (HashMap!3136 (underlying!6658 Cell!12723) (hashF!5059 Hashable!3136) (_size!6500 (_ BitVec 32)) (defaultValue!3298 Int)) )
))
(declare-fun thiss!47746 () MutableMap!3136)

(declare-fun valid!2416 (MutableMap!3136) Bool)

(assert (=> start!231116 (= res!1000917 (valid!2416 thiss!47746))))

(assert (=> start!231116 e!1506097))

(declare-fun e!1506091 () Bool)

(assert (=> start!231116 e!1506091))

(declare-fun tp_is_empty!11155 () Bool)

(assert (=> start!231116 tp_is_empty!11155))

(declare-fun mapNonEmpty!15068 () Bool)

(declare-fun mapRes!15068 () Bool)

(declare-fun tp!753996 () Bool)

(declare-fun tp!753995 () Bool)

(assert (=> mapNonEmpty!15068 (= mapRes!15068 (and tp!753996 tp!753995))))

(declare-fun mapValue!15068 () List!27970)

(declare-fun mapRest!15068 () (Array (_ BitVec 32) List!27970))

(declare-fun mapKey!15068 () (_ BitVec 32))

(assert (=> mapNonEmpty!15068 (= (arr!5042 (_values!3506 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))))) (store mapRest!15068 mapKey!15068 mapValue!15068))))

(declare-fun b!2358131 () Bool)

(declare-fun e!1506099 () Bool)

(assert (=> b!2358131 (= e!1506097 e!1506099)))

(declare-fun c!374838 () Bool)

(declare-fun key!7176 () K!4937)

(declare-fun contains!4836 (MutableMap!3136 K!4937) Bool)

(assert (=> b!2358131 (= c!374838 (contains!4836 thiss!47746 key!7176))))

(declare-fun lt!863263 () V!5139)

(declare-fun apply!6700 (MutableMap!3136 K!4937) V!5139)

(assert (=> b!2358131 (= lt!863263 (apply!6700 thiss!47746 key!7176))))

(declare-fun b!2358132 () Bool)

(declare-fun dynLambda!12005 (Int K!4937) V!5139)

(declare-fun defaultEntry!3595 (MutableMap!3136) Int)

(assert (=> b!2358132 (= e!1506099 (not (= lt!863263 (dynLambda!12005 (defaultEntry!3595 thiss!47746) key!7176))))))

(declare-fun b!2358133 () Bool)

(declare-fun e!1506100 () Bool)

(declare-fun tp!753992 () Bool)

(assert (=> b!2358133 (= e!1506100 (and tp!753992 mapRes!15068))))

(declare-fun condMapEmpty!15068 () Bool)

(declare-fun mapDefault!15068 () List!27970)

(assert (=> b!2358133 (= condMapEmpty!15068 (= (arr!5042 (_values!3506 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))))) ((as const (Array (_ BitVec 32) List!27970)) mapDefault!15068)))))

(declare-fun b!2358134 () Bool)

(declare-fun e!1506098 () Bool)

(declare-fun e!1506096 () Bool)

(assert (=> b!2358134 (= e!1506098 e!1506096)))

(declare-fun e!1506092 () Bool)

(assert (=> b!2358135 (= e!1506091 (and e!1506092 tp!753991))))

(declare-fun b!2358136 () Bool)

(declare-fun res!1000916 () Bool)

(assert (=> b!2358136 (=> (not res!1000916) (not e!1506097))))

(get-info :version)

(assert (=> b!2358136 (= res!1000916 (not ((_ is MutableMapExt!3135) thiss!47746)))))

(declare-fun b!2358137 () Bool)

(declare-fun e!1506095 () Bool)

(assert (=> b!2358137 (= e!1506096 e!1506095)))

(declare-fun b!2358138 () Bool)

(declare-fun lt!863262 () MutLongMap!3226)

(assert (=> b!2358138 (= e!1506092 (and e!1506098 ((_ is LongMap!3226) lt!863262)))))

(assert (=> b!2358138 (= lt!863262 (v!30783 (underlying!6658 thiss!47746)))))

(declare-fun b!2358139 () Bool)

(declare-fun e!1506094 () Bool)

(declare-datatypes ((Option!5433 0))(
  ( (None!5432) (Some!5432 (v!30784 V!5139)) )
))
(declare-fun lt!863261 () Option!5433)

(declare-fun get!8451 (Option!5433) V!5139)

(assert (=> b!2358139 (= e!1506094 (not (= lt!863263 (get!8451 lt!863261))))))

(declare-fun mapIsEmpty!15068 () Bool)

(assert (=> mapIsEmpty!15068 mapRes!15068))

(declare-fun tp!753994 () Bool)

(declare-fun tp!753990 () Bool)

(declare-fun array_inv!3615 (array!11321) Bool)

(declare-fun array_inv!3616 (array!11319) Bool)

(assert (=> b!2358140 (= e!1506095 (and tp!753993 tp!753994 tp!753990 (array_inv!3615 (_keys!3523 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))))) (array_inv!3616 (_values!3506 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))))) e!1506100))))

(declare-fun b!2358141 () Bool)

(assert (=> b!2358141 (= e!1506099 e!1506094)))

(declare-fun getValueByKey!109 (List!27970 K!4937) Option!5433)

(declare-datatypes ((ListMap!901 0))(
  ( (ListMap!902 (toList!1418 List!27970)) )
))
(declare-fun abstractMap!90 (MutableMap!3136) ListMap!901)

(assert (=> b!2358141 (= lt!863261 (getValueByKey!109 (toList!1418 (abstractMap!90 thiss!47746)) key!7176))))

(declare-fun res!1000918 () Bool)

(declare-fun isDefined!4265 (Option!5433) Bool)

(assert (=> b!2358141 (= res!1000918 (not (isDefined!4265 lt!863261)))))

(assert (=> b!2358141 (=> res!1000918 e!1506094)))

(assert (= (and start!231116 res!1000917) b!2358136))

(assert (= (and b!2358136 res!1000916) b!2358131))

(assert (= (and b!2358131 c!374838) b!2358141))

(assert (= (and b!2358131 (not c!374838)) b!2358132))

(assert (= (and b!2358141 (not res!1000918)) b!2358139))

(assert (= (and b!2358133 condMapEmpty!15068) mapIsEmpty!15068))

(assert (= (and b!2358133 (not condMapEmpty!15068)) mapNonEmpty!15068))

(assert (= b!2358140 b!2358133))

(assert (= b!2358137 b!2358140))

(assert (= b!2358134 b!2358137))

(assert (= (and b!2358138 ((_ is LongMap!3226) (v!30783 (underlying!6658 thiss!47746)))) b!2358134))

(assert (= b!2358135 b!2358138))

(assert (= (and start!231116 ((_ is HashMap!3136) thiss!47746)) b!2358135))

(declare-fun b_lambda!73715 () Bool)

(assert (=> (not b_lambda!73715) (not b!2358132)))

(declare-fun t!207836 () Bool)

(declare-fun tb!138729 () Bool)

(assert (=> (and b!2358135 (= (defaultValue!3298 thiss!47746) (defaultEntry!3595 thiss!47746)) t!207836) tb!138729))

(declare-fun result!169602 () Bool)

(declare-fun tp_is_empty!11157 () Bool)

(assert (=> tb!138729 (= result!169602 tp_is_empty!11157)))

(assert (=> b!2358132 t!207836))

(declare-fun b_and!185281 () Bool)

(assert (= b_and!185279 (and (=> t!207836 result!169602) b_and!185281)))

(declare-fun m!2770869 () Bool)

(assert (=> b!2358131 m!2770869))

(declare-fun m!2770871 () Bool)

(assert (=> b!2358131 m!2770871))

(declare-fun m!2770873 () Bool)

(assert (=> b!2358139 m!2770873))

(declare-fun m!2770875 () Bool)

(assert (=> b!2358141 m!2770875))

(declare-fun m!2770877 () Bool)

(assert (=> b!2358141 m!2770877))

(declare-fun m!2770879 () Bool)

(assert (=> b!2358141 m!2770879))

(declare-fun m!2770881 () Bool)

(assert (=> mapNonEmpty!15068 m!2770881))

(declare-fun m!2770883 () Bool)

(assert (=> start!231116 m!2770883))

(declare-fun m!2770885 () Bool)

(assert (=> b!2358132 m!2770885))

(declare-fun m!2770887 () Bool)

(assert (=> b!2358132 m!2770887))

(declare-fun m!2770889 () Bool)

(assert (=> b!2358140 m!2770889))

(declare-fun m!2770891 () Bool)

(assert (=> b!2358140 m!2770891))

(check-sat (not b_next!71063) (not b!2358133) (not b_lambda!73715) (not b!2358139) (not b!2358132) (not b!2358141) (not b!2358140) b_and!185277 b_and!185281 (not b_next!71061) tp_is_empty!11157 (not mapNonEmpty!15068) (not b!2358131) (not start!231116) tp_is_empty!11155)
(check-sat b_and!185281 b_and!185277 (not b_next!71061) (not b_next!71063))
(get-model)

(declare-fun d!693287 () Bool)

(declare-fun c!374841 () Bool)

(assert (=> d!693287 (= c!374841 ((_ is MutableMapExt!3135) thiss!47746))))

(declare-fun e!1506103 () Int)

(assert (=> d!693287 (= (defaultEntry!3595 thiss!47746) e!1506103)))

(declare-fun b!2358148 () Bool)

(declare-fun defaultEntry!3596 (MutableMap!3136) Int)

(assert (=> b!2358148 (= e!1506103 (defaultEntry!3596 thiss!47746))))

(declare-fun b!2358149 () Bool)

(declare-fun defaultEntry!3597 (MutableMap!3136) Int)

(assert (=> b!2358149 (= e!1506103 (defaultEntry!3597 thiss!47746))))

(assert (= (and d!693287 c!374841) b!2358148))

(assert (= (and d!693287 (not c!374841)) b!2358149))

(declare-fun m!2770893 () Bool)

(assert (=> b!2358148 m!2770893))

(declare-fun m!2770895 () Bool)

(assert (=> b!2358149 m!2770895))

(assert (=> b!2358132 d!693287))

(declare-fun d!693289 () Bool)

(assert (=> d!693289 (= (get!8451 lt!863261) (v!30784 lt!863261))))

(assert (=> b!2358139 d!693289))

(declare-fun d!693291 () Bool)

(declare-fun c!374844 () Bool)

(assert (=> d!693291 (= c!374844 ((_ is MutableMapExt!3135) thiss!47746))))

(declare-fun e!1506106 () Bool)

(assert (=> d!693291 (= (valid!2416 thiss!47746) e!1506106)))

(declare-fun b!2358154 () Bool)

(declare-fun valid!2417 (MutableMap!3136) Bool)

(assert (=> b!2358154 (= e!1506106 (valid!2417 thiss!47746))))

(declare-fun b!2358155 () Bool)

(declare-fun valid!2418 (MutableMap!3136) Bool)

(assert (=> b!2358155 (= e!1506106 (valid!2418 thiss!47746))))

(assert (= (and d!693291 c!374844) b!2358154))

(assert (= (and d!693291 (not c!374844)) b!2358155))

(declare-fun m!2770897 () Bool)

(assert (=> b!2358154 m!2770897))

(declare-fun m!2770899 () Bool)

(assert (=> b!2358155 m!2770899))

(assert (=> start!231116 d!693291))

(declare-fun b!2358164 () Bool)

(declare-fun e!1506111 () Option!5433)

(assert (=> b!2358164 (= e!1506111 (Some!5432 (_2!16342 (h!33273 (toList!1418 (abstractMap!90 thiss!47746))))))))

(declare-fun b!2358165 () Bool)

(declare-fun e!1506112 () Option!5433)

(assert (=> b!2358165 (= e!1506111 e!1506112)))

(declare-fun c!374850 () Bool)

(assert (=> b!2358165 (= c!374850 (and ((_ is Cons!27872) (toList!1418 (abstractMap!90 thiss!47746))) (not (= (_1!16342 (h!33273 (toList!1418 (abstractMap!90 thiss!47746)))) key!7176))))))

(declare-fun b!2358166 () Bool)

(assert (=> b!2358166 (= e!1506112 (getValueByKey!109 (t!207837 (toList!1418 (abstractMap!90 thiss!47746))) key!7176))))

(declare-fun b!2358167 () Bool)

(assert (=> b!2358167 (= e!1506112 None!5432)))

(declare-fun d!693293 () Bool)

(declare-fun c!374849 () Bool)

(assert (=> d!693293 (= c!374849 (and ((_ is Cons!27872) (toList!1418 (abstractMap!90 thiss!47746))) (= (_1!16342 (h!33273 (toList!1418 (abstractMap!90 thiss!47746)))) key!7176)))))

(assert (=> d!693293 (= (getValueByKey!109 (toList!1418 (abstractMap!90 thiss!47746)) key!7176) e!1506111)))

(assert (= (and d!693293 c!374849) b!2358164))

(assert (= (and d!693293 (not c!374849)) b!2358165))

(assert (= (and b!2358165 c!374850) b!2358166))

(assert (= (and b!2358165 (not c!374850)) b!2358167))

(declare-fun m!2770901 () Bool)

(assert (=> b!2358166 m!2770901))

(assert (=> b!2358141 d!693293))

(declare-fun d!693295 () Bool)

(declare-fun c!374853 () Bool)

(assert (=> d!693295 (= c!374853 ((_ is MutableMapExt!3135) thiss!47746))))

(declare-fun e!1506115 () ListMap!901)

(assert (=> d!693295 (= (abstractMap!90 thiss!47746) e!1506115)))

(declare-fun b!2358172 () Bool)

(declare-fun abstractMap!91 (MutableMap!3136) ListMap!901)

(assert (=> b!2358172 (= e!1506115 (abstractMap!91 thiss!47746))))

(declare-fun b!2358173 () Bool)

(declare-fun abstractMap!92 (MutableMap!3136) ListMap!901)

(assert (=> b!2358173 (= e!1506115 (abstractMap!92 thiss!47746))))

(assert (= (and d!693295 c!374853) b!2358172))

(assert (= (and d!693295 (not c!374853)) b!2358173))

(declare-fun m!2770903 () Bool)

(assert (=> b!2358172 m!2770903))

(declare-fun m!2770905 () Bool)

(assert (=> b!2358173 m!2770905))

(assert (=> b!2358141 d!693295))

(declare-fun d!693297 () Bool)

(declare-fun isEmpty!15846 (Option!5433) Bool)

(assert (=> d!693297 (= (isDefined!4265 lt!863261) (not (isEmpty!15846 lt!863261)))))

(declare-fun bs!460364 () Bool)

(assert (= bs!460364 d!693297))

(declare-fun m!2770907 () Bool)

(assert (=> bs!460364 m!2770907))

(assert (=> b!2358141 d!693297))

(declare-fun d!693299 () Bool)

(declare-fun lt!863266 () Bool)

(declare-fun contains!4837 (ListMap!901 K!4937) Bool)

(assert (=> d!693299 (= lt!863266 (contains!4837 (abstractMap!90 thiss!47746) key!7176))))

(declare-fun e!1506118 () Bool)

(assert (=> d!693299 (= lt!863266 e!1506118)))

(declare-fun c!374856 () Bool)

(assert (=> d!693299 (= c!374856 ((_ is MutableMapExt!3135) thiss!47746))))

(assert (=> d!693299 (valid!2416 thiss!47746)))

(assert (=> d!693299 (= (contains!4836 thiss!47746 key!7176) lt!863266)))

(declare-fun b!2358178 () Bool)

(declare-fun contains!4838 (MutableMap!3136 K!4937) Bool)

(assert (=> b!2358178 (= e!1506118 (contains!4838 thiss!47746 key!7176))))

(declare-fun b!2358179 () Bool)

(declare-fun contains!4839 (MutableMap!3136 K!4937) Bool)

(assert (=> b!2358179 (= e!1506118 (contains!4839 thiss!47746 key!7176))))

(assert (= (and d!693299 c!374856) b!2358178))

(assert (= (and d!693299 (not c!374856)) b!2358179))

(assert (=> d!693299 m!2770875))

(assert (=> d!693299 m!2770875))

(declare-fun m!2770909 () Bool)

(assert (=> d!693299 m!2770909))

(assert (=> d!693299 m!2770883))

(declare-fun m!2770911 () Bool)

(assert (=> b!2358178 m!2770911))

(declare-fun m!2770913 () Bool)

(assert (=> b!2358179 m!2770913))

(assert (=> b!2358131 d!693299))

(declare-fun e!1506126 () Bool)

(declare-fun b!2358192 () Bool)

(declare-fun lt!863351 () V!5139)

(declare-fun map!5763 (MutableMap!3136) ListMap!901)

(assert (=> b!2358192 (= e!1506126 (= lt!863351 (get!8451 (getValueByKey!109 (toList!1418 (map!5763 thiss!47746)) key!7176))))))

(declare-fun b!2358193 () Bool)

(declare-fun e!1506125 () V!5139)

(assert (=> b!2358193 (= e!1506125 (dynLambda!12005 (defaultValue!3298 thiss!47746) key!7176))))

(declare-fun d!693301 () Bool)

(assert (=> d!693301 e!1506126))

(declare-fun c!374864 () Bool)

(assert (=> d!693301 (= c!374864 (contains!4839 thiss!47746 key!7176))))

(assert (=> d!693301 (= lt!863351 e!1506125)))

(declare-fun c!374865 () Bool)

(assert (=> d!693301 (= c!374865 (not (contains!4839 thiss!47746 key!7176)))))

(assert (=> d!693301 (valid!2418 thiss!47746)))

(assert (=> d!693301 (= (apply!6700 thiss!47746 key!7176) lt!863351)))

(declare-fun b!2358194 () Bool)

(assert (=> b!2358194 false))

(declare-datatypes ((Unit!40776 0))(
  ( (Unit!40777) )
))
(declare-fun lt!863346 () Unit!40776)

(declare-fun lt!863347 () Unit!40776)

(assert (=> b!2358194 (= lt!863346 lt!863347)))

(declare-datatypes ((tuple2!27604 0))(
  ( (tuple2!27605 (_1!16343 (_ BitVec 64)) (_2!16343 List!27970)) )
))
(declare-datatypes ((List!27971 0))(
  ( (Nil!27873) (Cons!27873 (h!33274 tuple2!27604) (t!207840 List!27971)) )
))
(declare-fun lt!863333 () List!27971)

(declare-fun lt!863355 () (_ BitVec 64))

(declare-fun lt!863345 () List!27970)

(declare-fun contains!4840 (List!27971 tuple2!27604) Bool)

(assert (=> b!2358194 (contains!4840 lt!863333 (tuple2!27605 lt!863355 lt!863345))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!52 (List!27971 (_ BitVec 64) List!27970) Unit!40776)

(assert (=> b!2358194 (= lt!863347 (lemmaGetValueByKeyImpliesContainsTuple!52 lt!863333 lt!863355 lt!863345))))

(declare-fun apply!6701 (MutLongMap!3226 (_ BitVec 64)) List!27970)

(assert (=> b!2358194 (= lt!863345 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))))

(declare-datatypes ((ListLongMap!373 0))(
  ( (ListLongMap!374 (toList!1419 List!27971)) )
))
(declare-fun map!5764 (MutLongMap!3226) ListLongMap!373)

(assert (=> b!2358194 (= lt!863333 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))))))

(declare-fun lt!863334 () Unit!40776)

(declare-fun lt!863343 () Unit!40776)

(assert (=> b!2358194 (= lt!863334 lt!863343)))

(declare-fun lt!863350 () List!27971)

(declare-datatypes ((Option!5434 0))(
  ( (None!5433) (Some!5433 (v!30785 List!27970)) )
))
(declare-fun isDefined!4266 (Option!5434) Bool)

(declare-fun getValueByKey!110 (List!27971 (_ BitVec 64)) Option!5434)

(assert (=> b!2358194 (isDefined!4266 (getValueByKey!110 lt!863350 lt!863355))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!69 (List!27971 (_ BitVec 64)) Unit!40776)

(assert (=> b!2358194 (= lt!863343 (lemmaContainsKeyImpliesGetValueByKeyDefined!69 lt!863350 lt!863355))))

(assert (=> b!2358194 (= lt!863350 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))))))

(declare-fun e!1506127 () Unit!40776)

(declare-fun Unit!40778 () Unit!40776)

(assert (=> b!2358194 (= e!1506127 Unit!40778)))

(declare-fun b!2358195 () Bool)

(assert (=> b!2358195 (= e!1506126 (= lt!863351 (dynLambda!12005 (defaultValue!3298 thiss!47746) key!7176)))))

(declare-fun b!2358196 () Bool)

(declare-datatypes ((Option!5435 0))(
  ( (None!5434) (Some!5434 (v!30786 tuple2!27602)) )
))
(declare-fun get!8452 (Option!5435) tuple2!27602)

(declare-fun getPair!51 (List!27970 K!4937) Option!5435)

(assert (=> b!2358196 (= e!1506125 (_2!16342 (get!8452 (getPair!51 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355) key!7176))))))

(declare-fun hash!598 (Hashable!3136 K!4937) (_ BitVec 64))

(assert (=> b!2358196 (= lt!863355 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(declare-fun c!374863 () Bool)

(assert (=> b!2358196 (= c!374863 (not (contains!4840 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))) (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355)))))))

(declare-fun lt!863327 () Unit!40776)

(assert (=> b!2358196 (= lt!863327 e!1506127)))

(declare-fun lambda!86688 () Int)

(declare-fun lt!863330 () Unit!40776)

(declare-fun forallContained!798 (List!27971 Int tuple2!27604) Unit!40776)

(assert (=> b!2358196 (= lt!863330 (forallContained!798 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))) lambda!86688 (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))))))

(declare-fun lt!863328 () ListLongMap!373)

(assert (=> b!2358196 (= lt!863328 (map!5764 (v!30783 (underlying!6658 thiss!47746))))))

(declare-fun lt!863339 () Unit!40776)

(declare-fun lemmaGetPairGetSameValueAsMap!27 (ListLongMap!373 K!4937 V!5139 Hashable!3136) Unit!40776)

(assert (=> b!2358196 (= lt!863339 (lemmaGetPairGetSameValueAsMap!27 lt!863328 key!7176 (_2!16342 (get!8452 (getPair!51 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355) key!7176))) (hashF!5059 thiss!47746)))))

(declare-fun lt!863337 () Unit!40776)

(declare-fun lemmaInGenMapThenLongMapContainsHash!27 (ListLongMap!373 K!4937 Hashable!3136) Unit!40776)

(assert (=> b!2358196 (= lt!863337 (lemmaInGenMapThenLongMapContainsHash!27 lt!863328 key!7176 (hashF!5059 thiss!47746)))))

(declare-fun contains!4841 (ListLongMap!373 (_ BitVec 64)) Bool)

(assert (=> b!2358196 (contains!4841 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(declare-fun lt!863335 () Unit!40776)

(assert (=> b!2358196 (= lt!863335 lt!863337)))

(declare-fun lt!863332 () (_ BitVec 64))

(assert (=> b!2358196 (= lt!863332 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(declare-fun lt!863356 () List!27970)

(declare-fun apply!6702 (ListLongMap!373 (_ BitVec 64)) List!27970)

(assert (=> b!2358196 (= lt!863356 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))

(declare-fun lt!863352 () Unit!40776)

(declare-fun lemmaGetValueImpliesTupleContained!28 (ListLongMap!373 (_ BitVec 64) List!27970) Unit!40776)

(assert (=> b!2358196 (= lt!863352 (lemmaGetValueImpliesTupleContained!28 lt!863328 lt!863332 lt!863356))))

(assert (=> b!2358196 (contains!4840 (toList!1419 lt!863328) (tuple2!27605 lt!863332 lt!863356))))

(declare-fun lt!863348 () Unit!40776)

(assert (=> b!2358196 (= lt!863348 lt!863352)))

(declare-fun lt!863329 () Unit!40776)

(assert (=> b!2358196 (= lt!863329 (forallContained!798 (toList!1419 lt!863328) lambda!86688 (tuple2!27605 (hash!598 (hashF!5059 thiss!47746) key!7176) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))))

(declare-fun lt!863340 () Unit!40776)

(declare-fun lemmaInGenMapThenGetPairDefined!27 (ListLongMap!373 K!4937 Hashable!3136) Unit!40776)

(assert (=> b!2358196 (= lt!863340 (lemmaInGenMapThenGetPairDefined!27 lt!863328 key!7176 (hashF!5059 thiss!47746)))))

(declare-fun lt!863349 () Unit!40776)

(assert (=> b!2358196 (= lt!863349 (lemmaInGenMapThenLongMapContainsHash!27 lt!863328 key!7176 (hashF!5059 thiss!47746)))))

(declare-fun lt!863344 () Unit!40776)

(assert (=> b!2358196 (= lt!863344 lt!863349)))

(declare-fun lt!863342 () (_ BitVec 64))

(assert (=> b!2358196 (= lt!863342 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(declare-fun lt!863354 () List!27970)

(assert (=> b!2358196 (= lt!863354 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))

(declare-fun lt!863341 () Unit!40776)

(assert (=> b!2358196 (= lt!863341 (lemmaGetValueImpliesTupleContained!28 lt!863328 lt!863342 lt!863354))))

(assert (=> b!2358196 (contains!4840 (toList!1419 lt!863328) (tuple2!27605 lt!863342 lt!863354))))

(declare-fun lt!863338 () Unit!40776)

(assert (=> b!2358196 (= lt!863338 lt!863341)))

(declare-fun lt!863353 () Unit!40776)

(assert (=> b!2358196 (= lt!863353 (forallContained!798 (toList!1419 lt!863328) lambda!86688 (tuple2!27605 (hash!598 (hashF!5059 thiss!47746) key!7176) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))))

(declare-fun isDefined!4267 (Option!5435) Bool)

(assert (=> b!2358196 (isDefined!4267 (getPair!51 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) key!7176))))

(declare-fun lt!863336 () Unit!40776)

(assert (=> b!2358196 (= lt!863336 lt!863340)))

(declare-fun extractMap!131 (List!27971) ListMap!901)

(assert (=> b!2358196 (= (_2!16342 (get!8452 (getPair!51 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) key!7176))) (get!8451 (getValueByKey!109 (toList!1418 (extractMap!131 (toList!1419 lt!863328))) key!7176)))))

(declare-fun lt!863331 () Unit!40776)

(assert (=> b!2358196 (= lt!863331 lt!863339)))

(declare-fun b!2358197 () Bool)

(declare-fun Unit!40779 () Unit!40776)

(assert (=> b!2358197 (= e!1506127 Unit!40779)))

(assert (= (and d!693301 c!374865) b!2358193))

(assert (= (and d!693301 (not c!374865)) b!2358196))

(assert (= (and b!2358196 c!374863) b!2358194))

(assert (= (and b!2358196 (not c!374863)) b!2358197))

(assert (= (and d!693301 c!374864) b!2358192))

(assert (= (and d!693301 (not c!374864)) b!2358195))

(declare-fun b_lambda!73717 () Bool)

(assert (=> (not b_lambda!73717) (not b!2358193)))

(declare-fun t!207839 () Bool)

(declare-fun tb!138731 () Bool)

(assert (=> (and b!2358135 (= (defaultValue!3298 thiss!47746) (defaultValue!3298 thiss!47746)) t!207839) tb!138731))

(declare-fun result!169606 () Bool)

(assert (=> tb!138731 (= result!169606 tp_is_empty!11157)))

(assert (=> b!2358193 t!207839))

(declare-fun b_and!185283 () Bool)

(assert (= b_and!185281 (and (=> t!207839 result!169606) b_and!185283)))

(declare-fun b_lambda!73719 () Bool)

(assert (=> (not b_lambda!73719) (not b!2358195)))

(assert (=> b!2358195 t!207839))

(declare-fun b_and!185285 () Bool)

(assert (= b_and!185283 (and (=> t!207839 result!169606) b_and!185285)))

(declare-fun m!2770915 () Bool)

(assert (=> b!2358196 m!2770915))

(declare-fun m!2770917 () Bool)

(assert (=> b!2358196 m!2770917))

(declare-fun m!2770919 () Bool)

(assert (=> b!2358196 m!2770919))

(declare-fun m!2770921 () Bool)

(assert (=> b!2358196 m!2770921))

(declare-fun m!2770923 () Bool)

(assert (=> b!2358196 m!2770923))

(declare-fun m!2770925 () Bool)

(assert (=> b!2358196 m!2770925))

(declare-fun m!2770927 () Bool)

(assert (=> b!2358196 m!2770927))

(declare-fun m!2770929 () Bool)

(assert (=> b!2358196 m!2770929))

(declare-fun m!2770931 () Bool)

(assert (=> b!2358196 m!2770931))

(declare-fun m!2770933 () Bool)

(assert (=> b!2358196 m!2770933))

(declare-fun m!2770935 () Bool)

(assert (=> b!2358196 m!2770935))

(declare-fun m!2770937 () Bool)

(assert (=> b!2358196 m!2770937))

(assert (=> b!2358196 m!2770917))

(declare-fun m!2770939 () Bool)

(assert (=> b!2358196 m!2770939))

(declare-fun m!2770941 () Bool)

(assert (=> b!2358196 m!2770941))

(assert (=> b!2358196 m!2770933))

(declare-fun m!2770943 () Bool)

(assert (=> b!2358196 m!2770943))

(declare-fun m!2770945 () Bool)

(assert (=> b!2358196 m!2770945))

(declare-fun m!2770947 () Bool)

(assert (=> b!2358196 m!2770947))

(assert (=> b!2358196 m!2770927))

(declare-fun m!2770949 () Bool)

(assert (=> b!2358196 m!2770949))

(assert (=> b!2358196 m!2770939))

(declare-fun m!2770951 () Bool)

(assert (=> b!2358196 m!2770951))

(assert (=> b!2358196 m!2770945))

(declare-fun m!2770953 () Bool)

(assert (=> b!2358196 m!2770953))

(assert (=> b!2358196 m!2770929))

(declare-fun m!2770955 () Bool)

(assert (=> b!2358196 m!2770955))

(declare-fun m!2770957 () Bool)

(assert (=> b!2358196 m!2770957))

(assert (=> b!2358196 m!2770947))

(assert (=> b!2358196 m!2770933))

(assert (=> b!2358196 m!2770945))

(declare-fun m!2770959 () Bool)

(assert (=> b!2358196 m!2770959))

(assert (=> d!693301 m!2770913))

(assert (=> d!693301 m!2770899))

(declare-fun m!2770961 () Bool)

(assert (=> b!2358195 m!2770961))

(assert (=> b!2358194 m!2770915))

(assert (=> b!2358194 m!2770927))

(declare-fun m!2770963 () Bool)

(assert (=> b!2358194 m!2770963))

(declare-fun m!2770965 () Bool)

(assert (=> b!2358194 m!2770965))

(declare-fun m!2770967 () Bool)

(assert (=> b!2358194 m!2770967))

(declare-fun m!2770969 () Bool)

(assert (=> b!2358194 m!2770969))

(assert (=> b!2358194 m!2770965))

(declare-fun m!2770971 () Bool)

(assert (=> b!2358194 m!2770971))

(assert (=> b!2358193 m!2770961))

(declare-fun m!2770973 () Bool)

(assert (=> b!2358192 m!2770973))

(declare-fun m!2770975 () Bool)

(assert (=> b!2358192 m!2770975))

(assert (=> b!2358192 m!2770975))

(declare-fun m!2770977 () Bool)

(assert (=> b!2358192 m!2770977))

(assert (=> b!2358131 d!693301))

(declare-fun d!693303 () Bool)

(assert (=> d!693303 (= (array_inv!3615 (_keys!3523 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))))) (bvsge (size!22067 (_keys!3523 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))))) #b00000000000000000000000000000000))))

(assert (=> b!2358140 d!693303))

(declare-fun d!693305 () Bool)

(assert (=> d!693305 (= (array_inv!3616 (_values!3506 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))))) (bvsge (size!22066 (_values!3506 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))))) #b00000000000000000000000000000000))))

(assert (=> b!2358140 d!693305))

(declare-fun e!1506130 () Bool)

(declare-fun tp!753999 () Bool)

(declare-fun b!2358202 () Bool)

(assert (=> b!2358202 (= e!1506130 (and tp_is_empty!11155 tp_is_empty!11157 tp!753999))))

(assert (=> b!2358133 (= tp!753992 e!1506130)))

(assert (= (and b!2358133 ((_ is Cons!27872) mapDefault!15068)) b!2358202))

(declare-fun b!2358209 () Bool)

(declare-fun e!1506135 () Bool)

(declare-fun tp!754007 () Bool)

(assert (=> b!2358209 (= e!1506135 (and tp_is_empty!11155 tp_is_empty!11157 tp!754007))))

(declare-fun mapNonEmpty!15071 () Bool)

(declare-fun mapRes!15071 () Bool)

(declare-fun tp!754006 () Bool)

(assert (=> mapNonEmpty!15071 (= mapRes!15071 (and tp!754006 e!1506135))))

(declare-fun mapKey!15071 () (_ BitVec 32))

(declare-fun mapValue!15071 () List!27970)

(declare-fun mapRest!15071 () (Array (_ BitVec 32) List!27970))

(assert (=> mapNonEmpty!15071 (= mapRest!15068 (store mapRest!15071 mapKey!15071 mapValue!15071))))

(declare-fun condMapEmpty!15071 () Bool)

(declare-fun mapDefault!15071 () List!27970)

(assert (=> mapNonEmpty!15068 (= condMapEmpty!15071 (= mapRest!15068 ((as const (Array (_ BitVec 32) List!27970)) mapDefault!15071)))))

(declare-fun e!1506136 () Bool)

(assert (=> mapNonEmpty!15068 (= tp!753996 (and e!1506136 mapRes!15071))))

(declare-fun mapIsEmpty!15071 () Bool)

(assert (=> mapIsEmpty!15071 mapRes!15071))

(declare-fun tp!754008 () Bool)

(declare-fun b!2358210 () Bool)

(assert (=> b!2358210 (= e!1506136 (and tp_is_empty!11155 tp_is_empty!11157 tp!754008))))

(assert (= (and mapNonEmpty!15068 condMapEmpty!15071) mapIsEmpty!15071))

(assert (= (and mapNonEmpty!15068 (not condMapEmpty!15071)) mapNonEmpty!15071))

(assert (= (and mapNonEmpty!15071 ((_ is Cons!27872) mapValue!15071)) b!2358209))

(assert (= (and mapNonEmpty!15068 ((_ is Cons!27872) mapDefault!15071)) b!2358210))

(declare-fun m!2770979 () Bool)

(assert (=> mapNonEmpty!15071 m!2770979))

(declare-fun tp!754009 () Bool)

(declare-fun e!1506137 () Bool)

(declare-fun b!2358211 () Bool)

(assert (=> b!2358211 (= e!1506137 (and tp_is_empty!11155 tp_is_empty!11157 tp!754009))))

(assert (=> mapNonEmpty!15068 (= tp!753995 e!1506137)))

(assert (= (and mapNonEmpty!15068 ((_ is Cons!27872) mapValue!15068)) b!2358211))

(declare-fun tp!754010 () Bool)

(declare-fun b!2358212 () Bool)

(declare-fun e!1506138 () Bool)

(assert (=> b!2358212 (= e!1506138 (and tp_is_empty!11155 tp_is_empty!11157 tp!754010))))

(assert (=> b!2358140 (= tp!753994 e!1506138)))

(assert (= (and b!2358140 ((_ is Cons!27872) (zeroValue!3484 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746))))))) b!2358212))

(declare-fun tp!754011 () Bool)

(declare-fun b!2358213 () Bool)

(declare-fun e!1506139 () Bool)

(assert (=> b!2358213 (= e!1506139 (and tp_is_empty!11155 tp_is_empty!11157 tp!754011))))

(assert (=> b!2358140 (= tp!753990 e!1506139)))

(assert (= (and b!2358140 ((_ is Cons!27872) (minValue!3484 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746))))))) b!2358213))

(declare-fun b_lambda!73721 () Bool)

(assert (= b_lambda!73717 (or (and b!2358135 b_free!70359) b_lambda!73721)))

(declare-fun b_lambda!73723 () Bool)

(assert (= b_lambda!73719 (or (and b!2358135 b_free!70359) b_lambda!73723)))

(declare-fun b_lambda!73725 () Bool)

(assert (= b_lambda!73715 (or (and b!2358135 b_free!70359 (= (defaultValue!3298 thiss!47746) (defaultEntry!3595 thiss!47746))) b_lambda!73725)))

(check-sat (not b!2358166) (not b_next!71063) (not b!2358202) (not b!2358149) (not b!2358209) (not b!2358210) (not b_lambda!73723) (not b!2358155) (not b!2358172) (not b!2358212) (not b!2358194) b_and!185277 (not b!2358211) (not b!2358148) (not b!2358178) (not b!2358196) (not mapNonEmpty!15071) (not b_lambda!73721) (not b!2358213) (not b!2358179) tp_is_empty!11155 (not d!693297) (not b_lambda!73725) (not b!2358192) b_and!185285 (not d!693301) (not b_next!71061) (not b!2358154) (not d!693299) (not b!2358173) tp_is_empty!11157)
(check-sat b_and!185285 b_and!185277 (not b_next!71061) (not b_next!71063))
(get-model)

(declare-fun b!2358214 () Bool)

(declare-fun e!1506140 () Option!5433)

(assert (=> b!2358214 (= e!1506140 (Some!5432 (_2!16342 (h!33273 (t!207837 (toList!1418 (abstractMap!90 thiss!47746)))))))))

(declare-fun b!2358215 () Bool)

(declare-fun e!1506141 () Option!5433)

(assert (=> b!2358215 (= e!1506140 e!1506141)))

(declare-fun c!374867 () Bool)

(assert (=> b!2358215 (= c!374867 (and ((_ is Cons!27872) (t!207837 (toList!1418 (abstractMap!90 thiss!47746)))) (not (= (_1!16342 (h!33273 (t!207837 (toList!1418 (abstractMap!90 thiss!47746))))) key!7176))))))

(declare-fun b!2358216 () Bool)

(assert (=> b!2358216 (= e!1506141 (getValueByKey!109 (t!207837 (t!207837 (toList!1418 (abstractMap!90 thiss!47746)))) key!7176))))

(declare-fun b!2358217 () Bool)

(assert (=> b!2358217 (= e!1506141 None!5432)))

(declare-fun d!693307 () Bool)

(declare-fun c!374866 () Bool)

(assert (=> d!693307 (= c!374866 (and ((_ is Cons!27872) (t!207837 (toList!1418 (abstractMap!90 thiss!47746)))) (= (_1!16342 (h!33273 (t!207837 (toList!1418 (abstractMap!90 thiss!47746))))) key!7176)))))

(assert (=> d!693307 (= (getValueByKey!109 (t!207837 (toList!1418 (abstractMap!90 thiss!47746))) key!7176) e!1506140)))

(assert (= (and d!693307 c!374866) b!2358214))

(assert (= (and d!693307 (not c!374866)) b!2358215))

(assert (= (and b!2358215 c!374867) b!2358216))

(assert (= (and b!2358215 (not c!374867)) b!2358217))

(declare-fun m!2770981 () Bool)

(assert (=> b!2358216 m!2770981))

(assert (=> b!2358166 d!693307))

(declare-fun bs!460365 () Bool)

(declare-fun b!2358243 () Bool)

(assert (= bs!460365 (and b!2358243 b!2358196)))

(declare-fun lambda!86691 () Int)

(assert (=> bs!460365 (= lambda!86691 lambda!86688)))

(declare-fun b!2358240 () Bool)

(assert (=> b!2358240 false))

(declare-fun lt!863402 () Unit!40776)

(declare-fun lt!863414 () Unit!40776)

(assert (=> b!2358240 (= lt!863402 lt!863414)))

(declare-fun lt!863409 () ListLongMap!373)

(assert (=> b!2358240 (contains!4837 (extractMap!131 (toList!1419 lt!863409)) key!7176)))

(declare-fun lemmaInLongMapThenInGenericMap!51 (ListLongMap!373 K!4937 Hashable!3136) Unit!40776)

(assert (=> b!2358240 (= lt!863414 (lemmaInLongMapThenInGenericMap!51 lt!863409 key!7176 (hashF!5059 thiss!47746)))))

(declare-fun call!143573 () ListLongMap!373)

(assert (=> b!2358240 (= lt!863409 call!143573)))

(declare-fun e!1506158 () Unit!40776)

(declare-fun Unit!40780 () Unit!40776)

(assert (=> b!2358240 (= e!1506158 Unit!40780)))

(declare-fun bm!143566 () Bool)

(declare-fun call!143575 () Option!5435)

(declare-fun call!143572 () List!27970)

(assert (=> bm!143566 (= call!143575 (getPair!51 call!143572 key!7176))))

(declare-fun b!2358241 () Bool)

(assert (=> b!2358241 false))

(declare-fun lt!863405 () Unit!40776)

(declare-fun lt!863410 () Unit!40776)

(assert (=> b!2358241 (= lt!863405 lt!863410)))

(declare-fun lt!863397 () List!27971)

(declare-fun lt!863416 () (_ BitVec 64))

(declare-fun lt!863399 () List!27970)

(assert (=> b!2358241 (contains!4840 lt!863397 (tuple2!27605 lt!863416 lt!863399))))

(assert (=> b!2358241 (= lt!863410 (lemmaGetValueByKeyImpliesContainsTuple!52 lt!863397 lt!863416 lt!863399))))

(assert (=> b!2358241 (= lt!863399 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863416))))

(assert (=> b!2358241 (= lt!863397 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))))))

(declare-fun lt!863407 () Unit!40776)

(declare-fun lt!863408 () Unit!40776)

(assert (=> b!2358241 (= lt!863407 lt!863408)))

(declare-fun lt!863415 () List!27971)

(assert (=> b!2358241 (isDefined!4266 (getValueByKey!110 lt!863415 lt!863416))))

(assert (=> b!2358241 (= lt!863408 (lemmaContainsKeyImpliesGetValueByKeyDefined!69 lt!863415 lt!863416))))

(assert (=> b!2358241 (= lt!863415 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))))))

(declare-fun lt!863411 () Unit!40776)

(declare-fun lt!863400 () Unit!40776)

(assert (=> b!2358241 (= lt!863411 lt!863400)))

(declare-fun lt!863413 () List!27971)

(declare-fun containsKey!100 (List!27971 (_ BitVec 64)) Bool)

(assert (=> b!2358241 (containsKey!100 lt!863413 lt!863416)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!52 (List!27971 (_ BitVec 64)) Unit!40776)

(assert (=> b!2358241 (= lt!863400 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!52 lt!863413 lt!863416))))

(assert (=> b!2358241 (= lt!863413 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))))))

(declare-fun e!1506160 () Unit!40776)

(declare-fun Unit!40781 () Unit!40776)

(assert (=> b!2358241 (= e!1506160 Unit!40781)))

(declare-fun b!2358242 () Bool)

(declare-fun e!1506156 () Bool)

(declare-fun call!143571 () Bool)

(assert (=> b!2358242 (= e!1506156 call!143571)))

(declare-fun e!1506159 () Unit!40776)

(assert (=> b!2358243 (= e!1506159 (forallContained!798 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))) lambda!86691 (tuple2!27605 lt!863416 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863416))))))

(declare-fun c!374878 () Bool)

(assert (=> b!2358243 (= c!374878 (not (contains!4840 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))) (tuple2!27605 lt!863416 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863416)))))))

(declare-fun lt!863398 () Unit!40776)

(assert (=> b!2358243 (= lt!863398 e!1506160)))

(declare-fun b!2358244 () Bool)

(declare-fun e!1506162 () Bool)

(assert (=> b!2358244 (= e!1506162 call!143571)))

(declare-fun bm!143567 () Bool)

(assert (=> bm!143567 (= call!143573 (map!5764 (v!30783 (underlying!6658 thiss!47746))))))

(declare-fun b!2358245 () Bool)

(declare-fun e!1506161 () Unit!40776)

(assert (=> b!2358245 (= e!1506161 e!1506158)))

(declare-fun res!1000925 () Bool)

(declare-fun call!143576 () Bool)

(assert (=> b!2358245 (= res!1000925 call!143576)))

(assert (=> b!2358245 (=> (not res!1000925) (not e!1506156))))

(declare-fun c!374876 () Bool)

(assert (=> b!2358245 (= c!374876 e!1506156)))

(declare-fun b!2358246 () Bool)

(declare-fun Unit!40782 () Unit!40776)

(assert (=> b!2358246 (= e!1506158 Unit!40782)))

(declare-fun b!2358247 () Bool)

(declare-fun e!1506157 () Bool)

(assert (=> b!2358247 (= e!1506157 (isDefined!4267 (getPair!51 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863416) key!7176)))))

(declare-fun b!2358248 () Bool)

(declare-fun lt!863403 () Unit!40776)

(assert (=> b!2358248 (= e!1506161 lt!863403)))

(declare-fun lt!863406 () ListLongMap!373)

(assert (=> b!2358248 (= lt!863406 call!143573)))

(declare-fun lemmaInGenericMapThenInLongMap!51 (ListLongMap!373 K!4937 Hashable!3136) Unit!40776)

(assert (=> b!2358248 (= lt!863403 (lemmaInGenericMapThenInLongMap!51 lt!863406 key!7176 (hashF!5059 thiss!47746)))))

(declare-fun res!1000926 () Bool)

(assert (=> b!2358248 (= res!1000926 call!143576)))

(assert (=> b!2358248 (=> (not res!1000926) (not e!1506162))))

(assert (=> b!2358248 e!1506162))

(declare-fun d!693309 () Bool)

(declare-fun lt!863401 () Bool)

(assert (=> d!693309 (= lt!863401 (contains!4837 (map!5763 thiss!47746) key!7176))))

(assert (=> d!693309 (= lt!863401 e!1506157)))

(declare-fun res!1000927 () Bool)

(assert (=> d!693309 (=> (not res!1000927) (not e!1506157))))

(declare-fun contains!4842 (MutLongMap!3226 (_ BitVec 64)) Bool)

(assert (=> d!693309 (= res!1000927 (contains!4842 (v!30783 (underlying!6658 thiss!47746)) lt!863416))))

(declare-fun lt!863412 () Unit!40776)

(assert (=> d!693309 (= lt!863412 e!1506161)))

(declare-fun c!374879 () Bool)

(assert (=> d!693309 (= c!374879 (contains!4837 (extractMap!131 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746))))) key!7176))))

(declare-fun lt!863404 () Unit!40776)

(assert (=> d!693309 (= lt!863404 e!1506159)))

(declare-fun c!374877 () Bool)

(assert (=> d!693309 (= c!374877 (contains!4842 (v!30783 (underlying!6658 thiss!47746)) lt!863416))))

(assert (=> d!693309 (= lt!863416 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(assert (=> d!693309 (valid!2418 thiss!47746)))

(assert (=> d!693309 (= (contains!4839 thiss!47746 key!7176) lt!863401)))

(declare-fun bm!143568 () Bool)

(declare-fun call!143574 () (_ BitVec 64))

(assert (=> bm!143568 (= call!143574 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(declare-fun b!2358249 () Bool)

(declare-fun Unit!40783 () Unit!40776)

(assert (=> b!2358249 (= e!1506159 Unit!40783)))

(declare-fun bm!143569 () Bool)

(assert (=> bm!143569 (= call!143576 (contains!4841 (ite c!374879 lt!863406 call!143573) call!143574))))

(declare-fun bm!143570 () Bool)

(assert (=> bm!143570 (= call!143572 (apply!6702 (ite c!374879 lt!863406 call!143573) call!143574))))

(declare-fun bm!143571 () Bool)

(assert (=> bm!143571 (= call!143571 (isDefined!4267 call!143575))))

(declare-fun b!2358250 () Bool)

(declare-fun Unit!40784 () Unit!40776)

(assert (=> b!2358250 (= e!1506160 Unit!40784)))

(assert (= (and d!693309 c!374877) b!2358243))

(assert (= (and d!693309 (not c!374877)) b!2358249))

(assert (= (and b!2358243 c!374878) b!2358241))

(assert (= (and b!2358243 (not c!374878)) b!2358250))

(assert (= (and d!693309 c!374879) b!2358248))

(assert (= (and d!693309 (not c!374879)) b!2358245))

(assert (= (and b!2358248 res!1000926) b!2358244))

(assert (= (and b!2358245 res!1000925) b!2358242))

(assert (= (and b!2358245 c!374876) b!2358240))

(assert (= (and b!2358245 (not c!374876)) b!2358246))

(assert (= (or b!2358248 b!2358245 b!2358242 b!2358240) bm!143567))

(assert (= (or b!2358248 b!2358244 b!2358245 b!2358242) bm!143568))

(assert (= (or b!2358244 b!2358242) bm!143570))

(assert (= (or b!2358248 b!2358245) bm!143569))

(assert (= (or b!2358244 b!2358242) bm!143566))

(assert (= (or b!2358244 b!2358242) bm!143571))

(assert (= (and d!693309 res!1000927) b!2358247))

(assert (=> bm!143567 m!2770915))

(declare-fun m!2770983 () Bool)

(assert (=> bm!143570 m!2770983))

(declare-fun m!2770985 () Bool)

(assert (=> bm!143569 m!2770985))

(declare-fun m!2770987 () Bool)

(assert (=> b!2358247 m!2770987))

(assert (=> b!2358247 m!2770987))

(declare-fun m!2770989 () Bool)

(assert (=> b!2358247 m!2770989))

(assert (=> b!2358247 m!2770989))

(declare-fun m!2770991 () Bool)

(assert (=> b!2358247 m!2770991))

(assert (=> bm!143568 m!2770945))

(declare-fun m!2770993 () Bool)

(assert (=> b!2358240 m!2770993))

(assert (=> b!2358240 m!2770993))

(declare-fun m!2770995 () Bool)

(assert (=> b!2358240 m!2770995))

(declare-fun m!2770997 () Bool)

(assert (=> b!2358240 m!2770997))

(declare-fun m!2770999 () Bool)

(assert (=> bm!143566 m!2770999))

(declare-fun m!2771001 () Bool)

(assert (=> bm!143571 m!2771001))

(declare-fun m!2771003 () Bool)

(assert (=> b!2358248 m!2771003))

(assert (=> b!2358243 m!2770915))

(assert (=> b!2358243 m!2770987))

(declare-fun m!2771005 () Bool)

(assert (=> b!2358243 m!2771005))

(declare-fun m!2771007 () Bool)

(assert (=> b!2358243 m!2771007))

(declare-fun m!2771009 () Bool)

(assert (=> b!2358241 m!2771009))

(declare-fun m!2771011 () Bool)

(assert (=> b!2358241 m!2771011))

(assert (=> b!2358241 m!2770915))

(declare-fun m!2771013 () Bool)

(assert (=> b!2358241 m!2771013))

(declare-fun m!2771015 () Bool)

(assert (=> b!2358241 m!2771015))

(declare-fun m!2771017 () Bool)

(assert (=> b!2358241 m!2771017))

(declare-fun m!2771019 () Bool)

(assert (=> b!2358241 m!2771019))

(assert (=> b!2358241 m!2770987))

(assert (=> b!2358241 m!2771009))

(declare-fun m!2771021 () Bool)

(assert (=> b!2358241 m!2771021))

(assert (=> d!693309 m!2770899))

(declare-fun m!2771023 () Bool)

(assert (=> d!693309 m!2771023))

(assert (=> d!693309 m!2770973))

(declare-fun m!2771025 () Bool)

(assert (=> d!693309 m!2771025))

(assert (=> d!693309 m!2770945))

(assert (=> d!693309 m!2770915))

(assert (=> d!693309 m!2771023))

(declare-fun m!2771027 () Bool)

(assert (=> d!693309 m!2771027))

(declare-fun m!2771029 () Bool)

(assert (=> d!693309 m!2771029))

(assert (=> d!693309 m!2770973))

(assert (=> b!2358179 d!693309))

(declare-fun d!693311 () Bool)

(assert (=> d!693311 (= (get!8451 (getValueByKey!109 (toList!1418 (map!5763 thiss!47746)) key!7176)) (v!30784 (getValueByKey!109 (toList!1418 (map!5763 thiss!47746)) key!7176)))))

(assert (=> b!2358192 d!693311))

(declare-fun b!2358251 () Bool)

(declare-fun e!1506163 () Option!5433)

(assert (=> b!2358251 (= e!1506163 (Some!5432 (_2!16342 (h!33273 (toList!1418 (map!5763 thiss!47746))))))))

(declare-fun b!2358252 () Bool)

(declare-fun e!1506164 () Option!5433)

(assert (=> b!2358252 (= e!1506163 e!1506164)))

(declare-fun c!374881 () Bool)

(assert (=> b!2358252 (= c!374881 (and ((_ is Cons!27872) (toList!1418 (map!5763 thiss!47746))) (not (= (_1!16342 (h!33273 (toList!1418 (map!5763 thiss!47746)))) key!7176))))))

(declare-fun b!2358253 () Bool)

(assert (=> b!2358253 (= e!1506164 (getValueByKey!109 (t!207837 (toList!1418 (map!5763 thiss!47746))) key!7176))))

(declare-fun b!2358254 () Bool)

(assert (=> b!2358254 (= e!1506164 None!5432)))

(declare-fun d!693313 () Bool)

(declare-fun c!374880 () Bool)

(assert (=> d!693313 (= c!374880 (and ((_ is Cons!27872) (toList!1418 (map!5763 thiss!47746))) (= (_1!16342 (h!33273 (toList!1418 (map!5763 thiss!47746)))) key!7176)))))

(assert (=> d!693313 (= (getValueByKey!109 (toList!1418 (map!5763 thiss!47746)) key!7176) e!1506163)))

(assert (= (and d!693313 c!374880) b!2358251))

(assert (= (and d!693313 (not c!374880)) b!2358252))

(assert (= (and b!2358252 c!374881) b!2358253))

(assert (= (and b!2358252 (not c!374881)) b!2358254))

(declare-fun m!2771031 () Bool)

(assert (=> b!2358253 m!2771031))

(assert (=> b!2358192 d!693313))

(declare-fun d!693315 () Bool)

(declare-fun lt!863419 () ListMap!901)

(declare-fun invariantList!397 (List!27970) Bool)

(assert (=> d!693315 (invariantList!397 (toList!1418 lt!863419))))

(assert (=> d!693315 (= lt!863419 (extractMap!131 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746))))))))

(assert (=> d!693315 (valid!2418 thiss!47746)))

(assert (=> d!693315 (= (map!5763 thiss!47746) lt!863419)))

(declare-fun bs!460366 () Bool)

(assert (= bs!460366 d!693315))

(declare-fun m!2771033 () Bool)

(assert (=> bs!460366 m!2771033))

(assert (=> bs!460366 m!2770915))

(assert (=> bs!460366 m!2771023))

(assert (=> bs!460366 m!2770899))

(assert (=> b!2358192 d!693315))

(declare-fun b!2358264 () Bool)

(declare-fun e!1506169 () Option!5434)

(declare-fun e!1506170 () Option!5434)

(assert (=> b!2358264 (= e!1506169 e!1506170)))

(declare-fun c!374887 () Bool)

(assert (=> b!2358264 (= c!374887 (and ((_ is Cons!27873) lt!863350) (not (= (_1!16343 (h!33274 lt!863350)) lt!863355))))))

(declare-fun b!2358265 () Bool)

(assert (=> b!2358265 (= e!1506170 (getValueByKey!110 (t!207840 lt!863350) lt!863355))))

(declare-fun b!2358263 () Bool)

(assert (=> b!2358263 (= e!1506169 (Some!5433 (_2!16343 (h!33274 lt!863350))))))

(declare-fun b!2358266 () Bool)

(assert (=> b!2358266 (= e!1506170 None!5433)))

(declare-fun d!693317 () Bool)

(declare-fun c!374886 () Bool)

(assert (=> d!693317 (= c!374886 (and ((_ is Cons!27873) lt!863350) (= (_1!16343 (h!33274 lt!863350)) lt!863355)))))

(assert (=> d!693317 (= (getValueByKey!110 lt!863350 lt!863355) e!1506169)))

(assert (= (and d!693317 c!374886) b!2358263))

(assert (= (and d!693317 (not c!374886)) b!2358264))

(assert (= (and b!2358264 c!374887) b!2358265))

(assert (= (and b!2358264 (not c!374887)) b!2358266))

(declare-fun m!2771035 () Bool)

(assert (=> b!2358265 m!2771035))

(assert (=> b!2358194 d!693317))

(declare-fun d!693319 () Bool)

(assert (=> d!693319 (contains!4840 lt!863333 (tuple2!27605 lt!863355 lt!863345))))

(declare-fun lt!863422 () Unit!40776)

(declare-fun choose!13646 (List!27971 (_ BitVec 64) List!27970) Unit!40776)

(assert (=> d!693319 (= lt!863422 (choose!13646 lt!863333 lt!863355 lt!863345))))

(declare-fun e!1506173 () Bool)

(assert (=> d!693319 e!1506173))

(declare-fun res!1000930 () Bool)

(assert (=> d!693319 (=> (not res!1000930) (not e!1506173))))

(declare-fun isStrictlySorted!7 (List!27971) Bool)

(assert (=> d!693319 (= res!1000930 (isStrictlySorted!7 lt!863333))))

(assert (=> d!693319 (= (lemmaGetValueByKeyImpliesContainsTuple!52 lt!863333 lt!863355 lt!863345) lt!863422)))

(declare-fun b!2358269 () Bool)

(assert (=> b!2358269 (= e!1506173 (= (getValueByKey!110 lt!863333 lt!863355) (Some!5433 lt!863345)))))

(assert (= (and d!693319 res!1000930) b!2358269))

(assert (=> d!693319 m!2770963))

(declare-fun m!2771037 () Bool)

(assert (=> d!693319 m!2771037))

(declare-fun m!2771039 () Bool)

(assert (=> d!693319 m!2771039))

(declare-fun m!2771041 () Bool)

(assert (=> b!2358269 m!2771041))

(assert (=> b!2358194 d!693319))

(declare-fun d!693321 () Bool)

(assert (=> d!693321 (isDefined!4266 (getValueByKey!110 lt!863350 lt!863355))))

(declare-fun lt!863425 () Unit!40776)

(declare-fun choose!13647 (List!27971 (_ BitVec 64)) Unit!40776)

(assert (=> d!693321 (= lt!863425 (choose!13647 lt!863350 lt!863355))))

(declare-fun e!1506176 () Bool)

(assert (=> d!693321 e!1506176))

(declare-fun res!1000933 () Bool)

(assert (=> d!693321 (=> (not res!1000933) (not e!1506176))))

(assert (=> d!693321 (= res!1000933 (isStrictlySorted!7 lt!863350))))

(assert (=> d!693321 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!69 lt!863350 lt!863355) lt!863425)))

(declare-fun b!2358272 () Bool)

(assert (=> b!2358272 (= e!1506176 (containsKey!100 lt!863350 lt!863355))))

(assert (= (and d!693321 res!1000933) b!2358272))

(assert (=> d!693321 m!2770965))

(assert (=> d!693321 m!2770965))

(assert (=> d!693321 m!2770967))

(declare-fun m!2771043 () Bool)

(assert (=> d!693321 m!2771043))

(declare-fun m!2771045 () Bool)

(assert (=> d!693321 m!2771045))

(declare-fun m!2771047 () Bool)

(assert (=> b!2358272 m!2771047))

(assert (=> b!2358194 d!693321))

(declare-fun lt!863428 () Bool)

(declare-fun d!693323 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3784 (List!27971) (InoxSet tuple2!27604))

(assert (=> d!693323 (= lt!863428 (select (content!3784 lt!863333) (tuple2!27605 lt!863355 lt!863345)))))

(declare-fun e!1506182 () Bool)

(assert (=> d!693323 (= lt!863428 e!1506182)))

(declare-fun res!1000939 () Bool)

(assert (=> d!693323 (=> (not res!1000939) (not e!1506182))))

(assert (=> d!693323 (= res!1000939 ((_ is Cons!27873) lt!863333))))

(assert (=> d!693323 (= (contains!4840 lt!863333 (tuple2!27605 lt!863355 lt!863345)) lt!863428)))

(declare-fun b!2358277 () Bool)

(declare-fun e!1506181 () Bool)

(assert (=> b!2358277 (= e!1506182 e!1506181)))

(declare-fun res!1000938 () Bool)

(assert (=> b!2358277 (=> res!1000938 e!1506181)))

(assert (=> b!2358277 (= res!1000938 (= (h!33274 lt!863333) (tuple2!27605 lt!863355 lt!863345)))))

(declare-fun b!2358278 () Bool)

(assert (=> b!2358278 (= e!1506181 (contains!4840 (t!207840 lt!863333) (tuple2!27605 lt!863355 lt!863345)))))

(assert (= (and d!693323 res!1000939) b!2358277))

(assert (= (and b!2358277 (not res!1000938)) b!2358278))

(declare-fun m!2771049 () Bool)

(assert (=> d!693323 m!2771049))

(declare-fun m!2771051 () Bool)

(assert (=> d!693323 m!2771051))

(declare-fun m!2771053 () Bool)

(assert (=> b!2358278 m!2771053))

(assert (=> b!2358194 d!693323))

(declare-fun d!693325 () Bool)

(declare-fun map!5765 (LongMapFixedSize!6452) ListLongMap!373)

(assert (=> d!693325 (= (map!5764 (v!30783 (underlying!6658 thiss!47746))) (map!5765 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746))))))))

(declare-fun bs!460367 () Bool)

(assert (= bs!460367 d!693325))

(declare-fun m!2771055 () Bool)

(assert (=> bs!460367 m!2771055))

(assert (=> b!2358194 d!693325))

(declare-fun d!693327 () Bool)

(declare-fun isEmpty!15847 (Option!5434) Bool)

(assert (=> d!693327 (= (isDefined!4266 (getValueByKey!110 lt!863350 lt!863355)) (not (isEmpty!15847 (getValueByKey!110 lt!863350 lt!863355))))))

(declare-fun bs!460368 () Bool)

(assert (= bs!460368 d!693327))

(assert (=> bs!460368 m!2770965))

(declare-fun m!2771057 () Bool)

(assert (=> bs!460368 m!2771057))

(assert (=> b!2358194 d!693327))

(declare-fun d!693329 () Bool)

(declare-fun e!1506185 () Bool)

(assert (=> d!693329 e!1506185))

(declare-fun c!374890 () Bool)

(assert (=> d!693329 (= c!374890 (contains!4842 (v!30783 (underlying!6658 thiss!47746)) lt!863355))))

(declare-fun lt!863431 () List!27970)

(declare-fun apply!6703 (LongMapFixedSize!6452 (_ BitVec 64)) List!27970)

(assert (=> d!693329 (= lt!863431 (apply!6703 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))) lt!863355))))

(declare-fun valid!2419 (MutLongMap!3226) Bool)

(assert (=> d!693329 (valid!2419 (v!30783 (underlying!6658 thiss!47746)))))

(assert (=> d!693329 (= (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355) lt!863431)))

(declare-fun b!2358283 () Bool)

(declare-fun get!8453 (Option!5434) List!27970)

(assert (=> b!2358283 (= e!1506185 (= lt!863431 (get!8453 (getValueByKey!110 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))) lt!863355))))))

(declare-fun b!2358284 () Bool)

(declare-fun dynLambda!12006 (Int (_ BitVec 64)) List!27970)

(assert (=> b!2358284 (= e!1506185 (= lt!863431 (dynLambda!12006 (defaultEntry!3594 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746))))) lt!863355)))))

(assert (=> b!2358284 ((_ is LongMap!3226) (v!30783 (underlying!6658 thiss!47746)))))

(assert (= (and d!693329 c!374890) b!2358283))

(assert (= (and d!693329 (not c!374890)) b!2358284))

(declare-fun b_lambda!73727 () Bool)

(assert (=> (not b_lambda!73727) (not b!2358284)))

(declare-fun t!207842 () Bool)

(declare-fun tb!138733 () Bool)

(assert (=> (and b!2358140 (= (defaultEntry!3594 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746))))) (defaultEntry!3594 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))))) t!207842) tb!138733))

(assert (=> b!2358284 t!207842))

(declare-fun result!169612 () Bool)

(declare-fun b_and!185287 () Bool)

(assert (= b_and!185277 (and (=> t!207842 result!169612) b_and!185287)))

(declare-fun m!2771059 () Bool)

(assert (=> d!693329 m!2771059))

(declare-fun m!2771061 () Bool)

(assert (=> d!693329 m!2771061))

(declare-fun m!2771063 () Bool)

(assert (=> d!693329 m!2771063))

(assert (=> b!2358283 m!2770915))

(declare-fun m!2771065 () Bool)

(assert (=> b!2358283 m!2771065))

(assert (=> b!2358283 m!2771065))

(declare-fun m!2771067 () Bool)

(assert (=> b!2358283 m!2771067))

(declare-fun m!2771069 () Bool)

(assert (=> b!2358284 m!2771069))

(assert (=> b!2358194 d!693329))

(declare-fun d!693331 () Bool)

(declare-fun choose!13648 (MutableMap!3136) ListMap!901)

(assert (=> d!693331 (= (abstractMap!91 thiss!47746) (choose!13648 thiss!47746))))

(declare-fun bs!460369 () Bool)

(assert (= bs!460369 d!693331))

(declare-fun m!2771071 () Bool)

(assert (=> bs!460369 m!2771071))

(assert (=> b!2358172 d!693331))

(assert (=> d!693301 d!693309))

(declare-fun bs!460370 () Bool)

(declare-fun b!2358289 () Bool)

(assert (= bs!460370 (and b!2358289 b!2358196)))

(declare-fun lambda!86694 () Int)

(assert (=> bs!460370 (= lambda!86694 lambda!86688)))

(declare-fun bs!460371 () Bool)

(assert (= bs!460371 (and b!2358289 b!2358243)))

(assert (=> bs!460371 (= lambda!86694 lambda!86691)))

(declare-fun d!693333 () Bool)

(declare-fun res!1000944 () Bool)

(declare-fun e!1506188 () Bool)

(assert (=> d!693333 (=> (not res!1000944) (not e!1506188))))

(assert (=> d!693333 (= res!1000944 (valid!2419 (v!30783 (underlying!6658 thiss!47746))))))

(assert (=> d!693333 (= (valid!2418 thiss!47746) e!1506188)))

(declare-fun res!1000945 () Bool)

(assert (=> b!2358289 (=> (not res!1000945) (not e!1506188))))

(declare-fun forall!5528 (List!27971 Int) Bool)

(assert (=> b!2358289 (= res!1000945 (forall!5528 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))) lambda!86694))))

(declare-fun b!2358290 () Bool)

(declare-fun allKeysSameHashInMap!120 (ListLongMap!373 Hashable!3136) Bool)

(assert (=> b!2358290 (= e!1506188 (allKeysSameHashInMap!120 (map!5764 (v!30783 (underlying!6658 thiss!47746))) (hashF!5059 thiss!47746)))))

(assert (= (and d!693333 res!1000944) b!2358289))

(assert (= (and b!2358289 res!1000945) b!2358290))

(assert (=> d!693333 m!2771063))

(assert (=> b!2358289 m!2770915))

(declare-fun m!2771073 () Bool)

(assert (=> b!2358289 m!2771073))

(assert (=> b!2358290 m!2770915))

(assert (=> b!2358290 m!2770915))

(declare-fun m!2771075 () Bool)

(assert (=> b!2358290 m!2771075))

(assert (=> d!693301 d!693333))

(assert (=> b!2358155 d!693333))

(declare-fun d!693335 () Bool)

(assert (=> d!693335 (= (abstractMap!92 thiss!47746) (map!5763 thiss!47746))))

(declare-fun bs!460372 () Bool)

(assert (= bs!460372 d!693335))

(assert (=> bs!460372 m!2770973))

(assert (=> b!2358173 d!693335))

(declare-fun d!693337 () Bool)

(declare-fun lt!863434 () Bool)

(assert (=> d!693337 (= lt!863434 (contains!4837 (abstractMap!90 thiss!47746) key!7176))))

(declare-fun choose!13649 (MutableMap!3136 K!4937) Bool)

(assert (=> d!693337 (= lt!863434 (choose!13649 thiss!47746 key!7176))))

(assert (=> d!693337 (valid!2416 thiss!47746)))

(assert (=> d!693337 (= (contains!4838 thiss!47746 key!7176) lt!863434)))

(declare-fun bs!460373 () Bool)

(assert (= bs!460373 d!693337))

(assert (=> bs!460373 m!2770875))

(assert (=> bs!460373 m!2770875))

(assert (=> bs!460373 m!2770909))

(declare-fun m!2771077 () Bool)

(assert (=> bs!460373 m!2771077))

(assert (=> bs!460373 m!2770883))

(assert (=> b!2358178 d!693337))

(declare-fun d!693339 () Bool)

(declare-fun choose!13650 (MutableMap!3136) Bool)

(assert (=> d!693339 (= (valid!2417 thiss!47746) (choose!13650 thiss!47746))))

(declare-fun bs!460374 () Bool)

(assert (= bs!460374 d!693339))

(declare-fun m!2771079 () Bool)

(assert (=> bs!460374 m!2771079))

(assert (=> b!2358154 d!693339))

(declare-fun d!693341 () Bool)

(assert (=> d!693341 (= (defaultEntry!3597 thiss!47746) (defaultValue!3298 thiss!47746))))

(assert (=> b!2358149 d!693341))

(declare-fun d!693343 () Bool)

(assert (=> d!693343 (= (isEmpty!15846 lt!863261) (not ((_ is Some!5432) lt!863261)))))

(assert (=> d!693297 d!693343))

(declare-fun b!2358309 () Bool)

(assert (=> b!2358309 false))

(declare-fun lt!863456 () Unit!40776)

(declare-fun lt!863452 () Unit!40776)

(assert (=> b!2358309 (= lt!863456 lt!863452)))

(declare-fun containsKey!101 (List!27970 K!4937) Bool)

(assert (=> b!2358309 (containsKey!101 (toList!1418 (abstractMap!90 thiss!47746)) key!7176)))

(declare-fun lemmaInGetKeysListThenContainsKey!8 (List!27970 K!4937) Unit!40776)

(assert (=> b!2358309 (= lt!863452 (lemmaInGetKeysListThenContainsKey!8 (toList!1418 (abstractMap!90 thiss!47746)) key!7176))))

(declare-fun e!1506206 () Unit!40776)

(declare-fun Unit!40785 () Unit!40776)

(assert (=> b!2358309 (= e!1506206 Unit!40785)))

(declare-fun b!2358310 () Bool)

(declare-fun e!1506203 () Unit!40776)

(assert (=> b!2358310 (= e!1506203 e!1506206)))

(declare-fun c!374898 () Bool)

(declare-fun call!143579 () Bool)

(assert (=> b!2358310 (= c!374898 call!143579)))

(declare-fun b!2358311 () Bool)

(declare-fun e!1506205 () Bool)

(declare-datatypes ((List!27972 0))(
  ( (Nil!27874) (Cons!27874 (h!33275 K!4937) (t!207843 List!27972)) )
))
(declare-fun contains!4843 (List!27972 K!4937) Bool)

(declare-fun keys!8743 (ListMap!901) List!27972)

(assert (=> b!2358311 (= e!1506205 (contains!4843 (keys!8743 (abstractMap!90 thiss!47746)) key!7176))))

(declare-fun b!2358312 () Bool)

(declare-fun Unit!40786 () Unit!40776)

(assert (=> b!2358312 (= e!1506206 Unit!40786)))

(declare-fun bm!143574 () Bool)

(declare-fun e!1506202 () List!27972)

(assert (=> bm!143574 (= call!143579 (contains!4843 e!1506202 key!7176))))

(declare-fun c!374897 () Bool)

(declare-fun c!374899 () Bool)

(assert (=> bm!143574 (= c!374897 c!374899)))

(declare-fun b!2358314 () Bool)

(assert (=> b!2358314 (= e!1506202 (keys!8743 (abstractMap!90 thiss!47746)))))

(declare-fun b!2358315 () Bool)

(declare-fun getKeysList!11 (List!27970) List!27972)

(assert (=> b!2358315 (= e!1506202 (getKeysList!11 (toList!1418 (abstractMap!90 thiss!47746))))))

(declare-fun b!2358316 () Bool)

(declare-fun e!1506201 () Bool)

(assert (=> b!2358316 (= e!1506201 e!1506205)))

(declare-fun res!1000952 () Bool)

(assert (=> b!2358316 (=> (not res!1000952) (not e!1506205))))

(assert (=> b!2358316 (= res!1000952 (isDefined!4265 (getValueByKey!109 (toList!1418 (abstractMap!90 thiss!47746)) key!7176)))))

(declare-fun b!2358317 () Bool)

(declare-fun e!1506204 () Bool)

(assert (=> b!2358317 (= e!1506204 (not (contains!4843 (keys!8743 (abstractMap!90 thiss!47746)) key!7176)))))

(declare-fun b!2358313 () Bool)

(declare-fun lt!863455 () Unit!40776)

(assert (=> b!2358313 (= e!1506203 lt!863455)))

(declare-fun lt!863453 () Unit!40776)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!70 (List!27970 K!4937) Unit!40776)

(assert (=> b!2358313 (= lt!863453 (lemmaContainsKeyImpliesGetValueByKeyDefined!70 (toList!1418 (abstractMap!90 thiss!47746)) key!7176))))

(assert (=> b!2358313 (isDefined!4265 (getValueByKey!109 (toList!1418 (abstractMap!90 thiss!47746)) key!7176))))

(declare-fun lt!863451 () Unit!40776)

(assert (=> b!2358313 (= lt!863451 lt!863453)))

(declare-fun lemmaInListThenGetKeysListContains!8 (List!27970 K!4937) Unit!40776)

(assert (=> b!2358313 (= lt!863455 (lemmaInListThenGetKeysListContains!8 (toList!1418 (abstractMap!90 thiss!47746)) key!7176))))

(assert (=> b!2358313 call!143579))

(declare-fun d!693345 () Bool)

(assert (=> d!693345 e!1506201))

(declare-fun res!1000954 () Bool)

(assert (=> d!693345 (=> res!1000954 e!1506201)))

(assert (=> d!693345 (= res!1000954 e!1506204)))

(declare-fun res!1000953 () Bool)

(assert (=> d!693345 (=> (not res!1000953) (not e!1506204))))

(declare-fun lt!863457 () Bool)

(assert (=> d!693345 (= res!1000953 (not lt!863457))))

(declare-fun lt!863454 () Bool)

(assert (=> d!693345 (= lt!863457 lt!863454)))

(declare-fun lt!863458 () Unit!40776)

(assert (=> d!693345 (= lt!863458 e!1506203)))

(assert (=> d!693345 (= c!374899 lt!863454)))

(assert (=> d!693345 (= lt!863454 (containsKey!101 (toList!1418 (abstractMap!90 thiss!47746)) key!7176))))

(assert (=> d!693345 (= (contains!4837 (abstractMap!90 thiss!47746) key!7176) lt!863457)))

(assert (= (and d!693345 c!374899) b!2358313))

(assert (= (and d!693345 (not c!374899)) b!2358310))

(assert (= (and b!2358310 c!374898) b!2358309))

(assert (= (and b!2358310 (not c!374898)) b!2358312))

(assert (= (or b!2358313 b!2358310) bm!143574))

(assert (= (and bm!143574 c!374897) b!2358315))

(assert (= (and bm!143574 (not c!374897)) b!2358314))

(assert (= (and d!693345 res!1000953) b!2358317))

(assert (= (and d!693345 (not res!1000954)) b!2358316))

(assert (= (and b!2358316 res!1000952) b!2358311))

(declare-fun m!2771081 () Bool)

(assert (=> b!2358315 m!2771081))

(assert (=> b!2358316 m!2770877))

(assert (=> b!2358316 m!2770877))

(declare-fun m!2771083 () Bool)

(assert (=> b!2358316 m!2771083))

(declare-fun m!2771085 () Bool)

(assert (=> b!2358313 m!2771085))

(assert (=> b!2358313 m!2770877))

(assert (=> b!2358313 m!2770877))

(assert (=> b!2358313 m!2771083))

(declare-fun m!2771087 () Bool)

(assert (=> b!2358313 m!2771087))

(assert (=> b!2358314 m!2770875))

(declare-fun m!2771089 () Bool)

(assert (=> b!2358314 m!2771089))

(declare-fun m!2771091 () Bool)

(assert (=> b!2358309 m!2771091))

(declare-fun m!2771093 () Bool)

(assert (=> b!2358309 m!2771093))

(declare-fun m!2771095 () Bool)

(assert (=> bm!143574 m!2771095))

(assert (=> d!693345 m!2771091))

(assert (=> b!2358311 m!2770875))

(assert (=> b!2358311 m!2771089))

(assert (=> b!2358311 m!2771089))

(declare-fun m!2771097 () Bool)

(assert (=> b!2358311 m!2771097))

(assert (=> b!2358317 m!2770875))

(assert (=> b!2358317 m!2771089))

(assert (=> b!2358317 m!2771089))

(assert (=> b!2358317 m!2771097))

(assert (=> d!693299 d!693345))

(assert (=> d!693299 d!693295))

(assert (=> d!693299 d!693291))

(declare-fun d!693347 () Bool)

(declare-fun choose!13651 (MutableMap!3136) Int)

(assert (=> d!693347 (= (defaultEntry!3596 thiss!47746) (choose!13651 thiss!47746))))

(declare-fun bs!460375 () Bool)

(assert (= bs!460375 d!693347))

(declare-fun m!2771099 () Bool)

(assert (=> bs!460375 m!2771099))

(assert (=> b!2358148 d!693347))

(declare-fun bs!460376 () Bool)

(declare-fun d!693349 () Bool)

(assert (= bs!460376 (and d!693349 b!2358196)))

(declare-fun lambda!86697 () Int)

(assert (=> bs!460376 (= lambda!86697 lambda!86688)))

(declare-fun bs!460377 () Bool)

(assert (= bs!460377 (and d!693349 b!2358243)))

(assert (=> bs!460377 (= lambda!86697 lambda!86691)))

(declare-fun bs!460378 () Bool)

(assert (= bs!460378 (and d!693349 b!2358289)))

(assert (=> bs!460378 (= lambda!86697 lambda!86694)))

(declare-fun lt!863461 () ListMap!901)

(assert (=> d!693349 (invariantList!397 (toList!1418 lt!863461))))

(declare-fun e!1506209 () ListMap!901)

(assert (=> d!693349 (= lt!863461 e!1506209)))

(declare-fun c!374902 () Bool)

(assert (=> d!693349 (= c!374902 ((_ is Cons!27873) (toList!1419 lt!863328)))))

(assert (=> d!693349 (forall!5528 (toList!1419 lt!863328) lambda!86697)))

(assert (=> d!693349 (= (extractMap!131 (toList!1419 lt!863328)) lt!863461)))

(declare-fun b!2358322 () Bool)

(declare-fun addToMapMapFromBucket!11 (List!27970 ListMap!901) ListMap!901)

(assert (=> b!2358322 (= e!1506209 (addToMapMapFromBucket!11 (_2!16343 (h!33274 (toList!1419 lt!863328))) (extractMap!131 (t!207840 (toList!1419 lt!863328)))))))

(declare-fun b!2358323 () Bool)

(assert (=> b!2358323 (= e!1506209 (ListMap!902 Nil!27872))))

(assert (= (and d!693349 c!374902) b!2358322))

(assert (= (and d!693349 (not c!374902)) b!2358323))

(declare-fun m!2771101 () Bool)

(assert (=> d!693349 m!2771101))

(declare-fun m!2771103 () Bool)

(assert (=> d!693349 m!2771103))

(declare-fun m!2771105 () Bool)

(assert (=> b!2358322 m!2771105))

(assert (=> b!2358322 m!2771105))

(declare-fun m!2771107 () Bool)

(assert (=> b!2358322 m!2771107))

(assert (=> b!2358196 d!693349))

(declare-fun d!693351 () Bool)

(declare-fun e!1506222 () Bool)

(assert (=> d!693351 e!1506222))

(declare-fun res!1000963 () Bool)

(assert (=> d!693351 (=> res!1000963 e!1506222)))

(declare-fun e!1506223 () Bool)

(assert (=> d!693351 (= res!1000963 e!1506223)))

(declare-fun res!1000965 () Bool)

(assert (=> d!693351 (=> (not res!1000965) (not e!1506223))))

(declare-fun lt!863464 () Option!5435)

(declare-fun isEmpty!15848 (Option!5435) Bool)

(assert (=> d!693351 (= res!1000965 (isEmpty!15848 lt!863464))))

(declare-fun e!1506221 () Option!5435)

(assert (=> d!693351 (= lt!863464 e!1506221)))

(declare-fun c!374908 () Bool)

(assert (=> d!693351 (= c!374908 (and ((_ is Cons!27872) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176))) (= (_1!16342 (h!33273 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))) key!7176)))))

(declare-fun noDuplicateKeys!40 (List!27970) Bool)

(assert (=> d!693351 (noDuplicateKeys!40 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))

(assert (=> d!693351 (= (getPair!51 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) key!7176) lt!863464)))

(declare-fun b!2358340 () Bool)

(declare-fun e!1506220 () Bool)

(assert (=> b!2358340 (= e!1506222 e!1506220)))

(declare-fun res!1000966 () Bool)

(assert (=> b!2358340 (=> (not res!1000966) (not e!1506220))))

(assert (=> b!2358340 (= res!1000966 (isDefined!4267 lt!863464))))

(declare-fun b!2358341 () Bool)

(declare-fun res!1000964 () Bool)

(assert (=> b!2358341 (=> (not res!1000964) (not e!1506220))))

(assert (=> b!2358341 (= res!1000964 (= (_1!16342 (get!8452 lt!863464)) key!7176))))

(declare-fun b!2358342 () Bool)

(declare-fun e!1506224 () Option!5435)

(assert (=> b!2358342 (= e!1506221 e!1506224)))

(declare-fun c!374907 () Bool)

(assert (=> b!2358342 (= c!374907 ((_ is Cons!27872) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176))))))

(declare-fun b!2358343 () Bool)

(declare-fun contains!4844 (List!27970 tuple2!27602) Bool)

(assert (=> b!2358343 (= e!1506220 (contains!4844 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) (get!8452 lt!863464)))))

(declare-fun b!2358344 () Bool)

(assert (=> b!2358344 (= e!1506224 (getPair!51 (t!207837 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176))) key!7176))))

(declare-fun b!2358345 () Bool)

(declare-fun containsKey!102 (List!27970 K!4937) Bool)

(assert (=> b!2358345 (= e!1506223 (not (containsKey!102 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) key!7176)))))

(declare-fun b!2358346 () Bool)

(assert (=> b!2358346 (= e!1506221 (Some!5434 (h!33273 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))))

(declare-fun b!2358347 () Bool)

(assert (=> b!2358347 (= e!1506224 None!5434)))

(assert (= (and d!693351 c!374908) b!2358346))

(assert (= (and d!693351 (not c!374908)) b!2358342))

(assert (= (and b!2358342 c!374907) b!2358344))

(assert (= (and b!2358342 (not c!374907)) b!2358347))

(assert (= (and d!693351 res!1000965) b!2358345))

(assert (= (and d!693351 (not res!1000963)) b!2358340))

(assert (= (and b!2358340 res!1000966) b!2358341))

(assert (= (and b!2358341 res!1000964) b!2358343))

(declare-fun m!2771109 () Bool)

(assert (=> d!693351 m!2771109))

(assert (=> d!693351 m!2770947))

(declare-fun m!2771111 () Bool)

(assert (=> d!693351 m!2771111))

(assert (=> b!2358345 m!2770947))

(declare-fun m!2771113 () Bool)

(assert (=> b!2358345 m!2771113))

(declare-fun m!2771115 () Bool)

(assert (=> b!2358340 m!2771115))

(declare-fun m!2771117 () Bool)

(assert (=> b!2358341 m!2771117))

(declare-fun m!2771119 () Bool)

(assert (=> b!2358344 m!2771119))

(assert (=> b!2358343 m!2771117))

(assert (=> b!2358343 m!2770947))

(assert (=> b!2358343 m!2771117))

(declare-fun m!2771121 () Bool)

(assert (=> b!2358343 m!2771121))

(assert (=> b!2358196 d!693351))

(assert (=> b!2358196 d!693325))

(declare-fun bs!460379 () Bool)

(declare-fun d!693353 () Bool)

(assert (= bs!460379 (and d!693353 b!2358196)))

(declare-fun lambda!86700 () Int)

(assert (=> bs!460379 (= lambda!86700 lambda!86688)))

(declare-fun bs!460380 () Bool)

(assert (= bs!460380 (and d!693353 b!2358243)))

(assert (=> bs!460380 (= lambda!86700 lambda!86691)))

(declare-fun bs!460381 () Bool)

(assert (= bs!460381 (and d!693353 b!2358289)))

(assert (=> bs!460381 (= lambda!86700 lambda!86694)))

(declare-fun bs!460382 () Bool)

(assert (= bs!460382 (and d!693353 d!693349)))

(assert (=> bs!460382 (= lambda!86700 lambda!86697)))

(assert (=> d!693353 (contains!4841 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(declare-fun lt!863467 () Unit!40776)

(declare-fun choose!13652 (ListLongMap!373 K!4937 Hashable!3136) Unit!40776)

(assert (=> d!693353 (= lt!863467 (choose!13652 lt!863328 key!7176 (hashF!5059 thiss!47746)))))

(assert (=> d!693353 (forall!5528 (toList!1419 lt!863328) lambda!86700)))

(assert (=> d!693353 (= (lemmaInGenMapThenLongMapContainsHash!27 lt!863328 key!7176 (hashF!5059 thiss!47746)) lt!863467)))

(declare-fun bs!460383 () Bool)

(assert (= bs!460383 d!693353))

(assert (=> bs!460383 m!2770945))

(assert (=> bs!460383 m!2770945))

(assert (=> bs!460383 m!2770959))

(declare-fun m!2771123 () Bool)

(assert (=> bs!460383 m!2771123))

(declare-fun m!2771125 () Bool)

(assert (=> bs!460383 m!2771125))

(assert (=> b!2358196 d!693353))

(declare-fun d!693355 () Bool)

(declare-fun dynLambda!12007 (Int tuple2!27604) Bool)

(assert (=> d!693355 (dynLambda!12007 lambda!86688 (tuple2!27605 (hash!598 (hashF!5059 thiss!47746) key!7176) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176))))))

(declare-fun lt!863470 () Unit!40776)

(declare-fun choose!13653 (List!27971 Int tuple2!27604) Unit!40776)

(assert (=> d!693355 (= lt!863470 (choose!13653 (toList!1419 lt!863328) lambda!86688 (tuple2!27605 (hash!598 (hashF!5059 thiss!47746) key!7176) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))))

(declare-fun e!1506227 () Bool)

(assert (=> d!693355 e!1506227))

(declare-fun res!1000969 () Bool)

(assert (=> d!693355 (=> (not res!1000969) (not e!1506227))))

(assert (=> d!693355 (= res!1000969 (forall!5528 (toList!1419 lt!863328) lambda!86688))))

(assert (=> d!693355 (= (forallContained!798 (toList!1419 lt!863328) lambda!86688 (tuple2!27605 (hash!598 (hashF!5059 thiss!47746) key!7176) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))) lt!863470)))

(declare-fun b!2358350 () Bool)

(assert (=> b!2358350 (= e!1506227 (contains!4840 (toList!1419 lt!863328) (tuple2!27605 (hash!598 (hashF!5059 thiss!47746) key!7176) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))))

(assert (= (and d!693355 res!1000969) b!2358350))

(declare-fun b_lambda!73729 () Bool)

(assert (=> (not b_lambda!73729) (not d!693355)))

(declare-fun m!2771127 () Bool)

(assert (=> d!693355 m!2771127))

(declare-fun m!2771129 () Bool)

(assert (=> d!693355 m!2771129))

(declare-fun m!2771131 () Bool)

(assert (=> d!693355 m!2771131))

(declare-fun m!2771133 () Bool)

(assert (=> b!2358350 m!2771133))

(assert (=> b!2358196 d!693355))

(declare-fun d!693357 () Bool)

(assert (=> d!693357 (dynLambda!12007 lambda!86688 (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355)))))

(declare-fun lt!863471 () Unit!40776)

(assert (=> d!693357 (= lt!863471 (choose!13653 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))) lambda!86688 (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))))))

(declare-fun e!1506228 () Bool)

(assert (=> d!693357 e!1506228))

(declare-fun res!1000970 () Bool)

(assert (=> d!693357 (=> (not res!1000970) (not e!1506228))))

(assert (=> d!693357 (= res!1000970 (forall!5528 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))) lambda!86688))))

(assert (=> d!693357 (= (forallContained!798 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))) lambda!86688 (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))) lt!863471)))

(declare-fun b!2358351 () Bool)

(assert (=> b!2358351 (= e!1506228 (contains!4840 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))) (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))))))

(assert (= (and d!693357 res!1000970) b!2358351))

(declare-fun b_lambda!73731 () Bool)

(assert (=> (not b_lambda!73731) (not d!693357)))

(declare-fun m!2771135 () Bool)

(assert (=> d!693357 m!2771135))

(declare-fun m!2771137 () Bool)

(assert (=> d!693357 m!2771137))

(declare-fun m!2771139 () Bool)

(assert (=> d!693357 m!2771139))

(assert (=> b!2358351 m!2770923))

(assert (=> b!2358196 d!693357))

(declare-fun d!693359 () Bool)

(assert (=> d!693359 (= (isDefined!4267 (getPair!51 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) key!7176)) (not (isEmpty!15848 (getPair!51 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) key!7176))))))

(declare-fun bs!460384 () Bool)

(assert (= bs!460384 d!693359))

(assert (=> bs!460384 m!2770933))

(declare-fun m!2771141 () Bool)

(assert (=> bs!460384 m!2771141))

(assert (=> b!2358196 d!693359))

(declare-fun d!693361 () Bool)

(assert (=> d!693361 (= (get!8451 (getValueByKey!109 (toList!1418 (extractMap!131 (toList!1419 lt!863328))) key!7176)) (v!30784 (getValueByKey!109 (toList!1418 (extractMap!131 (toList!1419 lt!863328))) key!7176)))))

(assert (=> b!2358196 d!693361))

(declare-fun lt!863472 () Bool)

(declare-fun d!693363 () Bool)

(assert (=> d!693363 (= lt!863472 (select (content!3784 (toList!1419 lt!863328)) (tuple2!27605 lt!863342 lt!863354)))))

(declare-fun e!1506230 () Bool)

(assert (=> d!693363 (= lt!863472 e!1506230)))

(declare-fun res!1000972 () Bool)

(assert (=> d!693363 (=> (not res!1000972) (not e!1506230))))

(assert (=> d!693363 (= res!1000972 ((_ is Cons!27873) (toList!1419 lt!863328)))))

(assert (=> d!693363 (= (contains!4840 (toList!1419 lt!863328) (tuple2!27605 lt!863342 lt!863354)) lt!863472)))

(declare-fun b!2358352 () Bool)

(declare-fun e!1506229 () Bool)

(assert (=> b!2358352 (= e!1506230 e!1506229)))

(declare-fun res!1000971 () Bool)

(assert (=> b!2358352 (=> res!1000971 e!1506229)))

(assert (=> b!2358352 (= res!1000971 (= (h!33274 (toList!1419 lt!863328)) (tuple2!27605 lt!863342 lt!863354)))))

(declare-fun b!2358353 () Bool)

(assert (=> b!2358353 (= e!1506229 (contains!4840 (t!207840 (toList!1419 lt!863328)) (tuple2!27605 lt!863342 lt!863354)))))

(assert (= (and d!693363 res!1000972) b!2358352))

(assert (= (and b!2358352 (not res!1000971)) b!2358353))

(declare-fun m!2771143 () Bool)

(assert (=> d!693363 m!2771143))

(declare-fun m!2771145 () Bool)

(assert (=> d!693363 m!2771145))

(declare-fun m!2771147 () Bool)

(assert (=> b!2358353 m!2771147))

(assert (=> b!2358196 d!693363))

(declare-fun d!693365 () Bool)

(assert (=> d!693365 (= (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) (get!8453 (getValueByKey!110 (toList!1419 lt!863328) (hash!598 (hashF!5059 thiss!47746) key!7176))))))

(declare-fun bs!460385 () Bool)

(assert (= bs!460385 d!693365))

(assert (=> bs!460385 m!2770945))

(declare-fun m!2771149 () Bool)

(assert (=> bs!460385 m!2771149))

(assert (=> bs!460385 m!2771149))

(declare-fun m!2771151 () Bool)

(assert (=> bs!460385 m!2771151))

(assert (=> b!2358196 d!693365))

(declare-fun d!693367 () Bool)

(declare-fun lt!863473 () Bool)

(assert (=> d!693367 (= lt!863473 (select (content!3784 (toList!1419 lt!863328)) (tuple2!27605 lt!863332 lt!863356)))))

(declare-fun e!1506232 () Bool)

(assert (=> d!693367 (= lt!863473 e!1506232)))

(declare-fun res!1000974 () Bool)

(assert (=> d!693367 (=> (not res!1000974) (not e!1506232))))

(assert (=> d!693367 (= res!1000974 ((_ is Cons!27873) (toList!1419 lt!863328)))))

(assert (=> d!693367 (= (contains!4840 (toList!1419 lt!863328) (tuple2!27605 lt!863332 lt!863356)) lt!863473)))

(declare-fun b!2358354 () Bool)

(declare-fun e!1506231 () Bool)

(assert (=> b!2358354 (= e!1506232 e!1506231)))

(declare-fun res!1000973 () Bool)

(assert (=> b!2358354 (=> res!1000973 e!1506231)))

(assert (=> b!2358354 (= res!1000973 (= (h!33274 (toList!1419 lt!863328)) (tuple2!27605 lt!863332 lt!863356)))))

(declare-fun b!2358355 () Bool)

(assert (=> b!2358355 (= e!1506231 (contains!4840 (t!207840 (toList!1419 lt!863328)) (tuple2!27605 lt!863332 lt!863356)))))

(assert (= (and d!693367 res!1000974) b!2358354))

(assert (= (and b!2358354 (not res!1000973)) b!2358355))

(assert (=> d!693367 m!2771143))

(declare-fun m!2771153 () Bool)

(assert (=> d!693367 m!2771153))

(declare-fun m!2771155 () Bool)

(assert (=> b!2358355 m!2771155))

(assert (=> b!2358196 d!693367))

(declare-fun d!693369 () Bool)

(assert (=> d!693369 (= (get!8452 (getPair!51 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355) key!7176)) (v!30786 (getPair!51 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355) key!7176)))))

(assert (=> b!2358196 d!693369))

(declare-fun d!693371 () Bool)

(declare-fun e!1506238 () Bool)

(assert (=> d!693371 e!1506238))

(declare-fun res!1000977 () Bool)

(assert (=> d!693371 (=> res!1000977 e!1506238)))

(declare-fun lt!863482 () Bool)

(assert (=> d!693371 (= res!1000977 (not lt!863482))))

(declare-fun lt!863484 () Bool)

(assert (=> d!693371 (= lt!863482 lt!863484)))

(declare-fun lt!863485 () Unit!40776)

(declare-fun e!1506237 () Unit!40776)

(assert (=> d!693371 (= lt!863485 e!1506237)))

(declare-fun c!374911 () Bool)

(assert (=> d!693371 (= c!374911 lt!863484)))

(assert (=> d!693371 (= lt!863484 (containsKey!100 (toList!1419 lt!863328) (hash!598 (hashF!5059 thiss!47746) key!7176)))))

(assert (=> d!693371 (= (contains!4841 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) lt!863482)))

(declare-fun b!2358362 () Bool)

(declare-fun lt!863483 () Unit!40776)

(assert (=> b!2358362 (= e!1506237 lt!863483)))

(assert (=> b!2358362 (= lt!863483 (lemmaContainsKeyImpliesGetValueByKeyDefined!69 (toList!1419 lt!863328) (hash!598 (hashF!5059 thiss!47746) key!7176)))))

(assert (=> b!2358362 (isDefined!4266 (getValueByKey!110 (toList!1419 lt!863328) (hash!598 (hashF!5059 thiss!47746) key!7176)))))

(declare-fun b!2358363 () Bool)

(declare-fun Unit!40787 () Unit!40776)

(assert (=> b!2358363 (= e!1506237 Unit!40787)))

(declare-fun b!2358364 () Bool)

(assert (=> b!2358364 (= e!1506238 (isDefined!4266 (getValueByKey!110 (toList!1419 lt!863328) (hash!598 (hashF!5059 thiss!47746) key!7176))))))

(assert (= (and d!693371 c!374911) b!2358362))

(assert (= (and d!693371 (not c!374911)) b!2358363))

(assert (= (and d!693371 (not res!1000977)) b!2358364))

(assert (=> d!693371 m!2770945))

(declare-fun m!2771157 () Bool)

(assert (=> d!693371 m!2771157))

(assert (=> b!2358362 m!2770945))

(declare-fun m!2771159 () Bool)

(assert (=> b!2358362 m!2771159))

(assert (=> b!2358362 m!2770945))

(assert (=> b!2358362 m!2771149))

(assert (=> b!2358362 m!2771149))

(declare-fun m!2771161 () Bool)

(assert (=> b!2358362 m!2771161))

(assert (=> b!2358364 m!2770945))

(assert (=> b!2358364 m!2771149))

(assert (=> b!2358364 m!2771149))

(assert (=> b!2358364 m!2771161))

(assert (=> b!2358196 d!693371))

(declare-fun d!693373 () Bool)

(declare-fun hash!599 (Hashable!3136 K!4937) (_ BitVec 64))

(assert (=> d!693373 (= (hash!598 (hashF!5059 thiss!47746) key!7176) (hash!599 (hashF!5059 thiss!47746) key!7176))))

(declare-fun bs!460386 () Bool)

(assert (= bs!460386 d!693373))

(declare-fun m!2771163 () Bool)

(assert (=> bs!460386 m!2771163))

(assert (=> b!2358196 d!693373))

(declare-fun bs!460387 () Bool)

(declare-fun d!693375 () Bool)

(assert (= bs!460387 (and d!693375 b!2358196)))

(declare-fun lambda!86707 () Int)

(assert (=> bs!460387 (= lambda!86707 lambda!86688)))

(declare-fun bs!460388 () Bool)

(assert (= bs!460388 (and d!693375 d!693349)))

(assert (=> bs!460388 (= lambda!86707 lambda!86697)))

(declare-fun bs!460389 () Bool)

(assert (= bs!460389 (and d!693375 b!2358243)))

(assert (=> bs!460389 (= lambda!86707 lambda!86691)))

(declare-fun bs!460390 () Bool)

(assert (= bs!460390 (and d!693375 d!693353)))

(assert (=> bs!460390 (= lambda!86707 lambda!86700)))

(declare-fun bs!460391 () Bool)

(assert (= bs!460391 (and d!693375 b!2358289)))

(assert (=> bs!460391 (= lambda!86707 lambda!86694)))

(declare-fun b!2358373 () Bool)

(declare-fun res!1000987 () Bool)

(declare-fun e!1506244 () Bool)

(assert (=> b!2358373 (=> (not res!1000987) (not e!1506244))))

(assert (=> b!2358373 (= res!1000987 (allKeysSameHashInMap!120 lt!863328 (hashF!5059 thiss!47746)))))

(declare-fun b!2358374 () Bool)

(declare-fun res!1000986 () Bool)

(assert (=> b!2358374 (=> (not res!1000986) (not e!1506244))))

(assert (=> b!2358374 (= res!1000986 (contains!4837 (extractMap!131 (toList!1419 lt!863328)) key!7176))))

(declare-fun b!2358375 () Bool)

(assert (=> b!2358375 (= e!1506244 (isDefined!4267 (getPair!51 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) key!7176)))))

(declare-fun lt!863503 () Unit!40776)

(assert (=> b!2358375 (= lt!863503 (forallContained!798 (toList!1419 lt!863328) lambda!86707 (tuple2!27605 (hash!598 (hashF!5059 thiss!47746) key!7176) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))))

(declare-fun lt!863509 () Unit!40776)

(declare-fun lt!863504 () Unit!40776)

(assert (=> b!2358375 (= lt!863509 lt!863504)))

(declare-fun lt!863505 () (_ BitVec 64))

(declare-fun lt!863502 () List!27970)

(assert (=> b!2358375 (contains!4840 (toList!1419 lt!863328) (tuple2!27605 lt!863505 lt!863502))))

(assert (=> b!2358375 (= lt!863504 (lemmaGetValueImpliesTupleContained!28 lt!863328 lt!863505 lt!863502))))

(declare-fun e!1506243 () Bool)

(assert (=> b!2358375 e!1506243))

(declare-fun res!1000988 () Bool)

(assert (=> b!2358375 (=> (not res!1000988) (not e!1506243))))

(assert (=> b!2358375 (= res!1000988 (contains!4841 lt!863328 lt!863505))))

(assert (=> b!2358375 (= lt!863502 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))

(assert (=> b!2358375 (= lt!863505 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(declare-fun lt!863507 () Unit!40776)

(declare-fun lt!863508 () Unit!40776)

(assert (=> b!2358375 (= lt!863507 lt!863508)))

(assert (=> b!2358375 (contains!4841 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(assert (=> b!2358375 (= lt!863508 (lemmaInGenMapThenLongMapContainsHash!27 lt!863328 key!7176 (hashF!5059 thiss!47746)))))

(assert (=> d!693375 e!1506244))

(declare-fun res!1000989 () Bool)

(assert (=> d!693375 (=> (not res!1000989) (not e!1506244))))

(assert (=> d!693375 (= res!1000989 (forall!5528 (toList!1419 lt!863328) lambda!86707))))

(declare-fun lt!863506 () Unit!40776)

(declare-fun choose!13654 (ListLongMap!373 K!4937 Hashable!3136) Unit!40776)

(assert (=> d!693375 (= lt!863506 (choose!13654 lt!863328 key!7176 (hashF!5059 thiss!47746)))))

(assert (=> d!693375 (forall!5528 (toList!1419 lt!863328) lambda!86707)))

(assert (=> d!693375 (= (lemmaInGenMapThenGetPairDefined!27 lt!863328 key!7176 (hashF!5059 thiss!47746)) lt!863506)))

(declare-fun b!2358376 () Bool)

(assert (=> b!2358376 (= e!1506243 (= (getValueByKey!110 (toList!1419 lt!863328) lt!863505) (Some!5433 lt!863502)))))

(assert (= (and d!693375 res!1000989) b!2358373))

(assert (= (and b!2358373 res!1000987) b!2358374))

(assert (= (and b!2358374 res!1000986) b!2358375))

(assert (= (and b!2358375 res!1000988) b!2358376))

(assert (=> b!2358374 m!2770937))

(assert (=> b!2358374 m!2770937))

(declare-fun m!2771165 () Bool)

(assert (=> b!2358374 m!2771165))

(declare-fun m!2771167 () Bool)

(assert (=> b!2358375 m!2771167))

(assert (=> b!2358375 m!2770945))

(assert (=> b!2358375 m!2770947))

(assert (=> b!2358375 m!2770945))

(assert (=> b!2358375 m!2770959))

(assert (=> b!2358375 m!2770947))

(assert (=> b!2358375 m!2770933))

(declare-fun m!2771169 () Bool)

(assert (=> b!2358375 m!2771169))

(declare-fun m!2771171 () Bool)

(assert (=> b!2358375 m!2771171))

(assert (=> b!2358375 m!2770933))

(assert (=> b!2358375 m!2770943))

(declare-fun m!2771173 () Bool)

(assert (=> b!2358375 m!2771173))

(assert (=> b!2358375 m!2770957))

(assert (=> b!2358375 m!2770945))

(declare-fun m!2771175 () Bool)

(assert (=> d!693375 m!2771175))

(declare-fun m!2771177 () Bool)

(assert (=> d!693375 m!2771177))

(assert (=> d!693375 m!2771175))

(declare-fun m!2771179 () Bool)

(assert (=> b!2358376 m!2771179))

(declare-fun m!2771181 () Bool)

(assert (=> b!2358373 m!2771181))

(assert (=> b!2358196 d!693375))

(declare-fun d!693377 () Bool)

(assert (=> d!693377 (= (get!8452 (getPair!51 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) key!7176)) (v!30786 (getPair!51 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) key!7176)))))

(assert (=> b!2358196 d!693377))

(declare-fun b!2358377 () Bool)

(declare-fun e!1506245 () Option!5433)

(assert (=> b!2358377 (= e!1506245 (Some!5432 (_2!16342 (h!33273 (toList!1418 (extractMap!131 (toList!1419 lt!863328)))))))))

(declare-fun b!2358378 () Bool)

(declare-fun e!1506246 () Option!5433)

(assert (=> b!2358378 (= e!1506245 e!1506246)))

(declare-fun c!374913 () Bool)

(assert (=> b!2358378 (= c!374913 (and ((_ is Cons!27872) (toList!1418 (extractMap!131 (toList!1419 lt!863328)))) (not (= (_1!16342 (h!33273 (toList!1418 (extractMap!131 (toList!1419 lt!863328))))) key!7176))))))

(declare-fun b!2358379 () Bool)

(assert (=> b!2358379 (= e!1506246 (getValueByKey!109 (t!207837 (toList!1418 (extractMap!131 (toList!1419 lt!863328)))) key!7176))))

(declare-fun b!2358380 () Bool)

(assert (=> b!2358380 (= e!1506246 None!5432)))

(declare-fun d!693379 () Bool)

(declare-fun c!374912 () Bool)

(assert (=> d!693379 (= c!374912 (and ((_ is Cons!27872) (toList!1418 (extractMap!131 (toList!1419 lt!863328)))) (= (_1!16342 (h!33273 (toList!1418 (extractMap!131 (toList!1419 lt!863328))))) key!7176)))))

(assert (=> d!693379 (= (getValueByKey!109 (toList!1418 (extractMap!131 (toList!1419 lt!863328))) key!7176) e!1506245)))

(assert (= (and d!693379 c!374912) b!2358377))

(assert (= (and d!693379 (not c!374912)) b!2358378))

(assert (= (and b!2358378 c!374913) b!2358379))

(assert (= (and b!2358378 (not c!374913)) b!2358380))

(declare-fun m!2771183 () Bool)

(assert (=> b!2358379 m!2771183))

(assert (=> b!2358196 d!693379))

(declare-fun bs!460392 () Bool)

(declare-fun d!693381 () Bool)

(assert (= bs!460392 (and d!693381 d!693349)))

(declare-fun lambda!86720 () Int)

(assert (=> bs!460392 (= lambda!86720 lambda!86697)))

(declare-fun bs!460393 () Bool)

(assert (= bs!460393 (and d!693381 b!2358243)))

(assert (=> bs!460393 (= lambda!86720 lambda!86691)))

(declare-fun bs!460394 () Bool)

(assert (= bs!460394 (and d!693381 d!693353)))

(assert (=> bs!460394 (= lambda!86720 lambda!86700)))

(declare-fun bs!460395 () Bool)

(assert (= bs!460395 (and d!693381 b!2358289)))

(assert (=> bs!460395 (= lambda!86720 lambda!86694)))

(declare-fun bs!460396 () Bool)

(assert (= bs!460396 (and d!693381 b!2358196)))

(assert (=> bs!460396 (= lambda!86720 lambda!86688)))

(declare-fun bs!460397 () Bool)

(assert (= bs!460397 (and d!693381 d!693375)))

(assert (=> bs!460397 (= lambda!86720 lambda!86707)))

(declare-fun b!2358401 () Bool)

(declare-fun e!1506259 () Bool)

(assert (=> b!2358401 (= e!1506259 (isDefined!4267 (getPair!51 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) key!7176)))))

(declare-fun lt!863545 () Unit!40776)

(assert (=> b!2358401 (= lt!863545 (forallContained!798 (toList!1419 lt!863328) lambda!86720 (tuple2!27605 (hash!598 (hashF!5059 thiss!47746) key!7176) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))))

(declare-fun lt!863553 () Unit!40776)

(declare-fun lt!863548 () Unit!40776)

(assert (=> b!2358401 (= lt!863553 lt!863548)))

(declare-fun lt!863550 () (_ BitVec 64))

(declare-fun lt!863546 () List!27970)

(assert (=> b!2358401 (contains!4840 (toList!1419 lt!863328) (tuple2!27605 lt!863550 lt!863546))))

(assert (=> b!2358401 (= lt!863548 (lemmaGetValueImpliesTupleContained!28 lt!863328 lt!863550 lt!863546))))

(declare-fun e!1506258 () Bool)

(assert (=> b!2358401 e!1506258))

(declare-fun res!1001015 () Bool)

(assert (=> b!2358401 (=> (not res!1001015) (not e!1506258))))

(assert (=> b!2358401 (= res!1001015 (contains!4841 lt!863328 lt!863550))))

(assert (=> b!2358401 (= lt!863546 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))

(assert (=> b!2358401 (= lt!863550 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(declare-fun lt!863556 () Unit!40776)

(declare-fun lt!863551 () Unit!40776)

(assert (=> b!2358401 (= lt!863556 lt!863551)))

(assert (=> b!2358401 (contains!4841 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(assert (=> b!2358401 (= lt!863551 (lemmaInGenMapThenLongMapContainsHash!27 lt!863328 key!7176 (hashF!5059 thiss!47746)))))

(declare-fun b!2358403 () Bool)

(declare-fun res!1001017 () Bool)

(declare-fun e!1506260 () Bool)

(assert (=> b!2358403 (=> (not res!1001017) (not e!1506260))))

(assert (=> b!2358403 (= res!1001017 (contains!4837 (extractMap!131 (toList!1419 lt!863328)) key!7176))))

(declare-fun b!2358404 () Bool)

(declare-fun res!1001018 () Bool)

(assert (=> b!2358404 (=> (not res!1001018) (not e!1506259))))

(assert (=> b!2358404 (= res!1001018 (allKeysSameHashInMap!120 lt!863328 (hashF!5059 thiss!47746)))))

(declare-fun b!2358405 () Bool)

(declare-fun res!1001016 () Bool)

(assert (=> b!2358405 (=> (not res!1001016) (not e!1506259))))

(assert (=> b!2358405 (= res!1001016 (contains!4837 (extractMap!131 (toList!1419 lt!863328)) key!7176))))

(declare-fun b!2358406 () Bool)

(declare-fun res!1001013 () Bool)

(declare-fun e!1506261 () Bool)

(assert (=> b!2358406 (=> (not res!1001013) (not e!1506261))))

(assert (=> b!2358406 (= res!1001013 (allKeysSameHashInMap!120 lt!863328 (hashF!5059 thiss!47746)))))

(declare-fun b!2358407 () Bool)

(assert (=> b!2358407 (= e!1506261 (contains!4837 (extractMap!131 (toList!1419 lt!863328)) key!7176))))

(declare-fun b!2358408 () Bool)

(assert (=> b!2358408 (= e!1506260 (= (_2!16342 (get!8452 (getPair!51 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)) key!7176))) (get!8451 (getValueByKey!109 (toList!1418 (extractMap!131 (toList!1419 lt!863328))) key!7176))))))

(declare-fun lt!863547 () Unit!40776)

(declare-fun lt!863557 () Unit!40776)

(assert (=> b!2358408 (= lt!863547 lt!863557)))

(assert (=> b!2358408 e!1506259))

(declare-fun res!1001019 () Bool)

(assert (=> b!2358408 (=> (not res!1001019) (not e!1506259))))

(assert (=> b!2358408 (= res!1001019 (forall!5528 (toList!1419 lt!863328) lambda!86720))))

(assert (=> b!2358408 (= lt!863557 (lemmaInGenMapThenGetPairDefined!27 lt!863328 key!7176 (hashF!5059 thiss!47746)))))

(assert (=> b!2358408 e!1506261))

(declare-fun res!1001014 () Bool)

(assert (=> b!2358408 (=> (not res!1001014) (not e!1506261))))

(assert (=> b!2358408 (= res!1001014 (forall!5528 (toList!1419 lt!863328) lambda!86720))))

(declare-fun lt!863559 () Unit!40776)

(assert (=> b!2358408 (= lt!863559 (forallContained!798 (toList!1419 lt!863328) lambda!86720 (tuple2!27605 (hash!598 (hashF!5059 thiss!47746) key!7176) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))))

(declare-fun lt!863555 () Unit!40776)

(declare-fun lt!863560 () Unit!40776)

(assert (=> b!2358408 (= lt!863555 lt!863560)))

(declare-fun lt!863552 () (_ BitVec 64))

(declare-fun lt!863554 () List!27970)

(assert (=> b!2358408 (contains!4840 (toList!1419 lt!863328) (tuple2!27605 lt!863552 lt!863554))))

(assert (=> b!2358408 (= lt!863560 (lemmaGetValueImpliesTupleContained!28 lt!863328 lt!863552 lt!863554))))

(declare-fun e!1506257 () Bool)

(assert (=> b!2358408 e!1506257))

(declare-fun res!1001011 () Bool)

(assert (=> b!2358408 (=> (not res!1001011) (not e!1506257))))

(assert (=> b!2358408 (= res!1001011 (contains!4841 lt!863328 lt!863552))))

(assert (=> b!2358408 (= lt!863554 (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))))

(assert (=> b!2358408 (= lt!863552 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(declare-fun lt!863544 () Unit!40776)

(declare-fun lt!863558 () Unit!40776)

(assert (=> b!2358408 (= lt!863544 lt!863558)))

(assert (=> b!2358408 (contains!4841 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176))))

(assert (=> b!2358408 (= lt!863558 (lemmaInGenMapThenLongMapContainsHash!27 lt!863328 key!7176 (hashF!5059 thiss!47746)))))

(declare-fun b!2358402 () Bool)

(assert (=> b!2358402 (= e!1506257 (= (getValueByKey!110 (toList!1419 lt!863328) lt!863552) (Some!5433 lt!863554)))))

(assert (=> d!693381 e!1506260))

(declare-fun res!1001010 () Bool)

(assert (=> d!693381 (=> (not res!1001010) (not e!1506260))))

(assert (=> d!693381 (= res!1001010 (forall!5528 (toList!1419 lt!863328) lambda!86720))))

(declare-fun lt!863549 () Unit!40776)

(declare-fun choose!13655 (ListLongMap!373 K!4937 V!5139 Hashable!3136) Unit!40776)

(assert (=> d!693381 (= lt!863549 (choose!13655 lt!863328 key!7176 (_2!16342 (get!8452 (getPair!51 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355) key!7176))) (hashF!5059 thiss!47746)))))

(assert (=> d!693381 (forall!5528 (toList!1419 lt!863328) lambda!86720)))

(assert (=> d!693381 (= (lemmaGetPairGetSameValueAsMap!27 lt!863328 key!7176 (_2!16342 (get!8452 (getPair!51 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355) key!7176))) (hashF!5059 thiss!47746)) lt!863549)))

(declare-fun b!2358409 () Bool)

(assert (=> b!2358409 (= e!1506258 (= (getValueByKey!110 (toList!1419 lt!863328) lt!863550) (Some!5433 lt!863546)))))

(declare-fun b!2358410 () Bool)

(declare-fun res!1001012 () Bool)

(assert (=> b!2358410 (=> (not res!1001012) (not e!1506260))))

(assert (=> b!2358410 (= res!1001012 (allKeysSameHashInMap!120 lt!863328 (hashF!5059 thiss!47746)))))

(assert (= (and d!693381 res!1001010) b!2358410))

(assert (= (and b!2358410 res!1001012) b!2358403))

(assert (= (and b!2358403 res!1001017) b!2358408))

(assert (= (and b!2358408 res!1001011) b!2358402))

(assert (= (and b!2358408 res!1001014) b!2358406))

(assert (= (and b!2358406 res!1001013) b!2358407))

(assert (= (and b!2358408 res!1001019) b!2358404))

(assert (= (and b!2358404 res!1001018) b!2358405))

(assert (= (and b!2358405 res!1001016) b!2358401))

(assert (= (and b!2358401 res!1001015) b!2358409))

(declare-fun m!2771185 () Bool)

(assert (=> b!2358409 m!2771185))

(declare-fun m!2771187 () Bool)

(assert (=> d!693381 m!2771187))

(declare-fun m!2771189 () Bool)

(assert (=> d!693381 m!2771189))

(assert (=> d!693381 m!2771187))

(assert (=> b!2358405 m!2770937))

(assert (=> b!2358405 m!2770937))

(assert (=> b!2358405 m!2771165))

(assert (=> b!2358407 m!2770937))

(assert (=> b!2358407 m!2770937))

(assert (=> b!2358407 m!2771165))

(assert (=> b!2358408 m!2770937))

(declare-fun m!2771191 () Bool)

(assert (=> b!2358408 m!2771191))

(assert (=> b!2358408 m!2770945))

(assert (=> b!2358408 m!2770947))

(assert (=> b!2358408 m!2771187))

(assert (=> b!2358408 m!2770953))

(assert (=> b!2358408 m!2770945))

(declare-fun m!2771193 () Bool)

(assert (=> b!2358408 m!2771193))

(assert (=> b!2358408 m!2770933))

(assert (=> b!2358408 m!2770935))

(declare-fun m!2771195 () Bool)

(assert (=> b!2358408 m!2771195))

(assert (=> b!2358408 m!2770939))

(assert (=> b!2358408 m!2770957))

(assert (=> b!2358408 m!2770947))

(assert (=> b!2358408 m!2770933))

(assert (=> b!2358408 m!2770945))

(assert (=> b!2358408 m!2770959))

(declare-fun m!2771197 () Bool)

(assert (=> b!2358408 m!2771197))

(assert (=> b!2358408 m!2771187))

(assert (=> b!2358408 m!2770939))

(assert (=> b!2358408 m!2770941))

(assert (=> b!2358403 m!2770937))

(assert (=> b!2358403 m!2770937))

(assert (=> b!2358403 m!2771165))

(assert (=> b!2358404 m!2771181))

(assert (=> b!2358410 m!2771181))

(declare-fun m!2771199 () Bool)

(assert (=> b!2358402 m!2771199))

(assert (=> b!2358401 m!2770945))

(assert (=> b!2358401 m!2770947))

(declare-fun m!2771201 () Bool)

(assert (=> b!2358401 m!2771201))

(assert (=> b!2358401 m!2770933))

(assert (=> b!2358401 m!2770943))

(assert (=> b!2358401 m!2770945))

(assert (=> b!2358401 m!2770957))

(assert (=> b!2358401 m!2770947))

(assert (=> b!2358401 m!2770933))

(declare-fun m!2771203 () Bool)

(assert (=> b!2358401 m!2771203))

(assert (=> b!2358401 m!2770945))

(assert (=> b!2358401 m!2770959))

(assert (=> b!2358401 m!2771193))

(declare-fun m!2771205 () Bool)

(assert (=> b!2358401 m!2771205))

(assert (=> b!2358406 m!2771181))

(assert (=> b!2358196 d!693381))

(declare-fun d!693383 () Bool)

(assert (=> d!693383 (contains!4840 (toList!1419 lt!863328) (tuple2!27605 lt!863342 lt!863354))))

(declare-fun lt!863563 () Unit!40776)

(declare-fun choose!13656 (ListLongMap!373 (_ BitVec 64) List!27970) Unit!40776)

(assert (=> d!693383 (= lt!863563 (choose!13656 lt!863328 lt!863342 lt!863354))))

(assert (=> d!693383 (contains!4841 lt!863328 lt!863342)))

(assert (=> d!693383 (= (lemmaGetValueImpliesTupleContained!28 lt!863328 lt!863342 lt!863354) lt!863563)))

(declare-fun bs!460398 () Bool)

(assert (= bs!460398 d!693383))

(assert (=> bs!460398 m!2770951))

(declare-fun m!2771207 () Bool)

(assert (=> bs!460398 m!2771207))

(declare-fun m!2771209 () Bool)

(assert (=> bs!460398 m!2771209))

(assert (=> b!2358196 d!693383))

(declare-fun d!693385 () Bool)

(declare-fun lt!863564 () Bool)

(assert (=> d!693385 (= lt!863564 (select (content!3784 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746))))) (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))))))

(declare-fun e!1506263 () Bool)

(assert (=> d!693385 (= lt!863564 e!1506263)))

(declare-fun res!1001021 () Bool)

(assert (=> d!693385 (=> (not res!1001021) (not e!1506263))))

(assert (=> d!693385 (= res!1001021 ((_ is Cons!27873) (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746))))))))

(assert (=> d!693385 (= (contains!4840 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746)))) (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))) lt!863564)))

(declare-fun b!2358412 () Bool)

(declare-fun e!1506262 () Bool)

(assert (=> b!2358412 (= e!1506263 e!1506262)))

(declare-fun res!1001020 () Bool)

(assert (=> b!2358412 (=> res!1001020 e!1506262)))

(assert (=> b!2358412 (= res!1001020 (= (h!33274 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746))))) (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))))))

(declare-fun b!2358413 () Bool)

(assert (=> b!2358413 (= e!1506262 (contains!4840 (t!207840 (toList!1419 (map!5764 (v!30783 (underlying!6658 thiss!47746))))) (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))))))

(assert (= (and d!693385 res!1001021) b!2358412))

(assert (= (and b!2358412 (not res!1001020)) b!2358413))

(declare-fun m!2771211 () Bool)

(assert (=> d!693385 m!2771211))

(declare-fun m!2771213 () Bool)

(assert (=> d!693385 m!2771213))

(declare-fun m!2771215 () Bool)

(assert (=> b!2358413 m!2771215))

(assert (=> b!2358196 d!693385))

(declare-fun d!693387 () Bool)

(declare-fun e!1506266 () Bool)

(assert (=> d!693387 e!1506266))

(declare-fun res!1001022 () Bool)

(assert (=> d!693387 (=> res!1001022 e!1506266)))

(declare-fun e!1506267 () Bool)

(assert (=> d!693387 (= res!1001022 e!1506267)))

(declare-fun res!1001024 () Bool)

(assert (=> d!693387 (=> (not res!1001024) (not e!1506267))))

(declare-fun lt!863565 () Option!5435)

(assert (=> d!693387 (= res!1001024 (isEmpty!15848 lt!863565))))

(declare-fun e!1506265 () Option!5435)

(assert (=> d!693387 (= lt!863565 e!1506265)))

(declare-fun c!374915 () Bool)

(assert (=> d!693387 (= c!374915 (and ((_ is Cons!27872) (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355)) (= (_1!16342 (h!33273 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))) key!7176)))))

(assert (=> d!693387 (noDuplicateKeys!40 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))))

(assert (=> d!693387 (= (getPair!51 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355) key!7176) lt!863565)))

(declare-fun b!2358414 () Bool)

(declare-fun e!1506264 () Bool)

(assert (=> b!2358414 (= e!1506266 e!1506264)))

(declare-fun res!1001025 () Bool)

(assert (=> b!2358414 (=> (not res!1001025) (not e!1506264))))

(assert (=> b!2358414 (= res!1001025 (isDefined!4267 lt!863565))))

(declare-fun b!2358415 () Bool)

(declare-fun res!1001023 () Bool)

(assert (=> b!2358415 (=> (not res!1001023) (not e!1506264))))

(assert (=> b!2358415 (= res!1001023 (= (_1!16342 (get!8452 lt!863565)) key!7176))))

(declare-fun b!2358416 () Bool)

(declare-fun e!1506268 () Option!5435)

(assert (=> b!2358416 (= e!1506265 e!1506268)))

(declare-fun c!374914 () Bool)

(assert (=> b!2358416 (= c!374914 ((_ is Cons!27872) (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355)))))

(declare-fun b!2358417 () Bool)

(assert (=> b!2358417 (= e!1506264 (contains!4844 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355) (get!8452 lt!863565)))))

(declare-fun b!2358418 () Bool)

(assert (=> b!2358418 (= e!1506268 (getPair!51 (t!207837 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355)) key!7176))))

(declare-fun b!2358419 () Bool)

(assert (=> b!2358419 (= e!1506267 (not (containsKey!102 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355) key!7176)))))

(declare-fun b!2358420 () Bool)

(assert (=> b!2358420 (= e!1506265 (Some!5434 (h!33273 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))))))

(declare-fun b!2358421 () Bool)

(assert (=> b!2358421 (= e!1506268 None!5434)))

(assert (= (and d!693387 c!374915) b!2358420))

(assert (= (and d!693387 (not c!374915)) b!2358416))

(assert (= (and b!2358416 c!374914) b!2358418))

(assert (= (and b!2358416 (not c!374914)) b!2358421))

(assert (= (and d!693387 res!1001024) b!2358419))

(assert (= (and d!693387 (not res!1001022)) b!2358414))

(assert (= (and b!2358414 res!1001025) b!2358415))

(assert (= (and b!2358415 res!1001023) b!2358417))

(declare-fun m!2771217 () Bool)

(assert (=> d!693387 m!2771217))

(assert (=> d!693387 m!2770927))

(declare-fun m!2771219 () Bool)

(assert (=> d!693387 m!2771219))

(assert (=> b!2358419 m!2770927))

(declare-fun m!2771221 () Bool)

(assert (=> b!2358419 m!2771221))

(declare-fun m!2771223 () Bool)

(assert (=> b!2358414 m!2771223))

(declare-fun m!2771225 () Bool)

(assert (=> b!2358415 m!2771225))

(declare-fun m!2771227 () Bool)

(assert (=> b!2358418 m!2771227))

(assert (=> b!2358417 m!2771225))

(assert (=> b!2358417 m!2770927))

(assert (=> b!2358417 m!2771225))

(declare-fun m!2771229 () Bool)

(assert (=> b!2358417 m!2771229))

(assert (=> b!2358196 d!693387))

(assert (=> b!2358196 d!693329))

(declare-fun d!693389 () Bool)

(assert (=> d!693389 (contains!4840 (toList!1419 lt!863328) (tuple2!27605 lt!863332 lt!863356))))

(declare-fun lt!863566 () Unit!40776)

(assert (=> d!693389 (= lt!863566 (choose!13656 lt!863328 lt!863332 lt!863356))))

(assert (=> d!693389 (contains!4841 lt!863328 lt!863332)))

(assert (=> d!693389 (= (lemmaGetValueImpliesTupleContained!28 lt!863328 lt!863332 lt!863356) lt!863566)))

(declare-fun bs!460399 () Bool)

(assert (= bs!460399 d!693389))

(assert (=> bs!460399 m!2770931))

(declare-fun m!2771231 () Bool)

(assert (=> bs!460399 m!2771231))

(declare-fun m!2771233 () Bool)

(assert (=> bs!460399 m!2771233))

(assert (=> b!2358196 d!693389))

(declare-fun tp!754012 () Bool)

(declare-fun b!2358422 () Bool)

(declare-fun e!1506269 () Bool)

(assert (=> b!2358422 (= e!1506269 (and tp_is_empty!11155 tp_is_empty!11157 tp!754012))))

(assert (=> b!2358213 (= tp!754011 e!1506269)))

(assert (= (and b!2358213 ((_ is Cons!27872) (t!207837 (minValue!3484 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))))))) b!2358422))

(declare-fun b!2358423 () Bool)

(declare-fun e!1506270 () Bool)

(declare-fun tp!754013 () Bool)

(assert (=> b!2358423 (= e!1506270 (and tp_is_empty!11155 tp_is_empty!11157 tp!754013))))

(assert (=> b!2358210 (= tp!754008 e!1506270)))

(assert (= (and b!2358210 ((_ is Cons!27872) (t!207837 mapDefault!15071))) b!2358423))

(declare-fun b!2358424 () Bool)

(declare-fun tp!754014 () Bool)

(declare-fun e!1506271 () Bool)

(assert (=> b!2358424 (= e!1506271 (and tp_is_empty!11155 tp_is_empty!11157 tp!754014))))

(assert (=> b!2358202 (= tp!753999 e!1506271)))

(assert (= (and b!2358202 ((_ is Cons!27872) (t!207837 mapDefault!15068))) b!2358424))

(declare-fun b!2358425 () Bool)

(declare-fun e!1506272 () Bool)

(declare-fun tp!754016 () Bool)

(assert (=> b!2358425 (= e!1506272 (and tp_is_empty!11155 tp_is_empty!11157 tp!754016))))

(declare-fun mapNonEmpty!15072 () Bool)

(declare-fun mapRes!15072 () Bool)

(declare-fun tp!754015 () Bool)

(assert (=> mapNonEmpty!15072 (= mapRes!15072 (and tp!754015 e!1506272))))

(declare-fun mapValue!15072 () List!27970)

(declare-fun mapKey!15072 () (_ BitVec 32))

(declare-fun mapRest!15072 () (Array (_ BitVec 32) List!27970))

(assert (=> mapNonEmpty!15072 (= mapRest!15071 (store mapRest!15072 mapKey!15072 mapValue!15072))))

(declare-fun condMapEmpty!15072 () Bool)

(declare-fun mapDefault!15072 () List!27970)

(assert (=> mapNonEmpty!15071 (= condMapEmpty!15072 (= mapRest!15071 ((as const (Array (_ BitVec 32) List!27970)) mapDefault!15072)))))

(declare-fun e!1506273 () Bool)

(assert (=> mapNonEmpty!15071 (= tp!754006 (and e!1506273 mapRes!15072))))

(declare-fun mapIsEmpty!15072 () Bool)

(assert (=> mapIsEmpty!15072 mapRes!15072))

(declare-fun tp!754017 () Bool)

(declare-fun b!2358426 () Bool)

(assert (=> b!2358426 (= e!1506273 (and tp_is_empty!11155 tp_is_empty!11157 tp!754017))))

(assert (= (and mapNonEmpty!15071 condMapEmpty!15072) mapIsEmpty!15072))

(assert (= (and mapNonEmpty!15071 (not condMapEmpty!15072)) mapNonEmpty!15072))

(assert (= (and mapNonEmpty!15072 ((_ is Cons!27872) mapValue!15072)) b!2358425))

(assert (= (and mapNonEmpty!15071 ((_ is Cons!27872) mapDefault!15072)) b!2358426))

(declare-fun m!2771235 () Bool)

(assert (=> mapNonEmpty!15072 m!2771235))

(declare-fun b!2358427 () Bool)

(declare-fun tp!754018 () Bool)

(declare-fun e!1506274 () Bool)

(assert (=> b!2358427 (= e!1506274 (and tp_is_empty!11155 tp_is_empty!11157 tp!754018))))

(assert (=> b!2358212 (= tp!754010 e!1506274)))

(assert (= (and b!2358212 ((_ is Cons!27872) (t!207837 (zeroValue!3484 (v!30782 (underlying!6657 (v!30783 (underlying!6658 thiss!47746)))))))) b!2358427))

(declare-fun e!1506275 () Bool)

(declare-fun b!2358428 () Bool)

(declare-fun tp!754019 () Bool)

(assert (=> b!2358428 (= e!1506275 (and tp_is_empty!11155 tp_is_empty!11157 tp!754019))))

(assert (=> b!2358211 (= tp!754009 e!1506275)))

(assert (= (and b!2358211 ((_ is Cons!27872) (t!207837 mapValue!15068))) b!2358428))

(declare-fun b!2358429 () Bool)

(declare-fun e!1506276 () Bool)

(declare-fun tp!754020 () Bool)

(assert (=> b!2358429 (= e!1506276 (and tp_is_empty!11155 tp_is_empty!11157 tp!754020))))

(assert (=> b!2358209 (= tp!754007 e!1506276)))

(assert (= (and b!2358209 ((_ is Cons!27872) (t!207837 mapValue!15071))) b!2358429))

(declare-fun b_lambda!73733 () Bool)

(assert (= b_lambda!73727 (or (and b!2358140 b_free!70357) b_lambda!73733)))

(declare-fun b_lambda!73735 () Bool)

(assert (= b_lambda!73731 (or b!2358196 b_lambda!73735)))

(declare-fun bs!460400 () Bool)

(declare-fun d!693391 () Bool)

(assert (= bs!460400 (and d!693391 b!2358196)))

(assert (=> bs!460400 (= (dynLambda!12007 lambda!86688 (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355))) (noDuplicateKeys!40 (_2!16343 (tuple2!27605 lt!863355 (apply!6701 (v!30783 (underlying!6658 thiss!47746)) lt!863355)))))))

(declare-fun m!2771237 () Bool)

(assert (=> bs!460400 m!2771237))

(assert (=> d!693357 d!693391))

(declare-fun b_lambda!73737 () Bool)

(assert (= b_lambda!73729 (or b!2358196 b_lambda!73737)))

(declare-fun bs!460401 () Bool)

(declare-fun d!693393 () Bool)

(assert (= bs!460401 (and d!693393 b!2358196)))

(assert (=> bs!460401 (= (dynLambda!12007 lambda!86688 (tuple2!27605 (hash!598 (hashF!5059 thiss!47746) key!7176) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176)))) (noDuplicateKeys!40 (_2!16343 (tuple2!27605 (hash!598 (hashF!5059 thiss!47746) key!7176) (apply!6702 lt!863328 (hash!598 (hashF!5059 thiss!47746) key!7176))))))))

(declare-fun m!2771239 () Bool)

(assert (=> bs!460401 m!2771239))

(assert (=> d!693355 d!693393))

(check-sat (not b!2358426) (not b!2358414) (not b!2358425) (not d!693319) (not b_lambda!73733) (not b!2358322) (not b!2358247) (not b!2358373) (not b!2358240) (not b_next!71063) (not b!2358344) (not d!693373) (not b_lambda!73737) (not b!2358376) (not b!2358345) (not d!693325) (not d!693309) (not b!2358290) (not b!2358278) (not b!2358350) (not d!693359) (not d!693371) (not b!2358253) (not b!2358428) (not b!2358423) (not b!2358408) (not b!2358427) (not b!2358379) (not b!2358362) (not b!2358241) (not d!693385) (not d!693323) (not d!693363) (not b!2358315) (not b!2358424) (not b!2358415) (not b!2358313) (not d!693381) (not d!693329) (not b!2358265) (not d!693333) (not b!2358243) (not b!2358340) (not mapNonEmpty!15072) (not b!2358216) (not b!2358429) (not d!693349) (not b_lambda!73723) (not b!2358407) (not b!2358341) (not d!693355) (not bs!460401) (not tb!138733) (not d!693331) (not b!2358353) (not b!2358351) (not b!2358248) (not bm!143568) (not bm!143567) (not b!2358422) (not d!693339) (not d!693335) (not d!693327) (not b!2358317) (not b_lambda!73721) (not b!2358355) (not b!2358409) (not b!2358402) (not bm!143571) (not bs!460400) (not b!2358272) (not b!2358418) (not b!2358404) (not b!2358309) (not d!693389) (not b!2358403) (not b!2358316) (not d!693365) (not d!693345) (not b_lambda!73735) (not b!2358417) (not d!693375) (not d!693315) (not b!2358374) (not bm!143574) (not d!693367) (not b!2358269) (not b!2358283) tp_is_empty!11155 b_and!185287 (not d!693321) (not b!2358419) (not b!2358410) (not b!2358343) (not b_lambda!73725) (not b!2358401) (not b!2358314) (not d!693383) (not d!693357) (not bm!143566) (not b!2358413) (not b!2358364) b_and!185285 (not b!2358311) (not d!693351) (not bm!143569) (not b_next!71061) (not b!2358406) (not d!693353) (not d!693337) (not b!2358405) (not b!2358375) (not d!693347) (not d!693387) (not b!2358289) (not bm!143570) tp_is_empty!11157)
(check-sat b_and!185285 b_and!185287 (not b_next!71061) (not b_next!71063))
