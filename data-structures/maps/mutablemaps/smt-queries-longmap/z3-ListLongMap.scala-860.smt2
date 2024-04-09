; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20270 () Bool)

(assert start!20270)

(declare-fun b_free!4917 () Bool)

(declare-fun b_next!4917 () Bool)

(assert (=> start!20270 (= b_free!4917 (not b_next!4917))))

(declare-fun tp!17782 () Bool)

(declare-fun b_and!11681 () Bool)

(assert (=> start!20270 (= tp!17782 b_and!11681)))

(declare-fun b!199260 () Bool)

(declare-fun e!130836 () Bool)

(declare-fun e!130837 () Bool)

(declare-fun mapRes!8228 () Bool)

(assert (=> b!199260 (= e!130836 (and e!130837 mapRes!8228))))

(declare-fun condMapEmpty!8228 () Bool)

(declare-datatypes ((V!6011 0))(
  ( (V!6012 (val!2431 Int)) )
))
(declare-datatypes ((ValueCell!2043 0))(
  ( (ValueCellFull!2043 (v!4397 V!6011)) (EmptyCell!2043) )
))
(declare-datatypes ((array!8786 0))(
  ( (array!8787 (arr!4143 (Array (_ BitVec 32) ValueCell!2043)) (size!4468 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8786)

(declare-fun mapDefault!8228 () ValueCell!2043)

(assert (=> b!199260 (= condMapEmpty!8228 (= (arr!4143 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2043)) mapDefault!8228)))))

(declare-fun b!199261 () Bool)

(declare-fun res!94691 () Bool)

(declare-fun e!130840 () Bool)

(assert (=> b!199261 (=> (not res!94691) (not e!130840))))

(declare-datatypes ((array!8788 0))(
  ( (array!8789 (arr!4144 (Array (_ BitVec 32) (_ BitVec 64))) (size!4469 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8788)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8788 (_ BitVec 32)) Bool)

(assert (=> b!199261 (= res!94691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!94692 () Bool)

(assert (=> start!20270 (=> (not res!94692) (not e!130840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20270 (= res!94692 (validMask!0 mask!1149))))

(assert (=> start!20270 e!130840))

(declare-fun array_inv!2709 (array!8786) Bool)

(assert (=> start!20270 (and (array_inv!2709 _values!649) e!130836)))

(assert (=> start!20270 true))

(declare-fun tp_is_empty!4773 () Bool)

(assert (=> start!20270 tp_is_empty!4773))

(declare-fun array_inv!2710 (array!8788) Bool)

(assert (=> start!20270 (array_inv!2710 _keys!825)))

(assert (=> start!20270 tp!17782))

(declare-fun b!199262 () Bool)

(declare-fun res!94688 () Bool)

(assert (=> b!199262 (=> (not res!94688) (not e!130840))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199262 (= res!94688 (validKeyInArray!0 k0!843))))

(declare-fun b!199263 () Bool)

(assert (=> b!199263 (= e!130840 (not (bvsle #b00000000000000000000000000000000 (size!4469 _keys!825))))))

(declare-datatypes ((tuple2!3676 0))(
  ( (tuple2!3677 (_1!1848 (_ BitVec 64)) (_2!1848 V!6011)) )
))
(declare-datatypes ((List!2616 0))(
  ( (Nil!2613) (Cons!2612 (h!3254 tuple2!3676) (t!7555 List!2616)) )
))
(declare-datatypes ((ListLongMap!2603 0))(
  ( (ListLongMap!2604 (toList!1317 List!2616)) )
))
(declare-fun lt!98269 () ListLongMap!2603)

(declare-fun lt!98268 () ListLongMap!2603)

(assert (=> b!199263 (and (= lt!98269 lt!98268) (= lt!98268 lt!98269))))

(declare-fun lt!98267 () ListLongMap!2603)

(declare-fun v!520 () V!6011)

(declare-fun +!334 (ListLongMap!2603 tuple2!3676) ListLongMap!2603)

(assert (=> b!199263 (= lt!98268 (+!334 lt!98267 (tuple2!3677 k0!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6011)

(declare-fun defaultEntry!657 () Int)

(declare-datatypes ((Unit!5977 0))(
  ( (Unit!5978) )
))
(declare-fun lt!98266 () Unit!5977)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6011)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!16 (array!8788 array!8786 (_ BitVec 32) (_ BitVec 32) V!6011 V!6011 (_ BitVec 32) (_ BitVec 64) V!6011 (_ BitVec 32) Int) Unit!5977)

(assert (=> b!199263 (= lt!98266 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!16 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!274 (array!8788 array!8786 (_ BitVec 32) (_ BitVec 32) V!6011 V!6011 (_ BitVec 32) Int) ListLongMap!2603)

(assert (=> b!199263 (= lt!98269 (getCurrentListMapNoExtraKeys!274 _keys!825 (array!8787 (store (arr!4143 _values!649) i!601 (ValueCellFull!2043 v!520)) (size!4468 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199263 (= lt!98267 (getCurrentListMapNoExtraKeys!274 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199264 () Bool)

(declare-fun res!94687 () Bool)

(assert (=> b!199264 (=> (not res!94687) (not e!130840))))

(declare-datatypes ((List!2617 0))(
  ( (Nil!2614) (Cons!2613 (h!3255 (_ BitVec 64)) (t!7556 List!2617)) )
))
(declare-fun arrayNoDuplicates!0 (array!8788 (_ BitVec 32) List!2617) Bool)

(assert (=> b!199264 (= res!94687 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2614))))

(declare-fun b!199265 () Bool)

(declare-fun res!94690 () Bool)

(assert (=> b!199265 (=> (not res!94690) (not e!130840))))

(assert (=> b!199265 (= res!94690 (and (= (size!4468 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4469 _keys!825) (size!4468 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199266 () Bool)

(declare-fun e!130838 () Bool)

(assert (=> b!199266 (= e!130838 tp_is_empty!4773)))

(declare-fun mapNonEmpty!8228 () Bool)

(declare-fun tp!17783 () Bool)

(assert (=> mapNonEmpty!8228 (= mapRes!8228 (and tp!17783 e!130838))))

(declare-fun mapKey!8228 () (_ BitVec 32))

(declare-fun mapRest!8228 () (Array (_ BitVec 32) ValueCell!2043))

(declare-fun mapValue!8228 () ValueCell!2043)

(assert (=> mapNonEmpty!8228 (= (arr!4143 _values!649) (store mapRest!8228 mapKey!8228 mapValue!8228))))

(declare-fun b!199267 () Bool)

(assert (=> b!199267 (= e!130837 tp_is_empty!4773)))

(declare-fun b!199268 () Bool)

(declare-fun res!94693 () Bool)

(assert (=> b!199268 (=> (not res!94693) (not e!130840))))

(assert (=> b!199268 (= res!94693 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4469 _keys!825))))))

(declare-fun mapIsEmpty!8228 () Bool)

(assert (=> mapIsEmpty!8228 mapRes!8228))

(declare-fun b!199269 () Bool)

(declare-fun res!94689 () Bool)

(assert (=> b!199269 (=> (not res!94689) (not e!130840))))

(assert (=> b!199269 (= res!94689 (= (select (arr!4144 _keys!825) i!601) k0!843))))

(assert (= (and start!20270 res!94692) b!199265))

(assert (= (and b!199265 res!94690) b!199261))

(assert (= (and b!199261 res!94691) b!199264))

(assert (= (and b!199264 res!94687) b!199268))

(assert (= (and b!199268 res!94693) b!199262))

(assert (= (and b!199262 res!94688) b!199269))

(assert (= (and b!199269 res!94689) b!199263))

(assert (= (and b!199260 condMapEmpty!8228) mapIsEmpty!8228))

(assert (= (and b!199260 (not condMapEmpty!8228)) mapNonEmpty!8228))

(get-info :version)

(assert (= (and mapNonEmpty!8228 ((_ is ValueCellFull!2043) mapValue!8228)) b!199266))

(assert (= (and b!199260 ((_ is ValueCellFull!2043) mapDefault!8228)) b!199267))

(assert (= start!20270 b!199260))

(declare-fun m!225761 () Bool)

(assert (=> b!199269 m!225761))

(declare-fun m!225763 () Bool)

(assert (=> mapNonEmpty!8228 m!225763))

(declare-fun m!225765 () Bool)

(assert (=> start!20270 m!225765))

(declare-fun m!225767 () Bool)

(assert (=> start!20270 m!225767))

(declare-fun m!225769 () Bool)

(assert (=> start!20270 m!225769))

(declare-fun m!225771 () Bool)

(assert (=> b!199261 m!225771))

(declare-fun m!225773 () Bool)

(assert (=> b!199262 m!225773))

(declare-fun m!225775 () Bool)

(assert (=> b!199263 m!225775))

(declare-fun m!225777 () Bool)

(assert (=> b!199263 m!225777))

(declare-fun m!225779 () Bool)

(assert (=> b!199263 m!225779))

(declare-fun m!225781 () Bool)

(assert (=> b!199263 m!225781))

(declare-fun m!225783 () Bool)

(assert (=> b!199263 m!225783))

(declare-fun m!225785 () Bool)

(assert (=> b!199264 m!225785))

(check-sat (not mapNonEmpty!8228) (not b!199261) (not start!20270) b_and!11681 (not b!199263) (not b!199264) (not b_next!4917) (not b!199262) tp_is_empty!4773)
(check-sat b_and!11681 (not b_next!4917))
