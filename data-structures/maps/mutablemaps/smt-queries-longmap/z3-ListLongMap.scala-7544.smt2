; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95622 () Bool)

(assert start!95622)

(declare-fun b!1079767 () Bool)

(declare-fun res!719683 () Bool)

(declare-fun e!617346 () Bool)

(assert (=> b!1079767 (=> (not res!719683) (not e!617346))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079767 (= res!719683 (validKeyInArray!0 k0!904))))

(declare-fun b!1079768 () Bool)

(declare-fun e!617347 () Bool)

(declare-fun tp_is_empty!26241 () Bool)

(assert (=> b!1079768 (= e!617347 tp_is_empty!26241)))

(declare-fun b!1079770 () Bool)

(declare-fun e!617345 () Bool)

(assert (=> b!1079770 (= e!617346 e!617345)))

(declare-fun res!719682 () Bool)

(assert (=> b!1079770 (=> (not res!719682) (not e!617345))))

(declare-datatypes ((array!69390 0))(
  ( (array!69391 (arr!33365 (Array (_ BitVec 32) (_ BitVec 64))) (size!33902 (_ BitVec 32))) )
))
(declare-fun lt!478853 () array!69390)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69390 (_ BitVec 32)) Bool)

(assert (=> b!1079770 (= res!719682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478853 mask!1414))))

(declare-fun _keys!1070 () array!69390)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079770 (= lt!478853 (array!69391 (store (arr!33365 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33902 _keys!1070)))))

(declare-fun b!1079771 () Bool)

(declare-fun res!719689 () Bool)

(assert (=> b!1079771 (=> (not res!719689) (not e!617346))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40115 0))(
  ( (V!40116 (val!13177 Int)) )
))
(declare-datatypes ((ValueCell!12411 0))(
  ( (ValueCellFull!12411 (v!15799 V!40115)) (EmptyCell!12411) )
))
(declare-datatypes ((array!69392 0))(
  ( (array!69393 (arr!33366 (Array (_ BitVec 32) ValueCell!12411)) (size!33903 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69392)

(assert (=> b!1079771 (= res!719689 (and (= (size!33903 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33902 _keys!1070) (size!33903 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079772 () Bool)

(declare-fun e!617343 () Bool)

(declare-fun e!617342 () Bool)

(declare-fun mapRes!41116 () Bool)

(assert (=> b!1079772 (= e!617343 (and e!617342 mapRes!41116))))

(declare-fun condMapEmpty!41116 () Bool)

(declare-fun mapDefault!41116 () ValueCell!12411)

(assert (=> b!1079772 (= condMapEmpty!41116 (= (arr!33366 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12411)) mapDefault!41116)))))

(declare-fun b!1079773 () Bool)

(declare-fun res!719685 () Bool)

(assert (=> b!1079773 (=> (not res!719685) (not e!617345))))

(declare-datatypes ((List!23384 0))(
  ( (Nil!23381) (Cons!23380 (h!24589 (_ BitVec 64)) (t!32750 List!23384)) )
))
(declare-fun arrayNoDuplicates!0 (array!69390 (_ BitVec 32) List!23384) Bool)

(assert (=> b!1079773 (= res!719685 (arrayNoDuplicates!0 lt!478853 #b00000000000000000000000000000000 Nil!23381))))

(declare-fun b!1079774 () Bool)

(assert (=> b!1079774 (= e!617345 (not true))))

(declare-fun arrayContainsKey!0 (array!69390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079774 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35451 0))(
  ( (Unit!35452) )
))
(declare-fun lt!478852 () Unit!35451)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69390 (_ BitVec 64) (_ BitVec 32)) Unit!35451)

(assert (=> b!1079774 (= lt!478852 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun res!719686 () Bool)

(assert (=> start!95622 (=> (not res!719686) (not e!617346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95622 (= res!719686 (validMask!0 mask!1414))))

(assert (=> start!95622 e!617346))

(assert (=> start!95622 true))

(declare-fun array_inv!25628 (array!69390) Bool)

(assert (=> start!95622 (array_inv!25628 _keys!1070)))

(declare-fun array_inv!25629 (array!69392) Bool)

(assert (=> start!95622 (and (array_inv!25629 _values!874) e!617343)))

(declare-fun b!1079769 () Bool)

(assert (=> b!1079769 (= e!617342 tp_is_empty!26241)))

(declare-fun b!1079775 () Bool)

(declare-fun res!719690 () Bool)

(assert (=> b!1079775 (=> (not res!719690) (not e!617346))))

(assert (=> b!1079775 (= res!719690 (= (select (arr!33365 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!41116 () Bool)

(assert (=> mapIsEmpty!41116 mapRes!41116))

(declare-fun b!1079776 () Bool)

(declare-fun res!719687 () Bool)

(assert (=> b!1079776 (=> (not res!719687) (not e!617346))))

(assert (=> b!1079776 (= res!719687 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33902 _keys!1070))))))

(declare-fun mapNonEmpty!41116 () Bool)

(declare-fun tp!78579 () Bool)

(assert (=> mapNonEmpty!41116 (= mapRes!41116 (and tp!78579 e!617347))))

(declare-fun mapValue!41116 () ValueCell!12411)

(declare-fun mapRest!41116 () (Array (_ BitVec 32) ValueCell!12411))

(declare-fun mapKey!41116 () (_ BitVec 32))

(assert (=> mapNonEmpty!41116 (= (arr!33366 _values!874) (store mapRest!41116 mapKey!41116 mapValue!41116))))

(declare-fun b!1079777 () Bool)

(declare-fun res!719688 () Bool)

(assert (=> b!1079777 (=> (not res!719688) (not e!617346))))

(assert (=> b!1079777 (= res!719688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079778 () Bool)

(declare-fun res!719684 () Bool)

(assert (=> b!1079778 (=> (not res!719684) (not e!617346))))

(assert (=> b!1079778 (= res!719684 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23381))))

(assert (= (and start!95622 res!719686) b!1079771))

(assert (= (and b!1079771 res!719689) b!1079777))

(assert (= (and b!1079777 res!719688) b!1079778))

(assert (= (and b!1079778 res!719684) b!1079776))

(assert (= (and b!1079776 res!719687) b!1079767))

(assert (= (and b!1079767 res!719683) b!1079775))

(assert (= (and b!1079775 res!719690) b!1079770))

(assert (= (and b!1079770 res!719682) b!1079773))

(assert (= (and b!1079773 res!719685) b!1079774))

(assert (= (and b!1079772 condMapEmpty!41116) mapIsEmpty!41116))

(assert (= (and b!1079772 (not condMapEmpty!41116)) mapNonEmpty!41116))

(get-info :version)

(assert (= (and mapNonEmpty!41116 ((_ is ValueCellFull!12411) mapValue!41116)) b!1079768))

(assert (= (and b!1079772 ((_ is ValueCellFull!12411) mapDefault!41116)) b!1079769))

(assert (= start!95622 b!1079772))

(declare-fun m!998009 () Bool)

(assert (=> b!1079774 m!998009))

(declare-fun m!998011 () Bool)

(assert (=> b!1079774 m!998011))

(declare-fun m!998013 () Bool)

(assert (=> b!1079775 m!998013))

(declare-fun m!998015 () Bool)

(assert (=> b!1079767 m!998015))

(declare-fun m!998017 () Bool)

(assert (=> b!1079777 m!998017))

(declare-fun m!998019 () Bool)

(assert (=> b!1079770 m!998019))

(declare-fun m!998021 () Bool)

(assert (=> b!1079770 m!998021))

(declare-fun m!998023 () Bool)

(assert (=> b!1079773 m!998023))

(declare-fun m!998025 () Bool)

(assert (=> b!1079778 m!998025))

(declare-fun m!998027 () Bool)

(assert (=> start!95622 m!998027))

(declare-fun m!998029 () Bool)

(assert (=> start!95622 m!998029))

(declare-fun m!998031 () Bool)

(assert (=> start!95622 m!998031))

(declare-fun m!998033 () Bool)

(assert (=> mapNonEmpty!41116 m!998033))

(check-sat (not b!1079773) (not mapNonEmpty!41116) (not b!1079770) (not b!1079778) tp_is_empty!26241 (not start!95622) (not b!1079767) (not b!1079777) (not b!1079774))
(check-sat)
