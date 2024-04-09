; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20714 () Bool)

(assert start!20714)

(declare-fun b_free!5361 () Bool)

(declare-fun b_next!5361 () Bool)

(assert (=> start!20714 (= b_free!5361 (not b_next!5361))))

(declare-fun tp!19115 () Bool)

(declare-fun b_and!12125 () Bool)

(assert (=> start!20714 (= tp!19115 b_and!12125)))

(declare-fun b!206982 () Bool)

(declare-fun e!135203 () Bool)

(declare-fun e!135201 () Bool)

(declare-fun mapRes!8894 () Bool)

(assert (=> b!206982 (= e!135203 (and e!135201 mapRes!8894))))

(declare-fun condMapEmpty!8894 () Bool)

(declare-datatypes ((V!6603 0))(
  ( (V!6604 (val!2653 Int)) )
))
(declare-datatypes ((ValueCell!2265 0))(
  ( (ValueCellFull!2265 (v!4619 V!6603)) (EmptyCell!2265) )
))
(declare-datatypes ((array!9642 0))(
  ( (array!9643 (arr!4571 (Array (_ BitVec 32) ValueCell!2265)) (size!4896 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9642)

(declare-fun mapDefault!8894 () ValueCell!2265)

(assert (=> b!206982 (= condMapEmpty!8894 (= (arr!4571 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2265)) mapDefault!8894)))))

(declare-fun mapIsEmpty!8894 () Bool)

(assert (=> mapIsEmpty!8894 mapRes!8894))

(declare-fun b!206983 () Bool)

(declare-fun e!135205 () Bool)

(declare-fun tp_is_empty!5217 () Bool)

(assert (=> b!206983 (= e!135205 tp_is_empty!5217)))

(declare-fun res!100416 () Bool)

(declare-fun e!135202 () Bool)

(assert (=> start!20714 (=> (not res!100416) (not e!135202))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20714 (= res!100416 (validMask!0 mask!1149))))

(assert (=> start!20714 e!135202))

(declare-fun array_inv!3015 (array!9642) Bool)

(assert (=> start!20714 (and (array_inv!3015 _values!649) e!135203)))

(assert (=> start!20714 true))

(assert (=> start!20714 tp_is_empty!5217))

(declare-datatypes ((array!9644 0))(
  ( (array!9645 (arr!4572 (Array (_ BitVec 32) (_ BitVec 64))) (size!4897 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9644)

(declare-fun array_inv!3016 (array!9644) Bool)

(assert (=> start!20714 (array_inv!3016 _keys!825)))

(assert (=> start!20714 tp!19115))

(declare-fun b!206984 () Bool)

(declare-fun res!100413 () Bool)

(assert (=> b!206984 (=> (not res!100413) (not e!135202))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206984 (= res!100413 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4897 _keys!825))))))

(declare-fun b!206985 () Bool)

(declare-fun res!100414 () Bool)

(assert (=> b!206985 (=> (not res!100414) (not e!135202))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206985 (= res!100414 (validKeyInArray!0 k0!843))))

(declare-fun b!206986 () Bool)

(declare-fun res!100412 () Bool)

(assert (=> b!206986 (=> (not res!100412) (not e!135202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9644 (_ BitVec 32)) Bool)

(assert (=> b!206986 (= res!100412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206987 () Bool)

(declare-fun res!100415 () Bool)

(assert (=> b!206987 (=> (not res!100415) (not e!135202))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!206987 (= res!100415 (and (= (size!4896 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4897 _keys!825) (size!4896 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206988 () Bool)

(assert (=> b!206988 (= e!135202 (not true))))

(declare-fun zeroValue!615 () V!6603)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6603)

(declare-datatypes ((tuple2!4024 0))(
  ( (tuple2!4025 (_1!2022 (_ BitVec 64)) (_2!2022 V!6603)) )
))
(declare-datatypes ((List!2938 0))(
  ( (Nil!2935) (Cons!2934 (h!3576 tuple2!4024) (t!7877 List!2938)) )
))
(declare-datatypes ((ListLongMap!2951 0))(
  ( (ListLongMap!2952 (toList!1491 List!2938)) )
))
(declare-fun lt!106007 () ListLongMap!2951)

(declare-fun getCurrentListMap!1053 (array!9644 array!9642 (_ BitVec 32) (_ BitVec 32) V!6603 V!6603 (_ BitVec 32) Int) ListLongMap!2951)

(assert (=> b!206988 (= lt!106007 (getCurrentListMap!1053 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106009 () ListLongMap!2951)

(declare-fun lt!106005 () array!9642)

(assert (=> b!206988 (= lt!106009 (getCurrentListMap!1053 _keys!825 lt!106005 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106004 () ListLongMap!2951)

(declare-fun lt!106008 () ListLongMap!2951)

(assert (=> b!206988 (and (= lt!106004 lt!106008) (= lt!106008 lt!106004))))

(declare-fun v!520 () V!6603)

(declare-fun lt!106003 () ListLongMap!2951)

(declare-fun +!508 (ListLongMap!2951 tuple2!4024) ListLongMap!2951)

(assert (=> b!206988 (= lt!106008 (+!508 lt!106003 (tuple2!4025 k0!843 v!520)))))

(declare-datatypes ((Unit!6311 0))(
  ( (Unit!6312) )
))
(declare-fun lt!106006 () Unit!6311)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!166 (array!9644 array!9642 (_ BitVec 32) (_ BitVec 32) V!6603 V!6603 (_ BitVec 32) (_ BitVec 64) V!6603 (_ BitVec 32) Int) Unit!6311)

(assert (=> b!206988 (= lt!106006 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!166 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!424 (array!9644 array!9642 (_ BitVec 32) (_ BitVec 32) V!6603 V!6603 (_ BitVec 32) Int) ListLongMap!2951)

(assert (=> b!206988 (= lt!106004 (getCurrentListMapNoExtraKeys!424 _keys!825 lt!106005 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206988 (= lt!106005 (array!9643 (store (arr!4571 _values!649) i!601 (ValueCellFull!2265 v!520)) (size!4896 _values!649)))))

(assert (=> b!206988 (= lt!106003 (getCurrentListMapNoExtraKeys!424 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206989 () Bool)

(declare-fun res!100417 () Bool)

(assert (=> b!206989 (=> (not res!100417) (not e!135202))))

(assert (=> b!206989 (= res!100417 (= (select (arr!4572 _keys!825) i!601) k0!843))))

(declare-fun b!206990 () Bool)

(declare-fun res!100411 () Bool)

(assert (=> b!206990 (=> (not res!100411) (not e!135202))))

(declare-datatypes ((List!2939 0))(
  ( (Nil!2936) (Cons!2935 (h!3577 (_ BitVec 64)) (t!7878 List!2939)) )
))
(declare-fun arrayNoDuplicates!0 (array!9644 (_ BitVec 32) List!2939) Bool)

(assert (=> b!206990 (= res!100411 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2936))))

(declare-fun mapNonEmpty!8894 () Bool)

(declare-fun tp!19114 () Bool)

(assert (=> mapNonEmpty!8894 (= mapRes!8894 (and tp!19114 e!135205))))

(declare-fun mapRest!8894 () (Array (_ BitVec 32) ValueCell!2265))

(declare-fun mapValue!8894 () ValueCell!2265)

(declare-fun mapKey!8894 () (_ BitVec 32))

(assert (=> mapNonEmpty!8894 (= (arr!4571 _values!649) (store mapRest!8894 mapKey!8894 mapValue!8894))))

(declare-fun b!206991 () Bool)

(assert (=> b!206991 (= e!135201 tp_is_empty!5217)))

(assert (= (and start!20714 res!100416) b!206987))

(assert (= (and b!206987 res!100415) b!206986))

(assert (= (and b!206986 res!100412) b!206990))

(assert (= (and b!206990 res!100411) b!206984))

(assert (= (and b!206984 res!100413) b!206985))

(assert (= (and b!206985 res!100414) b!206989))

(assert (= (and b!206989 res!100417) b!206988))

(assert (= (and b!206982 condMapEmpty!8894) mapIsEmpty!8894))

(assert (= (and b!206982 (not condMapEmpty!8894)) mapNonEmpty!8894))

(get-info :version)

(assert (= (and mapNonEmpty!8894 ((_ is ValueCellFull!2265) mapValue!8894)) b!206983))

(assert (= (and b!206982 ((_ is ValueCellFull!2265) mapDefault!8894)) b!206991))

(assert (= start!20714 b!206982))

(declare-fun m!234747 () Bool)

(assert (=> mapNonEmpty!8894 m!234747))

(declare-fun m!234749 () Bool)

(assert (=> b!206986 m!234749))

(declare-fun m!234751 () Bool)

(assert (=> b!206988 m!234751))

(declare-fun m!234753 () Bool)

(assert (=> b!206988 m!234753))

(declare-fun m!234755 () Bool)

(assert (=> b!206988 m!234755))

(declare-fun m!234757 () Bool)

(assert (=> b!206988 m!234757))

(declare-fun m!234759 () Bool)

(assert (=> b!206988 m!234759))

(declare-fun m!234761 () Bool)

(assert (=> b!206988 m!234761))

(declare-fun m!234763 () Bool)

(assert (=> b!206988 m!234763))

(declare-fun m!234765 () Bool)

(assert (=> b!206985 m!234765))

(declare-fun m!234767 () Bool)

(assert (=> start!20714 m!234767))

(declare-fun m!234769 () Bool)

(assert (=> start!20714 m!234769))

(declare-fun m!234771 () Bool)

(assert (=> start!20714 m!234771))

(declare-fun m!234773 () Bool)

(assert (=> b!206989 m!234773))

(declare-fun m!234775 () Bool)

(assert (=> b!206990 m!234775))

(check-sat b_and!12125 tp_is_empty!5217 (not mapNonEmpty!8894) (not b!206986) (not b!206988) (not b_next!5361) (not b!206985) (not b!206990) (not start!20714))
(check-sat b_and!12125 (not b_next!5361))
