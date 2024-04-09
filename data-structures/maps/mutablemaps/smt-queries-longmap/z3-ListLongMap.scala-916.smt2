; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20606 () Bool)

(assert start!20606)

(declare-fun b_free!5253 () Bool)

(declare-fun b_next!5253 () Bool)

(assert (=> start!20606 (= b_free!5253 (not b_next!5253))))

(declare-fun tp!18790 () Bool)

(declare-fun b_and!12017 () Bool)

(assert (=> start!20606 (= tp!18790 b_and!12017)))

(declare-fun b!205156 () Bool)

(declare-fun e!134190 () Bool)

(declare-fun tp_is_empty!5109 () Bool)

(assert (=> b!205156 (= e!134190 tp_is_empty!5109)))

(declare-fun b!205157 () Bool)

(declare-fun res!99071 () Bool)

(declare-fun e!134188 () Bool)

(assert (=> b!205157 (=> (not res!99071) (not e!134188))))

(declare-datatypes ((array!9430 0))(
  ( (array!9431 (arr!4465 (Array (_ BitVec 32) (_ BitVec 64))) (size!4790 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9430)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9430 (_ BitVec 32)) Bool)

(assert (=> b!205157 (= res!99071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205158 () Bool)

(declare-fun e!134191 () Bool)

(declare-fun e!134189 () Bool)

(declare-fun mapRes!8732 () Bool)

(assert (=> b!205158 (= e!134191 (and e!134189 mapRes!8732))))

(declare-fun condMapEmpty!8732 () Bool)

(declare-datatypes ((V!6459 0))(
  ( (V!6460 (val!2599 Int)) )
))
(declare-datatypes ((ValueCell!2211 0))(
  ( (ValueCellFull!2211 (v!4565 V!6459)) (EmptyCell!2211) )
))
(declare-datatypes ((array!9432 0))(
  ( (array!9433 (arr!4466 (Array (_ BitVec 32) ValueCell!2211)) (size!4791 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9432)

(declare-fun mapDefault!8732 () ValueCell!2211)

(assert (=> b!205158 (= condMapEmpty!8732 (= (arr!4466 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2211)) mapDefault!8732)))))

(declare-fun b!205159 () Bool)

(assert (=> b!205159 (= e!134189 tp_is_empty!5109)))

(declare-fun b!205160 () Bool)

(declare-fun res!99077 () Bool)

(assert (=> b!205160 (=> (not res!99077) (not e!134188))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205160 (= res!99077 (and (= (size!4791 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4790 _keys!825) (size!4791 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205162 () Bool)

(declare-fun e!134186 () Bool)

(declare-fun e!134187 () Bool)

(assert (=> b!205162 (= e!134186 e!134187)))

(declare-fun res!99075 () Bool)

(assert (=> b!205162 (=> res!99075 e!134187)))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!205162 (= res!99075 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3936 0))(
  ( (tuple2!3937 (_1!1978 (_ BitVec 64)) (_2!1978 V!6459)) )
))
(declare-datatypes ((List!2859 0))(
  ( (Nil!2856) (Cons!2855 (h!3497 tuple2!3936) (t!7798 List!2859)) )
))
(declare-datatypes ((ListLongMap!2863 0))(
  ( (ListLongMap!2864 (toList!1447 List!2859)) )
))
(declare-fun lt!104360 () ListLongMap!2863)

(declare-fun lt!104357 () ListLongMap!2863)

(assert (=> b!205162 (= lt!104360 lt!104357)))

(declare-fun lt!104363 () ListLongMap!2863)

(declare-fun lt!104365 () tuple2!3936)

(declare-fun +!464 (ListLongMap!2863 tuple2!3936) ListLongMap!2863)

(assert (=> b!205162 (= lt!104357 (+!464 lt!104363 lt!104365))))

(declare-fun lt!104354 () ListLongMap!2863)

(declare-fun lt!104361 () ListLongMap!2863)

(assert (=> b!205162 (= lt!104354 lt!104361)))

(declare-fun lt!104355 () ListLongMap!2863)

(assert (=> b!205162 (= lt!104361 (+!464 lt!104355 lt!104365))))

(declare-fun lt!104356 () ListLongMap!2863)

(assert (=> b!205162 (= lt!104354 (+!464 lt!104356 lt!104365))))

(declare-fun minValue!615 () V!6459)

(assert (=> b!205162 (= lt!104365 (tuple2!3937 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205163 () Bool)

(declare-fun res!99078 () Bool)

(assert (=> b!205163 (=> (not res!99078) (not e!134188))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205163 (= res!99078 (= (select (arr!4465 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8732 () Bool)

(assert (=> mapIsEmpty!8732 mapRes!8732))

(declare-fun b!205164 () Bool)

(declare-fun res!99072 () Bool)

(assert (=> b!205164 (=> (not res!99072) (not e!134188))))

(declare-datatypes ((List!2860 0))(
  ( (Nil!2857) (Cons!2856 (h!3498 (_ BitVec 64)) (t!7799 List!2860)) )
))
(declare-fun arrayNoDuplicates!0 (array!9430 (_ BitVec 32) List!2860) Bool)

(assert (=> b!205164 (= res!99072 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2857))))

(declare-fun b!205165 () Bool)

(assert (=> b!205165 (= e!134188 (not e!134186))))

(declare-fun res!99073 () Bool)

(assert (=> b!205165 (=> res!99073 e!134186)))

(assert (=> b!205165 (= res!99073 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6459)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1014 (array!9430 array!9432 (_ BitVec 32) (_ BitVec 32) V!6459 V!6459 (_ BitVec 32) Int) ListLongMap!2863)

(assert (=> b!205165 (= lt!104360 (getCurrentListMap!1014 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104359 () array!9432)

(assert (=> b!205165 (= lt!104354 (getCurrentListMap!1014 _keys!825 lt!104359 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205165 (and (= lt!104356 lt!104355) (= lt!104355 lt!104356))))

(declare-fun lt!104362 () tuple2!3936)

(assert (=> b!205165 (= lt!104355 (+!464 lt!104363 lt!104362))))

(declare-fun v!520 () V!6459)

(assert (=> b!205165 (= lt!104362 (tuple2!3937 k0!843 v!520))))

(declare-datatypes ((Unit!6227 0))(
  ( (Unit!6228) )
))
(declare-fun lt!104358 () Unit!6227)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!127 (array!9430 array!9432 (_ BitVec 32) (_ BitVec 32) V!6459 V!6459 (_ BitVec 32) (_ BitVec 64) V!6459 (_ BitVec 32) Int) Unit!6227)

(assert (=> b!205165 (= lt!104358 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!127 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!385 (array!9430 array!9432 (_ BitVec 32) (_ BitVec 32) V!6459 V!6459 (_ BitVec 32) Int) ListLongMap!2863)

(assert (=> b!205165 (= lt!104356 (getCurrentListMapNoExtraKeys!385 _keys!825 lt!104359 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205165 (= lt!104359 (array!9433 (store (arr!4466 _values!649) i!601 (ValueCellFull!2211 v!520)) (size!4791 _values!649)))))

(assert (=> b!205165 (= lt!104363 (getCurrentListMapNoExtraKeys!385 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205166 () Bool)

(declare-fun res!99079 () Bool)

(assert (=> b!205166 (=> (not res!99079) (not e!134188))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205166 (= res!99079 (validKeyInArray!0 k0!843))))

(declare-fun b!205161 () Bool)

(declare-fun res!99076 () Bool)

(assert (=> b!205161 (=> (not res!99076) (not e!134188))))

(assert (=> b!205161 (= res!99076 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4790 _keys!825))))))

(declare-fun res!99074 () Bool)

(assert (=> start!20606 (=> (not res!99074) (not e!134188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20606 (= res!99074 (validMask!0 mask!1149))))

(assert (=> start!20606 e!134188))

(declare-fun array_inv!2941 (array!9432) Bool)

(assert (=> start!20606 (and (array_inv!2941 _values!649) e!134191)))

(assert (=> start!20606 true))

(assert (=> start!20606 tp_is_empty!5109))

(declare-fun array_inv!2942 (array!9430) Bool)

(assert (=> start!20606 (array_inv!2942 _keys!825)))

(assert (=> start!20606 tp!18790))

(declare-fun b!205167 () Bool)

(assert (=> b!205167 (= e!134187 true)))

(assert (=> b!205167 (= lt!104361 (+!464 lt!104357 lt!104362))))

(declare-fun lt!104364 () Unit!6227)

(declare-fun addCommutativeForDiffKeys!168 (ListLongMap!2863 (_ BitVec 64) V!6459 (_ BitVec 64) V!6459) Unit!6227)

(assert (=> b!205167 (= lt!104364 (addCommutativeForDiffKeys!168 lt!104363 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!8732 () Bool)

(declare-fun tp!18791 () Bool)

(assert (=> mapNonEmpty!8732 (= mapRes!8732 (and tp!18791 e!134190))))

(declare-fun mapKey!8732 () (_ BitVec 32))

(declare-fun mapRest!8732 () (Array (_ BitVec 32) ValueCell!2211))

(declare-fun mapValue!8732 () ValueCell!2211)

(assert (=> mapNonEmpty!8732 (= (arr!4466 _values!649) (store mapRest!8732 mapKey!8732 mapValue!8732))))

(assert (= (and start!20606 res!99074) b!205160))

(assert (= (and b!205160 res!99077) b!205157))

(assert (= (and b!205157 res!99071) b!205164))

(assert (= (and b!205164 res!99072) b!205161))

(assert (= (and b!205161 res!99076) b!205166))

(assert (= (and b!205166 res!99079) b!205163))

(assert (= (and b!205163 res!99078) b!205165))

(assert (= (and b!205165 (not res!99073)) b!205162))

(assert (= (and b!205162 (not res!99075)) b!205167))

(assert (= (and b!205158 condMapEmpty!8732) mapIsEmpty!8732))

(assert (= (and b!205158 (not condMapEmpty!8732)) mapNonEmpty!8732))

(get-info :version)

(assert (= (and mapNonEmpty!8732 ((_ is ValueCellFull!2211) mapValue!8732)) b!205156))

(assert (= (and b!205158 ((_ is ValueCellFull!2211) mapDefault!8732)) b!205159))

(assert (= start!20606 b!205158))

(declare-fun m!232777 () Bool)

(assert (=> b!205162 m!232777))

(declare-fun m!232779 () Bool)

(assert (=> b!205162 m!232779))

(declare-fun m!232781 () Bool)

(assert (=> b!205162 m!232781))

(declare-fun m!232783 () Bool)

(assert (=> b!205163 m!232783))

(declare-fun m!232785 () Bool)

(assert (=> b!205157 m!232785))

(declare-fun m!232787 () Bool)

(assert (=> mapNonEmpty!8732 m!232787))

(declare-fun m!232789 () Bool)

(assert (=> b!205164 m!232789))

(declare-fun m!232791 () Bool)

(assert (=> b!205167 m!232791))

(declare-fun m!232793 () Bool)

(assert (=> b!205167 m!232793))

(declare-fun m!232795 () Bool)

(assert (=> b!205165 m!232795))

(declare-fun m!232797 () Bool)

(assert (=> b!205165 m!232797))

(declare-fun m!232799 () Bool)

(assert (=> b!205165 m!232799))

(declare-fun m!232801 () Bool)

(assert (=> b!205165 m!232801))

(declare-fun m!232803 () Bool)

(assert (=> b!205165 m!232803))

(declare-fun m!232805 () Bool)

(assert (=> b!205165 m!232805))

(declare-fun m!232807 () Bool)

(assert (=> b!205165 m!232807))

(declare-fun m!232809 () Bool)

(assert (=> b!205166 m!232809))

(declare-fun m!232811 () Bool)

(assert (=> start!20606 m!232811))

(declare-fun m!232813 () Bool)

(assert (=> start!20606 m!232813))

(declare-fun m!232815 () Bool)

(assert (=> start!20606 m!232815))

(check-sat (not start!20606) tp_is_empty!5109 (not b!205162) (not b!205167) (not b!205165) (not b_next!5253) b_and!12017 (not b!205164) (not mapNonEmpty!8732) (not b!205166) (not b!205157))
(check-sat b_and!12017 (not b_next!5253))
