; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20738 () Bool)

(assert start!20738)

(declare-fun b_free!5385 () Bool)

(declare-fun b_next!5385 () Bool)

(assert (=> start!20738 (= b_free!5385 (not b_next!5385))))

(declare-fun tp!19187 () Bool)

(declare-fun b_and!12149 () Bool)

(assert (=> start!20738 (= tp!19187 b_and!12149)))

(declare-fun b!207342 () Bool)

(declare-fun res!100664 () Bool)

(declare-fun e!135384 () Bool)

(assert (=> b!207342 (=> (not res!100664) (not e!135384))))

(declare-datatypes ((array!9688 0))(
  ( (array!9689 (arr!4594 (Array (_ BitVec 32) (_ BitVec 64))) (size!4919 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9688)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6635 0))(
  ( (V!6636 (val!2665 Int)) )
))
(declare-datatypes ((ValueCell!2277 0))(
  ( (ValueCellFull!2277 (v!4631 V!6635)) (EmptyCell!2277) )
))
(declare-datatypes ((array!9690 0))(
  ( (array!9691 (arr!4595 (Array (_ BitVec 32) ValueCell!2277)) (size!4920 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9690)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!207342 (= res!100664 (and (= (size!4920 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4919 _keys!825) (size!4920 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!100669 () Bool)

(assert (=> start!20738 (=> (not res!100669) (not e!135384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20738 (= res!100669 (validMask!0 mask!1149))))

(assert (=> start!20738 e!135384))

(declare-fun e!135381 () Bool)

(declare-fun array_inv!3031 (array!9690) Bool)

(assert (=> start!20738 (and (array_inv!3031 _values!649) e!135381)))

(assert (=> start!20738 true))

(declare-fun tp_is_empty!5241 () Bool)

(assert (=> start!20738 tp_is_empty!5241))

(declare-fun array_inv!3032 (array!9688) Bool)

(assert (=> start!20738 (array_inv!3032 _keys!825)))

(assert (=> start!20738 tp!19187))

(declare-fun b!207343 () Bool)

(declare-fun e!135382 () Bool)

(declare-fun mapRes!8930 () Bool)

(assert (=> b!207343 (= e!135381 (and e!135382 mapRes!8930))))

(declare-fun condMapEmpty!8930 () Bool)

(declare-fun mapDefault!8930 () ValueCell!2277)

(assert (=> b!207343 (= condMapEmpty!8930 (= (arr!4595 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2277)) mapDefault!8930)))))

(declare-fun b!207344 () Bool)

(assert (=> b!207344 (= e!135382 tp_is_empty!5241)))

(declare-fun b!207345 () Bool)

(declare-fun res!100663 () Bool)

(assert (=> b!207345 (=> (not res!100663) (not e!135384))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207345 (= res!100663 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4919 _keys!825))))))

(declare-fun b!207346 () Bool)

(declare-fun res!100668 () Bool)

(assert (=> b!207346 (=> (not res!100668) (not e!135384))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!207346 (= res!100668 (= (select (arr!4594 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!8930 () Bool)

(declare-fun tp!19186 () Bool)

(declare-fun e!135385 () Bool)

(assert (=> mapNonEmpty!8930 (= mapRes!8930 (and tp!19186 e!135385))))

(declare-fun mapValue!8930 () ValueCell!2277)

(declare-fun mapKey!8930 () (_ BitVec 32))

(declare-fun mapRest!8930 () (Array (_ BitVec 32) ValueCell!2277))

(assert (=> mapNonEmpty!8930 (= (arr!4595 _values!649) (store mapRest!8930 mapKey!8930 mapValue!8930))))

(declare-fun b!207347 () Bool)

(declare-fun res!100665 () Bool)

(assert (=> b!207347 (=> (not res!100665) (not e!135384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9688 (_ BitVec 32)) Bool)

(assert (=> b!207347 (= res!100665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207348 () Bool)

(declare-fun res!100666 () Bool)

(assert (=> b!207348 (=> (not res!100666) (not e!135384))))

(declare-datatypes ((List!2955 0))(
  ( (Nil!2952) (Cons!2951 (h!3593 (_ BitVec 64)) (t!7894 List!2955)) )
))
(declare-fun arrayNoDuplicates!0 (array!9688 (_ BitVec 32) List!2955) Bool)

(assert (=> b!207348 (= res!100666 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2952))))

(declare-fun b!207349 () Bool)

(assert (=> b!207349 (= e!135385 tp_is_empty!5241)))

(declare-fun b!207350 () Bool)

(declare-fun res!100667 () Bool)

(assert (=> b!207350 (=> (not res!100667) (not e!135384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207350 (= res!100667 (validKeyInArray!0 k0!843))))

(declare-fun b!207351 () Bool)

(assert (=> b!207351 (= e!135384 (not true))))

(declare-fun zeroValue!615 () V!6635)

(declare-datatypes ((tuple2!4040 0))(
  ( (tuple2!4041 (_1!2030 (_ BitVec 64)) (_2!2030 V!6635)) )
))
(declare-datatypes ((List!2956 0))(
  ( (Nil!2953) (Cons!2952 (h!3594 tuple2!4040) (t!7895 List!2956)) )
))
(declare-datatypes ((ListLongMap!2967 0))(
  ( (ListLongMap!2968 (toList!1499 List!2956)) )
))
(declare-fun lt!106264 () ListLongMap!2967)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6635)

(declare-fun getCurrentListMap!1061 (array!9688 array!9690 (_ BitVec 32) (_ BitVec 32) V!6635 V!6635 (_ BitVec 32) Int) ListLongMap!2967)

(assert (=> b!207351 (= lt!106264 (getCurrentListMap!1061 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106269 () array!9690)

(declare-fun lt!106266 () ListLongMap!2967)

(assert (=> b!207351 (= lt!106266 (getCurrentListMap!1061 _keys!825 lt!106269 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106267 () ListLongMap!2967)

(declare-fun lt!106268 () ListLongMap!2967)

(assert (=> b!207351 (and (= lt!106267 lt!106268) (= lt!106268 lt!106267))))

(declare-fun lt!106270 () ListLongMap!2967)

(declare-fun v!520 () V!6635)

(declare-fun +!516 (ListLongMap!2967 tuple2!4040) ListLongMap!2967)

(assert (=> b!207351 (= lt!106268 (+!516 lt!106270 (tuple2!4041 k0!843 v!520)))))

(declare-datatypes ((Unit!6327 0))(
  ( (Unit!6328) )
))
(declare-fun lt!106265 () Unit!6327)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!174 (array!9688 array!9690 (_ BitVec 32) (_ BitVec 32) V!6635 V!6635 (_ BitVec 32) (_ BitVec 64) V!6635 (_ BitVec 32) Int) Unit!6327)

(assert (=> b!207351 (= lt!106265 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!174 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!432 (array!9688 array!9690 (_ BitVec 32) (_ BitVec 32) V!6635 V!6635 (_ BitVec 32) Int) ListLongMap!2967)

(assert (=> b!207351 (= lt!106267 (getCurrentListMapNoExtraKeys!432 _keys!825 lt!106269 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207351 (= lt!106269 (array!9691 (store (arr!4595 _values!649) i!601 (ValueCellFull!2277 v!520)) (size!4920 _values!649)))))

(assert (=> b!207351 (= lt!106270 (getCurrentListMapNoExtraKeys!432 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8930 () Bool)

(assert (=> mapIsEmpty!8930 mapRes!8930))

(assert (= (and start!20738 res!100669) b!207342))

(assert (= (and b!207342 res!100664) b!207347))

(assert (= (and b!207347 res!100665) b!207348))

(assert (= (and b!207348 res!100666) b!207345))

(assert (= (and b!207345 res!100663) b!207350))

(assert (= (and b!207350 res!100667) b!207346))

(assert (= (and b!207346 res!100668) b!207351))

(assert (= (and b!207343 condMapEmpty!8930) mapIsEmpty!8930))

(assert (= (and b!207343 (not condMapEmpty!8930)) mapNonEmpty!8930))

(get-info :version)

(assert (= (and mapNonEmpty!8930 ((_ is ValueCellFull!2277) mapValue!8930)) b!207349))

(assert (= (and b!207343 ((_ is ValueCellFull!2277) mapDefault!8930)) b!207344))

(assert (= start!20738 b!207343))

(declare-fun m!235107 () Bool)

(assert (=> b!207351 m!235107))

(declare-fun m!235109 () Bool)

(assert (=> b!207351 m!235109))

(declare-fun m!235111 () Bool)

(assert (=> b!207351 m!235111))

(declare-fun m!235113 () Bool)

(assert (=> b!207351 m!235113))

(declare-fun m!235115 () Bool)

(assert (=> b!207351 m!235115))

(declare-fun m!235117 () Bool)

(assert (=> b!207351 m!235117))

(declare-fun m!235119 () Bool)

(assert (=> b!207351 m!235119))

(declare-fun m!235121 () Bool)

(assert (=> b!207350 m!235121))

(declare-fun m!235123 () Bool)

(assert (=> start!20738 m!235123))

(declare-fun m!235125 () Bool)

(assert (=> start!20738 m!235125))

(declare-fun m!235127 () Bool)

(assert (=> start!20738 m!235127))

(declare-fun m!235129 () Bool)

(assert (=> mapNonEmpty!8930 m!235129))

(declare-fun m!235131 () Bool)

(assert (=> b!207346 m!235131))

(declare-fun m!235133 () Bool)

(assert (=> b!207348 m!235133))

(declare-fun m!235135 () Bool)

(assert (=> b!207347 m!235135))

(check-sat (not b!207351) tp_is_empty!5241 (not mapNonEmpty!8930) (not b!207347) (not start!20738) (not b!207348) b_and!12149 (not b_next!5385) (not b!207350))
(check-sat b_and!12149 (not b_next!5385))
