; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20264 () Bool)

(assert start!20264)

(declare-fun b_free!4911 () Bool)

(declare-fun b_next!4911 () Bool)

(assert (=> start!20264 (= b_free!4911 (not b_next!4911))))

(declare-fun tp!17764 () Bool)

(declare-fun b_and!11675 () Bool)

(assert (=> start!20264 (= tp!17764 b_and!11675)))

(declare-fun b!199170 () Bool)

(declare-fun res!94624 () Bool)

(declare-fun e!130793 () Bool)

(assert (=> b!199170 (=> (not res!94624) (not e!130793))))

(declare-datatypes ((array!8774 0))(
  ( (array!8775 (arr!4137 (Array (_ BitVec 32) (_ BitVec 64))) (size!4462 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8774)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6003 0))(
  ( (V!6004 (val!2428 Int)) )
))
(declare-datatypes ((ValueCell!2040 0))(
  ( (ValueCellFull!2040 (v!4394 V!6003)) (EmptyCell!2040) )
))
(declare-datatypes ((array!8776 0))(
  ( (array!8777 (arr!4138 (Array (_ BitVec 32) ValueCell!2040)) (size!4463 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8776)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!199170 (= res!94624 (and (= (size!4463 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4462 _keys!825) (size!4463 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199171 () Bool)

(declare-fun res!94630 () Bool)

(assert (=> b!199171 (=> (not res!94630) (not e!130793))))

(declare-datatypes ((List!2612 0))(
  ( (Nil!2609) (Cons!2608 (h!3250 (_ BitVec 64)) (t!7551 List!2612)) )
))
(declare-fun arrayNoDuplicates!0 (array!8774 (_ BitVec 32) List!2612) Bool)

(assert (=> b!199171 (= res!94630 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2609))))

(declare-fun b!199172 () Bool)

(declare-fun e!130794 () Bool)

(declare-fun tp_is_empty!4767 () Bool)

(assert (=> b!199172 (= e!130794 tp_is_empty!4767)))

(declare-fun res!94626 () Bool)

(assert (=> start!20264 (=> (not res!94626) (not e!130793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20264 (= res!94626 (validMask!0 mask!1149))))

(assert (=> start!20264 e!130793))

(declare-fun e!130792 () Bool)

(declare-fun array_inv!2703 (array!8776) Bool)

(assert (=> start!20264 (and (array_inv!2703 _values!649) e!130792)))

(assert (=> start!20264 true))

(assert (=> start!20264 tp_is_empty!4767))

(declare-fun array_inv!2704 (array!8774) Bool)

(assert (=> start!20264 (array_inv!2704 _keys!825)))

(assert (=> start!20264 tp!17764))

(declare-fun mapNonEmpty!8219 () Bool)

(declare-fun mapRes!8219 () Bool)

(declare-fun tp!17765 () Bool)

(assert (=> mapNonEmpty!8219 (= mapRes!8219 (and tp!17765 e!130794))))

(declare-fun mapKey!8219 () (_ BitVec 32))

(declare-fun mapValue!8219 () ValueCell!2040)

(declare-fun mapRest!8219 () (Array (_ BitVec 32) ValueCell!2040))

(assert (=> mapNonEmpty!8219 (= (arr!4138 _values!649) (store mapRest!8219 mapKey!8219 mapValue!8219))))

(declare-fun b!199173 () Bool)

(declare-fun res!94628 () Bool)

(assert (=> b!199173 (=> (not res!94628) (not e!130793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8774 (_ BitVec 32)) Bool)

(assert (=> b!199173 (= res!94628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8219 () Bool)

(assert (=> mapIsEmpty!8219 mapRes!8219))

(declare-fun b!199174 () Bool)

(declare-fun res!94629 () Bool)

(assert (=> b!199174 (=> (not res!94629) (not e!130793))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199174 (= res!94629 (validKeyInArray!0 k0!843))))

(declare-fun b!199175 () Bool)

(declare-fun res!94627 () Bool)

(assert (=> b!199175 (=> (not res!94627) (not e!130793))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199175 (= res!94627 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4462 _keys!825))))))

(declare-fun b!199176 () Bool)

(declare-fun res!94625 () Bool)

(assert (=> b!199176 (=> (not res!94625) (not e!130793))))

(assert (=> b!199176 (= res!94625 (= (select (arr!4137 _keys!825) i!601) k0!843))))

(declare-fun b!199177 () Bool)

(declare-fun e!130791 () Bool)

(assert (=> b!199177 (= e!130791 tp_is_empty!4767)))

(declare-fun b!199178 () Bool)

(assert (=> b!199178 (= e!130793 (not true))))

(declare-datatypes ((tuple2!3672 0))(
  ( (tuple2!3673 (_1!1846 (_ BitVec 64)) (_2!1846 V!6003)) )
))
(declare-datatypes ((List!2613 0))(
  ( (Nil!2610) (Cons!2609 (h!3251 tuple2!3672) (t!7552 List!2613)) )
))
(declare-datatypes ((ListLongMap!2599 0))(
  ( (ListLongMap!2600 (toList!1315 List!2613)) )
))
(declare-fun lt!98231 () ListLongMap!2599)

(declare-fun lt!98233 () ListLongMap!2599)

(assert (=> b!199178 (and (= lt!98231 lt!98233) (= lt!98233 lt!98231))))

(declare-fun lt!98230 () ListLongMap!2599)

(declare-fun v!520 () V!6003)

(declare-fun +!332 (ListLongMap!2599 tuple2!3672) ListLongMap!2599)

(assert (=> b!199178 (= lt!98233 (+!332 lt!98230 (tuple2!3673 k0!843 v!520)))))

(declare-datatypes ((Unit!5973 0))(
  ( (Unit!5974) )
))
(declare-fun lt!98232 () Unit!5973)

(declare-fun zeroValue!615 () V!6003)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6003)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!14 (array!8774 array!8776 (_ BitVec 32) (_ BitVec 32) V!6003 V!6003 (_ BitVec 32) (_ BitVec 64) V!6003 (_ BitVec 32) Int) Unit!5973)

(assert (=> b!199178 (= lt!98232 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!14 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!272 (array!8774 array!8776 (_ BitVec 32) (_ BitVec 32) V!6003 V!6003 (_ BitVec 32) Int) ListLongMap!2599)

(assert (=> b!199178 (= lt!98231 (getCurrentListMapNoExtraKeys!272 _keys!825 (array!8777 (store (arr!4138 _values!649) i!601 (ValueCellFull!2040 v!520)) (size!4463 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199178 (= lt!98230 (getCurrentListMapNoExtraKeys!272 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199179 () Bool)

(assert (=> b!199179 (= e!130792 (and e!130791 mapRes!8219))))

(declare-fun condMapEmpty!8219 () Bool)

(declare-fun mapDefault!8219 () ValueCell!2040)

(assert (=> b!199179 (= condMapEmpty!8219 (= (arr!4138 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2040)) mapDefault!8219)))))

(assert (= (and start!20264 res!94626) b!199170))

(assert (= (and b!199170 res!94624) b!199173))

(assert (= (and b!199173 res!94628) b!199171))

(assert (= (and b!199171 res!94630) b!199175))

(assert (= (and b!199175 res!94627) b!199174))

(assert (= (and b!199174 res!94629) b!199176))

(assert (= (and b!199176 res!94625) b!199178))

(assert (= (and b!199179 condMapEmpty!8219) mapIsEmpty!8219))

(assert (= (and b!199179 (not condMapEmpty!8219)) mapNonEmpty!8219))

(get-info :version)

(assert (= (and mapNonEmpty!8219 ((_ is ValueCellFull!2040) mapValue!8219)) b!199172))

(assert (= (and b!199179 ((_ is ValueCellFull!2040) mapDefault!8219)) b!199177))

(assert (= start!20264 b!199179))

(declare-fun m!225683 () Bool)

(assert (=> b!199174 m!225683))

(declare-fun m!225685 () Bool)

(assert (=> start!20264 m!225685))

(declare-fun m!225687 () Bool)

(assert (=> start!20264 m!225687))

(declare-fun m!225689 () Bool)

(assert (=> start!20264 m!225689))

(declare-fun m!225691 () Bool)

(assert (=> b!199178 m!225691))

(declare-fun m!225693 () Bool)

(assert (=> b!199178 m!225693))

(declare-fun m!225695 () Bool)

(assert (=> b!199178 m!225695))

(declare-fun m!225697 () Bool)

(assert (=> b!199178 m!225697))

(declare-fun m!225699 () Bool)

(assert (=> b!199178 m!225699))

(declare-fun m!225701 () Bool)

(assert (=> b!199171 m!225701))

(declare-fun m!225703 () Bool)

(assert (=> b!199173 m!225703))

(declare-fun m!225705 () Bool)

(assert (=> mapNonEmpty!8219 m!225705))

(declare-fun m!225707 () Bool)

(assert (=> b!199176 m!225707))

(check-sat (not b!199173) (not mapNonEmpty!8219) (not b!199171) b_and!11675 (not b_next!4911) (not start!20264) (not b!199178) (not b!199174) tp_is_empty!4767)
(check-sat b_and!11675 (not b_next!4911))
