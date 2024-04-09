; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20462 () Bool)

(assert start!20462)

(declare-fun b_free!5109 () Bool)

(declare-fun b_next!5109 () Bool)

(assert (=> start!20462 (= b_free!5109 (not b_next!5109))))

(declare-fun tp!18359 () Bool)

(declare-fun b_and!11873 () Bool)

(assert (=> start!20462 (= tp!18359 b_and!11873)))

(declare-fun b!202555 () Bool)

(declare-fun res!97122 () Bool)

(declare-fun e!132677 () Bool)

(assert (=> b!202555 (=> (not res!97122) (not e!132677))))

(declare-datatypes ((array!9154 0))(
  ( (array!9155 (arr!4327 (Array (_ BitVec 32) (_ BitVec 64))) (size!4652 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9154)

(declare-datatypes ((List!2757 0))(
  ( (Nil!2754) (Cons!2753 (h!3395 (_ BitVec 64)) (t!7696 List!2757)) )
))
(declare-fun arrayNoDuplicates!0 (array!9154 (_ BitVec 32) List!2757) Bool)

(assert (=> b!202555 (= res!97122 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2754))))

(declare-fun res!97120 () Bool)

(assert (=> start!20462 (=> (not res!97120) (not e!132677))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20462 (= res!97120 (validMask!0 mask!1149))))

(assert (=> start!20462 e!132677))

(declare-datatypes ((V!6267 0))(
  ( (V!6268 (val!2527 Int)) )
))
(declare-datatypes ((ValueCell!2139 0))(
  ( (ValueCellFull!2139 (v!4493 V!6267)) (EmptyCell!2139) )
))
(declare-datatypes ((array!9156 0))(
  ( (array!9157 (arr!4328 (Array (_ BitVec 32) ValueCell!2139)) (size!4653 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9156)

(declare-fun e!132678 () Bool)

(declare-fun array_inv!2845 (array!9156) Bool)

(assert (=> start!20462 (and (array_inv!2845 _values!649) e!132678)))

(assert (=> start!20462 true))

(declare-fun tp_is_empty!4965 () Bool)

(assert (=> start!20462 tp_is_empty!4965))

(declare-fun array_inv!2846 (array!9154) Bool)

(assert (=> start!20462 (array_inv!2846 _keys!825)))

(assert (=> start!20462 tp!18359))

(declare-fun b!202556 () Bool)

(declare-fun res!97126 () Bool)

(assert (=> b!202556 (=> (not res!97126) (not e!132677))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202556 (= res!97126 (and (= (size!4653 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4652 _keys!825) (size!4653 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202557 () Bool)

(declare-fun res!97119 () Bool)

(assert (=> b!202557 (=> (not res!97119) (not e!132677))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202557 (= res!97119 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4652 _keys!825))))))

(declare-fun b!202558 () Bool)

(declare-fun e!132676 () Bool)

(declare-fun mapRes!8516 () Bool)

(assert (=> b!202558 (= e!132678 (and e!132676 mapRes!8516))))

(declare-fun condMapEmpty!8516 () Bool)

(declare-fun mapDefault!8516 () ValueCell!2139)

(assert (=> b!202558 (= condMapEmpty!8516 (= (arr!4328 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2139)) mapDefault!8516)))))

(declare-fun b!202559 () Bool)

(declare-fun res!97118 () Bool)

(assert (=> b!202559 (=> (not res!97118) (not e!132677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9154 (_ BitVec 32)) Bool)

(assert (=> b!202559 (= res!97118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202560 () Bool)

(declare-fun e!132674 () Bool)

(assert (=> b!202560 (= e!132674 true)))

(declare-datatypes ((tuple2!3830 0))(
  ( (tuple2!3831 (_1!1925 (_ BitVec 64)) (_2!1925 V!6267)) )
))
(declare-datatypes ((List!2758 0))(
  ( (Nil!2755) (Cons!2754 (h!3396 tuple2!3830) (t!7697 List!2758)) )
))
(declare-datatypes ((ListLongMap!2757 0))(
  ( (ListLongMap!2758 (toList!1394 List!2758)) )
))
(declare-fun lt!101799 () ListLongMap!2757)

(declare-fun lt!101801 () ListLongMap!2757)

(declare-fun lt!101802 () tuple2!3830)

(declare-fun +!411 (ListLongMap!2757 tuple2!3830) ListLongMap!2757)

(assert (=> b!202560 (= lt!101799 (+!411 lt!101801 lt!101802))))

(declare-fun v!520 () V!6267)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun lt!101808 () ListLongMap!2757)

(declare-fun zeroValue!615 () V!6267)

(declare-datatypes ((Unit!6123 0))(
  ( (Unit!6124) )
))
(declare-fun lt!101804 () Unit!6123)

(declare-fun addCommutativeForDiffKeys!127 (ListLongMap!2757 (_ BitVec 64) V!6267 (_ BitVec 64) V!6267) Unit!6123)

(assert (=> b!202560 (= lt!101804 (addCommutativeForDiffKeys!127 lt!101808 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202561 () Bool)

(declare-fun e!132673 () Bool)

(assert (=> b!202561 (= e!132673 e!132674)))

(declare-fun res!97123 () Bool)

(assert (=> b!202561 (=> res!97123 e!132674)))

(assert (=> b!202561 (= res!97123 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!101805 () ListLongMap!2757)

(assert (=> b!202561 (= lt!101805 lt!101799)))

(declare-fun lt!101803 () ListLongMap!2757)

(declare-fun lt!101807 () tuple2!3830)

(assert (=> b!202561 (= lt!101799 (+!411 lt!101803 lt!101807))))

(declare-fun lt!101806 () ListLongMap!2757)

(assert (=> b!202561 (= lt!101806 lt!101801)))

(assert (=> b!202561 (= lt!101801 (+!411 lt!101808 lt!101807))))

(declare-fun lt!101800 () ListLongMap!2757)

(assert (=> b!202561 (= lt!101805 (+!411 lt!101800 lt!101807))))

(assert (=> b!202561 (= lt!101807 (tuple2!3831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202562 () Bool)

(assert (=> b!202562 (= e!132676 tp_is_empty!4965)))

(declare-fun b!202563 () Bool)

(declare-fun res!97124 () Bool)

(assert (=> b!202563 (=> (not res!97124) (not e!132677))))

(assert (=> b!202563 (= res!97124 (= (select (arr!4327 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!8516 () Bool)

(declare-fun tp!18358 () Bool)

(declare-fun e!132679 () Bool)

(assert (=> mapNonEmpty!8516 (= mapRes!8516 (and tp!18358 e!132679))))

(declare-fun mapRest!8516 () (Array (_ BitVec 32) ValueCell!2139))

(declare-fun mapValue!8516 () ValueCell!2139)

(declare-fun mapKey!8516 () (_ BitVec 32))

(assert (=> mapNonEmpty!8516 (= (arr!4328 _values!649) (store mapRest!8516 mapKey!8516 mapValue!8516))))

(declare-fun b!202564 () Bool)

(assert (=> b!202564 (= e!132679 tp_is_empty!4965)))

(declare-fun b!202565 () Bool)

(declare-fun res!97125 () Bool)

(assert (=> b!202565 (=> (not res!97125) (not e!132677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202565 (= res!97125 (validKeyInArray!0 k0!843))))

(declare-fun mapIsEmpty!8516 () Bool)

(assert (=> mapIsEmpty!8516 mapRes!8516))

(declare-fun b!202566 () Bool)

(assert (=> b!202566 (= e!132677 (not e!132673))))

(declare-fun res!97121 () Bool)

(assert (=> b!202566 (=> res!97121 e!132673)))

(assert (=> b!202566 (= res!97121 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6267)

(declare-fun getCurrentListMap!968 (array!9154 array!9156 (_ BitVec 32) (_ BitVec 32) V!6267 V!6267 (_ BitVec 32) Int) ListLongMap!2757)

(assert (=> b!202566 (= lt!101806 (getCurrentListMap!968 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101798 () array!9156)

(assert (=> b!202566 (= lt!101805 (getCurrentListMap!968 _keys!825 lt!101798 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202566 (and (= lt!101800 lt!101803) (= lt!101803 lt!101800))))

(assert (=> b!202566 (= lt!101803 (+!411 lt!101808 lt!101802))))

(assert (=> b!202566 (= lt!101802 (tuple2!3831 k0!843 v!520))))

(declare-fun lt!101809 () Unit!6123)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!81 (array!9154 array!9156 (_ BitVec 32) (_ BitVec 32) V!6267 V!6267 (_ BitVec 32) (_ BitVec 64) V!6267 (_ BitVec 32) Int) Unit!6123)

(assert (=> b!202566 (= lt!101809 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!81 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!339 (array!9154 array!9156 (_ BitVec 32) (_ BitVec 32) V!6267 V!6267 (_ BitVec 32) Int) ListLongMap!2757)

(assert (=> b!202566 (= lt!101800 (getCurrentListMapNoExtraKeys!339 _keys!825 lt!101798 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202566 (= lt!101798 (array!9157 (store (arr!4328 _values!649) i!601 (ValueCellFull!2139 v!520)) (size!4653 _values!649)))))

(assert (=> b!202566 (= lt!101808 (getCurrentListMapNoExtraKeys!339 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20462 res!97120) b!202556))

(assert (= (and b!202556 res!97126) b!202559))

(assert (= (and b!202559 res!97118) b!202555))

(assert (= (and b!202555 res!97122) b!202557))

(assert (= (and b!202557 res!97119) b!202565))

(assert (= (and b!202565 res!97125) b!202563))

(assert (= (and b!202563 res!97124) b!202566))

(assert (= (and b!202566 (not res!97121)) b!202561))

(assert (= (and b!202561 (not res!97123)) b!202560))

(assert (= (and b!202558 condMapEmpty!8516) mapIsEmpty!8516))

(assert (= (and b!202558 (not condMapEmpty!8516)) mapNonEmpty!8516))

(get-info :version)

(assert (= (and mapNonEmpty!8516 ((_ is ValueCellFull!2139) mapValue!8516)) b!202564))

(assert (= (and b!202558 ((_ is ValueCellFull!2139) mapDefault!8516)) b!202562))

(assert (= start!20462 b!202558))

(declare-fun m!229909 () Bool)

(assert (=> b!202561 m!229909))

(declare-fun m!229911 () Bool)

(assert (=> b!202561 m!229911))

(declare-fun m!229913 () Bool)

(assert (=> b!202561 m!229913))

(declare-fun m!229915 () Bool)

(assert (=> b!202560 m!229915))

(declare-fun m!229917 () Bool)

(assert (=> b!202560 m!229917))

(declare-fun m!229919 () Bool)

(assert (=> start!20462 m!229919))

(declare-fun m!229921 () Bool)

(assert (=> start!20462 m!229921))

(declare-fun m!229923 () Bool)

(assert (=> start!20462 m!229923))

(declare-fun m!229925 () Bool)

(assert (=> b!202563 m!229925))

(declare-fun m!229927 () Bool)

(assert (=> b!202565 m!229927))

(declare-fun m!229929 () Bool)

(assert (=> b!202555 m!229929))

(declare-fun m!229931 () Bool)

(assert (=> b!202566 m!229931))

(declare-fun m!229933 () Bool)

(assert (=> b!202566 m!229933))

(declare-fun m!229935 () Bool)

(assert (=> b!202566 m!229935))

(declare-fun m!229937 () Bool)

(assert (=> b!202566 m!229937))

(declare-fun m!229939 () Bool)

(assert (=> b!202566 m!229939))

(declare-fun m!229941 () Bool)

(assert (=> b!202566 m!229941))

(declare-fun m!229943 () Bool)

(assert (=> b!202566 m!229943))

(declare-fun m!229945 () Bool)

(assert (=> b!202559 m!229945))

(declare-fun m!229947 () Bool)

(assert (=> mapNonEmpty!8516 m!229947))

(check-sat (not b!202560) tp_is_empty!4965 (not mapNonEmpty!8516) (not start!20462) (not b!202566) (not b!202561) b_and!11873 (not b!202565) (not b!202559) (not b!202555) (not b_next!5109))
(check-sat b_and!11873 (not b_next!5109))
