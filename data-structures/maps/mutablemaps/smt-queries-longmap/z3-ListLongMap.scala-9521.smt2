; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113026 () Bool)

(assert start!113026)

(declare-fun b!1339182 () Bool)

(declare-fun e!762758 () Bool)

(declare-fun tp_is_empty!37041 () Bool)

(assert (=> b!1339182 (= e!762758 tp_is_empty!37041)))

(declare-fun mapIsEmpty!57268 () Bool)

(declare-fun mapRes!57268 () Bool)

(assert (=> mapIsEmpty!57268 mapRes!57268))

(declare-fun b!1339183 () Bool)

(declare-fun e!762761 () Bool)

(assert (=> b!1339183 (= e!762761 false)))

(declare-fun lt!593797 () Bool)

(declare-datatypes ((array!90905 0))(
  ( (array!90906 (arr!43904 (Array (_ BitVec 32) (_ BitVec 64))) (size!44455 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90905)

(declare-datatypes ((List!31274 0))(
  ( (Nil!31271) (Cons!31270 (h!32479 (_ BitVec 64)) (t!45613 List!31274)) )
))
(declare-fun arrayNoDuplicates!0 (array!90905 (_ BitVec 32) List!31274) Bool)

(assert (=> b!1339183 (= lt!593797 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31271))))

(declare-fun b!1339184 () Bool)

(declare-fun e!762759 () Bool)

(assert (=> b!1339184 (= e!762759 (and e!762758 mapRes!57268))))

(declare-fun condMapEmpty!57268 () Bool)

(declare-datatypes ((V!54491 0))(
  ( (V!54492 (val!18595 Int)) )
))
(declare-datatypes ((ValueCell!17622 0))(
  ( (ValueCellFull!17622 (v!21241 V!54491)) (EmptyCell!17622) )
))
(declare-datatypes ((array!90907 0))(
  ( (array!90908 (arr!43905 (Array (_ BitVec 32) ValueCell!17622)) (size!44456 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90907)

(declare-fun mapDefault!57268 () ValueCell!17622)

(assert (=> b!1339184 (= condMapEmpty!57268 (= (arr!43905 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17622)) mapDefault!57268)))))

(declare-fun b!1339185 () Bool)

(declare-fun res!888500 () Bool)

(assert (=> b!1339185 (=> (not res!888500) (not e!762761))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339185 (= res!888500 (and (= (size!44456 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44455 _keys!1571) (size!44456 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339186 () Bool)

(declare-fun e!762757 () Bool)

(assert (=> b!1339186 (= e!762757 tp_is_empty!37041)))

(declare-fun b!1339187 () Bool)

(declare-fun res!888498 () Bool)

(assert (=> b!1339187 (=> (not res!888498) (not e!762761))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90905 (_ BitVec 32)) Bool)

(assert (=> b!1339187 (= res!888498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57268 () Bool)

(declare-fun tp!108968 () Bool)

(assert (=> mapNonEmpty!57268 (= mapRes!57268 (and tp!108968 e!762757))))

(declare-fun mapKey!57268 () (_ BitVec 32))

(declare-fun mapRest!57268 () (Array (_ BitVec 32) ValueCell!17622))

(declare-fun mapValue!57268 () ValueCell!17622)

(assert (=> mapNonEmpty!57268 (= (arr!43905 _values!1303) (store mapRest!57268 mapKey!57268 mapValue!57268))))

(declare-fun res!888499 () Bool)

(assert (=> start!113026 (=> (not res!888499) (not e!762761))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113026 (= res!888499 (validMask!0 mask!1977))))

(assert (=> start!113026 e!762761))

(assert (=> start!113026 true))

(declare-fun array_inv!33029 (array!90907) Bool)

(assert (=> start!113026 (and (array_inv!33029 _values!1303) e!762759)))

(declare-fun array_inv!33030 (array!90905) Bool)

(assert (=> start!113026 (array_inv!33030 _keys!1571)))

(assert (= (and start!113026 res!888499) b!1339185))

(assert (= (and b!1339185 res!888500) b!1339187))

(assert (= (and b!1339187 res!888498) b!1339183))

(assert (= (and b!1339184 condMapEmpty!57268) mapIsEmpty!57268))

(assert (= (and b!1339184 (not condMapEmpty!57268)) mapNonEmpty!57268))

(get-info :version)

(assert (= (and mapNonEmpty!57268 ((_ is ValueCellFull!17622) mapValue!57268)) b!1339186))

(assert (= (and b!1339184 ((_ is ValueCellFull!17622) mapDefault!57268)) b!1339182))

(assert (= start!113026 b!1339184))

(declare-fun m!1227337 () Bool)

(assert (=> b!1339183 m!1227337))

(declare-fun m!1227339 () Bool)

(assert (=> b!1339187 m!1227339))

(declare-fun m!1227341 () Bool)

(assert (=> mapNonEmpty!57268 m!1227341))

(declare-fun m!1227343 () Bool)

(assert (=> start!113026 m!1227343))

(declare-fun m!1227345 () Bool)

(assert (=> start!113026 m!1227345))

(declare-fun m!1227347 () Bool)

(assert (=> start!113026 m!1227347))

(check-sat (not mapNonEmpty!57268) tp_is_empty!37041 (not b!1339187) (not b!1339183) (not start!113026))
(check-sat)
