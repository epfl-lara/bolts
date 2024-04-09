; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113446 () Bool)

(assert start!113446)

(declare-fun b_free!31461 () Bool)

(declare-fun b_next!31461 () Bool)

(assert (=> start!113446 (= b_free!31461 (not b_next!31461))))

(declare-fun tp!110189 () Bool)

(declare-fun b_and!50759 () Bool)

(assert (=> start!113446 (= tp!110189 b_and!50759)))

(declare-fun mapIsEmpty!57898 () Bool)

(declare-fun mapRes!57898 () Bool)

(assert (=> mapIsEmpty!57898 mapRes!57898))

(declare-fun b!1346173 () Bool)

(declare-fun e!765991 () Bool)

(declare-fun e!765990 () Bool)

(assert (=> b!1346173 (= e!765991 (and e!765990 mapRes!57898))))

(declare-fun condMapEmpty!57898 () Bool)

(declare-datatypes ((V!55051 0))(
  ( (V!55052 (val!18805 Int)) )
))
(declare-datatypes ((ValueCell!17832 0))(
  ( (ValueCellFull!17832 (v!21451 V!55051)) (EmptyCell!17832) )
))
(declare-datatypes ((array!91717 0))(
  ( (array!91718 (arr!44310 (Array (_ BitVec 32) ValueCell!17832)) (size!44861 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91717)

(declare-fun mapDefault!57898 () ValueCell!17832)

(assert (=> b!1346173 (= condMapEmpty!57898 (= (arr!44310 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17832)) mapDefault!57898)))))

(declare-fun b!1346174 () Bool)

(declare-fun res!893345 () Bool)

(declare-fun e!765988 () Bool)

(assert (=> b!1346174 (=> (not res!893345) (not e!765988))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91719 0))(
  ( (array!91720 (arr!44311 (Array (_ BitVec 32) (_ BitVec 64))) (size!44862 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91719)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346174 (= res!893345 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44862 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346175 () Bool)

(declare-fun res!893344 () Bool)

(assert (=> b!1346175 (=> (not res!893344) (not e!765988))))

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1346175 (= res!893344 (and (= (size!44861 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44862 _keys!1571) (size!44861 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!893342 () Bool)

(assert (=> start!113446 (=> (not res!893342) (not e!765988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113446 (= res!893342 (validMask!0 mask!1977))))

(assert (=> start!113446 e!765988))

(declare-fun tp_is_empty!37461 () Bool)

(assert (=> start!113446 tp_is_empty!37461))

(assert (=> start!113446 true))

(declare-fun array_inv!33305 (array!91719) Bool)

(assert (=> start!113446 (array_inv!33305 _keys!1571)))

(declare-fun array_inv!33306 (array!91717) Bool)

(assert (=> start!113446 (and (array_inv!33306 _values!1303) e!765991)))

(assert (=> start!113446 tp!110189))

(declare-fun b!1346176 () Bool)

(assert (=> b!1346176 (= e!765988 false)))

(declare-fun minValue!1245 () V!55051)

(declare-fun zeroValue!1245 () V!55051)

(declare-fun lt!595426 () Bool)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24380 0))(
  ( (tuple2!24381 (_1!12200 (_ BitVec 64)) (_2!12200 V!55051)) )
))
(declare-datatypes ((List!31553 0))(
  ( (Nil!31550) (Cons!31549 (h!32758 tuple2!24380) (t!46150 List!31553)) )
))
(declare-datatypes ((ListLongMap!22049 0))(
  ( (ListLongMap!22050 (toList!11040 List!31553)) )
))
(declare-fun contains!9152 (ListLongMap!22049 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5931 (array!91719 array!91717 (_ BitVec 32) (_ BitVec 32) V!55051 V!55051 (_ BitVec 32) Int) ListLongMap!22049)

(assert (=> b!1346176 (= lt!595426 (contains!9152 (getCurrentListMap!5931 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1346177 () Bool)

(assert (=> b!1346177 (= e!765990 tp_is_empty!37461)))

(declare-fun b!1346178 () Bool)

(declare-fun res!893341 () Bool)

(assert (=> b!1346178 (=> (not res!893341) (not e!765988))))

(declare-datatypes ((List!31554 0))(
  ( (Nil!31551) (Cons!31550 (h!32759 (_ BitVec 64)) (t!46151 List!31554)) )
))
(declare-fun arrayNoDuplicates!0 (array!91719 (_ BitVec 32) List!31554) Bool)

(assert (=> b!1346178 (= res!893341 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31551))))

(declare-fun mapNonEmpty!57898 () Bool)

(declare-fun tp!110188 () Bool)

(declare-fun e!765992 () Bool)

(assert (=> mapNonEmpty!57898 (= mapRes!57898 (and tp!110188 e!765992))))

(declare-fun mapRest!57898 () (Array (_ BitVec 32) ValueCell!17832))

(declare-fun mapValue!57898 () ValueCell!17832)

(declare-fun mapKey!57898 () (_ BitVec 32))

(assert (=> mapNonEmpty!57898 (= (arr!44310 _values!1303) (store mapRest!57898 mapKey!57898 mapValue!57898))))

(declare-fun b!1346179 () Bool)

(assert (=> b!1346179 (= e!765992 tp_is_empty!37461)))

(declare-fun b!1346180 () Bool)

(declare-fun res!893343 () Bool)

(assert (=> b!1346180 (=> (not res!893343) (not e!765988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91719 (_ BitVec 32)) Bool)

(assert (=> b!1346180 (= res!893343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(assert (= (and start!113446 res!893342) b!1346175))

(assert (= (and b!1346175 res!893344) b!1346180))

(assert (= (and b!1346180 res!893343) b!1346178))

(assert (= (and b!1346178 res!893341) b!1346174))

(assert (= (and b!1346174 res!893345) b!1346176))

(assert (= (and b!1346173 condMapEmpty!57898) mapIsEmpty!57898))

(assert (= (and b!1346173 (not condMapEmpty!57898)) mapNonEmpty!57898))

(get-info :version)

(assert (= (and mapNonEmpty!57898 ((_ is ValueCellFull!17832) mapValue!57898)) b!1346179))

(assert (= (and b!1346173 ((_ is ValueCellFull!17832) mapDefault!57898)) b!1346177))

(assert (= start!113446 b!1346173))

(declare-fun m!1233419 () Bool)

(assert (=> start!113446 m!1233419))

(declare-fun m!1233421 () Bool)

(assert (=> start!113446 m!1233421))

(declare-fun m!1233423 () Bool)

(assert (=> start!113446 m!1233423))

(declare-fun m!1233425 () Bool)

(assert (=> b!1346176 m!1233425))

(assert (=> b!1346176 m!1233425))

(declare-fun m!1233427 () Bool)

(assert (=> b!1346176 m!1233427))

(declare-fun m!1233429 () Bool)

(assert (=> b!1346178 m!1233429))

(declare-fun m!1233431 () Bool)

(assert (=> b!1346180 m!1233431))

(declare-fun m!1233433 () Bool)

(assert (=> mapNonEmpty!57898 m!1233433))

(check-sat (not start!113446) (not b!1346178) tp_is_empty!37461 (not b_next!31461) (not mapNonEmpty!57898) (not b!1346180) b_and!50759 (not b!1346176))
(check-sat b_and!50759 (not b_next!31461))
