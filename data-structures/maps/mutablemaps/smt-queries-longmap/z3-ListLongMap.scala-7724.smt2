; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97068 () Bool)

(assert start!97068)

(declare-fun b!1103619 () Bool)

(declare-fun res!736361 () Bool)

(declare-fun e!630050 () Bool)

(assert (=> b!1103619 (=> (not res!736361) (not e!630050))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103619 (= res!736361 (validMask!0 mask!1564))))

(declare-fun b!1103620 () Bool)

(declare-fun e!630047 () Bool)

(declare-fun tp_is_empty!27321 () Bool)

(assert (=> b!1103620 (= e!630047 tp_is_empty!27321)))

(declare-fun b!1103621 () Bool)

(declare-fun e!630046 () Bool)

(declare-fun mapRes!42787 () Bool)

(assert (=> b!1103621 (= e!630046 (and e!630047 mapRes!42787))))

(declare-fun condMapEmpty!42787 () Bool)

(declare-datatypes ((V!41555 0))(
  ( (V!41556 (val!13717 Int)) )
))
(declare-datatypes ((ValueCell!12951 0))(
  ( (ValueCellFull!12951 (v!16350 V!41555)) (EmptyCell!12951) )
))
(declare-datatypes ((array!71516 0))(
  ( (array!71517 (arr!34411 (Array (_ BitVec 32) ValueCell!12951)) (size!34948 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71516)

(declare-fun mapDefault!42787 () ValueCell!12951)

(assert (=> b!1103621 (= condMapEmpty!42787 (= (arr!34411 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12951)) mapDefault!42787)))))

(declare-fun b!1103622 () Bool)

(assert (=> b!1103622 (= e!630050 false)))

(declare-fun lt!495065 () Bool)

(declare-datatypes ((array!71518 0))(
  ( (array!71519 (arr!34412 (Array (_ BitVec 32) (_ BitVec 64))) (size!34949 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71518)

(declare-datatypes ((List!24165 0))(
  ( (Nil!24162) (Cons!24161 (h!25370 (_ BitVec 64)) (t!34437 List!24165)) )
))
(declare-fun arrayNoDuplicates!0 (array!71518 (_ BitVec 32) List!24165) Bool)

(assert (=> b!1103622 (= lt!495065 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24162))))

(declare-fun b!1103623 () Bool)

(declare-fun e!630049 () Bool)

(assert (=> b!1103623 (= e!630049 tp_is_empty!27321)))

(declare-fun b!1103624 () Bool)

(declare-fun res!736360 () Bool)

(assert (=> b!1103624 (=> (not res!736360) (not e!630050))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1103624 (= res!736360 (and (= (size!34948 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34949 _keys!1208) (size!34948 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!736359 () Bool)

(assert (=> start!97068 (=> (not res!736359) (not e!630050))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97068 (= res!736359 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34949 _keys!1208))))))

(assert (=> start!97068 e!630050))

(declare-fun array_inv!26354 (array!71518) Bool)

(assert (=> start!97068 (array_inv!26354 _keys!1208)))

(assert (=> start!97068 true))

(declare-fun array_inv!26355 (array!71516) Bool)

(assert (=> start!97068 (and (array_inv!26355 _values!996) e!630046)))

(declare-fun mapIsEmpty!42787 () Bool)

(assert (=> mapIsEmpty!42787 mapRes!42787))

(declare-fun b!1103625 () Bool)

(declare-fun res!736358 () Bool)

(assert (=> b!1103625 (=> (not res!736358) (not e!630050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71518 (_ BitVec 32)) Bool)

(assert (=> b!1103625 (= res!736358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!42787 () Bool)

(declare-fun tp!81708 () Bool)

(assert (=> mapNonEmpty!42787 (= mapRes!42787 (and tp!81708 e!630049))))

(declare-fun mapValue!42787 () ValueCell!12951)

(declare-fun mapRest!42787 () (Array (_ BitVec 32) ValueCell!12951))

(declare-fun mapKey!42787 () (_ BitVec 32))

(assert (=> mapNonEmpty!42787 (= (arr!34411 _values!996) (store mapRest!42787 mapKey!42787 mapValue!42787))))

(assert (= (and start!97068 res!736359) b!1103619))

(assert (= (and b!1103619 res!736361) b!1103624))

(assert (= (and b!1103624 res!736360) b!1103625))

(assert (= (and b!1103625 res!736358) b!1103622))

(assert (= (and b!1103621 condMapEmpty!42787) mapIsEmpty!42787))

(assert (= (and b!1103621 (not condMapEmpty!42787)) mapNonEmpty!42787))

(get-info :version)

(assert (= (and mapNonEmpty!42787 ((_ is ValueCellFull!12951) mapValue!42787)) b!1103623))

(assert (= (and b!1103621 ((_ is ValueCellFull!12951) mapDefault!42787)) b!1103620))

(assert (= start!97068 b!1103621))

(declare-fun m!1023815 () Bool)

(assert (=> b!1103625 m!1023815))

(declare-fun m!1023817 () Bool)

(assert (=> b!1103622 m!1023817))

(declare-fun m!1023819 () Bool)

(assert (=> mapNonEmpty!42787 m!1023819))

(declare-fun m!1023821 () Bool)

(assert (=> b!1103619 m!1023821))

(declare-fun m!1023823 () Bool)

(assert (=> start!97068 m!1023823))

(declare-fun m!1023825 () Bool)

(assert (=> start!97068 m!1023825))

(check-sat (not b!1103619) (not mapNonEmpty!42787) (not b!1103622) (not start!97068) tp_is_empty!27321 (not b!1103625))
(check-sat)
