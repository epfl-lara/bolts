; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412776 () Bool)

(assert start!412776)

(declare-fun b!4299208 () Bool)

(declare-fun b_free!127977 () Bool)

(declare-fun b_next!128681 () Bool)

(assert (=> b!4299208 (= b_free!127977 (not b_next!128681))))

(declare-fun tp!1320824 () Bool)

(declare-fun b_and!339275 () Bool)

(assert (=> b!4299208 (= tp!1320824 b_and!339275)))

(declare-fun b!4299215 () Bool)

(declare-fun b_free!127979 () Bool)

(declare-fun b_next!128683 () Bool)

(assert (=> b!4299215 (= b_free!127979 (not b_next!128683))))

(declare-fun tp!1320826 () Bool)

(declare-fun b_and!339277 () Bool)

(assert (=> b!4299215 (= tp!1320826 b_and!339277)))

(declare-fun b_free!127981 () Bool)

(declare-fun b_next!128685 () Bool)

(assert (=> start!412776 (= b_free!127981 (not b_next!128685))))

(declare-fun tp!1320828 () Bool)

(declare-fun b_and!339279 () Bool)

(assert (=> start!412776 (= tp!1320828 b_and!339279)))

(declare-fun b!4299207 () Bool)

(declare-fun e!2672190 () Bool)

(declare-fun e!2672196 () Bool)

(assert (=> b!4299207 (= e!2672190 e!2672196)))

(declare-fun tp!1320827 () Bool)

(declare-fun e!2672191 () Bool)

(declare-fun tp!1320825 () Bool)

(declare-fun e!2672199 () Bool)

(declare-datatypes ((K!9029 0))(
  ( (K!9030 (val!15481 Int)) )
))
(declare-datatypes ((V!9231 0))(
  ( (V!9232 (val!15482 Int)) )
))
(declare-datatypes ((tuple2!45840 0))(
  ( (tuple2!45841 (_1!26199 K!9029) (_2!26199 V!9231)) )
))
(declare-datatypes ((List!48049 0))(
  ( (Nil!47925) (Cons!47925 (h!53345 tuple2!45840) (t!354740 List!48049)) )
))
(declare-datatypes ((array!16148 0))(
  ( (array!16149 (arr!7211 (Array (_ BitVec 32) (_ BitVec 64))) (size!35250 (_ BitVec 32))) )
))
(declare-datatypes ((array!16150 0))(
  ( (array!16151 (arr!7212 (Array (_ BitVec 32) List!48049)) (size!35251 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9026 0))(
  ( (LongMapFixedSize!9027 (defaultEntry!4898 Int) (mask!12998 (_ BitVec 32)) (extraKeys!4762 (_ BitVec 32)) (zeroValue!4772 List!48049) (minValue!4772 List!48049) (_size!9069 (_ BitVec 32)) (_keys!4813 array!16148) (_values!4794 array!16150) (_vacant!4574 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17861 0))(
  ( (Cell!17862 (v!41881 LongMapFixedSize!9026)) )
))
(declare-datatypes ((MutLongMap!4513 0))(
  ( (LongMap!4513 (underlying!9255 Cell!17861)) (MutLongMapExt!4512 (__x!29564 Int)) )
))
(declare-datatypes ((Hashable!4429 0))(
  ( (HashableExt!4428 (__x!29565 Int)) )
))
(declare-datatypes ((Cell!17863 0))(
  ( (Cell!17864 (v!41882 MutLongMap!4513)) )
))
(declare-datatypes ((MutableMap!4419 0))(
  ( (MutableMapExt!4418 (__x!29566 Int)) (HashMap!4419 (underlying!9256 Cell!17863) (hashF!6461 Hashable!4429) (_size!9070 (_ BitVec 32)) (defaultValue!4590 Int)) )
))
(declare-fun hm!64 () MutableMap!4419)

(declare-fun array_inv!5167 (array!16148) Bool)

(declare-fun array_inv!5168 (array!16150) Bool)

(assert (=> b!4299208 (= e!2672199 (and tp!1320824 tp!1320827 tp!1320825 (array_inv!5167 (_keys!4813 (v!41881 (underlying!9255 (v!41882 (underlying!9256 hm!64)))))) (array_inv!5168 (_values!4794 (v!41881 (underlying!9255 (v!41882 (underlying!9256 hm!64)))))) e!2672191))))

(declare-fun b!4299209 () Bool)

(declare-fun e!2672197 () Bool)

(declare-datatypes ((tuple2!45842 0))(
  ( (tuple2!45843 (_1!26200 Bool) (_2!26200 MutableMap!4419)) )
))
(declare-fun lt!1521003 () tuple2!45842)

(declare-datatypes ((ListMap!1465 0))(
  ( (ListMap!1466 (toList!2184 List!48049)) )
))
(declare-fun lt!1521006 () ListMap!1465)

(declare-fun eq!96 (ListMap!1465 ListMap!1465) Bool)

(declare-fun map!9883 (MutableMap!4419) ListMap!1465)

(assert (=> b!4299209 (= e!2672197 (not (eq!96 (map!9883 (_2!26200 lt!1521003)) lt!1521006)))))

(declare-fun b!4299210 () Bool)

(declare-fun e!2672189 () Bool)

(assert (=> b!4299210 (= e!2672189 e!2672197)))

(declare-fun res!1762050 () Bool)

(assert (=> b!4299210 (=> (not res!1762050) (not e!2672197))))

(assert (=> b!4299210 (= res!1762050 (_1!26200 lt!1521003))))

(declare-fun k0!1716 () K!9029)

(declare-fun v!9471 () V!9231)

(declare-fun update!322 (MutableMap!4419 K!9029 V!9231) tuple2!45842)

(assert (=> b!4299210 (= lt!1521003 (update!322 hm!64 k0!1716 v!9471))))

(declare-fun lt!1521007 () ListMap!1465)

(declare-fun lt!1521004 () tuple2!45840)

(declare-fun +!164 (ListMap!1465 tuple2!45840) ListMap!1465)

(assert (=> b!4299210 (= lt!1521006 (+!164 lt!1521007 lt!1521004))))

(declare-fun mapIsEmpty!20271 () Bool)

(declare-fun mapRes!20271 () Bool)

(assert (=> mapIsEmpty!20271 mapRes!20271))

(declare-fun b!4299211 () Bool)

(declare-fun e!2672194 () Bool)

(declare-fun lt!1521005 () MutLongMap!4513)

(get-info :version)

(assert (=> b!4299211 (= e!2672194 (and e!2672190 ((_ is LongMap!4513) lt!1521005)))))

(assert (=> b!4299211 (= lt!1521005 (v!41882 (underlying!9256 hm!64)))))

(declare-fun b!4299212 () Bool)

(assert (=> b!4299212 (= e!2672196 e!2672199)))

(declare-fun res!1762049 () Bool)

(declare-fun e!2672193 () Bool)

(assert (=> start!412776 (=> (not res!1762049) (not e!2672193))))

(assert (=> start!412776 (= res!1762049 ((_ is HashMap!4419) hm!64))))

(assert (=> start!412776 e!2672193))

(declare-fun e!2672198 () Bool)

(assert (=> start!412776 e!2672198))

(declare-fun tp_is_empty!23225 () Bool)

(assert (=> start!412776 tp_is_empty!23225))

(declare-fun tp_is_empty!23227 () Bool)

(assert (=> start!412776 tp_is_empty!23227))

(assert (=> start!412776 tp!1320828))

(declare-fun b!4299213 () Bool)

(declare-fun e!2672192 () Bool)

(assert (=> b!4299213 (= e!2672193 e!2672192)))

(declare-fun res!1762048 () Bool)

(assert (=> b!4299213 (=> (not res!1762048) (not e!2672192))))

(declare-fun p!6034 () Int)

(declare-fun forall!8620 (List!48049 Int) Bool)

(assert (=> b!4299213 (= res!1762048 (forall!8620 (toList!2184 lt!1521007) p!6034))))

(assert (=> b!4299213 (= lt!1521007 (map!9883 hm!64))))

(declare-fun b!4299214 () Bool)

(declare-fun tp!1320823 () Bool)

(assert (=> b!4299214 (= e!2672191 (and tp!1320823 mapRes!20271))))

(declare-fun condMapEmpty!20271 () Bool)

(declare-fun mapDefault!20271 () List!48049)

(assert (=> b!4299214 (= condMapEmpty!20271 (= (arr!7212 (_values!4794 (v!41881 (underlying!9255 (v!41882 (underlying!9256 hm!64)))))) ((as const (Array (_ BitVec 32) List!48049)) mapDefault!20271)))))

(assert (=> b!4299215 (= e!2672198 (and e!2672194 tp!1320826))))

(declare-fun b!4299216 () Bool)

(declare-fun res!1762047 () Bool)

(assert (=> b!4299216 (=> (not res!1762047) (not e!2672193))))

(declare-fun valid!3491 (MutableMap!4419) Bool)

(assert (=> b!4299216 (= res!1762047 (valid!3491 hm!64))))

(declare-fun b!4299217 () Bool)

(assert (=> b!4299217 (= e!2672192 e!2672189)))

(declare-fun res!1762046 () Bool)

(assert (=> b!4299217 (=> (not res!1762046) (not e!2672189))))

(declare-fun dynLambda!20354 (Int tuple2!45840) Bool)

(assert (=> b!4299217 (= res!1762046 (dynLambda!20354 p!6034 lt!1521004))))

(assert (=> b!4299217 (= lt!1521004 (tuple2!45841 k0!1716 v!9471))))

(declare-fun mapNonEmpty!20271 () Bool)

(declare-fun tp!1320829 () Bool)

(declare-fun tp!1320822 () Bool)

(assert (=> mapNonEmpty!20271 (= mapRes!20271 (and tp!1320829 tp!1320822))))

(declare-fun mapValue!20271 () List!48049)

(declare-fun mapKey!20271 () (_ BitVec 32))

(declare-fun mapRest!20271 () (Array (_ BitVec 32) List!48049))

(assert (=> mapNonEmpty!20271 (= (arr!7212 (_values!4794 (v!41881 (underlying!9255 (v!41882 (underlying!9256 hm!64)))))) (store mapRest!20271 mapKey!20271 mapValue!20271))))

(assert (= (and start!412776 res!1762049) b!4299216))

(assert (= (and b!4299216 res!1762047) b!4299213))

(assert (= (and b!4299213 res!1762048) b!4299217))

(assert (= (and b!4299217 res!1762046) b!4299210))

(assert (= (and b!4299210 res!1762050) b!4299209))

(assert (= (and b!4299214 condMapEmpty!20271) mapIsEmpty!20271))

(assert (= (and b!4299214 (not condMapEmpty!20271)) mapNonEmpty!20271))

(assert (= b!4299208 b!4299214))

(assert (= b!4299212 b!4299208))

(assert (= b!4299207 b!4299212))

(assert (= (and b!4299211 ((_ is LongMap!4513) (v!41882 (underlying!9256 hm!64)))) b!4299207))

(assert (= b!4299215 b!4299211))

(assert (= (and start!412776 ((_ is HashMap!4419) hm!64)) b!4299215))

(declare-fun b_lambda!126275 () Bool)

(assert (=> (not b_lambda!126275) (not b!4299217)))

(declare-fun t!354739 () Bool)

(declare-fun tb!257175 () Bool)

(assert (=> (and start!412776 (= p!6034 p!6034) t!354739) tb!257175))

(declare-fun result!314440 () Bool)

(assert (=> tb!257175 (= result!314440 true)))

(assert (=> b!4299217 t!354739))

(declare-fun b_and!339281 () Bool)

(assert (= b_and!339279 (and (=> t!354739 result!314440) b_and!339281)))

(declare-fun m!4891347 () Bool)

(assert (=> b!4299217 m!4891347))

(declare-fun m!4891349 () Bool)

(assert (=> b!4299210 m!4891349))

(declare-fun m!4891351 () Bool)

(assert (=> b!4299210 m!4891351))

(declare-fun m!4891353 () Bool)

(assert (=> b!4299209 m!4891353))

(assert (=> b!4299209 m!4891353))

(declare-fun m!4891355 () Bool)

(assert (=> b!4299209 m!4891355))

(declare-fun m!4891357 () Bool)

(assert (=> mapNonEmpty!20271 m!4891357))

(declare-fun m!4891359 () Bool)

(assert (=> b!4299213 m!4891359))

(declare-fun m!4891361 () Bool)

(assert (=> b!4299213 m!4891361))

(declare-fun m!4891363 () Bool)

(assert (=> b!4299208 m!4891363))

(declare-fun m!4891365 () Bool)

(assert (=> b!4299208 m!4891365))

(declare-fun m!4891367 () Bool)

(assert (=> b!4299216 m!4891367))

(check-sat (not mapNonEmpty!20271) (not b!4299213) b_and!339277 (not b!4299214) (not b!4299209) (not b_next!128681) (not b!4299216) b_and!339275 tp_is_empty!23225 b_and!339281 tp_is_empty!23227 (not b_lambda!126275) (not b!4299210) (not b!4299208) (not b_next!128683) (not b_next!128685))
(check-sat b_and!339277 (not b_next!128681) b_and!339275 b_and!339281 (not b_next!128683) (not b_next!128685))
(get-model)

(declare-fun b_lambda!126277 () Bool)

(assert (= b_lambda!126275 (or (and start!412776 b_free!127981) b_lambda!126277)))

(check-sat (not mapNonEmpty!20271) (not b!4299213) b_and!339277 (not b!4299214) (not b!4299209) tp_is_empty!23227 (not b_next!128681) (not b_lambda!126277) (not b!4299216) b_and!339275 tp_is_empty!23225 b_and!339281 (not b!4299210) (not b!4299208) (not b_next!128683) (not b_next!128685))
(check-sat b_and!339277 (not b_next!128681) b_and!339275 b_and!339281 (not b_next!128683) (not b_next!128685))
(get-model)

(declare-fun bs!603931 () Bool)

(declare-fun b!4299262 () Bool)

(declare-fun b!4299271 () Bool)

(assert (= bs!603931 (and b!4299262 b!4299271)))

(declare-fun lambda!131921 () Int)

(declare-fun lambda!131920 () Int)

(assert (=> bs!603931 (= lambda!131921 lambda!131920)))

(declare-fun bm!295753 () Bool)

(declare-fun call!295767 () Bool)

(declare-datatypes ((tuple2!45844 0))(
  ( (tuple2!45845 (_1!26201 (_ BitVec 64)) (_2!26201 List!48049)) )
))
(declare-datatypes ((List!48050 0))(
  ( (Nil!47926) (Cons!47926 (h!53346 tuple2!45844) (t!354743 List!48050)) )
))
(declare-datatypes ((ListLongMap!797 0))(
  ( (ListLongMap!798 (toList!2185 List!48050)) )
))
(declare-fun call!295765 () ListLongMap!797)

(declare-fun allKeysSameHashInMap!267 (ListLongMap!797 Hashable!4429) Bool)

(assert (=> bm!295753 (= call!295767 (allKeysSameHashInMap!267 call!295765 (hashF!6461 hm!64)))))

(declare-fun lt!1521131 () (_ BitVec 64))

(declare-fun call!295788 () List!48049)

(declare-fun c!731332 () Bool)

(declare-fun call!295787 () Bool)

(declare-fun lt!1521133 () (_ BitVec 64))

(declare-fun bm!295754 () Bool)

(declare-fun allKeysSameHash!119 (List!48049 (_ BitVec 64) Hashable!4429) Bool)

(assert (=> bm!295754 (= call!295787 (allKeysSameHash!119 call!295788 (ite c!731332 lt!1521131 lt!1521133) (hashF!6461 hm!64)))))

(declare-fun bm!295755 () Bool)

(declare-fun call!295786 () ListMap!1465)

(declare-fun call!295771 () ListMap!1465)

(assert (=> bm!295755 (= call!295786 call!295771)))

(declare-fun call!295784 () Bool)

(declare-fun bm!295756 () Bool)

(declare-fun forall!8621 (List!48050 Int) Bool)

(assert (=> bm!295756 (= call!295784 (forall!8621 (toList!2185 call!295765) (ite c!731332 lambda!131920 lambda!131921)))))

(declare-fun bm!295757 () Bool)

(declare-fun call!295763 () Bool)

(declare-fun call!295776 () ListMap!1465)

(declare-fun call!295783 () ListMap!1465)

(assert (=> bm!295757 (= call!295763 (eq!96 call!295776 call!295783))))

(declare-fun lt!1521140 () List!48049)

(declare-datatypes ((Unit!66725 0))(
  ( (Unit!66726) )
))
(declare-fun call!295779 () Unit!66725)

(declare-fun lt!1521158 () ListLongMap!797)

(declare-fun bm!295758 () Bool)

(declare-fun lt!1521149 () List!48049)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!97 (ListLongMap!797 (_ BitVec 64) List!48049 Hashable!4429) Unit!66725)

(assert (=> bm!295758 (= call!295779 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!97 lt!1521158 (ite c!731332 lt!1521131 lt!1521133) (ite c!731332 lt!1521140 lt!1521149) (hashF!6461 hm!64)))))

(declare-fun lt!1521136 () ListMap!1465)

(declare-fun bm!295759 () Bool)

(declare-fun lt!1521121 () ListMap!1465)

(declare-fun call!295761 () Bool)

(declare-fun contains!9844 (ListMap!1465 K!9029) Bool)

(assert (=> bm!295759 (= call!295761 (contains!9844 (ite c!731332 lt!1521136 lt!1521121) k0!1716))))

(declare-fun lt!1521152 () ListLongMap!797)

(declare-fun bm!295760 () Bool)

(declare-fun call!295760 () Bool)

(declare-fun lt!1521127 () ListLongMap!797)

(assert (=> bm!295760 (= call!295760 (allKeysSameHashInMap!267 (ite c!731332 lt!1521127 lt!1521152) (hashF!6461 hm!64)))))

(declare-datatypes ((tuple2!45846 0))(
  ( (tuple2!45847 (_1!26202 Bool) (_2!26202 MutLongMap!4513)) )
))
(declare-fun call!295774 () tuple2!45846)

(declare-fun bm!295761 () Bool)

(declare-fun update!323 (MutLongMap!4513 (_ BitVec 64) List!48049) tuple2!45846)

(assert (=> bm!295761 (= call!295774 (update!323 (v!41882 (underlying!9256 hm!64)) (ite c!731332 lt!1521131 lt!1521133) (ite c!731332 lt!1521140 lt!1521149)))))

(declare-fun b!4299256 () Bool)

(declare-fun e!2672225 () List!48049)

(declare-fun call!295777 () List!48049)

(assert (=> b!4299256 (= e!2672225 call!295777)))

(declare-fun b!4299257 () Bool)

(declare-fun lt!1521165 () ListMap!1465)

(assert (=> b!4299257 (= call!295786 lt!1521165)))

(declare-fun lt!1521155 () Unit!66725)

(declare-fun Unit!66727 () Unit!66725)

(assert (=> b!4299257 (= lt!1521155 Unit!66727)))

(declare-fun call!295759 () Bool)

(assert (=> b!4299257 call!295759))

(declare-fun e!2672229 () Unit!66725)

(declare-fun Unit!66728 () Unit!66725)

(assert (=> b!4299257 (= e!2672229 Unit!66728)))

(declare-fun b!4299258 () Bool)

(declare-fun e!2672228 () Bool)

(declare-fun call!295766 () Bool)

(assert (=> b!4299258 (= e!2672228 call!295766)))

(declare-fun d!1266501 () Bool)

(declare-fun e!2672223 () Bool)

(assert (=> d!1266501 e!2672223))

(declare-fun res!1762061 () Bool)

(assert (=> d!1266501 (=> (not res!1762061) (not e!2672223))))

(declare-fun lt!1521144 () tuple2!45842)

(assert (=> d!1266501 (= res!1762061 ((_ is HashMap!4419) (_2!26200 lt!1521144)))))

(declare-fun lt!1521143 () tuple2!45842)

(assert (=> d!1266501 (= lt!1521144 (tuple2!45843 (_1!26200 lt!1521143) (_2!26200 lt!1521143)))))

(declare-fun e!2672224 () tuple2!45842)

(assert (=> d!1266501 (= lt!1521143 e!2672224)))

(declare-fun contains!9845 (MutableMap!4419 K!9029) Bool)

(assert (=> d!1266501 (= c!731332 (contains!9845 hm!64 k0!1716))))

(declare-fun map!9884 (MutLongMap!4513) ListLongMap!797)

(assert (=> d!1266501 (= lt!1521158 (map!9884 (v!41882 (underlying!9256 hm!64))))))

(assert (=> d!1266501 (= lt!1521165 (map!9883 hm!64))))

(assert (=> d!1266501 (valid!3491 hm!64)))

(assert (=> d!1266501 (= (update!322 hm!64 k0!1716 v!9471) lt!1521144)))

(declare-fun call!295772 () Bool)

(declare-fun bm!295762 () Bool)

(assert (=> bm!295762 (= call!295772 (forall!8621 (ite c!731332 (toList!2185 lt!1521127) (toList!2185 lt!1521152)) (ite c!731332 lambda!131920 lambda!131921)))))

(declare-fun call!295780 () Unit!66725)

(declare-fun lt!1521148 () List!48049)

(declare-fun lt!1521123 () List!48049)

(declare-fun bm!295763 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!110 (List!48050 (_ BitVec 64) List!48049 Hashable!4429) Unit!66725)

(assert (=> bm!295763 (= call!295780 (lemmaInLongMapAllKeySameHashThenForTuple!110 (toList!2185 lt!1521158) (ite c!731332 lt!1521131 lt!1521133) (ite c!731332 lt!1521148 lt!1521123) (hashF!6461 hm!64)))))

(declare-fun lt!1521134 () MutableMap!4419)

(declare-fun b!4299259 () Bool)

(declare-fun lt!1521145 () tuple2!45846)

(declare-datatypes ((tuple2!45848 0))(
  ( (tuple2!45849 (_1!26203 Unit!66725) (_2!26203 MutableMap!4419)) )
))
(declare-fun Unit!66729 () Unit!66725)

(declare-fun Unit!66730 () Unit!66725)

(assert (=> b!4299259 (= e!2672224 (tuple2!45843 (_1!26202 lt!1521145) (_2!26203 (ite (_1!26202 lt!1521145) (tuple2!45849 Unit!66729 (HashMap!4419 (Cell!17864 (_2!26202 lt!1521145)) (hashF!6461 hm!64) (bvadd (_size!9070 hm!64) #b00000000000000000000000000000001) (defaultValue!4590 hm!64))) (tuple2!45849 Unit!66730 lt!1521134)))))))

(declare-fun call!295782 () (_ BitVec 64))

(assert (=> b!4299259 (= lt!1521133 call!295782)))

(declare-fun c!731330 () Bool)

(declare-fun contains!9846 (MutLongMap!4513 (_ BitVec 64)) Bool)

(assert (=> b!4299259 (= c!731330 (contains!9846 (v!41882 (underlying!9256 hm!64)) lt!1521133))))

(assert (=> b!4299259 (= lt!1521123 e!2672225)))

(assert (=> b!4299259 (= lt!1521149 (Cons!47925 (tuple2!45841 k0!1716 v!9471) lt!1521123))))

(assert (=> b!4299259 (= lt!1521145 call!295774)))

(assert (=> b!4299259 (= lt!1521134 (HashMap!4419 (Cell!17864 (_2!26202 lt!1521145)) (hashF!6461 hm!64) (_size!9070 hm!64) (defaultValue!4590 hm!64)))))

(declare-fun c!731328 () Bool)

(assert (=> b!4299259 (= c!731328 (_1!26202 lt!1521145))))

(declare-fun lt!1521118 () Unit!66725)

(assert (=> b!4299259 (= lt!1521118 e!2672229)))

(declare-fun bm!295764 () Bool)

(declare-fun call!295770 () ListMap!1465)

(assert (=> bm!295764 (= call!295770 (map!9883 hm!64))))

(declare-fun b!4299260 () Bool)

(declare-fun call!295781 () ListMap!1465)

(assert (=> b!4299260 (= call!295781 lt!1521165)))

(declare-fun lt!1521135 () Unit!66725)

(declare-fun Unit!66731 () Unit!66725)

(assert (=> b!4299260 (= lt!1521135 Unit!66731)))

(assert (=> b!4299260 call!295759))

(declare-fun e!2672227 () Unit!66725)

(declare-fun Unit!66732 () Unit!66725)

(assert (=> b!4299260 (= e!2672227 Unit!66732)))

(declare-fun b!4299261 () Bool)

(declare-fun e!2672226 () Bool)

(assert (=> b!4299261 (= e!2672226 e!2672228)))

(declare-fun res!1762065 () Bool)

(declare-fun call!295758 () ListMap!1465)

(assert (=> b!4299261 (= res!1762065 (contains!9844 call!295758 k0!1716))))

(assert (=> b!4299261 (=> (not res!1762065) (not e!2672228))))

(assert (=> b!4299262 (contains!9844 call!295786 k0!1716)))

(declare-fun lt!1521146 () Unit!66725)

(declare-fun Unit!66733 () Unit!66725)

(assert (=> b!4299262 (= lt!1521146 Unit!66733)))

(declare-fun call!295764 () ListMap!1465)

(assert (=> b!4299262 (contains!9844 call!295764 k0!1716)))

(declare-fun lt!1521167 () Unit!66725)

(declare-fun lt!1521141 () Unit!66725)

(assert (=> b!4299262 (= lt!1521167 lt!1521141)))

(declare-fun call!295768 () Bool)

(assert (=> b!4299262 (= call!295761 call!295768)))

(declare-fun call!295775 () Unit!66725)

(assert (=> b!4299262 (= lt!1521141 call!295775)))

(declare-fun lt!1521122 () ListMap!1465)

(assert (=> b!4299262 (= lt!1521122 call!295764)))

(assert (=> b!4299262 (= lt!1521121 call!295786)))

(declare-fun lt!1521139 () Unit!66725)

(declare-fun Unit!66734 () Unit!66725)

(assert (=> b!4299262 (= lt!1521139 Unit!66734)))

(declare-fun call!295785 () Bool)

(assert (=> b!4299262 call!295785))

(declare-fun lt!1521142 () Unit!66725)

(declare-fun Unit!66735 () Unit!66725)

(assert (=> b!4299262 (= lt!1521142 Unit!66735)))

(assert (=> b!4299262 call!295767))

(declare-fun lt!1521156 () Unit!66725)

(declare-fun Unit!66736 () Unit!66725)

(assert (=> b!4299262 (= lt!1521156 Unit!66736)))

(assert (=> b!4299262 call!295784))

(declare-fun lt!1521147 () Unit!66725)

(declare-fun lt!1521137 () Unit!66725)

(assert (=> b!4299262 (= lt!1521147 lt!1521137)))

(assert (=> b!4299262 call!295763))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!31 (ListLongMap!797 (_ BitVec 64) List!48049 K!9029 V!9231 Hashable!4429) Unit!66725)

(assert (=> b!4299262 (= lt!1521137 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!31 lt!1521158 lt!1521133 lt!1521149 k0!1716 v!9471 (hashF!6461 hm!64)))))

(declare-fun lt!1521157 () Unit!66725)

(declare-fun lt!1521126 () Unit!66725)

(assert (=> b!4299262 (= lt!1521157 lt!1521126)))

(declare-fun e!2672231 () Bool)

(assert (=> b!4299262 e!2672231))

(declare-fun res!1762062 () Bool)

(assert (=> b!4299262 (=> (not res!1762062) (not e!2672231))))

(assert (=> b!4299262 (= res!1762062 call!295772)))

(declare-fun call!295778 () ListLongMap!797)

(assert (=> b!4299262 (= lt!1521152 call!295778)))

(assert (=> b!4299262 (= lt!1521126 call!295779)))

(declare-fun lt!1521154 () Unit!66725)

(declare-fun e!2672222 () Unit!66725)

(assert (=> b!4299262 (= lt!1521154 e!2672222)))

(declare-fun c!731331 () Bool)

(declare-fun isEmpty!28043 (List!48049) Bool)

(assert (=> b!4299262 (= c!731331 (not (isEmpty!28043 lt!1521123)))))

(declare-fun Unit!66737 () Unit!66725)

(assert (=> b!4299262 (= e!2672229 Unit!66737)))

(declare-fun b!4299263 () Bool)

(assert (=> b!4299263 (= e!2672225 Nil!47925)))

(declare-fun b!4299264 () Bool)

(declare-fun lt!1521162 () MutableMap!4419)

(declare-fun lt!1521164 () tuple2!45846)

(declare-fun Unit!66738 () Unit!66725)

(declare-fun Unit!66739 () Unit!66725)

(assert (=> b!4299264 (= e!2672224 (tuple2!45843 (_1!26202 lt!1521164) (_2!26203 (ite false (tuple2!45849 Unit!66738 (HashMap!4419 (Cell!17864 (_2!26202 lt!1521164)) (hashF!6461 hm!64) (bvadd (_size!9070 hm!64) #b00000000000000000000000000000001) (defaultValue!4590 hm!64))) (tuple2!45849 Unit!66739 lt!1521162)))))))

(assert (=> b!4299264 (= lt!1521131 call!295782)))

(assert (=> b!4299264 (= lt!1521148 call!295777)))

(assert (=> b!4299264 (= lt!1521140 (Cons!47925 (tuple2!45841 k0!1716 v!9471) call!295788))))

(assert (=> b!4299264 (= lt!1521164 call!295774)))

(assert (=> b!4299264 (= lt!1521162 (HashMap!4419 (Cell!17864 (_2!26202 lt!1521164)) (hashF!6461 hm!64) (_size!9070 hm!64) (defaultValue!4590 hm!64)))))

(declare-fun c!731327 () Bool)

(assert (=> b!4299264 (= c!731327 (_1!26202 lt!1521164))))

(declare-fun lt!1521151 () Unit!66725)

(assert (=> b!4299264 (= lt!1521151 e!2672227)))

(declare-fun bm!295765 () Bool)

(declare-fun e!2672232 () ListMap!1465)

(assert (=> bm!295765 (= call!295766 (eq!96 call!295758 e!2672232))))

(declare-fun c!731329 () Bool)

(declare-fun c!731326 () Bool)

(assert (=> bm!295765 (= c!731329 c!731326)))

(declare-fun b!4299265 () Bool)

(declare-fun Unit!66740 () Unit!66725)

(assert (=> b!4299265 (= e!2672222 Unit!66740)))

(declare-fun bm!295766 () Bool)

(declare-fun +!165 (ListLongMap!797 tuple2!45844) ListLongMap!797)

(assert (=> bm!295766 (= call!295778 (+!165 lt!1521158 (ite c!731332 (tuple2!45845 lt!1521131 lt!1521140) (tuple2!45845 lt!1521133 lt!1521149))))))

(declare-fun b!4299266 () Bool)

(assert (=> b!4299266 (= e!2672232 call!295770)))

(declare-fun bm!295767 () Bool)

(declare-fun call!295769 () Unit!66725)

(declare-fun lemmaRemovePairForKeyPreservesHash!106 (List!48049 K!9029 (_ BitVec 64) Hashable!4429) Unit!66725)

(assert (=> bm!295767 (= call!295769 (lemmaRemovePairForKeyPreservesHash!106 (ite c!731332 lt!1521148 lt!1521123) k0!1716 (ite c!731332 lt!1521131 lt!1521133) (hashF!6461 hm!64)))))

(declare-fun bm!295768 () Bool)

(assert (=> bm!295768 (= call!295765 (map!9884 (ite c!731332 (_2!26202 lt!1521164) (_2!26202 lt!1521145))))))

(declare-fun bm!295769 () Bool)

(declare-fun call!295773 () ListMap!1465)

(declare-fun extractMap!267 (List!48050) ListMap!1465)

(assert (=> bm!295769 (= call!295773 (extractMap!267 (toList!2185 lt!1521158)))))

(declare-fun bm!295770 () Bool)

(assert (=> bm!295770 (= call!295771 (map!9883 (ite c!731332 lt!1521162 lt!1521134)))))

(declare-fun b!4299267 () Bool)

(assert (=> b!4299267 (= e!2672223 e!2672226)))

(assert (=> b!4299267 (= c!731326 (_1!26200 lt!1521144))))

(declare-fun lt!1521161 () ListMap!1465)

(declare-fun bm!295771 () Bool)

(declare-fun lemmaEquivalentThenSameContains!31 (ListMap!1465 ListMap!1465 K!9029) Unit!66725)

(assert (=> bm!295771 (= call!295775 (lemmaEquivalentThenSameContains!31 (ite c!731332 lt!1521136 lt!1521121) (ite c!731332 lt!1521161 lt!1521122) k0!1716))))

(declare-fun bm!295772 () Bool)

(assert (=> bm!295772 (= call!295764 (+!164 lt!1521165 (tuple2!45841 k0!1716 v!9471)))))

(declare-fun b!4299268 () Bool)

(assert (=> b!4299268 (= e!2672226 call!295766)))

(declare-fun b!4299269 () Bool)

(declare-fun e!2672230 () Bool)

(assert (=> b!4299269 (= e!2672230 call!295760)))

(declare-fun bm!295773 () Bool)

(assert (=> bm!295773 (= call!295768 (contains!9844 (ite c!731332 lt!1521161 lt!1521122) k0!1716))))

(declare-fun bm!295774 () Bool)

(assert (=> bm!295774 (= call!295781 call!295771)))

(declare-fun bm!295775 () Bool)

(assert (=> bm!295775 (= call!295783 (+!164 call!295773 (tuple2!45841 k0!1716 v!9471)))))

(declare-fun b!4299270 () Bool)

(declare-fun res!1762064 () Bool)

(assert (=> b!4299270 (=> (not res!1762064) (not e!2672223))))

(assert (=> b!4299270 (= res!1762064 (valid!3491 (_2!26200 lt!1521144)))))

(declare-fun bm!295776 () Bool)

(assert (=> bm!295776 (= call!295759 (valid!3491 (ite c!731332 lt!1521162 lt!1521134)))))

(assert (=> b!4299271 call!295785))

(declare-fun lt!1521132 () Unit!66725)

(declare-fun Unit!66741 () Unit!66725)

(assert (=> b!4299271 (= lt!1521132 Unit!66741)))

(assert (=> b!4299271 call!295767))

(declare-fun lt!1521171 () Unit!66725)

(declare-fun Unit!66742 () Unit!66725)

(assert (=> b!4299271 (= lt!1521171 Unit!66742)))

(assert (=> b!4299271 call!295784))

(declare-fun lt!1521172 () Unit!66725)

(declare-fun lt!1521124 () Unit!66725)

(assert (=> b!4299271 (= lt!1521172 lt!1521124)))

(assert (=> b!4299271 (= call!295761 call!295768)))

(assert (=> b!4299271 (= lt!1521124 call!295775)))

(assert (=> b!4299271 (= lt!1521161 call!295764)))

(assert (=> b!4299271 (= lt!1521136 call!295781)))

(declare-fun lt!1521160 () Unit!66725)

(declare-fun lt!1521166 () Unit!66725)

(assert (=> b!4299271 (= lt!1521160 lt!1521166)))

(assert (=> b!4299271 call!295763))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!31 (ListLongMap!797 (_ BitVec 64) List!48049 K!9029 V!9231 Hashable!4429) Unit!66725)

(assert (=> b!4299271 (= lt!1521166 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!31 lt!1521158 lt!1521131 lt!1521140 k0!1716 v!9471 (hashF!6461 hm!64)))))

(declare-fun lt!1521129 () Unit!66725)

(declare-fun lt!1521125 () Unit!66725)

(assert (=> b!4299271 (= lt!1521129 lt!1521125)))

(assert (=> b!4299271 e!2672230))

(declare-fun res!1762063 () Bool)

(assert (=> b!4299271 (=> (not res!1762063) (not e!2672230))))

(assert (=> b!4299271 (= res!1762063 call!295772)))

(assert (=> b!4299271 (= lt!1521127 call!295778)))

(assert (=> b!4299271 (= lt!1521125 call!295779)))

(declare-fun lt!1521168 () Unit!66725)

(declare-fun Unit!66743 () Unit!66725)

(assert (=> b!4299271 (= lt!1521168 Unit!66743)))

(declare-fun noDuplicateKeys!147 (List!48049) Bool)

(assert (=> b!4299271 (noDuplicateKeys!147 lt!1521140)))

(declare-fun lt!1521138 () Unit!66725)

(declare-fun Unit!66744 () Unit!66725)

(assert (=> b!4299271 (= lt!1521138 Unit!66744)))

(declare-fun containsKey!228 (List!48049 K!9029) Bool)

(assert (=> b!4299271 (not (containsKey!228 call!295788 k0!1716))))

(declare-fun lt!1521120 () Unit!66725)

(declare-fun Unit!66745 () Unit!66725)

(assert (=> b!4299271 (= lt!1521120 Unit!66745)))

(declare-fun lt!1521153 () Unit!66725)

(declare-fun lt!1521119 () Unit!66725)

(assert (=> b!4299271 (= lt!1521153 lt!1521119)))

(assert (=> b!4299271 (noDuplicateKeys!147 call!295788)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!124 (List!48049 K!9029) Unit!66725)

(assert (=> b!4299271 (= lt!1521119 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!124 lt!1521148 k0!1716))))

(declare-fun lt!1521170 () Unit!66725)

(declare-fun lt!1521159 () Unit!66725)

(assert (=> b!4299271 (= lt!1521170 lt!1521159)))

(assert (=> b!4299271 call!295787))

(assert (=> b!4299271 (= lt!1521159 call!295769)))

(declare-fun lt!1521163 () Unit!66725)

(declare-fun lt!1521150 () Unit!66725)

(assert (=> b!4299271 (= lt!1521163 lt!1521150)))

(declare-fun call!295762 () Bool)

(assert (=> b!4299271 call!295762))

(assert (=> b!4299271 (= lt!1521150 call!295780)))

(declare-fun Unit!66746 () Unit!66725)

(assert (=> b!4299271 (= e!2672227 Unit!66746)))

(declare-fun b!4299272 () Bool)

(assert (=> b!4299272 (= e!2672232 (+!164 call!295770 (tuple2!45841 k0!1716 v!9471)))))

(declare-fun b!4299273 () Bool)

(assert (=> b!4299273 (= e!2672231 call!295760)))

(declare-fun bm!295777 () Bool)

(assert (=> bm!295777 (= call!295776 (extractMap!267 (toList!2185 call!295778)))))

(declare-fun bm!295778 () Bool)

(declare-fun apply!10872 (MutLongMap!4513 (_ BitVec 64)) List!48049)

(assert (=> bm!295778 (= call!295777 (apply!10872 (v!41882 (underlying!9256 hm!64)) (ite c!731332 lt!1521131 lt!1521133)))))

(declare-fun bm!295779 () Bool)

(declare-fun hash!835 (Hashable!4429 K!9029) (_ BitVec 64))

(assert (=> bm!295779 (= call!295782 (hash!835 (hashF!6461 hm!64) k0!1716))))

(declare-fun bm!295780 () Bool)

(assert (=> bm!295780 (= call!295785 (eq!96 (ite c!731332 call!295781 call!295786) call!295764))))

(declare-fun bm!295781 () Bool)

(assert (=> bm!295781 (= call!295758 (map!9883 (_2!26200 lt!1521144)))))

(declare-fun bm!295782 () Bool)

(assert (=> bm!295782 (= call!295762 (allKeysSameHash!119 (ite c!731332 lt!1521148 lt!1521123) (ite c!731332 lt!1521131 lt!1521133) (hashF!6461 hm!64)))))

(declare-fun bm!295783 () Bool)

(declare-fun removePairForKey!136 (List!48049 K!9029) List!48049)

(assert (=> bm!295783 (= call!295788 (removePairForKey!136 (ite c!731332 lt!1521148 lt!1521123) k0!1716))))

(declare-fun b!4299274 () Bool)

(declare-fun lt!1521169 () Unit!66725)

(assert (=> b!4299274 (= e!2672222 lt!1521169)))

(declare-fun lt!1521128 () Unit!66725)

(assert (=> b!4299274 (= lt!1521128 call!295780)))

(assert (=> b!4299274 call!295762))

(declare-fun lt!1521130 () Unit!66725)

(assert (=> b!4299274 (= lt!1521130 lt!1521128)))

(assert (=> b!4299274 (= lt!1521169 call!295769)))

(assert (=> b!4299274 call!295787))

(assert (= (and d!1266501 c!731332) b!4299264))

(assert (= (and d!1266501 (not c!731332)) b!4299259))

(assert (= (and b!4299264 c!731327) b!4299271))

(assert (= (and b!4299264 (not c!731327)) b!4299260))

(assert (= (and b!4299271 res!1762063) b!4299269))

(assert (= (or b!4299271 b!4299260) bm!295774))

(assert (= (and b!4299259 c!731330) b!4299256))

(assert (= (and b!4299259 (not c!731330)) b!4299263))

(assert (= (and b!4299259 c!731328) b!4299262))

(assert (= (and b!4299259 (not c!731328)) b!4299257))

(assert (= (and b!4299262 c!731331) b!4299274))

(assert (= (and b!4299262 (not c!731331)) b!4299265))

(assert (= (and b!4299262 res!1762062) b!4299273))

(assert (= (or b!4299262 b!4299257) bm!295755))

(assert (= (or b!4299271 b!4299262) bm!295759))

(assert (= (or b!4299271 b!4299274) bm!295763))

(assert (= (or b!4299271 b!4299262) bm!295768))

(assert (= (or b!4299264 b!4299256) bm!295778))

(assert (= (or bm!295774 bm!295755) bm!295770))

(assert (= (or b!4299264 b!4299259) bm!295761))

(assert (= (or b!4299271 b!4299262) bm!295773))

(assert (= (or b!4299271 b!4299274) bm!295782))

(assert (= (or b!4299271 b!4299262) bm!295772))

(assert (= (or b!4299271 b!4299274) bm!295767))

(assert (= (or b!4299269 b!4299273) bm!295760))

(assert (= (or b!4299271 b!4299262) bm!295769))

(assert (= (or b!4299264 b!4299259) bm!295779))

(assert (= (or b!4299271 b!4299262) bm!295762))

(assert (= (or b!4299271 b!4299262) bm!295758))

(assert (= (or b!4299264 b!4299271 b!4299274) bm!295783))

(assert (= (or b!4299271 b!4299262) bm!295766))

(assert (= (or b!4299260 b!4299257) bm!295776))

(assert (= (or b!4299271 b!4299262) bm!295771))

(assert (= (or b!4299271 b!4299262) bm!295777))

(assert (= (or b!4299271 b!4299262) bm!295775))

(assert (= (or b!4299271 b!4299262) bm!295753))

(assert (= (or b!4299271 b!4299262) bm!295756))

(assert (= (or b!4299271 b!4299262) bm!295780))

(assert (= (or b!4299271 b!4299274) bm!295754))

(assert (= (or b!4299271 b!4299262) bm!295757))

(assert (= (and d!1266501 res!1762061) b!4299270))

(assert (= (and b!4299270 res!1762064) b!4299267))

(assert (= (and b!4299267 c!731326) b!4299261))

(assert (= (and b!4299267 (not c!731326)) b!4299268))

(assert (= (and b!4299261 res!1762065) b!4299258))

(assert (= (or b!4299261 b!4299258 b!4299268) bm!295781))

(assert (= (or b!4299258 b!4299268) bm!295764))

(assert (= (or b!4299258 b!4299268) bm!295765))

(assert (= (and bm!295765 c!731329) b!4299272))

(assert (= (and bm!295765 (not c!731329)) b!4299266))

(declare-fun m!4891369 () Bool)

(assert (=> bm!295783 m!4891369))

(declare-fun m!4891371 () Bool)

(assert (=> bm!295762 m!4891371))

(assert (=> bm!295764 m!4891361))

(declare-fun m!4891373 () Bool)

(assert (=> bm!295758 m!4891373))

(declare-fun m!4891375 () Bool)

(assert (=> bm!295754 m!4891375))

(declare-fun m!4891377 () Bool)

(assert (=> d!1266501 m!4891377))

(declare-fun m!4891379 () Bool)

(assert (=> d!1266501 m!4891379))

(assert (=> d!1266501 m!4891361))

(assert (=> d!1266501 m!4891367))

(declare-fun m!4891381 () Bool)

(assert (=> bm!295768 m!4891381))

(declare-fun m!4891383 () Bool)

(assert (=> bm!295773 m!4891383))

(declare-fun m!4891385 () Bool)

(assert (=> bm!295759 m!4891385))

(declare-fun m!4891387 () Bool)

(assert (=> bm!295763 m!4891387))

(declare-fun m!4891389 () Bool)

(assert (=> bm!295771 m!4891389))

(declare-fun m!4891391 () Bool)

(assert (=> b!4299272 m!4891391))

(declare-fun m!4891393 () Bool)

(assert (=> bm!295766 m!4891393))

(declare-fun m!4891395 () Bool)

(assert (=> bm!295780 m!4891395))

(declare-fun m!4891397 () Bool)

(assert (=> b!4299262 m!4891397))

(declare-fun m!4891399 () Bool)

(assert (=> b!4299262 m!4891399))

(declare-fun m!4891401 () Bool)

(assert (=> b!4299262 m!4891401))

(declare-fun m!4891403 () Bool)

(assert (=> b!4299262 m!4891403))

(declare-fun m!4891405 () Bool)

(assert (=> bm!295775 m!4891405))

(declare-fun m!4891407 () Bool)

(assert (=> b!4299259 m!4891407))

(declare-fun m!4891409 () Bool)

(assert (=> bm!295757 m!4891409))

(declare-fun m!4891411 () Bool)

(assert (=> bm!295770 m!4891411))

(declare-fun m!4891413 () Bool)

(assert (=> bm!295765 m!4891413))

(declare-fun m!4891415 () Bool)

(assert (=> b!4299270 m!4891415))

(declare-fun m!4891417 () Bool)

(assert (=> bm!295781 m!4891417))

(declare-fun m!4891419 () Bool)

(assert (=> bm!295772 m!4891419))

(declare-fun m!4891421 () Bool)

(assert (=> bm!295767 m!4891421))

(declare-fun m!4891423 () Bool)

(assert (=> bm!295779 m!4891423))

(declare-fun m!4891425 () Bool)

(assert (=> bm!295778 m!4891425))

(declare-fun m!4891427 () Bool)

(assert (=> bm!295760 m!4891427))

(declare-fun m!4891429 () Bool)

(assert (=> bm!295756 m!4891429))

(declare-fun m!4891431 () Bool)

(assert (=> bm!295769 m!4891431))

(declare-fun m!4891433 () Bool)

(assert (=> bm!295777 m!4891433))

(declare-fun m!4891435 () Bool)

(assert (=> b!4299271 m!4891435))

(declare-fun m!4891437 () Bool)

(assert (=> b!4299271 m!4891437))

(declare-fun m!4891439 () Bool)

(assert (=> b!4299271 m!4891439))

(declare-fun m!4891441 () Bool)

(assert (=> b!4299271 m!4891441))

(declare-fun m!4891443 () Bool)

(assert (=> b!4299271 m!4891443))

(declare-fun m!4891445 () Bool)

(assert (=> b!4299261 m!4891445))

(declare-fun m!4891447 () Bool)

(assert (=> bm!295776 m!4891447))

(declare-fun m!4891449 () Bool)

(assert (=> bm!295782 m!4891449))

(declare-fun m!4891451 () Bool)

(assert (=> bm!295761 m!4891451))

(declare-fun m!4891453 () Bool)

(assert (=> bm!295753 m!4891453))

(assert (=> b!4299210 d!1266501))

(declare-fun d!1266503 () Bool)

(declare-fun e!2672235 () Bool)

(assert (=> d!1266503 e!2672235))

(declare-fun res!1762070 () Bool)

(assert (=> d!1266503 (=> (not res!1762070) (not e!2672235))))

(declare-fun lt!1521183 () ListMap!1465)

(assert (=> d!1266503 (= res!1762070 (contains!9844 lt!1521183 (_1!26199 lt!1521004)))))

(declare-fun lt!1521181 () List!48049)

(assert (=> d!1266503 (= lt!1521183 (ListMap!1466 lt!1521181))))

(declare-fun lt!1521184 () Unit!66725)

(declare-fun lt!1521182 () Unit!66725)

(assert (=> d!1266503 (= lt!1521184 lt!1521182)))

(declare-datatypes ((Option!10159 0))(
  ( (None!10158) (Some!10158 (v!41884 V!9231)) )
))
(declare-fun getValueByKey!208 (List!48049 K!9029) Option!10159)

(assert (=> d!1266503 (= (getValueByKey!208 lt!1521181 (_1!26199 lt!1521004)) (Some!10158 (_2!26199 lt!1521004)))))

(declare-fun lemmaContainsTupThenGetReturnValue!39 (List!48049 K!9029 V!9231) Unit!66725)

(assert (=> d!1266503 (= lt!1521182 (lemmaContainsTupThenGetReturnValue!39 lt!1521181 (_1!26199 lt!1521004) (_2!26199 lt!1521004)))))

(declare-fun insertNoDuplicatedKeys!19 (List!48049 K!9029 V!9231) List!48049)

(assert (=> d!1266503 (= lt!1521181 (insertNoDuplicatedKeys!19 (toList!2184 lt!1521007) (_1!26199 lt!1521004) (_2!26199 lt!1521004)))))

(assert (=> d!1266503 (= (+!164 lt!1521007 lt!1521004) lt!1521183)))

(declare-fun b!4299279 () Bool)

(declare-fun res!1762071 () Bool)

(assert (=> b!4299279 (=> (not res!1762071) (not e!2672235))))

(assert (=> b!4299279 (= res!1762071 (= (getValueByKey!208 (toList!2184 lt!1521183) (_1!26199 lt!1521004)) (Some!10158 (_2!26199 lt!1521004))))))

(declare-fun b!4299280 () Bool)

(declare-fun contains!9847 (List!48049 tuple2!45840) Bool)

(assert (=> b!4299280 (= e!2672235 (contains!9847 (toList!2184 lt!1521183) lt!1521004))))

(assert (= (and d!1266503 res!1762070) b!4299279))

(assert (= (and b!4299279 res!1762071) b!4299280))

(declare-fun m!4891455 () Bool)

(assert (=> d!1266503 m!4891455))

(declare-fun m!4891457 () Bool)

(assert (=> d!1266503 m!4891457))

(declare-fun m!4891459 () Bool)

(assert (=> d!1266503 m!4891459))

(declare-fun m!4891461 () Bool)

(assert (=> d!1266503 m!4891461))

(declare-fun m!4891463 () Bool)

(assert (=> b!4299279 m!4891463))

(declare-fun m!4891465 () Bool)

(assert (=> b!4299280 m!4891465))

(assert (=> b!4299210 d!1266503))

(declare-fun bs!603932 () Bool)

(declare-fun b!4299285 () Bool)

(assert (= bs!603932 (and b!4299285 b!4299271)))

(declare-fun lambda!131924 () Int)

(assert (=> bs!603932 (= lambda!131924 lambda!131920)))

(declare-fun bs!603933 () Bool)

(assert (= bs!603933 (and b!4299285 b!4299262)))

(assert (=> bs!603933 (= lambda!131924 lambda!131921)))

(declare-fun d!1266505 () Bool)

(declare-fun res!1762076 () Bool)

(declare-fun e!2672238 () Bool)

(assert (=> d!1266505 (=> (not res!1762076) (not e!2672238))))

(declare-fun valid!3492 (MutLongMap!4513) Bool)

(assert (=> d!1266505 (= res!1762076 (valid!3492 (v!41882 (underlying!9256 hm!64))))))

(assert (=> d!1266505 (= (valid!3491 hm!64) e!2672238)))

(declare-fun res!1762077 () Bool)

(assert (=> b!4299285 (=> (not res!1762077) (not e!2672238))))

(assert (=> b!4299285 (= res!1762077 (forall!8621 (toList!2185 (map!9884 (v!41882 (underlying!9256 hm!64)))) lambda!131924))))

(declare-fun b!4299286 () Bool)

(assert (=> b!4299286 (= e!2672238 (allKeysSameHashInMap!267 (map!9884 (v!41882 (underlying!9256 hm!64))) (hashF!6461 hm!64)))))

(assert (= (and d!1266505 res!1762076) b!4299285))

(assert (= (and b!4299285 res!1762077) b!4299286))

(declare-fun m!4891467 () Bool)

(assert (=> d!1266505 m!4891467))

(assert (=> b!4299285 m!4891379))

(declare-fun m!4891469 () Bool)

(assert (=> b!4299285 m!4891469))

(assert (=> b!4299286 m!4891379))

(assert (=> b!4299286 m!4891379))

(declare-fun m!4891471 () Bool)

(assert (=> b!4299286 m!4891471))

(assert (=> b!4299216 d!1266505))

(declare-fun d!1266507 () Bool)

(assert (=> d!1266507 (= (array_inv!5167 (_keys!4813 (v!41881 (underlying!9255 (v!41882 (underlying!9256 hm!64)))))) (bvsge (size!35250 (_keys!4813 (v!41881 (underlying!9255 (v!41882 (underlying!9256 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299208 d!1266507))

(declare-fun d!1266509 () Bool)

(assert (=> d!1266509 (= (array_inv!5168 (_values!4794 (v!41881 (underlying!9255 (v!41882 (underlying!9256 hm!64)))))) (bvsge (size!35251 (_values!4794 (v!41881 (underlying!9255 (v!41882 (underlying!9256 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299208 d!1266509))

(declare-fun d!1266511 () Bool)

(declare-fun res!1762082 () Bool)

(declare-fun e!2672243 () Bool)

(assert (=> d!1266511 (=> res!1762082 e!2672243)))

(assert (=> d!1266511 (= res!1762082 ((_ is Nil!47925) (toList!2184 lt!1521007)))))

(assert (=> d!1266511 (= (forall!8620 (toList!2184 lt!1521007) p!6034) e!2672243)))

(declare-fun b!4299291 () Bool)

(declare-fun e!2672244 () Bool)

(assert (=> b!4299291 (= e!2672243 e!2672244)))

(declare-fun res!1762083 () Bool)

(assert (=> b!4299291 (=> (not res!1762083) (not e!2672244))))

(assert (=> b!4299291 (= res!1762083 (dynLambda!20354 p!6034 (h!53345 (toList!2184 lt!1521007))))))

(declare-fun b!4299292 () Bool)

(assert (=> b!4299292 (= e!2672244 (forall!8620 (t!354740 (toList!2184 lt!1521007)) p!6034))))

(assert (= (and d!1266511 (not res!1762082)) b!4299291))

(assert (= (and b!4299291 res!1762083) b!4299292))

(declare-fun b_lambda!126279 () Bool)

(assert (=> (not b_lambda!126279) (not b!4299291)))

(declare-fun t!354742 () Bool)

(declare-fun tb!257177 () Bool)

(assert (=> (and start!412776 (= p!6034 p!6034) t!354742) tb!257177))

(declare-fun result!314442 () Bool)

(assert (=> tb!257177 (= result!314442 true)))

(assert (=> b!4299291 t!354742))

(declare-fun b_and!339283 () Bool)

(assert (= b_and!339281 (and (=> t!354742 result!314442) b_and!339283)))

(declare-fun m!4891473 () Bool)

(assert (=> b!4299291 m!4891473))

(declare-fun m!4891475 () Bool)

(assert (=> b!4299292 m!4891475))

(assert (=> b!4299213 d!1266511))

(declare-fun d!1266513 () Bool)

(declare-fun lt!1521187 () ListMap!1465)

(declare-fun invariantList!536 (List!48049) Bool)

(assert (=> d!1266513 (invariantList!536 (toList!2184 lt!1521187))))

(assert (=> d!1266513 (= lt!1521187 (extractMap!267 (toList!2185 (map!9884 (v!41882 (underlying!9256 hm!64))))))))

(assert (=> d!1266513 (valid!3491 hm!64)))

(assert (=> d!1266513 (= (map!9883 hm!64) lt!1521187)))

(declare-fun bs!603934 () Bool)

(assert (= bs!603934 d!1266513))

(declare-fun m!4891477 () Bool)

(assert (=> bs!603934 m!4891477))

(assert (=> bs!603934 m!4891379))

(declare-fun m!4891479 () Bool)

(assert (=> bs!603934 m!4891479))

(assert (=> bs!603934 m!4891367))

(assert (=> b!4299213 d!1266513))

(declare-fun d!1266515 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7527 (List!48049) (InoxSet tuple2!45840))

(assert (=> d!1266515 (= (eq!96 (map!9883 (_2!26200 lt!1521003)) lt!1521006) (= (content!7527 (toList!2184 (map!9883 (_2!26200 lt!1521003)))) (content!7527 (toList!2184 lt!1521006))))))

(declare-fun bs!603935 () Bool)

(assert (= bs!603935 d!1266515))

(declare-fun m!4891481 () Bool)

(assert (=> bs!603935 m!4891481))

(declare-fun m!4891483 () Bool)

(assert (=> bs!603935 m!4891483))

(assert (=> b!4299209 d!1266515))

(declare-fun d!1266517 () Bool)

(declare-fun lt!1521188 () ListMap!1465)

(assert (=> d!1266517 (invariantList!536 (toList!2184 lt!1521188))))

(assert (=> d!1266517 (= lt!1521188 (extractMap!267 (toList!2185 (map!9884 (v!41882 (underlying!9256 (_2!26200 lt!1521003)))))))))

(assert (=> d!1266517 (valid!3491 (_2!26200 lt!1521003))))

(assert (=> d!1266517 (= (map!9883 (_2!26200 lt!1521003)) lt!1521188)))

(declare-fun bs!603936 () Bool)

(assert (= bs!603936 d!1266517))

(declare-fun m!4891485 () Bool)

(assert (=> bs!603936 m!4891485))

(declare-fun m!4891487 () Bool)

(assert (=> bs!603936 m!4891487))

(declare-fun m!4891489 () Bool)

(assert (=> bs!603936 m!4891489))

(declare-fun m!4891491 () Bool)

(assert (=> bs!603936 m!4891491))

(assert (=> b!4299209 d!1266517))

(declare-fun e!2672247 () Bool)

(declare-fun b!4299297 () Bool)

(declare-fun tp!1320832 () Bool)

(assert (=> b!4299297 (= e!2672247 (and tp_is_empty!23225 tp_is_empty!23227 tp!1320832))))

(assert (=> b!4299208 (= tp!1320827 e!2672247)))

(assert (= (and b!4299208 ((_ is Cons!47925) (zeroValue!4772 (v!41881 (underlying!9255 (v!41882 (underlying!9256 hm!64))))))) b!4299297))

(declare-fun tp!1320833 () Bool)

(declare-fun e!2672248 () Bool)

(declare-fun b!4299298 () Bool)

(assert (=> b!4299298 (= e!2672248 (and tp_is_empty!23225 tp_is_empty!23227 tp!1320833))))

(assert (=> b!4299208 (= tp!1320825 e!2672248)))

(assert (= (and b!4299208 ((_ is Cons!47925) (minValue!4772 (v!41881 (underlying!9255 (v!41882 (underlying!9256 hm!64))))))) b!4299298))

(declare-fun mapIsEmpty!20274 () Bool)

(declare-fun mapRes!20274 () Bool)

(assert (=> mapIsEmpty!20274 mapRes!20274))

(declare-fun e!2672254 () Bool)

(declare-fun b!4299305 () Bool)

(declare-fun tp!1320840 () Bool)

(assert (=> b!4299305 (= e!2672254 (and tp_is_empty!23225 tp_is_empty!23227 tp!1320840))))

(declare-fun b!4299306 () Bool)

(declare-fun tp!1320842 () Bool)

(declare-fun e!2672253 () Bool)

(assert (=> b!4299306 (= e!2672253 (and tp_is_empty!23225 tp_is_empty!23227 tp!1320842))))

(declare-fun mapNonEmpty!20274 () Bool)

(declare-fun tp!1320841 () Bool)

(assert (=> mapNonEmpty!20274 (= mapRes!20274 (and tp!1320841 e!2672254))))

(declare-fun mapRest!20274 () (Array (_ BitVec 32) List!48049))

(declare-fun mapKey!20274 () (_ BitVec 32))

(declare-fun mapValue!20274 () List!48049)

(assert (=> mapNonEmpty!20274 (= mapRest!20271 (store mapRest!20274 mapKey!20274 mapValue!20274))))

(declare-fun condMapEmpty!20274 () Bool)

(declare-fun mapDefault!20274 () List!48049)

(assert (=> mapNonEmpty!20271 (= condMapEmpty!20274 (= mapRest!20271 ((as const (Array (_ BitVec 32) List!48049)) mapDefault!20274)))))

(assert (=> mapNonEmpty!20271 (= tp!1320829 (and e!2672253 mapRes!20274))))

(assert (= (and mapNonEmpty!20271 condMapEmpty!20274) mapIsEmpty!20274))

(assert (= (and mapNonEmpty!20271 (not condMapEmpty!20274)) mapNonEmpty!20274))

(assert (= (and mapNonEmpty!20274 ((_ is Cons!47925) mapValue!20274)) b!4299305))

(assert (= (and mapNonEmpty!20271 ((_ is Cons!47925) mapDefault!20274)) b!4299306))

(declare-fun m!4891493 () Bool)

(assert (=> mapNonEmpty!20274 m!4891493))

(declare-fun tp!1320843 () Bool)

(declare-fun b!4299307 () Bool)

(declare-fun e!2672255 () Bool)

(assert (=> b!4299307 (= e!2672255 (and tp_is_empty!23225 tp_is_empty!23227 tp!1320843))))

(assert (=> mapNonEmpty!20271 (= tp!1320822 e!2672255)))

(assert (= (and mapNonEmpty!20271 ((_ is Cons!47925) mapValue!20271)) b!4299307))

(declare-fun b!4299308 () Bool)

(declare-fun tp!1320844 () Bool)

(declare-fun e!2672256 () Bool)

(assert (=> b!4299308 (= e!2672256 (and tp_is_empty!23225 tp_is_empty!23227 tp!1320844))))

(assert (=> b!4299214 (= tp!1320823 e!2672256)))

(assert (= (and b!4299214 ((_ is Cons!47925) mapDefault!20271)) b!4299308))

(declare-fun b_lambda!126281 () Bool)

(assert (= b_lambda!126279 (or (and start!412776 b_free!127981) b_lambda!126281)))

(check-sat (not b!4299286) (not bm!295759) (not bm!295758) (not d!1266515) (not b!4299292) (not b_next!128681) tp_is_empty!23225 (not b!4299279) (not b_lambda!126281) (not bm!295772) (not bm!295754) (not bm!295771) (not bm!295763) (not bm!295764) (not b!4299261) (not d!1266513) (not b!4299297) (not bm!295780) (not mapNonEmpty!20274) (not bm!295765) (not bm!295775) b_and!339277 (not bm!295783) (not d!1266503) (not bm!295779) (not d!1266501) (not b!4299271) (not bm!295781) (not bm!295753) (not b!4299259) tp_is_empty!23227 (not bm!295768) (not bm!295756) (not bm!295776) (not b!4299307) (not bm!295778) (not bm!295770) (not b!4299308) (not b_lambda!126277) (not bm!295773) (not b!4299298) (not bm!295767) (not bm!295757) (not bm!295760) (not b!4299306) (not bm!295769) (not b!4299272) b_and!339275 (not d!1266517) (not b_next!128683) (not d!1266505) (not b!4299305) (not bm!295766) (not b_next!128685) (not bm!295777) (not bm!295761) (not b!4299280) (not bm!295762) b_and!339283 (not b!4299262) (not b!4299270) (not bm!295782) (not b!4299285))
(check-sat b_and!339277 (not b_next!128681) b_and!339275 b_and!339283 (not b_next!128683) (not b_next!128685))
