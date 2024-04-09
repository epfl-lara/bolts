; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20276 () Bool)

(assert start!20276)

(declare-fun b_free!4923 () Bool)

(declare-fun b_next!4923 () Bool)

(assert (=> start!20276 (= b_free!4923 (not b_next!4923))))

(declare-fun tp!17801 () Bool)

(declare-fun b_and!11687 () Bool)

(assert (=> start!20276 (= tp!17801 b_and!11687)))

(declare-fun b!199350 () Bool)

(declare-fun res!94755 () Bool)

(declare-fun e!130881 () Bool)

(assert (=> b!199350 (=> (not res!94755) (not e!130881))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199350 (= res!94755 (validKeyInArray!0 k0!843))))

(declare-fun b!199351 () Bool)

(declare-fun res!94750 () Bool)

(assert (=> b!199351 (=> (not res!94750) (not e!130881))))

(declare-datatypes ((array!8798 0))(
  ( (array!8799 (arr!4149 (Array (_ BitVec 32) (_ BitVec 64))) (size!4474 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8798)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6019 0))(
  ( (V!6020 (val!2434 Int)) )
))
(declare-datatypes ((ValueCell!2046 0))(
  ( (ValueCellFull!2046 (v!4400 V!6019)) (EmptyCell!2046) )
))
(declare-datatypes ((array!8800 0))(
  ( (array!8801 (arr!4150 (Array (_ BitVec 32) ValueCell!2046)) (size!4475 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8800)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!199351 (= res!94750 (and (= (size!4475 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4474 _keys!825) (size!4475 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!94751 () Bool)

(assert (=> start!20276 (=> (not res!94751) (not e!130881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20276 (= res!94751 (validMask!0 mask!1149))))

(assert (=> start!20276 e!130881))

(declare-fun e!130885 () Bool)

(declare-fun array_inv!2713 (array!8800) Bool)

(assert (=> start!20276 (and (array_inv!2713 _values!649) e!130885)))

(assert (=> start!20276 true))

(declare-fun tp_is_empty!4779 () Bool)

(assert (=> start!20276 tp_is_empty!4779))

(declare-fun array_inv!2714 (array!8798) Bool)

(assert (=> start!20276 (array_inv!2714 _keys!825)))

(assert (=> start!20276 tp!17801))

(declare-fun b!199352 () Bool)

(assert (=> b!199352 (= e!130881 (not true))))

(declare-fun lt!98312 () array!8800)

(declare-datatypes ((tuple2!3678 0))(
  ( (tuple2!3679 (_1!1849 (_ BitVec 64)) (_2!1849 V!6019)) )
))
(declare-datatypes ((List!2620 0))(
  ( (Nil!2617) (Cons!2616 (h!3258 tuple2!3678) (t!7559 List!2620)) )
))
(declare-datatypes ((ListLongMap!2605 0))(
  ( (ListLongMap!2606 (toList!1318 List!2620)) )
))
(declare-fun lt!98316 () ListLongMap!2605)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6019)

(declare-fun zeroValue!615 () V!6019)

(declare-fun getCurrentListMap!904 (array!8798 array!8800 (_ BitVec 32) (_ BitVec 32) V!6019 V!6019 (_ BitVec 32) Int) ListLongMap!2605)

(assert (=> b!199352 (= lt!98316 (getCurrentListMap!904 _keys!825 lt!98312 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98314 () ListLongMap!2605)

(declare-fun lt!98313 () ListLongMap!2605)

(assert (=> b!199352 (and (= lt!98314 lt!98313) (= lt!98313 lt!98314))))

(declare-fun lt!98315 () ListLongMap!2605)

(declare-fun v!520 () V!6019)

(declare-fun +!335 (ListLongMap!2605 tuple2!3678) ListLongMap!2605)

(assert (=> b!199352 (= lt!98313 (+!335 lt!98315 (tuple2!3679 k0!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!5979 0))(
  ( (Unit!5980) )
))
(declare-fun lt!98317 () Unit!5979)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!17 (array!8798 array!8800 (_ BitVec 32) (_ BitVec 32) V!6019 V!6019 (_ BitVec 32) (_ BitVec 64) V!6019 (_ BitVec 32) Int) Unit!5979)

(assert (=> b!199352 (= lt!98317 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!17 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!275 (array!8798 array!8800 (_ BitVec 32) (_ BitVec 32) V!6019 V!6019 (_ BitVec 32) Int) ListLongMap!2605)

(assert (=> b!199352 (= lt!98314 (getCurrentListMapNoExtraKeys!275 _keys!825 lt!98312 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199352 (= lt!98312 (array!8801 (store (arr!4150 _values!649) i!601 (ValueCellFull!2046 v!520)) (size!4475 _values!649)))))

(assert (=> b!199352 (= lt!98315 (getCurrentListMapNoExtraKeys!275 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!8237 () Bool)

(declare-fun mapRes!8237 () Bool)

(declare-fun tp!17800 () Bool)

(declare-fun e!130884 () Bool)

(assert (=> mapNonEmpty!8237 (= mapRes!8237 (and tp!17800 e!130884))))

(declare-fun mapValue!8237 () ValueCell!2046)

(declare-fun mapKey!8237 () (_ BitVec 32))

(declare-fun mapRest!8237 () (Array (_ BitVec 32) ValueCell!2046))

(assert (=> mapNonEmpty!8237 (= (arr!4150 _values!649) (store mapRest!8237 mapKey!8237 mapValue!8237))))

(declare-fun b!199353 () Bool)

(declare-fun e!130882 () Bool)

(assert (=> b!199353 (= e!130882 tp_is_empty!4779)))

(declare-fun b!199354 () Bool)

(declare-fun res!94756 () Bool)

(assert (=> b!199354 (=> (not res!94756) (not e!130881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8798 (_ BitVec 32)) Bool)

(assert (=> b!199354 (= res!94756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199355 () Bool)

(assert (=> b!199355 (= e!130884 tp_is_empty!4779)))

(declare-fun mapIsEmpty!8237 () Bool)

(assert (=> mapIsEmpty!8237 mapRes!8237))

(declare-fun b!199356 () Bool)

(declare-fun res!94753 () Bool)

(assert (=> b!199356 (=> (not res!94753) (not e!130881))))

(assert (=> b!199356 (= res!94753 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4474 _keys!825))))))

(declare-fun b!199357 () Bool)

(assert (=> b!199357 (= e!130885 (and e!130882 mapRes!8237))))

(declare-fun condMapEmpty!8237 () Bool)

(declare-fun mapDefault!8237 () ValueCell!2046)

(assert (=> b!199357 (= condMapEmpty!8237 (= (arr!4150 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2046)) mapDefault!8237)))))

(declare-fun b!199358 () Bool)

(declare-fun res!94752 () Bool)

(assert (=> b!199358 (=> (not res!94752) (not e!130881))))

(assert (=> b!199358 (= res!94752 (= (select (arr!4149 _keys!825) i!601) k0!843))))

(declare-fun b!199359 () Bool)

(declare-fun res!94754 () Bool)

(assert (=> b!199359 (=> (not res!94754) (not e!130881))))

(declare-datatypes ((List!2621 0))(
  ( (Nil!2618) (Cons!2617 (h!3259 (_ BitVec 64)) (t!7560 List!2621)) )
))
(declare-fun arrayNoDuplicates!0 (array!8798 (_ BitVec 32) List!2621) Bool)

(assert (=> b!199359 (= res!94754 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2618))))

(assert (= (and start!20276 res!94751) b!199351))

(assert (= (and b!199351 res!94750) b!199354))

(assert (= (and b!199354 res!94756) b!199359))

(assert (= (and b!199359 res!94754) b!199356))

(assert (= (and b!199356 res!94753) b!199350))

(assert (= (and b!199350 res!94755) b!199358))

(assert (= (and b!199358 res!94752) b!199352))

(assert (= (and b!199357 condMapEmpty!8237) mapIsEmpty!8237))

(assert (= (and b!199357 (not condMapEmpty!8237)) mapNonEmpty!8237))

(get-info :version)

(assert (= (and mapNonEmpty!8237 ((_ is ValueCellFull!2046) mapValue!8237)) b!199355))

(assert (= (and b!199357 ((_ is ValueCellFull!2046) mapDefault!8237)) b!199353))

(assert (= start!20276 b!199357))

(declare-fun m!225841 () Bool)

(assert (=> start!20276 m!225841))

(declare-fun m!225843 () Bool)

(assert (=> start!20276 m!225843))

(declare-fun m!225845 () Bool)

(assert (=> start!20276 m!225845))

(declare-fun m!225847 () Bool)

(assert (=> b!199359 m!225847))

(declare-fun m!225849 () Bool)

(assert (=> b!199352 m!225849))

(declare-fun m!225851 () Bool)

(assert (=> b!199352 m!225851))

(declare-fun m!225853 () Bool)

(assert (=> b!199352 m!225853))

(declare-fun m!225855 () Bool)

(assert (=> b!199352 m!225855))

(declare-fun m!225857 () Bool)

(assert (=> b!199352 m!225857))

(declare-fun m!225859 () Bool)

(assert (=> b!199352 m!225859))

(declare-fun m!225861 () Bool)

(assert (=> b!199358 m!225861))

(declare-fun m!225863 () Bool)

(assert (=> mapNonEmpty!8237 m!225863))

(declare-fun m!225865 () Bool)

(assert (=> b!199350 m!225865))

(declare-fun m!225867 () Bool)

(assert (=> b!199354 m!225867))

(check-sat (not start!20276) tp_is_empty!4779 (not b!199352) (not mapNonEmpty!8237) (not b!199359) (not b_next!4923) b_and!11687 (not b!199350) (not b!199354))
(check-sat b_and!11687 (not b_next!4923))
