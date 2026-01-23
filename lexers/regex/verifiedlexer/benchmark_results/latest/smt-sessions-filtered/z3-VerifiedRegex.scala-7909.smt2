; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412660 () Bool)

(assert start!412660)

(declare-fun b!4298114 () Bool)

(declare-fun b_free!127893 () Bool)

(declare-fun b_next!128597 () Bool)

(assert (=> b!4298114 (= b_free!127893 (not b_next!128597))))

(declare-fun tp!1320417 () Bool)

(declare-fun b_and!339141 () Bool)

(assert (=> b!4298114 (= tp!1320417 b_and!339141)))

(declare-fun b_free!127895 () Bool)

(declare-fun b_next!128599 () Bool)

(assert (=> start!412660 (= b_free!127895 (not b_next!128599))))

(declare-fun tp!1320411 () Bool)

(declare-fun b_and!339143 () Bool)

(assert (=> start!412660 (= tp!1320411 b_and!339143)))

(declare-fun b!4298110 () Bool)

(declare-fun b_free!127897 () Bool)

(declare-fun b_next!128601 () Bool)

(assert (=> b!4298110 (= b_free!127897 (not b_next!128601))))

(declare-fun tp!1320413 () Bool)

(declare-fun b_and!339145 () Bool)

(assert (=> b!4298110 (= tp!1320413 b_and!339145)))

(declare-fun b!4298101 () Bool)

(declare-fun res!1761612 () Bool)

(declare-fun e!2671354 () Bool)

(assert (=> b!4298101 (=> (not res!1761612) (not e!2671354))))

(declare-datatypes ((K!8994 0))(
  ( (K!8995 (val!15453 Int)) )
))
(declare-datatypes ((V!9196 0))(
  ( (V!9197 (val!15454 Int)) )
))
(declare-datatypes ((tuple2!45758 0))(
  ( (tuple2!45759 (_1!26158 K!8994) (_2!26158 V!9196)) )
))
(declare-datatypes ((List!48027 0))(
  ( (Nil!47903) (Cons!47903 (h!53323 tuple2!45758) (t!354668 List!48027)) )
))
(declare-datatypes ((array!16082 0))(
  ( (array!16083 (arr!7183 (Array (_ BitVec 32) (_ BitVec 64))) (size!35222 (_ BitVec 32))) )
))
(declare-datatypes ((array!16084 0))(
  ( (array!16085 (arr!7184 (Array (_ BitVec 32) List!48027)) (size!35223 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8998 0))(
  ( (LongMapFixedSize!8999 (defaultEntry!4884 Int) (mask!12977 (_ BitVec 32)) (extraKeys!4748 (_ BitVec 32)) (zeroValue!4758 List!48027) (minValue!4758 List!48027) (_size!9041 (_ BitVec 32)) (_keys!4799 array!16082) (_values!4780 array!16084) (_vacant!4560 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17805 0))(
  ( (Cell!17806 (v!41843 LongMapFixedSize!8998)) )
))
(declare-datatypes ((MutLongMap!4499 0))(
  ( (LongMap!4499 (underlying!9227 Cell!17805)) (MutLongMapExt!4498 (__x!29522 Int)) )
))
(declare-datatypes ((Hashable!4415 0))(
  ( (HashableExt!4414 (__x!29523 Int)) )
))
(declare-datatypes ((Cell!17807 0))(
  ( (Cell!17808 (v!41844 MutLongMap!4499)) )
))
(declare-datatypes ((MutableMap!4405 0))(
  ( (MutableMapExt!4404 (__x!29524 Int)) (HashMap!4405 (underlying!9228 Cell!17807) (hashF!6447 Hashable!4415) (_size!9042 (_ BitVec 32)) (defaultValue!4576 Int)) )
))
(declare-fun hm!64 () MutableMap!4405)

(declare-fun valid!3477 (MutableMap!4405) Bool)

(assert (=> b!4298101 (= res!1761612 (valid!3477 hm!64))))

(declare-fun res!1761614 () Bool)

(assert (=> start!412660 (=> (not res!1761614) (not e!2671354))))

(get-info :version)

(assert (=> start!412660 (= res!1761614 ((_ is HashMap!4405) hm!64))))

(assert (=> start!412660 e!2671354))

(declare-fun e!2671356 () Bool)

(assert (=> start!412660 e!2671356))

(declare-fun tp_is_empty!23169 () Bool)

(assert (=> start!412660 tp_is_empty!23169))

(declare-fun tp_is_empty!23171 () Bool)

(assert (=> start!412660 tp_is_empty!23171))

(assert (=> start!412660 tp!1320411))

(declare-fun b!4298102 () Bool)

(declare-fun e!2671358 () Bool)

(declare-datatypes ((tuple2!45760 0))(
  ( (tuple2!45761 (_1!26159 Bool) (_2!26159 MutableMap!4405)) )
))
(declare-fun lt!1519693 () tuple2!45760)

(assert (=> b!4298102 (= e!2671358 (valid!3477 (_2!26159 lt!1519693)))))

(declare-fun b!4298103 () Bool)

(declare-fun e!2671360 () Bool)

(assert (=> b!4298103 (= e!2671360 (not e!2671358))))

(declare-fun res!1761615 () Bool)

(assert (=> b!4298103 (=> res!1761615 e!2671358)))

(declare-datatypes ((ListMap!1439 0))(
  ( (ListMap!1440 (toList!2166 List!48027)) )
))
(declare-fun lt!1519694 () ListMap!1439)

(declare-fun p!6034 () Int)

(declare-fun forall!8604 (List!48027 Int) Bool)

(assert (=> b!4298103 (= res!1761615 (not (forall!8604 (toList!2166 lt!1519694) p!6034)))))

(declare-fun k0!1716 () K!8994)

(declare-fun v!9471 () V!9196)

(declare-fun lt!1519695 () ListMap!1439)

(declare-fun insertNoDuplicatedKeys!10 (List!48027 K!8994 V!9196) List!48027)

(assert (=> b!4298103 (forall!8604 (insertNoDuplicatedKeys!10 (toList!2166 lt!1519695) k0!1716 v!9471) p!6034)))

(declare-datatypes ((Unit!66595 0))(
  ( (Unit!66596) )
))
(declare-fun lt!1519692 () Unit!66595)

(declare-fun lemmaInsertNoDuplicatedKeysPreservesForall!3 (List!48027 K!8994 V!9196 Int) Unit!66595)

(assert (=> b!4298103 (= lt!1519692 (lemmaInsertNoDuplicatedKeysPreservesForall!3 (toList!2166 lt!1519695) k0!1716 v!9471 p!6034))))

(declare-fun b!4298104 () Bool)

(declare-fun e!2671362 () Bool)

(declare-fun e!2671353 () Bool)

(assert (=> b!4298104 (= e!2671362 e!2671353)))

(declare-fun b!4298105 () Bool)

(declare-fun e!2671351 () Bool)

(assert (=> b!4298105 (= e!2671351 e!2671362)))

(declare-fun mapNonEmpty!20214 () Bool)

(declare-fun mapRes!20214 () Bool)

(declare-fun tp!1320414 () Bool)

(declare-fun tp!1320416 () Bool)

(assert (=> mapNonEmpty!20214 (= mapRes!20214 (and tp!1320414 tp!1320416))))

(declare-fun mapKey!20214 () (_ BitVec 32))

(declare-fun mapRest!20214 () (Array (_ BitVec 32) List!48027))

(declare-fun mapValue!20214 () List!48027)

(assert (=> mapNonEmpty!20214 (= (arr!7184 (_values!4780 (v!41843 (underlying!9227 (v!41844 (underlying!9228 hm!64)))))) (store mapRest!20214 mapKey!20214 mapValue!20214))))

(declare-fun b!4298106 () Bool)

(declare-fun res!1761608 () Bool)

(assert (=> b!4298106 (=> (not res!1761608) (not e!2671360))))

(declare-fun eq!89 (ListMap!1439 ListMap!1439) Bool)

(declare-fun map!9860 (MutableMap!4405) ListMap!1439)

(assert (=> b!4298106 (= res!1761608 (eq!89 (map!9860 (_2!26159 lt!1519693)) lt!1519694))))

(declare-fun b!4298107 () Bool)

(declare-fun res!1761610 () Bool)

(assert (=> b!4298107 (=> res!1761610 e!2671358)))

(assert (=> b!4298107 (= res!1761610 (not ((_ is HashMap!4405) (_2!26159 lt!1519693))))))

(declare-fun b!4298108 () Bool)

(declare-fun e!2671361 () Bool)

(declare-fun tp!1320412 () Bool)

(assert (=> b!4298108 (= e!2671361 (and tp!1320412 mapRes!20214))))

(declare-fun condMapEmpty!20214 () Bool)

(declare-fun mapDefault!20214 () List!48027)

(assert (=> b!4298108 (= condMapEmpty!20214 (= (arr!7184 (_values!4780 (v!41843 (underlying!9227 (v!41844 (underlying!9228 hm!64)))))) ((as const (Array (_ BitVec 32) List!48027)) mapDefault!20214)))))

(declare-fun mapIsEmpty!20214 () Bool)

(assert (=> mapIsEmpty!20214 mapRes!20214))

(declare-fun b!4298109 () Bool)

(declare-fun e!2671352 () Bool)

(assert (=> b!4298109 (= e!2671352 e!2671360)))

(declare-fun res!1761613 () Bool)

(assert (=> b!4298109 (=> (not res!1761613) (not e!2671360))))

(assert (=> b!4298109 (= res!1761613 (_1!26159 lt!1519693))))

(declare-fun update!306 (MutableMap!4405 K!8994 V!9196) tuple2!45760)

(assert (=> b!4298109 (= lt!1519693 (update!306 hm!64 k0!1716 v!9471))))

(declare-fun lt!1519696 () tuple2!45758)

(declare-fun +!148 (ListMap!1439 tuple2!45758) ListMap!1439)

(assert (=> b!4298109 (= lt!1519694 (+!148 lt!1519695 lt!1519696))))

(declare-fun e!2671357 () Bool)

(assert (=> b!4298110 (= e!2671356 (and e!2671357 tp!1320413))))

(declare-fun b!4298111 () Bool)

(declare-fun e!2671359 () Bool)

(assert (=> b!4298111 (= e!2671354 e!2671359)))

(declare-fun res!1761611 () Bool)

(assert (=> b!4298111 (=> (not res!1761611) (not e!2671359))))

(assert (=> b!4298111 (= res!1761611 (forall!8604 (toList!2166 lt!1519695) p!6034))))

(assert (=> b!4298111 (= lt!1519695 (map!9860 hm!64))))

(declare-fun b!4298112 () Bool)

(declare-fun lt!1519691 () MutLongMap!4499)

(assert (=> b!4298112 (= e!2671357 (and e!2671351 ((_ is LongMap!4499) lt!1519691)))))

(assert (=> b!4298112 (= lt!1519691 (v!41844 (underlying!9228 hm!64)))))

(declare-fun b!4298113 () Bool)

(assert (=> b!4298113 (= e!2671359 e!2671352)))

(declare-fun res!1761609 () Bool)

(assert (=> b!4298113 (=> (not res!1761609) (not e!2671352))))

(declare-fun dynLambda!20343 (Int tuple2!45758) Bool)

(assert (=> b!4298113 (= res!1761609 (dynLambda!20343 p!6034 lt!1519696))))

(assert (=> b!4298113 (= lt!1519696 (tuple2!45759 k0!1716 v!9471))))

(declare-fun tp!1320415 () Bool)

(declare-fun tp!1320418 () Bool)

(declare-fun array_inv!5147 (array!16082) Bool)

(declare-fun array_inv!5148 (array!16084) Bool)

(assert (=> b!4298114 (= e!2671353 (and tp!1320417 tp!1320415 tp!1320418 (array_inv!5147 (_keys!4799 (v!41843 (underlying!9227 (v!41844 (underlying!9228 hm!64)))))) (array_inv!5148 (_values!4780 (v!41843 (underlying!9227 (v!41844 (underlying!9228 hm!64)))))) e!2671361))))

(assert (= (and start!412660 res!1761614) b!4298101))

(assert (= (and b!4298101 res!1761612) b!4298111))

(assert (= (and b!4298111 res!1761611) b!4298113))

(assert (= (and b!4298113 res!1761609) b!4298109))

(assert (= (and b!4298109 res!1761613) b!4298106))

(assert (= (and b!4298106 res!1761608) b!4298103))

(assert (= (and b!4298103 (not res!1761615)) b!4298107))

(assert (= (and b!4298107 (not res!1761610)) b!4298102))

(assert (= (and b!4298108 condMapEmpty!20214) mapIsEmpty!20214))

(assert (= (and b!4298108 (not condMapEmpty!20214)) mapNonEmpty!20214))

(assert (= b!4298114 b!4298108))

(assert (= b!4298104 b!4298114))

(assert (= b!4298105 b!4298104))

(assert (= (and b!4298112 ((_ is LongMap!4499) (v!41844 (underlying!9228 hm!64)))) b!4298105))

(assert (= b!4298110 b!4298112))

(assert (= (and start!412660 ((_ is HashMap!4405) hm!64)) b!4298110))

(declare-fun b_lambda!126193 () Bool)

(assert (=> (not b_lambda!126193) (not b!4298113)))

(declare-fun t!354667 () Bool)

(declare-fun tb!257125 () Bool)

(assert (=> (and start!412660 (= p!6034 p!6034) t!354667) tb!257125))

(declare-fun result!314370 () Bool)

(assert (=> tb!257125 (= result!314370 true)))

(assert (=> b!4298113 t!354667))

(declare-fun b_and!339147 () Bool)

(assert (= b_and!339143 (and (=> t!354667 result!314370) b_and!339147)))

(declare-fun m!4890193 () Bool)

(assert (=> b!4298101 m!4890193))

(declare-fun m!4890195 () Bool)

(assert (=> mapNonEmpty!20214 m!4890195))

(declare-fun m!4890197 () Bool)

(assert (=> b!4298114 m!4890197))

(declare-fun m!4890199 () Bool)

(assert (=> b!4298114 m!4890199))

(declare-fun m!4890201 () Bool)

(assert (=> b!4298103 m!4890201))

(declare-fun m!4890203 () Bool)

(assert (=> b!4298103 m!4890203))

(assert (=> b!4298103 m!4890203))

(declare-fun m!4890205 () Bool)

(assert (=> b!4298103 m!4890205))

(declare-fun m!4890207 () Bool)

(assert (=> b!4298103 m!4890207))

(declare-fun m!4890209 () Bool)

(assert (=> b!4298109 m!4890209))

(declare-fun m!4890211 () Bool)

(assert (=> b!4298109 m!4890211))

(declare-fun m!4890213 () Bool)

(assert (=> b!4298111 m!4890213))

(declare-fun m!4890215 () Bool)

(assert (=> b!4298111 m!4890215))

(declare-fun m!4890217 () Bool)

(assert (=> b!4298102 m!4890217))

(declare-fun m!4890219 () Bool)

(assert (=> b!4298106 m!4890219))

(assert (=> b!4298106 m!4890219))

(declare-fun m!4890221 () Bool)

(assert (=> b!4298106 m!4890221))

(declare-fun m!4890223 () Bool)

(assert (=> b!4298113 m!4890223))

(check-sat (not mapNonEmpty!20214) (not b!4298103) (not b!4298101) b_and!339145 b_and!339141 (not b_next!128597) (not b!4298114) tp_is_empty!23171 (not b!4298106) (not b!4298102) (not b_next!128599) (not b!4298111) (not b_lambda!126193) (not b!4298109) (not b!4298108) tp_is_empty!23169 b_and!339147 (not b_next!128601))
(check-sat b_and!339145 b_and!339141 (not b_next!128597) (not b_next!128599) b_and!339147 (not b_next!128601))
(get-model)

(declare-fun b_lambda!126195 () Bool)

(assert (= b_lambda!126193 (or (and start!412660 b_free!127895) b_lambda!126195)))

(check-sat (not b!4298109) (not b!4298103) (not b!4298101) b_and!339145 b_and!339141 (not b_next!128597) (not b!4298114) tp_is_empty!23171 (not b!4298106) (not b!4298102) (not b_next!128599) (not b!4298111) (not mapNonEmpty!20214) (not b_lambda!126195) (not b!4298108) tp_is_empty!23169 b_and!339147 (not b_next!128601))
(check-sat b_and!339145 b_and!339141 (not b_next!128597) (not b_next!128599) b_and!339147 (not b_next!128601))
(get-model)

(declare-fun d!1266382 () Bool)

(declare-fun res!1761620 () Bool)

(declare-fun e!2671367 () Bool)

(assert (=> d!1266382 (=> res!1761620 e!2671367)))

(assert (=> d!1266382 (= res!1761620 ((_ is Nil!47903) (toList!2166 lt!1519694)))))

(assert (=> d!1266382 (= (forall!8604 (toList!2166 lt!1519694) p!6034) e!2671367)))

(declare-fun b!4298119 () Bool)

(declare-fun e!2671368 () Bool)

(assert (=> b!4298119 (= e!2671367 e!2671368)))

(declare-fun res!1761621 () Bool)

(assert (=> b!4298119 (=> (not res!1761621) (not e!2671368))))

(assert (=> b!4298119 (= res!1761621 (dynLambda!20343 p!6034 (h!53323 (toList!2166 lt!1519694))))))

(declare-fun b!4298120 () Bool)

(assert (=> b!4298120 (= e!2671368 (forall!8604 (t!354668 (toList!2166 lt!1519694)) p!6034))))

(assert (= (and d!1266382 (not res!1761620)) b!4298119))

(assert (= (and b!4298119 res!1761621) b!4298120))

(declare-fun b_lambda!126197 () Bool)

(assert (=> (not b_lambda!126197) (not b!4298119)))

(declare-fun t!354670 () Bool)

(declare-fun tb!257127 () Bool)

(assert (=> (and start!412660 (= p!6034 p!6034) t!354670) tb!257127))

(declare-fun result!314372 () Bool)

(assert (=> tb!257127 (= result!314372 true)))

(assert (=> b!4298119 t!354670))

(declare-fun b_and!339149 () Bool)

(assert (= b_and!339147 (and (=> t!354670 result!314372) b_and!339149)))

(declare-fun m!4890225 () Bool)

(assert (=> b!4298119 m!4890225))

(declare-fun m!4890227 () Bool)

(assert (=> b!4298120 m!4890227))

(assert (=> b!4298103 d!1266382))

(declare-fun d!1266384 () Bool)

(declare-fun res!1761622 () Bool)

(declare-fun e!2671369 () Bool)

(assert (=> d!1266384 (=> res!1761622 e!2671369)))

(assert (=> d!1266384 (= res!1761622 ((_ is Nil!47903) (insertNoDuplicatedKeys!10 (toList!2166 lt!1519695) k0!1716 v!9471)))))

(assert (=> d!1266384 (= (forall!8604 (insertNoDuplicatedKeys!10 (toList!2166 lt!1519695) k0!1716 v!9471) p!6034) e!2671369)))

(declare-fun b!4298121 () Bool)

(declare-fun e!2671370 () Bool)

(assert (=> b!4298121 (= e!2671369 e!2671370)))

(declare-fun res!1761623 () Bool)

(assert (=> b!4298121 (=> (not res!1761623) (not e!2671370))))

(assert (=> b!4298121 (= res!1761623 (dynLambda!20343 p!6034 (h!53323 (insertNoDuplicatedKeys!10 (toList!2166 lt!1519695) k0!1716 v!9471))))))

(declare-fun b!4298122 () Bool)

(assert (=> b!4298122 (= e!2671370 (forall!8604 (t!354668 (insertNoDuplicatedKeys!10 (toList!2166 lt!1519695) k0!1716 v!9471)) p!6034))))

(assert (= (and d!1266384 (not res!1761622)) b!4298121))

(assert (= (and b!4298121 res!1761623) b!4298122))

(declare-fun b_lambda!126199 () Bool)

(assert (=> (not b_lambda!126199) (not b!4298121)))

(declare-fun t!354672 () Bool)

(declare-fun tb!257129 () Bool)

(assert (=> (and start!412660 (= p!6034 p!6034) t!354672) tb!257129))

(declare-fun result!314374 () Bool)

(assert (=> tb!257129 (= result!314374 true)))

(assert (=> b!4298121 t!354672))

(declare-fun b_and!339151 () Bool)

(assert (= b_and!339149 (and (=> t!354672 result!314374) b_and!339151)))

(declare-fun m!4890229 () Bool)

(assert (=> b!4298121 m!4890229))

(declare-fun m!4890231 () Bool)

(assert (=> b!4298122 m!4890231))

(assert (=> b!4298103 d!1266384))

(declare-fun b!4298151 () Bool)

(declare-fun e!2671389 () List!48027)

(declare-fun call!295206 () List!48027)

(assert (=> b!4298151 (= e!2671389 call!295206)))

(declare-datatypes ((List!48028 0))(
  ( (Nil!47904) (Cons!47904 (h!53324 K!8994) (t!354675 List!48028)) )
))
(declare-fun lt!1519728 () List!48028)

(declare-fun call!295203 () List!48028)

(assert (=> b!4298151 (= lt!1519728 call!295203)))

(declare-fun lt!1519720 () Unit!66595)

(declare-fun lemmaSubseqRefl!55 (List!48028) Unit!66595)

(assert (=> b!4298151 (= lt!1519720 (lemmaSubseqRefl!55 lt!1519728))))

(declare-fun subseq!571 (List!48028 List!48028) Bool)

(assert (=> b!4298151 (subseq!571 lt!1519728 lt!1519728)))

(declare-fun lt!1519722 () Unit!66595)

(assert (=> b!4298151 (= lt!1519722 lt!1519720)))

(declare-fun b!4298152 () Bool)

(declare-fun e!2671390 () Bool)

(declare-fun containsKey!220 (List!48027 K!8994) Bool)

(assert (=> b!4298152 (= e!2671390 (not (containsKey!220 (toList!2166 lt!1519695) k0!1716)))))

(declare-fun b!4298153 () Bool)

(assert (=> b!4298153 false))

(declare-fun lt!1519724 () Unit!66595)

(declare-fun lt!1519729 () Unit!66595)

(assert (=> b!4298153 (= lt!1519724 lt!1519729)))

(assert (=> b!4298153 (containsKey!220 (t!354668 (toList!2166 lt!1519695)) (_1!26158 (h!53323 (toList!2166 lt!1519695))))))

(declare-fun lemmaInGetKeysListThenContainsKey!25 (List!48027 K!8994) Unit!66595)

(assert (=> b!4298153 (= lt!1519729 (lemmaInGetKeysListThenContainsKey!25 (t!354668 (toList!2166 lt!1519695)) (_1!26158 (h!53323 (toList!2166 lt!1519695)))))))

(declare-fun lt!1519725 () Unit!66595)

(declare-fun lt!1519721 () Unit!66595)

(assert (=> b!4298153 (= lt!1519725 lt!1519721)))

(declare-fun contains!9821 (List!48028 K!8994) Bool)

(assert (=> b!4298153 (contains!9821 call!295203 (_1!26158 (h!53323 (toList!2166 lt!1519695))))))

(declare-fun lt!1519723 () List!48027)

(declare-fun lemmaInListThenGetKeysListContains!25 (List!48027 K!8994) Unit!66595)

(assert (=> b!4298153 (= lt!1519721 (lemmaInListThenGetKeysListContains!25 lt!1519723 (_1!26158 (h!53323 (toList!2166 lt!1519695)))))))

(assert (=> b!4298153 (= lt!1519723 (insertNoDuplicatedKeys!10 (t!354668 (toList!2166 lt!1519695)) k0!1716 v!9471))))

(declare-fun e!2671391 () Unit!66595)

(declare-fun Unit!66597 () Unit!66595)

(assert (=> b!4298153 (= e!2671391 Unit!66597)))

(declare-fun e!2671388 () List!48027)

(declare-fun b!4298154 () Bool)

(assert (=> b!4298154 (= e!2671388 (insertNoDuplicatedKeys!10 (t!354668 (toList!2166 lt!1519695)) k0!1716 v!9471))))

(declare-fun c!731157 () Bool)

(declare-fun bm!295198 () Bool)

(declare-fun getKeysList!28 (List!48027) List!48028)

(assert (=> bm!295198 (= call!295203 (getKeysList!28 (ite c!731157 (toList!2166 lt!1519695) lt!1519723)))))

(declare-fun b!4298155 () Bool)

(declare-fun lt!1519727 () List!48027)

(declare-fun e!2671385 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7523 (List!48028) (InoxSet K!8994))

(assert (=> b!4298155 (= e!2671385 (= (content!7523 (getKeysList!28 lt!1519727)) ((_ map or) (content!7523 (getKeysList!28 (toList!2166 lt!1519695))) (store ((as const (Array K!8994 Bool)) false) k0!1716 true))))))

(declare-fun bm!295199 () Bool)

(declare-fun call!295204 () List!48027)

(declare-fun call!295205 () List!48027)

(assert (=> bm!295199 (= call!295204 call!295205)))

(declare-fun c!731155 () Bool)

(declare-fun c!731156 () Bool)

(assert (=> bm!295199 (= c!731155 c!731156)))

(declare-fun b!4298157 () Bool)

(declare-fun res!1761635 () Bool)

(assert (=> b!4298157 (=> (not res!1761635) (not e!2671385))))

(assert (=> b!4298157 (= res!1761635 (containsKey!220 lt!1519727 k0!1716))))

(declare-fun b!4298158 () Bool)

(declare-fun e!2671386 () List!48027)

(declare-fun lt!1519719 () List!48027)

(assert (=> b!4298158 (= e!2671386 lt!1519719)))

(assert (=> b!4298158 (= lt!1519719 call!295204)))

(declare-fun c!731154 () Bool)

(assert (=> b!4298158 (= c!731154 (containsKey!220 (insertNoDuplicatedKeys!10 (t!354668 (toList!2166 lt!1519695)) k0!1716 v!9471) (_1!26158 (h!53323 (toList!2166 lt!1519695)))))))

(declare-fun lt!1519726 () Unit!66595)

(assert (=> b!4298158 (= lt!1519726 e!2671391)))

(declare-fun b!4298159 () Bool)

(declare-fun res!1761633 () Bool)

(assert (=> b!4298159 (=> (not res!1761633) (not e!2671385))))

(declare-fun contains!9822 (List!48027 tuple2!45758) Bool)

(assert (=> b!4298159 (= res!1761633 (contains!9822 lt!1519727 (tuple2!45759 k0!1716 v!9471)))))

(declare-fun b!4298160 () Bool)

(declare-fun Unit!66598 () Unit!66595)

(assert (=> b!4298160 (= e!2671391 Unit!66598)))

(declare-fun b!4298161 () Bool)

(assert (=> b!4298161 (= e!2671386 call!295204)))

(declare-fun b!4298162 () Bool)

(assert (=> b!4298162 (= c!731156 ((_ is Cons!47903) (toList!2166 lt!1519695)))))

(declare-fun e!2671387 () List!48027)

(assert (=> b!4298162 (= e!2671387 e!2671386)))

(declare-fun d!1266386 () Bool)

(assert (=> d!1266386 e!2671385))

(declare-fun res!1761632 () Bool)

(assert (=> d!1266386 (=> (not res!1761632) (not e!2671385))))

(declare-fun invariantList!529 (List!48027) Bool)

(assert (=> d!1266386 (= res!1761632 (invariantList!529 lt!1519727))))

(assert (=> d!1266386 (= lt!1519727 e!2671389)))

(assert (=> d!1266386 (= c!731157 (and ((_ is Cons!47903) (toList!2166 lt!1519695)) (= (_1!26158 (h!53323 (toList!2166 lt!1519695))) k0!1716)))))

(assert (=> d!1266386 (invariantList!529 (toList!2166 lt!1519695))))

(assert (=> d!1266386 (= (insertNoDuplicatedKeys!10 (toList!2166 lt!1519695) k0!1716 v!9471) lt!1519727)))

(declare-fun b!4298156 () Bool)

(assert (=> b!4298156 (= e!2671388 Nil!47903)))

(declare-fun b!4298163 () Bool)

(assert (=> b!4298163 (= e!2671389 e!2671387)))

(declare-fun res!1761634 () Bool)

(assert (=> b!4298163 (= res!1761634 ((_ is Cons!47903) (toList!2166 lt!1519695)))))

(assert (=> b!4298163 (=> (not res!1761634) (not e!2671390))))

(declare-fun c!731158 () Bool)

(assert (=> b!4298163 (= c!731158 e!2671390)))

(declare-fun b!4298164 () Bool)

(assert (=> b!4298164 (= e!2671387 call!295205)))

(declare-fun bm!295200 () Bool)

(assert (=> bm!295200 (= call!295205 call!295206)))

(declare-fun bm!295201 () Bool)

(declare-fun $colon$colon!651 (List!48027 tuple2!45758) List!48027)

(assert (=> bm!295201 (= call!295206 ($colon$colon!651 (ite c!731157 (t!354668 (toList!2166 lt!1519695)) (ite c!731158 (toList!2166 lt!1519695) e!2671388)) (ite (or c!731157 c!731158) (tuple2!45759 k0!1716 v!9471) (ite c!731156 (h!53323 (toList!2166 lt!1519695)) (tuple2!45759 k0!1716 v!9471)))))))

(assert (= (and d!1266386 c!731157) b!4298151))

(assert (= (and d!1266386 (not c!731157)) b!4298163))

(assert (= (and b!4298163 res!1761634) b!4298152))

(assert (= (and b!4298163 c!731158) b!4298164))

(assert (= (and b!4298163 (not c!731158)) b!4298162))

(assert (= (and b!4298162 c!731156) b!4298158))

(assert (= (and b!4298162 (not c!731156)) b!4298161))

(assert (= (and b!4298158 c!731154) b!4298153))

(assert (= (and b!4298158 (not c!731154)) b!4298160))

(assert (= (or b!4298158 b!4298161) bm!295199))

(assert (= (and bm!295199 c!731155) b!4298154))

(assert (= (and bm!295199 (not c!731155)) b!4298156))

(assert (= (or b!4298164 bm!295199) bm!295200))

(assert (= (or b!4298151 b!4298153) bm!295198))

(assert (= (or b!4298151 bm!295200) bm!295201))

(assert (= (and d!1266386 res!1761632) b!4298157))

(assert (= (and b!4298157 res!1761635) b!4298159))

(assert (= (and b!4298159 res!1761633) b!4298155))

(declare-fun m!4890233 () Bool)

(assert (=> b!4298153 m!4890233))

(declare-fun m!4890235 () Bool)

(assert (=> b!4298153 m!4890235))

(declare-fun m!4890237 () Bool)

(assert (=> b!4298153 m!4890237))

(declare-fun m!4890239 () Bool)

(assert (=> b!4298153 m!4890239))

(declare-fun m!4890241 () Bool)

(assert (=> b!4298153 m!4890241))

(declare-fun m!4890243 () Bool)

(assert (=> b!4298151 m!4890243))

(declare-fun m!4890245 () Bool)

(assert (=> b!4298151 m!4890245))

(declare-fun m!4890247 () Bool)

(assert (=> b!4298152 m!4890247))

(declare-fun m!4890249 () Bool)

(assert (=> b!4298159 m!4890249))

(declare-fun m!4890251 () Bool)

(assert (=> d!1266386 m!4890251))

(declare-fun m!4890253 () Bool)

(assert (=> d!1266386 m!4890253))

(declare-fun m!4890255 () Bool)

(assert (=> bm!295198 m!4890255))

(declare-fun m!4890257 () Bool)

(assert (=> b!4298157 m!4890257))

(assert (=> b!4298154 m!4890241))

(declare-fun m!4890259 () Bool)

(assert (=> b!4298155 m!4890259))

(declare-fun m!4890261 () Bool)

(assert (=> b!4298155 m!4890261))

(declare-fun m!4890263 () Bool)

(assert (=> b!4298155 m!4890263))

(assert (=> b!4298155 m!4890261))

(assert (=> b!4298155 m!4890259))

(declare-fun m!4890265 () Bool)

(assert (=> b!4298155 m!4890265))

(declare-fun m!4890267 () Bool)

(assert (=> b!4298155 m!4890267))

(declare-fun m!4890269 () Bool)

(assert (=> bm!295201 m!4890269))

(assert (=> b!4298158 m!4890241))

(assert (=> b!4298158 m!4890241))

(declare-fun m!4890271 () Bool)

(assert (=> b!4298158 m!4890271))

(assert (=> b!4298103 d!1266386))

(declare-fun d!1266388 () Bool)

(assert (=> d!1266388 (forall!8604 (insertNoDuplicatedKeys!10 (toList!2166 lt!1519695) k0!1716 v!9471) p!6034)))

(declare-fun lt!1519732 () Unit!66595)

(declare-fun choose!26163 (List!48027 K!8994 V!9196 Int) Unit!66595)

(assert (=> d!1266388 (= lt!1519732 (choose!26163 (toList!2166 lt!1519695) k0!1716 v!9471 p!6034))))

(assert (=> d!1266388 (invariantList!529 (toList!2166 lt!1519695))))

(assert (=> d!1266388 (= (lemmaInsertNoDuplicatedKeysPreservesForall!3 (toList!2166 lt!1519695) k0!1716 v!9471 p!6034) lt!1519732)))

(declare-fun bs!603879 () Bool)

(assert (= bs!603879 d!1266388))

(assert (=> bs!603879 m!4890203))

(assert (=> bs!603879 m!4890203))

(assert (=> bs!603879 m!4890205))

(declare-fun m!4890273 () Bool)

(assert (=> bs!603879 m!4890273))

(assert (=> bs!603879 m!4890253))

(assert (=> b!4298103 d!1266388))

(declare-fun d!1266390 () Bool)

(declare-fun content!7524 (List!48027) (InoxSet tuple2!45758))

(assert (=> d!1266390 (= (eq!89 (map!9860 (_2!26159 lt!1519693)) lt!1519694) (= (content!7524 (toList!2166 (map!9860 (_2!26159 lt!1519693)))) (content!7524 (toList!2166 lt!1519694))))))

(declare-fun bs!603880 () Bool)

(assert (= bs!603880 d!1266390))

(declare-fun m!4890275 () Bool)

(assert (=> bs!603880 m!4890275))

(declare-fun m!4890277 () Bool)

(assert (=> bs!603880 m!4890277))

(assert (=> b!4298106 d!1266390))

(declare-fun d!1266392 () Bool)

(declare-fun lt!1519735 () ListMap!1439)

(assert (=> d!1266392 (invariantList!529 (toList!2166 lt!1519735))))

(declare-datatypes ((tuple2!45762 0))(
  ( (tuple2!45763 (_1!26160 (_ BitVec 64)) (_2!26160 List!48027)) )
))
(declare-datatypes ((List!48029 0))(
  ( (Nil!47905) (Cons!47905 (h!53325 tuple2!45762) (t!354676 List!48029)) )
))
(declare-fun extractMap!262 (List!48029) ListMap!1439)

(declare-datatypes ((ListLongMap!787 0))(
  ( (ListLongMap!788 (toList!2167 List!48029)) )
))
(declare-fun map!9861 (MutLongMap!4499) ListLongMap!787)

(assert (=> d!1266392 (= lt!1519735 (extractMap!262 (toList!2167 (map!9861 (v!41844 (underlying!9228 (_2!26159 lt!1519693)))))))))

(assert (=> d!1266392 (valid!3477 (_2!26159 lt!1519693))))

(assert (=> d!1266392 (= (map!9860 (_2!26159 lt!1519693)) lt!1519735)))

(declare-fun bs!603881 () Bool)

(assert (= bs!603881 d!1266392))

(declare-fun m!4890279 () Bool)

(assert (=> bs!603881 m!4890279))

(declare-fun m!4890281 () Bool)

(assert (=> bs!603881 m!4890281))

(declare-fun m!4890283 () Bool)

(assert (=> bs!603881 m!4890283))

(assert (=> bs!603881 m!4890217))

(assert (=> b!4298106 d!1266392))

(declare-fun d!1266394 () Bool)

(declare-fun res!1761640 () Bool)

(declare-fun e!2671394 () Bool)

(assert (=> d!1266394 (=> (not res!1761640) (not e!2671394))))

(declare-fun valid!3478 (MutLongMap!4499) Bool)

(assert (=> d!1266394 (= res!1761640 (valid!3478 (v!41844 (underlying!9228 (_2!26159 lt!1519693)))))))

(assert (=> d!1266394 (= (valid!3477 (_2!26159 lt!1519693)) e!2671394)))

(declare-fun b!4298169 () Bool)

(declare-fun res!1761641 () Bool)

(assert (=> b!4298169 (=> (not res!1761641) (not e!2671394))))

(declare-fun lambda!131846 () Int)

(declare-fun forall!8605 (List!48029 Int) Bool)

(assert (=> b!4298169 (= res!1761641 (forall!8605 (toList!2167 (map!9861 (v!41844 (underlying!9228 (_2!26159 lt!1519693))))) lambda!131846))))

(declare-fun b!4298170 () Bool)

(declare-fun allKeysSameHashInMap!262 (ListLongMap!787 Hashable!4415) Bool)

(assert (=> b!4298170 (= e!2671394 (allKeysSameHashInMap!262 (map!9861 (v!41844 (underlying!9228 (_2!26159 lt!1519693)))) (hashF!6447 (_2!26159 lt!1519693))))))

(assert (= (and d!1266394 res!1761640) b!4298169))

(assert (= (and b!4298169 res!1761641) b!4298170))

(declare-fun m!4890285 () Bool)

(assert (=> d!1266394 m!4890285))

(assert (=> b!4298169 m!4890281))

(declare-fun m!4890287 () Bool)

(assert (=> b!4298169 m!4890287))

(assert (=> b!4298170 m!4890281))

(assert (=> b!4298170 m!4890281))

(declare-fun m!4890289 () Bool)

(assert (=> b!4298170 m!4890289))

(assert (=> b!4298102 d!1266394))

(declare-fun d!1266396 () Bool)

(declare-fun res!1761642 () Bool)

(declare-fun e!2671395 () Bool)

(assert (=> d!1266396 (=> res!1761642 e!2671395)))

(assert (=> d!1266396 (= res!1761642 ((_ is Nil!47903) (toList!2166 lt!1519695)))))

(assert (=> d!1266396 (= (forall!8604 (toList!2166 lt!1519695) p!6034) e!2671395)))

(declare-fun b!4298171 () Bool)

(declare-fun e!2671396 () Bool)

(assert (=> b!4298171 (= e!2671395 e!2671396)))

(declare-fun res!1761643 () Bool)

(assert (=> b!4298171 (=> (not res!1761643) (not e!2671396))))

(assert (=> b!4298171 (= res!1761643 (dynLambda!20343 p!6034 (h!53323 (toList!2166 lt!1519695))))))

(declare-fun b!4298172 () Bool)

(assert (=> b!4298172 (= e!2671396 (forall!8604 (t!354668 (toList!2166 lt!1519695)) p!6034))))

(assert (= (and d!1266396 (not res!1761642)) b!4298171))

(assert (= (and b!4298171 res!1761643) b!4298172))

(declare-fun b_lambda!126201 () Bool)

(assert (=> (not b_lambda!126201) (not b!4298171)))

(declare-fun t!354674 () Bool)

(declare-fun tb!257131 () Bool)

(assert (=> (and start!412660 (= p!6034 p!6034) t!354674) tb!257131))

(declare-fun result!314376 () Bool)

(assert (=> tb!257131 (= result!314376 true)))

(assert (=> b!4298171 t!354674))

(declare-fun b_and!339153 () Bool)

(assert (= b_and!339151 (and (=> t!354674 result!314376) b_and!339153)))

(declare-fun m!4890291 () Bool)

(assert (=> b!4298171 m!4890291))

(declare-fun m!4890293 () Bool)

(assert (=> b!4298172 m!4890293))

(assert (=> b!4298111 d!1266396))

(declare-fun d!1266398 () Bool)

(declare-fun lt!1519736 () ListMap!1439)

(assert (=> d!1266398 (invariantList!529 (toList!2166 lt!1519736))))

(assert (=> d!1266398 (= lt!1519736 (extractMap!262 (toList!2167 (map!9861 (v!41844 (underlying!9228 hm!64))))))))

(assert (=> d!1266398 (valid!3477 hm!64)))

(assert (=> d!1266398 (= (map!9860 hm!64) lt!1519736)))

(declare-fun bs!603882 () Bool)

(assert (= bs!603882 d!1266398))

(declare-fun m!4890295 () Bool)

(assert (=> bs!603882 m!4890295))

(declare-fun m!4890297 () Bool)

(assert (=> bs!603882 m!4890297))

(declare-fun m!4890299 () Bool)

(assert (=> bs!603882 m!4890299))

(assert (=> bs!603882 m!4890193))

(assert (=> b!4298111 d!1266398))

(declare-fun d!1266400 () Bool)

(assert (=> d!1266400 (= (array_inv!5147 (_keys!4799 (v!41843 (underlying!9227 (v!41844 (underlying!9228 hm!64)))))) (bvsge (size!35222 (_keys!4799 (v!41843 (underlying!9227 (v!41844 (underlying!9228 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4298114 d!1266400))

(declare-fun d!1266402 () Bool)

(assert (=> d!1266402 (= (array_inv!5148 (_values!4780 (v!41843 (underlying!9227 (v!41844 (underlying!9228 hm!64)))))) (bvsge (size!35223 (_values!4780 (v!41843 (underlying!9227 (v!41844 (underlying!9228 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4298114 d!1266402))

(declare-fun bs!603883 () Bool)

(declare-fun b!4298229 () Bool)

(assert (= bs!603883 (and b!4298229 b!4298169)))

(declare-fun lambda!131855 () Int)

(assert (=> bs!603883 (= lambda!131855 lambda!131846)))

(declare-fun bs!603884 () Bool)

(declare-fun b!4298218 () Bool)

(assert (= bs!603884 (and b!4298218 b!4298169)))

(declare-fun lambda!131856 () Int)

(assert (=> bs!603884 (= lambda!131856 lambda!131846)))

(declare-fun bs!603885 () Bool)

(assert (= bs!603885 (and b!4298218 b!4298229)))

(assert (=> bs!603885 (= lambda!131856 lambda!131855)))

(declare-fun bm!295264 () Bool)

(declare-fun call!295281 () Bool)

(declare-fun call!295285 () ListMap!1439)

(declare-fun call!295282 () ListMap!1439)

(assert (=> bm!295264 (= call!295281 (eq!89 call!295285 call!295282))))

(declare-fun bm!295265 () Bool)

(declare-fun call!295272 () Bool)

(declare-fun call!295280 () ListMap!1439)

(declare-fun e!2671426 () ListMap!1439)

(assert (=> bm!295265 (= call!295272 (eq!89 call!295280 e!2671426))))

(declare-fun c!731175 () Bool)

(declare-fun c!731176 () Bool)

(assert (=> bm!295265 (= c!731175 c!731176)))

(declare-fun bm!295266 () Bool)

(declare-fun call!295274 () List!48027)

(declare-fun lt!1519896 () (_ BitVec 64))

(declare-fun lt!1519863 () (_ BitVec 64))

(declare-fun c!731178 () Bool)

(declare-fun apply!10867 (MutLongMap!4499 (_ BitVec 64)) List!48027)

(assert (=> bm!295266 (= call!295274 (apply!10867 (v!41844 (underlying!9228 hm!64)) (ite c!731178 lt!1519863 lt!1519896)))))

(declare-fun bm!295267 () Bool)

(declare-fun lt!1519885 () List!48027)

(declare-fun lt!1519879 () List!48027)

(declare-fun call!295290 () Unit!66595)

(declare-fun lemmaRemovePairForKeyPreservesHash!101 (List!48027 K!8994 (_ BitVec 64) Hashable!4415) Unit!66595)

(assert (=> bm!295267 (= call!295290 (lemmaRemovePairForKeyPreservesHash!101 (ite c!731178 lt!1519885 lt!1519879) k0!1716 (ite c!731178 lt!1519863 lt!1519896) (hashF!6447 hm!64)))))

(declare-datatypes ((tuple2!45764 0))(
  ( (tuple2!45765 (_1!26161 Bool) (_2!26161 MutLongMap!4499)) )
))
(declare-fun lt!1519878 () tuple2!45764)

(declare-fun lt!1519891 () MutableMap!4405)

(declare-fun b!4298211 () Bool)

(declare-fun e!2671420 () tuple2!45760)

(declare-datatypes ((tuple2!45766 0))(
  ( (tuple2!45767 (_1!26162 Unit!66595) (_2!26162 MutableMap!4405)) )
))
(declare-fun Unit!66599 () Unit!66595)

(declare-fun Unit!66600 () Unit!66595)

(assert (=> b!4298211 (= e!2671420 (tuple2!45761 (_1!26161 lt!1519878) (_2!26162 (ite false (tuple2!45767 Unit!66599 (HashMap!4405 (Cell!17808 (_2!26161 lt!1519878)) (hashF!6447 hm!64) (bvadd (_size!9042 hm!64) #b00000000000000000000000000000001) (defaultValue!4576 hm!64))) (tuple2!45767 Unit!66600 lt!1519891)))))))

(declare-fun call!295287 () (_ BitVec 64))

(assert (=> b!4298211 (= lt!1519863 call!295287)))

(assert (=> b!4298211 (= lt!1519885 call!295274)))

(declare-fun lt!1519849 () List!48027)

(declare-fun call!295273 () List!48027)

(assert (=> b!4298211 (= lt!1519849 (Cons!47903 (tuple2!45759 k0!1716 v!9471) call!295273))))

(declare-fun call!295279 () tuple2!45764)

(assert (=> b!4298211 (= lt!1519878 call!295279)))

(assert (=> b!4298211 (= lt!1519891 (HashMap!4405 (Cell!17808 (_2!26161 lt!1519878)) (hashF!6447 hm!64) (_size!9042 hm!64) (defaultValue!4576 hm!64)))))

(declare-fun c!731173 () Bool)

(assert (=> b!4298211 (= c!731173 (_1!26161 lt!1519878))))

(declare-fun lt!1519883 () Unit!66595)

(declare-fun e!2671425 () Unit!66595)

(assert (=> b!4298211 (= lt!1519883 e!2671425)))

(declare-fun b!4298212 () Bool)

(declare-fun e!2671428 () Bool)

(declare-fun call!295289 () Bool)

(assert (=> b!4298212 (= e!2671428 call!295289)))

(declare-fun lt!1519853 () List!48027)

(declare-fun bm!295268 () Bool)

(declare-fun lt!1519882 () ListLongMap!787)

(declare-fun call!295296 () ListLongMap!787)

(declare-fun +!149 (ListLongMap!787 tuple2!45762) ListLongMap!787)

(assert (=> bm!295268 (= call!295296 (+!149 lt!1519882 (ite c!731178 (tuple2!45763 lt!1519863 lt!1519849) (tuple2!45763 lt!1519896 lt!1519853))))))

(declare-fun call!295284 () Bool)

(declare-fun bm!295269 () Bool)

(declare-fun allKeysSameHash!114 (List!48027 (_ BitVec 64) Hashable!4415) Bool)

(assert (=> bm!295269 (= call!295284 (allKeysSameHash!114 call!295273 (ite c!731178 lt!1519863 lt!1519896) (hashF!6447 hm!64)))))

(declare-fun bm!295270 () Bool)

(declare-fun lt!1519857 () MutableMap!4405)

(declare-fun call!295276 () ListMap!1439)

(assert (=> bm!295270 (= call!295276 (map!9860 (ite c!731178 lt!1519891 lt!1519857)))))

(declare-fun lt!1519859 () tuple2!45764)

(declare-fun call!295278 () ListLongMap!787)

(declare-fun bm!295271 () Bool)

(assert (=> bm!295271 (= call!295278 (map!9861 (ite c!731178 (_2!26161 lt!1519878) (_2!26161 lt!1519859))))))

(declare-fun bm!295272 () Bool)

(declare-fun removePairForKey!131 (List!48027 K!8994) List!48027)

(assert (=> bm!295272 (= call!295273 (removePairForKey!131 (ite c!731178 lt!1519885 lt!1519879) k0!1716))))

(declare-fun call!295270 () Bool)

(declare-fun lt!1519862 () ListLongMap!787)

(declare-fun lt!1519886 () ListLongMap!787)

(declare-fun bm!295273 () Bool)

(assert (=> bm!295273 (= call!295270 (forall!8605 (ite c!731178 (toList!2167 lt!1519886) (toList!2167 lt!1519862)) (ite c!731178 lambda!131855 lambda!131856)))))

(declare-fun bm!295274 () Bool)

(declare-fun call!295293 () Bool)

(assert (=> bm!295274 (= call!295293 (forall!8605 (toList!2167 call!295278) (ite c!731178 lambda!131855 lambda!131856)))))

(declare-fun b!4298213 () Bool)

(declare-fun e!2671429 () Bool)

(assert (=> b!4298213 (= e!2671429 call!295289)))

(declare-fun bm!295275 () Bool)

(declare-fun call!295286 () Bool)

(assert (=> bm!295275 (= call!295286 (allKeysSameHash!114 (ite c!731178 lt!1519885 lt!1519879) (ite c!731178 lt!1519863 lt!1519896) (hashF!6447 hm!64)))))

(declare-fun call!295297 () Bool)

(declare-fun call!295298 () ListMap!1439)

(declare-fun call!295292 () ListMap!1439)

(declare-fun bm!295276 () Bool)

(declare-fun call!295291 () ListMap!1439)

(assert (=> bm!295276 (= call!295297 (eq!89 (ite c!731178 call!295292 call!295291) call!295298))))

(declare-fun b!4298214 () Bool)

(declare-fun call!295277 () ListMap!1439)

(assert (=> b!4298214 (= e!2671426 call!295277)))

(declare-fun bm!295277 () Bool)

(declare-fun call!295271 () ListMap!1439)

(assert (=> bm!295277 (= call!295282 (+!148 call!295271 (tuple2!45759 k0!1716 v!9471)))))

(declare-fun b!4298215 () Bool)

(declare-fun e!2671424 () Unit!66595)

(declare-fun lt!1519901 () Unit!66595)

(assert (=> b!4298215 (= e!2671424 lt!1519901)))

(declare-fun lt!1519868 () Unit!66595)

(declare-fun call!295275 () Unit!66595)

(assert (=> b!4298215 (= lt!1519868 call!295275)))

(assert (=> b!4298215 call!295286))

(declare-fun lt!1519852 () Unit!66595)

(assert (=> b!4298215 (= lt!1519852 lt!1519868)))

(assert (=> b!4298215 (= lt!1519901 call!295290)))

(assert (=> b!4298215 call!295284))

(declare-fun bm!295278 () Bool)

(declare-fun lt!1519877 () ListMap!1439)

(declare-fun call!295269 () Unit!66595)

(declare-fun lt!1519887 () ListMap!1439)

(declare-fun lt!1519870 () ListMap!1439)

(declare-fun lt!1519880 () ListMap!1439)

(declare-fun lemmaEquivalentThenSameContains!26 (ListMap!1439 ListMap!1439 K!8994) Unit!66595)

(assert (=> bm!295278 (= call!295269 (lemmaEquivalentThenSameContains!26 (ite c!731178 lt!1519870 lt!1519880) (ite c!731178 lt!1519887 lt!1519877) k0!1716))))

(declare-fun b!4298216 () Bool)

(declare-fun res!1761654 () Bool)

(declare-fun e!2671421 () Bool)

(assert (=> b!4298216 (=> (not res!1761654) (not e!2671421))))

(declare-fun lt!1519864 () tuple2!45760)

(assert (=> b!4298216 (= res!1761654 (valid!3477 (_2!26159 lt!1519864)))))

(declare-fun bm!295279 () Bool)

(declare-fun call!295294 () Bool)

(declare-fun contains!9823 (ListMap!1439 K!8994) Bool)

(assert (=> bm!295279 (= call!295294 (contains!9823 (ite c!731178 lt!1519870 lt!1519880) k0!1716))))

(declare-fun b!4298217 () Bool)

(declare-fun e!2671423 () List!48027)

(assert (=> b!4298217 (= e!2671423 Nil!47903)))

(assert (=> b!4298218 (contains!9823 call!295291 k0!1716)))

(declare-fun lt!1519865 () Unit!66595)

(declare-fun Unit!66601 () Unit!66595)

(assert (=> b!4298218 (= lt!1519865 Unit!66601)))

(assert (=> b!4298218 (contains!9823 call!295298 k0!1716)))

(declare-fun lt!1519895 () Unit!66595)

(declare-fun lt!1519894 () Unit!66595)

(assert (=> b!4298218 (= lt!1519895 lt!1519894)))

(declare-fun call!295288 () Bool)

(assert (=> b!4298218 (= call!295294 call!295288)))

(assert (=> b!4298218 (= lt!1519894 call!295269)))

(assert (=> b!4298218 (= lt!1519877 call!295298)))

(assert (=> b!4298218 (= lt!1519880 call!295291)))

(declare-fun lt!1519869 () Unit!66595)

(declare-fun Unit!66602 () Unit!66595)

(assert (=> b!4298218 (= lt!1519869 Unit!66602)))

(assert (=> b!4298218 call!295297))

(declare-fun lt!1519847 () Unit!66595)

(declare-fun Unit!66603 () Unit!66595)

(assert (=> b!4298218 (= lt!1519847 Unit!66603)))

(declare-fun call!295299 () Bool)

(assert (=> b!4298218 call!295299))

(declare-fun lt!1519884 () Unit!66595)

(declare-fun Unit!66604 () Unit!66595)

(assert (=> b!4298218 (= lt!1519884 Unit!66604)))

(assert (=> b!4298218 call!295293))

(declare-fun lt!1519893 () Unit!66595)

(declare-fun lt!1519851 () Unit!66595)

(assert (=> b!4298218 (= lt!1519893 lt!1519851)))

(assert (=> b!4298218 call!295281))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!26 (ListLongMap!787 (_ BitVec 64) List!48027 K!8994 V!9196 Hashable!4415) Unit!66595)

(assert (=> b!4298218 (= lt!1519851 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!26 lt!1519882 lt!1519896 lt!1519853 k0!1716 v!9471 (hashF!6447 hm!64)))))

(declare-fun lt!1519890 () Unit!66595)

(declare-fun lt!1519858 () Unit!66595)

(assert (=> b!4298218 (= lt!1519890 lt!1519858)))

(assert (=> b!4298218 e!2671429))

(declare-fun res!1761657 () Bool)

(assert (=> b!4298218 (=> (not res!1761657) (not e!2671429))))

(assert (=> b!4298218 (= res!1761657 call!295270)))

(assert (=> b!4298218 (= lt!1519862 call!295296)))

(declare-fun call!295295 () Unit!66595)

(assert (=> b!4298218 (= lt!1519858 call!295295)))

(declare-fun lt!1519872 () Unit!66595)

(assert (=> b!4298218 (= lt!1519872 e!2671424)))

(declare-fun c!731174 () Bool)

(declare-fun isEmpty!28038 (List!48027) Bool)

(assert (=> b!4298218 (= c!731174 (not (isEmpty!28038 lt!1519879)))))

(declare-fun e!2671419 () Unit!66595)

(declare-fun Unit!66605 () Unit!66595)

(assert (=> b!4298218 (= e!2671419 Unit!66605)))

(declare-fun bm!295280 () Bool)

(assert (=> bm!295280 (= call!295291 call!295276)))

(declare-fun lt!1519848 () ListMap!1439)

(declare-fun bm!295281 () Bool)

(assert (=> bm!295281 (= call!295298 (+!148 lt!1519848 (tuple2!45759 k0!1716 v!9471)))))

(declare-fun bm!295282 () Bool)

(declare-fun update!307 (MutLongMap!4499 (_ BitVec 64) List!48027) tuple2!45764)

(assert (=> bm!295282 (= call!295279 (update!307 (v!41844 (underlying!9228 hm!64)) (ite c!731178 lt!1519863 lt!1519896) (ite c!731178 lt!1519849 lt!1519853)))))

(declare-fun bm!295283 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!92 (ListLongMap!787 (_ BitVec 64) List!48027 Hashable!4415) Unit!66595)

(assert (=> bm!295283 (= call!295295 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!92 lt!1519882 (ite c!731178 lt!1519863 lt!1519896) (ite c!731178 lt!1519849 lt!1519853) (hashF!6447 hm!64)))))

(declare-fun bm!295284 () Bool)

(assert (=> bm!295284 (= call!295289 (allKeysSameHashInMap!262 (ite c!731178 lt!1519886 lt!1519862) (hashF!6447 hm!64)))))

(declare-fun b!4298219 () Bool)

(declare-fun Unit!66606 () Unit!66595)

(declare-fun Unit!66607 () Unit!66595)

(assert (=> b!4298219 (= e!2671420 (tuple2!45761 (_1!26161 lt!1519859) (_2!26162 (ite (_1!26161 lt!1519859) (tuple2!45767 Unit!66606 (HashMap!4405 (Cell!17808 (_2!26161 lt!1519859)) (hashF!6447 hm!64) (bvadd (_size!9042 hm!64) #b00000000000000000000000000000001) (defaultValue!4576 hm!64))) (tuple2!45767 Unit!66607 lt!1519857)))))))

(assert (=> b!4298219 (= lt!1519896 call!295287)))

(declare-fun c!731177 () Bool)

(declare-fun contains!9824 (MutLongMap!4499 (_ BitVec 64)) Bool)

(assert (=> b!4298219 (= c!731177 (contains!9824 (v!41844 (underlying!9228 hm!64)) lt!1519896))))

(assert (=> b!4298219 (= lt!1519879 e!2671423)))

(assert (=> b!4298219 (= lt!1519853 (Cons!47903 (tuple2!45759 k0!1716 v!9471) lt!1519879))))

(assert (=> b!4298219 (= lt!1519859 call!295279)))

(assert (=> b!4298219 (= lt!1519857 (HashMap!4405 (Cell!17808 (_2!26161 lt!1519859)) (hashF!6447 hm!64) (_size!9042 hm!64) (defaultValue!4576 hm!64)))))

(declare-fun c!731179 () Bool)

(assert (=> b!4298219 (= c!731179 (_1!26161 lt!1519859))))

(declare-fun lt!1519875 () Unit!66595)

(assert (=> b!4298219 (= lt!1519875 e!2671419)))

(declare-fun bm!295285 () Bool)

(assert (=> bm!295285 (= call!295271 (extractMap!262 (toList!2167 lt!1519882)))))

(declare-fun bm!295286 () Bool)

(assert (=> bm!295286 (= call!295280 (map!9860 (_2!26159 lt!1519864)))))

(declare-fun b!4298220 () Bool)

(declare-fun Unit!66608 () Unit!66595)

(assert (=> b!4298220 (= e!2671424 Unit!66608)))

(declare-fun bm!295287 () Bool)

(assert (=> bm!295287 (= call!295288 (contains!9823 (ite c!731178 lt!1519887 lt!1519877) k0!1716))))

(declare-fun b!4298221 () Bool)

(assert (=> b!4298221 (= call!295291 lt!1519848)))

(declare-fun lt!1519889 () Unit!66595)

(declare-fun Unit!66609 () Unit!66595)

(assert (=> b!4298221 (= lt!1519889 Unit!66609)))

(declare-fun call!295283 () Bool)

(assert (=> b!4298221 call!295283))

(declare-fun Unit!66610 () Unit!66595)

(assert (=> b!4298221 (= e!2671419 Unit!66610)))

(declare-fun b!4298222 () Bool)

(assert (=> b!4298222 (= e!2671426 (+!148 call!295277 (tuple2!45759 k0!1716 v!9471)))))

(declare-fun b!4298223 () Bool)

(declare-fun e!2671422 () Bool)

(assert (=> b!4298223 (= e!2671422 call!295272)))

(declare-fun b!4298224 () Bool)

(assert (=> b!4298224 (= e!2671423 call!295274)))

(declare-fun b!4298225 () Bool)

(assert (=> b!4298225 (= call!295292 lt!1519848)))

(declare-fun lt!1519861 () Unit!66595)

(declare-fun Unit!66611 () Unit!66595)

(assert (=> b!4298225 (= lt!1519861 Unit!66611)))

(assert (=> b!4298225 call!295283))

(declare-fun Unit!66612 () Unit!66595)

(assert (=> b!4298225 (= e!2671425 Unit!66612)))

(declare-fun bm!295288 () Bool)

(assert (=> bm!295288 (= call!295285 (extractMap!262 (toList!2167 call!295296)))))

(declare-fun bm!295289 () Bool)

(assert (=> bm!295289 (= call!295299 (allKeysSameHashInMap!262 call!295278 (hashF!6447 hm!64)))))

(declare-fun bm!295290 () Bool)

(declare-fun hash!830 (Hashable!4415 K!8994) (_ BitVec 64))

(assert (=> bm!295290 (= call!295287 (hash!830 (hashF!6447 hm!64) k0!1716))))

(declare-fun b!4298226 () Bool)

(declare-fun e!2671427 () Bool)

(assert (=> b!4298226 (= e!2671427 call!295272)))

(declare-fun bm!295291 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!105 (List!48029 (_ BitVec 64) List!48027 Hashable!4415) Unit!66595)

(assert (=> bm!295291 (= call!295275 (lemmaInLongMapAllKeySameHashThenForTuple!105 (toList!2167 lt!1519882) (ite c!731178 lt!1519863 lt!1519896) (ite c!731178 lt!1519885 lt!1519879) (hashF!6447 hm!64)))))

(declare-fun b!4298227 () Bool)

(assert (=> b!4298227 (= e!2671422 e!2671427)))

(declare-fun res!1761658 () Bool)

(assert (=> b!4298227 (= res!1761658 (contains!9823 call!295280 k0!1716))))

(assert (=> b!4298227 (=> (not res!1761658) (not e!2671427))))

(declare-fun b!4298228 () Bool)

(assert (=> b!4298228 (= e!2671421 e!2671422)))

(assert (=> b!4298228 (= c!731176 (_1!26159 lt!1519864))))

(assert (=> b!4298229 call!295297))

(declare-fun lt!1519892 () Unit!66595)

(declare-fun Unit!66613 () Unit!66595)

(assert (=> b!4298229 (= lt!1519892 Unit!66613)))

(assert (=> b!4298229 call!295299))

(declare-fun lt!1519866 () Unit!66595)

(declare-fun Unit!66614 () Unit!66595)

(assert (=> b!4298229 (= lt!1519866 Unit!66614)))

(assert (=> b!4298229 call!295293))

(declare-fun lt!1519871 () Unit!66595)

(declare-fun lt!1519856 () Unit!66595)

(assert (=> b!4298229 (= lt!1519871 lt!1519856)))

(assert (=> b!4298229 (= call!295294 call!295288)))

(assert (=> b!4298229 (= lt!1519856 call!295269)))

(assert (=> b!4298229 (= lt!1519887 call!295298)))

(assert (=> b!4298229 (= lt!1519870 call!295292)))

(declare-fun lt!1519873 () Unit!66595)

(declare-fun lt!1519855 () Unit!66595)

(assert (=> b!4298229 (= lt!1519873 lt!1519855)))

(assert (=> b!4298229 call!295281))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!26 (ListLongMap!787 (_ BitVec 64) List!48027 K!8994 V!9196 Hashable!4415) Unit!66595)

(assert (=> b!4298229 (= lt!1519855 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!26 lt!1519882 lt!1519863 lt!1519849 k0!1716 v!9471 (hashF!6447 hm!64)))))

(declare-fun lt!1519860 () Unit!66595)

(declare-fun lt!1519900 () Unit!66595)

(assert (=> b!4298229 (= lt!1519860 lt!1519900)))

(assert (=> b!4298229 e!2671428))

(declare-fun res!1761656 () Bool)

(assert (=> b!4298229 (=> (not res!1761656) (not e!2671428))))

(assert (=> b!4298229 (= res!1761656 call!295270)))

(assert (=> b!4298229 (= lt!1519886 call!295296)))

(assert (=> b!4298229 (= lt!1519900 call!295295)))

(declare-fun lt!1519867 () Unit!66595)

(declare-fun Unit!66615 () Unit!66595)

(assert (=> b!4298229 (= lt!1519867 Unit!66615)))

(declare-fun noDuplicateKeys!142 (List!48027) Bool)

(assert (=> b!4298229 (noDuplicateKeys!142 lt!1519849)))

(declare-fun lt!1519854 () Unit!66595)

(declare-fun Unit!66616 () Unit!66595)

(assert (=> b!4298229 (= lt!1519854 Unit!66616)))

(declare-fun containsKey!221 (List!48027 K!8994) Bool)

(assert (=> b!4298229 (not (containsKey!221 call!295273 k0!1716))))

(declare-fun lt!1519874 () Unit!66595)

(declare-fun Unit!66617 () Unit!66595)

(assert (=> b!4298229 (= lt!1519874 Unit!66617)))

(declare-fun lt!1519897 () Unit!66595)

(declare-fun lt!1519876 () Unit!66595)

(assert (=> b!4298229 (= lt!1519897 lt!1519876)))

(assert (=> b!4298229 (noDuplicateKeys!142 call!295273)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!119 (List!48027 K!8994) Unit!66595)

(assert (=> b!4298229 (= lt!1519876 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!119 lt!1519885 k0!1716))))

(declare-fun lt!1519898 () Unit!66595)

(declare-fun lt!1519881 () Unit!66595)

(assert (=> b!4298229 (= lt!1519898 lt!1519881)))

(assert (=> b!4298229 call!295284))

(assert (=> b!4298229 (= lt!1519881 call!295290)))

(declare-fun lt!1519850 () Unit!66595)

(declare-fun lt!1519888 () Unit!66595)

(assert (=> b!4298229 (= lt!1519850 lt!1519888)))

(assert (=> b!4298229 call!295286))

(assert (=> b!4298229 (= lt!1519888 call!295275)))

(declare-fun Unit!66618 () Unit!66595)

(assert (=> b!4298229 (= e!2671425 Unit!66618)))

(declare-fun d!1266404 () Bool)

(assert (=> d!1266404 e!2671421))

(declare-fun res!1761655 () Bool)

(assert (=> d!1266404 (=> (not res!1761655) (not e!2671421))))

(assert (=> d!1266404 (= res!1761655 ((_ is HashMap!4405) (_2!26159 lt!1519864)))))

(declare-fun lt!1519899 () tuple2!45760)

(assert (=> d!1266404 (= lt!1519864 (tuple2!45761 (_1!26159 lt!1519899) (_2!26159 lt!1519899)))))

(assert (=> d!1266404 (= lt!1519899 e!2671420)))

(declare-fun contains!9825 (MutableMap!4405 K!8994) Bool)

(assert (=> d!1266404 (= c!731178 (contains!9825 hm!64 k0!1716))))

(assert (=> d!1266404 (= lt!1519882 (map!9861 (v!41844 (underlying!9228 hm!64))))))

(assert (=> d!1266404 (= lt!1519848 (map!9860 hm!64))))

(assert (=> d!1266404 (valid!3477 hm!64)))

(assert (=> d!1266404 (= (update!306 hm!64 k0!1716 v!9471) lt!1519864)))

(declare-fun bm!295292 () Bool)

(assert (=> bm!295292 (= call!295277 (map!9860 hm!64))))

(declare-fun bm!295293 () Bool)

(assert (=> bm!295293 (= call!295292 call!295276)))

(declare-fun bm!295294 () Bool)

(assert (=> bm!295294 (= call!295283 (valid!3477 (ite c!731178 lt!1519891 lt!1519857)))))

(assert (= (and d!1266404 c!731178) b!4298211))

(assert (= (and d!1266404 (not c!731178)) b!4298219))

(assert (= (and b!4298211 c!731173) b!4298229))

(assert (= (and b!4298211 (not c!731173)) b!4298225))

(assert (= (and b!4298229 res!1761656) b!4298212))

(assert (= (or b!4298229 b!4298225) bm!295293))

(assert (= (and b!4298219 c!731177) b!4298224))

(assert (= (and b!4298219 (not c!731177)) b!4298217))

(assert (= (and b!4298219 c!731179) b!4298218))

(assert (= (and b!4298219 (not c!731179)) b!4298221))

(assert (= (and b!4298218 c!731174) b!4298215))

(assert (= (and b!4298218 (not c!731174)) b!4298220))

(assert (= (and b!4298218 res!1761657) b!4298213))

(assert (= (or b!4298218 b!4298221) bm!295280))

(assert (= (or b!4298229 b!4298218) bm!295281))

(assert (= (or b!4298229 b!4298215) bm!295267))

(assert (= (or b!4298225 b!4298221) bm!295294))

(assert (= (or b!4298211 b!4298224) bm!295266))

(assert (= (or b!4298229 b!4298218) bm!295285))

(assert (= (or b!4298229 b!4298218) bm!295279))

(assert (= (or b!4298229 b!4298218) bm!295287))

(assert (= (or b!4298229 b!4298218) bm!295283))

(assert (= (or b!4298212 b!4298213) bm!295284))

(assert (= (or b!4298229 b!4298218) bm!295268))

(assert (= (or b!4298229 b!4298218) bm!295273))

(assert (= (or b!4298229 b!4298215) bm!295275))

(assert (= (or b!4298211 b!4298219) bm!295290))

(assert (= (or bm!295293 bm!295280) bm!295270))

(assert (= (or b!4298229 b!4298218) bm!295271))

(assert (= (or b!4298229 b!4298218) bm!295278))

(assert (= (or b!4298211 b!4298219) bm!295282))

(assert (= (or b!4298211 b!4298229 b!4298215) bm!295272))

(assert (= (or b!4298229 b!4298215) bm!295291))

(assert (= (or b!4298229 b!4298218) bm!295274))

(assert (= (or b!4298229 b!4298218) bm!295289))

(assert (= (or b!4298229 b!4298218) bm!295276))

(assert (= (or b!4298229 b!4298218) bm!295277))

(assert (= (or b!4298229 b!4298215) bm!295269))

(assert (= (or b!4298229 b!4298218) bm!295288))

(assert (= (or b!4298229 b!4298218) bm!295264))

(assert (= (and d!1266404 res!1761655) b!4298216))

(assert (= (and b!4298216 res!1761654) b!4298228))

(assert (= (and b!4298228 c!731176) b!4298227))

(assert (= (and b!4298228 (not c!731176)) b!4298223))

(assert (= (and b!4298227 res!1761658) b!4298226))

(assert (= (or b!4298226 b!4298223) bm!295292))

(assert (= (or b!4298227 b!4298226 b!4298223) bm!295286))

(assert (= (or b!4298226 b!4298223) bm!295265))

(assert (= (and bm!295265 c!731175) b!4298222))

(assert (= (and bm!295265 (not c!731175)) b!4298214))

(declare-fun m!4890301 () Bool)

(assert (=> bm!295265 m!4890301))

(declare-fun m!4890303 () Bool)

(assert (=> b!4298219 m!4890303))

(declare-fun m!4890305 () Bool)

(assert (=> bm!295273 m!4890305))

(declare-fun m!4890307 () Bool)

(assert (=> bm!295278 m!4890307))

(declare-fun m!4890309 () Bool)

(assert (=> bm!295275 m!4890309))

(declare-fun m!4890311 () Bool)

(assert (=> bm!295276 m!4890311))

(declare-fun m!4890313 () Bool)

(assert (=> d!1266404 m!4890313))

(assert (=> d!1266404 m!4890297))

(assert (=> d!1266404 m!4890215))

(assert (=> d!1266404 m!4890193))

(assert (=> bm!295292 m!4890215))

(declare-fun m!4890315 () Bool)

(assert (=> b!4298218 m!4890315))

(declare-fun m!4890317 () Bool)

(assert (=> b!4298218 m!4890317))

(declare-fun m!4890319 () Bool)

(assert (=> b!4298218 m!4890319))

(declare-fun m!4890321 () Bool)

(assert (=> b!4298218 m!4890321))

(declare-fun m!4890323 () Bool)

(assert (=> bm!295274 m!4890323))

(declare-fun m!4890325 () Bool)

(assert (=> bm!295267 m!4890325))

(declare-fun m!4890327 () Bool)

(assert (=> bm!295291 m!4890327))

(declare-fun m!4890329 () Bool)

(assert (=> bm!295282 m!4890329))

(declare-fun m!4890331 () Bool)

(assert (=> bm!295271 m!4890331))

(declare-fun m!4890333 () Bool)

(assert (=> bm!295289 m!4890333))

(declare-fun m!4890335 () Bool)

(assert (=> b!4298222 m!4890335))

(declare-fun m!4890337 () Bool)

(assert (=> bm!295281 m!4890337))

(declare-fun m!4890339 () Bool)

(assert (=> b!4298229 m!4890339))

(declare-fun m!4890341 () Bool)

(assert (=> b!4298229 m!4890341))

(declare-fun m!4890343 () Bool)

(assert (=> b!4298229 m!4890343))

(declare-fun m!4890345 () Bool)

(assert (=> b!4298229 m!4890345))

(declare-fun m!4890347 () Bool)

(assert (=> b!4298229 m!4890347))

(declare-fun m!4890349 () Bool)

(assert (=> bm!295269 m!4890349))

(declare-fun m!4890351 () Bool)

(assert (=> bm!295277 m!4890351))

(declare-fun m!4890353 () Bool)

(assert (=> bm!295266 m!4890353))

(declare-fun m!4890355 () Bool)

(assert (=> bm!295264 m!4890355))

(declare-fun m!4890357 () Bool)

(assert (=> bm!295285 m!4890357))

(declare-fun m!4890359 () Bool)

(assert (=> bm!295283 m!4890359))

(declare-fun m!4890361 () Bool)

(assert (=> b!4298227 m!4890361))

(declare-fun m!4890363 () Bool)

(assert (=> bm!295272 m!4890363))

(declare-fun m!4890365 () Bool)

(assert (=> bm!295288 m!4890365))

(declare-fun m!4890367 () Bool)

(assert (=> bm!295270 m!4890367))

(declare-fun m!4890369 () Bool)

(assert (=> bm!295294 m!4890369))

(declare-fun m!4890371 () Bool)

(assert (=> bm!295268 m!4890371))

(declare-fun m!4890373 () Bool)

(assert (=> bm!295284 m!4890373))

(declare-fun m!4890375 () Bool)

(assert (=> bm!295290 m!4890375))

(declare-fun m!4890377 () Bool)

(assert (=> bm!295287 m!4890377))

(declare-fun m!4890379 () Bool)

(assert (=> bm!295279 m!4890379))

(declare-fun m!4890381 () Bool)

(assert (=> b!4298216 m!4890381))

(declare-fun m!4890383 () Bool)

(assert (=> bm!295286 m!4890383))

(assert (=> b!4298109 d!1266404))

(declare-fun d!1266406 () Bool)

(declare-fun e!2671432 () Bool)

(assert (=> d!1266406 e!2671432))

(declare-fun res!1761663 () Bool)

(assert (=> d!1266406 (=> (not res!1761663) (not e!2671432))))

(declare-fun lt!1519913 () ListMap!1439)

(assert (=> d!1266406 (= res!1761663 (contains!9823 lt!1519913 (_1!26158 lt!1519696)))))

(declare-fun lt!1519911 () List!48027)

(assert (=> d!1266406 (= lt!1519913 (ListMap!1440 lt!1519911))))

(declare-fun lt!1519912 () Unit!66595)

(declare-fun lt!1519910 () Unit!66595)

(assert (=> d!1266406 (= lt!1519912 lt!1519910)))

(declare-datatypes ((Option!10154 0))(
  ( (None!10153) (Some!10153 (v!41846 V!9196)) )
))
(declare-fun getValueByKey!203 (List!48027 K!8994) Option!10154)

(assert (=> d!1266406 (= (getValueByKey!203 lt!1519911 (_1!26158 lt!1519696)) (Some!10153 (_2!26158 lt!1519696)))))

(declare-fun lemmaContainsTupThenGetReturnValue!34 (List!48027 K!8994 V!9196) Unit!66595)

(assert (=> d!1266406 (= lt!1519910 (lemmaContainsTupThenGetReturnValue!34 lt!1519911 (_1!26158 lt!1519696) (_2!26158 lt!1519696)))))

(assert (=> d!1266406 (= lt!1519911 (insertNoDuplicatedKeys!10 (toList!2166 lt!1519695) (_1!26158 lt!1519696) (_2!26158 lt!1519696)))))

(assert (=> d!1266406 (= (+!148 lt!1519695 lt!1519696) lt!1519913)))

(declare-fun b!4298234 () Bool)

(declare-fun res!1761664 () Bool)

(assert (=> b!4298234 (=> (not res!1761664) (not e!2671432))))

(assert (=> b!4298234 (= res!1761664 (= (getValueByKey!203 (toList!2166 lt!1519913) (_1!26158 lt!1519696)) (Some!10153 (_2!26158 lt!1519696))))))

(declare-fun b!4298235 () Bool)

(assert (=> b!4298235 (= e!2671432 (contains!9822 (toList!2166 lt!1519913) lt!1519696))))

(assert (= (and d!1266406 res!1761663) b!4298234))

(assert (= (and b!4298234 res!1761664) b!4298235))

(declare-fun m!4890385 () Bool)

(assert (=> d!1266406 m!4890385))

(declare-fun m!4890387 () Bool)

(assert (=> d!1266406 m!4890387))

(declare-fun m!4890389 () Bool)

(assert (=> d!1266406 m!4890389))

(declare-fun m!4890391 () Bool)

(assert (=> d!1266406 m!4890391))

(declare-fun m!4890393 () Bool)

(assert (=> b!4298234 m!4890393))

(declare-fun m!4890395 () Bool)

(assert (=> b!4298235 m!4890395))

(assert (=> b!4298109 d!1266406))

(declare-fun bs!603886 () Bool)

(declare-fun b!4298236 () Bool)

(assert (= bs!603886 (and b!4298236 b!4298169)))

(declare-fun lambda!131857 () Int)

(assert (=> bs!603886 (= lambda!131857 lambda!131846)))

(declare-fun bs!603887 () Bool)

(assert (= bs!603887 (and b!4298236 b!4298229)))

(assert (=> bs!603887 (= lambda!131857 lambda!131855)))

(declare-fun bs!603888 () Bool)

(assert (= bs!603888 (and b!4298236 b!4298218)))

(assert (=> bs!603888 (= lambda!131857 lambda!131856)))

(declare-fun d!1266408 () Bool)

(declare-fun res!1761665 () Bool)

(declare-fun e!2671433 () Bool)

(assert (=> d!1266408 (=> (not res!1761665) (not e!2671433))))

(assert (=> d!1266408 (= res!1761665 (valid!3478 (v!41844 (underlying!9228 hm!64))))))

(assert (=> d!1266408 (= (valid!3477 hm!64) e!2671433)))

(declare-fun res!1761666 () Bool)

(assert (=> b!4298236 (=> (not res!1761666) (not e!2671433))))

(assert (=> b!4298236 (= res!1761666 (forall!8605 (toList!2167 (map!9861 (v!41844 (underlying!9228 hm!64)))) lambda!131857))))

(declare-fun b!4298237 () Bool)

(assert (=> b!4298237 (= e!2671433 (allKeysSameHashInMap!262 (map!9861 (v!41844 (underlying!9228 hm!64))) (hashF!6447 hm!64)))))

(assert (= (and d!1266408 res!1761665) b!4298236))

(assert (= (and b!4298236 res!1761666) b!4298237))

(declare-fun m!4890397 () Bool)

(assert (=> d!1266408 m!4890397))

(assert (=> b!4298236 m!4890297))

(declare-fun m!4890399 () Bool)

(assert (=> b!4298236 m!4890399))

(assert (=> b!4298237 m!4890297))

(assert (=> b!4298237 m!4890297))

(declare-fun m!4890401 () Bool)

(assert (=> b!4298237 m!4890401))

(assert (=> b!4298101 d!1266408))

(declare-fun tp!1320421 () Bool)

(declare-fun e!2671436 () Bool)

(declare-fun b!4298242 () Bool)

(assert (=> b!4298242 (= e!2671436 (and tp_is_empty!23169 tp_is_empty!23171 tp!1320421))))

(assert (=> b!4298108 (= tp!1320412 e!2671436)))

(assert (= (and b!4298108 ((_ is Cons!47903) mapDefault!20214)) b!4298242))

(declare-fun tp!1320422 () Bool)

(declare-fun b!4298243 () Bool)

(declare-fun e!2671437 () Bool)

(assert (=> b!4298243 (= e!2671437 (and tp_is_empty!23169 tp_is_empty!23171 tp!1320422))))

(assert (=> b!4298114 (= tp!1320415 e!2671437)))

(assert (= (and b!4298114 ((_ is Cons!47903) (zeroValue!4758 (v!41843 (underlying!9227 (v!41844 (underlying!9228 hm!64))))))) b!4298243))

(declare-fun e!2671438 () Bool)

(declare-fun tp!1320423 () Bool)

(declare-fun b!4298244 () Bool)

(assert (=> b!4298244 (= e!2671438 (and tp_is_empty!23169 tp_is_empty!23171 tp!1320423))))

(assert (=> b!4298114 (= tp!1320418 e!2671438)))

(assert (= (and b!4298114 ((_ is Cons!47903) (minValue!4758 (v!41843 (underlying!9227 (v!41844 (underlying!9228 hm!64))))))) b!4298244))

(declare-fun condMapEmpty!20217 () Bool)

(declare-fun mapDefault!20217 () List!48027)

(assert (=> mapNonEmpty!20214 (= condMapEmpty!20217 (= mapRest!20214 ((as const (Array (_ BitVec 32) List!48027)) mapDefault!20217)))))

(declare-fun e!2671444 () Bool)

(declare-fun mapRes!20217 () Bool)

(assert (=> mapNonEmpty!20214 (= tp!1320414 (and e!2671444 mapRes!20217))))

(declare-fun b!4298252 () Bool)

(declare-fun tp!1320431 () Bool)

(assert (=> b!4298252 (= e!2671444 (and tp_is_empty!23169 tp_is_empty!23171 tp!1320431))))

(declare-fun mapIsEmpty!20217 () Bool)

(assert (=> mapIsEmpty!20217 mapRes!20217))

(declare-fun mapNonEmpty!20217 () Bool)

(declare-fun tp!1320430 () Bool)

(declare-fun e!2671443 () Bool)

(assert (=> mapNonEmpty!20217 (= mapRes!20217 (and tp!1320430 e!2671443))))

(declare-fun mapRest!20217 () (Array (_ BitVec 32) List!48027))

(declare-fun mapKey!20217 () (_ BitVec 32))

(declare-fun mapValue!20217 () List!48027)

(assert (=> mapNonEmpty!20217 (= mapRest!20214 (store mapRest!20217 mapKey!20217 mapValue!20217))))

(declare-fun tp!1320432 () Bool)

(declare-fun b!4298251 () Bool)

(assert (=> b!4298251 (= e!2671443 (and tp_is_empty!23169 tp_is_empty!23171 tp!1320432))))

(assert (= (and mapNonEmpty!20214 condMapEmpty!20217) mapIsEmpty!20217))

(assert (= (and mapNonEmpty!20214 (not condMapEmpty!20217)) mapNonEmpty!20217))

(assert (= (and mapNonEmpty!20217 ((_ is Cons!47903) mapValue!20217)) b!4298251))

(assert (= (and mapNonEmpty!20214 ((_ is Cons!47903) mapDefault!20217)) b!4298252))

(declare-fun m!4890403 () Bool)

(assert (=> mapNonEmpty!20217 m!4890403))

(declare-fun e!2671445 () Bool)

(declare-fun b!4298253 () Bool)

(declare-fun tp!1320433 () Bool)

(assert (=> b!4298253 (= e!2671445 (and tp_is_empty!23169 tp_is_empty!23171 tp!1320433))))

(assert (=> mapNonEmpty!20214 (= tp!1320416 e!2671445)))

(assert (= (and mapNonEmpty!20214 ((_ is Cons!47903) mapValue!20214)) b!4298253))

(declare-fun b_lambda!126203 () Bool)

(assert (= b_lambda!126197 (or (and start!412660 b_free!127895) b_lambda!126203)))

(declare-fun b_lambda!126205 () Bool)

(assert (= b_lambda!126201 (or (and start!412660 b_free!127895) b_lambda!126205)))

(declare-fun b_lambda!126207 () Bool)

(assert (= b_lambda!126199 (or (and start!412660 b_free!127895) b_lambda!126207)))

(check-sat (not b!4298152) (not bm!295264) (not b!4298243) b_and!339141 (not b!4298235) (not b!4298227) (not bm!295287) (not bm!295198) (not bm!295282) (not bm!295276) (not b!4298242) (not d!1266388) (not bm!295266) (not bm!295290) (not d!1266404) (not b_lambda!126195) (not bm!295269) (not mapNonEmpty!20217) (not b!4298153) (not bm!295278) tp_is_empty!23169 (not d!1266392) (not b!4298172) (not b!4298234) (not d!1266406) (not d!1266408) (not bm!295275) (not b!4298122) (not bm!295292) (not b!4298151) (not bm!295285) b_and!339153 (not b!4298229) (not b!4298244) (not bm!295271) (not d!1266386) (not bm!295268) (not bm!295286) (not bm!295201) b_and!339145 (not b!4298218) (not b!4298169) (not b_next!128601) (not d!1266390) (not bm!295273) (not b!4298251) (not b!4298157) (not bm!295288) (not bm!295283) (not bm!295284) (not b_next!128597) (not bm!295265) (not b!4298216) (not b!4298219) (not b!4298222) (not b!4298158) (not b_lambda!126205) tp_is_empty!23171 (not b!4298252) (not b!4298253) (not b!4298154) (not b!4298237) (not b!4298155) (not bm!295277) (not b!4298159) (not b!4298236) (not bm!295291) (not b!4298170) (not b_next!128599) (not d!1266394) (not d!1266398) (not bm!295294) (not bm!295274) (not bm!295281) (not bm!295267) (not b!4298120) (not bm!295272) (not bm!295289) (not bm!295279) (not b_lambda!126203) (not bm!295270) (not b_lambda!126207))
(check-sat b_and!339153 b_and!339145 b_and!339141 (not b_next!128601) (not b_next!128597) (not b_next!128599))
