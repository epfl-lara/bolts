; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20426 () Bool)

(assert start!20426)

(declare-fun b_free!5073 () Bool)

(declare-fun b_next!5073 () Bool)

(assert (=> start!20426 (= b_free!5073 (not b_next!5073))))

(declare-fun tp!18251 () Bool)

(declare-fun b_and!11837 () Bool)

(assert (=> start!20426 (= tp!18251 b_and!11837)))

(declare-fun mapIsEmpty!8462 () Bool)

(declare-fun mapRes!8462 () Bool)

(assert (=> mapIsEmpty!8462 mapRes!8462))

(declare-fun b!201898 () Bool)

(declare-fun e!132295 () Bool)

(declare-fun tp_is_empty!4929 () Bool)

(assert (=> b!201898 (= e!132295 tp_is_empty!4929)))

(declare-fun b!201899 () Bool)

(declare-fun res!96624 () Bool)

(declare-fun e!132300 () Bool)

(assert (=> b!201899 (=> (not res!96624) (not e!132300))))

(declare-datatypes ((array!9086 0))(
  ( (array!9087 (arr!4293 (Array (_ BitVec 32) (_ BitVec 64))) (size!4618 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9086)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!201899 (= res!96624 (= (select (arr!4293 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!8462 () Bool)

(declare-fun tp!18250 () Bool)

(declare-fun e!132301 () Bool)

(assert (=> mapNonEmpty!8462 (= mapRes!8462 (and tp!18250 e!132301))))

(declare-datatypes ((V!6219 0))(
  ( (V!6220 (val!2509 Int)) )
))
(declare-datatypes ((ValueCell!2121 0))(
  ( (ValueCellFull!2121 (v!4475 V!6219)) (EmptyCell!2121) )
))
(declare-fun mapRest!8462 () (Array (_ BitVec 32) ValueCell!2121))

(declare-fun mapKey!8462 () (_ BitVec 32))

(declare-fun mapValue!8462 () ValueCell!2121)

(declare-datatypes ((array!9088 0))(
  ( (array!9089 (arr!4294 (Array (_ BitVec 32) ValueCell!2121)) (size!4619 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9088)

(assert (=> mapNonEmpty!8462 (= (arr!4294 _values!649) (store mapRest!8462 mapKey!8462 mapValue!8462))))

(declare-fun res!96626 () Bool)

(assert (=> start!20426 (=> (not res!96626) (not e!132300))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20426 (= res!96626 (validMask!0 mask!1149))))

(assert (=> start!20426 e!132300))

(declare-fun e!132296 () Bool)

(declare-fun array_inv!2823 (array!9088) Bool)

(assert (=> start!20426 (and (array_inv!2823 _values!649) e!132296)))

(assert (=> start!20426 true))

(assert (=> start!20426 tp_is_empty!4929))

(declare-fun array_inv!2824 (array!9086) Bool)

(assert (=> start!20426 (array_inv!2824 _keys!825)))

(assert (=> start!20426 tp!18251))

(declare-fun b!201900 () Bool)

(declare-fun e!132299 () Bool)

(declare-fun e!132298 () Bool)

(assert (=> b!201900 (= e!132299 e!132298)))

(declare-fun res!96631 () Bool)

(assert (=> b!201900 (=> res!96631 e!132298)))

(assert (=> b!201900 (= res!96631 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3798 0))(
  ( (tuple2!3799 (_1!1909 (_ BitVec 64)) (_2!1909 V!6219)) )
))
(declare-datatypes ((List!2732 0))(
  ( (Nil!2729) (Cons!2728 (h!3370 tuple2!3798) (t!7671 List!2732)) )
))
(declare-datatypes ((ListLongMap!2725 0))(
  ( (ListLongMap!2726 (toList!1378 List!2732)) )
))
(declare-fun lt!101075 () ListLongMap!2725)

(declare-fun lt!101076 () ListLongMap!2725)

(assert (=> b!201900 (= lt!101075 lt!101076)))

(declare-fun lt!101064 () ListLongMap!2725)

(declare-fun lt!101066 () tuple2!3798)

(declare-fun +!395 (ListLongMap!2725 tuple2!3798) ListLongMap!2725)

(assert (=> b!201900 (= lt!101076 (+!395 lt!101064 lt!101066))))

(declare-fun lt!101067 () ListLongMap!2725)

(declare-fun v!520 () V!6219)

(declare-datatypes ((Unit!6097 0))(
  ( (Unit!6098) )
))
(declare-fun lt!101071 () Unit!6097)

(declare-fun zeroValue!615 () V!6219)

(declare-fun addCommutativeForDiffKeys!116 (ListLongMap!2725 (_ BitVec 64) V!6219 (_ BitVec 64) V!6219) Unit!6097)

(assert (=> b!201900 (= lt!101071 (addCommutativeForDiffKeys!116 lt!101067 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!101074 () ListLongMap!2725)

(declare-fun lt!101072 () tuple2!3798)

(assert (=> b!201900 (= lt!101074 (+!395 lt!101075 lt!101072))))

(declare-fun lt!101068 () ListLongMap!2725)

(declare-fun lt!101062 () tuple2!3798)

(assert (=> b!201900 (= lt!101075 (+!395 lt!101068 lt!101062))))

(declare-fun lt!101069 () ListLongMap!2725)

(declare-fun lt!101077 () ListLongMap!2725)

(assert (=> b!201900 (= lt!101069 lt!101077)))

(assert (=> b!201900 (= lt!101077 (+!395 lt!101064 lt!101072))))

(assert (=> b!201900 (= lt!101064 (+!395 lt!101067 lt!101062))))

(declare-fun lt!101063 () ListLongMap!2725)

(assert (=> b!201900 (= lt!101074 (+!395 (+!395 lt!101063 lt!101062) lt!101072))))

(declare-fun minValue!615 () V!6219)

(assert (=> b!201900 (= lt!101072 (tuple2!3799 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201900 (= lt!101062 (tuple2!3799 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201901 () Bool)

(assert (=> b!201901 (= e!132298 true)))

(assert (=> b!201901 (= (+!395 lt!101076 lt!101072) (+!395 lt!101077 lt!101066))))

(declare-fun lt!101070 () Unit!6097)

(assert (=> b!201901 (= lt!101070 (addCommutativeForDiffKeys!116 lt!101064 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201902 () Bool)

(declare-fun res!96625 () Bool)

(assert (=> b!201902 (=> (not res!96625) (not e!132300))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201902 (= res!96625 (and (= (size!4619 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4618 _keys!825) (size!4619 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201903 () Bool)

(declare-fun res!96630 () Bool)

(assert (=> b!201903 (=> (not res!96630) (not e!132300))))

(assert (=> b!201903 (= res!96630 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4618 _keys!825))))))

(declare-fun b!201904 () Bool)

(assert (=> b!201904 (= e!132301 tp_is_empty!4929)))

(declare-fun b!201905 () Bool)

(declare-fun res!96628 () Bool)

(assert (=> b!201905 (=> (not res!96628) (not e!132300))))

(declare-datatypes ((List!2733 0))(
  ( (Nil!2730) (Cons!2729 (h!3371 (_ BitVec 64)) (t!7672 List!2733)) )
))
(declare-fun arrayNoDuplicates!0 (array!9086 (_ BitVec 32) List!2733) Bool)

(assert (=> b!201905 (= res!96628 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2730))))

(declare-fun b!201906 () Bool)

(assert (=> b!201906 (= e!132296 (and e!132295 mapRes!8462))))

(declare-fun condMapEmpty!8462 () Bool)

(declare-fun mapDefault!8462 () ValueCell!2121)

(assert (=> b!201906 (= condMapEmpty!8462 (= (arr!4294 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2121)) mapDefault!8462)))))

(declare-fun b!201907 () Bool)

(assert (=> b!201907 (= e!132300 (not e!132299))))

(declare-fun res!96623 () Bool)

(assert (=> b!201907 (=> res!96623 e!132299)))

(assert (=> b!201907 (= res!96623 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!957 (array!9086 array!9088 (_ BitVec 32) (_ BitVec 32) V!6219 V!6219 (_ BitVec 32) Int) ListLongMap!2725)

(assert (=> b!201907 (= lt!101069 (getCurrentListMap!957 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101073 () array!9088)

(assert (=> b!201907 (= lt!101074 (getCurrentListMap!957 _keys!825 lt!101073 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201907 (and (= lt!101063 lt!101068) (= lt!101068 lt!101063))))

(assert (=> b!201907 (= lt!101068 (+!395 lt!101067 lt!101066))))

(assert (=> b!201907 (= lt!101066 (tuple2!3799 k0!843 v!520))))

(declare-fun lt!101065 () Unit!6097)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!70 (array!9086 array!9088 (_ BitVec 32) (_ BitVec 32) V!6219 V!6219 (_ BitVec 32) (_ BitVec 64) V!6219 (_ BitVec 32) Int) Unit!6097)

(assert (=> b!201907 (= lt!101065 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!70 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!328 (array!9086 array!9088 (_ BitVec 32) (_ BitVec 32) V!6219 V!6219 (_ BitVec 32) Int) ListLongMap!2725)

(assert (=> b!201907 (= lt!101063 (getCurrentListMapNoExtraKeys!328 _keys!825 lt!101073 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201907 (= lt!101073 (array!9089 (store (arr!4294 _values!649) i!601 (ValueCellFull!2121 v!520)) (size!4619 _values!649)))))

(assert (=> b!201907 (= lt!101067 (getCurrentListMapNoExtraKeys!328 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201908 () Bool)

(declare-fun res!96629 () Bool)

(assert (=> b!201908 (=> (not res!96629) (not e!132300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201908 (= res!96629 (validKeyInArray!0 k0!843))))

(declare-fun b!201909 () Bool)

(declare-fun res!96627 () Bool)

(assert (=> b!201909 (=> (not res!96627) (not e!132300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9086 (_ BitVec 32)) Bool)

(assert (=> b!201909 (= res!96627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(assert (= (and start!20426 res!96626) b!201902))

(assert (= (and b!201902 res!96625) b!201909))

(assert (= (and b!201909 res!96627) b!201905))

(assert (= (and b!201905 res!96628) b!201903))

(assert (= (and b!201903 res!96630) b!201908))

(assert (= (and b!201908 res!96629) b!201899))

(assert (= (and b!201899 res!96624) b!201907))

(assert (= (and b!201907 (not res!96623)) b!201900))

(assert (= (and b!201900 (not res!96631)) b!201901))

(assert (= (and b!201906 condMapEmpty!8462) mapIsEmpty!8462))

(assert (= (and b!201906 (not condMapEmpty!8462)) mapNonEmpty!8462))

(get-info :version)

(assert (= (and mapNonEmpty!8462 ((_ is ValueCellFull!2121) mapValue!8462)) b!201904))

(assert (= (and b!201906 ((_ is ValueCellFull!2121) mapDefault!8462)) b!201898))

(assert (= start!20426 b!201906))

(declare-fun m!229069 () Bool)

(assert (=> b!201905 m!229069))

(declare-fun m!229071 () Bool)

(assert (=> b!201901 m!229071))

(declare-fun m!229073 () Bool)

(assert (=> b!201901 m!229073))

(declare-fun m!229075 () Bool)

(assert (=> b!201901 m!229075))

(declare-fun m!229077 () Bool)

(assert (=> start!20426 m!229077))

(declare-fun m!229079 () Bool)

(assert (=> start!20426 m!229079))

(declare-fun m!229081 () Bool)

(assert (=> start!20426 m!229081))

(declare-fun m!229083 () Bool)

(assert (=> b!201909 m!229083))

(declare-fun m!229085 () Bool)

(assert (=> b!201900 m!229085))

(declare-fun m!229087 () Bool)

(assert (=> b!201900 m!229087))

(declare-fun m!229089 () Bool)

(assert (=> b!201900 m!229089))

(declare-fun m!229091 () Bool)

(assert (=> b!201900 m!229091))

(declare-fun m!229093 () Bool)

(assert (=> b!201900 m!229093))

(declare-fun m!229095 () Bool)

(assert (=> b!201900 m!229095))

(assert (=> b!201900 m!229085))

(declare-fun m!229097 () Bool)

(assert (=> b!201900 m!229097))

(declare-fun m!229099 () Bool)

(assert (=> b!201900 m!229099))

(declare-fun m!229101 () Bool)

(assert (=> mapNonEmpty!8462 m!229101))

(declare-fun m!229103 () Bool)

(assert (=> b!201908 m!229103))

(declare-fun m!229105 () Bool)

(assert (=> b!201899 m!229105))

(declare-fun m!229107 () Bool)

(assert (=> b!201907 m!229107))

(declare-fun m!229109 () Bool)

(assert (=> b!201907 m!229109))

(declare-fun m!229111 () Bool)

(assert (=> b!201907 m!229111))

(declare-fun m!229113 () Bool)

(assert (=> b!201907 m!229113))

(declare-fun m!229115 () Bool)

(assert (=> b!201907 m!229115))

(declare-fun m!229117 () Bool)

(assert (=> b!201907 m!229117))

(declare-fun m!229119 () Bool)

(assert (=> b!201907 m!229119))

(check-sat (not b!201907) tp_is_empty!4929 (not b!201909) (not start!20426) (not b!201908) (not b!201900) (not b!201901) (not b!201905) (not mapNonEmpty!8462) b_and!11837 (not b_next!5073))
(check-sat b_and!11837 (not b_next!5073))
