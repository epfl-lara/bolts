; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95676 () Bool)

(assert start!95676)

(declare-fun b_free!22293 () Bool)

(declare-fun b_next!22293 () Bool)

(assert (=> start!95676 (= b_free!22293 (not b_next!22293))))

(declare-fun tp!78728 () Bool)

(declare-fun b_and!35289 () Bool)

(assert (=> start!95676 (= tp!78728 b_and!35289)))

(declare-fun b!1080739 () Bool)

(declare-fun e!617830 () Bool)

(declare-fun tp_is_empty!26295 () Bool)

(assert (=> b!1080739 (= e!617830 tp_is_empty!26295)))

(declare-fun mapIsEmpty!41197 () Bool)

(declare-fun mapRes!41197 () Bool)

(assert (=> mapIsEmpty!41197 mapRes!41197))

(declare-fun b!1080740 () Bool)

(declare-fun e!617829 () Bool)

(declare-fun e!617833 () Bool)

(assert (=> b!1080740 (= e!617829 (and e!617833 mapRes!41197))))

(declare-fun condMapEmpty!41197 () Bool)

(declare-datatypes ((V!40187 0))(
  ( (V!40188 (val!13204 Int)) )
))
(declare-datatypes ((ValueCell!12438 0))(
  ( (ValueCellFull!12438 (v!15826 V!40187)) (EmptyCell!12438) )
))
(declare-datatypes ((array!69496 0))(
  ( (array!69497 (arr!33418 (Array (_ BitVec 32) ValueCell!12438)) (size!33955 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69496)

(declare-fun mapDefault!41197 () ValueCell!12438)

(assert (=> b!1080740 (= condMapEmpty!41197 (= (arr!33418 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12438)) mapDefault!41197)))))

(declare-fun b!1080741 () Bool)

(declare-fun res!720411 () Bool)

(declare-fun e!617831 () Bool)

(assert (=> b!1080741 (=> (not res!720411) (not e!617831))))

(declare-datatypes ((array!69498 0))(
  ( (array!69499 (arr!33419 (Array (_ BitVec 32) (_ BitVec 64))) (size!33956 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69498)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080741 (= res!720411 (= (select (arr!33419 _keys!1070) i!650) k0!904))))

(declare-fun b!1080742 () Bool)

(declare-fun res!720418 () Bool)

(assert (=> b!1080742 (=> (not res!720418) (not e!617831))))

(declare-datatypes ((List!23421 0))(
  ( (Nil!23418) (Cons!23417 (h!24626 (_ BitVec 64)) (t!32787 List!23421)) )
))
(declare-fun arrayNoDuplicates!0 (array!69498 (_ BitVec 32) List!23421) Bool)

(assert (=> b!1080742 (= res!720418 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23418))))

(declare-fun b!1080743 () Bool)

(declare-fun res!720417 () Bool)

(assert (=> b!1080743 (=> (not res!720417) (not e!617831))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69498 (_ BitVec 32)) Bool)

(assert (=> b!1080743 (= res!720417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080744 () Bool)

(declare-fun e!617828 () Bool)

(assert (=> b!1080744 (= e!617831 e!617828)))

(declare-fun res!720414 () Bool)

(assert (=> b!1080744 (=> (not res!720414) (not e!617828))))

(declare-fun lt!479082 () array!69498)

(assert (=> b!1080744 (= res!720414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479082 mask!1414))))

(assert (=> b!1080744 (= lt!479082 (array!69499 (store (arr!33419 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33956 _keys!1070)))))

(declare-fun res!720412 () Bool)

(assert (=> start!95676 (=> (not res!720412) (not e!617831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95676 (= res!720412 (validMask!0 mask!1414))))

(assert (=> start!95676 e!617831))

(assert (=> start!95676 tp!78728))

(assert (=> start!95676 true))

(assert (=> start!95676 tp_is_empty!26295))

(declare-fun array_inv!25664 (array!69498) Bool)

(assert (=> start!95676 (array_inv!25664 _keys!1070)))

(declare-fun array_inv!25665 (array!69496) Bool)

(assert (=> start!95676 (and (array_inv!25665 _values!874) e!617829)))

(declare-fun b!1080745 () Bool)

(declare-fun res!720415 () Bool)

(assert (=> b!1080745 (=> (not res!720415) (not e!617831))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1080745 (= res!720415 (and (= (size!33955 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33956 _keys!1070) (size!33955 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080746 () Bool)

(assert (=> b!1080746 (= e!617833 tp_is_empty!26295)))

(declare-fun b!1080747 () Bool)

(declare-fun res!720419 () Bool)

(assert (=> b!1080747 (=> (not res!720419) (not e!617831))))

(assert (=> b!1080747 (= res!720419 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33956 _keys!1070))))))

(declare-fun b!1080748 () Bool)

(assert (=> b!1080748 (= e!617828 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16798 0))(
  ( (tuple2!16799 (_1!8409 (_ BitVec 64)) (_2!8409 V!40187)) )
))
(declare-datatypes ((List!23422 0))(
  ( (Nil!23419) (Cons!23418 (h!24627 tuple2!16798) (t!32788 List!23422)) )
))
(declare-datatypes ((ListLongMap!14779 0))(
  ( (ListLongMap!14780 (toList!7405 List!23422)) )
))
(declare-fun lt!479083 () ListLongMap!14779)

(declare-fun zeroValue!831 () V!40187)

(declare-fun minValue!831 () V!40187)

(declare-fun getCurrentListMapNoExtraKeys!3916 (array!69498 array!69496 (_ BitVec 32) (_ BitVec 32) V!40187 V!40187 (_ BitVec 32) Int) ListLongMap!14779)

(assert (=> b!1080748 (= lt!479083 (getCurrentListMapNoExtraKeys!3916 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080748 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35489 0))(
  ( (Unit!35490) )
))
(declare-fun lt!479084 () Unit!35489)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69498 (_ BitVec 64) (_ BitVec 32)) Unit!35489)

(assert (=> b!1080748 (= lt!479084 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1080749 () Bool)

(declare-fun res!720416 () Bool)

(assert (=> b!1080749 (=> (not res!720416) (not e!617831))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080749 (= res!720416 (validKeyInArray!0 k0!904))))

(declare-fun b!1080750 () Bool)

(declare-fun res!720413 () Bool)

(assert (=> b!1080750 (=> (not res!720413) (not e!617828))))

(assert (=> b!1080750 (= res!720413 (arrayNoDuplicates!0 lt!479082 #b00000000000000000000000000000000 Nil!23418))))

(declare-fun mapNonEmpty!41197 () Bool)

(declare-fun tp!78729 () Bool)

(assert (=> mapNonEmpty!41197 (= mapRes!41197 (and tp!78729 e!617830))))

(declare-fun mapKey!41197 () (_ BitVec 32))

(declare-fun mapRest!41197 () (Array (_ BitVec 32) ValueCell!12438))

(declare-fun mapValue!41197 () ValueCell!12438)

(assert (=> mapNonEmpty!41197 (= (arr!33418 _values!874) (store mapRest!41197 mapKey!41197 mapValue!41197))))

(assert (= (and start!95676 res!720412) b!1080745))

(assert (= (and b!1080745 res!720415) b!1080743))

(assert (= (and b!1080743 res!720417) b!1080742))

(assert (= (and b!1080742 res!720418) b!1080747))

(assert (= (and b!1080747 res!720419) b!1080749))

(assert (= (and b!1080749 res!720416) b!1080741))

(assert (= (and b!1080741 res!720411) b!1080744))

(assert (= (and b!1080744 res!720414) b!1080750))

(assert (= (and b!1080750 res!720413) b!1080748))

(assert (= (and b!1080740 condMapEmpty!41197) mapIsEmpty!41197))

(assert (= (and b!1080740 (not condMapEmpty!41197)) mapNonEmpty!41197))

(get-info :version)

(assert (= (and mapNonEmpty!41197 ((_ is ValueCellFull!12438) mapValue!41197)) b!1080739))

(assert (= (and b!1080740 ((_ is ValueCellFull!12438) mapDefault!41197)) b!1080746))

(assert (= start!95676 b!1080740))

(declare-fun m!998755 () Bool)

(assert (=> b!1080750 m!998755))

(declare-fun m!998757 () Bool)

(assert (=> mapNonEmpty!41197 m!998757))

(declare-fun m!998759 () Bool)

(assert (=> b!1080742 m!998759))

(declare-fun m!998761 () Bool)

(assert (=> b!1080744 m!998761))

(declare-fun m!998763 () Bool)

(assert (=> b!1080744 m!998763))

(declare-fun m!998765 () Bool)

(assert (=> b!1080743 m!998765))

(declare-fun m!998767 () Bool)

(assert (=> start!95676 m!998767))

(declare-fun m!998769 () Bool)

(assert (=> start!95676 m!998769))

(declare-fun m!998771 () Bool)

(assert (=> start!95676 m!998771))

(declare-fun m!998773 () Bool)

(assert (=> b!1080748 m!998773))

(declare-fun m!998775 () Bool)

(assert (=> b!1080748 m!998775))

(declare-fun m!998777 () Bool)

(assert (=> b!1080748 m!998777))

(declare-fun m!998779 () Bool)

(assert (=> b!1080749 m!998779))

(declare-fun m!998781 () Bool)

(assert (=> b!1080741 m!998781))

(check-sat b_and!35289 (not b!1080748) (not b!1080749) (not start!95676) tp_is_empty!26295 (not b_next!22293) (not b!1080743) (not b!1080742) (not b!1080744) (not b!1080750) (not mapNonEmpty!41197))
(check-sat b_and!35289 (not b_next!22293))
