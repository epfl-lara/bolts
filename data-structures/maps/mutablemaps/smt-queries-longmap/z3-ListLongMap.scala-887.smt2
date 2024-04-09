; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20432 () Bool)

(assert start!20432)

(declare-fun b_free!5079 () Bool)

(declare-fun b_next!5079 () Bool)

(assert (=> start!20432 (= b_free!5079 (not b_next!5079))))

(declare-fun tp!18269 () Bool)

(declare-fun b_and!11843 () Bool)

(assert (=> start!20432 (= tp!18269 b_and!11843)))

(declare-fun b!202006 () Bool)

(declare-fun e!132358 () Bool)

(declare-fun tp_is_empty!4935 () Bool)

(assert (=> b!202006 (= e!132358 tp_is_empty!4935)))

(declare-fun b!202007 () Bool)

(declare-fun res!96706 () Bool)

(declare-fun e!132361 () Bool)

(assert (=> b!202007 (=> (not res!96706) (not e!132361))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202007 (= res!96706 (validKeyInArray!0 k0!843))))

(declare-fun b!202008 () Bool)

(declare-fun res!96707 () Bool)

(assert (=> b!202008 (=> (not res!96707) (not e!132361))))

(declare-datatypes ((array!9096 0))(
  ( (array!9097 (arr!4298 (Array (_ BitVec 32) (_ BitVec 64))) (size!4623 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9096)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9096 (_ BitVec 32)) Bool)

(assert (=> b!202008 (= res!96707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202009 () Bool)

(declare-fun e!132362 () Bool)

(assert (=> b!202009 (= e!132362 true)))

(declare-datatypes ((V!6227 0))(
  ( (V!6228 (val!2512 Int)) )
))
(declare-datatypes ((tuple2!3802 0))(
  ( (tuple2!3803 (_1!1911 (_ BitVec 64)) (_2!1911 V!6227)) )
))
(declare-datatypes ((List!2736 0))(
  ( (Nil!2733) (Cons!2732 (h!3374 tuple2!3802) (t!7675 List!2736)) )
))
(declare-datatypes ((ListLongMap!2729 0))(
  ( (ListLongMap!2730 (toList!1380 List!2736)) )
))
(declare-fun lt!101213 () ListLongMap!2729)

(declare-fun lt!101218 () tuple2!3802)

(declare-fun lt!101221 () tuple2!3802)

(declare-fun lt!101214 () ListLongMap!2729)

(declare-fun +!397 (ListLongMap!2729 tuple2!3802) ListLongMap!2729)

(assert (=> b!202009 (= (+!397 lt!101213 lt!101221) (+!397 lt!101214 lt!101218))))

(declare-fun minValue!615 () V!6227)

(declare-fun lt!101208 () ListLongMap!2729)

(declare-fun v!520 () V!6227)

(declare-datatypes ((Unit!6101 0))(
  ( (Unit!6102) )
))
(declare-fun lt!101211 () Unit!6101)

(declare-fun addCommutativeForDiffKeys!118 (ListLongMap!2729 (_ BitVec 64) V!6227 (_ BitVec 64) V!6227) Unit!6101)

(assert (=> b!202009 (= lt!101211 (addCommutativeForDiffKeys!118 lt!101208 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!202010 () Bool)

(declare-fun e!132359 () Bool)

(assert (=> b!202010 (= e!132359 e!132362)))

(declare-fun res!96711 () Bool)

(assert (=> b!202010 (=> res!96711 e!132362)))

(assert (=> b!202010 (= res!96711 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!101206 () ListLongMap!2729)

(assert (=> b!202010 (= lt!101206 lt!101213)))

(assert (=> b!202010 (= lt!101213 (+!397 lt!101208 lt!101218))))

(declare-fun lt!101209 () Unit!6101)

(declare-fun zeroValue!615 () V!6227)

(declare-fun lt!101212 () ListLongMap!2729)

(assert (=> b!202010 (= lt!101209 (addCommutativeForDiffKeys!118 lt!101212 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!101210 () ListLongMap!2729)

(assert (=> b!202010 (= lt!101210 (+!397 lt!101206 lt!101221))))

(declare-fun lt!101216 () ListLongMap!2729)

(declare-fun lt!101215 () tuple2!3802)

(assert (=> b!202010 (= lt!101206 (+!397 lt!101216 lt!101215))))

(declare-fun lt!101219 () ListLongMap!2729)

(assert (=> b!202010 (= lt!101219 lt!101214)))

(assert (=> b!202010 (= lt!101214 (+!397 lt!101208 lt!101221))))

(assert (=> b!202010 (= lt!101208 (+!397 lt!101212 lt!101215))))

(declare-fun lt!101217 () ListLongMap!2729)

(assert (=> b!202010 (= lt!101210 (+!397 (+!397 lt!101217 lt!101215) lt!101221))))

(assert (=> b!202010 (= lt!101221 (tuple2!3803 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!202010 (= lt!101215 (tuple2!3803 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202011 () Bool)

(declare-fun res!96709 () Bool)

(assert (=> b!202011 (=> (not res!96709) (not e!132361))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202011 (= res!96709 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4623 _keys!825))))))

(declare-fun mapNonEmpty!8471 () Bool)

(declare-fun mapRes!8471 () Bool)

(declare-fun tp!18268 () Bool)

(assert (=> mapNonEmpty!8471 (= mapRes!8471 (and tp!18268 e!132358))))

(declare-datatypes ((ValueCell!2124 0))(
  ( (ValueCellFull!2124 (v!4478 V!6227)) (EmptyCell!2124) )
))
(declare-fun mapRest!8471 () (Array (_ BitVec 32) ValueCell!2124))

(declare-datatypes ((array!9098 0))(
  ( (array!9099 (arr!4299 (Array (_ BitVec 32) ValueCell!2124)) (size!4624 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9098)

(declare-fun mapKey!8471 () (_ BitVec 32))

(declare-fun mapValue!8471 () ValueCell!2124)

(assert (=> mapNonEmpty!8471 (= (arr!4299 _values!649) (store mapRest!8471 mapKey!8471 mapValue!8471))))

(declare-fun b!202013 () Bool)

(assert (=> b!202013 (= e!132361 (not e!132359))))

(declare-fun res!96710 () Bool)

(assert (=> b!202013 (=> res!96710 e!132359)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202013 (= res!96710 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!959 (array!9096 array!9098 (_ BitVec 32) (_ BitVec 32) V!6227 V!6227 (_ BitVec 32) Int) ListLongMap!2729)

(assert (=> b!202013 (= lt!101219 (getCurrentListMap!959 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101207 () array!9098)

(assert (=> b!202013 (= lt!101210 (getCurrentListMap!959 _keys!825 lt!101207 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202013 (and (= lt!101217 lt!101216) (= lt!101216 lt!101217))))

(assert (=> b!202013 (= lt!101216 (+!397 lt!101212 lt!101218))))

(assert (=> b!202013 (= lt!101218 (tuple2!3803 k0!843 v!520))))

(declare-fun lt!101220 () Unit!6101)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!72 (array!9096 array!9098 (_ BitVec 32) (_ BitVec 32) V!6227 V!6227 (_ BitVec 32) (_ BitVec 64) V!6227 (_ BitVec 32) Int) Unit!6101)

(assert (=> b!202013 (= lt!101220 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!72 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!330 (array!9096 array!9098 (_ BitVec 32) (_ BitVec 32) V!6227 V!6227 (_ BitVec 32) Int) ListLongMap!2729)

(assert (=> b!202013 (= lt!101217 (getCurrentListMapNoExtraKeys!330 _keys!825 lt!101207 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202013 (= lt!101207 (array!9099 (store (arr!4299 _values!649) i!601 (ValueCellFull!2124 v!520)) (size!4624 _values!649)))))

(assert (=> b!202013 (= lt!101212 (getCurrentListMapNoExtraKeys!330 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202014 () Bool)

(declare-fun e!132360 () Bool)

(declare-fun e!132364 () Bool)

(assert (=> b!202014 (= e!132360 (and e!132364 mapRes!8471))))

(declare-fun condMapEmpty!8471 () Bool)

(declare-fun mapDefault!8471 () ValueCell!2124)

(assert (=> b!202014 (= condMapEmpty!8471 (= (arr!4299 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2124)) mapDefault!8471)))))

(declare-fun res!96708 () Bool)

(assert (=> start!20432 (=> (not res!96708) (not e!132361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20432 (= res!96708 (validMask!0 mask!1149))))

(assert (=> start!20432 e!132361))

(declare-fun array_inv!2827 (array!9098) Bool)

(assert (=> start!20432 (and (array_inv!2827 _values!649) e!132360)))

(assert (=> start!20432 true))

(assert (=> start!20432 tp_is_empty!4935))

(declare-fun array_inv!2828 (array!9096) Bool)

(assert (=> start!20432 (array_inv!2828 _keys!825)))

(assert (=> start!20432 tp!18269))

(declare-fun b!202012 () Bool)

(assert (=> b!202012 (= e!132364 tp_is_empty!4935)))

(declare-fun mapIsEmpty!8471 () Bool)

(assert (=> mapIsEmpty!8471 mapRes!8471))

(declare-fun b!202015 () Bool)

(declare-fun res!96705 () Bool)

(assert (=> b!202015 (=> (not res!96705) (not e!132361))))

(declare-datatypes ((List!2737 0))(
  ( (Nil!2734) (Cons!2733 (h!3375 (_ BitVec 64)) (t!7676 List!2737)) )
))
(declare-fun arrayNoDuplicates!0 (array!9096 (_ BitVec 32) List!2737) Bool)

(assert (=> b!202015 (= res!96705 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2734))))

(declare-fun b!202016 () Bool)

(declare-fun res!96712 () Bool)

(assert (=> b!202016 (=> (not res!96712) (not e!132361))))

(assert (=> b!202016 (= res!96712 (= (select (arr!4298 _keys!825) i!601) k0!843))))

(declare-fun b!202017 () Bool)

(declare-fun res!96704 () Bool)

(assert (=> b!202017 (=> (not res!96704) (not e!132361))))

(assert (=> b!202017 (= res!96704 (and (= (size!4624 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4623 _keys!825) (size!4624 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(assert (= (and start!20432 res!96708) b!202017))

(assert (= (and b!202017 res!96704) b!202008))

(assert (= (and b!202008 res!96707) b!202015))

(assert (= (and b!202015 res!96705) b!202011))

(assert (= (and b!202011 res!96709) b!202007))

(assert (= (and b!202007 res!96706) b!202016))

(assert (= (and b!202016 res!96712) b!202013))

(assert (= (and b!202013 (not res!96710)) b!202010))

(assert (= (and b!202010 (not res!96711)) b!202009))

(assert (= (and b!202014 condMapEmpty!8471) mapIsEmpty!8471))

(assert (= (and b!202014 (not condMapEmpty!8471)) mapNonEmpty!8471))

(get-info :version)

(assert (= (and mapNonEmpty!8471 ((_ is ValueCellFull!2124) mapValue!8471)) b!202006))

(assert (= (and b!202014 ((_ is ValueCellFull!2124) mapDefault!8471)) b!202012))

(assert (= start!20432 b!202014))

(declare-fun m!229225 () Bool)

(assert (=> b!202015 m!229225))

(declare-fun m!229227 () Bool)

(assert (=> b!202010 m!229227))

(declare-fun m!229229 () Bool)

(assert (=> b!202010 m!229229))

(declare-fun m!229231 () Bool)

(assert (=> b!202010 m!229231))

(declare-fun m!229233 () Bool)

(assert (=> b!202010 m!229233))

(assert (=> b!202010 m!229227))

(declare-fun m!229235 () Bool)

(assert (=> b!202010 m!229235))

(declare-fun m!229237 () Bool)

(assert (=> b!202010 m!229237))

(declare-fun m!229239 () Bool)

(assert (=> b!202010 m!229239))

(declare-fun m!229241 () Bool)

(assert (=> b!202010 m!229241))

(declare-fun m!229243 () Bool)

(assert (=> b!202008 m!229243))

(declare-fun m!229245 () Bool)

(assert (=> b!202007 m!229245))

(declare-fun m!229247 () Bool)

(assert (=> b!202016 m!229247))

(declare-fun m!229249 () Bool)

(assert (=> mapNonEmpty!8471 m!229249))

(declare-fun m!229251 () Bool)

(assert (=> b!202009 m!229251))

(declare-fun m!229253 () Bool)

(assert (=> b!202009 m!229253))

(declare-fun m!229255 () Bool)

(assert (=> b!202009 m!229255))

(declare-fun m!229257 () Bool)

(assert (=> start!20432 m!229257))

(declare-fun m!229259 () Bool)

(assert (=> start!20432 m!229259))

(declare-fun m!229261 () Bool)

(assert (=> start!20432 m!229261))

(declare-fun m!229263 () Bool)

(assert (=> b!202013 m!229263))

(declare-fun m!229265 () Bool)

(assert (=> b!202013 m!229265))

(declare-fun m!229267 () Bool)

(assert (=> b!202013 m!229267))

(declare-fun m!229269 () Bool)

(assert (=> b!202013 m!229269))

(declare-fun m!229271 () Bool)

(assert (=> b!202013 m!229271))

(declare-fun m!229273 () Bool)

(assert (=> b!202013 m!229273))

(declare-fun m!229275 () Bool)

(assert (=> b!202013 m!229275))

(check-sat (not mapNonEmpty!8471) (not b!202010) b_and!11843 (not b!202013) tp_is_empty!4935 (not b!202015) (not b!202009) (not b_next!5079) (not b!202007) (not b!202008) (not start!20432))
(check-sat b_and!11843 (not b_next!5079))
