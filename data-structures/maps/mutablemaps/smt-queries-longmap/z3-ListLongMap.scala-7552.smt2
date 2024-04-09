; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95670 () Bool)

(assert start!95670)

(declare-fun b_free!22287 () Bool)

(declare-fun b_next!22287 () Bool)

(assert (=> start!95670 (= b_free!22287 (not b_next!22287))))

(declare-fun tp!78710 () Bool)

(declare-fun b_and!35283 () Bool)

(assert (=> start!95670 (= tp!78710 b_and!35283)))

(declare-fun res!720331 () Bool)

(declare-fun e!617779 () Bool)

(assert (=> start!95670 (=> (not res!720331) (not e!617779))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95670 (= res!720331 (validMask!0 mask!1414))))

(assert (=> start!95670 e!617779))

(assert (=> start!95670 tp!78710))

(assert (=> start!95670 true))

(declare-fun tp_is_empty!26289 () Bool)

(assert (=> start!95670 tp_is_empty!26289))

(declare-datatypes ((array!69484 0))(
  ( (array!69485 (arr!33412 (Array (_ BitVec 32) (_ BitVec 64))) (size!33949 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69484)

(declare-fun array_inv!25658 (array!69484) Bool)

(assert (=> start!95670 (array_inv!25658 _keys!1070)))

(declare-datatypes ((V!40179 0))(
  ( (V!40180 (val!13201 Int)) )
))
(declare-datatypes ((ValueCell!12435 0))(
  ( (ValueCellFull!12435 (v!15823 V!40179)) (EmptyCell!12435) )
))
(declare-datatypes ((array!69486 0))(
  ( (array!69487 (arr!33413 (Array (_ BitVec 32) ValueCell!12435)) (size!33950 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69486)

(declare-fun e!617778 () Bool)

(declare-fun array_inv!25659 (array!69486) Bool)

(assert (=> start!95670 (and (array_inv!25659 _values!874) e!617778)))

(declare-fun b!1080631 () Bool)

(declare-fun res!720335 () Bool)

(assert (=> b!1080631 (=> (not res!720335) (not e!617779))))

(declare-datatypes ((List!23415 0))(
  ( (Nil!23412) (Cons!23411 (h!24620 (_ BitVec 64)) (t!32781 List!23415)) )
))
(declare-fun arrayNoDuplicates!0 (array!69484 (_ BitVec 32) List!23415) Bool)

(assert (=> b!1080631 (= res!720335 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23412))))

(declare-fun mapNonEmpty!41188 () Bool)

(declare-fun mapRes!41188 () Bool)

(declare-fun tp!78711 () Bool)

(declare-fun e!617776 () Bool)

(assert (=> mapNonEmpty!41188 (= mapRes!41188 (and tp!78711 e!617776))))

(declare-fun mapValue!41188 () ValueCell!12435)

(declare-fun mapRest!41188 () (Array (_ BitVec 32) ValueCell!12435))

(declare-fun mapKey!41188 () (_ BitVec 32))

(assert (=> mapNonEmpty!41188 (= (arr!33413 _values!874) (store mapRest!41188 mapKey!41188 mapValue!41188))))

(declare-fun b!1080632 () Bool)

(declare-fun res!720337 () Bool)

(assert (=> b!1080632 (=> (not res!720337) (not e!617779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69484 (_ BitVec 32)) Bool)

(assert (=> b!1080632 (= res!720337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080633 () Bool)

(declare-fun res!720332 () Bool)

(assert (=> b!1080633 (=> (not res!720332) (not e!617779))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080633 (= res!720332 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33949 _keys!1070))))))

(declare-fun b!1080634 () Bool)

(assert (=> b!1080634 (= e!617776 tp_is_empty!26289)))

(declare-fun b!1080635 () Bool)

(declare-fun res!720338 () Bool)

(assert (=> b!1080635 (=> (not res!720338) (not e!617779))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080635 (= res!720338 (validKeyInArray!0 k0!904))))

(declare-fun b!1080636 () Bool)

(declare-fun e!617777 () Bool)

(assert (=> b!1080636 (= e!617779 e!617777)))

(declare-fun res!720333 () Bool)

(assert (=> b!1080636 (=> (not res!720333) (not e!617777))))

(declare-fun lt!479057 () array!69484)

(assert (=> b!1080636 (= res!720333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479057 mask!1414))))

(assert (=> b!1080636 (= lt!479057 (array!69485 (store (arr!33412 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33949 _keys!1070)))))

(declare-fun b!1080637 () Bool)

(declare-fun res!720334 () Bool)

(assert (=> b!1080637 (=> (not res!720334) (not e!617779))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1080637 (= res!720334 (and (= (size!33950 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33949 _keys!1070) (size!33950 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080638 () Bool)

(declare-fun e!617774 () Bool)

(assert (=> b!1080638 (= e!617774 tp_is_empty!26289)))

(declare-fun b!1080639 () Bool)

(assert (=> b!1080639 (= e!617777 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16792 0))(
  ( (tuple2!16793 (_1!8406 (_ BitVec 64)) (_2!8406 V!40179)) )
))
(declare-datatypes ((List!23416 0))(
  ( (Nil!23413) (Cons!23412 (h!24621 tuple2!16792) (t!32782 List!23416)) )
))
(declare-datatypes ((ListLongMap!14773 0))(
  ( (ListLongMap!14774 (toList!7402 List!23416)) )
))
(declare-fun lt!479055 () ListLongMap!14773)

(declare-fun minValue!831 () V!40179)

(declare-fun zeroValue!831 () V!40179)

(declare-fun getCurrentListMapNoExtraKeys!3913 (array!69484 array!69486 (_ BitVec 32) (_ BitVec 32) V!40179 V!40179 (_ BitVec 32) Int) ListLongMap!14773)

(assert (=> b!1080639 (= lt!479055 (getCurrentListMapNoExtraKeys!3913 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080639 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35483 0))(
  ( (Unit!35484) )
))
(declare-fun lt!479056 () Unit!35483)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69484 (_ BitVec 64) (_ BitVec 32)) Unit!35483)

(assert (=> b!1080639 (= lt!479056 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapIsEmpty!41188 () Bool)

(assert (=> mapIsEmpty!41188 mapRes!41188))

(declare-fun b!1080640 () Bool)

(declare-fun res!720330 () Bool)

(assert (=> b!1080640 (=> (not res!720330) (not e!617779))))

(assert (=> b!1080640 (= res!720330 (= (select (arr!33412 _keys!1070) i!650) k0!904))))

(declare-fun b!1080641 () Bool)

(declare-fun res!720336 () Bool)

(assert (=> b!1080641 (=> (not res!720336) (not e!617777))))

(assert (=> b!1080641 (= res!720336 (arrayNoDuplicates!0 lt!479057 #b00000000000000000000000000000000 Nil!23412))))

(declare-fun b!1080642 () Bool)

(assert (=> b!1080642 (= e!617778 (and e!617774 mapRes!41188))))

(declare-fun condMapEmpty!41188 () Bool)

(declare-fun mapDefault!41188 () ValueCell!12435)

(assert (=> b!1080642 (= condMapEmpty!41188 (= (arr!33413 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12435)) mapDefault!41188)))))

(assert (= (and start!95670 res!720331) b!1080637))

(assert (= (and b!1080637 res!720334) b!1080632))

(assert (= (and b!1080632 res!720337) b!1080631))

(assert (= (and b!1080631 res!720335) b!1080633))

(assert (= (and b!1080633 res!720332) b!1080635))

(assert (= (and b!1080635 res!720338) b!1080640))

(assert (= (and b!1080640 res!720330) b!1080636))

(assert (= (and b!1080636 res!720333) b!1080641))

(assert (= (and b!1080641 res!720336) b!1080639))

(assert (= (and b!1080642 condMapEmpty!41188) mapIsEmpty!41188))

(assert (= (and b!1080642 (not condMapEmpty!41188)) mapNonEmpty!41188))

(get-info :version)

(assert (= (and mapNonEmpty!41188 ((_ is ValueCellFull!12435) mapValue!41188)) b!1080634))

(assert (= (and b!1080642 ((_ is ValueCellFull!12435) mapDefault!41188)) b!1080638))

(assert (= start!95670 b!1080642))

(declare-fun m!998671 () Bool)

(assert (=> b!1080641 m!998671))

(declare-fun m!998673 () Bool)

(assert (=> b!1080631 m!998673))

(declare-fun m!998675 () Bool)

(assert (=> mapNonEmpty!41188 m!998675))

(declare-fun m!998677 () Bool)

(assert (=> start!95670 m!998677))

(declare-fun m!998679 () Bool)

(assert (=> start!95670 m!998679))

(declare-fun m!998681 () Bool)

(assert (=> start!95670 m!998681))

(declare-fun m!998683 () Bool)

(assert (=> b!1080636 m!998683))

(declare-fun m!998685 () Bool)

(assert (=> b!1080636 m!998685))

(declare-fun m!998687 () Bool)

(assert (=> b!1080639 m!998687))

(declare-fun m!998689 () Bool)

(assert (=> b!1080639 m!998689))

(declare-fun m!998691 () Bool)

(assert (=> b!1080639 m!998691))

(declare-fun m!998693 () Bool)

(assert (=> b!1080632 m!998693))

(declare-fun m!998695 () Bool)

(assert (=> b!1080635 m!998695))

(declare-fun m!998697 () Bool)

(assert (=> b!1080640 m!998697))

(check-sat (not b!1080639) (not b!1080641) (not start!95670) tp_is_empty!26289 b_and!35283 (not b!1080631) (not b!1080632) (not mapNonEmpty!41188) (not b!1080635) (not b_next!22287) (not b!1080636))
(check-sat b_and!35283 (not b_next!22287))
