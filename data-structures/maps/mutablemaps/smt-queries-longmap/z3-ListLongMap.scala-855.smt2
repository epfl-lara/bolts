; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20240 () Bool)

(assert start!20240)

(declare-fun b_free!4887 () Bool)

(declare-fun b_next!4887 () Bool)

(assert (=> start!20240 (= b_free!4887 (not b_next!4887))))

(declare-fun tp!17692 () Bool)

(declare-fun b_and!11651 () Bool)

(assert (=> start!20240 (= tp!17692 b_and!11651)))

(declare-fun b!198810 () Bool)

(declare-fun e!130615 () Bool)

(declare-fun e!130612 () Bool)

(declare-fun mapRes!8183 () Bool)

(assert (=> b!198810 (= e!130615 (and e!130612 mapRes!8183))))

(declare-fun condMapEmpty!8183 () Bool)

(declare-datatypes ((V!5971 0))(
  ( (V!5972 (val!2416 Int)) )
))
(declare-datatypes ((ValueCell!2028 0))(
  ( (ValueCellFull!2028 (v!4382 V!5971)) (EmptyCell!2028) )
))
(declare-datatypes ((array!8726 0))(
  ( (array!8727 (arr!4113 (Array (_ BitVec 32) ValueCell!2028)) (size!4438 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8726)

(declare-fun mapDefault!8183 () ValueCell!2028)

(assert (=> b!198810 (= condMapEmpty!8183 (= (arr!4113 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2028)) mapDefault!8183)))))

(declare-fun b!198811 () Bool)

(declare-fun res!94372 () Bool)

(declare-fun e!130611 () Bool)

(assert (=> b!198811 (=> (not res!94372) (not e!130611))))

(declare-datatypes ((array!8728 0))(
  ( (array!8729 (arr!4114 (Array (_ BitVec 32) (_ BitVec 64))) (size!4439 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8728)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!198811 (= res!94372 (and (= (size!4438 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4439 _keys!825) (size!4438 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198812 () Bool)

(declare-fun tp_is_empty!4743 () Bool)

(assert (=> b!198812 (= e!130612 tp_is_empty!4743)))

(declare-fun b!198814 () Bool)

(declare-fun res!94374 () Bool)

(assert (=> b!198814 (=> (not res!94374) (not e!130611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8728 (_ BitVec 32)) Bool)

(assert (=> b!198814 (= res!94374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8183 () Bool)

(declare-fun tp!17693 () Bool)

(declare-fun e!130614 () Bool)

(assert (=> mapNonEmpty!8183 (= mapRes!8183 (and tp!17693 e!130614))))

(declare-fun mapValue!8183 () ValueCell!2028)

(declare-fun mapRest!8183 () (Array (_ BitVec 32) ValueCell!2028))

(declare-fun mapKey!8183 () (_ BitVec 32))

(assert (=> mapNonEmpty!8183 (= (arr!4113 _values!649) (store mapRest!8183 mapKey!8183 mapValue!8183))))

(declare-fun b!198815 () Bool)

(assert (=> b!198815 (= e!130614 tp_is_empty!4743)))

(declare-fun b!198816 () Bool)

(declare-fun res!94377 () Bool)

(assert (=> b!198816 (=> (not res!94377) (not e!130611))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198816 (= res!94377 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4439 _keys!825))))))

(declare-fun b!198817 () Bool)

(declare-fun res!94375 () Bool)

(assert (=> b!198817 (=> (not res!94375) (not e!130611))))

(declare-datatypes ((List!2595 0))(
  ( (Nil!2592) (Cons!2591 (h!3233 (_ BitVec 64)) (t!7534 List!2595)) )
))
(declare-fun arrayNoDuplicates!0 (array!8728 (_ BitVec 32) List!2595) Bool)

(assert (=> b!198817 (= res!94375 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2592))))

(declare-fun res!94376 () Bool)

(assert (=> start!20240 (=> (not res!94376) (not e!130611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20240 (= res!94376 (validMask!0 mask!1149))))

(assert (=> start!20240 e!130611))

(declare-fun array_inv!2685 (array!8726) Bool)

(assert (=> start!20240 (and (array_inv!2685 _values!649) e!130615)))

(assert (=> start!20240 true))

(assert (=> start!20240 tp_is_empty!4743))

(declare-fun array_inv!2686 (array!8728) Bool)

(assert (=> start!20240 (array_inv!2686 _keys!825)))

(assert (=> start!20240 tp!17692))

(declare-fun b!198813 () Bool)

(declare-fun res!94373 () Bool)

(assert (=> b!198813 (=> (not res!94373) (not e!130611))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!198813 (= res!94373 (= (select (arr!4114 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8183 () Bool)

(assert (=> mapIsEmpty!8183 mapRes!8183))

(declare-fun b!198818 () Bool)

(declare-fun res!94378 () Bool)

(assert (=> b!198818 (=> (not res!94378) (not e!130611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198818 (= res!94378 (validKeyInArray!0 k0!843))))

(declare-fun b!198819 () Bool)

(assert (=> b!198819 (= e!130611 (not true))))

(declare-datatypes ((tuple2!3656 0))(
  ( (tuple2!3657 (_1!1838 (_ BitVec 64)) (_2!1838 V!5971)) )
))
(declare-datatypes ((List!2596 0))(
  ( (Nil!2593) (Cons!2592 (h!3234 tuple2!3656) (t!7535 List!2596)) )
))
(declare-datatypes ((ListLongMap!2583 0))(
  ( (ListLongMap!2584 (toList!1307 List!2596)) )
))
(declare-fun lt!98086 () ListLongMap!2583)

(declare-fun lt!98089 () ListLongMap!2583)

(assert (=> b!198819 (and (= lt!98086 lt!98089) (= lt!98089 lt!98086))))

(declare-fun lt!98087 () ListLongMap!2583)

(declare-fun v!520 () V!5971)

(declare-fun +!324 (ListLongMap!2583 tuple2!3656) ListLongMap!2583)

(assert (=> b!198819 (= lt!98089 (+!324 lt!98087 (tuple2!3657 k0!843 v!520)))))

(declare-datatypes ((Unit!5957 0))(
  ( (Unit!5958) )
))
(declare-fun lt!98088 () Unit!5957)

(declare-fun zeroValue!615 () V!5971)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5971)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!6 (array!8728 array!8726 (_ BitVec 32) (_ BitVec 32) V!5971 V!5971 (_ BitVec 32) (_ BitVec 64) V!5971 (_ BitVec 32) Int) Unit!5957)

(assert (=> b!198819 (= lt!98088 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!6 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!264 (array!8728 array!8726 (_ BitVec 32) (_ BitVec 32) V!5971 V!5971 (_ BitVec 32) Int) ListLongMap!2583)

(assert (=> b!198819 (= lt!98086 (getCurrentListMapNoExtraKeys!264 _keys!825 (array!8727 (store (arr!4113 _values!649) i!601 (ValueCellFull!2028 v!520)) (size!4438 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!198819 (= lt!98087 (getCurrentListMapNoExtraKeys!264 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20240 res!94376) b!198811))

(assert (= (and b!198811 res!94372) b!198814))

(assert (= (and b!198814 res!94374) b!198817))

(assert (= (and b!198817 res!94375) b!198816))

(assert (= (and b!198816 res!94377) b!198818))

(assert (= (and b!198818 res!94378) b!198813))

(assert (= (and b!198813 res!94373) b!198819))

(assert (= (and b!198810 condMapEmpty!8183) mapIsEmpty!8183))

(assert (= (and b!198810 (not condMapEmpty!8183)) mapNonEmpty!8183))

(get-info :version)

(assert (= (and mapNonEmpty!8183 ((_ is ValueCellFull!2028) mapValue!8183)) b!198815))

(assert (= (and b!198810 ((_ is ValueCellFull!2028) mapDefault!8183)) b!198812))

(assert (= start!20240 b!198810))

(declare-fun m!225371 () Bool)

(assert (=> b!198817 m!225371))

(declare-fun m!225373 () Bool)

(assert (=> b!198818 m!225373))

(declare-fun m!225375 () Bool)

(assert (=> mapNonEmpty!8183 m!225375))

(declare-fun m!225377 () Bool)

(assert (=> b!198814 m!225377))

(declare-fun m!225379 () Bool)

(assert (=> start!20240 m!225379))

(declare-fun m!225381 () Bool)

(assert (=> start!20240 m!225381))

(declare-fun m!225383 () Bool)

(assert (=> start!20240 m!225383))

(declare-fun m!225385 () Bool)

(assert (=> b!198813 m!225385))

(declare-fun m!225387 () Bool)

(assert (=> b!198819 m!225387))

(declare-fun m!225389 () Bool)

(assert (=> b!198819 m!225389))

(declare-fun m!225391 () Bool)

(assert (=> b!198819 m!225391))

(declare-fun m!225393 () Bool)

(assert (=> b!198819 m!225393))

(declare-fun m!225395 () Bool)

(assert (=> b!198819 m!225395))

(check-sat (not b!198817) b_and!11651 (not mapNonEmpty!8183) (not start!20240) (not b!198814) (not b_next!4887) (not b!198818) (not b!198819) tp_is_empty!4743)
(check-sat b_and!11651 (not b_next!4887))
