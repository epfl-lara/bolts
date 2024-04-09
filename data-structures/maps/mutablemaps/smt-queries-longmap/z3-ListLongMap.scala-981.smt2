; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21198 () Bool)

(assert start!21198)

(declare-fun b_free!5637 () Bool)

(declare-fun b_next!5637 () Bool)

(assert (=> start!21198 (= b_free!5637 (not b_next!5637))))

(declare-fun tp!19981 () Bool)

(declare-fun b_and!12521 () Bool)

(assert (=> start!21198 (= tp!19981 b_and!12521)))

(declare-fun b!213386 () Bool)

(declare-fun res!104472 () Bool)

(declare-fun e!138791 () Bool)

(assert (=> b!213386 (=> (not res!104472) (not e!138791))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213386 (= res!104472 (validKeyInArray!0 k0!843))))

(declare-fun b!213387 () Bool)

(declare-fun res!104470 () Bool)

(assert (=> b!213387 (=> (not res!104470) (not e!138791))))

(declare-datatypes ((array!10200 0))(
  ( (array!10201 (arr!4840 (Array (_ BitVec 32) (_ BitVec 64))) (size!5165 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10200)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10200 (_ BitVec 32)) Bool)

(assert (=> b!213387 (= res!104470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!213388 () Bool)

(declare-fun res!104469 () Bool)

(assert (=> b!213388 (=> (not res!104469) (not e!138791))))

(declare-datatypes ((List!3137 0))(
  ( (Nil!3134) (Cons!3133 (h!3775 (_ BitVec 64)) (t!8096 List!3137)) )
))
(declare-fun arrayNoDuplicates!0 (array!10200 (_ BitVec 32) List!3137) Bool)

(assert (=> b!213388 (= res!104469 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3134))))

(declare-fun b!213389 () Bool)

(declare-fun e!138790 () Bool)

(declare-fun tp_is_empty!5499 () Bool)

(assert (=> b!213389 (= e!138790 tp_is_empty!5499)))

(declare-fun b!213390 () Bool)

(declare-fun e!138788 () Bool)

(assert (=> b!213390 (= e!138788 tp_is_empty!5499)))

(declare-fun b!213391 () Bool)

(declare-fun res!104471 () Bool)

(assert (=> b!213391 (=> (not res!104471) (not e!138791))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6979 0))(
  ( (V!6980 (val!2794 Int)) )
))
(declare-datatypes ((ValueCell!2406 0))(
  ( (ValueCellFull!2406 (v!4800 V!6979)) (EmptyCell!2406) )
))
(declare-datatypes ((array!10202 0))(
  ( (array!10203 (arr!4841 (Array (_ BitVec 32) ValueCell!2406)) (size!5166 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10202)

(assert (=> b!213391 (= res!104471 (and (= (size!5166 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5165 _keys!825) (size!5166 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun lt!110324 () Bool)

(declare-fun b!213392 () Bool)

(declare-datatypes ((tuple2!4228 0))(
  ( (tuple2!4229 (_1!2124 (_ BitVec 64)) (_2!2124 V!6979)) )
))
(declare-datatypes ((List!3138 0))(
  ( (Nil!3135) (Cons!3134 (h!3776 tuple2!4228) (t!8097 List!3138)) )
))
(declare-datatypes ((ListLongMap!3155 0))(
  ( (ListLongMap!3156 (toList!1593 List!3138)) )
))
(declare-fun lt!110321 () ListLongMap!3155)

(declare-fun lt!110322 () ListLongMap!3155)

(assert (=> b!213392 (= e!138791 (not (or (and (not lt!110324) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!110324) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!110324) (= lt!110322 lt!110321))))))

(assert (=> b!213392 (= lt!110324 (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!110323 () ListLongMap!3155)

(declare-fun zeroValue!615 () V!6979)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6979)

(declare-fun getCurrentListMap!1116 (array!10200 array!10202 (_ BitVec 32) (_ BitVec 32) V!6979 V!6979 (_ BitVec 32) Int) ListLongMap!3155)

(assert (=> b!213392 (= lt!110323 (getCurrentListMap!1116 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110327 () array!10202)

(assert (=> b!213392 (= lt!110322 (getCurrentListMap!1116 _keys!825 lt!110327 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110326 () ListLongMap!3155)

(assert (=> b!213392 (and (= lt!110321 lt!110326) (= lt!110326 lt!110321))))

(declare-fun lt!110325 () ListLongMap!3155)

(declare-fun v!520 () V!6979)

(declare-fun +!586 (ListLongMap!3155 tuple2!4228) ListLongMap!3155)

(assert (=> b!213392 (= lt!110326 (+!586 lt!110325 (tuple2!4229 k0!843 v!520)))))

(declare-datatypes ((Unit!6471 0))(
  ( (Unit!6472) )
))
(declare-fun lt!110320 () Unit!6471)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!233 (array!10200 array!10202 (_ BitVec 32) (_ BitVec 32) V!6979 V!6979 (_ BitVec 32) (_ BitVec 64) V!6979 (_ BitVec 32) Int) Unit!6471)

(assert (=> b!213392 (= lt!110320 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!233 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!515 (array!10200 array!10202 (_ BitVec 32) (_ BitVec 32) V!6979 V!6979 (_ BitVec 32) Int) ListLongMap!3155)

(assert (=> b!213392 (= lt!110321 (getCurrentListMapNoExtraKeys!515 _keys!825 lt!110327 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!213392 (= lt!110327 (array!10203 (store (arr!4841 _values!649) i!601 (ValueCellFull!2406 v!520)) (size!5166 _values!649)))))

(assert (=> b!213392 (= lt!110325 (getCurrentListMapNoExtraKeys!515 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!104468 () Bool)

(assert (=> start!21198 (=> (not res!104468) (not e!138791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21198 (= res!104468 (validMask!0 mask!1149))))

(assert (=> start!21198 e!138791))

(declare-fun e!138789 () Bool)

(declare-fun array_inv!3191 (array!10202) Bool)

(assert (=> start!21198 (and (array_inv!3191 _values!649) e!138789)))

(assert (=> start!21198 true))

(assert (=> start!21198 tp_is_empty!5499))

(declare-fun array_inv!3192 (array!10200) Bool)

(assert (=> start!21198 (array_inv!3192 _keys!825)))

(assert (=> start!21198 tp!19981))

(declare-fun b!213393 () Bool)

(declare-fun res!104466 () Bool)

(assert (=> b!213393 (=> (not res!104466) (not e!138791))))

(assert (=> b!213393 (= res!104466 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5165 _keys!825))))))

(declare-fun b!213394 () Bool)

(declare-fun res!104467 () Bool)

(assert (=> b!213394 (=> (not res!104467) (not e!138791))))

(assert (=> b!213394 (= res!104467 (= (select (arr!4840 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!9347 () Bool)

(declare-fun mapRes!9347 () Bool)

(assert (=> mapIsEmpty!9347 mapRes!9347))

(declare-fun mapNonEmpty!9347 () Bool)

(declare-fun tp!19982 () Bool)

(assert (=> mapNonEmpty!9347 (= mapRes!9347 (and tp!19982 e!138790))))

(declare-fun mapRest!9347 () (Array (_ BitVec 32) ValueCell!2406))

(declare-fun mapKey!9347 () (_ BitVec 32))

(declare-fun mapValue!9347 () ValueCell!2406)

(assert (=> mapNonEmpty!9347 (= (arr!4841 _values!649) (store mapRest!9347 mapKey!9347 mapValue!9347))))

(declare-fun b!213395 () Bool)

(assert (=> b!213395 (= e!138789 (and e!138788 mapRes!9347))))

(declare-fun condMapEmpty!9347 () Bool)

(declare-fun mapDefault!9347 () ValueCell!2406)

(assert (=> b!213395 (= condMapEmpty!9347 (= (arr!4841 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2406)) mapDefault!9347)))))

(assert (= (and start!21198 res!104468) b!213391))

(assert (= (and b!213391 res!104471) b!213387))

(assert (= (and b!213387 res!104470) b!213388))

(assert (= (and b!213388 res!104469) b!213393))

(assert (= (and b!213393 res!104466) b!213386))

(assert (= (and b!213386 res!104472) b!213394))

(assert (= (and b!213394 res!104467) b!213392))

(assert (= (and b!213395 condMapEmpty!9347) mapIsEmpty!9347))

(assert (= (and b!213395 (not condMapEmpty!9347)) mapNonEmpty!9347))

(get-info :version)

(assert (= (and mapNonEmpty!9347 ((_ is ValueCellFull!2406) mapValue!9347)) b!213389))

(assert (= (and b!213395 ((_ is ValueCellFull!2406) mapDefault!9347)) b!213390))

(assert (= start!21198 b!213395))

(declare-fun m!241283 () Bool)

(assert (=> start!21198 m!241283))

(declare-fun m!241285 () Bool)

(assert (=> start!21198 m!241285))

(declare-fun m!241287 () Bool)

(assert (=> start!21198 m!241287))

(declare-fun m!241289 () Bool)

(assert (=> b!213386 m!241289))

(declare-fun m!241291 () Bool)

(assert (=> b!213388 m!241291))

(declare-fun m!241293 () Bool)

(assert (=> mapNonEmpty!9347 m!241293))

(declare-fun m!241295 () Bool)

(assert (=> b!213392 m!241295))

(declare-fun m!241297 () Bool)

(assert (=> b!213392 m!241297))

(declare-fun m!241299 () Bool)

(assert (=> b!213392 m!241299))

(declare-fun m!241301 () Bool)

(assert (=> b!213392 m!241301))

(declare-fun m!241303 () Bool)

(assert (=> b!213392 m!241303))

(declare-fun m!241305 () Bool)

(assert (=> b!213392 m!241305))

(declare-fun m!241307 () Bool)

(assert (=> b!213392 m!241307))

(declare-fun m!241309 () Bool)

(assert (=> b!213387 m!241309))

(declare-fun m!241311 () Bool)

(assert (=> b!213394 m!241311))

(check-sat (not b!213387) (not mapNonEmpty!9347) (not b!213386) tp_is_empty!5499 (not start!21198) b_and!12521 (not b!213392) (not b!213388) (not b_next!5637))
(check-sat b_and!12521 (not b_next!5637))
(get-model)

(declare-fun b!213436 () Bool)

(declare-fun e!138818 () Bool)

(declare-fun contains!1418 (List!3137 (_ BitVec 64)) Bool)

(assert (=> b!213436 (= e!138818 (contains!1418 Nil!3134 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213437 () Bool)

(declare-fun e!138815 () Bool)

(declare-fun e!138817 () Bool)

(assert (=> b!213437 (= e!138815 e!138817)))

(declare-fun res!104501 () Bool)

(assert (=> b!213437 (=> (not res!104501) (not e!138817))))

(assert (=> b!213437 (= res!104501 (not e!138818))))

(declare-fun res!104502 () Bool)

(assert (=> b!213437 (=> (not res!104502) (not e!138818))))

(assert (=> b!213437 (= res!104502 (validKeyInArray!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!20214 () Bool)

(declare-fun call!20217 () Bool)

(declare-fun c!35909 () Bool)

(assert (=> bm!20214 (= call!20217 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35909 (Cons!3133 (select (arr!4840 _keys!825) #b00000000000000000000000000000000) Nil!3134) Nil!3134)))))

(declare-fun b!213439 () Bool)

(declare-fun e!138816 () Bool)

(assert (=> b!213439 (= e!138817 e!138816)))

(assert (=> b!213439 (= c!35909 (validKeyInArray!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213440 () Bool)

(assert (=> b!213440 (= e!138816 call!20217)))

(declare-fun b!213438 () Bool)

(assert (=> b!213438 (= e!138816 call!20217)))

(declare-fun d!58121 () Bool)

(declare-fun res!104500 () Bool)

(assert (=> d!58121 (=> res!104500 e!138815)))

(assert (=> d!58121 (= res!104500 (bvsge #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(assert (=> d!58121 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3134) e!138815)))

(assert (= (and d!58121 (not res!104500)) b!213437))

(assert (= (and b!213437 res!104502) b!213436))

(assert (= (and b!213437 res!104501) b!213439))

(assert (= (and b!213439 c!35909) b!213438))

(assert (= (and b!213439 (not c!35909)) b!213440))

(assert (= (or b!213438 b!213440) bm!20214))

(declare-fun m!241343 () Bool)

(assert (=> b!213436 m!241343))

(assert (=> b!213436 m!241343))

(declare-fun m!241345 () Bool)

(assert (=> b!213436 m!241345))

(assert (=> b!213437 m!241343))

(assert (=> b!213437 m!241343))

(declare-fun m!241347 () Bool)

(assert (=> b!213437 m!241347))

(assert (=> bm!20214 m!241343))

(declare-fun m!241349 () Bool)

(assert (=> bm!20214 m!241349))

(assert (=> b!213439 m!241343))

(assert (=> b!213439 m!241343))

(assert (=> b!213439 m!241347))

(assert (=> b!213388 d!58121))

(declare-fun b!213465 () Bool)

(declare-fun lt!110366 () Unit!6471)

(declare-fun lt!110371 () Unit!6471)

(assert (=> b!213465 (= lt!110366 lt!110371)))

(declare-fun lt!110367 () ListLongMap!3155)

(declare-fun lt!110370 () (_ BitVec 64))

(declare-fun lt!110372 () V!6979)

(declare-fun lt!110368 () (_ BitVec 64))

(declare-fun contains!1419 (ListLongMap!3155 (_ BitVec 64)) Bool)

(assert (=> b!213465 (not (contains!1419 (+!586 lt!110367 (tuple2!4229 lt!110368 lt!110372)) lt!110370))))

(declare-fun addStillNotContains!110 (ListLongMap!3155 (_ BitVec 64) V!6979 (_ BitVec 64)) Unit!6471)

(assert (=> b!213465 (= lt!110371 (addStillNotContains!110 lt!110367 lt!110368 lt!110372 lt!110370))))

(assert (=> b!213465 (= lt!110370 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!2588 (ValueCell!2406 V!6979) V!6979)

(declare-fun dynLambda!537 (Int (_ BitVec 64)) V!6979)

(assert (=> b!213465 (= lt!110372 (get!2588 (select (arr!4841 _values!649) #b00000000000000000000000000000000) (dynLambda!537 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!213465 (= lt!110368 (select (arr!4840 _keys!825) #b00000000000000000000000000000000))))

(declare-fun call!20220 () ListLongMap!3155)

(assert (=> b!213465 (= lt!110367 call!20220)))

(declare-fun e!138839 () ListLongMap!3155)

(assert (=> b!213465 (= e!138839 (+!586 call!20220 (tuple2!4229 (select (arr!4840 _keys!825) #b00000000000000000000000000000000) (get!2588 (select (arr!4841 _values!649) #b00000000000000000000000000000000) (dynLambda!537 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!213466 () Bool)

(declare-fun e!138837 () ListLongMap!3155)

(assert (=> b!213466 (= e!138837 (ListLongMap!3156 Nil!3135))))

(declare-fun b!213467 () Bool)

(declare-fun res!104511 () Bool)

(declare-fun e!138836 () Bool)

(assert (=> b!213467 (=> (not res!104511) (not e!138836))))

(declare-fun lt!110369 () ListLongMap!3155)

(assert (=> b!213467 (= res!104511 (not (contains!1419 lt!110369 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!213468 () Bool)

(declare-fun e!138834 () Bool)

(assert (=> b!213468 (= e!138834 (= lt!110369 (getCurrentListMapNoExtraKeys!515 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!213469 () Bool)

(declare-fun isEmpty!505 (ListLongMap!3155) Bool)

(assert (=> b!213469 (= e!138834 (isEmpty!505 lt!110369))))

(declare-fun b!213470 () Bool)

(assert (=> b!213470 (= e!138837 e!138839)))

(declare-fun c!35920 () Bool)

(assert (=> b!213470 (= c!35920 (validKeyInArray!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213471 () Bool)

(declare-fun e!138833 () Bool)

(assert (=> b!213471 (= e!138836 e!138833)))

(declare-fun c!35921 () Bool)

(declare-fun e!138835 () Bool)

(assert (=> b!213471 (= c!35921 e!138835)))

(declare-fun res!104512 () Bool)

(assert (=> b!213471 (=> (not res!104512) (not e!138835))))

(assert (=> b!213471 (= res!104512 (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun b!213472 () Bool)

(assert (=> b!213472 (= e!138833 e!138834)))

(declare-fun c!35919 () Bool)

(assert (=> b!213472 (= c!35919 (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun b!213473 () Bool)

(assert (=> b!213473 (= e!138839 call!20220)))

(declare-fun bm!20217 () Bool)

(assert (=> bm!20217 (= call!20220 (getCurrentListMapNoExtraKeys!515 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun d!58123 () Bool)

(assert (=> d!58123 e!138836))

(declare-fun res!104514 () Bool)

(assert (=> d!58123 (=> (not res!104514) (not e!138836))))

(assert (=> d!58123 (= res!104514 (not (contains!1419 lt!110369 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!58123 (= lt!110369 e!138837)))

(declare-fun c!35918 () Bool)

(assert (=> d!58123 (= c!35918 (bvsge #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(assert (=> d!58123 (validMask!0 mask!1149)))

(assert (=> d!58123 (= (getCurrentListMapNoExtraKeys!515 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!110369)))

(declare-fun b!213474 () Bool)

(assert (=> b!213474 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(assert (=> b!213474 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5166 _values!649)))))

(declare-fun e!138838 () Bool)

(declare-fun apply!199 (ListLongMap!3155 (_ BitVec 64)) V!6979)

(assert (=> b!213474 (= e!138838 (= (apply!199 lt!110369 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)) (get!2588 (select (arr!4841 _values!649) #b00000000000000000000000000000000) (dynLambda!537 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!213475 () Bool)

(assert (=> b!213475 (= e!138833 e!138838)))

(assert (=> b!213475 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun res!104513 () Bool)

(assert (=> b!213475 (= res!104513 (contains!1419 lt!110369 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213475 (=> (not res!104513) (not e!138838))))

(declare-fun b!213476 () Bool)

(assert (=> b!213476 (= e!138835 (validKeyInArray!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213476 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!58123 c!35918) b!213466))

(assert (= (and d!58123 (not c!35918)) b!213470))

(assert (= (and b!213470 c!35920) b!213465))

(assert (= (and b!213470 (not c!35920)) b!213473))

(assert (= (or b!213465 b!213473) bm!20217))

(assert (= (and d!58123 res!104514) b!213467))

(assert (= (and b!213467 res!104511) b!213471))

(assert (= (and b!213471 res!104512) b!213476))

(assert (= (and b!213471 c!35921) b!213475))

(assert (= (and b!213471 (not c!35921)) b!213472))

(assert (= (and b!213475 res!104513) b!213474))

(assert (= (and b!213472 c!35919) b!213468))

(assert (= (and b!213472 (not c!35919)) b!213469))

(declare-fun b_lambda!7809 () Bool)

(assert (=> (not b_lambda!7809) (not b!213465)))

(declare-fun t!8099 () Bool)

(declare-fun tb!2919 () Bool)

(assert (=> (and start!21198 (= defaultEntry!657 defaultEntry!657) t!8099) tb!2919))

(declare-fun result!5029 () Bool)

(assert (=> tb!2919 (= result!5029 tp_is_empty!5499)))

(assert (=> b!213465 t!8099))

(declare-fun b_and!12525 () Bool)

(assert (= b_and!12521 (and (=> t!8099 result!5029) b_and!12525)))

(declare-fun b_lambda!7811 () Bool)

(assert (=> (not b_lambda!7811) (not b!213474)))

(assert (=> b!213474 t!8099))

(declare-fun b_and!12527 () Bool)

(assert (= b_and!12525 (and (=> t!8099 result!5029) b_and!12527)))

(assert (=> b!213470 m!241343))

(assert (=> b!213470 m!241343))

(assert (=> b!213470 m!241347))

(assert (=> b!213475 m!241343))

(assert (=> b!213475 m!241343))

(declare-fun m!241351 () Bool)

(assert (=> b!213475 m!241351))

(assert (=> b!213476 m!241343))

(assert (=> b!213476 m!241343))

(assert (=> b!213476 m!241347))

(declare-fun m!241353 () Bool)

(assert (=> b!213474 m!241353))

(declare-fun m!241355 () Bool)

(assert (=> b!213474 m!241355))

(assert (=> b!213474 m!241343))

(declare-fun m!241357 () Bool)

(assert (=> b!213474 m!241357))

(assert (=> b!213474 m!241343))

(assert (=> b!213474 m!241355))

(assert (=> b!213474 m!241353))

(declare-fun m!241359 () Bool)

(assert (=> b!213474 m!241359))

(declare-fun m!241361 () Bool)

(assert (=> d!58123 m!241361))

(assert (=> d!58123 m!241283))

(declare-fun m!241363 () Bool)

(assert (=> b!213469 m!241363))

(declare-fun m!241365 () Bool)

(assert (=> bm!20217 m!241365))

(declare-fun m!241367 () Bool)

(assert (=> b!213467 m!241367))

(assert (=> b!213468 m!241365))

(declare-fun m!241369 () Bool)

(assert (=> b!213465 m!241369))

(declare-fun m!241371 () Bool)

(assert (=> b!213465 m!241371))

(assert (=> b!213465 m!241353))

(declare-fun m!241373 () Bool)

(assert (=> b!213465 m!241373))

(declare-fun m!241375 () Bool)

(assert (=> b!213465 m!241375))

(assert (=> b!213465 m!241355))

(assert (=> b!213465 m!241373))

(assert (=> b!213465 m!241343))

(assert (=> b!213465 m!241355))

(assert (=> b!213465 m!241353))

(assert (=> b!213465 m!241359))

(assert (=> b!213392 d!58123))

(declare-fun e!138874 () Bool)

(declare-fun lt!110430 () ListLongMap!3155)

(declare-fun b!213521 () Bool)

(assert (=> b!213521 (= e!138874 (= (apply!199 lt!110430 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)) (get!2588 (select (arr!4841 lt!110327) #b00000000000000000000000000000000) (dynLambda!537 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!213521 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5166 lt!110327)))))

(assert (=> b!213521 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun b!213522 () Bool)

(declare-fun e!138876 () Unit!6471)

(declare-fun lt!110417 () Unit!6471)

(assert (=> b!213522 (= e!138876 lt!110417)))

(declare-fun lt!110419 () ListLongMap!3155)

(assert (=> b!213522 (= lt!110419 (getCurrentListMapNoExtraKeys!515 _keys!825 lt!110327 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110427 () (_ BitVec 64))

(assert (=> b!213522 (= lt!110427 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110424 () (_ BitVec 64))

(assert (=> b!213522 (= lt!110424 (select (arr!4840 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110431 () Unit!6471)

(declare-fun addStillContains!175 (ListLongMap!3155 (_ BitVec 64) V!6979 (_ BitVec 64)) Unit!6471)

(assert (=> b!213522 (= lt!110431 (addStillContains!175 lt!110419 lt!110427 zeroValue!615 lt!110424))))

(assert (=> b!213522 (contains!1419 (+!586 lt!110419 (tuple2!4229 lt!110427 zeroValue!615)) lt!110424)))

(declare-fun lt!110428 () Unit!6471)

(assert (=> b!213522 (= lt!110428 lt!110431)))

(declare-fun lt!110418 () ListLongMap!3155)

(assert (=> b!213522 (= lt!110418 (getCurrentListMapNoExtraKeys!515 _keys!825 lt!110327 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110422 () (_ BitVec 64))

(assert (=> b!213522 (= lt!110422 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110426 () (_ BitVec 64))

(assert (=> b!213522 (= lt!110426 (select (arr!4840 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110436 () Unit!6471)

(declare-fun addApplyDifferent!175 (ListLongMap!3155 (_ BitVec 64) V!6979 (_ BitVec 64)) Unit!6471)

(assert (=> b!213522 (= lt!110436 (addApplyDifferent!175 lt!110418 lt!110422 minValue!615 lt!110426))))

(assert (=> b!213522 (= (apply!199 (+!586 lt!110418 (tuple2!4229 lt!110422 minValue!615)) lt!110426) (apply!199 lt!110418 lt!110426))))

(declare-fun lt!110435 () Unit!6471)

(assert (=> b!213522 (= lt!110435 lt!110436)))

(declare-fun lt!110437 () ListLongMap!3155)

(assert (=> b!213522 (= lt!110437 (getCurrentListMapNoExtraKeys!515 _keys!825 lt!110327 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110433 () (_ BitVec 64))

(assert (=> b!213522 (= lt!110433 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110420 () (_ BitVec 64))

(assert (=> b!213522 (= lt!110420 (select (arr!4840 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110425 () Unit!6471)

(assert (=> b!213522 (= lt!110425 (addApplyDifferent!175 lt!110437 lt!110433 zeroValue!615 lt!110420))))

(assert (=> b!213522 (= (apply!199 (+!586 lt!110437 (tuple2!4229 lt!110433 zeroValue!615)) lt!110420) (apply!199 lt!110437 lt!110420))))

(declare-fun lt!110432 () Unit!6471)

(assert (=> b!213522 (= lt!110432 lt!110425)))

(declare-fun lt!110421 () ListLongMap!3155)

(assert (=> b!213522 (= lt!110421 (getCurrentListMapNoExtraKeys!515 _keys!825 lt!110327 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110434 () (_ BitVec 64))

(assert (=> b!213522 (= lt!110434 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110438 () (_ BitVec 64))

(assert (=> b!213522 (= lt!110438 (select (arr!4840 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!213522 (= lt!110417 (addApplyDifferent!175 lt!110421 lt!110434 minValue!615 lt!110438))))

(assert (=> b!213522 (= (apply!199 (+!586 lt!110421 (tuple2!4229 lt!110434 minValue!615)) lt!110438) (apply!199 lt!110421 lt!110438))))

(declare-fun bm!20232 () Bool)

(declare-fun call!20236 () ListLongMap!3155)

(declare-fun call!20241 () ListLongMap!3155)

(assert (=> bm!20232 (= call!20236 call!20241)))

(declare-fun b!213523 () Bool)

(declare-fun e!138869 () ListLongMap!3155)

(declare-fun call!20238 () ListLongMap!3155)

(assert (=> b!213523 (= e!138869 call!20238)))

(declare-fun d!58125 () Bool)

(declare-fun e!138872 () Bool)

(assert (=> d!58125 e!138872))

(declare-fun res!104536 () Bool)

(assert (=> d!58125 (=> (not res!104536) (not e!138872))))

(assert (=> d!58125 (= res!104536 (or (bvsge #b00000000000000000000000000000000 (size!5165 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))))

(declare-fun lt!110429 () ListLongMap!3155)

(assert (=> d!58125 (= lt!110430 lt!110429)))

(declare-fun lt!110423 () Unit!6471)

(assert (=> d!58125 (= lt!110423 e!138876)))

(declare-fun c!35934 () Bool)

(declare-fun e!138866 () Bool)

(assert (=> d!58125 (= c!35934 e!138866)))

(declare-fun res!104541 () Bool)

(assert (=> d!58125 (=> (not res!104541) (not e!138866))))

(assert (=> d!58125 (= res!104541 (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun e!138875 () ListLongMap!3155)

(assert (=> d!58125 (= lt!110429 e!138875)))

(declare-fun c!35937 () Bool)

(assert (=> d!58125 (= c!35937 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58125 (validMask!0 mask!1149)))

(assert (=> d!58125 (= (getCurrentListMap!1116 _keys!825 lt!110327 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!110430)))

(declare-fun bm!20233 () Bool)

(declare-fun call!20235 () Bool)

(assert (=> bm!20233 (= call!20235 (contains!1419 lt!110430 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!213524 () Bool)

(declare-fun res!104534 () Bool)

(assert (=> b!213524 (=> (not res!104534) (not e!138872))))

(declare-fun e!138873 () Bool)

(assert (=> b!213524 (= res!104534 e!138873)))

(declare-fun c!35935 () Bool)

(assert (=> b!213524 (= c!35935 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!213525 () Bool)

(declare-fun e!138870 () ListLongMap!3155)

(assert (=> b!213525 (= e!138870 call!20238)))

(declare-fun b!213526 () Bool)

(assert (=> b!213526 (= e!138875 e!138870)))

(declare-fun c!35936 () Bool)

(assert (=> b!213526 (= c!35936 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!213527 () Bool)

(declare-fun e!138878 () Bool)

(assert (=> b!213527 (= e!138878 (validKeyInArray!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!20234 () Bool)

(declare-fun call!20239 () ListLongMap!3155)

(assert (=> bm!20234 (= call!20239 call!20236)))

(declare-fun bm!20235 () Bool)

(declare-fun call!20240 () ListLongMap!3155)

(assert (=> bm!20235 (= call!20240 (+!586 (ite c!35937 call!20241 (ite c!35936 call!20236 call!20239)) (ite (or c!35937 c!35936) (tuple2!4229 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun bm!20236 () Bool)

(declare-fun call!20237 () Bool)

(assert (=> bm!20236 (= call!20237 (contains!1419 lt!110430 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!213528 () Bool)

(assert (=> b!213528 (= e!138869 call!20239)))

(declare-fun b!213529 () Bool)

(declare-fun e!138868 () Bool)

(assert (=> b!213529 (= e!138868 e!138874)))

(declare-fun res!104538 () Bool)

(assert (=> b!213529 (=> (not res!104538) (not e!138874))))

(assert (=> b!213529 (= res!104538 (contains!1419 lt!110430 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213529 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun b!213530 () Bool)

(assert (=> b!213530 (= e!138875 (+!586 call!20240 (tuple2!4229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!213531 () Bool)

(declare-fun e!138877 () Bool)

(assert (=> b!213531 (= e!138873 e!138877)))

(declare-fun res!104540 () Bool)

(assert (=> b!213531 (= res!104540 call!20235)))

(assert (=> b!213531 (=> (not res!104540) (not e!138877))))

(declare-fun b!213532 () Bool)

(assert (=> b!213532 (= e!138877 (= (apply!199 lt!110430 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!213533 () Bool)

(declare-fun res!104533 () Bool)

(assert (=> b!213533 (=> (not res!104533) (not e!138872))))

(assert (=> b!213533 (= res!104533 e!138868)))

(declare-fun res!104535 () Bool)

(assert (=> b!213533 (=> res!104535 e!138868)))

(assert (=> b!213533 (= res!104535 (not e!138878))))

(declare-fun res!104539 () Bool)

(assert (=> b!213533 (=> (not res!104539) (not e!138878))))

(assert (=> b!213533 (= res!104539 (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun b!213534 () Bool)

(declare-fun e!138867 () Bool)

(assert (=> b!213534 (= e!138867 (not call!20237))))

(declare-fun b!213535 () Bool)

(declare-fun Unit!6473 () Unit!6471)

(assert (=> b!213535 (= e!138876 Unit!6473)))

(declare-fun b!213536 () Bool)

(declare-fun e!138871 () Bool)

(assert (=> b!213536 (= e!138871 (= (apply!199 lt!110430 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun bm!20237 () Bool)

(assert (=> bm!20237 (= call!20238 call!20240)))

(declare-fun b!213537 () Bool)

(declare-fun c!35939 () Bool)

(assert (=> b!213537 (= c!35939 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!213537 (= e!138870 e!138869)))

(declare-fun bm!20238 () Bool)

(assert (=> bm!20238 (= call!20241 (getCurrentListMapNoExtraKeys!515 _keys!825 lt!110327 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213538 () Bool)

(assert (=> b!213538 (= e!138867 e!138871)))

(declare-fun res!104537 () Bool)

(assert (=> b!213538 (= res!104537 call!20237)))

(assert (=> b!213538 (=> (not res!104537) (not e!138871))))

(declare-fun b!213539 () Bool)

(assert (=> b!213539 (= e!138873 (not call!20235))))

(declare-fun b!213540 () Bool)

(assert (=> b!213540 (= e!138872 e!138867)))

(declare-fun c!35938 () Bool)

(assert (=> b!213540 (= c!35938 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!213541 () Bool)

(assert (=> b!213541 (= e!138866 (validKeyInArray!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!58125 c!35937) b!213530))

(assert (= (and d!58125 (not c!35937)) b!213526))

(assert (= (and b!213526 c!35936) b!213525))

(assert (= (and b!213526 (not c!35936)) b!213537))

(assert (= (and b!213537 c!35939) b!213523))

(assert (= (and b!213537 (not c!35939)) b!213528))

(assert (= (or b!213523 b!213528) bm!20234))

(assert (= (or b!213525 bm!20234) bm!20232))

(assert (= (or b!213525 b!213523) bm!20237))

(assert (= (or b!213530 bm!20232) bm!20238))

(assert (= (or b!213530 bm!20237) bm!20235))

(assert (= (and d!58125 res!104541) b!213541))

(assert (= (and d!58125 c!35934) b!213522))

(assert (= (and d!58125 (not c!35934)) b!213535))

(assert (= (and d!58125 res!104536) b!213533))

(assert (= (and b!213533 res!104539) b!213527))

(assert (= (and b!213533 (not res!104535)) b!213529))

(assert (= (and b!213529 res!104538) b!213521))

(assert (= (and b!213533 res!104533) b!213524))

(assert (= (and b!213524 c!35935) b!213531))

(assert (= (and b!213524 (not c!35935)) b!213539))

(assert (= (and b!213531 res!104540) b!213532))

(assert (= (or b!213531 b!213539) bm!20233))

(assert (= (and b!213524 res!104534) b!213540))

(assert (= (and b!213540 c!35938) b!213538))

(assert (= (and b!213540 (not c!35938)) b!213534))

(assert (= (and b!213538 res!104537) b!213536))

(assert (= (or b!213538 b!213534) bm!20236))

(declare-fun b_lambda!7813 () Bool)

(assert (=> (not b_lambda!7813) (not b!213521)))

(assert (=> b!213521 t!8099))

(declare-fun b_and!12529 () Bool)

(assert (= b_and!12527 (and (=> t!8099 result!5029) b_and!12529)))

(assert (=> b!213522 m!241307))

(declare-fun m!241377 () Bool)

(assert (=> b!213522 m!241377))

(declare-fun m!241379 () Bool)

(assert (=> b!213522 m!241379))

(declare-fun m!241381 () Bool)

(assert (=> b!213522 m!241381))

(declare-fun m!241383 () Bool)

(assert (=> b!213522 m!241383))

(declare-fun m!241385 () Bool)

(assert (=> b!213522 m!241385))

(declare-fun m!241387 () Bool)

(assert (=> b!213522 m!241387))

(declare-fun m!241389 () Bool)

(assert (=> b!213522 m!241389))

(declare-fun m!241391 () Bool)

(assert (=> b!213522 m!241391))

(declare-fun m!241393 () Bool)

(assert (=> b!213522 m!241393))

(assert (=> b!213522 m!241383))

(declare-fun m!241395 () Bool)

(assert (=> b!213522 m!241395))

(assert (=> b!213522 m!241377))

(declare-fun m!241397 () Bool)

(assert (=> b!213522 m!241397))

(assert (=> b!213522 m!241379))

(declare-fun m!241399 () Bool)

(assert (=> b!213522 m!241399))

(declare-fun m!241401 () Bool)

(assert (=> b!213522 m!241401))

(assert (=> b!213522 m!241343))

(assert (=> b!213522 m!241389))

(declare-fun m!241403 () Bool)

(assert (=> b!213522 m!241403))

(declare-fun m!241405 () Bool)

(assert (=> b!213522 m!241405))

(declare-fun m!241407 () Bool)

(assert (=> b!213536 m!241407))

(assert (=> b!213541 m!241343))

(assert (=> b!213541 m!241343))

(assert (=> b!213541 m!241347))

(assert (=> b!213529 m!241343))

(assert (=> b!213529 m!241343))

(declare-fun m!241409 () Bool)

(assert (=> b!213529 m!241409))

(declare-fun m!241411 () Bool)

(assert (=> bm!20236 m!241411))

(declare-fun m!241413 () Bool)

(assert (=> b!213532 m!241413))

(assert (=> b!213527 m!241343))

(assert (=> b!213527 m!241343))

(assert (=> b!213527 m!241347))

(declare-fun m!241415 () Bool)

(assert (=> bm!20235 m!241415))

(declare-fun m!241417 () Bool)

(assert (=> b!213530 m!241417))

(declare-fun m!241419 () Bool)

(assert (=> bm!20233 m!241419))

(assert (=> d!58125 m!241283))

(assert (=> b!213521 m!241343))

(declare-fun m!241421 () Bool)

(assert (=> b!213521 m!241421))

(assert (=> b!213521 m!241353))

(declare-fun m!241423 () Bool)

(assert (=> b!213521 m!241423))

(assert (=> b!213521 m!241343))

(assert (=> b!213521 m!241423))

(assert (=> b!213521 m!241353))

(declare-fun m!241425 () Bool)

(assert (=> b!213521 m!241425))

(assert (=> bm!20238 m!241307))

(assert (=> b!213392 d!58125))

(declare-fun b!213548 () Bool)

(declare-fun e!138883 () Bool)

(declare-fun call!20246 () ListLongMap!3155)

(declare-fun call!20247 () ListLongMap!3155)

(assert (=> b!213548 (= e!138883 (= call!20246 call!20247))))

(declare-fun bm!20243 () Bool)

(assert (=> bm!20243 (= call!20246 (getCurrentListMapNoExtraKeys!515 _keys!825 (array!10203 (store (arr!4841 _values!649) i!601 (ValueCellFull!2406 v!520)) (size!5166 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213549 () Bool)

(declare-fun e!138884 () Bool)

(assert (=> b!213549 (= e!138884 e!138883)))

(declare-fun c!35942 () Bool)

(assert (=> b!213549 (= c!35942 (bvsle #b00000000000000000000000000000000 i!601))))

(declare-fun b!213550 () Bool)

(assert (=> b!213550 (= e!138883 (= call!20246 (+!586 call!20247 (tuple2!4229 k0!843 v!520))))))

(declare-fun bm!20244 () Bool)

(assert (=> bm!20244 (= call!20247 (getCurrentListMapNoExtraKeys!515 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun d!58127 () Bool)

(assert (=> d!58127 e!138884))

(declare-fun res!104544 () Bool)

(assert (=> d!58127 (=> (not res!104544) (not e!138884))))

(assert (=> d!58127 (= res!104544 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5166 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5166 _values!649))))))))

(declare-fun lt!110441 () Unit!6471)

(declare-fun choose!1091 (array!10200 array!10202 (_ BitVec 32) (_ BitVec 32) V!6979 V!6979 (_ BitVec 32) (_ BitVec 64) V!6979 (_ BitVec 32) Int) Unit!6471)

(assert (=> d!58127 (= lt!110441 (choose!1091 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!58127 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(assert (=> d!58127 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!233 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!110441)))

(assert (= (and d!58127 res!104544) b!213549))

(assert (= (and b!213549 c!35942) b!213550))

(assert (= (and b!213549 (not c!35942)) b!213548))

(assert (= (or b!213550 b!213548) bm!20243))

(assert (= (or b!213550 b!213548) bm!20244))

(assert (=> bm!20243 m!241305))

(declare-fun m!241427 () Bool)

(assert (=> bm!20243 m!241427))

(declare-fun m!241429 () Bool)

(assert (=> b!213550 m!241429))

(assert (=> bm!20244 m!241303))

(declare-fun m!241431 () Bool)

(assert (=> d!58127 m!241431))

(assert (=> b!213392 d!58127))

(declare-fun d!58129 () Bool)

(declare-fun e!138887 () Bool)

(assert (=> d!58129 e!138887))

(declare-fun res!104550 () Bool)

(assert (=> d!58129 (=> (not res!104550) (not e!138887))))

(declare-fun lt!110451 () ListLongMap!3155)

(assert (=> d!58129 (= res!104550 (contains!1419 lt!110451 (_1!2124 (tuple2!4229 k0!843 v!520))))))

(declare-fun lt!110452 () List!3138)

(assert (=> d!58129 (= lt!110451 (ListLongMap!3156 lt!110452))))

(declare-fun lt!110453 () Unit!6471)

(declare-fun lt!110450 () Unit!6471)

(assert (=> d!58129 (= lt!110453 lt!110450)))

(declare-datatypes ((Option!262 0))(
  ( (Some!261 (v!4805 V!6979)) (None!260) )
))
(declare-fun getValueByKey!256 (List!3138 (_ BitVec 64)) Option!262)

(assert (=> d!58129 (= (getValueByKey!256 lt!110452 (_1!2124 (tuple2!4229 k0!843 v!520))) (Some!261 (_2!2124 (tuple2!4229 k0!843 v!520))))))

(declare-fun lemmaContainsTupThenGetReturnValue!145 (List!3138 (_ BitVec 64) V!6979) Unit!6471)

(assert (=> d!58129 (= lt!110450 (lemmaContainsTupThenGetReturnValue!145 lt!110452 (_1!2124 (tuple2!4229 k0!843 v!520)) (_2!2124 (tuple2!4229 k0!843 v!520))))))

(declare-fun insertStrictlySorted!147 (List!3138 (_ BitVec 64) V!6979) List!3138)

(assert (=> d!58129 (= lt!110452 (insertStrictlySorted!147 (toList!1593 lt!110325) (_1!2124 (tuple2!4229 k0!843 v!520)) (_2!2124 (tuple2!4229 k0!843 v!520))))))

(assert (=> d!58129 (= (+!586 lt!110325 (tuple2!4229 k0!843 v!520)) lt!110451)))

(declare-fun b!213555 () Bool)

(declare-fun res!104549 () Bool)

(assert (=> b!213555 (=> (not res!104549) (not e!138887))))

(assert (=> b!213555 (= res!104549 (= (getValueByKey!256 (toList!1593 lt!110451) (_1!2124 (tuple2!4229 k0!843 v!520))) (Some!261 (_2!2124 (tuple2!4229 k0!843 v!520)))))))

(declare-fun b!213556 () Bool)

(declare-fun contains!1420 (List!3138 tuple2!4228) Bool)

(assert (=> b!213556 (= e!138887 (contains!1420 (toList!1593 lt!110451) (tuple2!4229 k0!843 v!520)))))

(assert (= (and d!58129 res!104550) b!213555))

(assert (= (and b!213555 res!104549) b!213556))

(declare-fun m!241433 () Bool)

(assert (=> d!58129 m!241433))

(declare-fun m!241435 () Bool)

(assert (=> d!58129 m!241435))

(declare-fun m!241437 () Bool)

(assert (=> d!58129 m!241437))

(declare-fun m!241439 () Bool)

(assert (=> d!58129 m!241439))

(declare-fun m!241441 () Bool)

(assert (=> b!213555 m!241441))

(declare-fun m!241443 () Bool)

(assert (=> b!213556 m!241443))

(assert (=> b!213392 d!58129))

(declare-fun b!213557 () Bool)

(declare-fun lt!110454 () Unit!6471)

(declare-fun lt!110459 () Unit!6471)

(assert (=> b!213557 (= lt!110454 lt!110459)))

(declare-fun lt!110456 () (_ BitVec 64))

(declare-fun lt!110458 () (_ BitVec 64))

(declare-fun lt!110460 () V!6979)

(declare-fun lt!110455 () ListLongMap!3155)

(assert (=> b!213557 (not (contains!1419 (+!586 lt!110455 (tuple2!4229 lt!110456 lt!110460)) lt!110458))))

(assert (=> b!213557 (= lt!110459 (addStillNotContains!110 lt!110455 lt!110456 lt!110460 lt!110458))))

(assert (=> b!213557 (= lt!110458 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!213557 (= lt!110460 (get!2588 (select (arr!4841 lt!110327) #b00000000000000000000000000000000) (dynLambda!537 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!213557 (= lt!110456 (select (arr!4840 _keys!825) #b00000000000000000000000000000000))))

(declare-fun call!20248 () ListLongMap!3155)

(assert (=> b!213557 (= lt!110455 call!20248)))

(declare-fun e!138894 () ListLongMap!3155)

(assert (=> b!213557 (= e!138894 (+!586 call!20248 (tuple2!4229 (select (arr!4840 _keys!825) #b00000000000000000000000000000000) (get!2588 (select (arr!4841 lt!110327) #b00000000000000000000000000000000) (dynLambda!537 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!213558 () Bool)

(declare-fun e!138892 () ListLongMap!3155)

(assert (=> b!213558 (= e!138892 (ListLongMap!3156 Nil!3135))))

(declare-fun b!213559 () Bool)

(declare-fun res!104551 () Bool)

(declare-fun e!138891 () Bool)

(assert (=> b!213559 (=> (not res!104551) (not e!138891))))

(declare-fun lt!110457 () ListLongMap!3155)

(assert (=> b!213559 (= res!104551 (not (contains!1419 lt!110457 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!213560 () Bool)

(declare-fun e!138889 () Bool)

(assert (=> b!213560 (= e!138889 (= lt!110457 (getCurrentListMapNoExtraKeys!515 _keys!825 lt!110327 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!213561 () Bool)

(assert (=> b!213561 (= e!138889 (isEmpty!505 lt!110457))))

(declare-fun b!213562 () Bool)

(assert (=> b!213562 (= e!138892 e!138894)))

(declare-fun c!35945 () Bool)

(assert (=> b!213562 (= c!35945 (validKeyInArray!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213563 () Bool)

(declare-fun e!138888 () Bool)

(assert (=> b!213563 (= e!138891 e!138888)))

(declare-fun c!35946 () Bool)

(declare-fun e!138890 () Bool)

(assert (=> b!213563 (= c!35946 e!138890)))

(declare-fun res!104552 () Bool)

(assert (=> b!213563 (=> (not res!104552) (not e!138890))))

(assert (=> b!213563 (= res!104552 (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun b!213564 () Bool)

(assert (=> b!213564 (= e!138888 e!138889)))

(declare-fun c!35944 () Bool)

(assert (=> b!213564 (= c!35944 (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun b!213565 () Bool)

(assert (=> b!213565 (= e!138894 call!20248)))

(declare-fun bm!20245 () Bool)

(assert (=> bm!20245 (= call!20248 (getCurrentListMapNoExtraKeys!515 _keys!825 lt!110327 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun d!58131 () Bool)

(assert (=> d!58131 e!138891))

(declare-fun res!104554 () Bool)

(assert (=> d!58131 (=> (not res!104554) (not e!138891))))

(assert (=> d!58131 (= res!104554 (not (contains!1419 lt!110457 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!58131 (= lt!110457 e!138892)))

(declare-fun c!35943 () Bool)

(assert (=> d!58131 (= c!35943 (bvsge #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(assert (=> d!58131 (validMask!0 mask!1149)))

(assert (=> d!58131 (= (getCurrentListMapNoExtraKeys!515 _keys!825 lt!110327 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!110457)))

(declare-fun b!213566 () Bool)

(assert (=> b!213566 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(assert (=> b!213566 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5166 lt!110327)))))

(declare-fun e!138893 () Bool)

(assert (=> b!213566 (= e!138893 (= (apply!199 lt!110457 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)) (get!2588 (select (arr!4841 lt!110327) #b00000000000000000000000000000000) (dynLambda!537 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!213567 () Bool)

(assert (=> b!213567 (= e!138888 e!138893)))

(assert (=> b!213567 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun res!104553 () Bool)

(assert (=> b!213567 (= res!104553 (contains!1419 lt!110457 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213567 (=> (not res!104553) (not e!138893))))

(declare-fun b!213568 () Bool)

(assert (=> b!213568 (= e!138890 (validKeyInArray!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213568 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!58131 c!35943) b!213558))

(assert (= (and d!58131 (not c!35943)) b!213562))

(assert (= (and b!213562 c!35945) b!213557))

(assert (= (and b!213562 (not c!35945)) b!213565))

(assert (= (or b!213557 b!213565) bm!20245))

(assert (= (and d!58131 res!104554) b!213559))

(assert (= (and b!213559 res!104551) b!213563))

(assert (= (and b!213563 res!104552) b!213568))

(assert (= (and b!213563 c!35946) b!213567))

(assert (= (and b!213563 (not c!35946)) b!213564))

(assert (= (and b!213567 res!104553) b!213566))

(assert (= (and b!213564 c!35944) b!213560))

(assert (= (and b!213564 (not c!35944)) b!213561))

(declare-fun b_lambda!7815 () Bool)

(assert (=> (not b_lambda!7815) (not b!213557)))

(assert (=> b!213557 t!8099))

(declare-fun b_and!12531 () Bool)

(assert (= b_and!12529 (and (=> t!8099 result!5029) b_and!12531)))

(declare-fun b_lambda!7817 () Bool)

(assert (=> (not b_lambda!7817) (not b!213566)))

(assert (=> b!213566 t!8099))

(declare-fun b_and!12533 () Bool)

(assert (= b_and!12531 (and (=> t!8099 result!5029) b_and!12533)))

(assert (=> b!213562 m!241343))

(assert (=> b!213562 m!241343))

(assert (=> b!213562 m!241347))

(assert (=> b!213567 m!241343))

(assert (=> b!213567 m!241343))

(declare-fun m!241445 () Bool)

(assert (=> b!213567 m!241445))

(assert (=> b!213568 m!241343))

(assert (=> b!213568 m!241343))

(assert (=> b!213568 m!241347))

(assert (=> b!213566 m!241353))

(assert (=> b!213566 m!241423))

(assert (=> b!213566 m!241343))

(declare-fun m!241447 () Bool)

(assert (=> b!213566 m!241447))

(assert (=> b!213566 m!241343))

(assert (=> b!213566 m!241423))

(assert (=> b!213566 m!241353))

(assert (=> b!213566 m!241425))

(declare-fun m!241449 () Bool)

(assert (=> d!58131 m!241449))

(assert (=> d!58131 m!241283))

(declare-fun m!241451 () Bool)

(assert (=> b!213561 m!241451))

(declare-fun m!241453 () Bool)

(assert (=> bm!20245 m!241453))

(declare-fun m!241455 () Bool)

(assert (=> b!213559 m!241455))

(assert (=> b!213560 m!241453))

(declare-fun m!241457 () Bool)

(assert (=> b!213557 m!241457))

(declare-fun m!241459 () Bool)

(assert (=> b!213557 m!241459))

(assert (=> b!213557 m!241353))

(declare-fun m!241461 () Bool)

(assert (=> b!213557 m!241461))

(declare-fun m!241463 () Bool)

(assert (=> b!213557 m!241463))

(assert (=> b!213557 m!241423))

(assert (=> b!213557 m!241461))

(assert (=> b!213557 m!241343))

(assert (=> b!213557 m!241423))

(assert (=> b!213557 m!241353))

(assert (=> b!213557 m!241425))

(assert (=> b!213392 d!58131))

(declare-fun lt!110474 () ListLongMap!3155)

(declare-fun e!138903 () Bool)

(declare-fun b!213569 () Bool)

(assert (=> b!213569 (= e!138903 (= (apply!199 lt!110474 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)) (get!2588 (select (arr!4841 _values!649) #b00000000000000000000000000000000) (dynLambda!537 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!213569 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5166 _values!649)))))

(assert (=> b!213569 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun b!213570 () Bool)

(declare-fun e!138905 () Unit!6471)

(declare-fun lt!110461 () Unit!6471)

(assert (=> b!213570 (= e!138905 lt!110461)))

(declare-fun lt!110463 () ListLongMap!3155)

(assert (=> b!213570 (= lt!110463 (getCurrentListMapNoExtraKeys!515 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110471 () (_ BitVec 64))

(assert (=> b!213570 (= lt!110471 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110468 () (_ BitVec 64))

(assert (=> b!213570 (= lt!110468 (select (arr!4840 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110475 () Unit!6471)

(assert (=> b!213570 (= lt!110475 (addStillContains!175 lt!110463 lt!110471 zeroValue!615 lt!110468))))

(assert (=> b!213570 (contains!1419 (+!586 lt!110463 (tuple2!4229 lt!110471 zeroValue!615)) lt!110468)))

(declare-fun lt!110472 () Unit!6471)

(assert (=> b!213570 (= lt!110472 lt!110475)))

(declare-fun lt!110462 () ListLongMap!3155)

(assert (=> b!213570 (= lt!110462 (getCurrentListMapNoExtraKeys!515 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110466 () (_ BitVec 64))

(assert (=> b!213570 (= lt!110466 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110470 () (_ BitVec 64))

(assert (=> b!213570 (= lt!110470 (select (arr!4840 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110480 () Unit!6471)

(assert (=> b!213570 (= lt!110480 (addApplyDifferent!175 lt!110462 lt!110466 minValue!615 lt!110470))))

(assert (=> b!213570 (= (apply!199 (+!586 lt!110462 (tuple2!4229 lt!110466 minValue!615)) lt!110470) (apply!199 lt!110462 lt!110470))))

(declare-fun lt!110479 () Unit!6471)

(assert (=> b!213570 (= lt!110479 lt!110480)))

(declare-fun lt!110481 () ListLongMap!3155)

(assert (=> b!213570 (= lt!110481 (getCurrentListMapNoExtraKeys!515 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110477 () (_ BitVec 64))

(assert (=> b!213570 (= lt!110477 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110464 () (_ BitVec 64))

(assert (=> b!213570 (= lt!110464 (select (arr!4840 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110469 () Unit!6471)

(assert (=> b!213570 (= lt!110469 (addApplyDifferent!175 lt!110481 lt!110477 zeroValue!615 lt!110464))))

(assert (=> b!213570 (= (apply!199 (+!586 lt!110481 (tuple2!4229 lt!110477 zeroValue!615)) lt!110464) (apply!199 lt!110481 lt!110464))))

(declare-fun lt!110476 () Unit!6471)

(assert (=> b!213570 (= lt!110476 lt!110469)))

(declare-fun lt!110465 () ListLongMap!3155)

(assert (=> b!213570 (= lt!110465 (getCurrentListMapNoExtraKeys!515 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110478 () (_ BitVec 64))

(assert (=> b!213570 (= lt!110478 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110482 () (_ BitVec 64))

(assert (=> b!213570 (= lt!110482 (select (arr!4840 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!213570 (= lt!110461 (addApplyDifferent!175 lt!110465 lt!110478 minValue!615 lt!110482))))

(assert (=> b!213570 (= (apply!199 (+!586 lt!110465 (tuple2!4229 lt!110478 minValue!615)) lt!110482) (apply!199 lt!110465 lt!110482))))

(declare-fun bm!20246 () Bool)

(declare-fun call!20250 () ListLongMap!3155)

(declare-fun call!20255 () ListLongMap!3155)

(assert (=> bm!20246 (= call!20250 call!20255)))

(declare-fun b!213571 () Bool)

(declare-fun e!138898 () ListLongMap!3155)

(declare-fun call!20252 () ListLongMap!3155)

(assert (=> b!213571 (= e!138898 call!20252)))

(declare-fun d!58133 () Bool)

(declare-fun e!138901 () Bool)

(assert (=> d!58133 e!138901))

(declare-fun res!104558 () Bool)

(assert (=> d!58133 (=> (not res!104558) (not e!138901))))

(assert (=> d!58133 (= res!104558 (or (bvsge #b00000000000000000000000000000000 (size!5165 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))))

(declare-fun lt!110473 () ListLongMap!3155)

(assert (=> d!58133 (= lt!110474 lt!110473)))

(declare-fun lt!110467 () Unit!6471)

(assert (=> d!58133 (= lt!110467 e!138905)))

(declare-fun c!35947 () Bool)

(declare-fun e!138895 () Bool)

(assert (=> d!58133 (= c!35947 e!138895)))

(declare-fun res!104563 () Bool)

(assert (=> d!58133 (=> (not res!104563) (not e!138895))))

(assert (=> d!58133 (= res!104563 (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun e!138904 () ListLongMap!3155)

(assert (=> d!58133 (= lt!110473 e!138904)))

(declare-fun c!35950 () Bool)

(assert (=> d!58133 (= c!35950 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58133 (validMask!0 mask!1149)))

(assert (=> d!58133 (= (getCurrentListMap!1116 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!110474)))

(declare-fun bm!20247 () Bool)

(declare-fun call!20249 () Bool)

(assert (=> bm!20247 (= call!20249 (contains!1419 lt!110474 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!213572 () Bool)

(declare-fun res!104556 () Bool)

(assert (=> b!213572 (=> (not res!104556) (not e!138901))))

(declare-fun e!138902 () Bool)

(assert (=> b!213572 (= res!104556 e!138902)))

(declare-fun c!35948 () Bool)

(assert (=> b!213572 (= c!35948 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!213573 () Bool)

(declare-fun e!138899 () ListLongMap!3155)

(assert (=> b!213573 (= e!138899 call!20252)))

(declare-fun b!213574 () Bool)

(assert (=> b!213574 (= e!138904 e!138899)))

(declare-fun c!35949 () Bool)

(assert (=> b!213574 (= c!35949 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!213575 () Bool)

(declare-fun e!138907 () Bool)

(assert (=> b!213575 (= e!138907 (validKeyInArray!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!20248 () Bool)

(declare-fun call!20253 () ListLongMap!3155)

(assert (=> bm!20248 (= call!20253 call!20250)))

(declare-fun call!20254 () ListLongMap!3155)

(declare-fun bm!20249 () Bool)

(assert (=> bm!20249 (= call!20254 (+!586 (ite c!35950 call!20255 (ite c!35949 call!20250 call!20253)) (ite (or c!35950 c!35949) (tuple2!4229 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun bm!20250 () Bool)

(declare-fun call!20251 () Bool)

(assert (=> bm!20250 (= call!20251 (contains!1419 lt!110474 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!213576 () Bool)

(assert (=> b!213576 (= e!138898 call!20253)))

(declare-fun b!213577 () Bool)

(declare-fun e!138897 () Bool)

(assert (=> b!213577 (= e!138897 e!138903)))

(declare-fun res!104560 () Bool)

(assert (=> b!213577 (=> (not res!104560) (not e!138903))))

(assert (=> b!213577 (= res!104560 (contains!1419 lt!110474 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213577 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun b!213578 () Bool)

(assert (=> b!213578 (= e!138904 (+!586 call!20254 (tuple2!4229 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!213579 () Bool)

(declare-fun e!138906 () Bool)

(assert (=> b!213579 (= e!138902 e!138906)))

(declare-fun res!104562 () Bool)

(assert (=> b!213579 (= res!104562 call!20249)))

(assert (=> b!213579 (=> (not res!104562) (not e!138906))))

(declare-fun b!213580 () Bool)

(assert (=> b!213580 (= e!138906 (= (apply!199 lt!110474 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!213581 () Bool)

(declare-fun res!104555 () Bool)

(assert (=> b!213581 (=> (not res!104555) (not e!138901))))

(assert (=> b!213581 (= res!104555 e!138897)))

(declare-fun res!104557 () Bool)

(assert (=> b!213581 (=> res!104557 e!138897)))

(assert (=> b!213581 (= res!104557 (not e!138907))))

(declare-fun res!104561 () Bool)

(assert (=> b!213581 (=> (not res!104561) (not e!138907))))

(assert (=> b!213581 (= res!104561 (bvslt #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(declare-fun b!213582 () Bool)

(declare-fun e!138896 () Bool)

(assert (=> b!213582 (= e!138896 (not call!20251))))

(declare-fun b!213583 () Bool)

(declare-fun Unit!6474 () Unit!6471)

(assert (=> b!213583 (= e!138905 Unit!6474)))

(declare-fun b!213584 () Bool)

(declare-fun e!138900 () Bool)

(assert (=> b!213584 (= e!138900 (= (apply!199 lt!110474 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun bm!20251 () Bool)

(assert (=> bm!20251 (= call!20252 call!20254)))

(declare-fun b!213585 () Bool)

(declare-fun c!35952 () Bool)

(assert (=> b!213585 (= c!35952 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!213585 (= e!138899 e!138898)))

(declare-fun bm!20252 () Bool)

(assert (=> bm!20252 (= call!20255 (getCurrentListMapNoExtraKeys!515 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213586 () Bool)

(assert (=> b!213586 (= e!138896 e!138900)))

(declare-fun res!104559 () Bool)

(assert (=> b!213586 (= res!104559 call!20251)))

(assert (=> b!213586 (=> (not res!104559) (not e!138900))))

(declare-fun b!213587 () Bool)

(assert (=> b!213587 (= e!138902 (not call!20249))))

(declare-fun b!213588 () Bool)

(assert (=> b!213588 (= e!138901 e!138896)))

(declare-fun c!35951 () Bool)

(assert (=> b!213588 (= c!35951 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!213589 () Bool)

(assert (=> b!213589 (= e!138895 (validKeyInArray!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!58133 c!35950) b!213578))

(assert (= (and d!58133 (not c!35950)) b!213574))

(assert (= (and b!213574 c!35949) b!213573))

(assert (= (and b!213574 (not c!35949)) b!213585))

(assert (= (and b!213585 c!35952) b!213571))

(assert (= (and b!213585 (not c!35952)) b!213576))

(assert (= (or b!213571 b!213576) bm!20248))

(assert (= (or b!213573 bm!20248) bm!20246))

(assert (= (or b!213573 b!213571) bm!20251))

(assert (= (or b!213578 bm!20246) bm!20252))

(assert (= (or b!213578 bm!20251) bm!20249))

(assert (= (and d!58133 res!104563) b!213589))

(assert (= (and d!58133 c!35947) b!213570))

(assert (= (and d!58133 (not c!35947)) b!213583))

(assert (= (and d!58133 res!104558) b!213581))

(assert (= (and b!213581 res!104561) b!213575))

(assert (= (and b!213581 (not res!104557)) b!213577))

(assert (= (and b!213577 res!104560) b!213569))

(assert (= (and b!213581 res!104555) b!213572))

(assert (= (and b!213572 c!35948) b!213579))

(assert (= (and b!213572 (not c!35948)) b!213587))

(assert (= (and b!213579 res!104562) b!213580))

(assert (= (or b!213579 b!213587) bm!20247))

(assert (= (and b!213572 res!104556) b!213588))

(assert (= (and b!213588 c!35951) b!213586))

(assert (= (and b!213588 (not c!35951)) b!213582))

(assert (= (and b!213586 res!104559) b!213584))

(assert (= (or b!213586 b!213582) bm!20250))

(declare-fun b_lambda!7819 () Bool)

(assert (=> (not b_lambda!7819) (not b!213569)))

(assert (=> b!213569 t!8099))

(declare-fun b_and!12535 () Bool)

(assert (= b_and!12533 (and (=> t!8099 result!5029) b_and!12535)))

(assert (=> b!213570 m!241303))

(declare-fun m!241465 () Bool)

(assert (=> b!213570 m!241465))

(declare-fun m!241467 () Bool)

(assert (=> b!213570 m!241467))

(declare-fun m!241469 () Bool)

(assert (=> b!213570 m!241469))

(declare-fun m!241471 () Bool)

(assert (=> b!213570 m!241471))

(declare-fun m!241473 () Bool)

(assert (=> b!213570 m!241473))

(declare-fun m!241475 () Bool)

(assert (=> b!213570 m!241475))

(declare-fun m!241477 () Bool)

(assert (=> b!213570 m!241477))

(declare-fun m!241479 () Bool)

(assert (=> b!213570 m!241479))

(declare-fun m!241481 () Bool)

(assert (=> b!213570 m!241481))

(assert (=> b!213570 m!241471))

(declare-fun m!241483 () Bool)

(assert (=> b!213570 m!241483))

(assert (=> b!213570 m!241465))

(declare-fun m!241485 () Bool)

(assert (=> b!213570 m!241485))

(assert (=> b!213570 m!241467))

(declare-fun m!241487 () Bool)

(assert (=> b!213570 m!241487))

(declare-fun m!241489 () Bool)

(assert (=> b!213570 m!241489))

(assert (=> b!213570 m!241343))

(assert (=> b!213570 m!241477))

(declare-fun m!241491 () Bool)

(assert (=> b!213570 m!241491))

(declare-fun m!241493 () Bool)

(assert (=> b!213570 m!241493))

(declare-fun m!241495 () Bool)

(assert (=> b!213584 m!241495))

(assert (=> b!213589 m!241343))

(assert (=> b!213589 m!241343))

(assert (=> b!213589 m!241347))

(assert (=> b!213577 m!241343))

(assert (=> b!213577 m!241343))

(declare-fun m!241497 () Bool)

(assert (=> b!213577 m!241497))

(declare-fun m!241499 () Bool)

(assert (=> bm!20250 m!241499))

(declare-fun m!241501 () Bool)

(assert (=> b!213580 m!241501))

(assert (=> b!213575 m!241343))

(assert (=> b!213575 m!241343))

(assert (=> b!213575 m!241347))

(declare-fun m!241503 () Bool)

(assert (=> bm!20249 m!241503))

(declare-fun m!241505 () Bool)

(assert (=> b!213578 m!241505))

(declare-fun m!241507 () Bool)

(assert (=> bm!20247 m!241507))

(assert (=> d!58133 m!241283))

(assert (=> b!213569 m!241343))

(declare-fun m!241509 () Bool)

(assert (=> b!213569 m!241509))

(assert (=> b!213569 m!241353))

(assert (=> b!213569 m!241355))

(assert (=> b!213569 m!241343))

(assert (=> b!213569 m!241355))

(assert (=> b!213569 m!241353))

(assert (=> b!213569 m!241359))

(assert (=> bm!20252 m!241303))

(assert (=> b!213392 d!58133))

(declare-fun d!58135 () Bool)

(declare-fun res!104568 () Bool)

(declare-fun e!138914 () Bool)

(assert (=> d!58135 (=> res!104568 e!138914)))

(assert (=> d!58135 (= res!104568 (bvsge #b00000000000000000000000000000000 (size!5165 _keys!825)))))

(assert (=> d!58135 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!138914)))

(declare-fun b!213598 () Bool)

(declare-fun e!138916 () Bool)

(declare-fun call!20258 () Bool)

(assert (=> b!213598 (= e!138916 call!20258)))

(declare-fun b!213599 () Bool)

(declare-fun e!138915 () Bool)

(assert (=> b!213599 (= e!138915 call!20258)))

(declare-fun b!213600 () Bool)

(assert (=> b!213600 (= e!138916 e!138915)))

(declare-fun lt!110489 () (_ BitVec 64))

(assert (=> b!213600 (= lt!110489 (select (arr!4840 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110490 () Unit!6471)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10200 (_ BitVec 64) (_ BitVec 32)) Unit!6471)

(assert (=> b!213600 (= lt!110490 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!110489 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!213600 (arrayContainsKey!0 _keys!825 lt!110489 #b00000000000000000000000000000000)))

(declare-fun lt!110491 () Unit!6471)

(assert (=> b!213600 (= lt!110491 lt!110490)))

(declare-fun res!104569 () Bool)

(declare-datatypes ((SeekEntryResult!724 0))(
  ( (MissingZero!724 (index!5066 (_ BitVec 32))) (Found!724 (index!5067 (_ BitVec 32))) (Intermediate!724 (undefined!1536 Bool) (index!5068 (_ BitVec 32)) (x!22256 (_ BitVec 32))) (Undefined!724) (MissingVacant!724 (index!5069 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10200 (_ BitVec 32)) SeekEntryResult!724)

(assert (=> b!213600 (= res!104569 (= (seekEntryOrOpen!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!724 #b00000000000000000000000000000000)))))

(assert (=> b!213600 (=> (not res!104569) (not e!138915))))

(declare-fun b!213601 () Bool)

(assert (=> b!213601 (= e!138914 e!138916)))

(declare-fun c!35955 () Bool)

(assert (=> b!213601 (= c!35955 (validKeyInArray!0 (select (arr!4840 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!20255 () Bool)

(assert (=> bm!20255 (= call!20258 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(assert (= (and d!58135 (not res!104568)) b!213601))

(assert (= (and b!213601 c!35955) b!213600))

(assert (= (and b!213601 (not c!35955)) b!213598))

(assert (= (and b!213600 res!104569) b!213599))

(assert (= (or b!213599 b!213598) bm!20255))

(assert (=> b!213600 m!241343))

(declare-fun m!241511 () Bool)

(assert (=> b!213600 m!241511))

(declare-fun m!241513 () Bool)

(assert (=> b!213600 m!241513))

(assert (=> b!213600 m!241343))

(declare-fun m!241515 () Bool)

(assert (=> b!213600 m!241515))

(assert (=> b!213601 m!241343))

(assert (=> b!213601 m!241343))

(assert (=> b!213601 m!241347))

(declare-fun m!241517 () Bool)

(assert (=> bm!20255 m!241517))

(assert (=> b!213387 d!58135))

(declare-fun d!58137 () Bool)

(assert (=> d!58137 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!21198 d!58137))

(declare-fun d!58139 () Bool)

(assert (=> d!58139 (= (array_inv!3191 _values!649) (bvsge (size!5166 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!21198 d!58139))

(declare-fun d!58141 () Bool)

(assert (=> d!58141 (= (array_inv!3192 _keys!825) (bvsge (size!5165 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!21198 d!58141))

(declare-fun d!58143 () Bool)

(assert (=> d!58143 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!213386 d!58143))

(declare-fun mapNonEmpty!9353 () Bool)

(declare-fun mapRes!9353 () Bool)

(declare-fun tp!19991 () Bool)

(declare-fun e!138922 () Bool)

(assert (=> mapNonEmpty!9353 (= mapRes!9353 (and tp!19991 e!138922))))

(declare-fun mapValue!9353 () ValueCell!2406)

(declare-fun mapKey!9353 () (_ BitVec 32))

(declare-fun mapRest!9353 () (Array (_ BitVec 32) ValueCell!2406))

(assert (=> mapNonEmpty!9353 (= mapRest!9347 (store mapRest!9353 mapKey!9353 mapValue!9353))))

(declare-fun condMapEmpty!9353 () Bool)

(declare-fun mapDefault!9353 () ValueCell!2406)

(assert (=> mapNonEmpty!9347 (= condMapEmpty!9353 (= mapRest!9347 ((as const (Array (_ BitVec 32) ValueCell!2406)) mapDefault!9353)))))

(declare-fun e!138921 () Bool)

(assert (=> mapNonEmpty!9347 (= tp!19982 (and e!138921 mapRes!9353))))

(declare-fun b!213609 () Bool)

(assert (=> b!213609 (= e!138921 tp_is_empty!5499)))

(declare-fun b!213608 () Bool)

(assert (=> b!213608 (= e!138922 tp_is_empty!5499)))

(declare-fun mapIsEmpty!9353 () Bool)

(assert (=> mapIsEmpty!9353 mapRes!9353))

(assert (= (and mapNonEmpty!9347 condMapEmpty!9353) mapIsEmpty!9353))

(assert (= (and mapNonEmpty!9347 (not condMapEmpty!9353)) mapNonEmpty!9353))

(assert (= (and mapNonEmpty!9353 ((_ is ValueCellFull!2406) mapValue!9353)) b!213608))

(assert (= (and mapNonEmpty!9347 ((_ is ValueCellFull!2406) mapDefault!9353)) b!213609))

(declare-fun m!241519 () Bool)

(assert (=> mapNonEmpty!9353 m!241519))

(declare-fun b_lambda!7821 () Bool)

(assert (= b_lambda!7811 (or (and start!21198 b_free!5637) b_lambda!7821)))

(declare-fun b_lambda!7823 () Bool)

(assert (= b_lambda!7819 (or (and start!21198 b_free!5637) b_lambda!7823)))

(declare-fun b_lambda!7825 () Bool)

(assert (= b_lambda!7815 (or (and start!21198 b_free!5637) b_lambda!7825)))

(declare-fun b_lambda!7827 () Bool)

(assert (= b_lambda!7809 (or (and start!21198 b_free!5637) b_lambda!7827)))

(declare-fun b_lambda!7829 () Bool)

(assert (= b_lambda!7817 (or (and start!21198 b_free!5637) b_lambda!7829)))

(declare-fun b_lambda!7831 () Bool)

(assert (= b_lambda!7813 (or (and start!21198 b_free!5637) b_lambda!7831)))

(check-sat (not b!213469) (not bm!20252) (not b!213465) (not b!213470) (not b_next!5637) (not d!58133) (not b!213522) (not b!213474) (not bm!20238) (not d!58131) (not b!213561) (not b!213570) (not bm!20217) (not b!213476) (not b!213577) (not b!213521) (not d!58129) (not b!213530) (not b!213578) (not b_lambda!7831) (not d!58127) (not b!213589) (not b!213436) (not b!213601) (not b!213439) (not b!213541) (not b_lambda!7827) (not b!213437) (not d!58123) tp_is_empty!5499 (not b!213600) (not b!213532) (not b!213567) (not bm!20244) (not b!213527) (not bm!20243) (not bm!20236) (not b!213536) (not b!213468) (not bm!20249) (not bm!20245) (not d!58125) (not b!213559) b_and!12535 (not b!213580) (not b!213555) (not b!213560) (not b!213569) (not b!213568) (not b!213566) (not bm!20233) (not b!213556) (not b_lambda!7823) (not b!213584) (not mapNonEmpty!9353) (not b!213575) (not b_lambda!7825) (not b!213562) (not bm!20235) (not b!213467) (not b!213529) (not bm!20247) (not bm!20214) (not bm!20250) (not b!213550) (not b!213557) (not b_lambda!7821) (not b!213475) (not bm!20255) (not b_lambda!7829))
(check-sat b_and!12535 (not b_next!5637))
