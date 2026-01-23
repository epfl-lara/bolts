; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297232 () Bool)

(assert start!297232)

(declare-fun b!3173949 () Bool)

(declare-fun b_free!83393 () Bool)

(declare-fun b_next!84097 () Bool)

(assert (=> b!3173949 (= b_free!83393 (not b_next!84097))))

(declare-fun tp!1003132 () Bool)

(declare-fun b_and!209683 () Bool)

(assert (=> b!3173949 (= tp!1003132 b_and!209683)))

(declare-fun b!3173960 () Bool)

(declare-fun b_free!83395 () Bool)

(declare-fun b_next!84099 () Bool)

(assert (=> b!3173960 (= b_free!83395 (not b_next!84099))))

(declare-fun tp!1003125 () Bool)

(declare-fun b_and!209685 () Bool)

(assert (=> b!3173960 (= tp!1003125 b_and!209685)))

(declare-fun b!3173946 () Bool)

(declare-fun e!1976892 () Bool)

(declare-fun tp!1003129 () Bool)

(declare-fun tp!1003121 () Bool)

(assert (=> b!3173946 (= e!1976892 (and tp!1003129 tp!1003121))))

(declare-fun b!3173947 () Bool)

(declare-fun e!1976897 () Bool)

(declare-datatypes ((C!19800 0))(
  ( (C!19801 (val!11936 Int)) )
))
(declare-datatypes ((Regex!9807 0))(
  ( (ElementMatch!9807 (c!533466 C!19800)) (Concat!15128 (regOne!20126 Regex!9807) (regTwo!20126 Regex!9807)) (EmptyExpr!9807) (Star!9807 (reg!10136 Regex!9807)) (EmptyLang!9807) (Union!9807 (regOne!20127 Regex!9807) (regTwo!20127 Regex!9807)) )
))
(declare-datatypes ((tuple2!34894 0))(
  ( (tuple2!34895 (_1!20579 Regex!9807) (_2!20579 C!19800)) )
))
(declare-datatypes ((tuple2!34896 0))(
  ( (tuple2!34897 (_1!20580 tuple2!34894) (_2!20580 Regex!9807)) )
))
(declare-datatypes ((List!35657 0))(
  ( (Nil!35533) (Cons!35533 (h!40953 tuple2!34896) (t!234746 List!35657)) )
))
(declare-datatypes ((array!15164 0))(
  ( (array!15165 (arr!6746 (Array (_ BitVec 32) (_ BitVec 64))) (size!26832 (_ BitVec 32))) )
))
(declare-datatypes ((array!15166 0))(
  ( (array!15167 (arr!6747 (Array (_ BitVec 32) List!35657)) (size!26833 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8456 0))(
  ( (LongMapFixedSize!8457 (defaultEntry!4613 Int) (mask!10925 (_ BitVec 32)) (extraKeys!4477 (_ BitVec 32)) (zeroValue!4487 List!35657) (minValue!4487 List!35657) (_size!8499 (_ BitVec 32)) (_keys!4528 array!15164) (_values!4509 array!15166) (_vacant!4289 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16721 0))(
  ( (Cell!16722 (v!35311 LongMapFixedSize!8456)) )
))
(declare-datatypes ((MutLongMap!4228 0))(
  ( (LongMap!4228 (underlying!8685 Cell!16721)) (MutLongMapExt!4227 (__x!22790 Int)) )
))
(declare-datatypes ((Cell!16723 0))(
  ( (Cell!16724 (v!35312 MutLongMap!4228)) )
))
(declare-datatypes ((Hashable!4144 0))(
  ( (HashableExt!4143 (__x!22791 Int)) )
))
(declare-datatypes ((MutableMap!4134 0))(
  ( (MutableMapExt!4133 (__x!22792 Int)) (HashMap!4134 (underlying!8686 Cell!16723) (hashF!6176 Hashable!4144) (_size!8500 (_ BitVec 32)) (defaultValue!4305 Int)) )
))
(declare-datatypes ((Cache!538 0))(
  ( (Cache!539 (cache!4280 MutableMap!4134)) )
))
(declare-fun thiss!28445 () Cache!538)

(declare-fun lt!1067244 () tuple2!34894)

(declare-fun apply!7986 (MutableMap!4134 tuple2!34894) Regex!9807)

(declare-fun derivativeStep!2922 (Regex!9807 C!19800) Regex!9807)

(assert (=> b!3173947 (= e!1976897 (= (apply!7986 (cache!4280 thiss!28445) lt!1067244) (derivativeStep!2922 (_1!20579 lt!1067244) (_2!20579 lt!1067244))))))

(declare-fun lt!1067245 () Regex!9807)

(assert (=> b!3173947 (= lt!1067245 (apply!7986 (cache!4280 thiss!28445) lt!1067244))))

(declare-fun lt!1067249 () Regex!9807)

(assert (=> b!3173947 (= lt!1067249 (apply!7986 (cache!4280 thiss!28445) lt!1067244))))

(declare-fun lt!1067243 () tuple2!34894)

(assert (=> b!3173947 (= lt!1067243 lt!1067244)))

(declare-fun b!3173948 () Bool)

(declare-fun tp!1003127 () Bool)

(declare-fun tp!1003124 () Bool)

(assert (=> b!3173948 (= e!1976892 (and tp!1003127 tp!1003124))))

(declare-fun tp!1003130 () Bool)

(declare-fun e!1976891 () Bool)

(declare-fun e!1976893 () Bool)

(declare-fun tp!1003123 () Bool)

(declare-fun array_inv!4840 (array!15164) Bool)

(declare-fun array_inv!4841 (array!15166) Bool)

(assert (=> b!3173949 (= e!1976891 (and tp!1003132 tp!1003130 tp!1003123 (array_inv!4840 (_keys!4528 (v!35311 (underlying!8685 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))) (array_inv!4841 (_values!4509 (v!35311 (underlying!8685 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))) e!1976893))))

(declare-fun b!3173950 () Bool)

(declare-fun e!1976899 () Bool)

(declare-fun e!1976896 () Bool)

(declare-fun lt!1067242 () MutLongMap!4228)

(get-info :version)

(assert (=> b!3173950 (= e!1976899 (and e!1976896 ((_ is LongMap!4228) lt!1067242)))))

(assert (=> b!3173950 (= lt!1067242 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))

(declare-fun b!3173951 () Bool)

(declare-fun e!1976898 () Bool)

(assert (=> b!3173951 (= e!1976896 e!1976898)))

(declare-fun mapIsEmpty!19145 () Bool)

(declare-fun mapRes!19145 () Bool)

(assert (=> mapIsEmpty!19145 mapRes!19145))

(declare-fun b!3173952 () Bool)

(declare-fun e!1976890 () Bool)

(declare-fun e!1976894 () Bool)

(assert (=> b!3173952 (= e!1976890 e!1976894)))

(declare-fun res!1289736 () Bool)

(assert (=> b!3173952 (=> (not res!1289736) (not e!1976894))))

(declare-fun contains!6245 (MutableMap!4134 tuple2!34894) Bool)

(assert (=> b!3173952 (= res!1289736 (contains!6245 (cache!4280 thiss!28445) lt!1067244))))

(declare-fun r!4705 () Regex!9807)

(declare-fun c!6979 () C!19800)

(assert (=> b!3173952 (= lt!1067244 (tuple2!34895 r!4705 c!6979))))

(declare-fun b!3173953 () Bool)

(declare-fun tp!1003122 () Bool)

(assert (=> b!3173953 (= e!1976892 tp!1003122)))

(declare-fun mapNonEmpty!19145 () Bool)

(declare-fun tp!1003131 () Bool)

(declare-fun tp!1003126 () Bool)

(assert (=> mapNonEmpty!19145 (= mapRes!19145 (and tp!1003131 tp!1003126))))

(declare-fun mapKey!19145 () (_ BitVec 32))

(declare-fun mapValue!19145 () List!35657)

(declare-fun mapRest!19145 () (Array (_ BitVec 32) List!35657))

(assert (=> mapNonEmpty!19145 (= (arr!6747 (_values!4509 (v!35311 (underlying!8685 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))) (store mapRest!19145 mapKey!19145 mapValue!19145))))

(declare-fun b!3173954 () Bool)

(declare-fun tp!1003128 () Bool)

(assert (=> b!3173954 (= e!1976893 (and tp!1003128 mapRes!19145))))

(declare-fun condMapEmpty!19145 () Bool)

(declare-fun mapDefault!19145 () List!35657)

(assert (=> b!3173954 (= condMapEmpty!19145 (= (arr!6747 (_values!4509 (v!35311 (underlying!8685 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35657)) mapDefault!19145)))))

(declare-fun b!3173955 () Bool)

(declare-fun e!1976895 () Bool)

(declare-fun e!1976900 () Bool)

(assert (=> b!3173955 (= e!1976895 e!1976900)))

(declare-fun res!1289733 () Bool)

(assert (=> start!297232 (=> (not res!1289733) (not e!1976890))))

(declare-fun validCacheMap!107 (MutableMap!4134) Bool)

(assert (=> start!297232 (= res!1289733 (validCacheMap!107 (cache!4280 thiss!28445)))))

(assert (=> start!297232 e!1976890))

(declare-fun inv!48269 (Cache!538) Bool)

(assert (=> start!297232 (and (inv!48269 thiss!28445) e!1976895)))

(assert (=> start!297232 e!1976892))

(declare-fun tp_is_empty!17177 () Bool)

(assert (=> start!297232 tp_is_empty!17177))

(declare-fun b!3173956 () Bool)

(declare-fun e!1976901 () Bool)

(assert (=> b!3173956 (= e!1976894 (not e!1976901))))

(declare-fun res!1289734 () Bool)

(assert (=> b!3173956 (=> res!1289734 e!1976901)))

(assert (=> b!3173956 (= res!1289734 (not ((_ is HashMap!4134) (cache!4280 thiss!28445))))))

(assert (=> b!3173956 e!1976897))

(declare-fun res!1289732 () Bool)

(assert (=> b!3173956 (=> (not res!1289732) (not e!1976897))))

(declare-fun validRegex!4510 (Regex!9807) Bool)

(assert (=> b!3173956 (= res!1289732 (validRegex!4510 (_1!20579 lt!1067244)))))

(declare-fun lt!1067246 () Regex!9807)

(assert (=> b!3173956 (= lt!1067246 (apply!7986 (cache!4280 thiss!28445) lt!1067244))))

(declare-fun lt!1067247 () tuple2!34896)

(assert (=> b!3173956 (= lt!1067247 (tuple2!34897 lt!1067244 (apply!7986 (cache!4280 thiss!28445) lt!1067244)))))

(declare-fun lambda!116134 () Int)

(declare-datatypes ((Unit!50018 0))(
  ( (Unit!50019) )
))
(declare-fun lt!1067248 () Unit!50018)

(declare-fun lemmaForallPairsThenForLookup!57 (MutableMap!4134 tuple2!34894 Int) Unit!50018)

(assert (=> b!3173956 (= lt!1067248 (lemmaForallPairsThenForLookup!57 (cache!4280 thiss!28445) lt!1067244 lambda!116134))))

(declare-fun b!3173957 () Bool)

(declare-fun res!1289735 () Bool)

(assert (=> b!3173957 (=> (not res!1289735) (not e!1976890))))

(assert (=> b!3173957 (= res!1289735 (validRegex!4510 r!4705))))

(declare-fun b!3173958 () Bool)

(assert (=> b!3173958 (= e!1976898 e!1976891)))

(declare-fun b!3173959 () Bool)

(assert (=> b!3173959 (= e!1976892 tp_is_empty!17177)))

(assert (=> b!3173960 (= e!1976900 (and e!1976899 tp!1003125))))

(declare-fun b!3173961 () Bool)

(declare-fun valid!3288 (MutableMap!4134) Bool)

(assert (=> b!3173961 (= e!1976901 (valid!3288 (cache!4280 thiss!28445)))))

(assert (= (and start!297232 res!1289733) b!3173957))

(assert (= (and b!3173957 res!1289735) b!3173952))

(assert (= (and b!3173952 res!1289736) b!3173956))

(assert (= (and b!3173956 res!1289732) b!3173947))

(assert (= (and b!3173956 (not res!1289734)) b!3173961))

(assert (= (and b!3173954 condMapEmpty!19145) mapIsEmpty!19145))

(assert (= (and b!3173954 (not condMapEmpty!19145)) mapNonEmpty!19145))

(assert (= b!3173949 b!3173954))

(assert (= b!3173958 b!3173949))

(assert (= b!3173951 b!3173958))

(assert (= (and b!3173950 ((_ is LongMap!4228) (v!35312 (underlying!8686 (cache!4280 thiss!28445))))) b!3173951))

(assert (= b!3173960 b!3173950))

(assert (= (and b!3173955 ((_ is HashMap!4134) (cache!4280 thiss!28445))) b!3173960))

(assert (= start!297232 b!3173955))

(assert (= (and start!297232 ((_ is ElementMatch!9807) r!4705)) b!3173959))

(assert (= (and start!297232 ((_ is Concat!15128) r!4705)) b!3173946))

(assert (= (and start!297232 ((_ is Star!9807) r!4705)) b!3173953))

(assert (= (and start!297232 ((_ is Union!9807) r!4705)) b!3173948))

(declare-fun m!3431437 () Bool)

(assert (=> start!297232 m!3431437))

(declare-fun m!3431439 () Bool)

(assert (=> start!297232 m!3431439))

(declare-fun m!3431441 () Bool)

(assert (=> b!3173961 m!3431441))

(declare-fun m!3431443 () Bool)

(assert (=> b!3173947 m!3431443))

(declare-fun m!3431445 () Bool)

(assert (=> b!3173947 m!3431445))

(declare-fun m!3431447 () Bool)

(assert (=> b!3173957 m!3431447))

(declare-fun m!3431449 () Bool)

(assert (=> mapNonEmpty!19145 m!3431449))

(declare-fun m!3431451 () Bool)

(assert (=> b!3173949 m!3431451))

(declare-fun m!3431453 () Bool)

(assert (=> b!3173949 m!3431453))

(declare-fun m!3431455 () Bool)

(assert (=> b!3173956 m!3431455))

(assert (=> b!3173956 m!3431443))

(declare-fun m!3431457 () Bool)

(assert (=> b!3173956 m!3431457))

(declare-fun m!3431459 () Bool)

(assert (=> b!3173952 m!3431459))

(check-sat (not b!3173961) (not b!3173948) (not b!3173949) b_and!209685 (not b_next!84097) (not b!3173947) b_and!209683 (not b!3173956) (not start!297232) (not b!3173957) (not b_next!84099) (not b!3173952) tp_is_empty!17177 (not mapNonEmpty!19145) (not b!3173954) (not b!3173946) (not b!3173953))
(check-sat b_and!209683 b_and!209685 (not b_next!84097) (not b_next!84099))
(get-model)

(declare-fun d!869403 () Bool)

(declare-fun res!1289741 () Bool)

(declare-fun e!1976904 () Bool)

(assert (=> d!869403 (=> (not res!1289741) (not e!1976904))))

(declare-fun valid!3289 (MutLongMap!4228) Bool)

(assert (=> d!869403 (= res!1289741 (valid!3289 (v!35312 (underlying!8686 (cache!4280 thiss!28445)))))))

(assert (=> d!869403 (= (valid!3288 (cache!4280 thiss!28445)) e!1976904)))

(declare-fun b!3173966 () Bool)

(declare-fun res!1289742 () Bool)

(assert (=> b!3173966 (=> (not res!1289742) (not e!1976904))))

(declare-fun lambda!116137 () Int)

(declare-datatypes ((tuple2!34898 0))(
  ( (tuple2!34899 (_1!20581 (_ BitVec 64)) (_2!20581 List!35657)) )
))
(declare-datatypes ((List!35658 0))(
  ( (Nil!35534) (Cons!35534 (h!40954 tuple2!34898) (t!234749 List!35658)) )
))
(declare-fun forall!7184 (List!35658 Int) Bool)

(declare-datatypes ((ListLongMap!755 0))(
  ( (ListLongMap!756 (toList!2101 List!35658)) )
))
(declare-fun map!7980 (MutLongMap!4228) ListLongMap!755)

(assert (=> b!3173966 (= res!1289742 (forall!7184 (toList!2101 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))) lambda!116137))))

(declare-fun b!3173967 () Bool)

(declare-fun allKeysSameHashInMap!248 (ListLongMap!755 Hashable!4144) Bool)

(assert (=> b!3173967 (= e!1976904 (allKeysSameHashInMap!248 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445)))) (hashF!6176 (cache!4280 thiss!28445))))))

(assert (= (and d!869403 res!1289741) b!3173966))

(assert (= (and b!3173966 res!1289742) b!3173967))

(declare-fun m!3431461 () Bool)

(assert (=> d!869403 m!3431461))

(declare-fun m!3431463 () Bool)

(assert (=> b!3173966 m!3431463))

(declare-fun m!3431465 () Bool)

(assert (=> b!3173966 m!3431465))

(assert (=> b!3173967 m!3431463))

(assert (=> b!3173967 m!3431463))

(declare-fun m!3431467 () Bool)

(assert (=> b!3173967 m!3431467))

(assert (=> b!3173961 d!869403))

(declare-fun bs!539650 () Bool)

(declare-fun b!3173980 () Bool)

(assert (= bs!539650 (and b!3173980 b!3173966)))

(declare-fun lambda!116144 () Int)

(assert (=> bs!539650 (= lambda!116144 lambda!116137)))

(declare-fun e!1976912 () Regex!9807)

(declare-fun lt!1067329 () (_ BitVec 64))

(declare-datatypes ((Option!6936 0))(
  ( (None!6935) (Some!6935 (v!35313 tuple2!34896)) )
))
(declare-fun get!11308 (Option!6936) tuple2!34896)

(declare-fun getPair!104 (List!35657 tuple2!34894) Option!6936)

(declare-fun apply!7987 (MutLongMap!4228 (_ BitVec 64)) List!35657)

(assert (=> b!3173980 (= e!1976912 (_2!20580 (get!11308 (getPair!104 (apply!7987 (v!35312 (underlying!8686 (cache!4280 thiss!28445))) lt!1067329) lt!1067244))))))

(declare-fun hash!817 (Hashable!4144 tuple2!34894) (_ BitVec 64))

(assert (=> b!3173980 (= lt!1067329 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244))))

(declare-fun c!533475 () Bool)

(declare-fun contains!6246 (List!35658 tuple2!34898) Bool)

(assert (=> b!3173980 (= c!533475 (not (contains!6246 (toList!2101 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))) (tuple2!34899 lt!1067329 (apply!7987 (v!35312 (underlying!8686 (cache!4280 thiss!28445))) lt!1067329)))))))

(declare-fun lt!1067315 () Unit!50018)

(declare-fun e!1976911 () Unit!50018)

(assert (=> b!3173980 (= lt!1067315 e!1976911)))

(declare-fun lt!1067324 () Unit!50018)

(declare-fun forallContained!1082 (List!35658 Int tuple2!34898) Unit!50018)

(assert (=> b!3173980 (= lt!1067324 (forallContained!1082 (toList!2101 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))) lambda!116144 (tuple2!34899 lt!1067329 (apply!7987 (v!35312 (underlying!8686 (cache!4280 thiss!28445))) lt!1067329))))))

(declare-fun lt!1067337 () ListLongMap!755)

(assert (=> b!3173980 (= lt!1067337 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445)))))))

(declare-fun lt!1067311 () Unit!50018)

(declare-fun lemmaGetPairGetSameValueAsMap!40 (ListLongMap!755 tuple2!34894 Regex!9807 Hashable!4144) Unit!50018)

(assert (=> b!3173980 (= lt!1067311 (lemmaGetPairGetSameValueAsMap!40 lt!1067337 lt!1067244 (_2!20580 (get!11308 (getPair!104 (apply!7987 (v!35312 (underlying!8686 (cache!4280 thiss!28445))) lt!1067329) lt!1067244))) (hashF!6176 (cache!4280 thiss!28445))))))

(declare-fun lt!1067322 () Unit!50018)

(declare-fun lemmaInGenMapThenLongMapContainsHash!46 (ListLongMap!755 tuple2!34894 Hashable!4144) Unit!50018)

(assert (=> b!3173980 (= lt!1067322 (lemmaInGenMapThenLongMapContainsHash!46 lt!1067337 lt!1067244 (hashF!6176 (cache!4280 thiss!28445))))))

(declare-fun contains!6247 (ListLongMap!755 (_ BitVec 64)) Bool)

(assert (=> b!3173980 (contains!6247 lt!1067337 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244))))

(declare-fun lt!1067319 () Unit!50018)

(assert (=> b!3173980 (= lt!1067319 lt!1067322)))

(declare-fun lt!1067332 () (_ BitVec 64))

(assert (=> b!3173980 (= lt!1067332 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244))))

(declare-fun lt!1067338 () List!35657)

(declare-fun apply!7988 (ListLongMap!755 (_ BitVec 64)) List!35657)

(assert (=> b!3173980 (= lt!1067338 (apply!7988 lt!1067337 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244)))))

(declare-fun lt!1067314 () Unit!50018)

(declare-fun lemmaGetValueImpliesTupleContained!41 (ListLongMap!755 (_ BitVec 64) List!35657) Unit!50018)

(assert (=> b!3173980 (= lt!1067314 (lemmaGetValueImpliesTupleContained!41 lt!1067337 lt!1067332 lt!1067338))))

(assert (=> b!3173980 (contains!6246 (toList!2101 lt!1067337) (tuple2!34899 lt!1067332 lt!1067338))))

(declare-fun lt!1067312 () Unit!50018)

(assert (=> b!3173980 (= lt!1067312 lt!1067314)))

(declare-fun lt!1067335 () Unit!50018)

(assert (=> b!3173980 (= lt!1067335 (forallContained!1082 (toList!2101 lt!1067337) lambda!116144 (tuple2!34899 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244) (apply!7988 lt!1067337 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244)))))))

(declare-fun lt!1067310 () Unit!50018)

(declare-fun lemmaInGenMapThenGetPairDefined!40 (ListLongMap!755 tuple2!34894 Hashable!4144) Unit!50018)

(assert (=> b!3173980 (= lt!1067310 (lemmaInGenMapThenGetPairDefined!40 lt!1067337 lt!1067244 (hashF!6176 (cache!4280 thiss!28445))))))

(declare-fun lt!1067339 () Unit!50018)

(assert (=> b!3173980 (= lt!1067339 (lemmaInGenMapThenLongMapContainsHash!46 lt!1067337 lt!1067244 (hashF!6176 (cache!4280 thiss!28445))))))

(declare-fun lt!1067321 () Unit!50018)

(assert (=> b!3173980 (= lt!1067321 lt!1067339)))

(declare-fun lt!1067318 () (_ BitVec 64))

(assert (=> b!3173980 (= lt!1067318 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244))))

(declare-fun lt!1067313 () List!35657)

(assert (=> b!3173980 (= lt!1067313 (apply!7988 lt!1067337 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244)))))

(declare-fun lt!1067336 () Unit!50018)

(assert (=> b!3173980 (= lt!1067336 (lemmaGetValueImpliesTupleContained!41 lt!1067337 lt!1067318 lt!1067313))))

(assert (=> b!3173980 (contains!6246 (toList!2101 lt!1067337) (tuple2!34899 lt!1067318 lt!1067313))))

(declare-fun lt!1067323 () Unit!50018)

(assert (=> b!3173980 (= lt!1067323 lt!1067336)))

(declare-fun lt!1067333 () Unit!50018)

(assert (=> b!3173980 (= lt!1067333 (forallContained!1082 (toList!2101 lt!1067337) lambda!116144 (tuple2!34899 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244) (apply!7988 lt!1067337 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244)))))))

(declare-fun isDefined!5443 (Option!6936) Bool)

(assert (=> b!3173980 (isDefined!5443 (getPair!104 (apply!7988 lt!1067337 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244)) lt!1067244))))

(declare-fun lt!1067330 () Unit!50018)

(assert (=> b!3173980 (= lt!1067330 lt!1067310)))

(declare-datatypes ((Option!6937 0))(
  ( (None!6936) (Some!6936 (v!35314 Regex!9807)) )
))
(declare-fun get!11309 (Option!6937) Regex!9807)

(declare-fun getValueByKey!193 (List!35657 tuple2!34894) Option!6937)

(declare-datatypes ((ListMap!1359 0))(
  ( (ListMap!1360 (toList!2102 List!35657)) )
))
(declare-fun extractMap!247 (List!35658) ListMap!1359)

(assert (=> b!3173980 (= (_2!20580 (get!11308 (getPair!104 (apply!7988 lt!1067337 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244)) lt!1067244))) (get!11309 (getValueByKey!193 (toList!2102 (extractMap!247 (toList!2101 lt!1067337))) lt!1067244)))))

(declare-fun lt!1067331 () Unit!50018)

(assert (=> b!3173980 (= lt!1067331 lt!1067311)))

(declare-fun d!869405 () Bool)

(declare-fun e!1976913 () Bool)

(assert (=> d!869405 e!1976913))

(declare-fun c!533474 () Bool)

(assert (=> d!869405 (= c!533474 (contains!6245 (cache!4280 thiss!28445) lt!1067244))))

(declare-fun lt!1067328 () Regex!9807)

(assert (=> d!869405 (= lt!1067328 e!1976912)))

(declare-fun c!533473 () Bool)

(assert (=> d!869405 (= c!533473 (not (contains!6245 (cache!4280 thiss!28445) lt!1067244)))))

(assert (=> d!869405 (valid!3288 (cache!4280 thiss!28445))))

(assert (=> d!869405 (= (apply!7986 (cache!4280 thiss!28445) lt!1067244) lt!1067328)))

(declare-fun b!3173981 () Bool)

(declare-fun Unit!50020 () Unit!50018)

(assert (=> b!3173981 (= e!1976911 Unit!50020)))

(declare-fun b!3173982 () Bool)

(assert (=> b!3173982 false))

(declare-fun lt!1067320 () Unit!50018)

(declare-fun lt!1067316 () Unit!50018)

(assert (=> b!3173982 (= lt!1067320 lt!1067316)))

(declare-fun lt!1067317 () List!35658)

(declare-fun lt!1067327 () List!35657)

(assert (=> b!3173982 (contains!6246 lt!1067317 (tuple2!34899 lt!1067329 lt!1067327))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!110 (List!35658 (_ BitVec 64) List!35657) Unit!50018)

(assert (=> b!3173982 (= lt!1067316 (lemmaGetValueByKeyImpliesContainsTuple!110 lt!1067317 lt!1067329 lt!1067327))))

(assert (=> b!3173982 (= lt!1067327 (apply!7987 (v!35312 (underlying!8686 (cache!4280 thiss!28445))) lt!1067329))))

(assert (=> b!3173982 (= lt!1067317 (toList!2101 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))))

(declare-fun lt!1067326 () Unit!50018)

(declare-fun lt!1067325 () Unit!50018)

(assert (=> b!3173982 (= lt!1067326 lt!1067325)))

(declare-fun lt!1067334 () List!35658)

(declare-datatypes ((Option!6938 0))(
  ( (None!6937) (Some!6937 (v!35315 List!35657)) )
))
(declare-fun isDefined!5444 (Option!6938) Bool)

(declare-fun getValueByKey!194 (List!35658 (_ BitVec 64)) Option!6938)

(assert (=> b!3173982 (isDefined!5444 (getValueByKey!194 lt!1067334 lt!1067329))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!138 (List!35658 (_ BitVec 64)) Unit!50018)

(assert (=> b!3173982 (= lt!1067325 (lemmaContainsKeyImpliesGetValueByKeyDefined!138 lt!1067334 lt!1067329))))

(assert (=> b!3173982 (= lt!1067334 (toList!2101 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))))

(declare-fun Unit!50021 () Unit!50018)

(assert (=> b!3173982 (= e!1976911 Unit!50021)))

(declare-fun b!3173983 () Bool)

(declare-fun map!7981 (MutableMap!4134) ListMap!1359)

(assert (=> b!3173983 (= e!1976913 (= lt!1067328 (get!11309 (getValueByKey!193 (toList!2102 (map!7981 (cache!4280 thiss!28445))) lt!1067244))))))

(declare-fun b!3173984 () Bool)

(declare-fun dynLambda!14373 (Int tuple2!34894) Regex!9807)

(assert (=> b!3173984 (= e!1976912 (dynLambda!14373 (defaultValue!4305 (cache!4280 thiss!28445)) lt!1067244))))

(declare-fun b!3173985 () Bool)

(assert (=> b!3173985 (= e!1976913 (= lt!1067328 (dynLambda!14373 (defaultValue!4305 (cache!4280 thiss!28445)) lt!1067244)))))

(assert (= (and d!869405 c!533473) b!3173984))

(assert (= (and d!869405 (not c!533473)) b!3173980))

(assert (= (and b!3173980 c!533475) b!3173982))

(assert (= (and b!3173980 (not c!533475)) b!3173981))

(assert (= (and d!869405 c!533474) b!3173983))

(assert (= (and d!869405 (not c!533474)) b!3173985))

(declare-fun b_lambda!86499 () Bool)

(assert (=> (not b_lambda!86499) (not b!3173984)))

(declare-fun t!234748 () Bool)

(declare-fun tb!155113 () Bool)

(assert (=> (and b!3173960 (= (defaultValue!4305 (cache!4280 thiss!28445)) (defaultValue!4305 (cache!4280 thiss!28445))) t!234748) tb!155113))

(assert (=> b!3173984 t!234748))

(declare-fun result!197010 () Bool)

(declare-fun b_and!209687 () Bool)

(assert (= b_and!209685 (and (=> t!234748 result!197010) b_and!209687)))

(declare-fun b_lambda!86501 () Bool)

(assert (=> (not b_lambda!86501) (not b!3173985)))

(assert (=> b!3173985 t!234748))

(declare-fun b_and!209689 () Bool)

(assert (= b_and!209687 (and (=> t!234748 result!197010) b_and!209689)))

(declare-fun m!3431469 () Bool)

(assert (=> b!3173980 m!3431469))

(declare-fun m!3431471 () Bool)

(assert (=> b!3173980 m!3431471))

(declare-fun m!3431473 () Bool)

(assert (=> b!3173980 m!3431473))

(assert (=> b!3173980 m!3431469))

(declare-fun m!3431475 () Bool)

(assert (=> b!3173980 m!3431475))

(declare-fun m!3431477 () Bool)

(assert (=> b!3173980 m!3431477))

(assert (=> b!3173980 m!3431475))

(declare-fun m!3431479 () Bool)

(assert (=> b!3173980 m!3431479))

(declare-fun m!3431481 () Bool)

(assert (=> b!3173980 m!3431481))

(declare-fun m!3431483 () Bool)

(assert (=> b!3173980 m!3431483))

(declare-fun m!3431485 () Bool)

(assert (=> b!3173980 m!3431485))

(assert (=> b!3173980 m!3431473))

(declare-fun m!3431487 () Bool)

(assert (=> b!3173980 m!3431487))

(declare-fun m!3431489 () Bool)

(assert (=> b!3173980 m!3431489))

(declare-fun m!3431491 () Bool)

(assert (=> b!3173980 m!3431491))

(assert (=> b!3173980 m!3431469))

(declare-fun m!3431493 () Bool)

(assert (=> b!3173980 m!3431493))

(declare-fun m!3431495 () Bool)

(assert (=> b!3173980 m!3431495))

(assert (=> b!3173980 m!3431477))

(declare-fun m!3431497 () Bool)

(assert (=> b!3173980 m!3431497))

(assert (=> b!3173980 m!3431485))

(declare-fun m!3431499 () Bool)

(assert (=> b!3173980 m!3431499))

(declare-fun m!3431501 () Bool)

(assert (=> b!3173980 m!3431501))

(declare-fun m!3431503 () Bool)

(assert (=> b!3173980 m!3431503))

(declare-fun m!3431505 () Bool)

(assert (=> b!3173980 m!3431505))

(assert (=> b!3173980 m!3431485))

(declare-fun m!3431507 () Bool)

(assert (=> b!3173980 m!3431507))

(declare-fun m!3431509 () Bool)

(assert (=> b!3173980 m!3431509))

(assert (=> b!3173980 m!3431463))

(assert (=> b!3173980 m!3431487))

(declare-fun m!3431511 () Bool)

(assert (=> b!3173980 m!3431511))

(assert (=> b!3173980 m!3431479))

(declare-fun m!3431513 () Bool)

(assert (=> b!3173982 m!3431513))

(declare-fun m!3431515 () Bool)

(assert (=> b!3173982 m!3431515))

(declare-fun m!3431517 () Bool)

(assert (=> b!3173982 m!3431517))

(declare-fun m!3431519 () Bool)

(assert (=> b!3173982 m!3431519))

(assert (=> b!3173982 m!3431475))

(assert (=> b!3173982 m!3431517))

(assert (=> b!3173982 m!3431463))

(declare-fun m!3431521 () Bool)

(assert (=> b!3173982 m!3431521))

(declare-fun m!3431523 () Bool)

(assert (=> b!3173983 m!3431523))

(declare-fun m!3431525 () Bool)

(assert (=> b!3173983 m!3431525))

(assert (=> b!3173983 m!3431525))

(declare-fun m!3431527 () Bool)

(assert (=> b!3173983 m!3431527))

(declare-fun m!3431529 () Bool)

(assert (=> b!3173985 m!3431529))

(assert (=> d!869405 m!3431459))

(assert (=> d!869405 m!3431441))

(assert (=> b!3173984 m!3431529))

(assert (=> b!3173947 d!869405))

(declare-fun d!869407 () Bool)

(declare-fun lt!1067342 () Regex!9807)

(assert (=> d!869407 (validRegex!4510 lt!1067342)))

(declare-fun e!1976928 () Regex!9807)

(assert (=> d!869407 (= lt!1067342 e!1976928)))

(declare-fun c!533486 () Bool)

(assert (=> d!869407 (= c!533486 (or ((_ is EmptyExpr!9807) (_1!20579 lt!1067244)) ((_ is EmptyLang!9807) (_1!20579 lt!1067244))))))

(assert (=> d!869407 (validRegex!4510 (_1!20579 lt!1067244))))

(assert (=> d!869407 (= (derivativeStep!2922 (_1!20579 lt!1067244) (_2!20579 lt!1067244)) lt!1067342)))

(declare-fun b!3174006 () Bool)

(declare-fun e!1976927 () Regex!9807)

(declare-fun call!230686 () Regex!9807)

(declare-fun call!230687 () Regex!9807)

(assert (=> b!3174006 (= e!1976927 (Union!9807 call!230686 call!230687))))

(declare-fun b!3174007 () Bool)

(declare-fun e!1976925 () Regex!9807)

(assert (=> b!3174007 (= e!1976928 e!1976925)))

(declare-fun c!533487 () Bool)

(assert (=> b!3174007 (= c!533487 ((_ is ElementMatch!9807) (_1!20579 lt!1067244)))))

(declare-fun b!3174008 () Bool)

(declare-fun e!1976926 () Regex!9807)

(assert (=> b!3174008 (= e!1976927 e!1976926)))

(declare-fun c!533488 () Bool)

(assert (=> b!3174008 (= c!533488 ((_ is Star!9807) (_1!20579 lt!1067244)))))

(declare-fun c!533489 () Bool)

(declare-fun c!533490 () Bool)

(declare-fun bm!230681 () Bool)

(assert (=> bm!230681 (= call!230686 (derivativeStep!2922 (ite c!533489 (regOne!20127 (_1!20579 lt!1067244)) (ite c!533490 (regTwo!20126 (_1!20579 lt!1067244)) (regOne!20126 (_1!20579 lt!1067244)))) (_2!20579 lt!1067244)))))

(declare-fun b!3174009 () Bool)

(assert (=> b!3174009 (= c!533489 ((_ is Union!9807) (_1!20579 lt!1067244)))))

(assert (=> b!3174009 (= e!1976925 e!1976927)))

(declare-fun call!230688 () Regex!9807)

(declare-fun b!3174010 () Bool)

(declare-fun e!1976924 () Regex!9807)

(declare-fun call!230689 () Regex!9807)

(assert (=> b!3174010 (= e!1976924 (Union!9807 (Concat!15128 call!230688 (regTwo!20126 (_1!20579 lt!1067244))) call!230689))))

(declare-fun b!3174011 () Bool)

(assert (=> b!3174011 (= e!1976928 EmptyLang!9807)))

(declare-fun b!3174012 () Bool)

(assert (=> b!3174012 (= e!1976925 (ite (= (_2!20579 lt!1067244) (c!533466 (_1!20579 lt!1067244))) EmptyExpr!9807 EmptyLang!9807))))

(declare-fun b!3174013 () Bool)

(assert (=> b!3174013 (= e!1976926 (Concat!15128 call!230688 (_1!20579 lt!1067244)))))

(declare-fun bm!230682 () Bool)

(assert (=> bm!230682 (= call!230687 (derivativeStep!2922 (ite c!533489 (regTwo!20127 (_1!20579 lt!1067244)) (ite c!533488 (reg!10136 (_1!20579 lt!1067244)) (regOne!20126 (_1!20579 lt!1067244)))) (_2!20579 lt!1067244)))))

(declare-fun b!3174014 () Bool)

(declare-fun nullable!3369 (Regex!9807) Bool)

(assert (=> b!3174014 (= c!533490 (nullable!3369 (regOne!20126 (_1!20579 lt!1067244))))))

(assert (=> b!3174014 (= e!1976926 e!1976924)))

(declare-fun bm!230683 () Bool)

(assert (=> bm!230683 (= call!230688 call!230687)))

(declare-fun bm!230684 () Bool)

(assert (=> bm!230684 (= call!230689 call!230686)))

(declare-fun b!3174015 () Bool)

(assert (=> b!3174015 (= e!1976924 (Union!9807 (Concat!15128 call!230689 (regTwo!20126 (_1!20579 lt!1067244))) EmptyLang!9807))))

(assert (= (and d!869407 c!533486) b!3174011))

(assert (= (and d!869407 (not c!533486)) b!3174007))

(assert (= (and b!3174007 c!533487) b!3174012))

(assert (= (and b!3174007 (not c!533487)) b!3174009))

(assert (= (and b!3174009 c!533489) b!3174006))

(assert (= (and b!3174009 (not c!533489)) b!3174008))

(assert (= (and b!3174008 c!533488) b!3174013))

(assert (= (and b!3174008 (not c!533488)) b!3174014))

(assert (= (and b!3174014 c!533490) b!3174010))

(assert (= (and b!3174014 (not c!533490)) b!3174015))

(assert (= (or b!3174010 b!3174015) bm!230684))

(assert (= (or b!3174013 b!3174010) bm!230683))

(assert (= (or b!3174006 bm!230683) bm!230682))

(assert (= (or b!3174006 bm!230684) bm!230681))

(declare-fun m!3431531 () Bool)

(assert (=> d!869407 m!3431531))

(assert (=> d!869407 m!3431455))

(declare-fun m!3431533 () Bool)

(assert (=> bm!230681 m!3431533))

(declare-fun m!3431535 () Bool)

(assert (=> bm!230682 m!3431535))

(declare-fun m!3431537 () Bool)

(assert (=> b!3174014 m!3431537))

(assert (=> b!3173947 d!869407))

(declare-fun bs!539651 () Bool)

(declare-fun b!3174040 () Bool)

(assert (= bs!539651 (and b!3174040 b!3173966)))

(declare-fun lambda!116147 () Int)

(assert (=> bs!539651 (= lambda!116147 lambda!116137)))

(declare-fun bs!539652 () Bool)

(assert (= bs!539652 (and b!3174040 b!3173980)))

(assert (=> bs!539652 (= lambda!116147 lambda!116144)))

(declare-fun b!3174038 () Bool)

(declare-fun e!1976944 () Bool)

(declare-fun lt!1067393 () (_ BitVec 64))

(assert (=> b!3174038 (= e!1976944 (isDefined!5443 (getPair!104 (apply!7987 (v!35312 (underlying!8686 (cache!4280 thiss!28445))) lt!1067393) lt!1067244)))))

(declare-fun bm!230697 () Bool)

(declare-fun call!230703 () Bool)

(declare-fun call!230705 () Option!6936)

(assert (=> bm!230697 (= call!230703 (isDefined!5443 call!230705))))

(declare-fun b!3174039 () Bool)

(declare-fun e!1976945 () Bool)

(assert (=> b!3174039 (= e!1976945 call!230703)))

(declare-fun e!1976948 () Unit!50018)

(assert (=> b!3174040 (= e!1976948 (forallContained!1082 (toList!2101 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))) lambda!116147 (tuple2!34899 lt!1067393 (apply!7987 (v!35312 (underlying!8686 (cache!4280 thiss!28445))) lt!1067393))))))

(declare-fun c!533502 () Bool)

(assert (=> b!3174040 (= c!533502 (not (contains!6246 (toList!2101 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))) (tuple2!34899 lt!1067393 (apply!7987 (v!35312 (underlying!8686 (cache!4280 thiss!28445))) lt!1067393)))))))

(declare-fun lt!1067400 () Unit!50018)

(declare-fun e!1976947 () Unit!50018)

(assert (=> b!3174040 (= lt!1067400 e!1976947)))

(declare-fun b!3174041 () Bool)

(declare-fun e!1976943 () Bool)

(assert (=> b!3174041 (= e!1976943 call!230703)))

(declare-fun bm!230698 () Bool)

(declare-fun call!230702 () ListLongMap!755)

(assert (=> bm!230698 (= call!230702 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445)))))))

(declare-fun b!3174042 () Bool)

(declare-fun e!1976949 () Unit!50018)

(declare-fun e!1976946 () Unit!50018)

(assert (=> b!3174042 (= e!1976949 e!1976946)))

(declare-fun res!1289751 () Bool)

(declare-fun call!230707 () Bool)

(assert (=> b!3174042 (= res!1289751 call!230707)))

(assert (=> b!3174042 (=> (not res!1289751) (not e!1976945))))

(declare-fun c!533500 () Bool)

(assert (=> b!3174042 (= c!533500 e!1976945)))

(declare-fun b!3174043 () Bool)

(assert (=> b!3174043 false))

(declare-fun lt!1067390 () Unit!50018)

(declare-fun lt!1067385 () Unit!50018)

(assert (=> b!3174043 (= lt!1067390 lt!1067385)))

(declare-fun lt!1067399 () ListLongMap!755)

(declare-fun contains!6248 (ListMap!1359 tuple2!34894) Bool)

(assert (=> b!3174043 (contains!6248 (extractMap!247 (toList!2101 lt!1067399)) lt!1067244)))

(declare-fun lemmaInLongMapThenInGenericMap!104 (ListLongMap!755 tuple2!34894 Hashable!4144) Unit!50018)

(assert (=> b!3174043 (= lt!1067385 (lemmaInLongMapThenInGenericMap!104 lt!1067399 lt!1067244 (hashF!6176 (cache!4280 thiss!28445))))))

(assert (=> b!3174043 (= lt!1067399 call!230702)))

(declare-fun Unit!50022 () Unit!50018)

(assert (=> b!3174043 (= e!1976946 Unit!50022)))

(declare-fun bm!230699 () Bool)

(declare-fun call!230704 () List!35657)

(assert (=> bm!230699 (= call!230705 (getPair!104 call!230704 lt!1067244))))

(declare-fun bm!230700 () Bool)

(declare-fun call!230706 () (_ BitVec 64))

(assert (=> bm!230700 (= call!230706 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244))))

(declare-fun c!533499 () Bool)

(declare-fun lt!1067401 () ListLongMap!755)

(declare-fun bm!230701 () Bool)

(assert (=> bm!230701 (= call!230707 (contains!6247 (ite c!533499 lt!1067401 call!230702) call!230706))))

(declare-fun b!3174045 () Bool)

(declare-fun Unit!50023 () Unit!50018)

(assert (=> b!3174045 (= e!1976947 Unit!50023)))

(declare-fun bm!230702 () Bool)

(assert (=> bm!230702 (= call!230704 (apply!7988 (ite c!533499 lt!1067401 call!230702) call!230706))))

(declare-fun d!869409 () Bool)

(declare-fun lt!1067397 () Bool)

(assert (=> d!869409 (= lt!1067397 (contains!6248 (map!7981 (cache!4280 thiss!28445)) lt!1067244))))

(assert (=> d!869409 (= lt!1067397 e!1976944)))

(declare-fun res!1289749 () Bool)

(assert (=> d!869409 (=> (not res!1289749) (not e!1976944))))

(declare-fun contains!6249 (MutLongMap!4228 (_ BitVec 64)) Bool)

(assert (=> d!869409 (= res!1289749 (contains!6249 (v!35312 (underlying!8686 (cache!4280 thiss!28445))) lt!1067393))))

(declare-fun lt!1067384 () Unit!50018)

(assert (=> d!869409 (= lt!1067384 e!1976949)))

(assert (=> d!869409 (= c!533499 (contains!6248 (extractMap!247 (toList!2101 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445)))))) lt!1067244))))

(declare-fun lt!1067391 () Unit!50018)

(assert (=> d!869409 (= lt!1067391 e!1976948)))

(declare-fun c!533501 () Bool)

(assert (=> d!869409 (= c!533501 (contains!6249 (v!35312 (underlying!8686 (cache!4280 thiss!28445))) lt!1067393))))

(assert (=> d!869409 (= lt!1067393 (hash!817 (hashF!6176 (cache!4280 thiss!28445)) lt!1067244))))

(assert (=> d!869409 (valid!3288 (cache!4280 thiss!28445))))

(assert (=> d!869409 (= (contains!6245 (cache!4280 thiss!28445) lt!1067244) lt!1067397)))

(declare-fun b!3174044 () Bool)

(assert (=> b!3174044 false))

(declare-fun lt!1067402 () Unit!50018)

(declare-fun lt!1067383 () Unit!50018)

(assert (=> b!3174044 (= lt!1067402 lt!1067383)))

(declare-fun lt!1067392 () List!35658)

(declare-fun lt!1067394 () List!35657)

(assert (=> b!3174044 (contains!6246 lt!1067392 (tuple2!34899 lt!1067393 lt!1067394))))

(assert (=> b!3174044 (= lt!1067383 (lemmaGetValueByKeyImpliesContainsTuple!110 lt!1067392 lt!1067393 lt!1067394))))

(assert (=> b!3174044 (= lt!1067394 (apply!7987 (v!35312 (underlying!8686 (cache!4280 thiss!28445))) lt!1067393))))

(assert (=> b!3174044 (= lt!1067392 (toList!2101 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))))

(declare-fun lt!1067396 () Unit!50018)

(declare-fun lt!1067387 () Unit!50018)

(assert (=> b!3174044 (= lt!1067396 lt!1067387)))

(declare-fun lt!1067388 () List!35658)

(assert (=> b!3174044 (isDefined!5444 (getValueByKey!194 lt!1067388 lt!1067393))))

(assert (=> b!3174044 (= lt!1067387 (lemmaContainsKeyImpliesGetValueByKeyDefined!138 lt!1067388 lt!1067393))))

(assert (=> b!3174044 (= lt!1067388 (toList!2101 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))))

(declare-fun lt!1067389 () Unit!50018)

(declare-fun lt!1067398 () Unit!50018)

(assert (=> b!3174044 (= lt!1067389 lt!1067398)))

(declare-fun lt!1067395 () List!35658)

(declare-fun containsKey!206 (List!35658 (_ BitVec 64)) Bool)

(assert (=> b!3174044 (containsKey!206 lt!1067395 lt!1067393)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!105 (List!35658 (_ BitVec 64)) Unit!50018)

(assert (=> b!3174044 (= lt!1067398 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!105 lt!1067395 lt!1067393))))

(assert (=> b!3174044 (= lt!1067395 (toList!2101 (map!7980 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))))

(declare-fun Unit!50024 () Unit!50018)

(assert (=> b!3174044 (= e!1976947 Unit!50024)))

(declare-fun b!3174046 () Bool)

(declare-fun Unit!50025 () Unit!50018)

(assert (=> b!3174046 (= e!1976946 Unit!50025)))

(declare-fun b!3174047 () Bool)

(declare-fun lt!1067386 () Unit!50018)

(assert (=> b!3174047 (= e!1976949 lt!1067386)))

(assert (=> b!3174047 (= lt!1067401 call!230702)))

(declare-fun lemmaInGenericMapThenInLongMap!104 (ListLongMap!755 tuple2!34894 Hashable!4144) Unit!50018)

(assert (=> b!3174047 (= lt!1067386 (lemmaInGenericMapThenInLongMap!104 lt!1067401 lt!1067244 (hashF!6176 (cache!4280 thiss!28445))))))

(declare-fun res!1289750 () Bool)

(assert (=> b!3174047 (= res!1289750 call!230707)))

(assert (=> b!3174047 (=> (not res!1289750) (not e!1976943))))

(assert (=> b!3174047 e!1976943))

(declare-fun b!3174048 () Bool)

(declare-fun Unit!50026 () Unit!50018)

(assert (=> b!3174048 (= e!1976948 Unit!50026)))

(assert (= (and d!869409 c!533501) b!3174040))

(assert (= (and d!869409 (not c!533501)) b!3174048))

(assert (= (and b!3174040 c!533502) b!3174044))

(assert (= (and b!3174040 (not c!533502)) b!3174045))

(assert (= (and d!869409 c!533499) b!3174047))

(assert (= (and d!869409 (not c!533499)) b!3174042))

(assert (= (and b!3174047 res!1289750) b!3174041))

(assert (= (and b!3174042 res!1289751) b!3174039))

(assert (= (and b!3174042 c!533500) b!3174043))

(assert (= (and b!3174042 (not c!533500)) b!3174046))

(assert (= (or b!3174047 b!3174042 b!3174039 b!3174043) bm!230698))

(assert (= (or b!3174047 b!3174041 b!3174042 b!3174039) bm!230700))

(assert (= (or b!3174041 b!3174039) bm!230702))

(assert (= (or b!3174047 b!3174042) bm!230701))

(assert (= (or b!3174041 b!3174039) bm!230699))

(assert (= (or b!3174041 b!3174039) bm!230697))

(assert (= (and d!869409 res!1289749) b!3174038))

(declare-fun m!3431539 () Bool)

(assert (=> b!3174043 m!3431539))

(assert (=> b!3174043 m!3431539))

(declare-fun m!3431541 () Bool)

(assert (=> b!3174043 m!3431541))

(declare-fun m!3431543 () Bool)

(assert (=> b!3174043 m!3431543))

(declare-fun m!3431545 () Bool)

(assert (=> b!3174047 m!3431545))

(declare-fun m!3431547 () Bool)

(assert (=> bm!230702 m!3431547))

(assert (=> bm!230700 m!3431485))

(declare-fun m!3431549 () Bool)

(assert (=> b!3174044 m!3431549))

(declare-fun m!3431551 () Bool)

(assert (=> b!3174044 m!3431551))

(declare-fun m!3431553 () Bool)

(assert (=> b!3174044 m!3431553))

(assert (=> b!3174044 m!3431463))

(declare-fun m!3431555 () Bool)

(assert (=> b!3174044 m!3431555))

(declare-fun m!3431557 () Bool)

(assert (=> b!3174044 m!3431557))

(assert (=> b!3174044 m!3431557))

(declare-fun m!3431559 () Bool)

(assert (=> b!3174044 m!3431559))

(declare-fun m!3431561 () Bool)

(assert (=> b!3174044 m!3431561))

(declare-fun m!3431563 () Bool)

(assert (=> b!3174044 m!3431563))

(assert (=> b!3174040 m!3431463))

(assert (=> b!3174040 m!3431551))

(declare-fun m!3431565 () Bool)

(assert (=> b!3174040 m!3431565))

(declare-fun m!3431567 () Bool)

(assert (=> b!3174040 m!3431567))

(assert (=> b!3174038 m!3431551))

(assert (=> b!3174038 m!3431551))

(declare-fun m!3431569 () Bool)

(assert (=> b!3174038 m!3431569))

(assert (=> b!3174038 m!3431569))

(declare-fun m!3431571 () Bool)

(assert (=> b!3174038 m!3431571))

(declare-fun m!3431573 () Bool)

(assert (=> bm!230699 m!3431573))

(declare-fun m!3431575 () Bool)

(assert (=> d!869409 m!3431575))

(assert (=> d!869409 m!3431523))

(declare-fun m!3431577 () Bool)

(assert (=> d!869409 m!3431577))

(assert (=> d!869409 m!3431485))

(assert (=> d!869409 m!3431575))

(declare-fun m!3431579 () Bool)

(assert (=> d!869409 m!3431579))

(assert (=> d!869409 m!3431441))

(assert (=> d!869409 m!3431463))

(assert (=> d!869409 m!3431523))

(declare-fun m!3431581 () Bool)

(assert (=> d!869409 m!3431581))

(declare-fun m!3431583 () Bool)

(assert (=> bm!230697 m!3431583))

(assert (=> bm!230698 m!3431463))

(declare-fun m!3431585 () Bool)

(assert (=> bm!230701 m!3431585))

(assert (=> b!3173952 d!869409))

(declare-fun b!3174067 () Bool)

(declare-fun e!1976965 () Bool)

(declare-fun call!230715 () Bool)

(assert (=> b!3174067 (= e!1976965 call!230715)))

(declare-fun b!3174068 () Bool)

(declare-fun e!1976966 () Bool)

(declare-fun e!1976964 () Bool)

(assert (=> b!3174068 (= e!1976966 e!1976964)))

(declare-fun res!1289763 () Bool)

(assert (=> b!3174068 (=> (not res!1289763) (not e!1976964))))

(declare-fun call!230716 () Bool)

(assert (=> b!3174068 (= res!1289763 call!230716)))

(declare-fun d!869411 () Bool)

(declare-fun res!1289762 () Bool)

(declare-fun e!1976969 () Bool)

(assert (=> d!869411 (=> res!1289762 e!1976969)))

(assert (=> d!869411 (= res!1289762 ((_ is ElementMatch!9807) (_1!20579 lt!1067244)))))

(assert (=> d!869411 (= (validRegex!4510 (_1!20579 lt!1067244)) e!1976969)))

(declare-fun b!3174069 () Bool)

(declare-fun res!1289765 () Bool)

(assert (=> b!3174069 (=> (not res!1289765) (not e!1976965))))

(assert (=> b!3174069 (= res!1289765 call!230716)))

(declare-fun e!1976970 () Bool)

(assert (=> b!3174069 (= e!1976970 e!1976965)))

(declare-fun b!3174070 () Bool)

(declare-fun res!1289764 () Bool)

(assert (=> b!3174070 (=> res!1289764 e!1976966)))

(assert (=> b!3174070 (= res!1289764 (not ((_ is Concat!15128) (_1!20579 lt!1067244))))))

(assert (=> b!3174070 (= e!1976970 e!1976966)))

(declare-fun bm!230709 () Bool)

(declare-fun c!533507 () Bool)

(assert (=> bm!230709 (= call!230715 (validRegex!4510 (ite c!533507 (regTwo!20127 (_1!20579 lt!1067244)) (regTwo!20126 (_1!20579 lt!1067244)))))))

(declare-fun bm!230710 () Bool)

(declare-fun call!230714 () Bool)

(assert (=> bm!230710 (= call!230716 call!230714)))

(declare-fun c!533508 () Bool)

(declare-fun bm!230711 () Bool)

(assert (=> bm!230711 (= call!230714 (validRegex!4510 (ite c!533508 (reg!10136 (_1!20579 lt!1067244)) (ite c!533507 (regOne!20127 (_1!20579 lt!1067244)) (regOne!20126 (_1!20579 lt!1067244))))))))

(declare-fun b!3174071 () Bool)

(declare-fun e!1976968 () Bool)

(assert (=> b!3174071 (= e!1976969 e!1976968)))

(assert (=> b!3174071 (= c!533508 ((_ is Star!9807) (_1!20579 lt!1067244)))))

(declare-fun b!3174072 () Bool)

(assert (=> b!3174072 (= e!1976964 call!230715)))

(declare-fun b!3174073 () Bool)

(declare-fun e!1976967 () Bool)

(assert (=> b!3174073 (= e!1976968 e!1976967)))

(declare-fun res!1289766 () Bool)

(assert (=> b!3174073 (= res!1289766 (not (nullable!3369 (reg!10136 (_1!20579 lt!1067244)))))))

(assert (=> b!3174073 (=> (not res!1289766) (not e!1976967))))

(declare-fun b!3174074 () Bool)

(assert (=> b!3174074 (= e!1976967 call!230714)))

(declare-fun b!3174075 () Bool)

(assert (=> b!3174075 (= e!1976968 e!1976970)))

(assert (=> b!3174075 (= c!533507 ((_ is Union!9807) (_1!20579 lt!1067244)))))

(assert (= (and d!869411 (not res!1289762)) b!3174071))

(assert (= (and b!3174071 c!533508) b!3174073))

(assert (= (and b!3174071 (not c!533508)) b!3174075))

(assert (= (and b!3174073 res!1289766) b!3174074))

(assert (= (and b!3174075 c!533507) b!3174069))

(assert (= (and b!3174075 (not c!533507)) b!3174070))

(assert (= (and b!3174069 res!1289765) b!3174067))

(assert (= (and b!3174070 (not res!1289764)) b!3174068))

(assert (= (and b!3174068 res!1289763) b!3174072))

(assert (= (or b!3174067 b!3174072) bm!230709))

(assert (= (or b!3174069 b!3174068) bm!230710))

(assert (= (or b!3174074 bm!230710) bm!230711))

(declare-fun m!3431587 () Bool)

(assert (=> bm!230709 m!3431587))

(declare-fun m!3431589 () Bool)

(assert (=> bm!230711 m!3431589))

(declare-fun m!3431591 () Bool)

(assert (=> b!3174073 m!3431591))

(assert (=> b!3173956 d!869411))

(assert (=> b!3173956 d!869405))

(declare-fun d!869413 () Bool)

(declare-fun dynLambda!14374 (Int tuple2!34896) Bool)

(assert (=> d!869413 (dynLambda!14374 lambda!116134 (tuple2!34897 lt!1067244 (apply!7986 (cache!4280 thiss!28445) lt!1067244)))))

(declare-fun lt!1067405 () Unit!50018)

(declare-fun choose!18521 (MutableMap!4134 tuple2!34894 Int) Unit!50018)

(assert (=> d!869413 (= lt!1067405 (choose!18521 (cache!4280 thiss!28445) lt!1067244 lambda!116134))))

(assert (=> d!869413 (valid!3288 (cache!4280 thiss!28445))))

(assert (=> d!869413 (= (lemmaForallPairsThenForLookup!57 (cache!4280 thiss!28445) lt!1067244 lambda!116134) lt!1067405)))

(declare-fun b_lambda!86503 () Bool)

(assert (=> (not b_lambda!86503) (not d!869413)))

(declare-fun bs!539653 () Bool)

(assert (= bs!539653 d!869413))

(assert (=> bs!539653 m!3431443))

(declare-fun m!3431593 () Bool)

(assert (=> bs!539653 m!3431593))

(declare-fun m!3431595 () Bool)

(assert (=> bs!539653 m!3431595))

(assert (=> bs!539653 m!3431441))

(assert (=> b!3173956 d!869413))

(declare-fun b!3174076 () Bool)

(declare-fun e!1976972 () Bool)

(declare-fun call!230718 () Bool)

(assert (=> b!3174076 (= e!1976972 call!230718)))

(declare-fun b!3174077 () Bool)

(declare-fun e!1976973 () Bool)

(declare-fun e!1976971 () Bool)

(assert (=> b!3174077 (= e!1976973 e!1976971)))

(declare-fun res!1289768 () Bool)

(assert (=> b!3174077 (=> (not res!1289768) (not e!1976971))))

(declare-fun call!230719 () Bool)

(assert (=> b!3174077 (= res!1289768 call!230719)))

(declare-fun d!869415 () Bool)

(declare-fun res!1289767 () Bool)

(declare-fun e!1976976 () Bool)

(assert (=> d!869415 (=> res!1289767 e!1976976)))

(assert (=> d!869415 (= res!1289767 ((_ is ElementMatch!9807) r!4705))))

(assert (=> d!869415 (= (validRegex!4510 r!4705) e!1976976)))

(declare-fun b!3174078 () Bool)

(declare-fun res!1289770 () Bool)

(assert (=> b!3174078 (=> (not res!1289770) (not e!1976972))))

(assert (=> b!3174078 (= res!1289770 call!230719)))

(declare-fun e!1976977 () Bool)

(assert (=> b!3174078 (= e!1976977 e!1976972)))

(declare-fun b!3174079 () Bool)

(declare-fun res!1289769 () Bool)

(assert (=> b!3174079 (=> res!1289769 e!1976973)))

(assert (=> b!3174079 (= res!1289769 (not ((_ is Concat!15128) r!4705)))))

(assert (=> b!3174079 (= e!1976977 e!1976973)))

(declare-fun bm!230712 () Bool)

(declare-fun c!533509 () Bool)

(assert (=> bm!230712 (= call!230718 (validRegex!4510 (ite c!533509 (regTwo!20127 r!4705) (regTwo!20126 r!4705))))))

(declare-fun bm!230713 () Bool)

(declare-fun call!230717 () Bool)

(assert (=> bm!230713 (= call!230719 call!230717)))

(declare-fun bm!230714 () Bool)

(declare-fun c!533510 () Bool)

(assert (=> bm!230714 (= call!230717 (validRegex!4510 (ite c!533510 (reg!10136 r!4705) (ite c!533509 (regOne!20127 r!4705) (regOne!20126 r!4705)))))))

(declare-fun b!3174080 () Bool)

(declare-fun e!1976975 () Bool)

(assert (=> b!3174080 (= e!1976976 e!1976975)))

(assert (=> b!3174080 (= c!533510 ((_ is Star!9807) r!4705))))

(declare-fun b!3174081 () Bool)

(assert (=> b!3174081 (= e!1976971 call!230718)))

(declare-fun b!3174082 () Bool)

(declare-fun e!1976974 () Bool)

(assert (=> b!3174082 (= e!1976975 e!1976974)))

(declare-fun res!1289771 () Bool)

(assert (=> b!3174082 (= res!1289771 (not (nullable!3369 (reg!10136 r!4705))))))

(assert (=> b!3174082 (=> (not res!1289771) (not e!1976974))))

(declare-fun b!3174083 () Bool)

(assert (=> b!3174083 (= e!1976974 call!230717)))

(declare-fun b!3174084 () Bool)

(assert (=> b!3174084 (= e!1976975 e!1976977)))

(assert (=> b!3174084 (= c!533509 ((_ is Union!9807) r!4705))))

(assert (= (and d!869415 (not res!1289767)) b!3174080))

(assert (= (and b!3174080 c!533510) b!3174082))

(assert (= (and b!3174080 (not c!533510)) b!3174084))

(assert (= (and b!3174082 res!1289771) b!3174083))

(assert (= (and b!3174084 c!533509) b!3174078))

(assert (= (and b!3174084 (not c!533509)) b!3174079))

(assert (= (and b!3174078 res!1289770) b!3174076))

(assert (= (and b!3174079 (not res!1289769)) b!3174077))

(assert (= (and b!3174077 res!1289768) b!3174081))

(assert (= (or b!3174076 b!3174081) bm!230712))

(assert (= (or b!3174078 b!3174077) bm!230713))

(assert (= (or b!3174083 bm!230713) bm!230714))

(declare-fun m!3431597 () Bool)

(assert (=> bm!230712 m!3431597))

(declare-fun m!3431599 () Bool)

(assert (=> bm!230714 m!3431599))

(declare-fun m!3431601 () Bool)

(assert (=> b!3174082 m!3431601))

(assert (=> b!3173957 d!869415))

(declare-fun bs!539654 () Bool)

(declare-fun b!3174092 () Bool)

(assert (= bs!539654 (and b!3174092 b!3173956)))

(declare-fun lambda!116150 () Int)

(assert (=> bs!539654 (= lambda!116150 lambda!116134)))

(declare-fun d!869417 () Bool)

(declare-fun res!1289778 () Bool)

(declare-fun e!1976982 () Bool)

(assert (=> d!869417 (=> (not res!1289778) (not e!1976982))))

(assert (=> d!869417 (= res!1289778 (valid!3288 (cache!4280 thiss!28445)))))

(assert (=> d!869417 (= (validCacheMap!107 (cache!4280 thiss!28445)) e!1976982)))

(declare-fun b!3174091 () Bool)

(declare-fun res!1289779 () Bool)

(assert (=> b!3174091 (=> (not res!1289779) (not e!1976982))))

(declare-fun invariantList!501 (List!35657) Bool)

(assert (=> b!3174091 (= res!1289779 (invariantList!501 (toList!2102 (map!7981 (cache!4280 thiss!28445)))))))

(declare-fun forall!7185 (List!35657 Int) Bool)

(assert (=> b!3174092 (= e!1976982 (forall!7185 (toList!2102 (map!7981 (cache!4280 thiss!28445))) lambda!116150))))

(assert (= (and d!869417 res!1289778) b!3174091))

(assert (= (and b!3174091 res!1289779) b!3174092))

(assert (=> d!869417 m!3431441))

(assert (=> b!3174091 m!3431523))

(declare-fun m!3431604 () Bool)

(assert (=> b!3174091 m!3431604))

(assert (=> b!3174092 m!3431523))

(declare-fun m!3431606 () Bool)

(assert (=> b!3174092 m!3431606))

(assert (=> start!297232 d!869417))

(declare-fun d!869419 () Bool)

(declare-fun res!1289782 () Bool)

(declare-fun e!1976985 () Bool)

(assert (=> d!869419 (=> (not res!1289782) (not e!1976985))))

(assert (=> d!869419 (= res!1289782 ((_ is HashMap!4134) (cache!4280 thiss!28445)))))

(assert (=> d!869419 (= (inv!48269 thiss!28445) e!1976985)))

(declare-fun b!3174095 () Bool)

(assert (=> b!3174095 (= e!1976985 (validCacheMap!107 (cache!4280 thiss!28445)))))

(assert (= (and d!869419 res!1289782) b!3174095))

(assert (=> b!3174095 m!3431437))

(assert (=> start!297232 d!869419))

(declare-fun d!869421 () Bool)

(assert (=> d!869421 (= (array_inv!4840 (_keys!4528 (v!35311 (underlying!8685 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))) (bvsge (size!26832 (_keys!4528 (v!35311 (underlying!8685 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3173949 d!869421))

(declare-fun d!869423 () Bool)

(assert (=> d!869423 (= (array_inv!4841 (_values!4509 (v!35311 (underlying!8685 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))) (bvsge (size!26833 (_values!4509 (v!35311 (underlying!8685 (v!35312 (underlying!8686 (cache!4280 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3173949 d!869423))

(declare-fun b!3174107 () Bool)

(declare-fun e!1976988 () Bool)

(declare-fun tp!1003145 () Bool)

(declare-fun tp!1003147 () Bool)

(assert (=> b!3174107 (= e!1976988 (and tp!1003145 tp!1003147))))

(assert (=> b!3173948 (= tp!1003127 e!1976988)))

(declare-fun b!3174108 () Bool)

(declare-fun tp!1003146 () Bool)

(assert (=> b!3174108 (= e!1976988 tp!1003146)))

(declare-fun b!3174106 () Bool)

(assert (=> b!3174106 (= e!1976988 tp_is_empty!17177)))

(declare-fun b!3174109 () Bool)

(declare-fun tp!1003143 () Bool)

(declare-fun tp!1003144 () Bool)

(assert (=> b!3174109 (= e!1976988 (and tp!1003143 tp!1003144))))

(assert (= (and b!3173948 ((_ is ElementMatch!9807) (regOne!20127 r!4705))) b!3174106))

(assert (= (and b!3173948 ((_ is Concat!15128) (regOne!20127 r!4705))) b!3174107))

(assert (= (and b!3173948 ((_ is Star!9807) (regOne!20127 r!4705))) b!3174108))

(assert (= (and b!3173948 ((_ is Union!9807) (regOne!20127 r!4705))) b!3174109))

(declare-fun b!3174111 () Bool)

(declare-fun e!1976989 () Bool)

(declare-fun tp!1003150 () Bool)

(declare-fun tp!1003152 () Bool)

(assert (=> b!3174111 (= e!1976989 (and tp!1003150 tp!1003152))))

(assert (=> b!3173948 (= tp!1003124 e!1976989)))

(declare-fun b!3174112 () Bool)

(declare-fun tp!1003151 () Bool)

(assert (=> b!3174112 (= e!1976989 tp!1003151)))

(declare-fun b!3174110 () Bool)

(assert (=> b!3174110 (= e!1976989 tp_is_empty!17177)))

(declare-fun b!3174113 () Bool)

(declare-fun tp!1003148 () Bool)

(declare-fun tp!1003149 () Bool)

(assert (=> b!3174113 (= e!1976989 (and tp!1003148 tp!1003149))))

(assert (= (and b!3173948 ((_ is ElementMatch!9807) (regTwo!20127 r!4705))) b!3174110))

(assert (= (and b!3173948 ((_ is Concat!15128) (regTwo!20127 r!4705))) b!3174111))

(assert (= (and b!3173948 ((_ is Star!9807) (regTwo!20127 r!4705))) b!3174112))

(assert (= (and b!3173948 ((_ is Union!9807) (regTwo!20127 r!4705))) b!3174113))

(declare-fun b!3174118 () Bool)

(declare-fun e!1976992 () Bool)

(declare-fun tp!1003160 () Bool)

(declare-fun tp!1003159 () Bool)

(declare-fun tp!1003161 () Bool)

(assert (=> b!3174118 (= e!1976992 (and tp!1003159 tp_is_empty!17177 tp!1003160 tp!1003161))))

(assert (=> b!3173949 (= tp!1003130 e!1976992)))

(assert (= (and b!3173949 ((_ is Cons!35533) (zeroValue!4487 (v!35311 (underlying!8685 (v!35312 (underlying!8686 (cache!4280 thiss!28445)))))))) b!3174118))

(declare-fun tp!1003162 () Bool)

(declare-fun tp!1003164 () Bool)

(declare-fun tp!1003163 () Bool)

(declare-fun b!3174119 () Bool)

(declare-fun e!1976993 () Bool)

(assert (=> b!3174119 (= e!1976993 (and tp!1003162 tp_is_empty!17177 tp!1003163 tp!1003164))))

(assert (=> b!3173949 (= tp!1003123 e!1976993)))

(assert (= (and b!3173949 ((_ is Cons!35533) (minValue!4487 (v!35311 (underlying!8685 (v!35312 (underlying!8686 (cache!4280 thiss!28445)))))))) b!3174119))

(declare-fun b!3174121 () Bool)

(declare-fun e!1976994 () Bool)

(declare-fun tp!1003167 () Bool)

(declare-fun tp!1003169 () Bool)

(assert (=> b!3174121 (= e!1976994 (and tp!1003167 tp!1003169))))

(assert (=> b!3173953 (= tp!1003122 e!1976994)))

(declare-fun b!3174122 () Bool)

(declare-fun tp!1003168 () Bool)

(assert (=> b!3174122 (= e!1976994 tp!1003168)))

(declare-fun b!3174120 () Bool)

(assert (=> b!3174120 (= e!1976994 tp_is_empty!17177)))

(declare-fun b!3174123 () Bool)

(declare-fun tp!1003165 () Bool)

(declare-fun tp!1003166 () Bool)

(assert (=> b!3174123 (= e!1976994 (and tp!1003165 tp!1003166))))

(assert (= (and b!3173953 ((_ is ElementMatch!9807) (reg!10136 r!4705))) b!3174120))

(assert (= (and b!3173953 ((_ is Concat!15128) (reg!10136 r!4705))) b!3174121))

(assert (= (and b!3173953 ((_ is Star!9807) (reg!10136 r!4705))) b!3174122))

(assert (= (and b!3173953 ((_ is Union!9807) (reg!10136 r!4705))) b!3174123))

(declare-fun mapIsEmpty!19148 () Bool)

(declare-fun mapRes!19148 () Bool)

(assert (=> mapIsEmpty!19148 mapRes!19148))

(declare-fun e!1977000 () Bool)

(declare-fun tp!1003190 () Bool)

(declare-fun tp!1003185 () Bool)

(declare-fun tp!1003184 () Bool)

(declare-fun b!3174130 () Bool)

(assert (=> b!3174130 (= e!1977000 (and tp!1003190 tp_is_empty!17177 tp!1003184 tp!1003185))))

(declare-fun mapNonEmpty!19148 () Bool)

(declare-fun tp!1003186 () Bool)

(assert (=> mapNonEmpty!19148 (= mapRes!19148 (and tp!1003186 e!1977000))))

(declare-fun mapValue!19148 () List!35657)

(declare-fun mapKey!19148 () (_ BitVec 32))

(declare-fun mapRest!19148 () (Array (_ BitVec 32) List!35657))

(assert (=> mapNonEmpty!19148 (= mapRest!19145 (store mapRest!19148 mapKey!19148 mapValue!19148))))

(declare-fun tp!1003188 () Bool)

(declare-fun tp!1003189 () Bool)

(declare-fun e!1976999 () Bool)

(declare-fun tp!1003187 () Bool)

(declare-fun b!3174131 () Bool)

(assert (=> b!3174131 (= e!1976999 (and tp!1003188 tp_is_empty!17177 tp!1003187 tp!1003189))))

(declare-fun condMapEmpty!19148 () Bool)

(declare-fun mapDefault!19148 () List!35657)

(assert (=> mapNonEmpty!19145 (= condMapEmpty!19148 (= mapRest!19145 ((as const (Array (_ BitVec 32) List!35657)) mapDefault!19148)))))

(assert (=> mapNonEmpty!19145 (= tp!1003131 (and e!1976999 mapRes!19148))))

(assert (= (and mapNonEmpty!19145 condMapEmpty!19148) mapIsEmpty!19148))

(assert (= (and mapNonEmpty!19145 (not condMapEmpty!19148)) mapNonEmpty!19148))

(assert (= (and mapNonEmpty!19148 ((_ is Cons!35533) mapValue!19148)) b!3174130))

(assert (= (and mapNonEmpty!19145 ((_ is Cons!35533) mapDefault!19148)) b!3174131))

(declare-fun m!3431608 () Bool)

(assert (=> mapNonEmpty!19148 m!3431608))

(declare-fun tp!1003191 () Bool)

(declare-fun e!1977001 () Bool)

(declare-fun tp!1003192 () Bool)

(declare-fun b!3174132 () Bool)

(declare-fun tp!1003193 () Bool)

(assert (=> b!3174132 (= e!1977001 (and tp!1003191 tp_is_empty!17177 tp!1003192 tp!1003193))))

(assert (=> mapNonEmpty!19145 (= tp!1003126 e!1977001)))

(assert (= (and mapNonEmpty!19145 ((_ is Cons!35533) mapValue!19145)) b!3174132))

(declare-fun tp!1003195 () Bool)

(declare-fun e!1977002 () Bool)

(declare-fun tp!1003194 () Bool)

(declare-fun b!3174133 () Bool)

(declare-fun tp!1003196 () Bool)

(assert (=> b!3174133 (= e!1977002 (and tp!1003194 tp_is_empty!17177 tp!1003195 tp!1003196))))

(assert (=> b!3173954 (= tp!1003128 e!1977002)))

(assert (= (and b!3173954 ((_ is Cons!35533) mapDefault!19145)) b!3174133))

(declare-fun b!3174135 () Bool)

(declare-fun e!1977003 () Bool)

(declare-fun tp!1003199 () Bool)

(declare-fun tp!1003201 () Bool)

(assert (=> b!3174135 (= e!1977003 (and tp!1003199 tp!1003201))))

(assert (=> b!3173946 (= tp!1003129 e!1977003)))

(declare-fun b!3174136 () Bool)

(declare-fun tp!1003200 () Bool)

(assert (=> b!3174136 (= e!1977003 tp!1003200)))

(declare-fun b!3174134 () Bool)

(assert (=> b!3174134 (= e!1977003 tp_is_empty!17177)))

(declare-fun b!3174137 () Bool)

(declare-fun tp!1003197 () Bool)

(declare-fun tp!1003198 () Bool)

(assert (=> b!3174137 (= e!1977003 (and tp!1003197 tp!1003198))))

(assert (= (and b!3173946 ((_ is ElementMatch!9807) (regOne!20126 r!4705))) b!3174134))

(assert (= (and b!3173946 ((_ is Concat!15128) (regOne!20126 r!4705))) b!3174135))

(assert (= (and b!3173946 ((_ is Star!9807) (regOne!20126 r!4705))) b!3174136))

(assert (= (and b!3173946 ((_ is Union!9807) (regOne!20126 r!4705))) b!3174137))

(declare-fun b!3174139 () Bool)

(declare-fun e!1977004 () Bool)

(declare-fun tp!1003204 () Bool)

(declare-fun tp!1003206 () Bool)

(assert (=> b!3174139 (= e!1977004 (and tp!1003204 tp!1003206))))

(assert (=> b!3173946 (= tp!1003121 e!1977004)))

(declare-fun b!3174140 () Bool)

(declare-fun tp!1003205 () Bool)

(assert (=> b!3174140 (= e!1977004 tp!1003205)))

(declare-fun b!3174138 () Bool)

(assert (=> b!3174138 (= e!1977004 tp_is_empty!17177)))

(declare-fun b!3174141 () Bool)

(declare-fun tp!1003202 () Bool)

(declare-fun tp!1003203 () Bool)

(assert (=> b!3174141 (= e!1977004 (and tp!1003202 tp!1003203))))

(assert (= (and b!3173946 ((_ is ElementMatch!9807) (regTwo!20126 r!4705))) b!3174138))

(assert (= (and b!3173946 ((_ is Concat!15128) (regTwo!20126 r!4705))) b!3174139))

(assert (= (and b!3173946 ((_ is Star!9807) (regTwo!20126 r!4705))) b!3174140))

(assert (= (and b!3173946 ((_ is Union!9807) (regTwo!20126 r!4705))) b!3174141))

(declare-fun b_lambda!86505 () Bool)

(assert (= b_lambda!86501 (or (and b!3173960 b_free!83395) b_lambda!86505)))

(declare-fun b_lambda!86507 () Bool)

(assert (= b_lambda!86503 (or b!3173956 b_lambda!86507)))

(declare-fun bs!539655 () Bool)

(declare-fun d!869425 () Bool)

(assert (= bs!539655 (and d!869425 b!3173956)))

(declare-fun res!1289783 () Bool)

(declare-fun e!1977005 () Bool)

(assert (=> bs!539655 (=> (not res!1289783) (not e!1977005))))

(assert (=> bs!539655 (= res!1289783 (validRegex!4510 (_1!20579 (_1!20580 (tuple2!34897 lt!1067244 (apply!7986 (cache!4280 thiss!28445) lt!1067244))))))))

(assert (=> bs!539655 (= (dynLambda!14374 lambda!116134 (tuple2!34897 lt!1067244 (apply!7986 (cache!4280 thiss!28445) lt!1067244))) e!1977005)))

(declare-fun b!3174142 () Bool)

(assert (=> b!3174142 (= e!1977005 (= (_2!20580 (tuple2!34897 lt!1067244 (apply!7986 (cache!4280 thiss!28445) lt!1067244))) (derivativeStep!2922 (_1!20579 (_1!20580 (tuple2!34897 lt!1067244 (apply!7986 (cache!4280 thiss!28445) lt!1067244)))) (_2!20579 (_1!20580 (tuple2!34897 lt!1067244 (apply!7986 (cache!4280 thiss!28445) lt!1067244)))))))))

(assert (= (and bs!539655 res!1289783) b!3174142))

(declare-fun m!3431610 () Bool)

(assert (=> bs!539655 m!3431610))

(declare-fun m!3431612 () Bool)

(assert (=> b!3174142 m!3431612))

(assert (=> d!869413 d!869425))

(declare-fun b_lambda!86509 () Bool)

(assert (= b_lambda!86499 (or (and b!3173960 b_free!83395) b_lambda!86509)))

(check-sat (not b!3174118) (not b!3174043) (not bm!230712) (not b!3174121) (not b!3174140) (not b!3174095) (not b!3174131) (not bm!230714) (not b!3173967) (not b_lambda!86507) (not b!3173983) (not bm!230700) (not tb!155113) (not b!3174113) (not bm!230697) (not b!3174133) (not b!3174119) (not b!3174091) (not b!3174112) (not b!3174139) tp_is_empty!17177 (not b_next!84099) (not b!3174014) (not b!3174073) (not bm!230681) (not b!3174130) (not d!869413) (not b!3173982) (not bm!230711) (not b!3174109) (not b!3174122) (not d!869417) (not b!3174108) (not d!869407) (not b_next!84097) (not b!3174111) (not b_lambda!86505) (not bm!230682) (not b!3174040) (not b!3174107) (not bm!230699) (not b_lambda!86509) (not bm!230702) (not b!3174141) (not b!3173980) (not b!3174047) (not bm!230709) b_and!209689 (not b!3174092) (not d!869405) (not bs!539655) (not bm!230698) b_and!209683 (not b!3174123) (not b!3174044) (not d!869409) (not mapNonEmpty!19148) (not b!3174082) (not b!3174142) (not bm!230701) (not b!3173966) (not b!3174135) (not b!3174137) (not b!3174132) (not b!3174136) (not b!3174038) (not d!869403))
(check-sat b_and!209683 b_and!209689 (not b_next!84097) (not b_next!84099))
