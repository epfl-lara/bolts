; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95616 () Bool)

(assert start!95616)

(declare-fun b!1079659 () Bool)

(declare-fun res!719609 () Bool)

(declare-fun e!617288 () Bool)

(assert (=> b!1079659 (=> (not res!719609) (not e!617288))))

(declare-datatypes ((array!69378 0))(
  ( (array!69379 (arr!33359 (Array (_ BitVec 32) (_ BitVec 64))) (size!33896 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69378)

(declare-datatypes ((List!23381 0))(
  ( (Nil!23378) (Cons!23377 (h!24586 (_ BitVec 64)) (t!32747 List!23381)) )
))
(declare-fun arrayNoDuplicates!0 (array!69378 (_ BitVec 32) List!23381) Bool)

(assert (=> b!1079659 (= res!719609 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23378))))

(declare-fun b!1079660 () Bool)

(declare-fun res!719607 () Bool)

(assert (=> b!1079660 (=> (not res!719607) (not e!617288))))

(declare-datatypes ((V!40107 0))(
  ( (V!40108 (val!13174 Int)) )
))
(declare-datatypes ((ValueCell!12408 0))(
  ( (ValueCellFull!12408 (v!15796 V!40107)) (EmptyCell!12408) )
))
(declare-datatypes ((array!69380 0))(
  ( (array!69381 (arr!33360 (Array (_ BitVec 32) ValueCell!12408)) (size!33897 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69380)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1079660 (= res!719607 (and (= (size!33897 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33896 _keys!1070) (size!33897 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1079661 () Bool)

(declare-fun e!617291 () Bool)

(declare-fun tp_is_empty!26235 () Bool)

(assert (=> b!1079661 (= e!617291 tp_is_empty!26235)))

(declare-fun mapNonEmpty!41107 () Bool)

(declare-fun mapRes!41107 () Bool)

(declare-fun tp!78570 () Bool)

(declare-fun e!617293 () Bool)

(assert (=> mapNonEmpty!41107 (= mapRes!41107 (and tp!78570 e!617293))))

(declare-fun mapRest!41107 () (Array (_ BitVec 32) ValueCell!12408))

(declare-fun mapValue!41107 () ValueCell!12408)

(declare-fun mapKey!41107 () (_ BitVec 32))

(assert (=> mapNonEmpty!41107 (= (arr!33360 _values!874) (store mapRest!41107 mapKey!41107 mapValue!41107))))

(declare-fun b!1079662 () Bool)

(declare-fun res!719605 () Bool)

(assert (=> b!1079662 (=> (not res!719605) (not e!617288))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1079662 (= res!719605 (= (select (arr!33359 _keys!1070) i!650) k0!904))))

(declare-fun b!1079663 () Bool)

(declare-fun e!617290 () Bool)

(assert (=> b!1079663 (= e!617288 e!617290)))

(declare-fun res!719601 () Bool)

(assert (=> b!1079663 (=> (not res!719601) (not e!617290))))

(declare-fun lt!478835 () array!69378)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69378 (_ BitVec 32)) Bool)

(assert (=> b!1079663 (= res!719601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478835 mask!1414))))

(assert (=> b!1079663 (= lt!478835 (array!69379 (store (arr!33359 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33896 _keys!1070)))))

(declare-fun b!1079664 () Bool)

(declare-fun res!719606 () Bool)

(assert (=> b!1079664 (=> (not res!719606) (not e!617288))))

(assert (=> b!1079664 (= res!719606 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33896 _keys!1070))))))

(declare-fun b!1079665 () Bool)

(declare-fun res!719603 () Bool)

(assert (=> b!1079665 (=> (not res!719603) (not e!617288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1079665 (= res!719603 (validKeyInArray!0 k0!904))))

(declare-fun b!1079666 () Bool)

(assert (=> b!1079666 (= e!617290 (not true))))

(declare-fun arrayContainsKey!0 (array!69378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1079666 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35447 0))(
  ( (Unit!35448) )
))
(declare-fun lt!478834 () Unit!35447)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69378 (_ BitVec 64) (_ BitVec 32)) Unit!35447)

(assert (=> b!1079666 (= lt!478834 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun res!719608 () Bool)

(assert (=> start!95616 (=> (not res!719608) (not e!617288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95616 (= res!719608 (validMask!0 mask!1414))))

(assert (=> start!95616 e!617288))

(assert (=> start!95616 true))

(declare-fun array_inv!25624 (array!69378) Bool)

(assert (=> start!95616 (array_inv!25624 _keys!1070)))

(declare-fun e!617292 () Bool)

(declare-fun array_inv!25625 (array!69380) Bool)

(assert (=> start!95616 (and (array_inv!25625 _values!874) e!617292)))

(declare-fun b!1079667 () Bool)

(declare-fun res!719604 () Bool)

(assert (=> b!1079667 (=> (not res!719604) (not e!617290))))

(assert (=> b!1079667 (= res!719604 (arrayNoDuplicates!0 lt!478835 #b00000000000000000000000000000000 Nil!23378))))

(declare-fun b!1079668 () Bool)

(declare-fun res!719602 () Bool)

(assert (=> b!1079668 (=> (not res!719602) (not e!617288))))

(assert (=> b!1079668 (= res!719602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41107 () Bool)

(assert (=> mapIsEmpty!41107 mapRes!41107))

(declare-fun b!1079669 () Bool)

(assert (=> b!1079669 (= e!617292 (and e!617291 mapRes!41107))))

(declare-fun condMapEmpty!41107 () Bool)

(declare-fun mapDefault!41107 () ValueCell!12408)

(assert (=> b!1079669 (= condMapEmpty!41107 (= (arr!33360 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12408)) mapDefault!41107)))))

(declare-fun b!1079670 () Bool)

(assert (=> b!1079670 (= e!617293 tp_is_empty!26235)))

(assert (= (and start!95616 res!719608) b!1079660))

(assert (= (and b!1079660 res!719607) b!1079668))

(assert (= (and b!1079668 res!719602) b!1079659))

(assert (= (and b!1079659 res!719609) b!1079664))

(assert (= (and b!1079664 res!719606) b!1079665))

(assert (= (and b!1079665 res!719603) b!1079662))

(assert (= (and b!1079662 res!719605) b!1079663))

(assert (= (and b!1079663 res!719601) b!1079667))

(assert (= (and b!1079667 res!719604) b!1079666))

(assert (= (and b!1079669 condMapEmpty!41107) mapIsEmpty!41107))

(assert (= (and b!1079669 (not condMapEmpty!41107)) mapNonEmpty!41107))

(get-info :version)

(assert (= (and mapNonEmpty!41107 ((_ is ValueCellFull!12408) mapValue!41107)) b!1079670))

(assert (= (and b!1079669 ((_ is ValueCellFull!12408) mapDefault!41107)) b!1079661))

(assert (= start!95616 b!1079669))

(declare-fun m!997931 () Bool)

(assert (=> start!95616 m!997931))

(declare-fun m!997933 () Bool)

(assert (=> start!95616 m!997933))

(declare-fun m!997935 () Bool)

(assert (=> start!95616 m!997935))

(declare-fun m!997937 () Bool)

(assert (=> b!1079666 m!997937))

(declare-fun m!997939 () Bool)

(assert (=> b!1079666 m!997939))

(declare-fun m!997941 () Bool)

(assert (=> b!1079663 m!997941))

(declare-fun m!997943 () Bool)

(assert (=> b!1079663 m!997943))

(declare-fun m!997945 () Bool)

(assert (=> b!1079667 m!997945))

(declare-fun m!997947 () Bool)

(assert (=> b!1079659 m!997947))

(declare-fun m!997949 () Bool)

(assert (=> mapNonEmpty!41107 m!997949))

(declare-fun m!997951 () Bool)

(assert (=> b!1079662 m!997951))

(declare-fun m!997953 () Bool)

(assert (=> b!1079665 m!997953))

(declare-fun m!997955 () Bool)

(assert (=> b!1079668 m!997955))

(check-sat (not b!1079668) tp_is_empty!26235 (not b!1079665) (not b!1079663) (not b!1079659) (not start!95616) (not mapNonEmpty!41107) (not b!1079666) (not b!1079667))
(check-sat)
