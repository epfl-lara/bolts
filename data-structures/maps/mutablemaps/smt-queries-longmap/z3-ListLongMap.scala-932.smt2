; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20702 () Bool)

(assert start!20702)

(declare-fun b_free!5349 () Bool)

(declare-fun b_next!5349 () Bool)

(assert (=> start!20702 (= b_free!5349 (not b_next!5349))))

(declare-fun tp!19078 () Bool)

(declare-fun b_and!12113 () Bool)

(assert (=> start!20702 (= tp!19078 b_and!12113)))

(declare-fun b!206802 () Bool)

(declare-fun e!135113 () Bool)

(declare-fun e!135112 () Bool)

(declare-fun mapRes!8876 () Bool)

(assert (=> b!206802 (= e!135113 (and e!135112 mapRes!8876))))

(declare-fun condMapEmpty!8876 () Bool)

(declare-datatypes ((V!6587 0))(
  ( (V!6588 (val!2647 Int)) )
))
(declare-datatypes ((ValueCell!2259 0))(
  ( (ValueCellFull!2259 (v!4613 V!6587)) (EmptyCell!2259) )
))
(declare-datatypes ((array!9618 0))(
  ( (array!9619 (arr!4559 (Array (_ BitVec 32) ValueCell!2259)) (size!4884 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9618)

(declare-fun mapDefault!8876 () ValueCell!2259)

(assert (=> b!206802 (= condMapEmpty!8876 (= (arr!4559 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2259)) mapDefault!8876)))))

(declare-fun b!206803 () Bool)

(declare-fun res!100288 () Bool)

(declare-fun e!135111 () Bool)

(assert (=> b!206803 (=> (not res!100288) (not e!135111))))

(declare-datatypes ((array!9620 0))(
  ( (array!9621 (arr!4560 (Array (_ BitVec 32) (_ BitVec 64))) (size!4885 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9620)

(declare-datatypes ((List!2930 0))(
  ( (Nil!2927) (Cons!2926 (h!3568 (_ BitVec 64)) (t!7869 List!2930)) )
))
(declare-fun arrayNoDuplicates!0 (array!9620 (_ BitVec 32) List!2930) Bool)

(assert (=> b!206803 (= res!100288 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2927))))

(declare-fun b!206804 () Bool)

(declare-fun res!100289 () Bool)

(assert (=> b!206804 (=> (not res!100289) (not e!135111))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206804 (= res!100289 (validKeyInArray!0 k0!843))))

(declare-fun b!206805 () Bool)

(declare-fun res!100287 () Bool)

(assert (=> b!206805 (=> (not res!100287) (not e!135111))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206805 (= res!100287 (= (select (arr!4560 _keys!825) i!601) k0!843))))

(declare-fun b!206806 () Bool)

(declare-fun res!100286 () Bool)

(assert (=> b!206806 (=> (not res!100286) (not e!135111))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!206806 (= res!100286 (and (= (size!4884 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4885 _keys!825) (size!4884 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!100290 () Bool)

(assert (=> start!20702 (=> (not res!100290) (not e!135111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20702 (= res!100290 (validMask!0 mask!1149))))

(assert (=> start!20702 e!135111))

(declare-fun array_inv!3007 (array!9618) Bool)

(assert (=> start!20702 (and (array_inv!3007 _values!649) e!135113)))

(assert (=> start!20702 true))

(declare-fun tp_is_empty!5205 () Bool)

(assert (=> start!20702 tp_is_empty!5205))

(declare-fun array_inv!3008 (array!9620) Bool)

(assert (=> start!20702 (array_inv!3008 _keys!825)))

(assert (=> start!20702 tp!19078))

(declare-fun b!206807 () Bool)

(assert (=> b!206807 (= e!135111 (not true))))

(declare-datatypes ((tuple2!4016 0))(
  ( (tuple2!4017 (_1!2018 (_ BitVec 64)) (_2!2018 V!6587)) )
))
(declare-datatypes ((List!2931 0))(
  ( (Nil!2928) (Cons!2927 (h!3569 tuple2!4016) (t!7870 List!2931)) )
))
(declare-datatypes ((ListLongMap!2943 0))(
  ( (ListLongMap!2944 (toList!1487 List!2931)) )
))
(declare-fun lt!105880 () ListLongMap!2943)

(declare-fun zeroValue!615 () V!6587)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6587)

(declare-fun getCurrentListMap!1049 (array!9620 array!9618 (_ BitVec 32) (_ BitVec 32) V!6587 V!6587 (_ BitVec 32) Int) ListLongMap!2943)

(assert (=> b!206807 (= lt!105880 (getCurrentListMap!1049 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105879 () ListLongMap!2943)

(declare-fun lt!105877 () array!9618)

(assert (=> b!206807 (= lt!105879 (getCurrentListMap!1049 _keys!825 lt!105877 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105881 () ListLongMap!2943)

(declare-fun lt!105883 () ListLongMap!2943)

(assert (=> b!206807 (and (= lt!105881 lt!105883) (= lt!105883 lt!105881))))

(declare-fun lt!105882 () ListLongMap!2943)

(declare-fun v!520 () V!6587)

(declare-fun +!504 (ListLongMap!2943 tuple2!4016) ListLongMap!2943)

(assert (=> b!206807 (= lt!105883 (+!504 lt!105882 (tuple2!4017 k0!843 v!520)))))

(declare-datatypes ((Unit!6303 0))(
  ( (Unit!6304) )
))
(declare-fun lt!105878 () Unit!6303)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!162 (array!9620 array!9618 (_ BitVec 32) (_ BitVec 32) V!6587 V!6587 (_ BitVec 32) (_ BitVec 64) V!6587 (_ BitVec 32) Int) Unit!6303)

(assert (=> b!206807 (= lt!105878 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!162 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!420 (array!9620 array!9618 (_ BitVec 32) (_ BitVec 32) V!6587 V!6587 (_ BitVec 32) Int) ListLongMap!2943)

(assert (=> b!206807 (= lt!105881 (getCurrentListMapNoExtraKeys!420 _keys!825 lt!105877 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206807 (= lt!105877 (array!9619 (store (arr!4559 _values!649) i!601 (ValueCellFull!2259 v!520)) (size!4884 _values!649)))))

(assert (=> b!206807 (= lt!105882 (getCurrentListMapNoExtraKeys!420 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206808 () Bool)

(declare-fun e!135114 () Bool)

(assert (=> b!206808 (= e!135114 tp_is_empty!5205)))

(declare-fun b!206809 () Bool)

(assert (=> b!206809 (= e!135112 tp_is_empty!5205)))

(declare-fun b!206810 () Bool)

(declare-fun res!100291 () Bool)

(assert (=> b!206810 (=> (not res!100291) (not e!135111))))

(assert (=> b!206810 (= res!100291 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4885 _keys!825))))))

(declare-fun b!206811 () Bool)

(declare-fun res!100285 () Bool)

(assert (=> b!206811 (=> (not res!100285) (not e!135111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9620 (_ BitVec 32)) Bool)

(assert (=> b!206811 (= res!100285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8876 () Bool)

(declare-fun tp!19079 () Bool)

(assert (=> mapNonEmpty!8876 (= mapRes!8876 (and tp!19079 e!135114))))

(declare-fun mapRest!8876 () (Array (_ BitVec 32) ValueCell!2259))

(declare-fun mapValue!8876 () ValueCell!2259)

(declare-fun mapKey!8876 () (_ BitVec 32))

(assert (=> mapNonEmpty!8876 (= (arr!4559 _values!649) (store mapRest!8876 mapKey!8876 mapValue!8876))))

(declare-fun mapIsEmpty!8876 () Bool)

(assert (=> mapIsEmpty!8876 mapRes!8876))

(assert (= (and start!20702 res!100290) b!206806))

(assert (= (and b!206806 res!100286) b!206811))

(assert (= (and b!206811 res!100285) b!206803))

(assert (= (and b!206803 res!100288) b!206810))

(assert (= (and b!206810 res!100291) b!206804))

(assert (= (and b!206804 res!100289) b!206805))

(assert (= (and b!206805 res!100287) b!206807))

(assert (= (and b!206802 condMapEmpty!8876) mapIsEmpty!8876))

(assert (= (and b!206802 (not condMapEmpty!8876)) mapNonEmpty!8876))

(get-info :version)

(assert (= (and mapNonEmpty!8876 ((_ is ValueCellFull!2259) mapValue!8876)) b!206808))

(assert (= (and b!206802 ((_ is ValueCellFull!2259) mapDefault!8876)) b!206809))

(assert (= start!20702 b!206802))

(declare-fun m!234567 () Bool)

(assert (=> b!206807 m!234567))

(declare-fun m!234569 () Bool)

(assert (=> b!206807 m!234569))

(declare-fun m!234571 () Bool)

(assert (=> b!206807 m!234571))

(declare-fun m!234573 () Bool)

(assert (=> b!206807 m!234573))

(declare-fun m!234575 () Bool)

(assert (=> b!206807 m!234575))

(declare-fun m!234577 () Bool)

(assert (=> b!206807 m!234577))

(declare-fun m!234579 () Bool)

(assert (=> b!206807 m!234579))

(declare-fun m!234581 () Bool)

(assert (=> b!206805 m!234581))

(declare-fun m!234583 () Bool)

(assert (=> mapNonEmpty!8876 m!234583))

(declare-fun m!234585 () Bool)

(assert (=> b!206804 m!234585))

(declare-fun m!234587 () Bool)

(assert (=> b!206811 m!234587))

(declare-fun m!234589 () Bool)

(assert (=> start!20702 m!234589))

(declare-fun m!234591 () Bool)

(assert (=> start!20702 m!234591))

(declare-fun m!234593 () Bool)

(assert (=> start!20702 m!234593))

(declare-fun m!234595 () Bool)

(assert (=> b!206803 m!234595))

(check-sat (not b_next!5349) (not b!206804) (not b!206807) tp_is_empty!5205 (not mapNonEmpty!8876) (not b!206803) b_and!12113 (not b!206811) (not start!20702))
(check-sat b_and!12113 (not b_next!5349))
