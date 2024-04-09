; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20540 () Bool)

(assert start!20540)

(declare-fun b_free!5187 () Bool)

(declare-fun b_next!5187 () Bool)

(assert (=> start!20540 (= b_free!5187 (not b_next!5187))))

(declare-fun tp!18592 () Bool)

(declare-fun b_and!11951 () Bool)

(assert (=> start!20540 (= tp!18592 b_and!11951)))

(declare-fun b!203959 () Bool)

(declare-fun e!133496 () Bool)

(declare-fun tp_is_empty!5043 () Bool)

(assert (=> b!203959 (= e!133496 tp_is_empty!5043)))

(declare-fun mapIsEmpty!8633 () Bool)

(declare-fun mapRes!8633 () Bool)

(assert (=> mapIsEmpty!8633 mapRes!8633))

(declare-fun b!203960 () Bool)

(declare-fun res!98177 () Bool)

(declare-fun e!133493 () Bool)

(assert (=> b!203960 (=> (not res!98177) (not e!133493))))

(declare-datatypes ((array!9304 0))(
  ( (array!9305 (arr!4402 (Array (_ BitVec 32) (_ BitVec 64))) (size!4727 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9304)

(declare-datatypes ((List!2812 0))(
  ( (Nil!2809) (Cons!2808 (h!3450 (_ BitVec 64)) (t!7751 List!2812)) )
))
(declare-fun arrayNoDuplicates!0 (array!9304 (_ BitVec 32) List!2812) Bool)

(assert (=> b!203960 (= res!98177 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2809))))

(declare-fun b!203961 () Bool)

(declare-fun e!133497 () Bool)

(assert (=> b!203961 (= e!133493 (not e!133497))))

(declare-fun res!98178 () Bool)

(assert (=> b!203961 (=> res!98178 e!133497)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203961 (= res!98178 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((V!6371 0))(
  ( (V!6372 (val!2566 Int)) )
))
(declare-fun zeroValue!615 () V!6371)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6371)

(declare-datatypes ((tuple2!3888 0))(
  ( (tuple2!3889 (_1!1954 (_ BitVec 64)) (_2!1954 V!6371)) )
))
(declare-datatypes ((List!2813 0))(
  ( (Nil!2810) (Cons!2809 (h!3451 tuple2!3888) (t!7752 List!2813)) )
))
(declare-datatypes ((ListLongMap!2815 0))(
  ( (ListLongMap!2816 (toList!1423 List!2813)) )
))
(declare-fun lt!103204 () ListLongMap!2815)

(declare-datatypes ((ValueCell!2178 0))(
  ( (ValueCellFull!2178 (v!4532 V!6371)) (EmptyCell!2178) )
))
(declare-datatypes ((array!9306 0))(
  ( (array!9307 (arr!4403 (Array (_ BitVec 32) ValueCell!2178)) (size!4728 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9306)

(declare-fun getCurrentListMap!992 (array!9304 array!9306 (_ BitVec 32) (_ BitVec 32) V!6371 V!6371 (_ BitVec 32) Int) ListLongMap!2815)

(assert (=> b!203961 (= lt!103204 (getCurrentListMap!992 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103209 () array!9306)

(declare-fun lt!103213 () ListLongMap!2815)

(assert (=> b!203961 (= lt!103213 (getCurrentListMap!992 _keys!825 lt!103209 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103210 () ListLongMap!2815)

(declare-fun lt!103208 () ListLongMap!2815)

(assert (=> b!203961 (and (= lt!103210 lt!103208) (= lt!103208 lt!103210))))

(declare-fun lt!103203 () ListLongMap!2815)

(declare-fun lt!103212 () tuple2!3888)

(declare-fun +!440 (ListLongMap!2815 tuple2!3888) ListLongMap!2815)

(assert (=> b!203961 (= lt!103208 (+!440 lt!103203 lt!103212))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6371)

(assert (=> b!203961 (= lt!103212 (tuple2!3889 k0!843 v!520))))

(declare-datatypes ((Unit!6181 0))(
  ( (Unit!6182) )
))
(declare-fun lt!103206 () Unit!6181)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!105 (array!9304 array!9306 (_ BitVec 32) (_ BitVec 32) V!6371 V!6371 (_ BitVec 32) (_ BitVec 64) V!6371 (_ BitVec 32) Int) Unit!6181)

(assert (=> b!203961 (= lt!103206 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!105 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!363 (array!9304 array!9306 (_ BitVec 32) (_ BitVec 32) V!6371 V!6371 (_ BitVec 32) Int) ListLongMap!2815)

(assert (=> b!203961 (= lt!103210 (getCurrentListMapNoExtraKeys!363 _keys!825 lt!103209 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203961 (= lt!103209 (array!9307 (store (arr!4403 _values!649) i!601 (ValueCellFull!2178 v!520)) (size!4728 _values!649)))))

(assert (=> b!203961 (= lt!103203 (getCurrentListMapNoExtraKeys!363 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!203962 () Bool)

(declare-fun e!133495 () Bool)

(assert (=> b!203962 (= e!133495 true)))

(declare-fun lt!103211 () ListLongMap!2815)

(declare-fun lt!103207 () ListLongMap!2815)

(assert (=> b!203962 (= lt!103211 (+!440 lt!103207 lt!103212))))

(declare-fun lt!103205 () Unit!6181)

(declare-fun addCommutativeForDiffKeys!150 (ListLongMap!2815 (_ BitVec 64) V!6371 (_ BitVec 64) V!6371) Unit!6181)

(assert (=> b!203962 (= lt!103205 (addCommutativeForDiffKeys!150 lt!103203 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203963 () Bool)

(declare-fun res!98176 () Bool)

(assert (=> b!203963 (=> (not res!98176) (not e!133493))))

(assert (=> b!203963 (= res!98176 (= (select (arr!4402 _keys!825) i!601) k0!843))))

(declare-fun b!203964 () Bool)

(declare-fun res!98174 () Bool)

(assert (=> b!203964 (=> (not res!98174) (not e!133493))))

(assert (=> b!203964 (= res!98174 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4727 _keys!825))))))

(declare-fun mapNonEmpty!8633 () Bool)

(declare-fun tp!18593 () Bool)

(declare-fun e!133492 () Bool)

(assert (=> mapNonEmpty!8633 (= mapRes!8633 (and tp!18593 e!133492))))

(declare-fun mapRest!8633 () (Array (_ BitVec 32) ValueCell!2178))

(declare-fun mapValue!8633 () ValueCell!2178)

(declare-fun mapKey!8633 () (_ BitVec 32))

(assert (=> mapNonEmpty!8633 (= (arr!4403 _values!649) (store mapRest!8633 mapKey!8633 mapValue!8633))))

(declare-fun b!203965 () Bool)

(declare-fun res!98175 () Bool)

(assert (=> b!203965 (=> (not res!98175) (not e!133493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203965 (= res!98175 (validKeyInArray!0 k0!843))))

(declare-fun b!203966 () Bool)

(assert (=> b!203966 (= e!133497 e!133495)))

(declare-fun res!98171 () Bool)

(assert (=> b!203966 (=> res!98171 e!133495)))

(assert (=> b!203966 (= res!98171 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!203966 (= lt!103213 lt!103211)))

(declare-fun lt!103202 () tuple2!3888)

(assert (=> b!203966 (= lt!103211 (+!440 lt!103208 lt!103202))))

(assert (=> b!203966 (= lt!103204 lt!103207)))

(assert (=> b!203966 (= lt!103207 (+!440 lt!103203 lt!103202))))

(assert (=> b!203966 (= lt!103213 (+!440 lt!103210 lt!103202))))

(assert (=> b!203966 (= lt!103202 (tuple2!3889 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203967 () Bool)

(declare-fun e!133498 () Bool)

(assert (=> b!203967 (= e!133498 (and e!133496 mapRes!8633))))

(declare-fun condMapEmpty!8633 () Bool)

(declare-fun mapDefault!8633 () ValueCell!2178)

(assert (=> b!203967 (= condMapEmpty!8633 (= (arr!4403 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2178)) mapDefault!8633)))))

(declare-fun b!203968 () Bool)

(declare-fun res!98173 () Bool)

(assert (=> b!203968 (=> (not res!98173) (not e!133493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9304 (_ BitVec 32)) Bool)

(assert (=> b!203968 (= res!98173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203969 () Bool)

(assert (=> b!203969 (= e!133492 tp_is_empty!5043)))

(declare-fun b!203970 () Bool)

(declare-fun res!98172 () Bool)

(assert (=> b!203970 (=> (not res!98172) (not e!133493))))

(assert (=> b!203970 (= res!98172 (and (= (size!4728 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4727 _keys!825) (size!4728 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!98179 () Bool)

(assert (=> start!20540 (=> (not res!98179) (not e!133493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20540 (= res!98179 (validMask!0 mask!1149))))

(assert (=> start!20540 e!133493))

(declare-fun array_inv!2899 (array!9306) Bool)

(assert (=> start!20540 (and (array_inv!2899 _values!649) e!133498)))

(assert (=> start!20540 true))

(assert (=> start!20540 tp_is_empty!5043))

(declare-fun array_inv!2900 (array!9304) Bool)

(assert (=> start!20540 (array_inv!2900 _keys!825)))

(assert (=> start!20540 tp!18592))

(assert (= (and start!20540 res!98179) b!203970))

(assert (= (and b!203970 res!98172) b!203968))

(assert (= (and b!203968 res!98173) b!203960))

(assert (= (and b!203960 res!98177) b!203964))

(assert (= (and b!203964 res!98174) b!203965))

(assert (= (and b!203965 res!98175) b!203963))

(assert (= (and b!203963 res!98176) b!203961))

(assert (= (and b!203961 (not res!98178)) b!203966))

(assert (= (and b!203966 (not res!98171)) b!203962))

(assert (= (and b!203967 condMapEmpty!8633) mapIsEmpty!8633))

(assert (= (and b!203967 (not condMapEmpty!8633)) mapNonEmpty!8633))

(get-info :version)

(assert (= (and mapNonEmpty!8633 ((_ is ValueCellFull!2178) mapValue!8633)) b!203969))

(assert (= (and b!203967 ((_ is ValueCellFull!2178) mapDefault!8633)) b!203959))

(assert (= start!20540 b!203967))

(declare-fun m!231469 () Bool)

(assert (=> b!203961 m!231469))

(declare-fun m!231471 () Bool)

(assert (=> b!203961 m!231471))

(declare-fun m!231473 () Bool)

(assert (=> b!203961 m!231473))

(declare-fun m!231475 () Bool)

(assert (=> b!203961 m!231475))

(declare-fun m!231477 () Bool)

(assert (=> b!203961 m!231477))

(declare-fun m!231479 () Bool)

(assert (=> b!203961 m!231479))

(declare-fun m!231481 () Bool)

(assert (=> b!203961 m!231481))

(declare-fun m!231483 () Bool)

(assert (=> b!203968 m!231483))

(declare-fun m!231485 () Bool)

(assert (=> start!20540 m!231485))

(declare-fun m!231487 () Bool)

(assert (=> start!20540 m!231487))

(declare-fun m!231489 () Bool)

(assert (=> start!20540 m!231489))

(declare-fun m!231491 () Bool)

(assert (=> mapNonEmpty!8633 m!231491))

(declare-fun m!231493 () Bool)

(assert (=> b!203966 m!231493))

(declare-fun m!231495 () Bool)

(assert (=> b!203966 m!231495))

(declare-fun m!231497 () Bool)

(assert (=> b!203966 m!231497))

(declare-fun m!231499 () Bool)

(assert (=> b!203963 m!231499))

(declare-fun m!231501 () Bool)

(assert (=> b!203965 m!231501))

(declare-fun m!231503 () Bool)

(assert (=> b!203962 m!231503))

(declare-fun m!231505 () Bool)

(assert (=> b!203962 m!231505))

(declare-fun m!231507 () Bool)

(assert (=> b!203960 m!231507))

(check-sat (not b_next!5187) (not mapNonEmpty!8633) (not b!203961) (not b!203965) (not b!203962) (not b!203960) b_and!11951 (not start!20540) (not b!203966) tp_is_empty!5043 (not b!203968))
(check-sat b_and!11951 (not b_next!5187))
