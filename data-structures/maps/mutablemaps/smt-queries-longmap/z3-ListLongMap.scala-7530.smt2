; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95522 () Bool)

(assert start!95522)

(declare-fun b!1078236 () Bool)

(declare-fun e!616551 () Bool)

(declare-fun tp_is_empty!26157 () Bool)

(assert (=> b!1078236 (= e!616551 tp_is_empty!26157)))

(declare-fun b!1078237 () Bool)

(declare-fun res!718554 () Bool)

(declare-fun e!616549 () Bool)

(assert (=> b!1078237 (=> (not res!718554) (not e!616549))))

(declare-datatypes ((array!69228 0))(
  ( (array!69229 (arr!33285 (Array (_ BitVec 32) (_ BitVec 64))) (size!33822 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69228)

(declare-datatypes ((List!23348 0))(
  ( (Nil!23345) (Cons!23344 (h!24553 (_ BitVec 64)) (t!32714 List!23348)) )
))
(declare-fun arrayNoDuplicates!0 (array!69228 (_ BitVec 32) List!23348) Bool)

(assert (=> b!1078237 (= res!718554 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23345))))

(declare-fun b!1078238 () Bool)

(declare-fun e!616546 () Bool)

(declare-fun mapRes!40987 () Bool)

(assert (=> b!1078238 (= e!616546 (and e!616551 mapRes!40987))))

(declare-fun condMapEmpty!40987 () Bool)

(declare-datatypes ((V!40003 0))(
  ( (V!40004 (val!13135 Int)) )
))
(declare-datatypes ((ValueCell!12369 0))(
  ( (ValueCellFull!12369 (v!15757 V!40003)) (EmptyCell!12369) )
))
(declare-datatypes ((array!69230 0))(
  ( (array!69231 (arr!33286 (Array (_ BitVec 32) ValueCell!12369)) (size!33823 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69230)

(declare-fun mapDefault!40987 () ValueCell!12369)

(assert (=> b!1078238 (= condMapEmpty!40987 (= (arr!33286 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12369)) mapDefault!40987)))))

(declare-fun b!1078239 () Bool)

(declare-fun e!616550 () Bool)

(assert (=> b!1078239 (= e!616549 e!616550)))

(declare-fun res!718556 () Bool)

(assert (=> b!1078239 (=> (not res!718556) (not e!616550))))

(declare-fun lt!478585 () array!69228)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69228 (_ BitVec 32)) Bool)

(assert (=> b!1078239 (= res!718556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478585 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078239 (= lt!478585 (array!69229 (store (arr!33285 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33822 _keys!1070)))))

(declare-fun b!1078240 () Bool)

(declare-fun res!718553 () Bool)

(assert (=> b!1078240 (=> (not res!718553) (not e!616549))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1078240 (= res!718553 (= (select (arr!33285 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!40987 () Bool)

(assert (=> mapIsEmpty!40987 mapRes!40987))

(declare-fun b!1078241 () Bool)

(declare-fun res!718555 () Bool)

(assert (=> b!1078241 (=> (not res!718555) (not e!616549))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1078241 (= res!718555 (and (= (size!33823 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33822 _keys!1070) (size!33823 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!718557 () Bool)

(assert (=> start!95522 (=> (not res!718557) (not e!616549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95522 (= res!718557 (validMask!0 mask!1414))))

(assert (=> start!95522 e!616549))

(assert (=> start!95522 true))

(declare-fun array_inv!25578 (array!69228) Bool)

(assert (=> start!95522 (array_inv!25578 _keys!1070)))

(declare-fun array_inv!25579 (array!69230) Bool)

(assert (=> start!95522 (and (array_inv!25579 _values!874) e!616546)))

(declare-fun b!1078242 () Bool)

(declare-fun res!718558 () Bool)

(assert (=> b!1078242 (=> (not res!718558) (not e!616549))))

(assert (=> b!1078242 (= res!718558 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33822 _keys!1070))))))

(declare-fun b!1078243 () Bool)

(declare-fun e!616548 () Bool)

(assert (=> b!1078243 (= e!616548 tp_is_empty!26157)))

(declare-fun b!1078244 () Bool)

(declare-fun res!718560 () Bool)

(assert (=> b!1078244 (=> (not res!718560) (not e!616549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078244 (= res!718560 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!40987 () Bool)

(declare-fun tp!78450 () Bool)

(assert (=> mapNonEmpty!40987 (= mapRes!40987 (and tp!78450 e!616548))))

(declare-fun mapKey!40987 () (_ BitVec 32))

(declare-fun mapRest!40987 () (Array (_ BitVec 32) ValueCell!12369))

(declare-fun mapValue!40987 () ValueCell!12369)

(assert (=> mapNonEmpty!40987 (= (arr!33286 _values!874) (store mapRest!40987 mapKey!40987 mapValue!40987))))

(declare-fun b!1078245 () Bool)

(assert (=> b!1078245 (= e!616550 false)))

(declare-fun lt!478586 () Bool)

(assert (=> b!1078245 (= lt!478586 (arrayNoDuplicates!0 lt!478585 #b00000000000000000000000000000000 Nil!23345))))

(declare-fun b!1078246 () Bool)

(declare-fun res!718559 () Bool)

(assert (=> b!1078246 (=> (not res!718559) (not e!616549))))

(assert (=> b!1078246 (= res!718559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(assert (= (and start!95522 res!718557) b!1078241))

(assert (= (and b!1078241 res!718555) b!1078246))

(assert (= (and b!1078246 res!718559) b!1078237))

(assert (= (and b!1078237 res!718554) b!1078242))

(assert (= (and b!1078242 res!718558) b!1078244))

(assert (= (and b!1078244 res!718560) b!1078240))

(assert (= (and b!1078240 res!718553) b!1078239))

(assert (= (and b!1078239 res!718556) b!1078245))

(assert (= (and b!1078238 condMapEmpty!40987) mapIsEmpty!40987))

(assert (= (and b!1078238 (not condMapEmpty!40987)) mapNonEmpty!40987))

(get-info :version)

(assert (= (and mapNonEmpty!40987 ((_ is ValueCellFull!12369) mapValue!40987)) b!1078243))

(assert (= (and b!1078238 ((_ is ValueCellFull!12369) mapDefault!40987)) b!1078236))

(assert (= start!95522 b!1078238))

(declare-fun m!996923 () Bool)

(assert (=> b!1078240 m!996923))

(declare-fun m!996925 () Bool)

(assert (=> b!1078246 m!996925))

(declare-fun m!996927 () Bool)

(assert (=> b!1078237 m!996927))

(declare-fun m!996929 () Bool)

(assert (=> start!95522 m!996929))

(declare-fun m!996931 () Bool)

(assert (=> start!95522 m!996931))

(declare-fun m!996933 () Bool)

(assert (=> start!95522 m!996933))

(declare-fun m!996935 () Bool)

(assert (=> b!1078245 m!996935))

(declare-fun m!996937 () Bool)

(assert (=> mapNonEmpty!40987 m!996937))

(declare-fun m!996939 () Bool)

(assert (=> b!1078239 m!996939))

(declare-fun m!996941 () Bool)

(assert (=> b!1078239 m!996941))

(declare-fun m!996943 () Bool)

(assert (=> b!1078244 m!996943))

(check-sat (not start!95522) (not b!1078239) (not b!1078244) tp_is_empty!26157 (not b!1078246) (not mapNonEmpty!40987) (not b!1078237) (not b!1078245))
(check-sat)
