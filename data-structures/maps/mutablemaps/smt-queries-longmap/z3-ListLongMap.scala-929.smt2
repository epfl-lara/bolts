; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20684 () Bool)

(assert start!20684)

(declare-fun b_free!5331 () Bool)

(declare-fun b_next!5331 () Bool)

(assert (=> start!20684 (= b_free!5331 (not b_next!5331))))

(declare-fun tp!19025 () Bool)

(declare-fun b_and!12095 () Bool)

(assert (=> start!20684 (= tp!19025 b_and!12095)))

(declare-fun b!206532 () Bool)

(declare-fun res!100100 () Bool)

(declare-fun e!134979 () Bool)

(assert (=> b!206532 (=> (not res!100100) (not e!134979))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206532 (= res!100100 (validKeyInArray!0 k0!843))))

(declare-fun mapIsEmpty!8849 () Bool)

(declare-fun mapRes!8849 () Bool)

(assert (=> mapIsEmpty!8849 mapRes!8849))

(declare-fun b!206533 () Bool)

(declare-fun e!134980 () Bool)

(declare-fun tp_is_empty!5187 () Bool)

(assert (=> b!206533 (= e!134980 tp_is_empty!5187)))

(declare-fun b!206534 () Bool)

(declare-fun e!134976 () Bool)

(declare-fun e!134977 () Bool)

(assert (=> b!206534 (= e!134976 (and e!134977 mapRes!8849))))

(declare-fun condMapEmpty!8849 () Bool)

(declare-datatypes ((V!6563 0))(
  ( (V!6564 (val!2638 Int)) )
))
(declare-datatypes ((ValueCell!2250 0))(
  ( (ValueCellFull!2250 (v!4604 V!6563)) (EmptyCell!2250) )
))
(declare-datatypes ((array!9584 0))(
  ( (array!9585 (arr!4542 (Array (_ BitVec 32) ValueCell!2250)) (size!4867 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9584)

(declare-fun mapDefault!8849 () ValueCell!2250)

(assert (=> b!206534 (= condMapEmpty!8849 (= (arr!4542 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2250)) mapDefault!8849)))))

(declare-fun res!100097 () Bool)

(assert (=> start!20684 (=> (not res!100097) (not e!134979))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20684 (= res!100097 (validMask!0 mask!1149))))

(assert (=> start!20684 e!134979))

(declare-fun array_inv!2995 (array!9584) Bool)

(assert (=> start!20684 (and (array_inv!2995 _values!649) e!134976)))

(assert (=> start!20684 true))

(assert (=> start!20684 tp_is_empty!5187))

(declare-datatypes ((array!9586 0))(
  ( (array!9587 (arr!4543 (Array (_ BitVec 32) (_ BitVec 64))) (size!4868 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9586)

(declare-fun array_inv!2996 (array!9586) Bool)

(assert (=> start!20684 (array_inv!2996 _keys!825)))

(assert (=> start!20684 tp!19025))

(declare-fun b!206535 () Bool)

(declare-fun res!100099 () Bool)

(assert (=> b!206535 (=> (not res!100099) (not e!134979))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206535 (= res!100099 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4868 _keys!825))))))

(declare-fun b!206536 () Bool)

(assert (=> b!206536 (= e!134979 (not true))))

(declare-datatypes ((tuple2!4002 0))(
  ( (tuple2!4003 (_1!2011 (_ BitVec 64)) (_2!2011 V!6563)) )
))
(declare-datatypes ((List!2918 0))(
  ( (Nil!2915) (Cons!2914 (h!3556 tuple2!4002) (t!7857 List!2918)) )
))
(declare-datatypes ((ListLongMap!2929 0))(
  ( (ListLongMap!2930 (toList!1480 List!2918)) )
))
(declare-fun lt!105688 () ListLongMap!2929)

(declare-fun zeroValue!615 () V!6563)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6563)

(declare-fun getCurrentListMap!1042 (array!9586 array!9584 (_ BitVec 32) (_ BitVec 32) V!6563 V!6563 (_ BitVec 32) Int) ListLongMap!2929)

(assert (=> b!206536 (= lt!105688 (getCurrentListMap!1042 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105694 () ListLongMap!2929)

(declare-fun lt!105691 () array!9584)

(assert (=> b!206536 (= lt!105694 (getCurrentListMap!1042 _keys!825 lt!105691 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105692 () ListLongMap!2929)

(declare-fun lt!105690 () ListLongMap!2929)

(assert (=> b!206536 (and (= lt!105692 lt!105690) (= lt!105690 lt!105692))))

(declare-fun lt!105689 () ListLongMap!2929)

(declare-fun v!520 () V!6563)

(declare-fun +!497 (ListLongMap!2929 tuple2!4002) ListLongMap!2929)

(assert (=> b!206536 (= lt!105690 (+!497 lt!105689 (tuple2!4003 k0!843 v!520)))))

(declare-datatypes ((Unit!6289 0))(
  ( (Unit!6290) )
))
(declare-fun lt!105693 () Unit!6289)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!155 (array!9586 array!9584 (_ BitVec 32) (_ BitVec 32) V!6563 V!6563 (_ BitVec 32) (_ BitVec 64) V!6563 (_ BitVec 32) Int) Unit!6289)

(assert (=> b!206536 (= lt!105693 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!155 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!413 (array!9586 array!9584 (_ BitVec 32) (_ BitVec 32) V!6563 V!6563 (_ BitVec 32) Int) ListLongMap!2929)

(assert (=> b!206536 (= lt!105692 (getCurrentListMapNoExtraKeys!413 _keys!825 lt!105691 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206536 (= lt!105691 (array!9585 (store (arr!4542 _values!649) i!601 (ValueCellFull!2250 v!520)) (size!4867 _values!649)))))

(assert (=> b!206536 (= lt!105689 (getCurrentListMapNoExtraKeys!413 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!8849 () Bool)

(declare-fun tp!19024 () Bool)

(assert (=> mapNonEmpty!8849 (= mapRes!8849 (and tp!19024 e!134980))))

(declare-fun mapValue!8849 () ValueCell!2250)

(declare-fun mapKey!8849 () (_ BitVec 32))

(declare-fun mapRest!8849 () (Array (_ BitVec 32) ValueCell!2250))

(assert (=> mapNonEmpty!8849 (= (arr!4542 _values!649) (store mapRest!8849 mapKey!8849 mapValue!8849))))

(declare-fun b!206537 () Bool)

(declare-fun res!100098 () Bool)

(assert (=> b!206537 (=> (not res!100098) (not e!134979))))

(assert (=> b!206537 (= res!100098 (and (= (size!4867 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4868 _keys!825) (size!4867 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206538 () Bool)

(assert (=> b!206538 (= e!134977 tp_is_empty!5187)))

(declare-fun b!206539 () Bool)

(declare-fun res!100096 () Bool)

(assert (=> b!206539 (=> (not res!100096) (not e!134979))))

(declare-datatypes ((List!2919 0))(
  ( (Nil!2916) (Cons!2915 (h!3557 (_ BitVec 64)) (t!7858 List!2919)) )
))
(declare-fun arrayNoDuplicates!0 (array!9586 (_ BitVec 32) List!2919) Bool)

(assert (=> b!206539 (= res!100096 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2916))))

(declare-fun b!206540 () Bool)

(declare-fun res!100101 () Bool)

(assert (=> b!206540 (=> (not res!100101) (not e!134979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9586 (_ BitVec 32)) Bool)

(assert (=> b!206540 (= res!100101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206541 () Bool)

(declare-fun res!100102 () Bool)

(assert (=> b!206541 (=> (not res!100102) (not e!134979))))

(assert (=> b!206541 (= res!100102 (= (select (arr!4543 _keys!825) i!601) k0!843))))

(assert (= (and start!20684 res!100097) b!206537))

(assert (= (and b!206537 res!100098) b!206540))

(assert (= (and b!206540 res!100101) b!206539))

(assert (= (and b!206539 res!100096) b!206535))

(assert (= (and b!206535 res!100099) b!206532))

(assert (= (and b!206532 res!100100) b!206541))

(assert (= (and b!206541 res!100102) b!206536))

(assert (= (and b!206534 condMapEmpty!8849) mapIsEmpty!8849))

(assert (= (and b!206534 (not condMapEmpty!8849)) mapNonEmpty!8849))

(get-info :version)

(assert (= (and mapNonEmpty!8849 ((_ is ValueCellFull!2250) mapValue!8849)) b!206533))

(assert (= (and b!206534 ((_ is ValueCellFull!2250) mapDefault!8849)) b!206538))

(assert (= start!20684 b!206534))

(declare-fun m!234297 () Bool)

(assert (=> b!206541 m!234297))

(declare-fun m!234299 () Bool)

(assert (=> b!206540 m!234299))

(declare-fun m!234301 () Bool)

(assert (=> mapNonEmpty!8849 m!234301))

(declare-fun m!234303 () Bool)

(assert (=> b!206532 m!234303))

(declare-fun m!234305 () Bool)

(assert (=> start!20684 m!234305))

(declare-fun m!234307 () Bool)

(assert (=> start!20684 m!234307))

(declare-fun m!234309 () Bool)

(assert (=> start!20684 m!234309))

(declare-fun m!234311 () Bool)

(assert (=> b!206536 m!234311))

(declare-fun m!234313 () Bool)

(assert (=> b!206536 m!234313))

(declare-fun m!234315 () Bool)

(assert (=> b!206536 m!234315))

(declare-fun m!234317 () Bool)

(assert (=> b!206536 m!234317))

(declare-fun m!234319 () Bool)

(assert (=> b!206536 m!234319))

(declare-fun m!234321 () Bool)

(assert (=> b!206536 m!234321))

(declare-fun m!234323 () Bool)

(assert (=> b!206536 m!234323))

(declare-fun m!234325 () Bool)

(assert (=> b!206539 m!234325))

(check-sat b_and!12095 (not b!206532) (not b_next!5331) (not b!206539) (not mapNonEmpty!8849) (not b!206536) tp_is_empty!5187 (not b!206540) (not start!20684))
(check-sat b_and!12095 (not b_next!5331))
