; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97056 () Bool)

(assert start!97056)

(declare-fun b!1103466 () Bool)

(declare-fun e!629958 () Bool)

(declare-fun tp_is_empty!27309 () Bool)

(assert (=> b!1103466 (= e!629958 tp_is_empty!27309)))

(declare-fun b!1103467 () Bool)

(declare-fun e!629959 () Bool)

(assert (=> b!1103467 (= e!629959 tp_is_empty!27309)))

(declare-fun mapNonEmpty!42769 () Bool)

(declare-fun mapRes!42769 () Bool)

(declare-fun tp!81690 () Bool)

(assert (=> mapNonEmpty!42769 (= mapRes!42769 (and tp!81690 e!629959))))

(declare-fun mapKey!42769 () (_ BitVec 32))

(declare-datatypes ((V!41539 0))(
  ( (V!41540 (val!13711 Int)) )
))
(declare-datatypes ((ValueCell!12945 0))(
  ( (ValueCellFull!12945 (v!16344 V!41539)) (EmptyCell!12945) )
))
(declare-fun mapValue!42769 () ValueCell!12945)

(declare-datatypes ((array!71496 0))(
  ( (array!71497 (arr!34401 (Array (_ BitVec 32) ValueCell!12945)) (size!34938 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71496)

(declare-fun mapRest!42769 () (Array (_ BitVec 32) ValueCell!12945))

(assert (=> mapNonEmpty!42769 (= (arr!34401 _values!996) (store mapRest!42769 mapKey!42769 mapValue!42769))))

(declare-fun b!1103468 () Bool)

(declare-fun e!629956 () Bool)

(assert (=> b!1103468 (= e!629956 (and e!629958 mapRes!42769))))

(declare-fun condMapEmpty!42769 () Bool)

(declare-fun mapDefault!42769 () ValueCell!12945)

(assert (=> b!1103468 (= condMapEmpty!42769 (= (arr!34401 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12945)) mapDefault!42769)))))

(declare-fun b!1103469 () Bool)

(declare-fun res!736259 () Bool)

(declare-fun e!629957 () Bool)

(assert (=> b!1103469 (=> (not res!736259) (not e!629957))))

(declare-datatypes ((array!71498 0))(
  ( (array!71499 (arr!34402 (Array (_ BitVec 32) (_ BitVec 64))) (size!34939 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71498)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71498 (_ BitVec 32)) Bool)

(assert (=> b!1103469 (= res!736259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103470 () Bool)

(declare-fun res!736260 () Bool)

(assert (=> b!1103470 (=> (not res!736260) (not e!629957))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1103470 (= res!736260 (and (= (size!34938 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34939 _keys!1208) (size!34938 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103471 () Bool)

(assert (=> b!1103471 (= e!629957 false)))

(declare-fun lt!495056 () Bool)

(declare-datatypes ((List!24162 0))(
  ( (Nil!24159) (Cons!24158 (h!25367 (_ BitVec 64)) (t!34434 List!24162)) )
))
(declare-fun arrayNoDuplicates!0 (array!71498 (_ BitVec 32) List!24162) Bool)

(assert (=> b!1103471 (= lt!495056 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24159))))

(declare-fun b!1103472 () Bool)

(declare-fun res!736261 () Bool)

(assert (=> b!1103472 (=> (not res!736261) (not e!629957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103472 (= res!736261 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!42769 () Bool)

(assert (=> mapIsEmpty!42769 mapRes!42769))

(declare-fun res!736262 () Bool)

(assert (=> start!97056 (=> (not res!736262) (not e!629957))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97056 (= res!736262 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34939 _keys!1208))))))

(assert (=> start!97056 e!629957))

(declare-fun array_inv!26350 (array!71498) Bool)

(assert (=> start!97056 (array_inv!26350 _keys!1208)))

(assert (=> start!97056 true))

(declare-fun array_inv!26351 (array!71496) Bool)

(assert (=> start!97056 (and (array_inv!26351 _values!996) e!629956)))

(assert (= (and start!97056 res!736262) b!1103472))

(assert (= (and b!1103472 res!736261) b!1103470))

(assert (= (and b!1103470 res!736260) b!1103469))

(assert (= (and b!1103469 res!736259) b!1103471))

(assert (= (and b!1103468 condMapEmpty!42769) mapIsEmpty!42769))

(assert (= (and b!1103468 (not condMapEmpty!42769)) mapNonEmpty!42769))

(get-info :version)

(assert (= (and mapNonEmpty!42769 ((_ is ValueCellFull!12945) mapValue!42769)) b!1103467))

(assert (= (and b!1103468 ((_ is ValueCellFull!12945) mapDefault!42769)) b!1103466))

(assert (= start!97056 b!1103468))

(declare-fun m!1023731 () Bool)

(assert (=> start!97056 m!1023731))

(declare-fun m!1023733 () Bool)

(assert (=> start!97056 m!1023733))

(declare-fun m!1023735 () Bool)

(assert (=> b!1103472 m!1023735))

(declare-fun m!1023737 () Bool)

(assert (=> b!1103471 m!1023737))

(declare-fun m!1023739 () Bool)

(assert (=> b!1103469 m!1023739))

(declare-fun m!1023741 () Bool)

(assert (=> mapNonEmpty!42769 m!1023741))

(check-sat (not b!1103469) (not start!97056) (not mapNonEmpty!42769) (not b!1103471) (not b!1103472) tp_is_empty!27309)
(check-sat)
