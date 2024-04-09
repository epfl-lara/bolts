; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20282 () Bool)

(assert start!20282)

(declare-fun b_free!4929 () Bool)

(declare-fun b_next!4929 () Bool)

(assert (=> start!20282 (= b_free!4929 (not b_next!4929))))

(declare-fun tp!17819 () Bool)

(declare-fun b_and!11693 () Bool)

(assert (=> start!20282 (= tp!17819 b_and!11693)))

(declare-fun b!199440 () Bool)

(declare-fun res!94813 () Bool)

(declare-fun e!130927 () Bool)

(assert (=> b!199440 (=> (not res!94813) (not e!130927))))

(declare-datatypes ((array!8810 0))(
  ( (array!8811 (arr!4155 (Array (_ BitVec 32) (_ BitVec 64))) (size!4480 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8810)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8810 (_ BitVec 32)) Bool)

(assert (=> b!199440 (= res!94813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199441 () Bool)

(assert (=> b!199441 (= e!130927 (not true))))

(declare-datatypes ((V!6027 0))(
  ( (V!6028 (val!2437 Int)) )
))
(declare-datatypes ((tuple2!3682 0))(
  ( (tuple2!3683 (_1!1851 (_ BitVec 64)) (_2!1851 V!6027)) )
))
(declare-datatypes ((List!2624 0))(
  ( (Nil!2621) (Cons!2620 (h!3262 tuple2!3682) (t!7563 List!2624)) )
))
(declare-datatypes ((ListLongMap!2609 0))(
  ( (ListLongMap!2610 (toList!1320 List!2624)) )
))
(declare-fun lt!98367 () ListLongMap!2609)

(declare-datatypes ((ValueCell!2049 0))(
  ( (ValueCellFull!2049 (v!4403 V!6027)) (EmptyCell!2049) )
))
(declare-datatypes ((array!8812 0))(
  ( (array!8813 (arr!4156 (Array (_ BitVec 32) ValueCell!2049)) (size!4481 (_ BitVec 32))) )
))
(declare-fun lt!98366 () array!8812)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6027)

(declare-fun zeroValue!615 () V!6027)

(declare-fun getCurrentListMap!906 (array!8810 array!8812 (_ BitVec 32) (_ BitVec 32) V!6027 V!6027 (_ BitVec 32) Int) ListLongMap!2609)

(assert (=> b!199441 (= lt!98367 (getCurrentListMap!906 _keys!825 lt!98366 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98371 () ListLongMap!2609)

(declare-fun lt!98368 () ListLongMap!2609)

(assert (=> b!199441 (and (= lt!98371 lt!98368) (= lt!98368 lt!98371))))

(declare-fun lt!98370 () ListLongMap!2609)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6027)

(declare-fun +!337 (ListLongMap!2609 tuple2!3682) ListLongMap!2609)

(assert (=> b!199441 (= lt!98368 (+!337 lt!98370 (tuple2!3683 k0!843 v!520)))))

(declare-fun _values!649 () array!8812)

(declare-datatypes ((Unit!5983 0))(
  ( (Unit!5984) )
))
(declare-fun lt!98369 () Unit!5983)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!19 (array!8810 array!8812 (_ BitVec 32) (_ BitVec 32) V!6027 V!6027 (_ BitVec 32) (_ BitVec 64) V!6027 (_ BitVec 32) Int) Unit!5983)

(assert (=> b!199441 (= lt!98369 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!19 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!277 (array!8810 array!8812 (_ BitVec 32) (_ BitVec 32) V!6027 V!6027 (_ BitVec 32) Int) ListLongMap!2609)

(assert (=> b!199441 (= lt!98371 (getCurrentListMapNoExtraKeys!277 _keys!825 lt!98366 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199441 (= lt!98366 (array!8813 (store (arr!4156 _values!649) i!601 (ValueCellFull!2049 v!520)) (size!4481 _values!649)))))

(assert (=> b!199441 (= lt!98370 (getCurrentListMapNoExtraKeys!277 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8246 () Bool)

(declare-fun mapRes!8246 () Bool)

(assert (=> mapIsEmpty!8246 mapRes!8246))

(declare-fun b!199442 () Bool)

(declare-fun res!94819 () Bool)

(assert (=> b!199442 (=> (not res!94819) (not e!130927))))

(assert (=> b!199442 (= res!94819 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4480 _keys!825))))))

(declare-fun res!94816 () Bool)

(assert (=> start!20282 (=> (not res!94816) (not e!130927))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20282 (= res!94816 (validMask!0 mask!1149))))

(assert (=> start!20282 e!130927))

(declare-fun e!130929 () Bool)

(declare-fun array_inv!2719 (array!8812) Bool)

(assert (=> start!20282 (and (array_inv!2719 _values!649) e!130929)))

(assert (=> start!20282 true))

(declare-fun tp_is_empty!4785 () Bool)

(assert (=> start!20282 tp_is_empty!4785))

(declare-fun array_inv!2720 (array!8810) Bool)

(assert (=> start!20282 (array_inv!2720 _keys!825)))

(assert (=> start!20282 tp!17819))

(declare-fun b!199443 () Bool)

(declare-fun e!130928 () Bool)

(assert (=> b!199443 (= e!130928 tp_is_empty!4785)))

(declare-fun b!199444 () Bool)

(declare-fun res!94817 () Bool)

(assert (=> b!199444 (=> (not res!94817) (not e!130927))))

(assert (=> b!199444 (= res!94817 (= (select (arr!4155 _keys!825) i!601) k0!843))))

(declare-fun b!199445 () Bool)

(declare-fun e!130926 () Bool)

(assert (=> b!199445 (= e!130926 tp_is_empty!4785)))

(declare-fun b!199446 () Bool)

(assert (=> b!199446 (= e!130929 (and e!130926 mapRes!8246))))

(declare-fun condMapEmpty!8246 () Bool)

(declare-fun mapDefault!8246 () ValueCell!2049)

(assert (=> b!199446 (= condMapEmpty!8246 (= (arr!4156 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2049)) mapDefault!8246)))))

(declare-fun b!199447 () Bool)

(declare-fun res!94814 () Bool)

(assert (=> b!199447 (=> (not res!94814) (not e!130927))))

(assert (=> b!199447 (= res!94814 (and (= (size!4481 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4480 _keys!825) (size!4481 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!8246 () Bool)

(declare-fun tp!17818 () Bool)

(assert (=> mapNonEmpty!8246 (= mapRes!8246 (and tp!17818 e!130928))))

(declare-fun mapKey!8246 () (_ BitVec 32))

(declare-fun mapRest!8246 () (Array (_ BitVec 32) ValueCell!2049))

(declare-fun mapValue!8246 () ValueCell!2049)

(assert (=> mapNonEmpty!8246 (= (arr!4156 _values!649) (store mapRest!8246 mapKey!8246 mapValue!8246))))

(declare-fun b!199448 () Bool)

(declare-fun res!94815 () Bool)

(assert (=> b!199448 (=> (not res!94815) (not e!130927))))

(declare-datatypes ((List!2625 0))(
  ( (Nil!2622) (Cons!2621 (h!3263 (_ BitVec 64)) (t!7564 List!2625)) )
))
(declare-fun arrayNoDuplicates!0 (array!8810 (_ BitVec 32) List!2625) Bool)

(assert (=> b!199448 (= res!94815 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2622))))

(declare-fun b!199449 () Bool)

(declare-fun res!94818 () Bool)

(assert (=> b!199449 (=> (not res!94818) (not e!130927))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199449 (= res!94818 (validKeyInArray!0 k0!843))))

(assert (= (and start!20282 res!94816) b!199447))

(assert (= (and b!199447 res!94814) b!199440))

(assert (= (and b!199440 res!94813) b!199448))

(assert (= (and b!199448 res!94815) b!199442))

(assert (= (and b!199442 res!94819) b!199449))

(assert (= (and b!199449 res!94818) b!199444))

(assert (= (and b!199444 res!94817) b!199441))

(assert (= (and b!199446 condMapEmpty!8246) mapIsEmpty!8246))

(assert (= (and b!199446 (not condMapEmpty!8246)) mapNonEmpty!8246))

(get-info :version)

(assert (= (and mapNonEmpty!8246 ((_ is ValueCellFull!2049) mapValue!8246)) b!199443))

(assert (= (and b!199446 ((_ is ValueCellFull!2049) mapDefault!8246)) b!199445))

(assert (= start!20282 b!199446))

(declare-fun m!225925 () Bool)

(assert (=> b!199440 m!225925))

(declare-fun m!225927 () Bool)

(assert (=> b!199444 m!225927))

(declare-fun m!225929 () Bool)

(assert (=> b!199448 m!225929))

(declare-fun m!225931 () Bool)

(assert (=> b!199449 m!225931))

(declare-fun m!225933 () Bool)

(assert (=> b!199441 m!225933))

(declare-fun m!225935 () Bool)

(assert (=> b!199441 m!225935))

(declare-fun m!225937 () Bool)

(assert (=> b!199441 m!225937))

(declare-fun m!225939 () Bool)

(assert (=> b!199441 m!225939))

(declare-fun m!225941 () Bool)

(assert (=> b!199441 m!225941))

(declare-fun m!225943 () Bool)

(assert (=> b!199441 m!225943))

(declare-fun m!225945 () Bool)

(assert (=> start!20282 m!225945))

(declare-fun m!225947 () Bool)

(assert (=> start!20282 m!225947))

(declare-fun m!225949 () Bool)

(assert (=> start!20282 m!225949))

(declare-fun m!225951 () Bool)

(assert (=> mapNonEmpty!8246 m!225951))

(check-sat (not b!199441) (not start!20282) tp_is_empty!4785 b_and!11693 (not b_next!4929) (not b!199448) (not mapNonEmpty!8246) (not b!199440) (not b!199449))
(check-sat b_and!11693 (not b_next!4929))
