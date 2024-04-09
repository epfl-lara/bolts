; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37944 () Bool)

(assert start!37944)

(declare-fun b_free!8949 () Bool)

(declare-fun b_next!8949 () Bool)

(assert (=> start!37944 (= b_free!8949 (not b_next!8949))))

(declare-fun tp!31611 () Bool)

(declare-fun b_and!16257 () Bool)

(assert (=> start!37944 (= tp!31611 b_and!16257)))

(declare-fun b!389967 () Bool)

(declare-fun res!223207 () Bool)

(declare-fun e!236244 () Bool)

(assert (=> b!389967 (=> (not res!223207) (not e!236244))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13933 0))(
  ( (V!13934 (val!4855 Int)) )
))
(declare-datatypes ((ValueCell!4467 0))(
  ( (ValueCellFull!4467 (v!7064 V!13933)) (EmptyCell!4467) )
))
(declare-datatypes ((array!23117 0))(
  ( (array!23118 (arr!11020 (Array (_ BitVec 32) ValueCell!4467)) (size!11372 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23117)

(declare-datatypes ((array!23119 0))(
  ( (array!23120 (arr!11021 (Array (_ BitVec 32) (_ BitVec 64))) (size!11373 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23119)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!389967 (= res!223207 (and (= (size!11372 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11373 _keys!658) (size!11372 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!389968 () Bool)

(declare-fun res!223199 () Bool)

(assert (=> b!389968 (=> (not res!223199) (not e!236244))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23119 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!389968 (= res!223199 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!223196 () Bool)

(assert (=> start!37944 (=> (not res!223196) (not e!236244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37944 (= res!223196 (validMask!0 mask!970))))

(assert (=> start!37944 e!236244))

(declare-fun e!236246 () Bool)

(declare-fun array_inv!8080 (array!23117) Bool)

(assert (=> start!37944 (and (array_inv!8080 _values!506) e!236246)))

(assert (=> start!37944 tp!31611))

(assert (=> start!37944 true))

(declare-fun tp_is_empty!9621 () Bool)

(assert (=> start!37944 tp_is_empty!9621))

(declare-fun array_inv!8081 (array!23119) Bool)

(assert (=> start!37944 (array_inv!8081 _keys!658)))

(declare-fun b!389969 () Bool)

(declare-fun e!236247 () Bool)

(assert (=> b!389969 (= e!236244 e!236247)))

(declare-fun res!223200 () Bool)

(assert (=> b!389969 (=> (not res!223200) (not e!236247))))

(declare-fun lt!183775 () array!23119)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23119 (_ BitVec 32)) Bool)

(assert (=> b!389969 (= res!223200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183775 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!389969 (= lt!183775 (array!23120 (store (arr!11021 _keys!658) i!548 k0!778) (size!11373 _keys!658)))))

(declare-fun b!389970 () Bool)

(declare-fun res!223206 () Bool)

(assert (=> b!389970 (=> (not res!223206) (not e!236244))))

(assert (=> b!389970 (= res!223206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!389971 () Bool)

(declare-fun res!223201 () Bool)

(assert (=> b!389971 (=> (not res!223201) (not e!236247))))

(declare-datatypes ((List!6359 0))(
  ( (Nil!6356) (Cons!6355 (h!7211 (_ BitVec 64)) (t!11525 List!6359)) )
))
(declare-fun arrayNoDuplicates!0 (array!23119 (_ BitVec 32) List!6359) Bool)

(assert (=> b!389971 (= res!223201 (arrayNoDuplicates!0 lt!183775 #b00000000000000000000000000000000 Nil!6356))))

(declare-fun mapNonEmpty!16008 () Bool)

(declare-fun mapRes!16008 () Bool)

(declare-fun tp!31610 () Bool)

(declare-fun e!236249 () Bool)

(assert (=> mapNonEmpty!16008 (= mapRes!16008 (and tp!31610 e!236249))))

(declare-fun mapRest!16008 () (Array (_ BitVec 32) ValueCell!4467))

(declare-fun mapValue!16008 () ValueCell!4467)

(declare-fun mapKey!16008 () (_ BitVec 32))

(assert (=> mapNonEmpty!16008 (= (arr!11020 _values!506) (store mapRest!16008 mapKey!16008 mapValue!16008))))

(declare-fun b!389972 () Bool)

(declare-fun e!236245 () Bool)

(assert (=> b!389972 (= e!236246 (and e!236245 mapRes!16008))))

(declare-fun condMapEmpty!16008 () Bool)

(declare-fun mapDefault!16008 () ValueCell!4467)

(assert (=> b!389972 (= condMapEmpty!16008 (= (arr!11020 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4467)) mapDefault!16008)))))

(declare-fun b!389973 () Bool)

(declare-fun res!223204 () Bool)

(assert (=> b!389973 (=> (not res!223204) (not e!236244))))

(assert (=> b!389973 (= res!223204 (or (= (select (arr!11021 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11021 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!389974 () Bool)

(declare-fun e!236251 () Bool)

(declare-fun e!236248 () Bool)

(assert (=> b!389974 (= e!236251 e!236248)))

(declare-fun res!223202 () Bool)

(assert (=> b!389974 (=> res!223202 e!236248)))

(assert (=> b!389974 (= res!223202 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6476 0))(
  ( (tuple2!6477 (_1!3248 (_ BitVec 64)) (_2!3248 V!13933)) )
))
(declare-datatypes ((List!6360 0))(
  ( (Nil!6357) (Cons!6356 (h!7212 tuple2!6476) (t!11526 List!6360)) )
))
(declare-datatypes ((ListLongMap!5403 0))(
  ( (ListLongMap!5404 (toList!2717 List!6360)) )
))
(declare-fun lt!183768 () ListLongMap!5403)

(declare-fun lt!183783 () ListLongMap!5403)

(assert (=> b!389974 (= lt!183768 lt!183783)))

(declare-fun lt!183776 () ListLongMap!5403)

(declare-fun lt!183769 () tuple2!6476)

(declare-fun +!1015 (ListLongMap!5403 tuple2!6476) ListLongMap!5403)

(assert (=> b!389974 (= lt!183783 (+!1015 lt!183776 lt!183769))))

(declare-fun lt!183770 () ListLongMap!5403)

(declare-fun v!373 () V!13933)

(declare-datatypes ((Unit!11919 0))(
  ( (Unit!11920) )
))
(declare-fun lt!183781 () Unit!11919)

(declare-fun zeroValue!472 () V!13933)

(declare-fun addCommutativeForDiffKeys!332 (ListLongMap!5403 (_ BitVec 64) V!13933 (_ BitVec 64) V!13933) Unit!11919)

(assert (=> b!389974 (= lt!183781 (addCommutativeForDiffKeys!332 lt!183770 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!183773 () ListLongMap!5403)

(declare-fun lt!183777 () tuple2!6476)

(assert (=> b!389974 (= lt!183773 (+!1015 lt!183768 lt!183777))))

(declare-fun lt!183778 () ListLongMap!5403)

(declare-fun lt!183779 () tuple2!6476)

(assert (=> b!389974 (= lt!183768 (+!1015 lt!183778 lt!183779))))

(declare-fun lt!183771 () ListLongMap!5403)

(declare-fun lt!183780 () ListLongMap!5403)

(assert (=> b!389974 (= lt!183771 lt!183780)))

(assert (=> b!389974 (= lt!183780 (+!1015 lt!183776 lt!183777))))

(assert (=> b!389974 (= lt!183776 (+!1015 lt!183770 lt!183779))))

(declare-fun lt!183774 () ListLongMap!5403)

(assert (=> b!389974 (= lt!183773 (+!1015 (+!1015 lt!183774 lt!183779) lt!183777))))

(declare-fun minValue!472 () V!13933)

(assert (=> b!389974 (= lt!183777 (tuple2!6477 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!389974 (= lt!183779 (tuple2!6477 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!389975 () Bool)

(declare-fun res!223198 () Bool)

(assert (=> b!389975 (=> (not res!223198) (not e!236244))))

(assert (=> b!389975 (= res!223198 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11373 _keys!658))))))

(declare-fun mapIsEmpty!16008 () Bool)

(assert (=> mapIsEmpty!16008 mapRes!16008))

(declare-fun b!389976 () Bool)

(declare-fun res!223197 () Bool)

(assert (=> b!389976 (=> (not res!223197) (not e!236244))))

(assert (=> b!389976 (= res!223197 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6356))))

(declare-fun b!389977 () Bool)

(declare-fun res!223205 () Bool)

(assert (=> b!389977 (=> (not res!223205) (not e!236244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!389977 (= res!223205 (validKeyInArray!0 k0!778))))

(declare-fun b!389978 () Bool)

(assert (=> b!389978 (= e!236249 tp_is_empty!9621)))

(declare-fun b!389979 () Bool)

(assert (=> b!389979 (= e!236247 (not e!236251))))

(declare-fun res!223203 () Bool)

(assert (=> b!389979 (=> res!223203 e!236251)))

(assert (=> b!389979 (= res!223203 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!2084 (array!23119 array!23117 (_ BitVec 32) (_ BitVec 32) V!13933 V!13933 (_ BitVec 32) Int) ListLongMap!5403)

(assert (=> b!389979 (= lt!183771 (getCurrentListMap!2084 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183772 () array!23117)

(assert (=> b!389979 (= lt!183773 (getCurrentListMap!2084 lt!183775 lt!183772 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389979 (and (= lt!183774 lt!183778) (= lt!183778 lt!183774))))

(assert (=> b!389979 (= lt!183778 (+!1015 lt!183770 lt!183769))))

(assert (=> b!389979 (= lt!183769 (tuple2!6477 k0!778 v!373))))

(declare-fun lt!183784 () Unit!11919)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!241 (array!23119 array!23117 (_ BitVec 32) (_ BitVec 32) V!13933 V!13933 (_ BitVec 32) (_ BitVec 64) V!13933 (_ BitVec 32) Int) Unit!11919)

(assert (=> b!389979 (= lt!183784 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!241 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!946 (array!23119 array!23117 (_ BitVec 32) (_ BitVec 32) V!13933 V!13933 (_ BitVec 32) Int) ListLongMap!5403)

(assert (=> b!389979 (= lt!183774 (getCurrentListMapNoExtraKeys!946 lt!183775 lt!183772 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389979 (= lt!183772 (array!23118 (store (arr!11020 _values!506) i!548 (ValueCellFull!4467 v!373)) (size!11372 _values!506)))))

(assert (=> b!389979 (= lt!183770 (getCurrentListMapNoExtraKeys!946 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389980 () Bool)

(assert (=> b!389980 (= e!236245 tp_is_empty!9621)))

(declare-fun b!389981 () Bool)

(assert (=> b!389981 (= e!236248 (= (+!1015 lt!183771 lt!183769) lt!183773))))

(assert (=> b!389981 (= (+!1015 lt!183783 lt!183777) (+!1015 lt!183780 lt!183769))))

(declare-fun lt!183782 () Unit!11919)

(assert (=> b!389981 (= lt!183782 (addCommutativeForDiffKeys!332 lt!183776 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (= (and start!37944 res!223196) b!389967))

(assert (= (and b!389967 res!223207) b!389970))

(assert (= (and b!389970 res!223206) b!389976))

(assert (= (and b!389976 res!223197) b!389975))

(assert (= (and b!389975 res!223198) b!389977))

(assert (= (and b!389977 res!223205) b!389973))

(assert (= (and b!389973 res!223204) b!389968))

(assert (= (and b!389968 res!223199) b!389969))

(assert (= (and b!389969 res!223200) b!389971))

(assert (= (and b!389971 res!223201) b!389979))

(assert (= (and b!389979 (not res!223203)) b!389974))

(assert (= (and b!389974 (not res!223202)) b!389981))

(assert (= (and b!389972 condMapEmpty!16008) mapIsEmpty!16008))

(assert (= (and b!389972 (not condMapEmpty!16008)) mapNonEmpty!16008))

(get-info :version)

(assert (= (and mapNonEmpty!16008 ((_ is ValueCellFull!4467) mapValue!16008)) b!389978))

(assert (= (and b!389972 ((_ is ValueCellFull!4467) mapDefault!16008)) b!389980))

(assert (= start!37944 b!389972))

(declare-fun m!386307 () Bool)

(assert (=> b!389968 m!386307))

(declare-fun m!386309 () Bool)

(assert (=> mapNonEmpty!16008 m!386309))

(declare-fun m!386311 () Bool)

(assert (=> b!389971 m!386311))

(declare-fun m!386313 () Bool)

(assert (=> b!389981 m!386313))

(declare-fun m!386315 () Bool)

(assert (=> b!389981 m!386315))

(declare-fun m!386317 () Bool)

(assert (=> b!389981 m!386317))

(declare-fun m!386319 () Bool)

(assert (=> b!389981 m!386319))

(declare-fun m!386321 () Bool)

(assert (=> b!389973 m!386321))

(declare-fun m!386323 () Bool)

(assert (=> b!389979 m!386323))

(declare-fun m!386325 () Bool)

(assert (=> b!389979 m!386325))

(declare-fun m!386327 () Bool)

(assert (=> b!389979 m!386327))

(declare-fun m!386329 () Bool)

(assert (=> b!389979 m!386329))

(declare-fun m!386331 () Bool)

(assert (=> b!389979 m!386331))

(declare-fun m!386333 () Bool)

(assert (=> b!389979 m!386333))

(declare-fun m!386335 () Bool)

(assert (=> b!389979 m!386335))

(declare-fun m!386337 () Bool)

(assert (=> b!389976 m!386337))

(declare-fun m!386339 () Bool)

(assert (=> start!37944 m!386339))

(declare-fun m!386341 () Bool)

(assert (=> start!37944 m!386341))

(declare-fun m!386343 () Bool)

(assert (=> start!37944 m!386343))

(declare-fun m!386345 () Bool)

(assert (=> b!389977 m!386345))

(declare-fun m!386347 () Bool)

(assert (=> b!389970 m!386347))

(declare-fun m!386349 () Bool)

(assert (=> b!389974 m!386349))

(declare-fun m!386351 () Bool)

(assert (=> b!389974 m!386351))

(declare-fun m!386353 () Bool)

(assert (=> b!389974 m!386353))

(declare-fun m!386355 () Bool)

(assert (=> b!389974 m!386355))

(declare-fun m!386357 () Bool)

(assert (=> b!389974 m!386357))

(declare-fun m!386359 () Bool)

(assert (=> b!389974 m!386359))

(assert (=> b!389974 m!386351))

(declare-fun m!386361 () Bool)

(assert (=> b!389974 m!386361))

(declare-fun m!386363 () Bool)

(assert (=> b!389974 m!386363))

(declare-fun m!386365 () Bool)

(assert (=> b!389969 m!386365))

(declare-fun m!386367 () Bool)

(assert (=> b!389969 m!386367))

(check-sat b_and!16257 (not b!389969) (not b!389968) (not b!389979) (not b!389970) (not mapNonEmpty!16008) (not b!389974) (not b!389977) (not b!389976) tp_is_empty!9621 (not b!389981) (not start!37944) (not b_next!8949) (not b!389971))
(check-sat b_and!16257 (not b_next!8949))
