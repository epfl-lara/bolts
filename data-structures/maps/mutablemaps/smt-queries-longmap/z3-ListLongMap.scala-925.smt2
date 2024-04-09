; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20660 () Bool)

(assert start!20660)

(declare-fun b_free!5307 () Bool)

(declare-fun b_next!5307 () Bool)

(assert (=> start!20660 (= b_free!5307 (not b_next!5307))))

(declare-fun tp!18952 () Bool)

(declare-fun b_and!12071 () Bool)

(assert (=> start!20660 (= tp!18952 b_and!12071)))

(declare-fun b!206128 () Bool)

(declare-fun res!99801 () Bool)

(declare-fun e!134755 () Bool)

(assert (=> b!206128 (=> (not res!99801) (not e!134755))))

(declare-datatypes ((array!9536 0))(
  ( (array!9537 (arr!4518 (Array (_ BitVec 32) (_ BitVec 64))) (size!4843 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9536)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9536 (_ BitVec 32)) Bool)

(assert (=> b!206128 (= res!99801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206129 () Bool)

(declare-fun e!134756 () Bool)

(declare-fun tp_is_empty!5163 () Bool)

(assert (=> b!206129 (= e!134756 tp_is_empty!5163)))

(declare-fun b!206130 () Bool)

(declare-fun res!99803 () Bool)

(assert (=> b!206130 (=> (not res!99803) (not e!134755))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206130 (= res!99803 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4843 _keys!825))))))

(declare-fun b!206131 () Bool)

(declare-fun res!99804 () Bool)

(assert (=> b!206131 (=> (not res!99804) (not e!134755))))

(declare-datatypes ((List!2900 0))(
  ( (Nil!2897) (Cons!2896 (h!3538 (_ BitVec 64)) (t!7839 List!2900)) )
))
(declare-fun arrayNoDuplicates!0 (array!9536 (_ BitVec 32) List!2900) Bool)

(assert (=> b!206131 (= res!99804 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2897))))

(declare-fun res!99802 () Bool)

(assert (=> start!20660 (=> (not res!99802) (not e!134755))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20660 (= res!99802 (validMask!0 mask!1149))))

(assert (=> start!20660 e!134755))

(declare-datatypes ((V!6531 0))(
  ( (V!6532 (val!2626 Int)) )
))
(declare-datatypes ((ValueCell!2238 0))(
  ( (ValueCellFull!2238 (v!4592 V!6531)) (EmptyCell!2238) )
))
(declare-datatypes ((array!9538 0))(
  ( (array!9539 (arr!4519 (Array (_ BitVec 32) ValueCell!2238)) (size!4844 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9538)

(declare-fun e!134757 () Bool)

(declare-fun array_inv!2977 (array!9538) Bool)

(assert (=> start!20660 (and (array_inv!2977 _values!649) e!134757)))

(assert (=> start!20660 true))

(assert (=> start!20660 tp_is_empty!5163))

(declare-fun array_inv!2978 (array!9536) Bool)

(assert (=> start!20660 (array_inv!2978 _keys!825)))

(assert (=> start!20660 tp!18952))

(declare-fun b!206132 () Bool)

(declare-fun res!99806 () Bool)

(assert (=> b!206132 (=> (not res!99806) (not e!134755))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206132 (= res!99806 (validKeyInArray!0 k0!843))))

(declare-fun b!206133 () Bool)

(declare-fun e!134754 () Bool)

(declare-fun mapRes!8813 () Bool)

(assert (=> b!206133 (= e!134757 (and e!134754 mapRes!8813))))

(declare-fun condMapEmpty!8813 () Bool)

(declare-fun mapDefault!8813 () ValueCell!2238)

(assert (=> b!206133 (= condMapEmpty!8813 (= (arr!4519 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2238)) mapDefault!8813)))))

(declare-fun b!206134 () Bool)

(declare-fun e!134752 () Bool)

(declare-fun e!134753 () Bool)

(assert (=> b!206134 (= e!134752 e!134753)))

(declare-fun res!99805 () Bool)

(assert (=> b!206134 (=> res!99805 e!134753)))

(assert (=> b!206134 (= res!99805 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3984 0))(
  ( (tuple2!3985 (_1!2002 (_ BitVec 64)) (_2!2002 V!6531)) )
))
(declare-datatypes ((List!2901 0))(
  ( (Nil!2898) (Cons!2897 (h!3539 tuple2!3984) (t!7840 List!2901)) )
))
(declare-datatypes ((ListLongMap!2911 0))(
  ( (ListLongMap!2912 (toList!1471 List!2901)) )
))
(declare-fun lt!105335 () ListLongMap!2911)

(declare-fun lt!105328 () ListLongMap!2911)

(assert (=> b!206134 (= lt!105335 lt!105328)))

(declare-fun lt!105337 () ListLongMap!2911)

(declare-fun lt!105336 () tuple2!3984)

(declare-fun +!488 (ListLongMap!2911 tuple2!3984) ListLongMap!2911)

(assert (=> b!206134 (= lt!105328 (+!488 lt!105337 lt!105336))))

(declare-fun lt!105333 () ListLongMap!2911)

(declare-fun lt!105331 () ListLongMap!2911)

(assert (=> b!206134 (= lt!105333 lt!105331)))

(declare-fun lt!105327 () ListLongMap!2911)

(assert (=> b!206134 (= lt!105331 (+!488 lt!105327 lt!105336))))

(declare-fun lt!105330 () ListLongMap!2911)

(assert (=> b!206134 (= lt!105333 (+!488 lt!105330 lt!105336))))

(declare-fun minValue!615 () V!6531)

(assert (=> b!206134 (= lt!105336 (tuple2!3985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206135 () Bool)

(declare-fun res!99800 () Bool)

(assert (=> b!206135 (=> (not res!99800) (not e!134755))))

(assert (=> b!206135 (= res!99800 (= (select (arr!4518 _keys!825) i!601) k0!843))))

(declare-fun b!206136 () Bool)

(declare-fun res!99808 () Bool)

(assert (=> b!206136 (=> (not res!99808) (not e!134755))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!206136 (= res!99808 (and (= (size!4844 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4843 _keys!825) (size!4844 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206137 () Bool)

(assert (=> b!206137 (= e!134755 (not e!134752))))

(declare-fun res!99807 () Bool)

(assert (=> b!206137 (=> res!99807 e!134752)))

(assert (=> b!206137 (= res!99807 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6531)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1034 (array!9536 array!9538 (_ BitVec 32) (_ BitVec 32) V!6531 V!6531 (_ BitVec 32) Int) ListLongMap!2911)

(assert (=> b!206137 (= lt!105335 (getCurrentListMap!1034 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105329 () array!9538)

(assert (=> b!206137 (= lt!105333 (getCurrentListMap!1034 _keys!825 lt!105329 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206137 (and (= lt!105330 lt!105327) (= lt!105327 lt!105330))))

(declare-fun lt!105332 () tuple2!3984)

(assert (=> b!206137 (= lt!105327 (+!488 lt!105337 lt!105332))))

(declare-fun v!520 () V!6531)

(assert (=> b!206137 (= lt!105332 (tuple2!3985 k0!843 v!520))))

(declare-datatypes ((Unit!6271 0))(
  ( (Unit!6272) )
))
(declare-fun lt!105326 () Unit!6271)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!147 (array!9536 array!9538 (_ BitVec 32) (_ BitVec 32) V!6531 V!6531 (_ BitVec 32) (_ BitVec 64) V!6531 (_ BitVec 32) Int) Unit!6271)

(assert (=> b!206137 (= lt!105326 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!147 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!405 (array!9536 array!9538 (_ BitVec 32) (_ BitVec 32) V!6531 V!6531 (_ BitVec 32) Int) ListLongMap!2911)

(assert (=> b!206137 (= lt!105330 (getCurrentListMapNoExtraKeys!405 _keys!825 lt!105329 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206137 (= lt!105329 (array!9539 (store (arr!4519 _values!649) i!601 (ValueCellFull!2238 v!520)) (size!4844 _values!649)))))

(assert (=> b!206137 (= lt!105337 (getCurrentListMapNoExtraKeys!405 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206138 () Bool)

(assert (=> b!206138 (= e!134754 tp_is_empty!5163)))

(declare-fun mapIsEmpty!8813 () Bool)

(assert (=> mapIsEmpty!8813 mapRes!8813))

(declare-fun b!206139 () Bool)

(assert (=> b!206139 (= e!134753 true)))

(assert (=> b!206139 (= lt!105331 (+!488 lt!105328 lt!105332))))

(declare-fun lt!105334 () Unit!6271)

(declare-fun addCommutativeForDiffKeys!186 (ListLongMap!2911 (_ BitVec 64) V!6531 (_ BitVec 64) V!6531) Unit!6271)

(assert (=> b!206139 (= lt!105334 (addCommutativeForDiffKeys!186 lt!105337 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!8813 () Bool)

(declare-fun tp!18953 () Bool)

(assert (=> mapNonEmpty!8813 (= mapRes!8813 (and tp!18953 e!134756))))

(declare-fun mapRest!8813 () (Array (_ BitVec 32) ValueCell!2238))

(declare-fun mapKey!8813 () (_ BitVec 32))

(declare-fun mapValue!8813 () ValueCell!2238)

(assert (=> mapNonEmpty!8813 (= (arr!4519 _values!649) (store mapRest!8813 mapKey!8813 mapValue!8813))))

(assert (= (and start!20660 res!99802) b!206136))

(assert (= (and b!206136 res!99808) b!206128))

(assert (= (and b!206128 res!99801) b!206131))

(assert (= (and b!206131 res!99804) b!206130))

(assert (= (and b!206130 res!99803) b!206132))

(assert (= (and b!206132 res!99806) b!206135))

(assert (= (and b!206135 res!99800) b!206137))

(assert (= (and b!206137 (not res!99807)) b!206134))

(assert (= (and b!206134 (not res!99805)) b!206139))

(assert (= (and b!206133 condMapEmpty!8813) mapIsEmpty!8813))

(assert (= (and b!206133 (not condMapEmpty!8813)) mapNonEmpty!8813))

(get-info :version)

(assert (= (and mapNonEmpty!8813 ((_ is ValueCellFull!2238) mapValue!8813)) b!206129))

(assert (= (and b!206133 ((_ is ValueCellFull!2238) mapDefault!8813)) b!206138))

(assert (= start!20660 b!206133))

(declare-fun m!233857 () Bool)

(assert (=> b!206135 m!233857))

(declare-fun m!233859 () Bool)

(assert (=> b!206137 m!233859))

(declare-fun m!233861 () Bool)

(assert (=> b!206137 m!233861))

(declare-fun m!233863 () Bool)

(assert (=> b!206137 m!233863))

(declare-fun m!233865 () Bool)

(assert (=> b!206137 m!233865))

(declare-fun m!233867 () Bool)

(assert (=> b!206137 m!233867))

(declare-fun m!233869 () Bool)

(assert (=> b!206137 m!233869))

(declare-fun m!233871 () Bool)

(assert (=> b!206137 m!233871))

(declare-fun m!233873 () Bool)

(assert (=> b!206131 m!233873))

(declare-fun m!233875 () Bool)

(assert (=> b!206132 m!233875))

(declare-fun m!233877 () Bool)

(assert (=> mapNonEmpty!8813 m!233877))

(declare-fun m!233879 () Bool)

(assert (=> b!206128 m!233879))

(declare-fun m!233881 () Bool)

(assert (=> start!20660 m!233881))

(declare-fun m!233883 () Bool)

(assert (=> start!20660 m!233883))

(declare-fun m!233885 () Bool)

(assert (=> start!20660 m!233885))

(declare-fun m!233887 () Bool)

(assert (=> b!206134 m!233887))

(declare-fun m!233889 () Bool)

(assert (=> b!206134 m!233889))

(declare-fun m!233891 () Bool)

(assert (=> b!206134 m!233891))

(declare-fun m!233893 () Bool)

(assert (=> b!206139 m!233893))

(declare-fun m!233895 () Bool)

(assert (=> b!206139 m!233895))

(check-sat (not b!206132) (not b!206137) tp_is_empty!5163 (not mapNonEmpty!8813) b_and!12071 (not b_next!5307) (not b!206134) (not b!206131) (not b!206139) (not b!206128) (not start!20660))
(check-sat b_and!12071 (not b_next!5307))
