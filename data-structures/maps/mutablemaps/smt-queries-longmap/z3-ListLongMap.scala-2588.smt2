; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39356 () Bool)

(assert start!39356)

(declare-fun b_free!9615 () Bool)

(declare-fun b_next!9615 () Bool)

(assert (=> start!39356 (= b_free!9615 (not b_next!9615))))

(declare-fun tp!34374 () Bool)

(declare-fun b_and!17123 () Bool)

(assert (=> start!39356 (= tp!34374 b_and!17123)))

(declare-fun b!417235 () Bool)

(declare-fun res!243056 () Bool)

(declare-fun e!248947 () Bool)

(assert (=> b!417235 (=> (not res!243056) (not e!248947))))

(declare-datatypes ((array!25369 0))(
  ( (array!25370 (arr!12131 (Array (_ BitVec 32) (_ BitVec 64))) (size!12483 (_ BitVec 32))) )
))
(declare-fun lt!191185 () array!25369)

(declare-datatypes ((List!7066 0))(
  ( (Nil!7063) (Cons!7062 (h!7918 (_ BitVec 64)) (t!12354 List!7066)) )
))
(declare-fun arrayNoDuplicates!0 (array!25369 (_ BitVec 32) List!7066) Bool)

(assert (=> b!417235 (= res!243056 (arrayNoDuplicates!0 lt!191185 #b00000000000000000000000000000000 Nil!7063))))

(declare-fun b!417236 () Bool)

(declare-fun res!243062 () Bool)

(declare-fun e!248946 () Bool)

(assert (=> b!417236 (=> (not res!243062) (not e!248946))))

(declare-fun _keys!709 () array!25369)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25369 (_ BitVec 32)) Bool)

(assert (=> b!417236 (= res!243062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!417237 () Bool)

(declare-fun res!243065 () Bool)

(assert (=> b!417237 (=> (not res!243065) (not e!248946))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!417237 (= res!243065 (validKeyInArray!0 k0!794))))

(declare-fun b!417238 () Bool)

(declare-fun res!243059 () Bool)

(assert (=> b!417238 (=> (not res!243059) (not e!248946))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417238 (= res!243059 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12483 _keys!709))))))

(declare-fun b!417239 () Bool)

(declare-fun res!243061 () Bool)

(assert (=> b!417239 (=> (not res!243061) (not e!248946))))

(assert (=> b!417239 (= res!243061 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7063))))

(declare-fun b!417240 () Bool)

(assert (=> b!417240 (= e!248946 e!248947)))

(declare-fun res!243057 () Bool)

(assert (=> b!417240 (=> (not res!243057) (not e!248947))))

(assert (=> b!417240 (= res!243057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191185 mask!1025))))

(assert (=> b!417240 (= lt!191185 (array!25370 (store (arr!12131 _keys!709) i!563 k0!794) (size!12483 _keys!709)))))

(declare-fun b!417241 () Bool)

(declare-fun e!248951 () Bool)

(assert (=> b!417241 (= e!248951 true)))

(declare-datatypes ((V!15461 0))(
  ( (V!15462 (val!5428 Int)) )
))
(declare-fun lt!191187 () V!15461)

(declare-datatypes ((tuple2!7014 0))(
  ( (tuple2!7015 (_1!3517 (_ BitVec 64)) (_2!3517 V!15461)) )
))
(declare-datatypes ((List!7067 0))(
  ( (Nil!7064) (Cons!7063 (h!7919 tuple2!7014) (t!12355 List!7067)) )
))
(declare-datatypes ((ListLongMap!5941 0))(
  ( (ListLongMap!5942 (toList!2986 List!7067)) )
))
(declare-fun lt!191192 () ListLongMap!5941)

(declare-fun lt!191184 () tuple2!7014)

(declare-fun +!1197 (ListLongMap!5941 tuple2!7014) ListLongMap!5941)

(assert (=> b!417241 (= (+!1197 lt!191192 lt!191184) (+!1197 (+!1197 lt!191192 (tuple2!7015 k0!794 lt!191187)) lt!191184))))

(declare-fun lt!191191 () V!15461)

(assert (=> b!417241 (= lt!191184 (tuple2!7015 k0!794 lt!191191))))

(declare-datatypes ((Unit!12295 0))(
  ( (Unit!12296) )
))
(declare-fun lt!191186 () Unit!12295)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!20 (ListLongMap!5941 (_ BitVec 64) V!15461 V!15461) Unit!12295)

(assert (=> b!417241 (= lt!191186 (addSameAsAddTwiceSameKeyDiffValues!20 lt!191192 k0!794 lt!191187 lt!191191))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5040 0))(
  ( (ValueCellFull!5040 (v!7671 V!15461)) (EmptyCell!5040) )
))
(declare-datatypes ((array!25371 0))(
  ( (array!25372 (arr!12132 (Array (_ BitVec 32) ValueCell!5040)) (size!12484 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25371)

(declare-fun lt!191183 () V!15461)

(declare-fun get!6007 (ValueCell!5040 V!15461) V!15461)

(assert (=> b!417241 (= lt!191187 (get!6007 (select (arr!12132 _values!549) from!863) lt!191183))))

(declare-fun lt!191193 () ListLongMap!5941)

(assert (=> b!417241 (= lt!191193 (+!1197 lt!191192 (tuple2!7015 (select (arr!12131 lt!191185) from!863) lt!191191)))))

(declare-fun v!412 () V!15461)

(assert (=> b!417241 (= lt!191191 (get!6007 (select (store (arr!12132 _values!549) i!563 (ValueCellFull!5040 v!412)) from!863) lt!191183))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!682 (Int (_ BitVec 64)) V!15461)

(assert (=> b!417241 (= lt!191183 (dynLambda!682 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!191190 () array!25371)

(declare-fun minValue!515 () V!15461)

(declare-fun zeroValue!515 () V!15461)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1189 (array!25369 array!25371 (_ BitVec 32) (_ BitVec 32) V!15461 V!15461 (_ BitVec 32) Int) ListLongMap!5941)

(assert (=> b!417241 (= lt!191192 (getCurrentListMapNoExtraKeys!1189 lt!191185 lt!191190 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17772 () Bool)

(declare-fun mapRes!17772 () Bool)

(assert (=> mapIsEmpty!17772 mapRes!17772))

(declare-fun b!417243 () Bool)

(declare-fun res!243055 () Bool)

(assert (=> b!417243 (=> (not res!243055) (not e!248947))))

(assert (=> b!417243 (= res!243055 (bvsle from!863 i!563))))

(declare-fun b!417244 () Bool)

(declare-fun res!243058 () Bool)

(assert (=> b!417244 (=> (not res!243058) (not e!248946))))

(assert (=> b!417244 (= res!243058 (and (= (size!12484 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12483 _keys!709) (size!12484 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!417245 () Bool)

(declare-fun e!248945 () Bool)

(assert (=> b!417245 (= e!248947 e!248945)))

(declare-fun res!243063 () Bool)

(assert (=> b!417245 (=> (not res!243063) (not e!248945))))

(assert (=> b!417245 (= res!243063 (= from!863 i!563))))

(assert (=> b!417245 (= lt!191193 (getCurrentListMapNoExtraKeys!1189 lt!191185 lt!191190 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!417245 (= lt!191190 (array!25372 (store (arr!12132 _values!549) i!563 (ValueCellFull!5040 v!412)) (size!12484 _values!549)))))

(declare-fun lt!191189 () ListLongMap!5941)

(assert (=> b!417245 (= lt!191189 (getCurrentListMapNoExtraKeys!1189 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun c!55061 () Bool)

(declare-fun bm!29017 () Bool)

(declare-fun call!29020 () ListLongMap!5941)

(assert (=> bm!29017 (= call!29020 (getCurrentListMapNoExtraKeys!1189 (ite c!55061 _keys!709 lt!191185) (ite c!55061 _values!549 lt!191190) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417246 () Bool)

(declare-fun e!248952 () Bool)

(declare-fun call!29021 () ListLongMap!5941)

(assert (=> b!417246 (= e!248952 (= call!29020 call!29021))))

(declare-fun b!417247 () Bool)

(declare-fun e!248949 () Bool)

(declare-fun e!248948 () Bool)

(assert (=> b!417247 (= e!248949 (and e!248948 mapRes!17772))))

(declare-fun condMapEmpty!17772 () Bool)

(declare-fun mapDefault!17772 () ValueCell!5040)

(assert (=> b!417247 (= condMapEmpty!17772 (= (arr!12132 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5040)) mapDefault!17772)))))

(declare-fun b!417248 () Bool)

(declare-fun e!248950 () Bool)

(declare-fun tp_is_empty!10767 () Bool)

(assert (=> b!417248 (= e!248950 tp_is_empty!10767)))

(declare-fun b!417249 () Bool)

(assert (=> b!417249 (= e!248948 tp_is_empty!10767)))

(declare-fun b!417250 () Bool)

(declare-fun res!243054 () Bool)

(assert (=> b!417250 (=> (not res!243054) (not e!248946))))

(assert (=> b!417250 (= res!243054 (or (= (select (arr!12131 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12131 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!417251 () Bool)

(declare-fun res!243064 () Bool)

(assert (=> b!417251 (=> (not res!243064) (not e!248946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!417251 (= res!243064 (validMask!0 mask!1025))))

(declare-fun b!417252 () Bool)

(assert (=> b!417252 (= e!248945 (not e!248951))))

(declare-fun res!243053 () Bool)

(assert (=> b!417252 (=> res!243053 e!248951)))

(assert (=> b!417252 (= res!243053 (validKeyInArray!0 (select (arr!12131 _keys!709) from!863)))))

(assert (=> b!417252 e!248952))

(assert (=> b!417252 (= c!55061 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!191188 () Unit!12295)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!407 (array!25369 array!25371 (_ BitVec 32) (_ BitVec 32) V!15461 V!15461 (_ BitVec 32) (_ BitVec 64) V!15461 (_ BitVec 32) Int) Unit!12295)

(assert (=> b!417252 (= lt!191188 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!407 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!417253 () Bool)

(assert (=> b!417253 (= e!248952 (= call!29021 (+!1197 call!29020 (tuple2!7015 k0!794 v!412))))))

(declare-fun res!243060 () Bool)

(assert (=> start!39356 (=> (not res!243060) (not e!248946))))

(assert (=> start!39356 (= res!243060 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12483 _keys!709))))))

(assert (=> start!39356 e!248946))

(assert (=> start!39356 tp_is_empty!10767))

(assert (=> start!39356 tp!34374))

(assert (=> start!39356 true))

(declare-fun array_inv!8844 (array!25371) Bool)

(assert (=> start!39356 (and (array_inv!8844 _values!549) e!248949)))

(declare-fun array_inv!8845 (array!25369) Bool)

(assert (=> start!39356 (array_inv!8845 _keys!709)))

(declare-fun b!417242 () Bool)

(declare-fun res!243066 () Bool)

(assert (=> b!417242 (=> (not res!243066) (not e!248946))))

(declare-fun arrayContainsKey!0 (array!25369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!417242 (= res!243066 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun bm!29018 () Bool)

(assert (=> bm!29018 (= call!29021 (getCurrentListMapNoExtraKeys!1189 (ite c!55061 lt!191185 _keys!709) (ite c!55061 lt!191190 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17772 () Bool)

(declare-fun tp!34373 () Bool)

(assert (=> mapNonEmpty!17772 (= mapRes!17772 (and tp!34373 e!248950))))

(declare-fun mapRest!17772 () (Array (_ BitVec 32) ValueCell!5040))

(declare-fun mapKey!17772 () (_ BitVec 32))

(declare-fun mapValue!17772 () ValueCell!5040)

(assert (=> mapNonEmpty!17772 (= (arr!12132 _values!549) (store mapRest!17772 mapKey!17772 mapValue!17772))))

(assert (= (and start!39356 res!243060) b!417251))

(assert (= (and b!417251 res!243064) b!417244))

(assert (= (and b!417244 res!243058) b!417236))

(assert (= (and b!417236 res!243062) b!417239))

(assert (= (and b!417239 res!243061) b!417238))

(assert (= (and b!417238 res!243059) b!417237))

(assert (= (and b!417237 res!243065) b!417250))

(assert (= (and b!417250 res!243054) b!417242))

(assert (= (and b!417242 res!243066) b!417240))

(assert (= (and b!417240 res!243057) b!417235))

(assert (= (and b!417235 res!243056) b!417243))

(assert (= (and b!417243 res!243055) b!417245))

(assert (= (and b!417245 res!243063) b!417252))

(assert (= (and b!417252 c!55061) b!417253))

(assert (= (and b!417252 (not c!55061)) b!417246))

(assert (= (or b!417253 b!417246) bm!29018))

(assert (= (or b!417253 b!417246) bm!29017))

(assert (= (and b!417252 (not res!243053)) b!417241))

(assert (= (and b!417247 condMapEmpty!17772) mapIsEmpty!17772))

(assert (= (and b!417247 (not condMapEmpty!17772)) mapNonEmpty!17772))

(get-info :version)

(assert (= (and mapNonEmpty!17772 ((_ is ValueCellFull!5040) mapValue!17772)) b!417248))

(assert (= (and b!417247 ((_ is ValueCellFull!5040) mapDefault!17772)) b!417249))

(assert (= start!39356 b!417247))

(declare-fun b_lambda!8949 () Bool)

(assert (=> (not b_lambda!8949) (not b!417241)))

(declare-fun t!12353 () Bool)

(declare-fun tb!3245 () Bool)

(assert (=> (and start!39356 (= defaultEntry!557 defaultEntry!557) t!12353) tb!3245))

(declare-fun result!6009 () Bool)

(assert (=> tb!3245 (= result!6009 tp_is_empty!10767)))

(assert (=> b!417241 t!12353))

(declare-fun b_and!17125 () Bool)

(assert (= b_and!17123 (and (=> t!12353 result!6009) b_and!17125)))

(declare-fun m!406543 () Bool)

(assert (=> start!39356 m!406543))

(declare-fun m!406545 () Bool)

(assert (=> start!39356 m!406545))

(declare-fun m!406547 () Bool)

(assert (=> b!417239 m!406547))

(declare-fun m!406549 () Bool)

(assert (=> b!417235 m!406549))

(declare-fun m!406551 () Bool)

(assert (=> b!417252 m!406551))

(assert (=> b!417252 m!406551))

(declare-fun m!406553 () Bool)

(assert (=> b!417252 m!406553))

(declare-fun m!406555 () Bool)

(assert (=> b!417252 m!406555))

(declare-fun m!406557 () Bool)

(assert (=> b!417242 m!406557))

(declare-fun m!406559 () Bool)

(assert (=> b!417237 m!406559))

(declare-fun m!406561 () Bool)

(assert (=> b!417241 m!406561))

(declare-fun m!406563 () Bool)

(assert (=> b!417241 m!406563))

(declare-fun m!406565 () Bool)

(assert (=> b!417241 m!406565))

(declare-fun m!406567 () Bool)

(assert (=> b!417241 m!406567))

(declare-fun m!406569 () Bool)

(assert (=> b!417241 m!406569))

(assert (=> b!417241 m!406567))

(declare-fun m!406571 () Bool)

(assert (=> b!417241 m!406571))

(declare-fun m!406573 () Bool)

(assert (=> b!417241 m!406573))

(assert (=> b!417241 m!406565))

(declare-fun m!406575 () Bool)

(assert (=> b!417241 m!406575))

(declare-fun m!406577 () Bool)

(assert (=> b!417241 m!406577))

(declare-fun m!406579 () Bool)

(assert (=> b!417241 m!406579))

(declare-fun m!406581 () Bool)

(assert (=> b!417241 m!406581))

(declare-fun m!406583 () Bool)

(assert (=> b!417241 m!406583))

(declare-fun m!406585 () Bool)

(assert (=> b!417241 m!406585))

(assert (=> b!417241 m!406577))

(declare-fun m!406587 () Bool)

(assert (=> b!417251 m!406587))

(declare-fun m!406589 () Bool)

(assert (=> b!417236 m!406589))

(declare-fun m!406591 () Bool)

(assert (=> mapNonEmpty!17772 m!406591))

(declare-fun m!406593 () Bool)

(assert (=> b!417245 m!406593))

(assert (=> b!417245 m!406563))

(declare-fun m!406595 () Bool)

(assert (=> b!417245 m!406595))

(declare-fun m!406597 () Bool)

(assert (=> b!417253 m!406597))

(declare-fun m!406599 () Bool)

(assert (=> bm!29018 m!406599))

(declare-fun m!406601 () Bool)

(assert (=> bm!29017 m!406601))

(declare-fun m!406603 () Bool)

(assert (=> b!417250 m!406603))

(declare-fun m!406605 () Bool)

(assert (=> b!417240 m!406605))

(declare-fun m!406607 () Bool)

(assert (=> b!417240 m!406607))

(check-sat (not b!417242) (not b!417236) (not b!417240) (not b!417237) (not start!39356) (not bm!29018) (not b_next!9615) (not b!417245) (not b!417251) (not bm!29017) (not b_lambda!8949) (not b!417253) (not b!417241) (not mapNonEmpty!17772) b_and!17125 (not b!417235) (not b!417252) (not b!417239) tp_is_empty!10767)
(check-sat b_and!17125 (not b_next!9615))
