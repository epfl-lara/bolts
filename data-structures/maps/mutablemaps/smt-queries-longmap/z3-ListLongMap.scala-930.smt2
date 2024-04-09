; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20690 () Bool)

(assert start!20690)

(declare-fun b_free!5337 () Bool)

(declare-fun b_next!5337 () Bool)

(assert (=> start!20690 (= b_free!5337 (not b_next!5337))))

(declare-fun tp!19043 () Bool)

(declare-fun b_and!12101 () Bool)

(assert (=> start!20690 (= tp!19043 b_and!12101)))

(declare-fun b!206622 () Bool)

(declare-fun res!100165 () Bool)

(declare-fun e!135021 () Bool)

(assert (=> b!206622 (=> (not res!100165) (not e!135021))))

(declare-datatypes ((array!9596 0))(
  ( (array!9597 (arr!4548 (Array (_ BitVec 32) (_ BitVec 64))) (size!4873 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9596)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9596 (_ BitVec 32)) Bool)

(assert (=> b!206622 (= res!100165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8858 () Bool)

(declare-fun mapRes!8858 () Bool)

(assert (=> mapIsEmpty!8858 mapRes!8858))

(declare-fun b!206624 () Bool)

(declare-fun e!135025 () Bool)

(declare-fun e!135024 () Bool)

(assert (=> b!206624 (= e!135025 (and e!135024 mapRes!8858))))

(declare-fun condMapEmpty!8858 () Bool)

(declare-datatypes ((V!6571 0))(
  ( (V!6572 (val!2641 Int)) )
))
(declare-datatypes ((ValueCell!2253 0))(
  ( (ValueCellFull!2253 (v!4607 V!6571)) (EmptyCell!2253) )
))
(declare-datatypes ((array!9598 0))(
  ( (array!9599 (arr!4549 (Array (_ BitVec 32) ValueCell!2253)) (size!4874 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9598)

(declare-fun mapDefault!8858 () ValueCell!2253)

(assert (=> b!206624 (= condMapEmpty!8858 (= (arr!4549 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2253)) mapDefault!8858)))))

(declare-fun b!206625 () Bool)

(declare-fun res!100160 () Bool)

(assert (=> b!206625 (=> (not res!100160) (not e!135021))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206625 (= res!100160 (= (select (arr!4548 _keys!825) i!601) k0!843))))

(declare-fun b!206626 () Bool)

(assert (=> b!206626 (= e!135021 (not true))))

(declare-datatypes ((tuple2!4006 0))(
  ( (tuple2!4007 (_1!2013 (_ BitVec 64)) (_2!2013 V!6571)) )
))
(declare-datatypes ((List!2922 0))(
  ( (Nil!2919) (Cons!2918 (h!3560 tuple2!4006) (t!7861 List!2922)) )
))
(declare-datatypes ((ListLongMap!2933 0))(
  ( (ListLongMap!2934 (toList!1482 List!2922)) )
))
(declare-fun lt!105751 () ListLongMap!2933)

(declare-fun zeroValue!615 () V!6571)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6571)

(declare-fun getCurrentListMap!1044 (array!9596 array!9598 (_ BitVec 32) (_ BitVec 32) V!6571 V!6571 (_ BitVec 32) Int) ListLongMap!2933)

(assert (=> b!206626 (= lt!105751 (getCurrentListMap!1044 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105752 () ListLongMap!2933)

(declare-fun lt!105754 () array!9598)

(assert (=> b!206626 (= lt!105752 (getCurrentListMap!1044 _keys!825 lt!105754 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105755 () ListLongMap!2933)

(declare-fun lt!105756 () ListLongMap!2933)

(assert (=> b!206626 (and (= lt!105755 lt!105756) (= lt!105756 lt!105755))))

(declare-fun lt!105753 () ListLongMap!2933)

(declare-fun v!520 () V!6571)

(declare-fun +!499 (ListLongMap!2933 tuple2!4006) ListLongMap!2933)

(assert (=> b!206626 (= lt!105756 (+!499 lt!105753 (tuple2!4007 k0!843 v!520)))))

(declare-datatypes ((Unit!6293 0))(
  ( (Unit!6294) )
))
(declare-fun lt!105757 () Unit!6293)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!157 (array!9596 array!9598 (_ BitVec 32) (_ BitVec 32) V!6571 V!6571 (_ BitVec 32) (_ BitVec 64) V!6571 (_ BitVec 32) Int) Unit!6293)

(assert (=> b!206626 (= lt!105757 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!157 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!415 (array!9596 array!9598 (_ BitVec 32) (_ BitVec 32) V!6571 V!6571 (_ BitVec 32) Int) ListLongMap!2933)

(assert (=> b!206626 (= lt!105755 (getCurrentListMapNoExtraKeys!415 _keys!825 lt!105754 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206626 (= lt!105754 (array!9599 (store (arr!4549 _values!649) i!601 (ValueCellFull!2253 v!520)) (size!4874 _values!649)))))

(assert (=> b!206626 (= lt!105753 (getCurrentListMapNoExtraKeys!415 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206627 () Bool)

(declare-fun e!135023 () Bool)

(declare-fun tp_is_empty!5193 () Bool)

(assert (=> b!206627 (= e!135023 tp_is_empty!5193)))

(declare-fun b!206628 () Bool)

(declare-fun res!100162 () Bool)

(assert (=> b!206628 (=> (not res!100162) (not e!135021))))

(assert (=> b!206628 (= res!100162 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4873 _keys!825))))))

(declare-fun res!100161 () Bool)

(assert (=> start!20690 (=> (not res!100161) (not e!135021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20690 (= res!100161 (validMask!0 mask!1149))))

(assert (=> start!20690 e!135021))

(declare-fun array_inv!2999 (array!9598) Bool)

(assert (=> start!20690 (and (array_inv!2999 _values!649) e!135025)))

(assert (=> start!20690 true))

(assert (=> start!20690 tp_is_empty!5193))

(declare-fun array_inv!3000 (array!9596) Bool)

(assert (=> start!20690 (array_inv!3000 _keys!825)))

(assert (=> start!20690 tp!19043))

(declare-fun b!206623 () Bool)

(declare-fun res!100159 () Bool)

(assert (=> b!206623 (=> (not res!100159) (not e!135021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206623 (= res!100159 (validKeyInArray!0 k0!843))))

(declare-fun b!206629 () Bool)

(assert (=> b!206629 (= e!135024 tp_is_empty!5193)))

(declare-fun b!206630 () Bool)

(declare-fun res!100164 () Bool)

(assert (=> b!206630 (=> (not res!100164) (not e!135021))))

(assert (=> b!206630 (= res!100164 (and (= (size!4874 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4873 _keys!825) (size!4874 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206631 () Bool)

(declare-fun res!100163 () Bool)

(assert (=> b!206631 (=> (not res!100163) (not e!135021))))

(declare-datatypes ((List!2923 0))(
  ( (Nil!2920) (Cons!2919 (h!3561 (_ BitVec 64)) (t!7862 List!2923)) )
))
(declare-fun arrayNoDuplicates!0 (array!9596 (_ BitVec 32) List!2923) Bool)

(assert (=> b!206631 (= res!100163 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2920))))

(declare-fun mapNonEmpty!8858 () Bool)

(declare-fun tp!19042 () Bool)

(assert (=> mapNonEmpty!8858 (= mapRes!8858 (and tp!19042 e!135023))))

(declare-fun mapValue!8858 () ValueCell!2253)

(declare-fun mapKey!8858 () (_ BitVec 32))

(declare-fun mapRest!8858 () (Array (_ BitVec 32) ValueCell!2253))

(assert (=> mapNonEmpty!8858 (= (arr!4549 _values!649) (store mapRest!8858 mapKey!8858 mapValue!8858))))

(assert (= (and start!20690 res!100161) b!206630))

(assert (= (and b!206630 res!100164) b!206622))

(assert (= (and b!206622 res!100165) b!206631))

(assert (= (and b!206631 res!100163) b!206628))

(assert (= (and b!206628 res!100162) b!206623))

(assert (= (and b!206623 res!100159) b!206625))

(assert (= (and b!206625 res!100160) b!206626))

(assert (= (and b!206624 condMapEmpty!8858) mapIsEmpty!8858))

(assert (= (and b!206624 (not condMapEmpty!8858)) mapNonEmpty!8858))

(get-info :version)

(assert (= (and mapNonEmpty!8858 ((_ is ValueCellFull!2253) mapValue!8858)) b!206627))

(assert (= (and b!206624 ((_ is ValueCellFull!2253) mapDefault!8858)) b!206629))

(assert (= start!20690 b!206624))

(declare-fun m!234387 () Bool)

(assert (=> b!206623 m!234387))

(declare-fun m!234389 () Bool)

(assert (=> mapNonEmpty!8858 m!234389))

(declare-fun m!234391 () Bool)

(assert (=> start!20690 m!234391))

(declare-fun m!234393 () Bool)

(assert (=> start!20690 m!234393))

(declare-fun m!234395 () Bool)

(assert (=> start!20690 m!234395))

(declare-fun m!234397 () Bool)

(assert (=> b!206622 m!234397))

(declare-fun m!234399 () Bool)

(assert (=> b!206625 m!234399))

(declare-fun m!234401 () Bool)

(assert (=> b!206631 m!234401))

(declare-fun m!234403 () Bool)

(assert (=> b!206626 m!234403))

(declare-fun m!234405 () Bool)

(assert (=> b!206626 m!234405))

(declare-fun m!234407 () Bool)

(assert (=> b!206626 m!234407))

(declare-fun m!234409 () Bool)

(assert (=> b!206626 m!234409))

(declare-fun m!234411 () Bool)

(assert (=> b!206626 m!234411))

(declare-fun m!234413 () Bool)

(assert (=> b!206626 m!234413))

(declare-fun m!234415 () Bool)

(assert (=> b!206626 m!234415))

(check-sat (not b_next!5337) b_and!12101 (not b!206626) (not mapNonEmpty!8858) (not b!206622) (not b!206631) (not b!206623) tp_is_empty!5193 (not start!20690))
(check-sat b_and!12101 (not b_next!5337))
