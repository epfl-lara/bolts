; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20558 () Bool)

(assert start!20558)

(declare-fun b_free!5205 () Bool)

(declare-fun b_next!5205 () Bool)

(assert (=> start!20558 (= b_free!5205 (not b_next!5205))))

(declare-fun tp!18646 () Bool)

(declare-fun b_and!11969 () Bool)

(assert (=> start!20558 (= tp!18646 b_and!11969)))

(declare-fun res!98417 () Bool)

(declare-fun e!133687 () Bool)

(assert (=> start!20558 (=> (not res!98417) (not e!133687))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20558 (= res!98417 (validMask!0 mask!1149))))

(assert (=> start!20558 e!133687))

(declare-datatypes ((V!6395 0))(
  ( (V!6396 (val!2575 Int)) )
))
(declare-datatypes ((ValueCell!2187 0))(
  ( (ValueCellFull!2187 (v!4541 V!6395)) (EmptyCell!2187) )
))
(declare-datatypes ((array!9338 0))(
  ( (array!9339 (arr!4419 (Array (_ BitVec 32) ValueCell!2187)) (size!4744 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9338)

(declare-fun e!133681 () Bool)

(declare-fun array_inv!2909 (array!9338) Bool)

(assert (=> start!20558 (and (array_inv!2909 _values!649) e!133681)))

(assert (=> start!20558 true))

(declare-fun tp_is_empty!5061 () Bool)

(assert (=> start!20558 tp_is_empty!5061))

(declare-datatypes ((array!9340 0))(
  ( (array!9341 (arr!4420 (Array (_ BitVec 32) (_ BitVec 64))) (size!4745 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9340)

(declare-fun array_inv!2910 (array!9340) Bool)

(assert (=> start!20558 (array_inv!2910 _keys!825)))

(assert (=> start!20558 tp!18646))

(declare-fun b!204283 () Bool)

(declare-fun res!98414 () Bool)

(assert (=> b!204283 (=> (not res!98414) (not e!133687))))

(declare-datatypes ((List!2825 0))(
  ( (Nil!2822) (Cons!2821 (h!3463 (_ BitVec 64)) (t!7764 List!2825)) )
))
(declare-fun arrayNoDuplicates!0 (array!9340 (_ BitVec 32) List!2825) Bool)

(assert (=> b!204283 (= res!98414 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2822))))

(declare-fun b!204284 () Bool)

(declare-fun e!133682 () Bool)

(declare-fun mapRes!8660 () Bool)

(assert (=> b!204284 (= e!133681 (and e!133682 mapRes!8660))))

(declare-fun condMapEmpty!8660 () Bool)

(declare-fun mapDefault!8660 () ValueCell!2187)

(assert (=> b!204284 (= condMapEmpty!8660 (= (arr!4419 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2187)) mapDefault!8660)))))

(declare-fun b!204285 () Bool)

(declare-fun res!98422 () Bool)

(assert (=> b!204285 (=> (not res!98422) (not e!133687))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204285 (= res!98422 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4745 _keys!825))))))

(declare-fun b!204286 () Bool)

(declare-fun e!133685 () Bool)

(declare-fun e!133686 () Bool)

(assert (=> b!204286 (= e!133685 e!133686)))

(declare-fun res!98420 () Bool)

(assert (=> b!204286 (=> res!98420 e!133686)))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!204286 (= res!98420 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3902 0))(
  ( (tuple2!3903 (_1!1961 (_ BitVec 64)) (_2!1961 V!6395)) )
))
(declare-datatypes ((List!2826 0))(
  ( (Nil!2823) (Cons!2822 (h!3464 tuple2!3902) (t!7765 List!2826)) )
))
(declare-datatypes ((ListLongMap!2829 0))(
  ( (ListLongMap!2830 (toList!1430 List!2826)) )
))
(declare-fun lt!103532 () ListLongMap!2829)

(declare-fun lt!103535 () ListLongMap!2829)

(assert (=> b!204286 (= lt!103532 lt!103535)))

(declare-fun lt!103533 () ListLongMap!2829)

(declare-fun lt!103537 () tuple2!3902)

(declare-fun +!447 (ListLongMap!2829 tuple2!3902) ListLongMap!2829)

(assert (=> b!204286 (= lt!103535 (+!447 lt!103533 lt!103537))))

(declare-fun lt!103529 () ListLongMap!2829)

(declare-fun lt!103536 () ListLongMap!2829)

(assert (=> b!204286 (= lt!103529 lt!103536)))

(declare-fun lt!103534 () ListLongMap!2829)

(assert (=> b!204286 (= lt!103536 (+!447 lt!103534 lt!103537))))

(declare-fun lt!103528 () ListLongMap!2829)

(assert (=> b!204286 (= lt!103532 (+!447 lt!103528 lt!103537))))

(declare-fun zeroValue!615 () V!6395)

(assert (=> b!204286 (= lt!103537 (tuple2!3903 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!204287 () Bool)

(assert (=> b!204287 (= e!133686 (bvsle #b00000000000000000000000000000000 (size!4745 _keys!825)))))

(declare-fun lt!103526 () tuple2!3902)

(assert (=> b!204287 (= lt!103535 (+!447 lt!103536 lt!103526))))

(declare-datatypes ((Unit!6193 0))(
  ( (Unit!6194) )
))
(declare-fun lt!103527 () Unit!6193)

(declare-fun v!520 () V!6395)

(declare-fun addCommutativeForDiffKeys!155 (ListLongMap!2829 (_ BitVec 64) V!6395 (_ BitVec 64) V!6395) Unit!6193)

(assert (=> b!204287 (= lt!103527 (addCommutativeForDiffKeys!155 lt!103534 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!204288 () Bool)

(declare-fun res!98421 () Bool)

(assert (=> b!204288 (=> (not res!98421) (not e!133687))))

(assert (=> b!204288 (= res!98421 (= (select (arr!4420 _keys!825) i!601) k0!843))))

(declare-fun b!204289 () Bool)

(declare-fun res!98416 () Bool)

(assert (=> b!204289 (=> (not res!98416) (not e!133687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204289 (= res!98416 (validKeyInArray!0 k0!843))))

(declare-fun b!204290 () Bool)

(assert (=> b!204290 (= e!133687 (not e!133685))))

(declare-fun res!98419 () Bool)

(assert (=> b!204290 (=> res!98419 e!133685)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204290 (= res!98419 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6395)

(declare-fun getCurrentListMap!998 (array!9340 array!9338 (_ BitVec 32) (_ BitVec 32) V!6395 V!6395 (_ BitVec 32) Int) ListLongMap!2829)

(assert (=> b!204290 (= lt!103529 (getCurrentListMap!998 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103531 () array!9338)

(assert (=> b!204290 (= lt!103532 (getCurrentListMap!998 _keys!825 lt!103531 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204290 (and (= lt!103528 lt!103533) (= lt!103533 lt!103528))))

(assert (=> b!204290 (= lt!103533 (+!447 lt!103534 lt!103526))))

(assert (=> b!204290 (= lt!103526 (tuple2!3903 k0!843 v!520))))

(declare-fun lt!103530 () Unit!6193)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!111 (array!9340 array!9338 (_ BitVec 32) (_ BitVec 32) V!6395 V!6395 (_ BitVec 32) (_ BitVec 64) V!6395 (_ BitVec 32) Int) Unit!6193)

(assert (=> b!204290 (= lt!103530 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!111 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!369 (array!9340 array!9338 (_ BitVec 32) (_ BitVec 32) V!6395 V!6395 (_ BitVec 32) Int) ListLongMap!2829)

(assert (=> b!204290 (= lt!103528 (getCurrentListMapNoExtraKeys!369 _keys!825 lt!103531 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204290 (= lt!103531 (array!9339 (store (arr!4419 _values!649) i!601 (ValueCellFull!2187 v!520)) (size!4744 _values!649)))))

(assert (=> b!204290 (= lt!103534 (getCurrentListMapNoExtraKeys!369 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204291 () Bool)

(declare-fun e!133684 () Bool)

(assert (=> b!204291 (= e!133684 tp_is_empty!5061)))

(declare-fun b!204292 () Bool)

(assert (=> b!204292 (= e!133682 tp_is_empty!5061)))

(declare-fun b!204293 () Bool)

(declare-fun res!98415 () Bool)

(assert (=> b!204293 (=> (not res!98415) (not e!133687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9340 (_ BitVec 32)) Bool)

(assert (=> b!204293 (= res!98415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8660 () Bool)

(assert (=> mapIsEmpty!8660 mapRes!8660))

(declare-fun mapNonEmpty!8660 () Bool)

(declare-fun tp!18647 () Bool)

(assert (=> mapNonEmpty!8660 (= mapRes!8660 (and tp!18647 e!133684))))

(declare-fun mapValue!8660 () ValueCell!2187)

(declare-fun mapKey!8660 () (_ BitVec 32))

(declare-fun mapRest!8660 () (Array (_ BitVec 32) ValueCell!2187))

(assert (=> mapNonEmpty!8660 (= (arr!4419 _values!649) (store mapRest!8660 mapKey!8660 mapValue!8660))))

(declare-fun b!204294 () Bool)

(declare-fun res!98418 () Bool)

(assert (=> b!204294 (=> (not res!98418) (not e!133687))))

(assert (=> b!204294 (= res!98418 (and (= (size!4744 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4745 _keys!825) (size!4744 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(assert (= (and start!20558 res!98417) b!204294))

(assert (= (and b!204294 res!98418) b!204293))

(assert (= (and b!204293 res!98415) b!204283))

(assert (= (and b!204283 res!98414) b!204285))

(assert (= (and b!204285 res!98422) b!204289))

(assert (= (and b!204289 res!98416) b!204288))

(assert (= (and b!204288 res!98421) b!204290))

(assert (= (and b!204290 (not res!98419)) b!204286))

(assert (= (and b!204286 (not res!98420)) b!204287))

(assert (= (and b!204284 condMapEmpty!8660) mapIsEmpty!8660))

(assert (= (and b!204284 (not condMapEmpty!8660)) mapNonEmpty!8660))

(get-info :version)

(assert (= (and mapNonEmpty!8660 ((_ is ValueCellFull!2187) mapValue!8660)) b!204291))

(assert (= (and b!204284 ((_ is ValueCellFull!2187) mapDefault!8660)) b!204292))

(assert (= start!20558 b!204284))

(declare-fun m!231829 () Bool)

(assert (=> start!20558 m!231829))

(declare-fun m!231831 () Bool)

(assert (=> start!20558 m!231831))

(declare-fun m!231833 () Bool)

(assert (=> start!20558 m!231833))

(declare-fun m!231835 () Bool)

(assert (=> b!204293 m!231835))

(declare-fun m!231837 () Bool)

(assert (=> b!204290 m!231837))

(declare-fun m!231839 () Bool)

(assert (=> b!204290 m!231839))

(declare-fun m!231841 () Bool)

(assert (=> b!204290 m!231841))

(declare-fun m!231843 () Bool)

(assert (=> b!204290 m!231843))

(declare-fun m!231845 () Bool)

(assert (=> b!204290 m!231845))

(declare-fun m!231847 () Bool)

(assert (=> b!204290 m!231847))

(declare-fun m!231849 () Bool)

(assert (=> b!204290 m!231849))

(declare-fun m!231851 () Bool)

(assert (=> b!204287 m!231851))

(declare-fun m!231853 () Bool)

(assert (=> b!204287 m!231853))

(declare-fun m!231855 () Bool)

(assert (=> mapNonEmpty!8660 m!231855))

(declare-fun m!231857 () Bool)

(assert (=> b!204283 m!231857))

(declare-fun m!231859 () Bool)

(assert (=> b!204289 m!231859))

(declare-fun m!231861 () Bool)

(assert (=> b!204286 m!231861))

(declare-fun m!231863 () Bool)

(assert (=> b!204286 m!231863))

(declare-fun m!231865 () Bool)

(assert (=> b!204286 m!231865))

(declare-fun m!231867 () Bool)

(assert (=> b!204288 m!231867))

(check-sat (not b!204286) (not b!204293) (not b!204290) (not mapNonEmpty!8660) (not b!204283) (not b_next!5205) tp_is_empty!5061 b_and!11969 (not b!204289) (not start!20558) (not b!204287))
(check-sat b_and!11969 (not b_next!5205))
