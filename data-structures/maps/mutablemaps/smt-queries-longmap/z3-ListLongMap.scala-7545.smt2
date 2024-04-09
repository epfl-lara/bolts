; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95628 () Bool)

(assert start!95628)

(declare-fun b!1079875 () Bool)

(declare-fun res!719769 () Bool)

(declare-fun e!617400 () Bool)

(assert (=> b!1079875 (=> (not res!719769) (not e!617400))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69400 0))(
  ( (array!69401 (arr!33370 (Array (_ BitVec 32) (_ BitVec 64))) (size!33907 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69400)

(assert (=> b!1079875 (= res!719769 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33907 _keys!1070))))))

(declare-fun b!1079876 () Bool)

(declare-fun res!719768 () Bool)

(declare-fun e!617401 () Bool)

(assert (=> b!1079876 (=> (not res!719768) (not e!617401))))

(declare-fun lt!478870 () array!69400)

(declare-datatypes ((List!23385 0))(
  ( (Nil!23382) (Cons!23381 (h!24590 (_ BitVec 64)) (t!32751 List!23385)) )
))
(declare-fun arrayNoDuplicates!0 (array!69400 (_ BitVec 32) List!23385) Bool)

(assert (=> b!1079876 (= res!719768 (arrayNoDuplicates!0 lt!478870 #b00000000000000000000000000000000 Nil!23382))))

(declare-fun b!1079877 () Bool)

(declare-fun res!719770 () Bool)

(assert (=> b!1079877 (=> (not res!719770) (not e!617400))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69400 (_ BitVec 32)) Bool)

(assert (=> b!1079877 (= res!719770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079878 () Bool)

(declare-fun res!719763 () Bool)

(assert (=> b!1079878 (=> (not res!719763) (not e!617400))))

(assert (=> b!1079878 (= res!719763 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23382))))

(declare-fun b!1079879 () Bool)

(declare-fun res!719771 () Bool)

(assert (=> b!1079879 (=> (not res!719771) (not e!617400))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1079879 (= res!719771 (= (select (arr!33370 _keys!1070) i!650) k0!904))))

(declare-fun b!1079880 () Bool)

(assert (=> b!1079880 (= e!617400 e!617401)))

(declare-fun res!719767 () Bool)

(assert (=> b!1079880 (=> (not res!719767) (not e!617401))))

(assert (=> b!1079880 (= res!719767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478870 mask!1414))))

(assert (=> b!1079880 (= lt!478870 (array!69401 (store (arr!33370 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33907 _keys!1070)))))

(declare-fun mapNonEmpty!41125 () Bool)

(declare-fun mapRes!41125 () Bool)

(declare-fun tp!78588 () Bool)

(declare-fun e!617397 () Bool)

(assert (=> mapNonEmpty!41125 (= mapRes!41125 (and tp!78588 e!617397))))

(declare-datatypes ((V!40123 0))(
  ( (V!40124 (val!13180 Int)) )
))
(declare-datatypes ((ValueCell!12414 0))(
  ( (ValueCellFull!12414 (v!15802 V!40123)) (EmptyCell!12414) )
))
(declare-fun mapValue!41125 () ValueCell!12414)

(declare-datatypes ((array!69402 0))(
  ( (array!69403 (arr!33371 (Array (_ BitVec 32) ValueCell!12414)) (size!33908 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69402)

(declare-fun mapKey!41125 () (_ BitVec 32))

(declare-fun mapRest!41125 () (Array (_ BitVec 32) ValueCell!12414))

(assert (=> mapNonEmpty!41125 (= (arr!33371 _values!874) (store mapRest!41125 mapKey!41125 mapValue!41125))))

(declare-fun b!1079881 () Bool)

(declare-fun tp_is_empty!26247 () Bool)

(assert (=> b!1079881 (= e!617397 tp_is_empty!26247)))

(declare-fun res!719765 () Bool)

(assert (=> start!95628 (=> (not res!719765) (not e!617400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95628 (= res!719765 (validMask!0 mask!1414))))

(assert (=> start!95628 e!617400))

(assert (=> start!95628 true))

(declare-fun array_inv!25632 (array!69400) Bool)

(assert (=> start!95628 (array_inv!25632 _keys!1070)))

(declare-fun e!617396 () Bool)

(declare-fun array_inv!25633 (array!69402) Bool)

(assert (=> start!95628 (and (array_inv!25633 _values!874) e!617396)))

(declare-fun b!1079882 () Bool)

(declare-fun e!617399 () Bool)

(assert (=> b!1079882 (= e!617396 (and e!617399 mapRes!41125))))

(declare-fun condMapEmpty!41125 () Bool)

(declare-fun mapDefault!41125 () ValueCell!12414)

(assert (=> b!1079882 (= condMapEmpty!41125 (= (arr!33371 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12414)) mapDefault!41125)))))

(declare-fun b!1079883 () Bool)

(assert (=> b!1079883 (= e!617401 (not (bvsle #b00000000000000000000000000000000 (size!33907 _keys!1070))))))

(declare-fun arrayContainsKey!0 (array!69400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079883 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35455 0))(
  ( (Unit!35456) )
))
(declare-fun lt!478871 () Unit!35455)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69400 (_ BitVec 64) (_ BitVec 32)) Unit!35455)

(assert (=> b!1079883 (= lt!478871 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapIsEmpty!41125 () Bool)

(assert (=> mapIsEmpty!41125 mapRes!41125))

(declare-fun b!1079884 () Bool)

(assert (=> b!1079884 (= e!617399 tp_is_empty!26247)))

(declare-fun b!1079885 () Bool)

(declare-fun res!719766 () Bool)

(assert (=> b!1079885 (=> (not res!719766) (not e!617400))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1079885 (= res!719766 (and (= (size!33908 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33907 _keys!1070) (size!33908 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079886 () Bool)

(declare-fun res!719764 () Bool)

(assert (=> b!1079886 (=> (not res!719764) (not e!617400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079886 (= res!719764 (validKeyInArray!0 k0!904))))

(assert (= (and start!95628 res!719765) b!1079885))

(assert (= (and b!1079885 res!719766) b!1079877))

(assert (= (and b!1079877 res!719770) b!1079878))

(assert (= (and b!1079878 res!719763) b!1079875))

(assert (= (and b!1079875 res!719769) b!1079886))

(assert (= (and b!1079886 res!719764) b!1079879))

(assert (= (and b!1079879 res!719771) b!1079880))

(assert (= (and b!1079880 res!719767) b!1079876))

(assert (= (and b!1079876 res!719768) b!1079883))

(assert (= (and b!1079882 condMapEmpty!41125) mapIsEmpty!41125))

(assert (= (and b!1079882 (not condMapEmpty!41125)) mapNonEmpty!41125))

(get-info :version)

(assert (= (and mapNonEmpty!41125 ((_ is ValueCellFull!12414) mapValue!41125)) b!1079881))

(assert (= (and b!1079882 ((_ is ValueCellFull!12414) mapDefault!41125)) b!1079884))

(assert (= start!95628 b!1079882))

(declare-fun m!998087 () Bool)

(assert (=> b!1079877 m!998087))

(declare-fun m!998089 () Bool)

(assert (=> b!1079879 m!998089))

(declare-fun m!998091 () Bool)

(assert (=> b!1079886 m!998091))

(declare-fun m!998093 () Bool)

(assert (=> b!1079878 m!998093))

(declare-fun m!998095 () Bool)

(assert (=> b!1079876 m!998095))

(declare-fun m!998097 () Bool)

(assert (=> start!95628 m!998097))

(declare-fun m!998099 () Bool)

(assert (=> start!95628 m!998099))

(declare-fun m!998101 () Bool)

(assert (=> start!95628 m!998101))

(declare-fun m!998103 () Bool)

(assert (=> b!1079883 m!998103))

(declare-fun m!998105 () Bool)

(assert (=> b!1079883 m!998105))

(declare-fun m!998107 () Bool)

(assert (=> b!1079880 m!998107))

(declare-fun m!998109 () Bool)

(assert (=> b!1079880 m!998109))

(declare-fun m!998111 () Bool)

(assert (=> mapNonEmpty!41125 m!998111))

(check-sat (not mapNonEmpty!41125) tp_is_empty!26247 (not b!1079878) (not b!1079883) (not b!1079886) (not b!1079877) (not start!95628) (not b!1079880) (not b!1079876))
(check-sat)
