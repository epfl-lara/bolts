; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20780 () Bool)

(assert start!20780)

(declare-fun b_free!5427 () Bool)

(declare-fun b_next!5427 () Bool)

(assert (=> start!20780 (= b_free!5427 (not b_next!5427))))

(declare-fun tp!19312 () Bool)

(declare-fun b_and!12191 () Bool)

(assert (=> start!20780 (= tp!19312 b_and!12191)))

(declare-fun b!207972 () Bool)

(declare-fun res!101108 () Bool)

(declare-fun e!135697 () Bool)

(assert (=> b!207972 (=> (not res!101108) (not e!135697))))

(declare-datatypes ((array!9770 0))(
  ( (array!9771 (arr!4635 (Array (_ BitVec 32) (_ BitVec 64))) (size!4960 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9770)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207972 (= res!101108 (= (select (arr!4635 _keys!825) i!601) k0!843))))

(declare-fun b!207974 () Bool)

(declare-fun e!135698 () Bool)

(declare-fun e!135699 () Bool)

(declare-fun mapRes!8993 () Bool)

(assert (=> b!207974 (= e!135698 (and e!135699 mapRes!8993))))

(declare-fun condMapEmpty!8993 () Bool)

(declare-datatypes ((V!6691 0))(
  ( (V!6692 (val!2686 Int)) )
))
(declare-datatypes ((ValueCell!2298 0))(
  ( (ValueCellFull!2298 (v!4652 V!6691)) (EmptyCell!2298) )
))
(declare-datatypes ((array!9772 0))(
  ( (array!9773 (arr!4636 (Array (_ BitVec 32) ValueCell!2298)) (size!4961 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9772)

(declare-fun mapDefault!8993 () ValueCell!2298)

(assert (=> b!207974 (= condMapEmpty!8993 (= (arr!4636 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2298)) mapDefault!8993)))))

(declare-fun b!207975 () Bool)

(declare-fun res!101107 () Bool)

(assert (=> b!207975 (=> (not res!101107) (not e!135697))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9770 (_ BitVec 32)) Bool)

(assert (=> b!207975 (= res!101107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207976 () Bool)

(declare-fun e!135696 () Bool)

(declare-fun tp_is_empty!5283 () Bool)

(assert (=> b!207976 (= e!135696 tp_is_empty!5283)))

(declare-fun b!207977 () Bool)

(declare-fun res!101109 () Bool)

(assert (=> b!207977 (=> (not res!101109) (not e!135697))))

(declare-datatypes ((List!2988 0))(
  ( (Nil!2985) (Cons!2984 (h!3626 (_ BitVec 64)) (t!7927 List!2988)) )
))
(declare-fun arrayNoDuplicates!0 (array!9770 (_ BitVec 32) List!2988) Bool)

(assert (=> b!207977 (= res!101109 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2985))))

(declare-fun mapIsEmpty!8993 () Bool)

(assert (=> mapIsEmpty!8993 mapRes!8993))

(declare-fun b!207978 () Bool)

(declare-fun res!101104 () Bool)

(assert (=> b!207978 (=> (not res!101104) (not e!135697))))

(assert (=> b!207978 (= res!101104 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4960 _keys!825))))))

(declare-fun b!207979 () Bool)

(assert (=> b!207979 (= e!135699 tp_is_empty!5283)))

(declare-fun b!207980 () Bool)

(declare-fun res!101110 () Bool)

(assert (=> b!207980 (=> (not res!101110) (not e!135697))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!207980 (= res!101110 (and (= (size!4961 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4960 _keys!825) (size!4961 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207973 () Bool)

(declare-fun res!101105 () Bool)

(assert (=> b!207973 (=> (not res!101105) (not e!135697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207973 (= res!101105 (validKeyInArray!0 k0!843))))

(declare-fun res!101106 () Bool)

(assert (=> start!20780 (=> (not res!101106) (not e!135697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20780 (= res!101106 (validMask!0 mask!1149))))

(assert (=> start!20780 e!135697))

(declare-fun array_inv!3063 (array!9772) Bool)

(assert (=> start!20780 (and (array_inv!3063 _values!649) e!135698)))

(assert (=> start!20780 true))

(assert (=> start!20780 tp_is_empty!5283))

(declare-fun array_inv!3064 (array!9770) Bool)

(assert (=> start!20780 (array_inv!3064 _keys!825)))

(assert (=> start!20780 tp!19312))

(declare-fun mapNonEmpty!8993 () Bool)

(declare-fun tp!19313 () Bool)

(assert (=> mapNonEmpty!8993 (= mapRes!8993 (and tp!19313 e!135696))))

(declare-fun mapRest!8993 () (Array (_ BitVec 32) ValueCell!2298))

(declare-fun mapKey!8993 () (_ BitVec 32))

(declare-fun mapValue!8993 () ValueCell!2298)

(assert (=> mapNonEmpty!8993 (= (arr!4636 _values!649) (store mapRest!8993 mapKey!8993 mapValue!8993))))

(declare-fun lt!106711 () Bool)

(declare-datatypes ((tuple2!4072 0))(
  ( (tuple2!4073 (_1!2046 (_ BitVec 64)) (_2!2046 V!6691)) )
))
(declare-datatypes ((List!2989 0))(
  ( (Nil!2986) (Cons!2985 (h!3627 tuple2!4072) (t!7928 List!2989)) )
))
(declare-datatypes ((ListLongMap!2999 0))(
  ( (ListLongMap!3000 (toList!1515 List!2989)) )
))
(declare-fun lt!106712 () ListLongMap!2999)

(declare-fun b!207981 () Bool)

(declare-fun lt!106715 () ListLongMap!2999)

(assert (=> b!207981 (= e!135697 (not (or (and (not lt!106711) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!106711) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!106711) (not (= lt!106715 lt!106712)) (bvsle #b00000000000000000000000000000000 (size!4960 _keys!825)))))))

(assert (=> b!207981 (= lt!106711 (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!106717 () ListLongMap!2999)

(declare-fun zeroValue!615 () V!6691)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6691)

(declare-fun getCurrentListMap!1077 (array!9770 array!9772 (_ BitVec 32) (_ BitVec 32) V!6691 V!6691 (_ BitVec 32) Int) ListLongMap!2999)

(assert (=> b!207981 (= lt!106717 (getCurrentListMap!1077 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106713 () array!9772)

(assert (=> b!207981 (= lt!106715 (getCurrentListMap!1077 _keys!825 lt!106713 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106710 () ListLongMap!2999)

(assert (=> b!207981 (and (= lt!106712 lt!106710) (= lt!106710 lt!106712))))

(declare-fun lt!106716 () ListLongMap!2999)

(declare-fun v!520 () V!6691)

(declare-fun +!532 (ListLongMap!2999 tuple2!4072) ListLongMap!2999)

(assert (=> b!207981 (= lt!106710 (+!532 lt!106716 (tuple2!4073 k0!843 v!520)))))

(declare-datatypes ((Unit!6359 0))(
  ( (Unit!6360) )
))
(declare-fun lt!106714 () Unit!6359)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!190 (array!9770 array!9772 (_ BitVec 32) (_ BitVec 32) V!6691 V!6691 (_ BitVec 32) (_ BitVec 64) V!6691 (_ BitVec 32) Int) Unit!6359)

(assert (=> b!207981 (= lt!106714 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!190 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!448 (array!9770 array!9772 (_ BitVec 32) (_ BitVec 32) V!6691 V!6691 (_ BitVec 32) Int) ListLongMap!2999)

(assert (=> b!207981 (= lt!106712 (getCurrentListMapNoExtraKeys!448 _keys!825 lt!106713 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207981 (= lt!106713 (array!9773 (store (arr!4636 _values!649) i!601 (ValueCellFull!2298 v!520)) (size!4961 _values!649)))))

(assert (=> b!207981 (= lt!106716 (getCurrentListMapNoExtraKeys!448 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20780 res!101106) b!207980))

(assert (= (and b!207980 res!101110) b!207975))

(assert (= (and b!207975 res!101107) b!207977))

(assert (= (and b!207977 res!101109) b!207978))

(assert (= (and b!207978 res!101104) b!207973))

(assert (= (and b!207973 res!101105) b!207972))

(assert (= (and b!207972 res!101108) b!207981))

(assert (= (and b!207974 condMapEmpty!8993) mapIsEmpty!8993))

(assert (= (and b!207974 (not condMapEmpty!8993)) mapNonEmpty!8993))

(get-info :version)

(assert (= (and mapNonEmpty!8993 ((_ is ValueCellFull!2298) mapValue!8993)) b!207976))

(assert (= (and b!207974 ((_ is ValueCellFull!2298) mapDefault!8993)) b!207979))

(assert (= start!20780 b!207974))

(declare-fun m!235737 () Bool)

(assert (=> b!207977 m!235737))

(declare-fun m!235739 () Bool)

(assert (=> b!207973 m!235739))

(declare-fun m!235741 () Bool)

(assert (=> b!207981 m!235741))

(declare-fun m!235743 () Bool)

(assert (=> b!207981 m!235743))

(declare-fun m!235745 () Bool)

(assert (=> b!207981 m!235745))

(declare-fun m!235747 () Bool)

(assert (=> b!207981 m!235747))

(declare-fun m!235749 () Bool)

(assert (=> b!207981 m!235749))

(declare-fun m!235751 () Bool)

(assert (=> b!207981 m!235751))

(declare-fun m!235753 () Bool)

(assert (=> b!207981 m!235753))

(declare-fun m!235755 () Bool)

(assert (=> b!207975 m!235755))

(declare-fun m!235757 () Bool)

(assert (=> b!207972 m!235757))

(declare-fun m!235759 () Bool)

(assert (=> mapNonEmpty!8993 m!235759))

(declare-fun m!235761 () Bool)

(assert (=> start!20780 m!235761))

(declare-fun m!235763 () Bool)

(assert (=> start!20780 m!235763))

(declare-fun m!235765 () Bool)

(assert (=> start!20780 m!235765))

(check-sat (not mapNonEmpty!8993) (not b_next!5427) tp_is_empty!5283 (not b!207981) (not b!207973) (not b!207977) b_and!12191 (not start!20780) (not b!207975))
(check-sat b_and!12191 (not b_next!5427))
