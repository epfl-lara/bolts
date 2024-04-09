; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95658 () Bool)

(assert start!95658)

(declare-fun b_free!22275 () Bool)

(declare-fun b_next!22275 () Bool)

(assert (=> start!95658 (= b_free!22275 (not b_next!22275))))

(declare-fun tp!78675 () Bool)

(declare-fun b_and!35271 () Bool)

(assert (=> start!95658 (= tp!78675 b_and!35271)))

(declare-fun b!1080415 () Bool)

(declare-fun res!720175 () Bool)

(declare-fun e!617667 () Bool)

(assert (=> b!1080415 (=> (not res!720175) (not e!617667))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69460 0))(
  ( (array!69461 (arr!33400 (Array (_ BitVec 32) (_ BitVec 64))) (size!33937 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69460)

(declare-datatypes ((V!40163 0))(
  ( (V!40164 (val!13195 Int)) )
))
(declare-datatypes ((ValueCell!12429 0))(
  ( (ValueCellFull!12429 (v!15817 V!40163)) (EmptyCell!12429) )
))
(declare-datatypes ((array!69462 0))(
  ( (array!69463 (arr!33401 (Array (_ BitVec 32) ValueCell!12429)) (size!33938 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69462)

(assert (=> b!1080415 (= res!720175 (and (= (size!33938 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33937 _keys!1070) (size!33938 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080416 () Bool)

(declare-fun e!617668 () Bool)

(assert (=> b!1080416 (= e!617667 e!617668)))

(declare-fun res!720174 () Bool)

(assert (=> b!1080416 (=> (not res!720174) (not e!617668))))

(declare-fun lt!479002 () array!69460)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69460 (_ BitVec 32)) Bool)

(assert (=> b!1080416 (= res!720174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479002 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080416 (= lt!479002 (array!69461 (store (arr!33400 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33937 _keys!1070)))))

(declare-fun b!1080417 () Bool)

(declare-fun res!720176 () Bool)

(assert (=> b!1080417 (=> (not res!720176) (not e!617667))))

(assert (=> b!1080417 (= res!720176 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33937 _keys!1070))))))

(declare-fun b!1080418 () Bool)

(declare-fun e!617670 () Bool)

(declare-fun e!617671 () Bool)

(declare-fun mapRes!41170 () Bool)

(assert (=> b!1080418 (= e!617670 (and e!617671 mapRes!41170))))

(declare-fun condMapEmpty!41170 () Bool)

(declare-fun mapDefault!41170 () ValueCell!12429)

(assert (=> b!1080418 (= condMapEmpty!41170 (= (arr!33401 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12429)) mapDefault!41170)))))

(declare-fun res!720169 () Bool)

(assert (=> start!95658 (=> (not res!720169) (not e!617667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95658 (= res!720169 (validMask!0 mask!1414))))

(assert (=> start!95658 e!617667))

(assert (=> start!95658 tp!78675))

(assert (=> start!95658 true))

(declare-fun tp_is_empty!26277 () Bool)

(assert (=> start!95658 tp_is_empty!26277))

(declare-fun array_inv!25650 (array!69460) Bool)

(assert (=> start!95658 (array_inv!25650 _keys!1070)))

(declare-fun array_inv!25651 (array!69462) Bool)

(assert (=> start!95658 (and (array_inv!25651 _values!874) e!617670)))

(declare-fun b!1080419 () Bool)

(assert (=> b!1080419 (= e!617671 tp_is_empty!26277)))

(declare-fun b!1080420 () Bool)

(declare-fun res!720170 () Bool)

(assert (=> b!1080420 (=> (not res!720170) (not e!617667))))

(declare-datatypes ((List!23404 0))(
  ( (Nil!23401) (Cons!23400 (h!24609 (_ BitVec 64)) (t!32770 List!23404)) )
))
(declare-fun arrayNoDuplicates!0 (array!69460 (_ BitVec 32) List!23404) Bool)

(assert (=> b!1080420 (= res!720170 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23401))))

(declare-fun b!1080421 () Bool)

(declare-fun res!720172 () Bool)

(assert (=> b!1080421 (=> (not res!720172) (not e!617667))))

(assert (=> b!1080421 (= res!720172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080422 () Bool)

(assert (=> b!1080422 (= e!617668 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40163)

(declare-datatypes ((tuple2!16782 0))(
  ( (tuple2!16783 (_1!8401 (_ BitVec 64)) (_2!8401 V!40163)) )
))
(declare-datatypes ((List!23405 0))(
  ( (Nil!23402) (Cons!23401 (h!24610 tuple2!16782) (t!32771 List!23405)) )
))
(declare-datatypes ((ListLongMap!14763 0))(
  ( (ListLongMap!14764 (toList!7397 List!23405)) )
))
(declare-fun lt!479001 () ListLongMap!14763)

(declare-fun zeroValue!831 () V!40163)

(declare-fun getCurrentListMapNoExtraKeys!3908 (array!69460 array!69462 (_ BitVec 32) (_ BitVec 32) V!40163 V!40163 (_ BitVec 32) Int) ListLongMap!14763)

(assert (=> b!1080422 (= lt!479001 (getCurrentListMapNoExtraKeys!3908 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080422 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35473 0))(
  ( (Unit!35474) )
))
(declare-fun lt!479003 () Unit!35473)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69460 (_ BitVec 64) (_ BitVec 32)) Unit!35473)

(assert (=> b!1080422 (= lt!479003 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1080423 () Bool)

(declare-fun e!617669 () Bool)

(assert (=> b!1080423 (= e!617669 tp_is_empty!26277)))

(declare-fun b!1080424 () Bool)

(declare-fun res!720168 () Bool)

(assert (=> b!1080424 (=> (not res!720168) (not e!617667))))

(assert (=> b!1080424 (= res!720168 (= (select (arr!33400 _keys!1070) i!650) k0!904))))

(declare-fun mapNonEmpty!41170 () Bool)

(declare-fun tp!78674 () Bool)

(assert (=> mapNonEmpty!41170 (= mapRes!41170 (and tp!78674 e!617669))))

(declare-fun mapKey!41170 () (_ BitVec 32))

(declare-fun mapValue!41170 () ValueCell!12429)

(declare-fun mapRest!41170 () (Array (_ BitVec 32) ValueCell!12429))

(assert (=> mapNonEmpty!41170 (= (arr!33401 _values!874) (store mapRest!41170 mapKey!41170 mapValue!41170))))

(declare-fun b!1080425 () Bool)

(declare-fun res!720171 () Bool)

(assert (=> b!1080425 (=> (not res!720171) (not e!617668))))

(assert (=> b!1080425 (= res!720171 (arrayNoDuplicates!0 lt!479002 #b00000000000000000000000000000000 Nil!23401))))

(declare-fun mapIsEmpty!41170 () Bool)

(assert (=> mapIsEmpty!41170 mapRes!41170))

(declare-fun b!1080426 () Bool)

(declare-fun res!720173 () Bool)

(assert (=> b!1080426 (=> (not res!720173) (not e!617667))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080426 (= res!720173 (validKeyInArray!0 k0!904))))

(assert (= (and start!95658 res!720169) b!1080415))

(assert (= (and b!1080415 res!720175) b!1080421))

(assert (= (and b!1080421 res!720172) b!1080420))

(assert (= (and b!1080420 res!720170) b!1080417))

(assert (= (and b!1080417 res!720176) b!1080426))

(assert (= (and b!1080426 res!720173) b!1080424))

(assert (= (and b!1080424 res!720168) b!1080416))

(assert (= (and b!1080416 res!720174) b!1080425))

(assert (= (and b!1080425 res!720171) b!1080422))

(assert (= (and b!1080418 condMapEmpty!41170) mapIsEmpty!41170))

(assert (= (and b!1080418 (not condMapEmpty!41170)) mapNonEmpty!41170))

(get-info :version)

(assert (= (and mapNonEmpty!41170 ((_ is ValueCellFull!12429) mapValue!41170)) b!1080423))

(assert (= (and b!1080418 ((_ is ValueCellFull!12429) mapDefault!41170)) b!1080419))

(assert (= start!95658 b!1080418))

(declare-fun m!998503 () Bool)

(assert (=> b!1080424 m!998503))

(declare-fun m!998505 () Bool)

(assert (=> b!1080421 m!998505))

(declare-fun m!998507 () Bool)

(assert (=> b!1080416 m!998507))

(declare-fun m!998509 () Bool)

(assert (=> b!1080416 m!998509))

(declare-fun m!998511 () Bool)

(assert (=> b!1080426 m!998511))

(declare-fun m!998513 () Bool)

(assert (=> b!1080422 m!998513))

(declare-fun m!998515 () Bool)

(assert (=> b!1080422 m!998515))

(declare-fun m!998517 () Bool)

(assert (=> b!1080422 m!998517))

(declare-fun m!998519 () Bool)

(assert (=> b!1080425 m!998519))

(declare-fun m!998521 () Bool)

(assert (=> mapNonEmpty!41170 m!998521))

(declare-fun m!998523 () Bool)

(assert (=> b!1080420 m!998523))

(declare-fun m!998525 () Bool)

(assert (=> start!95658 m!998525))

(declare-fun m!998527 () Bool)

(assert (=> start!95658 m!998527))

(declare-fun m!998529 () Bool)

(assert (=> start!95658 m!998529))

(check-sat (not b!1080416) (not mapNonEmpty!41170) (not b!1080426) (not b!1080421) (not b!1080422) (not start!95658) (not b!1080420) tp_is_empty!26277 (not b_next!22275) b_and!35271 (not b!1080425))
(check-sat b_and!35271 (not b_next!22275))
