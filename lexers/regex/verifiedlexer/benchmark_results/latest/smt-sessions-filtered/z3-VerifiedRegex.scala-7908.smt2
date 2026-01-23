; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412636 () Bool)

(assert start!412636)

(declare-fun b!4297884 () Bool)

(declare-fun b_free!127881 () Bool)

(declare-fun b_next!128585 () Bool)

(assert (=> b!4297884 (= b_free!127881 (not b_next!128585))))

(declare-fun tp!1320349 () Bool)

(declare-fun b_and!339119 () Bool)

(assert (=> b!4297884 (= tp!1320349 b_and!339119)))

(declare-fun b!4297882 () Bool)

(declare-fun b_free!127883 () Bool)

(declare-fun b_next!128587 () Bool)

(assert (=> b!4297882 (= b_free!127883 (not b_next!128587))))

(declare-fun tp!1320351 () Bool)

(declare-fun b_and!339121 () Bool)

(assert (=> b!4297882 (= tp!1320351 b_and!339121)))

(declare-fun b_free!127885 () Bool)

(declare-fun b_next!128589 () Bool)

(assert (=> start!412636 (= b_free!127885 (not b_next!128589))))

(declare-fun tp!1320353 () Bool)

(declare-fun b_and!339123 () Bool)

(assert (=> start!412636 (= tp!1320353 b_and!339123)))

(declare-fun b!4297881 () Bool)

(declare-fun e!2671199 () Bool)

(declare-fun tp!1320355 () Bool)

(declare-fun mapRes!20205 () Bool)

(assert (=> b!4297881 (= e!2671199 (and tp!1320355 mapRes!20205))))

(declare-fun condMapEmpty!20205 () Bool)

(declare-datatypes ((K!8989 0))(
  ( (K!8990 (val!15449 Int)) )
))
(declare-datatypes ((V!9191 0))(
  ( (V!9192 (val!15450 Int)) )
))
(declare-datatypes ((tuple2!45744 0))(
  ( (tuple2!45745 (_1!26151 K!8989) (_2!26151 V!9191)) )
))
(declare-datatypes ((List!48023 0))(
  ( (Nil!47899) (Cons!47899 (h!53319 tuple2!45744) (t!354654 List!48023)) )
))
(declare-datatypes ((array!16072 0))(
  ( (array!16073 (arr!7179 (Array (_ BitVec 32) (_ BitVec 64))) (size!35218 (_ BitVec 32))) )
))
(declare-datatypes ((array!16074 0))(
  ( (array!16075 (arr!7180 (Array (_ BitVec 32) List!48023)) (size!35219 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8994 0))(
  ( (LongMapFixedSize!8995 (defaultEntry!4882 Int) (mask!12974 (_ BitVec 32)) (extraKeys!4746 (_ BitVec 32)) (zeroValue!4756 List!48023) (minValue!4756 List!48023) (_size!9037 (_ BitVec 32)) (_keys!4797 array!16072) (_values!4778 array!16074) (_vacant!4558 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17797 0))(
  ( (Cell!17798 (v!41837 LongMapFixedSize!8994)) )
))
(declare-datatypes ((MutLongMap!4497 0))(
  ( (LongMap!4497 (underlying!9223 Cell!17797)) (MutLongMapExt!4496 (__x!29516 Int)) )
))
(declare-datatypes ((Hashable!4413 0))(
  ( (HashableExt!4412 (__x!29517 Int)) )
))
(declare-datatypes ((Cell!17799 0))(
  ( (Cell!17800 (v!41838 MutLongMap!4497)) )
))
(declare-datatypes ((MutableMap!4403 0))(
  ( (MutableMapExt!4402 (__x!29518 Int)) (HashMap!4403 (underlying!9224 Cell!17799) (hashF!6445 Hashable!4413) (_size!9038 (_ BitVec 32)) (defaultValue!4574 Int)) )
))
(declare-fun hm!64 () MutableMap!4403)

(declare-fun mapDefault!20205 () List!48023)

(assert (=> b!4297881 (= condMapEmpty!20205 (= (arr!7180 (_values!4778 (v!41837 (underlying!9223 (v!41838 (underlying!9224 hm!64)))))) ((as const (Array (_ BitVec 32) List!48023)) mapDefault!20205)))))

(declare-fun e!2671208 () Bool)

(declare-fun e!2671206 () Bool)

(assert (=> b!4297882 (= e!2671208 (and e!2671206 tp!1320351))))

(declare-fun b!4297883 () Bool)

(declare-fun e!2671205 () Bool)

(declare-fun e!2671204 () Bool)

(assert (=> b!4297883 (= e!2671205 (not e!2671204))))

(declare-fun res!1761514 () Bool)

(assert (=> b!4297883 (=> res!1761514 e!2671204)))

(declare-datatypes ((ListMap!1435 0))(
  ( (ListMap!1436 (toList!2163 List!48023)) )
))
(declare-fun lt!1519440 () ListMap!1435)

(declare-fun p!6034 () Int)

(declare-fun forall!8602 (List!48023 Int) Bool)

(assert (=> b!4297883 (= res!1761514 (not (forall!8602 (toList!2163 lt!1519440) p!6034)))))

(declare-fun k0!1716 () K!8989)

(declare-fun v!9471 () V!9191)

(declare-fun lt!1519442 () ListMap!1435)

(declare-fun insertNoDuplicatedKeys!9 (List!48023 K!8989 V!9191) List!48023)

(assert (=> b!4297883 (forall!8602 (insertNoDuplicatedKeys!9 (toList!2163 lt!1519442) k0!1716 v!9471) p!6034)))

(declare-datatypes ((Unit!66571 0))(
  ( (Unit!66572) )
))
(declare-fun lt!1519441 () Unit!66571)

(declare-fun lemmaInsertNoDuplicatedKeysPreservesForall!2 (List!48023 K!8989 V!9191 Int) Unit!66571)

(assert (=> b!4297883 (= lt!1519441 (lemmaInsertNoDuplicatedKeysPreservesForall!2 (toList!2163 lt!1519442) k0!1716 v!9471 p!6034))))

(declare-fun tp!1320352 () Bool)

(declare-fun tp!1320350 () Bool)

(declare-fun e!2671203 () Bool)

(declare-fun array_inv!5145 (array!16072) Bool)

(declare-fun array_inv!5146 (array!16074) Bool)

(assert (=> b!4297884 (= e!2671203 (and tp!1320349 tp!1320350 tp!1320352 (array_inv!5145 (_keys!4797 (v!41837 (underlying!9223 (v!41838 (underlying!9224 hm!64)))))) (array_inv!5146 (_values!4778 (v!41837 (underlying!9223 (v!41838 (underlying!9224 hm!64)))))) e!2671199))))

(declare-fun b!4297885 () Bool)

(declare-fun res!1761515 () Bool)

(declare-fun e!2671200 () Bool)

(assert (=> b!4297885 (=> (not res!1761515) (not e!2671200))))

(declare-fun valid!3475 (MutableMap!4403) Bool)

(assert (=> b!4297885 (= res!1761515 (valid!3475 hm!64))))

(declare-fun b!4297886 () Bool)

(declare-fun e!2671202 () Bool)

(assert (=> b!4297886 (= e!2671200 e!2671202)))

(declare-fun res!1761518 () Bool)

(assert (=> b!4297886 (=> (not res!1761518) (not e!2671202))))

(assert (=> b!4297886 (= res!1761518 (forall!8602 (toList!2163 lt!1519442) p!6034))))

(declare-fun map!9857 (MutableMap!4403) ListMap!1435)

(assert (=> b!4297886 (= lt!1519442 (map!9857 hm!64))))

(declare-fun mapIsEmpty!20205 () Bool)

(assert (=> mapIsEmpty!20205 mapRes!20205))

(declare-fun b!4297887 () Bool)

(declare-fun e!2671207 () Bool)

(declare-fun e!2671198 () Bool)

(assert (=> b!4297887 (= e!2671207 e!2671198)))

(declare-fun b!4297888 () Bool)

(declare-fun e!2671197 () Bool)

(assert (=> b!4297888 (= e!2671202 e!2671197)))

(declare-fun res!1761517 () Bool)

(assert (=> b!4297888 (=> (not res!1761517) (not e!2671197))))

(declare-fun lt!1519443 () tuple2!45744)

(declare-fun dynLambda!20342 (Int tuple2!45744) Bool)

(assert (=> b!4297888 (= res!1761517 (dynLambda!20342 p!6034 lt!1519443))))

(assert (=> b!4297888 (= lt!1519443 (tuple2!45745 k0!1716 v!9471))))

(declare-fun b!4297889 () Bool)

(assert (=> b!4297889 (= e!2671198 e!2671203)))

(declare-fun b!4297890 () Bool)

(assert (=> b!4297890 (= e!2671197 e!2671205)))

(declare-fun res!1761516 () Bool)

(assert (=> b!4297890 (=> (not res!1761516) (not e!2671205))))

(declare-datatypes ((tuple2!45746 0))(
  ( (tuple2!45747 (_1!26152 Bool) (_2!26152 MutableMap!4403)) )
))
(declare-fun lt!1519439 () tuple2!45746)

(assert (=> b!4297890 (= res!1761516 (_1!26152 lt!1519439))))

(declare-fun update!303 (MutableMap!4403 K!8989 V!9191) tuple2!45746)

(assert (=> b!4297890 (= lt!1519439 (update!303 hm!64 k0!1716 v!9471))))

(declare-fun +!145 (ListMap!1435 tuple2!45744) ListMap!1435)

(assert (=> b!4297890 (= lt!1519440 (+!145 lt!1519442 lt!1519443))))

(declare-fun b!4297891 () Bool)

(declare-fun lt!1519438 () MutLongMap!4497)

(get-info :version)

(assert (=> b!4297891 (= e!2671206 (and e!2671207 ((_ is LongMap!4497) lt!1519438)))))

(assert (=> b!4297891 (= lt!1519438 (v!41838 (underlying!9224 hm!64)))))

(declare-fun res!1761512 () Bool)

(assert (=> start!412636 (=> (not res!1761512) (not e!2671200))))

(assert (=> start!412636 (= res!1761512 ((_ is HashMap!4403) hm!64))))

(assert (=> start!412636 e!2671200))

(assert (=> start!412636 e!2671208))

(declare-fun tp_is_empty!23161 () Bool)

(assert (=> start!412636 tp_is_empty!23161))

(declare-fun tp_is_empty!23163 () Bool)

(assert (=> start!412636 tp_is_empty!23163))

(assert (=> start!412636 tp!1320353))

(declare-fun mapNonEmpty!20205 () Bool)

(declare-fun tp!1320354 () Bool)

(declare-fun tp!1320348 () Bool)

(assert (=> mapNonEmpty!20205 (= mapRes!20205 (and tp!1320354 tp!1320348))))

(declare-fun mapKey!20205 () (_ BitVec 32))

(declare-fun mapRest!20205 () (Array (_ BitVec 32) List!48023))

(declare-fun mapValue!20205 () List!48023)

(assert (=> mapNonEmpty!20205 (= (arr!7180 (_values!4778 (v!41837 (underlying!9223 (v!41838 (underlying!9224 hm!64)))))) (store mapRest!20205 mapKey!20205 mapValue!20205))))

(declare-fun b!4297892 () Bool)

(declare-fun res!1761513 () Bool)

(assert (=> b!4297892 (=> (not res!1761513) (not e!2671205))))

(declare-fun eq!88 (ListMap!1435 ListMap!1435) Bool)

(assert (=> b!4297892 (= res!1761513 (eq!88 (map!9857 (_2!26152 lt!1519439)) lt!1519440))))

(declare-fun b!4297893 () Bool)

(assert (=> b!4297893 (= e!2671204 ((_ is HashMap!4403) (_2!26152 lt!1519439)))))

(assert (= (and start!412636 res!1761512) b!4297885))

(assert (= (and b!4297885 res!1761515) b!4297886))

(assert (= (and b!4297886 res!1761518) b!4297888))

(assert (= (and b!4297888 res!1761517) b!4297890))

(assert (= (and b!4297890 res!1761516) b!4297892))

(assert (= (and b!4297892 res!1761513) b!4297883))

(assert (= (and b!4297883 (not res!1761514)) b!4297893))

(assert (= (and b!4297881 condMapEmpty!20205) mapIsEmpty!20205))

(assert (= (and b!4297881 (not condMapEmpty!20205)) mapNonEmpty!20205))

(assert (= b!4297884 b!4297881))

(assert (= b!4297889 b!4297884))

(assert (= b!4297887 b!4297889))

(assert (= (and b!4297891 ((_ is LongMap!4497) (v!41838 (underlying!9224 hm!64)))) b!4297887))

(assert (= b!4297882 b!4297891))

(assert (= (and start!412636 ((_ is HashMap!4403) hm!64)) b!4297882))

(declare-fun b_lambda!126175 () Bool)

(assert (=> (not b_lambda!126175) (not b!4297888)))

(declare-fun t!354653 () Bool)

(declare-fun tb!257115 () Bool)

(assert (=> (and start!412636 (= p!6034 p!6034) t!354653) tb!257115))

(declare-fun result!314356 () Bool)

(assert (=> tb!257115 (= result!314356 true)))

(assert (=> b!4297888 t!354653))

(declare-fun b_and!339125 () Bool)

(assert (= b_and!339123 (and (=> t!354653 result!314356) b_and!339125)))

(declare-fun m!4889955 () Bool)

(assert (=> b!4297892 m!4889955))

(assert (=> b!4297892 m!4889955))

(declare-fun m!4889957 () Bool)

(assert (=> b!4297892 m!4889957))

(declare-fun m!4889959 () Bool)

(assert (=> b!4297890 m!4889959))

(declare-fun m!4889961 () Bool)

(assert (=> b!4297890 m!4889961))

(declare-fun m!4889963 () Bool)

(assert (=> b!4297883 m!4889963))

(declare-fun m!4889965 () Bool)

(assert (=> b!4297883 m!4889965))

(assert (=> b!4297883 m!4889965))

(declare-fun m!4889967 () Bool)

(assert (=> b!4297883 m!4889967))

(declare-fun m!4889969 () Bool)

(assert (=> b!4297883 m!4889969))

(declare-fun m!4889971 () Bool)

(assert (=> mapNonEmpty!20205 m!4889971))

(declare-fun m!4889973 () Bool)

(assert (=> b!4297884 m!4889973))

(declare-fun m!4889975 () Bool)

(assert (=> b!4297884 m!4889975))

(declare-fun m!4889977 () Bool)

(assert (=> b!4297886 m!4889977))

(declare-fun m!4889979 () Bool)

(assert (=> b!4297886 m!4889979))

(declare-fun m!4889981 () Bool)

(assert (=> b!4297888 m!4889981))

(declare-fun m!4889983 () Bool)

(assert (=> b!4297885 m!4889983))

(check-sat (not b!4297890) (not b_next!128585) (not mapNonEmpty!20205) (not b!4297886) (not b!4297883) b_and!339121 (not b_next!128589) (not b!4297881) (not b!4297885) (not b!4297884) tp_is_empty!23161 tp_is_empty!23163 b_and!339119 (not b_lambda!126175) (not b_next!128587) b_and!339125 (not b!4297892))
(check-sat b_and!339119 (not b_next!128587) (not b_next!128585) b_and!339121 b_and!339125 (not b_next!128589))
(get-model)

(declare-fun b_lambda!126177 () Bool)

(assert (= b_lambda!126175 (or (and start!412636 b_free!127885) b_lambda!126177)))

(check-sat (not b_lambda!126177) (not b!4297890) (not b_next!128587) (not b_next!128585) (not mapNonEmpty!20205) (not b!4297886) (not b!4297883) b_and!339121 (not b_next!128589) (not b!4297881) (not b!4297885) (not b!4297884) tp_is_empty!23161 tp_is_empty!23163 b_and!339119 b_and!339125 (not b!4297892))
(check-sat b_and!339119 (not b_next!128587) (not b_next!128585) b_and!339121 b_and!339125 (not b_next!128589))
(get-model)

(declare-fun d!1266355 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7521 (List!48023) (InoxSet tuple2!45744))

(assert (=> d!1266355 (= (eq!88 (map!9857 (_2!26152 lt!1519439)) lt!1519440) (= (content!7521 (toList!2163 (map!9857 (_2!26152 lt!1519439)))) (content!7521 (toList!2163 lt!1519440))))))

(declare-fun bs!603870 () Bool)

(assert (= bs!603870 d!1266355))

(declare-fun m!4889985 () Bool)

(assert (=> bs!603870 m!4889985))

(declare-fun m!4889987 () Bool)

(assert (=> bs!603870 m!4889987))

(assert (=> b!4297892 d!1266355))

(declare-fun d!1266357 () Bool)

(declare-fun lt!1519446 () ListMap!1435)

(declare-fun invariantList!528 (List!48023) Bool)

(assert (=> d!1266357 (invariantList!528 (toList!2163 lt!1519446))))

(declare-datatypes ((tuple2!45748 0))(
  ( (tuple2!45749 (_1!26153 (_ BitVec 64)) (_2!26153 List!48023)) )
))
(declare-datatypes ((List!48024 0))(
  ( (Nil!47900) (Cons!47900 (h!53320 tuple2!45748) (t!354661 List!48024)) )
))
(declare-fun extractMap!261 (List!48024) ListMap!1435)

(declare-datatypes ((ListLongMap!785 0))(
  ( (ListLongMap!786 (toList!2164 List!48024)) )
))
(declare-fun map!9858 (MutLongMap!4497) ListLongMap!785)

(assert (=> d!1266357 (= lt!1519446 (extractMap!261 (toList!2164 (map!9858 (v!41838 (underlying!9224 (_2!26152 lt!1519439)))))))))

(assert (=> d!1266357 (valid!3475 (_2!26152 lt!1519439))))

(assert (=> d!1266357 (= (map!9857 (_2!26152 lt!1519439)) lt!1519446)))

(declare-fun bs!603871 () Bool)

(assert (= bs!603871 d!1266357))

(declare-fun m!4889989 () Bool)

(assert (=> bs!603871 m!4889989))

(declare-fun m!4889991 () Bool)

(assert (=> bs!603871 m!4889991))

(declare-fun m!4889993 () Bool)

(assert (=> bs!603871 m!4889993))

(declare-fun m!4889995 () Bool)

(assert (=> bs!603871 m!4889995))

(assert (=> b!4297892 d!1266357))

(declare-fun d!1266359 () Bool)

(declare-fun res!1761523 () Bool)

(declare-fun e!2671213 () Bool)

(assert (=> d!1266359 (=> res!1761523 e!2671213)))

(assert (=> d!1266359 (= res!1761523 ((_ is Nil!47899) (toList!2163 lt!1519440)))))

(assert (=> d!1266359 (= (forall!8602 (toList!2163 lt!1519440) p!6034) e!2671213)))

(declare-fun b!4297898 () Bool)

(declare-fun e!2671214 () Bool)

(assert (=> b!4297898 (= e!2671213 e!2671214)))

(declare-fun res!1761524 () Bool)

(assert (=> b!4297898 (=> (not res!1761524) (not e!2671214))))

(assert (=> b!4297898 (= res!1761524 (dynLambda!20342 p!6034 (h!53319 (toList!2163 lt!1519440))))))

(declare-fun b!4297899 () Bool)

(assert (=> b!4297899 (= e!2671214 (forall!8602 (t!354654 (toList!2163 lt!1519440)) p!6034))))

(assert (= (and d!1266359 (not res!1761523)) b!4297898))

(assert (= (and b!4297898 res!1761524) b!4297899))

(declare-fun b_lambda!126179 () Bool)

(assert (=> (not b_lambda!126179) (not b!4297898)))

(declare-fun t!354656 () Bool)

(declare-fun tb!257117 () Bool)

(assert (=> (and start!412636 (= p!6034 p!6034) t!354656) tb!257117))

(declare-fun result!314358 () Bool)

(assert (=> tb!257117 (= result!314358 true)))

(assert (=> b!4297898 t!354656))

(declare-fun b_and!339127 () Bool)

(assert (= b_and!339125 (and (=> t!354656 result!314358) b_and!339127)))

(declare-fun m!4889997 () Bool)

(assert (=> b!4297898 m!4889997))

(declare-fun m!4889999 () Bool)

(assert (=> b!4297899 m!4889999))

(assert (=> b!4297883 d!1266359))

(declare-fun d!1266361 () Bool)

(declare-fun res!1761525 () Bool)

(declare-fun e!2671215 () Bool)

(assert (=> d!1266361 (=> res!1761525 e!2671215)))

(assert (=> d!1266361 (= res!1761525 ((_ is Nil!47899) (insertNoDuplicatedKeys!9 (toList!2163 lt!1519442) k0!1716 v!9471)))))

(assert (=> d!1266361 (= (forall!8602 (insertNoDuplicatedKeys!9 (toList!2163 lt!1519442) k0!1716 v!9471) p!6034) e!2671215)))

(declare-fun b!4297900 () Bool)

(declare-fun e!2671216 () Bool)

(assert (=> b!4297900 (= e!2671215 e!2671216)))

(declare-fun res!1761526 () Bool)

(assert (=> b!4297900 (=> (not res!1761526) (not e!2671216))))

(assert (=> b!4297900 (= res!1761526 (dynLambda!20342 p!6034 (h!53319 (insertNoDuplicatedKeys!9 (toList!2163 lt!1519442) k0!1716 v!9471))))))

(declare-fun b!4297901 () Bool)

(assert (=> b!4297901 (= e!2671216 (forall!8602 (t!354654 (insertNoDuplicatedKeys!9 (toList!2163 lt!1519442) k0!1716 v!9471)) p!6034))))

(assert (= (and d!1266361 (not res!1761525)) b!4297900))

(assert (= (and b!4297900 res!1761526) b!4297901))

(declare-fun b_lambda!126181 () Bool)

(assert (=> (not b_lambda!126181) (not b!4297900)))

(declare-fun t!354658 () Bool)

(declare-fun tb!257119 () Bool)

(assert (=> (and start!412636 (= p!6034 p!6034) t!354658) tb!257119))

(declare-fun result!314360 () Bool)

(assert (=> tb!257119 (= result!314360 true)))

(assert (=> b!4297900 t!354658))

(declare-fun b_and!339129 () Bool)

(assert (= b_and!339127 (and (=> t!354658 result!314360) b_and!339129)))

(declare-fun m!4890001 () Bool)

(assert (=> b!4297900 m!4890001))

(declare-fun m!4890003 () Bool)

(assert (=> b!4297901 m!4890003))

(assert (=> b!4297883 d!1266361))

(declare-fun d!1266363 () Bool)

(declare-fun e!2671236 () Bool)

(assert (=> d!1266363 e!2671236))

(declare-fun res!1761537 () Bool)

(assert (=> d!1266363 (=> (not res!1761537) (not e!2671236))))

(declare-fun lt!1519477 () List!48023)

(assert (=> d!1266363 (= res!1761537 (invariantList!528 lt!1519477))))

(declare-fun e!2671233 () List!48023)

(assert (=> d!1266363 (= lt!1519477 e!2671233)))

(declare-fun c!731122 () Bool)

(assert (=> d!1266363 (= c!731122 (and ((_ is Cons!47899) (toList!2163 lt!1519442)) (= (_1!26151 (h!53319 (toList!2163 lt!1519442))) k0!1716)))))

(assert (=> d!1266363 (invariantList!528 (toList!2163 lt!1519442))))

(assert (=> d!1266363 (= (insertNoDuplicatedKeys!9 (toList!2163 lt!1519442) k0!1716 v!9471) lt!1519477)))

(declare-fun b!4297930 () Bool)

(declare-fun e!2671232 () List!48023)

(assert (=> b!4297930 (= e!2671232 Nil!47899)))

(declare-fun bm!295093 () Bool)

(declare-fun call!295100 () List!48023)

(declare-fun call!295098 () List!48023)

(assert (=> bm!295093 (= call!295100 call!295098)))

(declare-fun c!731120 () Bool)

(declare-fun c!731119 () Bool)

(assert (=> bm!295093 (= c!731120 c!731119)))

(declare-fun b!4297931 () Bool)

(assert (=> b!4297931 (= c!731119 ((_ is Cons!47899) (toList!2163 lt!1519442)))))

(declare-fun e!2671235 () List!48023)

(declare-fun e!2671234 () List!48023)

(assert (=> b!4297931 (= e!2671235 e!2671234)))

(declare-fun b!4297932 () Bool)

(assert (=> b!4297932 (= e!2671235 call!295098)))

(declare-fun b!4297933 () Bool)

(assert (=> b!4297933 (= e!2671234 call!295100)))

(declare-fun bm!295094 () Bool)

(declare-fun lt!1519473 () List!48023)

(declare-datatypes ((List!48025 0))(
  ( (Nil!47901) (Cons!47901 (h!53321 K!8989) (t!354662 List!48025)) )
))
(declare-fun call!295099 () List!48025)

(declare-fun getKeysList!27 (List!48023) List!48025)

(assert (=> bm!295094 (= call!295099 (getKeysList!27 (ite c!731122 (toList!2163 lt!1519442) lt!1519473)))))

(declare-fun b!4297934 () Bool)

(declare-fun content!7522 (List!48025) (InoxSet K!8989))

(assert (=> b!4297934 (= e!2671236 (= (content!7522 (getKeysList!27 lt!1519477)) ((_ map or) (content!7522 (getKeysList!27 (toList!2163 lt!1519442))) (store ((as const (Array K!8989 Bool)) false) k0!1716 true))))))

(declare-fun b!4297935 () Bool)

(declare-fun res!1761535 () Bool)

(assert (=> b!4297935 (=> (not res!1761535) (not e!2671236))))

(declare-fun contains!9816 (List!48023 tuple2!45744) Bool)

(assert (=> b!4297935 (= res!1761535 (contains!9816 lt!1519477 (tuple2!45745 k0!1716 v!9471)))))

(declare-fun b!4297936 () Bool)

(assert (=> b!4297936 (= e!2671233 e!2671235)))

(declare-fun res!1761536 () Bool)

(assert (=> b!4297936 (= res!1761536 ((_ is Cons!47899) (toList!2163 lt!1519442)))))

(declare-fun e!2671237 () Bool)

(assert (=> b!4297936 (=> (not res!1761536) (not e!2671237))))

(declare-fun c!731118 () Bool)

(assert (=> b!4297936 (= c!731118 e!2671237)))

(declare-fun b!4297937 () Bool)

(declare-fun e!2671231 () Unit!66571)

(declare-fun Unit!66573 () Unit!66571)

(assert (=> b!4297937 (= e!2671231 Unit!66573)))

(declare-fun b!4297938 () Bool)

(assert (=> b!4297938 false))

(declare-fun lt!1519471 () Unit!66571)

(declare-fun lt!1519479 () Unit!66571)

(assert (=> b!4297938 (= lt!1519471 lt!1519479)))

(declare-fun containsKey!218 (List!48023 K!8989) Bool)

(assert (=> b!4297938 (containsKey!218 (t!354654 (toList!2163 lt!1519442)) (_1!26151 (h!53319 (toList!2163 lt!1519442))))))

(declare-fun lemmaInGetKeysListThenContainsKey!24 (List!48023 K!8989) Unit!66571)

(assert (=> b!4297938 (= lt!1519479 (lemmaInGetKeysListThenContainsKey!24 (t!354654 (toList!2163 lt!1519442)) (_1!26151 (h!53319 (toList!2163 lt!1519442)))))))

(declare-fun lt!1519474 () Unit!66571)

(declare-fun lt!1519478 () Unit!66571)

(assert (=> b!4297938 (= lt!1519474 lt!1519478)))

(declare-fun contains!9817 (List!48025 K!8989) Bool)

(assert (=> b!4297938 (contains!9817 call!295099 (_1!26151 (h!53319 (toList!2163 lt!1519442))))))

(declare-fun lemmaInListThenGetKeysListContains!24 (List!48023 K!8989) Unit!66571)

(assert (=> b!4297938 (= lt!1519478 (lemmaInListThenGetKeysListContains!24 lt!1519473 (_1!26151 (h!53319 (toList!2163 lt!1519442)))))))

(assert (=> b!4297938 (= lt!1519473 (insertNoDuplicatedKeys!9 (t!354654 (toList!2163 lt!1519442)) k0!1716 v!9471))))

(declare-fun Unit!66574 () Unit!66571)

(assert (=> b!4297938 (= e!2671231 Unit!66574)))

(declare-fun bm!295095 () Bool)

(declare-fun call!295101 () List!48023)

(declare-fun $colon$colon!650 (List!48023 tuple2!45744) List!48023)

(assert (=> bm!295095 (= call!295101 ($colon$colon!650 (ite c!731122 (t!354654 (toList!2163 lt!1519442)) (ite c!731118 (toList!2163 lt!1519442) e!2671232)) (ite (or c!731122 c!731118) (tuple2!45745 k0!1716 v!9471) (ite c!731119 (h!53319 (toList!2163 lt!1519442)) (tuple2!45745 k0!1716 v!9471)))))))

(declare-fun b!4297939 () Bool)

(assert (=> b!4297939 (= e!2671233 call!295101)))

(declare-fun lt!1519475 () List!48025)

(assert (=> b!4297939 (= lt!1519475 call!295099)))

(declare-fun lt!1519470 () Unit!66571)

(declare-fun lemmaSubseqRefl!54 (List!48025) Unit!66571)

(assert (=> b!4297939 (= lt!1519470 (lemmaSubseqRefl!54 lt!1519475))))

(declare-fun subseq!570 (List!48025 List!48025) Bool)

(assert (=> b!4297939 (subseq!570 lt!1519475 lt!1519475)))

(declare-fun lt!1519476 () Unit!66571)

(assert (=> b!4297939 (= lt!1519476 lt!1519470)))

(declare-fun b!4297940 () Bool)

(declare-fun res!1761538 () Bool)

(assert (=> b!4297940 (=> (not res!1761538) (not e!2671236))))

(assert (=> b!4297940 (= res!1761538 (containsKey!218 lt!1519477 k0!1716))))

(declare-fun b!4297941 () Bool)

(declare-fun lt!1519472 () List!48023)

(assert (=> b!4297941 (= e!2671234 lt!1519472)))

(assert (=> b!4297941 (= lt!1519472 call!295100)))

(declare-fun c!731121 () Bool)

(assert (=> b!4297941 (= c!731121 (containsKey!218 (insertNoDuplicatedKeys!9 (t!354654 (toList!2163 lt!1519442)) k0!1716 v!9471) (_1!26151 (h!53319 (toList!2163 lt!1519442)))))))

(declare-fun lt!1519469 () Unit!66571)

(assert (=> b!4297941 (= lt!1519469 e!2671231)))

(declare-fun b!4297942 () Bool)

(assert (=> b!4297942 (= e!2671232 (insertNoDuplicatedKeys!9 (t!354654 (toList!2163 lt!1519442)) k0!1716 v!9471))))

(declare-fun b!4297943 () Bool)

(assert (=> b!4297943 (= e!2671237 (not (containsKey!218 (toList!2163 lt!1519442) k0!1716)))))

(declare-fun bm!295096 () Bool)

(assert (=> bm!295096 (= call!295098 call!295101)))

(assert (= (and d!1266363 c!731122) b!4297939))

(assert (= (and d!1266363 (not c!731122)) b!4297936))

(assert (= (and b!4297936 res!1761536) b!4297943))

(assert (= (and b!4297936 c!731118) b!4297932))

(assert (= (and b!4297936 (not c!731118)) b!4297931))

(assert (= (and b!4297931 c!731119) b!4297941))

(assert (= (and b!4297931 (not c!731119)) b!4297933))

(assert (= (and b!4297941 c!731121) b!4297938))

(assert (= (and b!4297941 (not c!731121)) b!4297937))

(assert (= (or b!4297941 b!4297933) bm!295093))

(assert (= (and bm!295093 c!731120) b!4297942))

(assert (= (and bm!295093 (not c!731120)) b!4297930))

(assert (= (or b!4297932 bm!295093) bm!295096))

(assert (= (or b!4297939 b!4297938) bm!295094))

(assert (= (or b!4297939 bm!295096) bm!295095))

(assert (= (and d!1266363 res!1761537) b!4297940))

(assert (= (and b!4297940 res!1761538) b!4297935))

(assert (= (and b!4297935 res!1761535) b!4297934))

(declare-fun m!4890005 () Bool)

(assert (=> b!4297941 m!4890005))

(assert (=> b!4297941 m!4890005))

(declare-fun m!4890007 () Bool)

(assert (=> b!4297941 m!4890007))

(declare-fun m!4890009 () Bool)

(assert (=> bm!295094 m!4890009))

(assert (=> b!4297942 m!4890005))

(declare-fun m!4890011 () Bool)

(assert (=> bm!295095 m!4890011))

(declare-fun m!4890013 () Bool)

(assert (=> b!4297943 m!4890013))

(declare-fun m!4890015 () Bool)

(assert (=> b!4297938 m!4890015))

(declare-fun m!4890017 () Bool)

(assert (=> b!4297938 m!4890017))

(declare-fun m!4890019 () Bool)

(assert (=> b!4297938 m!4890019))

(declare-fun m!4890021 () Bool)

(assert (=> b!4297938 m!4890021))

(assert (=> b!4297938 m!4890005))

(declare-fun m!4890023 () Bool)

(assert (=> b!4297934 m!4890023))

(declare-fun m!4890025 () Bool)

(assert (=> b!4297934 m!4890025))

(assert (=> b!4297934 m!4890023))

(declare-fun m!4890027 () Bool)

(assert (=> b!4297934 m!4890027))

(assert (=> b!4297934 m!4890027))

(declare-fun m!4890029 () Bool)

(assert (=> b!4297934 m!4890029))

(declare-fun m!4890031 () Bool)

(assert (=> b!4297934 m!4890031))

(declare-fun m!4890033 () Bool)

(assert (=> b!4297940 m!4890033))

(declare-fun m!4890035 () Bool)

(assert (=> d!1266363 m!4890035))

(declare-fun m!4890037 () Bool)

(assert (=> d!1266363 m!4890037))

(declare-fun m!4890039 () Bool)

(assert (=> b!4297935 m!4890039))

(declare-fun m!4890041 () Bool)

(assert (=> b!4297939 m!4890041))

(declare-fun m!4890043 () Bool)

(assert (=> b!4297939 m!4890043))

(assert (=> b!4297883 d!1266363))

(declare-fun d!1266365 () Bool)

(assert (=> d!1266365 (forall!8602 (insertNoDuplicatedKeys!9 (toList!2163 lt!1519442) k0!1716 v!9471) p!6034)))

(declare-fun lt!1519482 () Unit!66571)

(declare-fun choose!26162 (List!48023 K!8989 V!9191 Int) Unit!66571)

(assert (=> d!1266365 (= lt!1519482 (choose!26162 (toList!2163 lt!1519442) k0!1716 v!9471 p!6034))))

(assert (=> d!1266365 (invariantList!528 (toList!2163 lt!1519442))))

(assert (=> d!1266365 (= (lemmaInsertNoDuplicatedKeysPreservesForall!2 (toList!2163 lt!1519442) k0!1716 v!9471 p!6034) lt!1519482)))

(declare-fun bs!603872 () Bool)

(assert (= bs!603872 d!1266365))

(assert (=> bs!603872 m!4889965))

(assert (=> bs!603872 m!4889965))

(assert (=> bs!603872 m!4889967))

(declare-fun m!4890045 () Bool)

(assert (=> bs!603872 m!4890045))

(assert (=> bs!603872 m!4890037))

(assert (=> b!4297883 d!1266365))

(declare-fun bs!603873 () Bool)

(declare-fun b!4298000 () Bool)

(declare-fun b!4297986 () Bool)

(assert (= bs!603873 (and b!4298000 b!4297986)))

(declare-fun lambda!131840 () Int)

(declare-fun lambda!131839 () Int)

(assert (=> bs!603873 (= lambda!131840 lambda!131839)))

(declare-fun bm!295159 () Bool)

(declare-fun call!295179 () ListMap!1435)

(assert (=> bm!295159 (= call!295179 (map!9857 hm!64))))

(declare-fun b!4297982 () Bool)

(declare-fun call!295194 () ListMap!1435)

(declare-fun lt!1519609 () ListMap!1435)

(assert (=> b!4297982 (= call!295194 lt!1519609)))

(declare-fun lt!1519643 () Unit!66571)

(declare-fun Unit!66575 () Unit!66571)

(assert (=> b!4297982 (= lt!1519643 Unit!66575)))

(declare-fun call!295173 () Bool)

(assert (=> b!4297982 call!295173))

(declare-fun e!2671262 () Unit!66571)

(declare-fun Unit!66576 () Unit!66571)

(assert (=> b!4297982 (= e!2671262 Unit!66576)))

(declare-fun b!4297983 () Bool)

(declare-fun e!2671268 () Unit!66571)

(declare-fun Unit!66577 () Unit!66571)

(assert (=> b!4297983 (= e!2671268 Unit!66577)))

(declare-fun lt!1519630 () ListMap!1435)

(declare-fun bm!295160 () Bool)

(declare-fun c!731141 () Bool)

(declare-fun lt!1519624 () ListMap!1435)

(declare-fun call!295186 () Bool)

(declare-fun contains!9818 (ListMap!1435 K!8989) Bool)

(assert (=> bm!295160 (= call!295186 (contains!9818 (ite c!731141 lt!1519630 lt!1519624) k0!1716))))

(declare-fun bm!295161 () Bool)

(declare-fun call!295183 () Bool)

(declare-fun call!295193 () ListMap!1435)

(declare-fun e!2671269 () ListMap!1435)

(assert (=> bm!295161 (= call!295183 (eq!88 call!295193 e!2671269))))

(declare-fun c!731140 () Bool)

(declare-fun c!731143 () Bool)

(assert (=> bm!295161 (= c!731140 c!731143)))

(declare-fun lt!1519642 () (_ BitVec 64))

(declare-fun call!295169 () List!48023)

(declare-fun bm!295162 () Bool)

(declare-fun lt!1519641 () (_ BitVec 64))

(declare-fun apply!10866 (MutLongMap!4497 (_ BitVec 64)) List!48023)

(assert (=> bm!295162 (= call!295169 (apply!10866 (v!41838 (underlying!9224 hm!64)) (ite c!731141 lt!1519642 lt!1519641)))))

(declare-fun b!4297984 () Bool)

(declare-fun e!2671260 () Bool)

(assert (=> b!4297984 (= e!2671260 call!295183)))

(declare-fun b!4297985 () Bool)

(declare-fun call!295178 () ListMap!1435)

(assert (=> b!4297985 (= call!295178 lt!1519609)))

(declare-fun lt!1519644 () Unit!66571)

(declare-fun Unit!66578 () Unit!66571)

(assert (=> b!4297985 (= lt!1519644 Unit!66578)))

(assert (=> b!4297985 call!295173))

(declare-fun e!2671263 () Unit!66571)

(declare-fun Unit!66579 () Unit!66571)

(assert (=> b!4297985 (= e!2671263 Unit!66579)))

(declare-fun call!295188 () Bool)

(assert (=> b!4297986 call!295188))

(declare-fun lt!1519628 () Unit!66571)

(declare-fun Unit!66580 () Unit!66571)

(assert (=> b!4297986 (= lt!1519628 Unit!66580)))

(declare-fun call!295168 () Bool)

(assert (=> b!4297986 call!295168))

(declare-fun lt!1519635 () Unit!66571)

(declare-fun Unit!66581 () Unit!66571)

(assert (=> b!4297986 (= lt!1519635 Unit!66581)))

(declare-fun call!295190 () Bool)

(assert (=> b!4297986 call!295190))

(declare-fun lt!1519602 () Unit!66571)

(declare-fun lt!1519636 () Unit!66571)

(assert (=> b!4297986 (= lt!1519602 lt!1519636)))

(declare-fun call!295164 () Bool)

(assert (=> b!4297986 (= call!295186 call!295164)))

(declare-fun call!295167 () Unit!66571)

(assert (=> b!4297986 (= lt!1519636 call!295167)))

(declare-fun lt!1519627 () ListMap!1435)

(declare-fun call!295184 () ListMap!1435)

(assert (=> b!4297986 (= lt!1519627 call!295184)))

(assert (=> b!4297986 (= lt!1519630 call!295194)))

(declare-fun lt!1519612 () Unit!66571)

(declare-fun lt!1519625 () Unit!66571)

(assert (=> b!4297986 (= lt!1519612 lt!1519625)))

(declare-fun call!295177 () Bool)

(assert (=> b!4297986 call!295177))

(declare-fun lt!1519619 () ListLongMap!785)

(declare-fun lt!1519610 () List!48023)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!25 (ListLongMap!785 (_ BitVec 64) List!48023 K!8989 V!9191 Hashable!4413) Unit!66571)

(assert (=> b!4297986 (= lt!1519625 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!25 lt!1519619 lt!1519642 lt!1519610 k0!1716 v!9471 (hashF!6445 hm!64)))))

(declare-fun lt!1519645 () Unit!66571)

(declare-fun lt!1519616 () Unit!66571)

(assert (=> b!4297986 (= lt!1519645 lt!1519616)))

(declare-fun e!2671264 () Bool)

(assert (=> b!4297986 e!2671264))

(declare-fun res!1761551 () Bool)

(assert (=> b!4297986 (=> (not res!1761551) (not e!2671264))))

(declare-fun call!295166 () Bool)

(assert (=> b!4297986 (= res!1761551 call!295166)))

(declare-fun lt!1519622 () ListLongMap!785)

(declare-fun call!295181 () ListLongMap!785)

(assert (=> b!4297986 (= lt!1519622 call!295181)))

(declare-fun call!295176 () Unit!66571)

(assert (=> b!4297986 (= lt!1519616 call!295176)))

(declare-fun lt!1519611 () Unit!66571)

(declare-fun Unit!66582 () Unit!66571)

(assert (=> b!4297986 (= lt!1519611 Unit!66582)))

(declare-fun noDuplicateKeys!141 (List!48023) Bool)

(assert (=> b!4297986 (noDuplicateKeys!141 lt!1519610)))

(declare-fun lt!1519633 () Unit!66571)

(declare-fun Unit!66583 () Unit!66571)

(assert (=> b!4297986 (= lt!1519633 Unit!66583)))

(declare-fun call!295185 () List!48023)

(declare-fun containsKey!219 (List!48023 K!8989) Bool)

(assert (=> b!4297986 (not (containsKey!219 call!295185 k0!1716))))

(declare-fun lt!1519623 () Unit!66571)

(declare-fun Unit!66584 () Unit!66571)

(assert (=> b!4297986 (= lt!1519623 Unit!66584)))

(declare-fun lt!1519647 () Unit!66571)

(declare-fun lt!1519604 () Unit!66571)

(assert (=> b!4297986 (= lt!1519647 lt!1519604)))

(assert (=> b!4297986 (noDuplicateKeys!141 call!295185)))

(declare-fun lt!1519608 () List!48023)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!118 (List!48023 K!8989) Unit!66571)

(assert (=> b!4297986 (= lt!1519604 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!118 lt!1519608 k0!1716))))

(declare-fun lt!1519629 () Unit!66571)

(declare-fun lt!1519637 () Unit!66571)

(assert (=> b!4297986 (= lt!1519629 lt!1519637)))

(declare-fun call!295172 () Bool)

(assert (=> b!4297986 call!295172))

(declare-fun call!295182 () Unit!66571)

(assert (=> b!4297986 (= lt!1519637 call!295182)))

(declare-fun lt!1519614 () Unit!66571)

(declare-fun lt!1519640 () Unit!66571)

(assert (=> b!4297986 (= lt!1519614 lt!1519640)))

(declare-fun call!295171 () Bool)

(assert (=> b!4297986 call!295171))

(declare-fun call!295175 () Unit!66571)

(assert (=> b!4297986 (= lt!1519640 call!295175)))

(declare-fun Unit!66585 () Unit!66571)

(assert (=> b!4297986 (= e!2671262 Unit!66585)))

(declare-fun lt!1519605 () List!48023)

(declare-fun bm!295163 () Bool)

(declare-fun +!146 (ListLongMap!785 tuple2!45748) ListLongMap!785)

(assert (=> bm!295163 (= call!295181 (+!146 lt!1519619 (ite c!731141 (tuple2!45749 lt!1519642 lt!1519610) (tuple2!45749 lt!1519641 lt!1519605))))))

(declare-fun bm!295164 () Bool)

(declare-fun lt!1519594 () ListMap!1435)

(declare-fun lemmaEquivalentThenSameContains!25 (ListMap!1435 ListMap!1435 K!8989) Unit!66571)

(assert (=> bm!295164 (= call!295167 (lemmaEquivalentThenSameContains!25 (ite c!731141 lt!1519630 lt!1519594) (ite c!731141 lt!1519627 lt!1519624) k0!1716))))

(declare-fun b!4297987 () Bool)

(declare-fun e!2671261 () List!48023)

(assert (=> b!4297987 (= e!2671261 Nil!47899)))

(declare-fun b!4297988 () Bool)

(declare-fun e!2671267 () Bool)

(assert (=> b!4297988 (= e!2671267 call!295183)))

(declare-fun bm!295165 () Bool)

(assert (=> bm!295165 (= call!295184 (+!145 lt!1519609 (tuple2!45745 k0!1716 v!9471)))))

(declare-fun bm!295166 () Bool)

(declare-fun call!295174 () ListLongMap!785)

(declare-fun allKeysSameHashInMap!261 (ListLongMap!785 Hashable!4413) Bool)

(assert (=> bm!295166 (= call!295168 (allKeysSameHashInMap!261 call!295174 (hashF!6445 hm!64)))))

(declare-fun bm!295167 () Bool)

(declare-fun call!295170 () ListMap!1435)

(assert (=> bm!295167 (= call!295194 call!295170)))

(declare-fun bm!295168 () Bool)

(assert (=> bm!295168 (= call!295188 (eq!88 (ite c!731141 call!295194 call!295178) call!295184))))

(declare-datatypes ((tuple2!45750 0))(
  ( (tuple2!45751 (_1!26154 Bool) (_2!26154 MutLongMap!4497)) )
))
(declare-fun lt!1519617 () tuple2!45750)

(declare-fun bm!295169 () Bool)

(declare-fun lt!1519615 () tuple2!45750)

(assert (=> bm!295169 (= call!295174 (map!9858 (ite c!731141 (_2!26154 lt!1519615) (_2!26154 lt!1519617))))))

(declare-fun bm!295170 () Bool)

(declare-fun lt!1519598 () List!48023)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!104 (List!48024 (_ BitVec 64) List!48023 Hashable!4413) Unit!66571)

(assert (=> bm!295170 (= call!295175 (lemmaInLongMapAllKeySameHashThenForTuple!104 (toList!2164 lt!1519619) (ite c!731141 lt!1519642 lt!1519641) (ite c!731141 lt!1519608 lt!1519598) (hashF!6445 hm!64)))))

(declare-fun bm!295171 () Bool)

(declare-fun call!295192 () Bool)

(declare-fun lt!1519632 () ListLongMap!785)

(assert (=> bm!295171 (= call!295192 (allKeysSameHashInMap!261 (ite c!731141 lt!1519622 lt!1519632) (hashF!6445 hm!64)))))

(declare-fun bm!295172 () Bool)

(declare-fun removePairForKey!130 (List!48023 K!8989) List!48023)

(assert (=> bm!295172 (= call!295185 (removePairForKey!130 (ite c!731141 lt!1519608 lt!1519598) k0!1716))))

(declare-fun e!2671266 () tuple2!45746)

(declare-fun lt!1519626 () MutableMap!4403)

(declare-fun b!4297989 () Bool)

(declare-datatypes ((tuple2!45752 0))(
  ( (tuple2!45753 (_1!26155 Unit!66571) (_2!26155 MutableMap!4403)) )
))
(declare-fun Unit!66586 () Unit!66571)

(declare-fun Unit!66587 () Unit!66571)

(assert (=> b!4297989 (= e!2671266 (tuple2!45747 (_1!26154 lt!1519615) (_2!26155 (ite false (tuple2!45753 Unit!66586 (HashMap!4403 (Cell!17800 (_2!26154 lt!1519615)) (hashF!6445 hm!64) (bvadd (_size!9038 hm!64) #b00000000000000000000000000000001) (defaultValue!4574 hm!64))) (tuple2!45753 Unit!66587 lt!1519626)))))))

(declare-fun call!295180 () (_ BitVec 64))

(assert (=> b!4297989 (= lt!1519642 call!295180)))

(assert (=> b!4297989 (= lt!1519608 call!295169)))

(assert (=> b!4297989 (= lt!1519610 (Cons!47899 (tuple2!45745 k0!1716 v!9471) call!295185))))

(declare-fun call!295189 () tuple2!45750)

(assert (=> b!4297989 (= lt!1519615 call!295189)))

(assert (=> b!4297989 (= lt!1519626 (HashMap!4403 (Cell!17800 (_2!26154 lt!1519615)) (hashF!6445 hm!64) (_size!9038 hm!64) (defaultValue!4574 hm!64)))))

(declare-fun c!731137 () Bool)

(assert (=> b!4297989 (= c!731137 (_1!26154 lt!1519615))))

(declare-fun lt!1519596 () Unit!66571)

(assert (=> b!4297989 (= lt!1519596 e!2671262)))

(declare-fun bm!295173 () Bool)

(declare-fun lt!1519613 () tuple2!45746)

(assert (=> bm!295173 (= call!295193 (map!9857 (_2!26152 lt!1519613)))))

(declare-fun bm!295174 () Bool)

(declare-fun call!295165 () ListMap!1435)

(declare-fun call!295191 () ListMap!1435)

(assert (=> bm!295174 (= call!295165 (+!145 call!295191 (tuple2!45745 k0!1716 v!9471)))))

(declare-fun bm!295175 () Bool)

(declare-fun forall!8603 (List!48024 Int) Bool)

(assert (=> bm!295175 (= call!295190 (forall!8603 (toList!2164 call!295174) (ite c!731141 lambda!131839 lambda!131840)))))

(declare-fun b!4297990 () Bool)

(assert (=> b!4297990 (= e!2671267 e!2671260)))

(declare-fun res!1761552 () Bool)

(assert (=> b!4297990 (= res!1761552 (contains!9818 call!295193 k0!1716))))

(assert (=> b!4297990 (=> (not res!1761552) (not e!2671260))))

(declare-fun b!4297991 () Bool)

(declare-fun lt!1519646 () Unit!66571)

(assert (=> b!4297991 (= e!2671268 lt!1519646)))

(declare-fun lt!1519607 () Unit!66571)

(assert (=> b!4297991 (= lt!1519607 call!295175)))

(assert (=> b!4297991 call!295171))

(declare-fun lt!1519595 () Unit!66571)

(assert (=> b!4297991 (= lt!1519595 lt!1519607)))

(assert (=> b!4297991 (= lt!1519646 call!295182)))

(assert (=> b!4297991 call!295172))

(declare-fun bm!295176 () Bool)

(assert (=> bm!295176 (= call!295164 (contains!9818 (ite c!731141 lt!1519627 call!295178) k0!1716))))

(declare-fun b!4297992 () Bool)

(declare-fun res!1761550 () Bool)

(declare-fun e!2671270 () Bool)

(assert (=> b!4297992 (=> (not res!1761550) (not e!2671270))))

(assert (=> b!4297992 (= res!1761550 (valid!3475 (_2!26152 lt!1519613)))))

(declare-fun b!4297993 () Bool)

(assert (=> b!4297993 (= e!2671270 e!2671267)))

(assert (=> b!4297993 (= c!731143 (_1!26152 lt!1519613))))

(declare-fun d!1266367 () Bool)

(assert (=> d!1266367 e!2671270))

(declare-fun res!1761553 () Bool)

(assert (=> d!1266367 (=> (not res!1761553) (not e!2671270))))

(assert (=> d!1266367 (= res!1761553 ((_ is HashMap!4403) (_2!26152 lt!1519613)))))

(declare-fun lt!1519601 () tuple2!45746)

(assert (=> d!1266367 (= lt!1519613 (tuple2!45747 (_1!26152 lt!1519601) (_2!26152 lt!1519601)))))

(assert (=> d!1266367 (= lt!1519601 e!2671266)))

(declare-fun contains!9819 (MutableMap!4403 K!8989) Bool)

(assert (=> d!1266367 (= c!731141 (contains!9819 hm!64 k0!1716))))

(assert (=> d!1266367 (= lt!1519619 (map!9858 (v!41838 (underlying!9224 hm!64))))))

(assert (=> d!1266367 (= lt!1519609 (map!9857 hm!64))))

(assert (=> d!1266367 (valid!3475 hm!64)))

(assert (=> d!1266367 (= (update!303 hm!64 k0!1716 v!9471) lt!1519613)))

(declare-fun bm!295177 () Bool)

(assert (=> bm!295177 (= call!295191 (extractMap!261 (toList!2164 lt!1519619)))))

(declare-fun b!4297994 () Bool)

(assert (=> b!4297994 (= e!2671261 call!295169)))

(declare-fun b!4297995 () Bool)

(declare-fun e!2671265 () Bool)

(assert (=> b!4297995 (= e!2671265 call!295192)))

(declare-fun b!4297996 () Bool)

(assert (=> b!4297996 (= e!2671269 (+!145 call!295179 (tuple2!45745 k0!1716 v!9471)))))

(declare-fun bm!295178 () Bool)

(declare-fun lt!1519603 () MutableMap!4403)

(assert (=> bm!295178 (= call!295173 (valid!3475 (ite c!731141 lt!1519626 lt!1519603)))))

(declare-fun bm!295179 () Bool)

(declare-fun allKeysSameHash!113 (List!48023 (_ BitVec 64) Hashable!4413) Bool)

(assert (=> bm!295179 (= call!295172 (allKeysSameHash!113 call!295185 (ite c!731141 lt!1519642 lt!1519641) (hashF!6445 hm!64)))))

(declare-fun b!4297997 () Bool)

(assert (=> b!4297997 (= e!2671269 call!295179)))

(declare-fun bm!295180 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!100 (List!48023 K!8989 (_ BitVec 64) Hashable!4413) Unit!66571)

(assert (=> bm!295180 (= call!295182 (lemmaRemovePairForKeyPreservesHash!100 (ite c!731141 lt!1519608 lt!1519598) k0!1716 (ite c!731141 lt!1519642 lt!1519641) (hashF!6445 hm!64)))))

(declare-fun bm!295181 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!91 (ListLongMap!785 (_ BitVec 64) List!48023 Hashable!4413) Unit!66571)

(assert (=> bm!295181 (= call!295176 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!91 lt!1519619 (ite c!731141 lt!1519642 lt!1519641) (ite c!731141 lt!1519610 lt!1519605) (hashF!6445 hm!64)))))

(declare-fun bm!295182 () Bool)

(assert (=> bm!295182 (= call!295178 call!295170)))

(declare-fun b!4297998 () Bool)

(declare-fun Unit!66588 () Unit!66571)

(declare-fun Unit!66589 () Unit!66571)

(assert (=> b!4297998 (= e!2671266 (tuple2!45747 (_1!26154 lt!1519617) (_2!26155 (ite (_1!26154 lt!1519617) (tuple2!45753 Unit!66588 (HashMap!4403 (Cell!17800 (_2!26154 lt!1519617)) (hashF!6445 hm!64) (bvadd (_size!9038 hm!64) #b00000000000000000000000000000001) (defaultValue!4574 hm!64))) (tuple2!45753 Unit!66589 lt!1519603)))))))

(assert (=> b!4297998 (= lt!1519641 call!295180)))

(declare-fun c!731138 () Bool)

(declare-fun contains!9820 (MutLongMap!4497 (_ BitVec 64)) Bool)

(assert (=> b!4297998 (= c!731138 (contains!9820 (v!41838 (underlying!9224 hm!64)) lt!1519641))))

(assert (=> b!4297998 (= lt!1519598 e!2671261)))

(assert (=> b!4297998 (= lt!1519605 (Cons!47899 (tuple2!45745 k0!1716 v!9471) lt!1519598))))

(assert (=> b!4297998 (= lt!1519617 call!295189)))

(assert (=> b!4297998 (= lt!1519603 (HashMap!4403 (Cell!17800 (_2!26154 lt!1519617)) (hashF!6445 hm!64) (_size!9038 hm!64) (defaultValue!4574 hm!64)))))

(declare-fun c!731142 () Bool)

(assert (=> b!4297998 (= c!731142 (_1!26154 lt!1519617))))

(declare-fun lt!1519593 () Unit!66571)

(assert (=> b!4297998 (= lt!1519593 e!2671263)))

(declare-fun b!4297999 () Bool)

(assert (=> b!4297999 (= e!2671264 call!295192)))

(assert (=> b!4298000 call!295164))

(declare-fun lt!1519620 () Unit!66571)

(declare-fun Unit!66590 () Unit!66571)

(assert (=> b!4298000 (= lt!1519620 Unit!66590)))

(assert (=> b!4298000 (contains!9818 call!295184 k0!1716)))

(declare-fun lt!1519599 () Unit!66571)

(declare-fun lt!1519638 () Unit!66571)

(assert (=> b!4298000 (= lt!1519599 lt!1519638)))

(assert (=> b!4298000 (= (contains!9818 lt!1519594 k0!1716) call!295186)))

(assert (=> b!4298000 (= lt!1519638 call!295167)))

(assert (=> b!4298000 (= lt!1519624 call!295184)))

(assert (=> b!4298000 (= lt!1519594 call!295178)))

(declare-fun lt!1519639 () Unit!66571)

(declare-fun Unit!66591 () Unit!66571)

(assert (=> b!4298000 (= lt!1519639 Unit!66591)))

(assert (=> b!4298000 call!295188))

(declare-fun lt!1519600 () Unit!66571)

(declare-fun Unit!66592 () Unit!66571)

(assert (=> b!4298000 (= lt!1519600 Unit!66592)))

(assert (=> b!4298000 call!295168))

(declare-fun lt!1519597 () Unit!66571)

(declare-fun Unit!66593 () Unit!66571)

(assert (=> b!4298000 (= lt!1519597 Unit!66593)))

(assert (=> b!4298000 call!295190))

(declare-fun lt!1519606 () Unit!66571)

(declare-fun lt!1519631 () Unit!66571)

(assert (=> b!4298000 (= lt!1519606 lt!1519631)))

(assert (=> b!4298000 call!295177))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!25 (ListLongMap!785 (_ BitVec 64) List!48023 K!8989 V!9191 Hashable!4413) Unit!66571)

(assert (=> b!4298000 (= lt!1519631 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!25 lt!1519619 lt!1519641 lt!1519605 k0!1716 v!9471 (hashF!6445 hm!64)))))

(declare-fun lt!1519634 () Unit!66571)

(declare-fun lt!1519621 () Unit!66571)

(assert (=> b!4298000 (= lt!1519634 lt!1519621)))

(assert (=> b!4298000 e!2671265))

(declare-fun res!1761549 () Bool)

(assert (=> b!4298000 (=> (not res!1761549) (not e!2671265))))

(assert (=> b!4298000 (= res!1761549 call!295166)))

(assert (=> b!4298000 (= lt!1519632 call!295181)))

(assert (=> b!4298000 (= lt!1519621 call!295176)))

(declare-fun lt!1519618 () Unit!66571)

(assert (=> b!4298000 (= lt!1519618 e!2671268)))

(declare-fun c!731139 () Bool)

(declare-fun isEmpty!28037 (List!48023) Bool)

(assert (=> b!4298000 (= c!731139 (not (isEmpty!28037 lt!1519598)))))

(declare-fun Unit!66594 () Unit!66571)

(assert (=> b!4298000 (= e!2671263 Unit!66594)))

(declare-fun bm!295183 () Bool)

(declare-fun call!295187 () ListMap!1435)

(assert (=> bm!295183 (= call!295177 (eq!88 call!295187 call!295165))))

(declare-fun bm!295184 () Bool)

(assert (=> bm!295184 (= call!295187 (extractMap!261 (toList!2164 call!295181)))))

(declare-fun bm!295185 () Bool)

(assert (=> bm!295185 (= call!295171 (allKeysSameHash!113 (ite c!731141 lt!1519608 lt!1519598) (ite c!731141 lt!1519642 lt!1519641) (hashF!6445 hm!64)))))

(declare-fun bm!295186 () Bool)

(declare-fun update!304 (MutLongMap!4497 (_ BitVec 64) List!48023) tuple2!45750)

(assert (=> bm!295186 (= call!295189 (update!304 (v!41838 (underlying!9224 hm!64)) (ite c!731141 lt!1519642 lt!1519641) (ite c!731141 lt!1519610 lt!1519605)))))

(declare-fun bm!295187 () Bool)

(declare-fun hash!829 (Hashable!4413 K!8989) (_ BitVec 64))

(assert (=> bm!295187 (= call!295180 (hash!829 (hashF!6445 hm!64) k0!1716))))

(declare-fun bm!295188 () Bool)

(assert (=> bm!295188 (= call!295166 (forall!8603 (ite c!731141 (toList!2164 lt!1519622) (toList!2164 lt!1519632)) (ite c!731141 lambda!131839 lambda!131840)))))

(declare-fun bm!295189 () Bool)

(assert (=> bm!295189 (= call!295170 (map!9857 (ite c!731141 lt!1519626 lt!1519603)))))

(assert (= (and d!1266367 c!731141) b!4297989))

(assert (= (and d!1266367 (not c!731141)) b!4297998))

(assert (= (and b!4297989 c!731137) b!4297986))

(assert (= (and b!4297989 (not c!731137)) b!4297982))

(assert (= (and b!4297986 res!1761551) b!4297999))

(assert (= (or b!4297986 b!4297982) bm!295167))

(assert (= (and b!4297998 c!731138) b!4297994))

(assert (= (and b!4297998 (not c!731138)) b!4297987))

(assert (= (and b!4297998 c!731142) b!4298000))

(assert (= (and b!4297998 (not c!731142)) b!4297985))

(assert (= (and b!4298000 c!731139) b!4297991))

(assert (= (and b!4298000 (not c!731139)) b!4297983))

(assert (= (and b!4298000 res!1761549) b!4297995))

(assert (= (or b!4298000 b!4297985) bm!295182))

(assert (= (or b!4297982 b!4297985) bm!295178))

(assert (= (or b!4297986 b!4297991) bm!295185))

(assert (= (or b!4297986 b!4298000) bm!295188))

(assert (= (or b!4297986 b!4298000) bm!295176))

(assert (= (or b!4297986 b!4298000) bm!295160))

(assert (= (or b!4297999 b!4297995) bm!295171))

(assert (= (or b!4297986 b!4298000) bm!295163))

(assert (= (or b!4297986 b!4297991) bm!295180))

(assert (= (or bm!295167 bm!295182) bm!295189))

(assert (= (or b!4297989 b!4297998) bm!295187))

(assert (= (or b!4297989 b!4297994) bm!295162))

(assert (= (or b!4297986 b!4298000) bm!295177))

(assert (= (or b!4297986 b!4298000) bm!295181))

(assert (= (or b!4297986 b!4298000) bm!295169))

(assert (= (or b!4297986 b!4297991) bm!295170))

(assert (= (or b!4297989 b!4297986 b!4297991) bm!295172))

(assert (= (or b!4297986 b!4298000) bm!295165))

(assert (= (or b!4297989 b!4297998) bm!295186))

(assert (= (or b!4297986 b!4298000) bm!295164))

(assert (= (or b!4297986 b!4297991) bm!295179))

(assert (= (or b!4297986 b!4298000) bm!295184))

(assert (= (or b!4297986 b!4298000) bm!295168))

(assert (= (or b!4297986 b!4298000) bm!295166))

(assert (= (or b!4297986 b!4298000) bm!295175))

(assert (= (or b!4297986 b!4298000) bm!295174))

(assert (= (or b!4297986 b!4298000) bm!295183))

(assert (= (and d!1266367 res!1761553) b!4297992))

(assert (= (and b!4297992 res!1761550) b!4297993))

(assert (= (and b!4297993 c!731143) b!4297990))

(assert (= (and b!4297993 (not c!731143)) b!4297988))

(assert (= (and b!4297990 res!1761552) b!4297984))

(assert (= (or b!4297990 b!4297984 b!4297988) bm!295173))

(assert (= (or b!4297984 b!4297988) bm!295159))

(assert (= (or b!4297984 b!4297988) bm!295161))

(assert (= (and bm!295161 c!731140) b!4297996))

(assert (= (and bm!295161 (not c!731140)) b!4297997))

(declare-fun m!4890047 () Bool)

(assert (=> bm!295174 m!4890047))

(declare-fun m!4890049 () Bool)

(assert (=> bm!295179 m!4890049))

(declare-fun m!4890051 () Bool)

(assert (=> bm!295161 m!4890051))

(declare-fun m!4890053 () Bool)

(assert (=> bm!295184 m!4890053))

(declare-fun m!4890055 () Bool)

(assert (=> bm!295166 m!4890055))

(declare-fun m!4890057 () Bool)

(assert (=> bm!295164 m!4890057))

(declare-fun m!4890059 () Bool)

(assert (=> bm!295187 m!4890059))

(declare-fun m!4890061 () Bool)

(assert (=> bm!295188 m!4890061))

(declare-fun m!4890063 () Bool)

(assert (=> bm!295172 m!4890063))

(declare-fun m!4890065 () Bool)

(assert (=> b!4297990 m!4890065))

(declare-fun m!4890067 () Bool)

(assert (=> bm!295168 m!4890067))

(declare-fun m!4890069 () Bool)

(assert (=> bm!295160 m!4890069))

(declare-fun m!4890071 () Bool)

(assert (=> bm!295162 m!4890071))

(declare-fun m!4890073 () Bool)

(assert (=> bm!295165 m!4890073))

(declare-fun m!4890075 () Bool)

(assert (=> bm!295173 m!4890075))

(declare-fun m!4890077 () Bool)

(assert (=> b!4298000 m!4890077))

(declare-fun m!4890079 () Bool)

(assert (=> b!4298000 m!4890079))

(declare-fun m!4890081 () Bool)

(assert (=> b!4298000 m!4890081))

(declare-fun m!4890083 () Bool)

(assert (=> b!4298000 m!4890083))

(declare-fun m!4890085 () Bool)

(assert (=> b!4297986 m!4890085))

(declare-fun m!4890087 () Bool)

(assert (=> b!4297986 m!4890087))

(declare-fun m!4890089 () Bool)

(assert (=> b!4297986 m!4890089))

(declare-fun m!4890091 () Bool)

(assert (=> b!4297986 m!4890091))

(declare-fun m!4890093 () Bool)

(assert (=> b!4297986 m!4890093))

(declare-fun m!4890095 () Bool)

(assert (=> bm!295183 m!4890095))

(declare-fun m!4890097 () Bool)

(assert (=> bm!295181 m!4890097))

(declare-fun m!4890099 () Bool)

(assert (=> bm!295169 m!4890099))

(declare-fun m!4890101 () Bool)

(assert (=> bm!295186 m!4890101))

(declare-fun m!4890103 () Bool)

(assert (=> bm!295171 m!4890103))

(declare-fun m!4890105 () Bool)

(assert (=> bm!295177 m!4890105))

(declare-fun m!4890107 () Bool)

(assert (=> bm!295175 m!4890107))

(declare-fun m!4890109 () Bool)

(assert (=> b!4297998 m!4890109))

(declare-fun m!4890111 () Bool)

(assert (=> b!4297996 m!4890111))

(assert (=> bm!295159 m!4889979))

(declare-fun m!4890113 () Bool)

(assert (=> b!4297992 m!4890113))

(declare-fun m!4890115 () Bool)

(assert (=> bm!295189 m!4890115))

(declare-fun m!4890117 () Bool)

(assert (=> bm!295176 m!4890117))

(declare-fun m!4890119 () Bool)

(assert (=> bm!295180 m!4890119))

(declare-fun m!4890121 () Bool)

(assert (=> d!1266367 m!4890121))

(declare-fun m!4890123 () Bool)

(assert (=> d!1266367 m!4890123))

(assert (=> d!1266367 m!4889979))

(assert (=> d!1266367 m!4889983))

(declare-fun m!4890125 () Bool)

(assert (=> bm!295185 m!4890125))

(declare-fun m!4890127 () Bool)

(assert (=> bm!295163 m!4890127))

(declare-fun m!4890129 () Bool)

(assert (=> bm!295178 m!4890129))

(declare-fun m!4890131 () Bool)

(assert (=> bm!295170 m!4890131))

(assert (=> b!4297890 d!1266367))

(declare-fun d!1266369 () Bool)

(declare-fun e!2671273 () Bool)

(assert (=> d!1266369 e!2671273))

(declare-fun res!1761558 () Bool)

(assert (=> d!1266369 (=> (not res!1761558) (not e!2671273))))

(declare-fun lt!1519659 () ListMap!1435)

(assert (=> d!1266369 (= res!1761558 (contains!9818 lt!1519659 (_1!26151 lt!1519443)))))

(declare-fun lt!1519657 () List!48023)

(assert (=> d!1266369 (= lt!1519659 (ListMap!1436 lt!1519657))))

(declare-fun lt!1519658 () Unit!66571)

(declare-fun lt!1519656 () Unit!66571)

(assert (=> d!1266369 (= lt!1519658 lt!1519656)))

(declare-datatypes ((Option!10153 0))(
  ( (None!10152) (Some!10152 (v!41840 V!9191)) )
))
(declare-fun getValueByKey!202 (List!48023 K!8989) Option!10153)

(assert (=> d!1266369 (= (getValueByKey!202 lt!1519657 (_1!26151 lt!1519443)) (Some!10152 (_2!26151 lt!1519443)))))

(declare-fun lemmaContainsTupThenGetReturnValue!33 (List!48023 K!8989 V!9191) Unit!66571)

(assert (=> d!1266369 (= lt!1519656 (lemmaContainsTupThenGetReturnValue!33 lt!1519657 (_1!26151 lt!1519443) (_2!26151 lt!1519443)))))

(assert (=> d!1266369 (= lt!1519657 (insertNoDuplicatedKeys!9 (toList!2163 lt!1519442) (_1!26151 lt!1519443) (_2!26151 lt!1519443)))))

(assert (=> d!1266369 (= (+!145 lt!1519442 lt!1519443) lt!1519659)))

(declare-fun b!4298005 () Bool)

(declare-fun res!1761559 () Bool)

(assert (=> b!4298005 (=> (not res!1761559) (not e!2671273))))

(assert (=> b!4298005 (= res!1761559 (= (getValueByKey!202 (toList!2163 lt!1519659) (_1!26151 lt!1519443)) (Some!10152 (_2!26151 lt!1519443))))))

(declare-fun b!4298006 () Bool)

(assert (=> b!4298006 (= e!2671273 (contains!9816 (toList!2163 lt!1519659) lt!1519443))))

(assert (= (and d!1266369 res!1761558) b!4298005))

(assert (= (and b!4298005 res!1761559) b!4298006))

(declare-fun m!4890133 () Bool)

(assert (=> d!1266369 m!4890133))

(declare-fun m!4890135 () Bool)

(assert (=> d!1266369 m!4890135))

(declare-fun m!4890137 () Bool)

(assert (=> d!1266369 m!4890137))

(declare-fun m!4890139 () Bool)

(assert (=> d!1266369 m!4890139))

(declare-fun m!4890141 () Bool)

(assert (=> b!4298005 m!4890141))

(declare-fun m!4890143 () Bool)

(assert (=> b!4298006 m!4890143))

(assert (=> b!4297890 d!1266369))

(declare-fun bs!603874 () Bool)

(declare-fun b!4298011 () Bool)

(assert (= bs!603874 (and b!4298011 b!4297986)))

(declare-fun lambda!131843 () Int)

(assert (=> bs!603874 (= lambda!131843 lambda!131839)))

(declare-fun bs!603875 () Bool)

(assert (= bs!603875 (and b!4298011 b!4298000)))

(assert (=> bs!603875 (= lambda!131843 lambda!131840)))

(declare-fun d!1266371 () Bool)

(declare-fun res!1761564 () Bool)

(declare-fun e!2671276 () Bool)

(assert (=> d!1266371 (=> (not res!1761564) (not e!2671276))))

(declare-fun valid!3476 (MutLongMap!4497) Bool)

(assert (=> d!1266371 (= res!1761564 (valid!3476 (v!41838 (underlying!9224 hm!64))))))

(assert (=> d!1266371 (= (valid!3475 hm!64) e!2671276)))

(declare-fun res!1761565 () Bool)

(assert (=> b!4298011 (=> (not res!1761565) (not e!2671276))))

(assert (=> b!4298011 (= res!1761565 (forall!8603 (toList!2164 (map!9858 (v!41838 (underlying!9224 hm!64)))) lambda!131843))))

(declare-fun b!4298012 () Bool)

(assert (=> b!4298012 (= e!2671276 (allKeysSameHashInMap!261 (map!9858 (v!41838 (underlying!9224 hm!64))) (hashF!6445 hm!64)))))

(assert (= (and d!1266371 res!1761564) b!4298011))

(assert (= (and b!4298011 res!1761565) b!4298012))

(declare-fun m!4890145 () Bool)

(assert (=> d!1266371 m!4890145))

(assert (=> b!4298011 m!4890123))

(declare-fun m!4890147 () Bool)

(assert (=> b!4298011 m!4890147))

(assert (=> b!4298012 m!4890123))

(assert (=> b!4298012 m!4890123))

(declare-fun m!4890149 () Bool)

(assert (=> b!4298012 m!4890149))

(assert (=> b!4297885 d!1266371))

(declare-fun d!1266373 () Bool)

(declare-fun res!1761566 () Bool)

(declare-fun e!2671277 () Bool)

(assert (=> d!1266373 (=> res!1761566 e!2671277)))

(assert (=> d!1266373 (= res!1761566 ((_ is Nil!47899) (toList!2163 lt!1519442)))))

(assert (=> d!1266373 (= (forall!8602 (toList!2163 lt!1519442) p!6034) e!2671277)))

(declare-fun b!4298013 () Bool)

(declare-fun e!2671278 () Bool)

(assert (=> b!4298013 (= e!2671277 e!2671278)))

(declare-fun res!1761567 () Bool)

(assert (=> b!4298013 (=> (not res!1761567) (not e!2671278))))

(assert (=> b!4298013 (= res!1761567 (dynLambda!20342 p!6034 (h!53319 (toList!2163 lt!1519442))))))

(declare-fun b!4298014 () Bool)

(assert (=> b!4298014 (= e!2671278 (forall!8602 (t!354654 (toList!2163 lt!1519442)) p!6034))))

(assert (= (and d!1266373 (not res!1761566)) b!4298013))

(assert (= (and b!4298013 res!1761567) b!4298014))

(declare-fun b_lambda!126183 () Bool)

(assert (=> (not b_lambda!126183) (not b!4298013)))

(declare-fun t!354660 () Bool)

(declare-fun tb!257121 () Bool)

(assert (=> (and start!412636 (= p!6034 p!6034) t!354660) tb!257121))

(declare-fun result!314362 () Bool)

(assert (=> tb!257121 (= result!314362 true)))

(assert (=> b!4298013 t!354660))

(declare-fun b_and!339131 () Bool)

(assert (= b_and!339129 (and (=> t!354660 result!314362) b_and!339131)))

(declare-fun m!4890151 () Bool)

(assert (=> b!4298013 m!4890151))

(declare-fun m!4890153 () Bool)

(assert (=> b!4298014 m!4890153))

(assert (=> b!4297886 d!1266373))

(declare-fun d!1266375 () Bool)

(declare-fun lt!1519660 () ListMap!1435)

(assert (=> d!1266375 (invariantList!528 (toList!2163 lt!1519660))))

(assert (=> d!1266375 (= lt!1519660 (extractMap!261 (toList!2164 (map!9858 (v!41838 (underlying!9224 hm!64))))))))

(assert (=> d!1266375 (valid!3475 hm!64)))

(assert (=> d!1266375 (= (map!9857 hm!64) lt!1519660)))

(declare-fun bs!603876 () Bool)

(assert (= bs!603876 d!1266375))

(declare-fun m!4890155 () Bool)

(assert (=> bs!603876 m!4890155))

(assert (=> bs!603876 m!4890123))

(declare-fun m!4890157 () Bool)

(assert (=> bs!603876 m!4890157))

(assert (=> bs!603876 m!4889983))

(assert (=> b!4297886 d!1266375))

(declare-fun d!1266377 () Bool)

(assert (=> d!1266377 (= (array_inv!5145 (_keys!4797 (v!41837 (underlying!9223 (v!41838 (underlying!9224 hm!64)))))) (bvsge (size!35218 (_keys!4797 (v!41837 (underlying!9223 (v!41838 (underlying!9224 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4297884 d!1266377))

(declare-fun d!1266379 () Bool)

(assert (=> d!1266379 (= (array_inv!5146 (_values!4778 (v!41837 (underlying!9223 (v!41838 (underlying!9224 hm!64)))))) (bvsge (size!35219 (_values!4778 (v!41837 (underlying!9223 (v!41838 (underlying!9224 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4297884 d!1266379))

(declare-fun tp!1320358 () Bool)

(declare-fun b!4298019 () Bool)

(declare-fun e!2671281 () Bool)

(assert (=> b!4298019 (= e!2671281 (and tp_is_empty!23161 tp_is_empty!23163 tp!1320358))))

(assert (=> b!4297881 (= tp!1320355 e!2671281)))

(assert (= (and b!4297881 ((_ is Cons!47899) mapDefault!20205)) b!4298019))

(declare-fun tp!1320367 () Bool)

(declare-fun b!4298026 () Bool)

(declare-fun e!2671286 () Bool)

(assert (=> b!4298026 (= e!2671286 (and tp_is_empty!23161 tp_is_empty!23163 tp!1320367))))

(declare-fun condMapEmpty!20208 () Bool)

(declare-fun mapDefault!20208 () List!48023)

(assert (=> mapNonEmpty!20205 (= condMapEmpty!20208 (= mapRest!20205 ((as const (Array (_ BitVec 32) List!48023)) mapDefault!20208)))))

(declare-fun e!2671287 () Bool)

(declare-fun mapRes!20208 () Bool)

(assert (=> mapNonEmpty!20205 (= tp!1320354 (and e!2671287 mapRes!20208))))

(declare-fun mapNonEmpty!20208 () Bool)

(declare-fun tp!1320365 () Bool)

(assert (=> mapNonEmpty!20208 (= mapRes!20208 (and tp!1320365 e!2671286))))

(declare-fun mapValue!20208 () List!48023)

(declare-fun mapKey!20208 () (_ BitVec 32))

(declare-fun mapRest!20208 () (Array (_ BitVec 32) List!48023))

(assert (=> mapNonEmpty!20208 (= mapRest!20205 (store mapRest!20208 mapKey!20208 mapValue!20208))))

(declare-fun mapIsEmpty!20208 () Bool)

(assert (=> mapIsEmpty!20208 mapRes!20208))

(declare-fun tp!1320366 () Bool)

(declare-fun b!4298027 () Bool)

(assert (=> b!4298027 (= e!2671287 (and tp_is_empty!23161 tp_is_empty!23163 tp!1320366))))

(assert (= (and mapNonEmpty!20205 condMapEmpty!20208) mapIsEmpty!20208))

(assert (= (and mapNonEmpty!20205 (not condMapEmpty!20208)) mapNonEmpty!20208))

(assert (= (and mapNonEmpty!20208 ((_ is Cons!47899) mapValue!20208)) b!4298026))

(assert (= (and mapNonEmpty!20205 ((_ is Cons!47899) mapDefault!20208)) b!4298027))

(declare-fun m!4890159 () Bool)

(assert (=> mapNonEmpty!20208 m!4890159))

(declare-fun b!4298028 () Bool)

(declare-fun tp!1320368 () Bool)

(declare-fun e!2671288 () Bool)

(assert (=> b!4298028 (= e!2671288 (and tp_is_empty!23161 tp_is_empty!23163 tp!1320368))))

(assert (=> mapNonEmpty!20205 (= tp!1320348 e!2671288)))

(assert (= (and mapNonEmpty!20205 ((_ is Cons!47899) mapValue!20205)) b!4298028))

(declare-fun b!4298029 () Bool)

(declare-fun tp!1320369 () Bool)

(declare-fun e!2671289 () Bool)

(assert (=> b!4298029 (= e!2671289 (and tp_is_empty!23161 tp_is_empty!23163 tp!1320369))))

(assert (=> b!4297884 (= tp!1320350 e!2671289)))

(assert (= (and b!4297884 ((_ is Cons!47899) (zeroValue!4756 (v!41837 (underlying!9223 (v!41838 (underlying!9224 hm!64))))))) b!4298029))

(declare-fun b!4298030 () Bool)

(declare-fun tp!1320370 () Bool)

(declare-fun e!2671290 () Bool)

(assert (=> b!4298030 (= e!2671290 (and tp_is_empty!23161 tp_is_empty!23163 tp!1320370))))

(assert (=> b!4297884 (= tp!1320352 e!2671290)))

(assert (= (and b!4297884 ((_ is Cons!47899) (minValue!4756 (v!41837 (underlying!9223 (v!41838 (underlying!9224 hm!64))))))) b!4298030))

(declare-fun b_lambda!126185 () Bool)

(assert (= b_lambda!126179 (or (and start!412636 b_free!127885) b_lambda!126185)))

(declare-fun b_lambda!126187 () Bool)

(assert (= b_lambda!126181 (or (and start!412636 b_free!127885) b_lambda!126187)))

(declare-fun b_lambda!126189 () Bool)

(assert (= b_lambda!126183 (or (and start!412636 b_free!127885) b_lambda!126189)))

(check-sat (not bm!295189) (not d!1266363) b_and!339131 (not b!4297938) (not b!4297901) (not bm!295183) (not bm!295174) (not b!4298012) (not d!1266355) (not bm!295164) (not b!4297899) (not b!4297942) (not bm!295179) (not b!4297990) (not b!4297939) (not mapNonEmpty!20208) (not bm!295187) (not b!4297935) (not bm!295177) (not d!1266369) (not d!1266375) (not bm!295171) (not d!1266371) (not d!1266367) (not b!4297998) (not b_lambda!126187) (not bm!295169) (not b_lambda!126177) (not b!4298030) (not bm!295168) (not bm!295172) (not bm!295188) tp_is_empty!23161 tp_is_empty!23163 (not b!4297941) b_and!339119 (not b!4298028) (not bm!295186) (not b!4297992) (not bm!295163) (not b_next!128587) (not bm!295170) (not b_next!128585) (not b!4297996) (not bm!295176) (not bm!295159) (not bm!295184) (not b!4297986) (not bm!295160) (not bm!295181) (not b!4298019) (not b_lambda!126185) (not bm!295165) (not bm!295173) (not b!4297943) (not b!4298014) (not b!4298011) (not b!4298026) (not bm!295180) (not bm!295162) b_and!339121 (not d!1266357) (not bm!295095) (not b!4298027) (not b_lambda!126189) (not bm!295094) (not bm!295161) (not d!1266365) (not b!4298000) (not bm!295178) (not b!4297940) (not b!4298029) (not bm!295185) (not b!4298005) (not bm!295166) (not b_next!128589) (not b!4298006) (not b!4297934) (not bm!295175))
(check-sat b_and!339131 b_and!339119 (not b_next!128587) (not b_next!128585) b_and!339121 (not b_next!128589))
