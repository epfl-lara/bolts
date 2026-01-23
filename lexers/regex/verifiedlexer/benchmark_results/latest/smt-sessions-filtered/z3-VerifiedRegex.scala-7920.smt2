; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412858 () Bool)

(assert start!412858)

(declare-fun b_free!128025 () Bool)

(declare-fun b_next!128729 () Bool)

(assert (=> start!412858 (= b_free!128025 (not b_next!128729))))

(declare-fun tp!1321077 () Bool)

(declare-fun b_and!339351 () Bool)

(assert (=> start!412858 (= tp!1321077 b_and!339351)))

(declare-fun b!4299894 () Bool)

(declare-fun b_free!128027 () Bool)

(declare-fun b_next!128731 () Bool)

(assert (=> b!4299894 (= b_free!128027 (not b_next!128731))))

(declare-fun tp!1321081 () Bool)

(declare-fun b_and!339353 () Bool)

(assert (=> b!4299894 (= tp!1321081 b_and!339353)))

(declare-fun b!4299893 () Bool)

(declare-fun b_free!128029 () Bool)

(declare-fun b_next!128733 () Bool)

(assert (=> b!4299893 (= b_free!128029 (not b_next!128733))))

(declare-fun tp!1321079 () Bool)

(declare-fun b_and!339355 () Bool)

(assert (=> b!4299893 (= tp!1321079 b_and!339355)))

(declare-fun b!4299887 () Bool)

(declare-fun e!2672704 () Bool)

(declare-fun e!2672705 () Bool)

(assert (=> b!4299887 (= e!2672704 e!2672705)))

(declare-fun res!1762320 () Bool)

(assert (=> b!4299887 (=> (not res!1762320) (not e!2672705))))

(declare-datatypes ((K!9049 0))(
  ( (K!9050 (val!15497 Int)) )
))
(declare-datatypes ((V!9251 0))(
  ( (V!9252 (val!15498 Int)) )
))
(declare-datatypes ((tuple2!45894 0))(
  ( (tuple2!45895 (_1!26226 K!9049) (_2!26226 V!9251)) )
))
(declare-datatypes ((List!48062 0))(
  ( (Nil!47938) (Cons!47938 (h!53358 tuple2!45894) (t!354781 List!48062)) )
))
(declare-datatypes ((Hashable!4437 0))(
  ( (HashableExt!4436 (__x!29588 Int)) )
))
(declare-datatypes ((array!16188 0))(
  ( (array!16189 (arr!7227 (Array (_ BitVec 32) (_ BitVec 64))) (size!35266 (_ BitVec 32))) )
))
(declare-datatypes ((array!16190 0))(
  ( (array!16191 (arr!7228 (Array (_ BitVec 32) List!48062)) (size!35267 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9042 0))(
  ( (LongMapFixedSize!9043 (defaultEntry!4906 Int) (mask!13010 (_ BitVec 32)) (extraKeys!4770 (_ BitVec 32)) (zeroValue!4780 List!48062) (minValue!4780 List!48062) (_size!9085 (_ BitVec 32)) (_keys!4821 array!16188) (_values!4802 array!16190) (_vacant!4582 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17893 0))(
  ( (Cell!17894 (v!41905 LongMapFixedSize!9042)) )
))
(declare-datatypes ((MutLongMap!4521 0))(
  ( (LongMap!4521 (underlying!9271 Cell!17893)) (MutLongMapExt!4520 (__x!29589 Int)) )
))
(declare-datatypes ((Cell!17895 0))(
  ( (Cell!17896 (v!41906 MutLongMap!4521)) )
))
(declare-datatypes ((MutableMap!4427 0))(
  ( (MutableMapExt!4426 (__x!29590 Int)) (HashMap!4427 (underlying!9272 Cell!17895) (hashF!6469 Hashable!4437) (_size!9086 (_ BitVec 32)) (defaultValue!4598 Int)) )
))
(declare-datatypes ((tuple2!45896 0))(
  ( (tuple2!45897 (_1!26227 Bool) (_2!26227 MutableMap!4427)) )
))
(declare-fun lt!1521885 () tuple2!45896)

(assert (=> b!4299887 (= res!1762320 (_1!26227 lt!1521885))))

(declare-fun k0!1716 () K!9049)

(declare-fun hm!64 () MutableMap!4427)

(declare-fun v!9471 () V!9251)

(declare-fun update!332 (MutableMap!4427 K!9049 V!9251) tuple2!45896)

(assert (=> b!4299887 (= lt!1521885 (update!332 hm!64 k0!1716 v!9471))))

(declare-datatypes ((ListMap!1479 0))(
  ( (ListMap!1480 (toList!2195 List!48062)) )
))
(declare-fun lt!1521886 () ListMap!1479)

(declare-fun lt!1521883 () ListMap!1479)

(declare-fun lt!1521884 () tuple2!45894)

(declare-fun +!174 (ListMap!1479 tuple2!45894) ListMap!1479)

(assert (=> b!4299887 (= lt!1521886 (+!174 lt!1521883 lt!1521884))))

(declare-fun b!4299888 () Bool)

(declare-fun e!2672702 () Bool)

(declare-fun tp!1321075 () Bool)

(declare-fun mapRes!20307 () Bool)

(assert (=> b!4299888 (= e!2672702 (and tp!1321075 mapRes!20307))))

(declare-fun condMapEmpty!20307 () Bool)

(declare-fun mapDefault!20307 () List!48062)

(assert (=> b!4299888 (= condMapEmpty!20307 (= (arr!7228 (_values!4802 (v!41905 (underlying!9271 (v!41906 (underlying!9272 hm!64)))))) ((as const (Array (_ BitVec 32) List!48062)) mapDefault!20307)))))

(declare-fun b!4299889 () Bool)

(declare-fun invariantList!541 (List!48062) Bool)

(assert (=> b!4299889 (= e!2672705 (not (invariantList!541 (toList!2195 lt!1521883))))))

(declare-fun b!4299890 () Bool)

(declare-fun res!1762321 () Bool)

(declare-fun e!2672710 () Bool)

(assert (=> b!4299890 (=> (not res!1762321) (not e!2672710))))

(declare-fun valid!3502 (MutableMap!4427) Bool)

(assert (=> b!4299890 (= res!1762321 (valid!3502 hm!64))))

(declare-fun mapIsEmpty!20307 () Bool)

(assert (=> mapIsEmpty!20307 mapRes!20307))

(declare-fun b!4299891 () Bool)

(declare-fun e!2672703 () Bool)

(declare-fun e!2672708 () Bool)

(declare-fun lt!1521882 () MutLongMap!4521)

(get-info :version)

(assert (=> b!4299891 (= e!2672703 (and e!2672708 ((_ is LongMap!4521) lt!1521882)))))

(assert (=> b!4299891 (= lt!1521882 (v!41906 (underlying!9272 hm!64)))))

(declare-fun b!4299892 () Bool)

(declare-fun e!2672707 () Bool)

(assert (=> b!4299892 (= e!2672710 e!2672707)))

(declare-fun res!1762323 () Bool)

(assert (=> b!4299892 (=> (not res!1762323) (not e!2672707))))

(declare-fun p!6034 () Int)

(declare-fun forall!8630 (List!48062 Int) Bool)

(assert (=> b!4299892 (= res!1762323 (forall!8630 (toList!2195 lt!1521883) p!6034))))

(declare-fun map!9897 (MutableMap!4427) ListMap!1479)

(assert (=> b!4299892 (= lt!1521883 (map!9897 hm!64))))

(declare-fun e!2672700 () Bool)

(declare-fun tp!1321076 () Bool)

(declare-fun tp!1321078 () Bool)

(declare-fun array_inv!5177 (array!16188) Bool)

(declare-fun array_inv!5178 (array!16190) Bool)

(assert (=> b!4299893 (= e!2672700 (and tp!1321079 tp!1321076 tp!1321078 (array_inv!5177 (_keys!4821 (v!41905 (underlying!9271 (v!41906 (underlying!9272 hm!64)))))) (array_inv!5178 (_values!4802 (v!41905 (underlying!9271 (v!41906 (underlying!9272 hm!64)))))) e!2672702))))

(declare-fun e!2672706 () Bool)

(assert (=> b!4299894 (= e!2672706 (and e!2672703 tp!1321081))))

(declare-fun b!4299895 () Bool)

(declare-fun e!2672701 () Bool)

(assert (=> b!4299895 (= e!2672701 e!2672700)))

(declare-fun mapNonEmpty!20307 () Bool)

(declare-fun tp!1321080 () Bool)

(declare-fun tp!1321074 () Bool)

(assert (=> mapNonEmpty!20307 (= mapRes!20307 (and tp!1321080 tp!1321074))))

(declare-fun mapRest!20307 () (Array (_ BitVec 32) List!48062))

(declare-fun mapValue!20307 () List!48062)

(declare-fun mapKey!20307 () (_ BitVec 32))

(assert (=> mapNonEmpty!20307 (= (arr!7228 (_values!4802 (v!41905 (underlying!9271 (v!41906 (underlying!9272 hm!64)))))) (store mapRest!20307 mapKey!20307 mapValue!20307))))

(declare-fun b!4299886 () Bool)

(assert (=> b!4299886 (= e!2672707 e!2672704)))

(declare-fun res!1762324 () Bool)

(assert (=> b!4299886 (=> (not res!1762324) (not e!2672704))))

(declare-fun dynLambda!20359 (Int tuple2!45894) Bool)

(assert (=> b!4299886 (= res!1762324 (dynLambda!20359 p!6034 lt!1521884))))

(assert (=> b!4299886 (= lt!1521884 (tuple2!45895 k0!1716 v!9471))))

(declare-fun res!1762322 () Bool)

(assert (=> start!412858 (=> (not res!1762322) (not e!2672710))))

(assert (=> start!412858 (= res!1762322 ((_ is HashMap!4427) hm!64))))

(assert (=> start!412858 e!2672710))

(assert (=> start!412858 e!2672706))

(declare-fun tp_is_empty!23257 () Bool)

(assert (=> start!412858 tp_is_empty!23257))

(declare-fun tp_is_empty!23259 () Bool)

(assert (=> start!412858 tp_is_empty!23259))

(assert (=> start!412858 tp!1321077))

(declare-fun b!4299896 () Bool)

(declare-fun res!1762319 () Bool)

(assert (=> b!4299896 (=> (not res!1762319) (not e!2672705))))

(declare-fun eq!101 (ListMap!1479 ListMap!1479) Bool)

(assert (=> b!4299896 (= res!1762319 (eq!101 (map!9897 (_2!26227 lt!1521885)) lt!1521886))))

(declare-fun b!4299897 () Bool)

(assert (=> b!4299897 (= e!2672708 e!2672701)))

(assert (= (and start!412858 res!1762322) b!4299890))

(assert (= (and b!4299890 res!1762321) b!4299892))

(assert (= (and b!4299892 res!1762323) b!4299886))

(assert (= (and b!4299886 res!1762324) b!4299887))

(assert (= (and b!4299887 res!1762320) b!4299896))

(assert (= (and b!4299896 res!1762319) b!4299889))

(assert (= (and b!4299888 condMapEmpty!20307) mapIsEmpty!20307))

(assert (= (and b!4299888 (not condMapEmpty!20307)) mapNonEmpty!20307))

(assert (= b!4299893 b!4299888))

(assert (= b!4299895 b!4299893))

(assert (= b!4299897 b!4299895))

(assert (= (and b!4299891 ((_ is LongMap!4521) (v!41906 (underlying!9272 hm!64)))) b!4299897))

(assert (= b!4299894 b!4299891))

(assert (= (and start!412858 ((_ is HashMap!4427) hm!64)) b!4299894))

(declare-fun b_lambda!126323 () Bool)

(assert (=> (not b_lambda!126323) (not b!4299886)))

(declare-fun t!354780 () Bool)

(declare-fun tb!257203 () Bool)

(assert (=> (and start!412858 (= p!6034 p!6034) t!354780) tb!257203))

(declare-fun result!314484 () Bool)

(assert (=> tb!257203 (= result!314484 true)))

(assert (=> b!4299886 t!354780))

(declare-fun b_and!339357 () Bool)

(assert (= b_and!339351 (and (=> t!354780 result!314484) b_and!339357)))

(declare-fun m!4892077 () Bool)

(assert (=> b!4299886 m!4892077))

(declare-fun m!4892079 () Bool)

(assert (=> b!4299889 m!4892079))

(declare-fun m!4892081 () Bool)

(assert (=> b!4299890 m!4892081))

(declare-fun m!4892083 () Bool)

(assert (=> b!4299892 m!4892083))

(declare-fun m!4892085 () Bool)

(assert (=> b!4299892 m!4892085))

(declare-fun m!4892087 () Bool)

(assert (=> b!4299887 m!4892087))

(declare-fun m!4892089 () Bool)

(assert (=> b!4299887 m!4892089))

(declare-fun m!4892091 () Bool)

(assert (=> mapNonEmpty!20307 m!4892091))

(declare-fun m!4892093 () Bool)

(assert (=> b!4299893 m!4892093))

(declare-fun m!4892095 () Bool)

(assert (=> b!4299893 m!4892095))

(declare-fun m!4892097 () Bool)

(assert (=> b!4299896 m!4892097))

(assert (=> b!4299896 m!4892097))

(declare-fun m!4892099 () Bool)

(assert (=> b!4299896 m!4892099))

(check-sat b_and!339355 (not b!4299896) b_and!339357 (not mapNonEmpty!20307) (not b!4299892) tp_is_empty!23257 (not b!4299887) (not b_next!128733) (not b_lambda!126323) (not b!4299888) tp_is_empty!23259 b_and!339353 (not b!4299890) (not b!4299889) (not b_next!128731) (not b_next!128729) (not b!4299893))
(check-sat b_and!339355 b_and!339357 (not b_next!128733) b_and!339353 (not b_next!128731) (not b_next!128729))
(get-model)

(declare-fun b_lambda!126325 () Bool)

(assert (= b_lambda!126323 (or (and start!412858 b_free!128025) b_lambda!126325)))

(check-sat b_and!339355 (not b!4299896) b_and!339357 (not mapNonEmpty!20307) (not b!4299892) tp_is_empty!23257 (not b_next!128733) (not b!4299888) tp_is_empty!23259 b_and!339353 (not b!4299890) (not b!4299889) (not b_next!128731) (not b_next!128729) (not b!4299893) (not b!4299887) (not b_lambda!126325))
(check-sat b_and!339355 b_and!339357 (not b_next!128733) b_and!339353 (not b_next!128731) (not b_next!128729))
(get-model)

(declare-fun d!1266581 () Bool)

(declare-fun res!1762329 () Bool)

(declare-fun e!2672715 () Bool)

(assert (=> d!1266581 (=> res!1762329 e!2672715)))

(assert (=> d!1266581 (= res!1762329 ((_ is Nil!47938) (toList!2195 lt!1521883)))))

(assert (=> d!1266581 (= (forall!8630 (toList!2195 lt!1521883) p!6034) e!2672715)))

(declare-fun b!4299902 () Bool)

(declare-fun e!2672716 () Bool)

(assert (=> b!4299902 (= e!2672715 e!2672716)))

(declare-fun res!1762330 () Bool)

(assert (=> b!4299902 (=> (not res!1762330) (not e!2672716))))

(assert (=> b!4299902 (= res!1762330 (dynLambda!20359 p!6034 (h!53358 (toList!2195 lt!1521883))))))

(declare-fun b!4299903 () Bool)

(assert (=> b!4299903 (= e!2672716 (forall!8630 (t!354781 (toList!2195 lt!1521883)) p!6034))))

(assert (= (and d!1266581 (not res!1762329)) b!4299902))

(assert (= (and b!4299902 res!1762330) b!4299903))

(declare-fun b_lambda!126327 () Bool)

(assert (=> (not b_lambda!126327) (not b!4299902)))

(declare-fun t!354783 () Bool)

(declare-fun tb!257205 () Bool)

(assert (=> (and start!412858 (= p!6034 p!6034) t!354783) tb!257205))

(declare-fun result!314486 () Bool)

(assert (=> tb!257205 (= result!314486 true)))

(assert (=> b!4299902 t!354783))

(declare-fun b_and!339359 () Bool)

(assert (= b_and!339357 (and (=> t!354783 result!314486) b_and!339359)))

(declare-fun m!4892101 () Bool)

(assert (=> b!4299902 m!4892101))

(declare-fun m!4892103 () Bool)

(assert (=> b!4299903 m!4892103))

(assert (=> b!4299892 d!1266581))

(declare-fun d!1266583 () Bool)

(declare-fun lt!1521889 () ListMap!1479)

(assert (=> d!1266583 (invariantList!541 (toList!2195 lt!1521889))))

(declare-datatypes ((tuple2!45898 0))(
  ( (tuple2!45899 (_1!26228 (_ BitVec 64)) (_2!26228 List!48062)) )
))
(declare-datatypes ((List!48063 0))(
  ( (Nil!47939) (Cons!47939 (h!53359 tuple2!45898) (t!354784 List!48063)) )
))
(declare-fun extractMap!271 (List!48063) ListMap!1479)

(declare-datatypes ((ListLongMap!805 0))(
  ( (ListLongMap!806 (toList!2196 List!48063)) )
))
(declare-fun map!9898 (MutLongMap!4521) ListLongMap!805)

(assert (=> d!1266583 (= lt!1521889 (extractMap!271 (toList!2196 (map!9898 (v!41906 (underlying!9272 hm!64))))))))

(assert (=> d!1266583 (valid!3502 hm!64)))

(assert (=> d!1266583 (= (map!9897 hm!64) lt!1521889)))

(declare-fun bs!603962 () Bool)

(assert (= bs!603962 d!1266583))

(declare-fun m!4892105 () Bool)

(assert (=> bs!603962 m!4892105))

(declare-fun m!4892107 () Bool)

(assert (=> bs!603962 m!4892107))

(declare-fun m!4892109 () Bool)

(assert (=> bs!603962 m!4892109))

(assert (=> bs!603962 m!4892081))

(assert (=> b!4299892 d!1266583))

(declare-fun d!1266585 () Bool)

(assert (=> d!1266585 (= (array_inv!5177 (_keys!4821 (v!41905 (underlying!9271 (v!41906 (underlying!9272 hm!64)))))) (bvsge (size!35266 (_keys!4821 (v!41905 (underlying!9271 (v!41906 (underlying!9272 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299893 d!1266585))

(declare-fun d!1266587 () Bool)

(assert (=> d!1266587 (= (array_inv!5178 (_values!4802 (v!41905 (underlying!9271 (v!41906 (underlying!9272 hm!64)))))) (bvsge (size!35267 (_values!4802 (v!41905 (underlying!9271 (v!41906 (underlying!9272 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299893 d!1266587))

(declare-fun bs!603963 () Bool)

(declare-fun b!4299955 () Bool)

(declare-fun b!4299944 () Bool)

(assert (= bs!603963 (and b!4299955 b!4299944)))

(declare-fun lambda!131973 () Int)

(declare-fun lambda!131972 () Int)

(assert (=> bs!603963 (= lambda!131973 lambda!131972)))

(declare-datatypes ((Unit!66817 0))(
  ( (Unit!66818) )
))
(declare-fun call!296170 () Unit!66817)

(declare-fun lt!1522015 () (_ BitVec 64))

(declare-fun c!731431 () Bool)

(declare-fun lt!1522044 () (_ BitVec 64))

(declare-fun lt!1522053 () List!48062)

(declare-fun bm!296137 () Bool)

(declare-fun lt!1522045 () List!48062)

(declare-fun lemmaRemovePairForKeyPreservesHash!110 (List!48062 K!9049 (_ BitVec 64) Hashable!4437) Unit!66817)

(assert (=> bm!296137 (= call!296170 (lemmaRemovePairForKeyPreservesHash!110 (ite c!731431 lt!1522053 lt!1522045) k0!1716 (ite c!731431 lt!1522015 lt!1522044) (hashF!6469 hm!64)))))

(declare-fun bm!296138 () Bool)

(declare-fun call!296164 () Bool)

(declare-fun allKeysSameHash!123 (List!48062 (_ BitVec 64) Hashable!4437) Bool)

(assert (=> bm!296138 (= call!296164 (allKeysSameHash!123 (ite c!731431 lt!1522053 lt!1522045) (ite c!731431 lt!1522015 lt!1522044) (hashF!6469 hm!64)))))

(declare-fun b!4299942 () Bool)

(declare-fun e!2672747 () Bool)

(declare-fun call!296142 () Bool)

(assert (=> b!4299942 (= e!2672747 call!296142)))

(declare-fun call!296151 () ListMap!1479)

(declare-fun e!2672744 () ListMap!1479)

(declare-fun b!4299943 () Bool)

(assert (=> b!4299943 (= e!2672744 (+!174 call!296151 (tuple2!45895 k0!1716 v!9471)))))

(declare-fun bm!296139 () Bool)

(declare-fun call!296149 () ListMap!1479)

(declare-fun lt!1522051 () ListMap!1479)

(assert (=> bm!296139 (= call!296149 (+!174 lt!1522051 (tuple2!45895 k0!1716 v!9471)))))

(declare-fun bm!296140 () Bool)

(declare-fun call!296157 () Bool)

(declare-fun lt!1522034 () ListMap!1479)

(declare-fun call!296169 () ListMap!1479)

(declare-fun contains!9861 (ListMap!1479 K!9049) Bool)

(assert (=> bm!296140 (= call!296157 (contains!9861 (ite c!731431 lt!1522034 call!296169) k0!1716))))

(declare-fun bm!296141 () Bool)

(declare-fun call!296153 () ListMap!1479)

(assert (=> bm!296141 (= call!296169 call!296153)))

(declare-fun call!296148 () Bool)

(assert (=> b!4299944 call!296148))

(declare-fun lt!1522016 () Unit!66817)

(declare-fun Unit!66819 () Unit!66817)

(assert (=> b!4299944 (= lt!1522016 Unit!66819)))

(declare-fun call!296166 () Bool)

(assert (=> b!4299944 call!296166))

(declare-fun lt!1522002 () Unit!66817)

(declare-fun Unit!66820 () Unit!66817)

(assert (=> b!4299944 (= lt!1522002 Unit!66820)))

(declare-fun call!296146 () Bool)

(assert (=> b!4299944 call!296146))

(declare-fun lt!1522013 () Unit!66817)

(declare-fun lt!1522041 () Unit!66817)

(assert (=> b!4299944 (= lt!1522013 lt!1522041)))

(declare-fun call!296165 () Bool)

(assert (=> b!4299944 (= call!296157 call!296165)))

(declare-fun call!296145 () Unit!66817)

(assert (=> b!4299944 (= lt!1522041 call!296145)))

(declare-fun lt!1522003 () ListMap!1479)

(assert (=> b!4299944 (= lt!1522003 call!296149)))

(declare-fun call!296144 () ListMap!1479)

(assert (=> b!4299944 (= lt!1522034 call!296144)))

(declare-fun lt!1522012 () Unit!66817)

(declare-fun lt!1522039 () Unit!66817)

(assert (=> b!4299944 (= lt!1522012 lt!1522039)))

(declare-fun call!296167 () Bool)

(assert (=> b!4299944 call!296167))

(declare-fun lt!1522052 () List!48062)

(declare-fun lt!1522054 () ListLongMap!805)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!35 (ListLongMap!805 (_ BitVec 64) List!48062 K!9049 V!9251 Hashable!4437) Unit!66817)

(assert (=> b!4299944 (= lt!1522039 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!35 lt!1522054 lt!1522015 lt!1522052 k0!1716 v!9471 (hashF!6469 hm!64)))))

(declare-fun lt!1522011 () Unit!66817)

(declare-fun lt!1522050 () Unit!66817)

(assert (=> b!4299944 (= lt!1522011 lt!1522050)))

(declare-fun e!2672749 () Bool)

(assert (=> b!4299944 e!2672749))

(declare-fun res!1762341 () Bool)

(assert (=> b!4299944 (=> (not res!1762341) (not e!2672749))))

(declare-fun call!296171 () Bool)

(assert (=> b!4299944 (= res!1762341 call!296171)))

(declare-fun lt!1522047 () ListLongMap!805)

(declare-fun call!296156 () ListLongMap!805)

(assert (=> b!4299944 (= lt!1522047 call!296156)))

(declare-fun call!296168 () Unit!66817)

(assert (=> b!4299944 (= lt!1522050 call!296168)))

(declare-fun lt!1522025 () Unit!66817)

(declare-fun Unit!66821 () Unit!66817)

(assert (=> b!4299944 (= lt!1522025 Unit!66821)))

(declare-fun noDuplicateKeys!151 (List!48062) Bool)

(assert (=> b!4299944 (noDuplicateKeys!151 lt!1522052)))

(declare-fun lt!1522042 () Unit!66817)

(declare-fun Unit!66822 () Unit!66817)

(assert (=> b!4299944 (= lt!1522042 Unit!66822)))

(declare-fun call!296143 () List!48062)

(declare-fun containsKey!233 (List!48062 K!9049) Bool)

(assert (=> b!4299944 (not (containsKey!233 call!296143 k0!1716))))

(declare-fun lt!1522040 () Unit!66817)

(declare-fun Unit!66823 () Unit!66817)

(assert (=> b!4299944 (= lt!1522040 Unit!66823)))

(declare-fun lt!1522004 () Unit!66817)

(declare-fun lt!1522008 () Unit!66817)

(assert (=> b!4299944 (= lt!1522004 lt!1522008)))

(assert (=> b!4299944 (noDuplicateKeys!151 call!296143)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!128 (List!48062 K!9049) Unit!66817)

(assert (=> b!4299944 (= lt!1522008 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!128 lt!1522053 k0!1716))))

(declare-fun lt!1522006 () Unit!66817)

(declare-fun lt!1522048 () Unit!66817)

(assert (=> b!4299944 (= lt!1522006 lt!1522048)))

(declare-fun call!296172 () Bool)

(assert (=> b!4299944 call!296172))

(assert (=> b!4299944 (= lt!1522048 call!296170)))

(declare-fun lt!1522014 () Unit!66817)

(declare-fun lt!1522001 () Unit!66817)

(assert (=> b!4299944 (= lt!1522014 lt!1522001)))

(assert (=> b!4299944 call!296164))

(declare-fun call!296159 () Unit!66817)

(assert (=> b!4299944 (= lt!1522001 call!296159)))

(declare-fun e!2672746 () Unit!66817)

(declare-fun Unit!66824 () Unit!66817)

(assert (=> b!4299944 (= e!2672746 Unit!66824)))

(declare-fun bm!296142 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!114 (List!48063 (_ BitVec 64) List!48062 Hashable!4437) Unit!66817)

(assert (=> bm!296142 (= call!296159 (lemmaInLongMapAllKeySameHashThenForTuple!114 (toList!2196 lt!1522054) (ite c!731431 lt!1522015 lt!1522044) (ite c!731431 lt!1522053 lt!1522045) (hashF!6469 hm!64)))))

(declare-fun bm!296143 () Bool)

(assert (=> bm!296143 (= call!296148 (eq!101 (ite c!731431 call!296144 call!296169) call!296149))))

(declare-fun b!4299945 () Bool)

(declare-fun e!2672739 () List!48062)

(assert (=> b!4299945 (= e!2672739 Nil!47938)))

(declare-fun b!4299946 () Bool)

(assert (=> b!4299946 (= e!2672749 call!296142)))

(declare-fun d!1266589 () Bool)

(declare-fun e!2672743 () Bool)

(assert (=> d!1266589 e!2672743))

(declare-fun res!1762345 () Bool)

(assert (=> d!1266589 (=> (not res!1762345) (not e!2672743))))

(declare-fun lt!1522030 () tuple2!45896)

(assert (=> d!1266589 (= res!1762345 ((_ is HashMap!4427) (_2!26227 lt!1522030)))))

(declare-fun lt!1522036 () tuple2!45896)

(assert (=> d!1266589 (= lt!1522030 (tuple2!45897 (_1!26227 lt!1522036) (_2!26227 lt!1522036)))))

(declare-fun e!2672741 () tuple2!45896)

(assert (=> d!1266589 (= lt!1522036 e!2672741)))

(declare-fun contains!9862 (MutableMap!4427 K!9049) Bool)

(assert (=> d!1266589 (= c!731431 (contains!9862 hm!64 k0!1716))))

(assert (=> d!1266589 (= lt!1522054 (map!9898 (v!41906 (underlying!9272 hm!64))))))

(assert (=> d!1266589 (= lt!1522051 (map!9897 hm!64))))

(assert (=> d!1266589 (valid!3502 hm!64)))

(assert (=> d!1266589 (= (update!332 hm!64 k0!1716 v!9471) lt!1522030)))

(declare-fun lt!1522023 () ListMap!1479)

(declare-fun bm!296144 () Bool)

(assert (=> bm!296144 (= call!296165 (contains!9861 (ite c!731431 lt!1522003 lt!1522023) k0!1716))))

(declare-fun lt!1522019 () ListMap!1479)

(declare-fun bm!296145 () Bool)

(declare-fun lemmaEquivalentThenSameContains!35 (ListMap!1479 ListMap!1479 K!9049) Unit!66817)

(assert (=> bm!296145 (= call!296145 (lemmaEquivalentThenSameContains!35 (ite c!731431 lt!1522034 lt!1522023) (ite c!731431 lt!1522003 lt!1522019) k0!1716))))

(declare-datatypes ((tuple2!45900 0))(
  ( (tuple2!45901 (_1!26229 Bool) (_2!26229 MutLongMap!4521)) )
))
(declare-fun lt!1522046 () tuple2!45900)

(declare-fun lt!1522021 () tuple2!45900)

(declare-fun call!296158 () ListLongMap!805)

(declare-fun bm!296146 () Bool)

(assert (=> bm!296146 (= call!296158 (map!9898 (ite c!731431 (_2!26229 lt!1522021) (_2!26229 lt!1522046))))))

(declare-fun b!4299947 () Bool)

(declare-fun e!2672745 () Bool)

(declare-fun e!2672748 () Bool)

(assert (=> b!4299947 (= e!2672745 e!2672748)))

(declare-fun res!1762343 () Bool)

(declare-fun call!296161 () ListMap!1479)

(assert (=> b!4299947 (= res!1762343 (contains!9861 call!296161 k0!1716))))

(assert (=> b!4299947 (=> (not res!1762343) (not e!2672748))))

(declare-fun b!4299948 () Bool)

(declare-fun call!296162 () Bool)

(assert (=> b!4299948 (= e!2672745 call!296162)))

(declare-fun bm!296147 () Bool)

(declare-fun lt!1522020 () List!48062)

(declare-fun +!175 (ListLongMap!805 tuple2!45898) ListLongMap!805)

(assert (=> bm!296147 (= call!296156 (+!175 lt!1522054 (ite c!731431 (tuple2!45899 lt!1522015 lt!1522052) (tuple2!45899 lt!1522044 lt!1522020))))))

(declare-fun b!4299949 () Bool)

(declare-fun e!2672740 () Unit!66817)

(declare-fun Unit!66825 () Unit!66817)

(assert (=> b!4299949 (= e!2672740 Unit!66825)))

(declare-fun bm!296148 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!101 (ListLongMap!805 (_ BitVec 64) List!48062 Hashable!4437) Unit!66817)

(assert (=> bm!296148 (= call!296168 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!101 lt!1522054 (ite c!731431 lt!1522015 lt!1522044) (ite c!731431 lt!1522052 lt!1522020) (hashF!6469 hm!64)))))

(declare-fun b!4299950 () Bool)

(declare-fun lt!1522029 () MutableMap!4427)

(declare-datatypes ((tuple2!45902 0))(
  ( (tuple2!45903 (_1!26230 Unit!66817) (_2!26230 MutableMap!4427)) )
))
(declare-fun Unit!66826 () Unit!66817)

(declare-fun Unit!66827 () Unit!66817)

(assert (=> b!4299950 (= e!2672741 (tuple2!45897 (_1!26229 lt!1522046) (_2!26230 (ite (_1!26229 lt!1522046) (tuple2!45903 Unit!66826 (HashMap!4427 (Cell!17896 (_2!26229 lt!1522046)) (hashF!6469 hm!64) (bvadd (_size!9086 hm!64) #b00000000000000000000000000000001) (defaultValue!4598 hm!64))) (tuple2!45903 Unit!66827 lt!1522029)))))))

(declare-fun call!296152 () (_ BitVec 64))

(assert (=> b!4299950 (= lt!1522044 call!296152)))

(declare-fun c!731426 () Bool)

(declare-fun contains!9863 (MutLongMap!4521 (_ BitVec 64)) Bool)

(assert (=> b!4299950 (= c!731426 (contains!9863 (v!41906 (underlying!9272 hm!64)) lt!1522044))))

(assert (=> b!4299950 (= lt!1522045 e!2672739)))

(assert (=> b!4299950 (= lt!1522020 (Cons!47938 (tuple2!45895 k0!1716 v!9471) lt!1522045))))

(declare-fun call!296150 () tuple2!45900)

(assert (=> b!4299950 (= lt!1522046 call!296150)))

(assert (=> b!4299950 (= lt!1522029 (HashMap!4427 (Cell!17896 (_2!26229 lt!1522046)) (hashF!6469 hm!64) (_size!9086 hm!64) (defaultValue!4598 hm!64)))))

(declare-fun c!731427 () Bool)

(assert (=> b!4299950 (= c!731427 (_1!26229 lt!1522046))))

(declare-fun lt!1522010 () Unit!66817)

(declare-fun e!2672742 () Unit!66817)

(assert (=> b!4299950 (= lt!1522010 e!2672742)))

(declare-fun lt!1522005 () ListLongMap!805)

(declare-fun bm!296149 () Bool)

(declare-fun forall!8631 (List!48063 Int) Bool)

(assert (=> bm!296149 (= call!296171 (forall!8631 (ite c!731431 (toList!2196 lt!1522047) (toList!2196 lt!1522005)) (ite c!731431 lambda!131972 lambda!131973)))))

(declare-fun b!4299951 () Bool)

(assert (=> b!4299951 (= e!2672744 call!296151)))

(declare-fun bm!296150 () Bool)

(declare-fun allKeysSameHashInMap!271 (ListLongMap!805 Hashable!4437) Bool)

(assert (=> bm!296150 (= call!296142 (allKeysSameHashInMap!271 (ite c!731431 lt!1522047 lt!1522005) (hashF!6469 hm!64)))))

(declare-fun bm!296151 () Bool)

(assert (=> bm!296151 (= call!296146 (forall!8631 (toList!2196 call!296158) (ite c!731431 lambda!131972 lambda!131973)))))

(declare-fun b!4299952 () Bool)

(declare-fun res!1762344 () Bool)

(assert (=> b!4299952 (=> (not res!1762344) (not e!2672743))))

(assert (=> b!4299952 (= res!1762344 (valid!3502 (_2!26227 lt!1522030)))))

(declare-fun b!4299953 () Bool)

(declare-fun lt!1522035 () Unit!66817)

(assert (=> b!4299953 (= e!2672740 lt!1522035)))

(declare-fun lt!1522032 () Unit!66817)

(assert (=> b!4299953 (= lt!1522032 call!296159)))

(assert (=> b!4299953 call!296164))

(declare-fun lt!1522000 () Unit!66817)

(assert (=> b!4299953 (= lt!1522000 lt!1522032)))

(assert (=> b!4299953 (= lt!1522035 call!296170)))

(assert (=> b!4299953 call!296172))

(declare-fun b!4299954 () Bool)

(assert (=> b!4299954 (= e!2672743 e!2672745)))

(declare-fun c!731429 () Bool)

(assert (=> b!4299954 (= c!731429 (_1!26227 lt!1522030))))

(declare-fun bm!296152 () Bool)

(assert (=> bm!296152 (= call!296151 (map!9897 hm!64))))

(declare-fun bm!296153 () Bool)

(declare-fun call!296160 () ListMap!1479)

(assert (=> bm!296153 (= call!296160 (extractMap!271 (toList!2196 call!296156)))))

(declare-fun call!296155 () ListMap!1479)

(declare-fun bm!296154 () Bool)

(declare-fun call!296154 () ListMap!1479)

(assert (=> bm!296154 (= call!296154 (+!174 call!296155 (tuple2!45895 k0!1716 v!9471)))))

(declare-fun bm!296155 () Bool)

(assert (=> bm!296155 (= call!296144 call!296153)))

(assert (=> b!4299955 call!296157))

(declare-fun lt!1522027 () Unit!66817)

(declare-fun Unit!66828 () Unit!66817)

(assert (=> b!4299955 (= lt!1522027 Unit!66828)))

(assert (=> b!4299955 (contains!9861 call!296149 k0!1716)))

(declare-fun lt!1522031 () Unit!66817)

(declare-fun lt!1522024 () Unit!66817)

(assert (=> b!4299955 (= lt!1522031 lt!1522024)))

(assert (=> b!4299955 (= call!296165 (contains!9861 lt!1522019 k0!1716))))

(assert (=> b!4299955 (= lt!1522024 call!296145)))

(assert (=> b!4299955 (= lt!1522019 call!296149)))

(assert (=> b!4299955 (= lt!1522023 call!296169)))

(declare-fun lt!1522043 () Unit!66817)

(declare-fun Unit!66829 () Unit!66817)

(assert (=> b!4299955 (= lt!1522043 Unit!66829)))

(assert (=> b!4299955 call!296148))

(declare-fun lt!1522017 () Unit!66817)

(declare-fun Unit!66830 () Unit!66817)

(assert (=> b!4299955 (= lt!1522017 Unit!66830)))

(assert (=> b!4299955 call!296166))

(declare-fun lt!1522037 () Unit!66817)

(declare-fun Unit!66831 () Unit!66817)

(assert (=> b!4299955 (= lt!1522037 Unit!66831)))

(assert (=> b!4299955 call!296146))

(declare-fun lt!1522026 () Unit!66817)

(declare-fun lt!1522007 () Unit!66817)

(assert (=> b!4299955 (= lt!1522026 lt!1522007)))

(assert (=> b!4299955 call!296167))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!35 (ListLongMap!805 (_ BitVec 64) List!48062 K!9049 V!9251 Hashable!4437) Unit!66817)

(assert (=> b!4299955 (= lt!1522007 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!35 lt!1522054 lt!1522044 lt!1522020 k0!1716 v!9471 (hashF!6469 hm!64)))))

(declare-fun lt!1522049 () Unit!66817)

(declare-fun lt!1522018 () Unit!66817)

(assert (=> b!4299955 (= lt!1522049 lt!1522018)))

(assert (=> b!4299955 e!2672747))

(declare-fun res!1762342 () Bool)

(assert (=> b!4299955 (=> (not res!1762342) (not e!2672747))))

(assert (=> b!4299955 (= res!1762342 call!296171)))

(assert (=> b!4299955 (= lt!1522005 call!296156)))

(assert (=> b!4299955 (= lt!1522018 call!296168)))

(declare-fun lt!1522033 () Unit!66817)

(assert (=> b!4299955 (= lt!1522033 e!2672740)))

(declare-fun c!731425 () Bool)

(declare-fun isEmpty!28047 (List!48062) Bool)

(assert (=> b!4299955 (= c!731425 (not (isEmpty!28047 lt!1522045)))))

(declare-fun Unit!66832 () Unit!66817)

(assert (=> b!4299955 (= e!2672742 Unit!66832)))

(declare-fun bm!296156 () Bool)

(declare-fun removePairForKey!140 (List!48062 K!9049) List!48062)

(assert (=> bm!296156 (= call!296143 (removePairForKey!140 (ite c!731431 lt!1522053 lt!1522045) k0!1716))))

(declare-fun b!4299956 () Bool)

(declare-fun lt!1522022 () MutableMap!4427)

(declare-fun Unit!66833 () Unit!66817)

(declare-fun Unit!66834 () Unit!66817)

(assert (=> b!4299956 (= e!2672741 (tuple2!45897 (_1!26229 lt!1522021) (_2!26230 (ite false (tuple2!45903 Unit!66833 (HashMap!4427 (Cell!17896 (_2!26229 lt!1522021)) (hashF!6469 hm!64) (bvadd (_size!9086 hm!64) #b00000000000000000000000000000001) (defaultValue!4598 hm!64))) (tuple2!45903 Unit!66834 lt!1522022)))))))

(assert (=> b!4299956 (= lt!1522015 call!296152)))

(declare-fun call!296147 () List!48062)

(assert (=> b!4299956 (= lt!1522053 call!296147)))

(assert (=> b!4299956 (= lt!1522052 (Cons!47938 (tuple2!45895 k0!1716 v!9471) call!296143))))

(assert (=> b!4299956 (= lt!1522021 call!296150)))

(assert (=> b!4299956 (= lt!1522022 (HashMap!4427 (Cell!17896 (_2!26229 lt!1522021)) (hashF!6469 hm!64) (_size!9086 hm!64) (defaultValue!4598 hm!64)))))

(declare-fun c!731428 () Bool)

(assert (=> b!4299956 (= c!731428 (_1!26229 lt!1522021))))

(declare-fun lt!1522009 () Unit!66817)

(assert (=> b!4299956 (= lt!1522009 e!2672746)))

(declare-fun bm!296157 () Bool)

(declare-fun call!296163 () Bool)

(assert (=> bm!296157 (= call!296163 (valid!3502 (ite c!731431 lt!1522022 lt!1522029)))))

(declare-fun b!4299957 () Bool)

(assert (=> b!4299957 (= call!296144 lt!1522051)))

(declare-fun lt!1522028 () Unit!66817)

(declare-fun Unit!66835 () Unit!66817)

(assert (=> b!4299957 (= lt!1522028 Unit!66835)))

(assert (=> b!4299957 call!296163))

(declare-fun Unit!66836 () Unit!66817)

(assert (=> b!4299957 (= e!2672746 Unit!66836)))

(declare-fun bm!296158 () Bool)

(assert (=> bm!296158 (= call!296153 (map!9897 (ite c!731431 lt!1522022 lt!1522029)))))

(declare-fun bm!296159 () Bool)

(declare-fun hash!839 (Hashable!4437 K!9049) (_ BitVec 64))

(assert (=> bm!296159 (= call!296152 (hash!839 (hashF!6469 hm!64) k0!1716))))

(declare-fun b!4299958 () Bool)

(assert (=> b!4299958 (= call!296169 lt!1522051)))

(declare-fun lt!1522038 () Unit!66817)

(declare-fun Unit!66837 () Unit!66817)

(assert (=> b!4299958 (= lt!1522038 Unit!66837)))

(assert (=> b!4299958 call!296163))

(declare-fun Unit!66838 () Unit!66817)

(assert (=> b!4299958 (= e!2672742 Unit!66838)))

(declare-fun bm!296160 () Bool)

(assert (=> bm!296160 (= call!296166 (allKeysSameHashInMap!271 call!296158 (hashF!6469 hm!64)))))

(declare-fun bm!296161 () Bool)

(assert (=> bm!296161 (= call!296167 (eq!101 call!296160 call!296154))))

(declare-fun bm!296162 () Bool)

(assert (=> bm!296162 (= call!296162 (eq!101 call!296161 e!2672744))))

(declare-fun c!731430 () Bool)

(assert (=> bm!296162 (= c!731430 c!731429)))

(declare-fun bm!296163 () Bool)

(assert (=> bm!296163 (= call!296161 (map!9897 (_2!26227 lt!1522030)))))

(declare-fun bm!296164 () Bool)

(declare-fun apply!10876 (MutLongMap!4521 (_ BitVec 64)) List!48062)

(assert (=> bm!296164 (= call!296147 (apply!10876 (v!41906 (underlying!9272 hm!64)) (ite c!731431 lt!1522015 lt!1522044)))))

(declare-fun b!4299959 () Bool)

(assert (=> b!4299959 (= e!2672739 call!296147)))

(declare-fun bm!296165 () Bool)

(assert (=> bm!296165 (= call!296155 (extractMap!271 (toList!2196 lt!1522054)))))

(declare-fun bm!296166 () Bool)

(declare-fun update!333 (MutLongMap!4521 (_ BitVec 64) List!48062) tuple2!45900)

(assert (=> bm!296166 (= call!296150 (update!333 (v!41906 (underlying!9272 hm!64)) (ite c!731431 lt!1522015 lt!1522044) (ite c!731431 lt!1522052 lt!1522020)))))

(declare-fun bm!296167 () Bool)

(assert (=> bm!296167 (= call!296172 (allKeysSameHash!123 call!296143 (ite c!731431 lt!1522015 lt!1522044) (hashF!6469 hm!64)))))

(declare-fun b!4299960 () Bool)

(assert (=> b!4299960 (= e!2672748 call!296162)))

(assert (= (and d!1266589 c!731431) b!4299956))

(assert (= (and d!1266589 (not c!731431)) b!4299950))

(assert (= (and b!4299956 c!731428) b!4299944))

(assert (= (and b!4299956 (not c!731428)) b!4299957))

(assert (= (and b!4299944 res!1762341) b!4299946))

(assert (= (or b!4299944 b!4299957) bm!296155))

(assert (= (and b!4299950 c!731426) b!4299959))

(assert (= (and b!4299950 (not c!731426)) b!4299945))

(assert (= (and b!4299950 c!731427) b!4299955))

(assert (= (and b!4299950 (not c!731427)) b!4299958))

(assert (= (and b!4299955 c!731425) b!4299953))

(assert (= (and b!4299955 (not c!731425)) b!4299949))

(assert (= (and b!4299955 res!1762342) b!4299942))

(assert (= (or b!4299955 b!4299958) bm!296141))

(assert (= (or b!4299956 b!4299959) bm!296164))

(assert (= (or b!4299944 b!4299955) bm!296148))

(assert (= (or b!4299944 b!4299955) bm!296165))

(assert (= (or b!4299944 b!4299956 b!4299953) bm!296156))

(assert (= (or b!4299944 b!4299953) bm!296137))

(assert (= (or bm!296155 bm!296141) bm!296158))

(assert (= (or b!4299956 b!4299950) bm!296159))

(assert (= (or b!4299944 b!4299953) bm!296142))

(assert (= (or b!4299944 b!4299953) bm!296138))

(assert (= (or b!4299944 b!4299955) bm!296144))

(assert (= (or b!4299944 b!4299955) bm!296149))

(assert (= (or b!4299944 b!4299955) bm!296146))

(assert (= (or b!4299944 b!4299955) bm!296139))

(assert (= (or b!4299946 b!4299942) bm!296150))

(assert (= (or b!4299957 b!4299958) bm!296157))

(assert (= (or b!4299956 b!4299950) bm!296166))

(assert (= (or b!4299944 b!4299955) bm!296140))

(assert (= (or b!4299944 b!4299955) bm!296145))

(assert (= (or b!4299944 b!4299955) bm!296147))

(assert (= (or b!4299944 b!4299955) bm!296143))

(assert (= (or b!4299944 b!4299955) bm!296154))

(assert (= (or b!4299944 b!4299955) bm!296151))

(assert (= (or b!4299944 b!4299953) bm!296167))

(assert (= (or b!4299944 b!4299955) bm!296160))

(assert (= (or b!4299944 b!4299955) bm!296153))

(assert (= (or b!4299944 b!4299955) bm!296161))

(assert (= (and d!1266589 res!1762345) b!4299952))

(assert (= (and b!4299952 res!1762344) b!4299954))

(assert (= (and b!4299954 c!731429) b!4299947))

(assert (= (and b!4299954 (not c!731429)) b!4299948))

(assert (= (and b!4299947 res!1762343) b!4299960))

(assert (= (or b!4299960 b!4299948) bm!296152))

(assert (= (or b!4299947 b!4299960 b!4299948) bm!296163))

(assert (= (or b!4299960 b!4299948) bm!296162))

(assert (= (and bm!296162 c!731430) b!4299943))

(assert (= (and bm!296162 (not c!731430)) b!4299951))

(declare-fun m!4892111 () Bool)

(assert (=> bm!296166 m!4892111))

(declare-fun m!4892113 () Bool)

(assert (=> bm!296167 m!4892113))

(declare-fun m!4892115 () Bool)

(assert (=> bm!296147 m!4892115))

(declare-fun m!4892117 () Bool)

(assert (=> bm!296145 m!4892117))

(declare-fun m!4892119 () Bool)

(assert (=> bm!296157 m!4892119))

(declare-fun m!4892121 () Bool)

(assert (=> bm!296146 m!4892121))

(declare-fun m!4892123 () Bool)

(assert (=> bm!296153 m!4892123))

(declare-fun m!4892125 () Bool)

(assert (=> bm!296154 m!4892125))

(declare-fun m!4892127 () Bool)

(assert (=> bm!296138 m!4892127))

(declare-fun m!4892129 () Bool)

(assert (=> b!4299952 m!4892129))

(declare-fun m!4892131 () Bool)

(assert (=> bm!296161 m!4892131))

(declare-fun m!4892133 () Bool)

(assert (=> bm!296158 m!4892133))

(declare-fun m!4892135 () Bool)

(assert (=> bm!296143 m!4892135))

(assert (=> bm!296152 m!4892085))

(declare-fun m!4892137 () Bool)

(assert (=> bm!296149 m!4892137))

(declare-fun m!4892139 () Bool)

(assert (=> bm!296150 m!4892139))

(declare-fun m!4892141 () Bool)

(assert (=> bm!296162 m!4892141))

(declare-fun m!4892143 () Bool)

(assert (=> bm!296156 m!4892143))

(declare-fun m!4892145 () Bool)

(assert (=> d!1266589 m!4892145))

(assert (=> d!1266589 m!4892107))

(assert (=> d!1266589 m!4892085))

(assert (=> d!1266589 m!4892081))

(declare-fun m!4892147 () Bool)

(assert (=> bm!296139 m!4892147))

(declare-fun m!4892149 () Bool)

(assert (=> bm!296160 m!4892149))

(declare-fun m!4892151 () Bool)

(assert (=> bm!296140 m!4892151))

(declare-fun m!4892153 () Bool)

(assert (=> b!4299955 m!4892153))

(declare-fun m!4892155 () Bool)

(assert (=> b!4299955 m!4892155))

(declare-fun m!4892157 () Bool)

(assert (=> b!4299955 m!4892157))

(declare-fun m!4892159 () Bool)

(assert (=> b!4299955 m!4892159))

(declare-fun m!4892161 () Bool)

(assert (=> bm!296159 m!4892161))

(declare-fun m!4892163 () Bool)

(assert (=> bm!296142 m!4892163))

(declare-fun m!4892165 () Bool)

(assert (=> bm!296151 m!4892165))

(declare-fun m!4892167 () Bool)

(assert (=> b!4299950 m!4892167))

(declare-fun m!4892169 () Bool)

(assert (=> bm!296144 m!4892169))

(declare-fun m!4892171 () Bool)

(assert (=> bm!296163 m!4892171))

(declare-fun m!4892173 () Bool)

(assert (=> b!4299943 m!4892173))

(declare-fun m!4892175 () Bool)

(assert (=> bm!296148 m!4892175))

(declare-fun m!4892177 () Bool)

(assert (=> b!4299944 m!4892177))

(declare-fun m!4892179 () Bool)

(assert (=> b!4299944 m!4892179))

(declare-fun m!4892181 () Bool)

(assert (=> b!4299944 m!4892181))

(declare-fun m!4892183 () Bool)

(assert (=> b!4299944 m!4892183))

(declare-fun m!4892185 () Bool)

(assert (=> b!4299944 m!4892185))

(declare-fun m!4892187 () Bool)

(assert (=> bm!296165 m!4892187))

(declare-fun m!4892189 () Bool)

(assert (=> b!4299947 m!4892189))

(declare-fun m!4892191 () Bool)

(assert (=> bm!296164 m!4892191))

(declare-fun m!4892193 () Bool)

(assert (=> bm!296137 m!4892193))

(assert (=> b!4299887 d!1266589))

(declare-fun d!1266591 () Bool)

(declare-fun e!2672752 () Bool)

(assert (=> d!1266591 e!2672752))

(declare-fun res!1762350 () Bool)

(assert (=> d!1266591 (=> (not res!1762350) (not e!2672752))))

(declare-fun lt!1522065 () ListMap!1479)

(assert (=> d!1266591 (= res!1762350 (contains!9861 lt!1522065 (_1!26226 lt!1521884)))))

(declare-fun lt!1522066 () List!48062)

(assert (=> d!1266591 (= lt!1522065 (ListMap!1480 lt!1522066))))

(declare-fun lt!1522063 () Unit!66817)

(declare-fun lt!1522064 () Unit!66817)

(assert (=> d!1266591 (= lt!1522063 lt!1522064)))

(declare-datatypes ((Option!10163 0))(
  ( (None!10162) (Some!10162 (v!41908 V!9251)) )
))
(declare-fun getValueByKey!212 (List!48062 K!9049) Option!10163)

(assert (=> d!1266591 (= (getValueByKey!212 lt!1522066 (_1!26226 lt!1521884)) (Some!10162 (_2!26226 lt!1521884)))))

(declare-fun lemmaContainsTupThenGetReturnValue!43 (List!48062 K!9049 V!9251) Unit!66817)

(assert (=> d!1266591 (= lt!1522064 (lemmaContainsTupThenGetReturnValue!43 lt!1522066 (_1!26226 lt!1521884) (_2!26226 lt!1521884)))))

(declare-fun insertNoDuplicatedKeys!24 (List!48062 K!9049 V!9251) List!48062)

(assert (=> d!1266591 (= lt!1522066 (insertNoDuplicatedKeys!24 (toList!2195 lt!1521883) (_1!26226 lt!1521884) (_2!26226 lt!1521884)))))

(assert (=> d!1266591 (= (+!174 lt!1521883 lt!1521884) lt!1522065)))

(declare-fun b!4299965 () Bool)

(declare-fun res!1762351 () Bool)

(assert (=> b!4299965 (=> (not res!1762351) (not e!2672752))))

(assert (=> b!4299965 (= res!1762351 (= (getValueByKey!212 (toList!2195 lt!1522065) (_1!26226 lt!1521884)) (Some!10162 (_2!26226 lt!1521884))))))

(declare-fun b!4299966 () Bool)

(declare-fun contains!9864 (List!48062 tuple2!45894) Bool)

(assert (=> b!4299966 (= e!2672752 (contains!9864 (toList!2195 lt!1522065) lt!1521884))))

(assert (= (and d!1266591 res!1762350) b!4299965))

(assert (= (and b!4299965 res!1762351) b!4299966))

(declare-fun m!4892195 () Bool)

(assert (=> d!1266591 m!4892195))

(declare-fun m!4892197 () Bool)

(assert (=> d!1266591 m!4892197))

(declare-fun m!4892199 () Bool)

(assert (=> d!1266591 m!4892199))

(declare-fun m!4892201 () Bool)

(assert (=> d!1266591 m!4892201))

(declare-fun m!4892203 () Bool)

(assert (=> b!4299965 m!4892203))

(declare-fun m!4892205 () Bool)

(assert (=> b!4299966 m!4892205))

(assert (=> b!4299887 d!1266591))

(declare-fun d!1266593 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7531 (List!48062) (InoxSet tuple2!45894))

(assert (=> d!1266593 (= (eq!101 (map!9897 (_2!26227 lt!1521885)) lt!1521886) (= (content!7531 (toList!2195 (map!9897 (_2!26227 lt!1521885)))) (content!7531 (toList!2195 lt!1521886))))))

(declare-fun bs!603964 () Bool)

(assert (= bs!603964 d!1266593))

(declare-fun m!4892207 () Bool)

(assert (=> bs!603964 m!4892207))

(declare-fun m!4892209 () Bool)

(assert (=> bs!603964 m!4892209))

(assert (=> b!4299896 d!1266593))

(declare-fun d!1266595 () Bool)

(declare-fun lt!1522067 () ListMap!1479)

(assert (=> d!1266595 (invariantList!541 (toList!2195 lt!1522067))))

(assert (=> d!1266595 (= lt!1522067 (extractMap!271 (toList!2196 (map!9898 (v!41906 (underlying!9272 (_2!26227 lt!1521885)))))))))

(assert (=> d!1266595 (valid!3502 (_2!26227 lt!1521885))))

(assert (=> d!1266595 (= (map!9897 (_2!26227 lt!1521885)) lt!1522067)))

(declare-fun bs!603965 () Bool)

(assert (= bs!603965 d!1266595))

(declare-fun m!4892211 () Bool)

(assert (=> bs!603965 m!4892211))

(declare-fun m!4892213 () Bool)

(assert (=> bs!603965 m!4892213))

(declare-fun m!4892215 () Bool)

(assert (=> bs!603965 m!4892215))

(declare-fun m!4892217 () Bool)

(assert (=> bs!603965 m!4892217))

(assert (=> b!4299896 d!1266595))

(declare-fun d!1266597 () Bool)

(declare-fun noDuplicatedKeys!91 (List!48062) Bool)

(assert (=> d!1266597 (= (invariantList!541 (toList!2195 lt!1521883)) (noDuplicatedKeys!91 (toList!2195 lt!1521883)))))

(declare-fun bs!603966 () Bool)

(assert (= bs!603966 d!1266597))

(declare-fun m!4892219 () Bool)

(assert (=> bs!603966 m!4892219))

(assert (=> b!4299889 d!1266597))

(declare-fun bs!603967 () Bool)

(declare-fun b!4299971 () Bool)

(assert (= bs!603967 (and b!4299971 b!4299944)))

(declare-fun lambda!131976 () Int)

(assert (=> bs!603967 (= lambda!131976 lambda!131972)))

(declare-fun bs!603968 () Bool)

(assert (= bs!603968 (and b!4299971 b!4299955)))

(assert (=> bs!603968 (= lambda!131976 lambda!131973)))

(declare-fun d!1266599 () Bool)

(declare-fun res!1762356 () Bool)

(declare-fun e!2672755 () Bool)

(assert (=> d!1266599 (=> (not res!1762356) (not e!2672755))))

(declare-fun valid!3503 (MutLongMap!4521) Bool)

(assert (=> d!1266599 (= res!1762356 (valid!3503 (v!41906 (underlying!9272 hm!64))))))

(assert (=> d!1266599 (= (valid!3502 hm!64) e!2672755)))

(declare-fun res!1762357 () Bool)

(assert (=> b!4299971 (=> (not res!1762357) (not e!2672755))))

(assert (=> b!4299971 (= res!1762357 (forall!8631 (toList!2196 (map!9898 (v!41906 (underlying!9272 hm!64)))) lambda!131976))))

(declare-fun b!4299972 () Bool)

(assert (=> b!4299972 (= e!2672755 (allKeysSameHashInMap!271 (map!9898 (v!41906 (underlying!9272 hm!64))) (hashF!6469 hm!64)))))

(assert (= (and d!1266599 res!1762356) b!4299971))

(assert (= (and b!4299971 res!1762357) b!4299972))

(declare-fun m!4892221 () Bool)

(assert (=> d!1266599 m!4892221))

(assert (=> b!4299971 m!4892107))

(declare-fun m!4892223 () Bool)

(assert (=> b!4299971 m!4892223))

(assert (=> b!4299972 m!4892107))

(assert (=> b!4299972 m!4892107))

(declare-fun m!4892225 () Bool)

(assert (=> b!4299972 m!4892225))

(assert (=> b!4299890 d!1266599))

(declare-fun tp!1321084 () Bool)

(declare-fun e!2672758 () Bool)

(declare-fun b!4299977 () Bool)

(assert (=> b!4299977 (= e!2672758 (and tp_is_empty!23257 tp_is_empty!23259 tp!1321084))))

(assert (=> b!4299888 (= tp!1321075 e!2672758)))

(assert (= (and b!4299888 ((_ is Cons!47938) mapDefault!20307)) b!4299977))

(declare-fun b!4299978 () Bool)

(declare-fun tp!1321085 () Bool)

(declare-fun e!2672759 () Bool)

(assert (=> b!4299978 (= e!2672759 (and tp_is_empty!23257 tp_is_empty!23259 tp!1321085))))

(assert (=> b!4299893 (= tp!1321076 e!2672759)))

(assert (= (and b!4299893 ((_ is Cons!47938) (zeroValue!4780 (v!41905 (underlying!9271 (v!41906 (underlying!9272 hm!64))))))) b!4299978))

(declare-fun e!2672760 () Bool)

(declare-fun tp!1321086 () Bool)

(declare-fun b!4299979 () Bool)

(assert (=> b!4299979 (= e!2672760 (and tp_is_empty!23257 tp_is_empty!23259 tp!1321086))))

(assert (=> b!4299893 (= tp!1321078 e!2672760)))

(assert (= (and b!4299893 ((_ is Cons!47938) (minValue!4780 (v!41905 (underlying!9271 (v!41906 (underlying!9272 hm!64))))))) b!4299979))

(declare-fun b!4299987 () Bool)

(declare-fun e!2672766 () Bool)

(declare-fun tp!1321095 () Bool)

(assert (=> b!4299987 (= e!2672766 (and tp_is_empty!23257 tp_is_empty!23259 tp!1321095))))

(declare-fun mapIsEmpty!20310 () Bool)

(declare-fun mapRes!20310 () Bool)

(assert (=> mapIsEmpty!20310 mapRes!20310))

(declare-fun condMapEmpty!20310 () Bool)

(declare-fun mapDefault!20310 () List!48062)

(assert (=> mapNonEmpty!20307 (= condMapEmpty!20310 (= mapRest!20307 ((as const (Array (_ BitVec 32) List!48062)) mapDefault!20310)))))

(assert (=> mapNonEmpty!20307 (= tp!1321080 (and e!2672766 mapRes!20310))))

(declare-fun mapNonEmpty!20310 () Bool)

(declare-fun tp!1321094 () Bool)

(declare-fun e!2672765 () Bool)

(assert (=> mapNonEmpty!20310 (= mapRes!20310 (and tp!1321094 e!2672765))))

(declare-fun mapRest!20310 () (Array (_ BitVec 32) List!48062))

(declare-fun mapValue!20310 () List!48062)

(declare-fun mapKey!20310 () (_ BitVec 32))

(assert (=> mapNonEmpty!20310 (= mapRest!20307 (store mapRest!20310 mapKey!20310 mapValue!20310))))

(declare-fun tp!1321093 () Bool)

(declare-fun b!4299986 () Bool)

(assert (=> b!4299986 (= e!2672765 (and tp_is_empty!23257 tp_is_empty!23259 tp!1321093))))

(assert (= (and mapNonEmpty!20307 condMapEmpty!20310) mapIsEmpty!20310))

(assert (= (and mapNonEmpty!20307 (not condMapEmpty!20310)) mapNonEmpty!20310))

(assert (= (and mapNonEmpty!20310 ((_ is Cons!47938) mapValue!20310)) b!4299986))

(assert (= (and mapNonEmpty!20307 ((_ is Cons!47938) mapDefault!20310)) b!4299987))

(declare-fun m!4892227 () Bool)

(assert (=> mapNonEmpty!20310 m!4892227))

(declare-fun b!4299988 () Bool)

(declare-fun tp!1321096 () Bool)

(declare-fun e!2672767 () Bool)

(assert (=> b!4299988 (= e!2672767 (and tp_is_empty!23257 tp_is_empty!23259 tp!1321096))))

(assert (=> mapNonEmpty!20307 (= tp!1321074 e!2672767)))

(assert (= (and mapNonEmpty!20307 ((_ is Cons!47938) mapValue!20307)) b!4299988))

(declare-fun b_lambda!126329 () Bool)

(assert (= b_lambda!126327 (or (and start!412858 b_free!128025) b_lambda!126329)))

(check-sat (not mapNonEmpty!20310) (not bm!296139) (not bm!296158) (not bm!296161) (not b!4299944) (not d!1266599) (not b!4299955) (not b_next!128731) (not b!4299988) (not d!1266591) (not bm!296144) (not bm!296152) (not bm!296166) (not bm!296160) b_and!339355 (not b!4299952) (not bm!296163) (not b!4299987) (not d!1266593) (not bm!296150) (not d!1266589) tp_is_empty!23257 (not b!4299986) (not d!1266583) (not b!4299943) (not b_lambda!126325) (not bm!296167) (not b_lambda!126329) (not bm!296145) (not b_next!128733) (not bm!296164) (not bm!296157) (not bm!296147) (not bm!296140) tp_is_empty!23259 (not b!4299977) (not bm!296149) (not b!4299903) (not d!1266597) (not bm!296137) (not bm!296156) (not bm!296154) (not b!4299978) (not bm!296143) (not bm!296159) (not b!4299947) (not bm!296153) (not d!1266595) b_and!339353 (not bm!296142) (not bm!296148) (not bm!296138) (not bm!296162) (not b_next!128729) b_and!339359 (not bm!296165) (not b!4299972) (not b!4299950) (not bm!296151) (not b!4299971) (not b!4299965) (not b!4299979) (not bm!296146) (not b!4299966))
(check-sat b_and!339355 (not b_next!128733) b_and!339353 (not b_next!128731) (not b_next!128729) b_and!339359)
