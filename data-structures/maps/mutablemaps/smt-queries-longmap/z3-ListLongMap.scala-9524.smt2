; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113044 () Bool)

(assert start!113044)

(declare-fun res!888579 () Bool)

(declare-fun e!762896 () Bool)

(assert (=> start!113044 (=> (not res!888579) (not e!762896))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113044 (= res!888579 (validMask!0 mask!1977))))

(assert (=> start!113044 e!762896))

(assert (=> start!113044 true))

(declare-datatypes ((V!54515 0))(
  ( (V!54516 (val!18604 Int)) )
))
(declare-datatypes ((ValueCell!17631 0))(
  ( (ValueCellFull!17631 (v!21250 V!54515)) (EmptyCell!17631) )
))
(declare-datatypes ((array!90937 0))(
  ( (array!90938 (arr!43920 (Array (_ BitVec 32) ValueCell!17631)) (size!44471 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90937)

(declare-fun e!762893 () Bool)

(declare-fun array_inv!33037 (array!90937) Bool)

(assert (=> start!113044 (and (array_inv!33037 _values!1303) e!762893)))

(declare-datatypes ((array!90939 0))(
  ( (array!90940 (arr!43921 (Array (_ BitVec 32) (_ BitVec 64))) (size!44472 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90939)

(declare-fun array_inv!33038 (array!90939) Bool)

(assert (=> start!113044 (array_inv!33038 _keys!1571)))

(declare-fun b!1339344 () Bool)

(declare-fun e!762892 () Bool)

(declare-fun tp_is_empty!37059 () Bool)

(assert (=> b!1339344 (= e!762892 tp_is_empty!37059)))

(declare-fun b!1339345 () Bool)

(declare-fun res!888580 () Bool)

(assert (=> b!1339345 (=> (not res!888580) (not e!762896))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339345 (= res!888580 (and (= (size!44471 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44472 _keys!1571) (size!44471 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57295 () Bool)

(declare-fun mapRes!57295 () Bool)

(assert (=> mapIsEmpty!57295 mapRes!57295))

(declare-fun mapNonEmpty!57295 () Bool)

(declare-fun tp!108995 () Bool)

(declare-fun e!762895 () Bool)

(assert (=> mapNonEmpty!57295 (= mapRes!57295 (and tp!108995 e!762895))))

(declare-fun mapRest!57295 () (Array (_ BitVec 32) ValueCell!17631))

(declare-fun mapValue!57295 () ValueCell!17631)

(declare-fun mapKey!57295 () (_ BitVec 32))

(assert (=> mapNonEmpty!57295 (= (arr!43920 _values!1303) (store mapRest!57295 mapKey!57295 mapValue!57295))))

(declare-fun b!1339346 () Bool)

(declare-fun res!888581 () Bool)

(assert (=> b!1339346 (=> (not res!888581) (not e!762896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90939 (_ BitVec 32)) Bool)

(assert (=> b!1339346 (= res!888581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339347 () Bool)

(assert (=> b!1339347 (= e!762896 false)))

(declare-fun lt!593824 () Bool)

(declare-datatypes ((List!31279 0))(
  ( (Nil!31276) (Cons!31275 (h!32484 (_ BitVec 64)) (t!45618 List!31279)) )
))
(declare-fun arrayNoDuplicates!0 (array!90939 (_ BitVec 32) List!31279) Bool)

(assert (=> b!1339347 (= lt!593824 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31276))))

(declare-fun b!1339348 () Bool)

(assert (=> b!1339348 (= e!762895 tp_is_empty!37059)))

(declare-fun b!1339349 () Bool)

(assert (=> b!1339349 (= e!762893 (and e!762892 mapRes!57295))))

(declare-fun condMapEmpty!57295 () Bool)

(declare-fun mapDefault!57295 () ValueCell!17631)

(assert (=> b!1339349 (= condMapEmpty!57295 (= (arr!43920 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17631)) mapDefault!57295)))))

(assert (= (and start!113044 res!888579) b!1339345))

(assert (= (and b!1339345 res!888580) b!1339346))

(assert (= (and b!1339346 res!888581) b!1339347))

(assert (= (and b!1339349 condMapEmpty!57295) mapIsEmpty!57295))

(assert (= (and b!1339349 (not condMapEmpty!57295)) mapNonEmpty!57295))

(get-info :version)

(assert (= (and mapNonEmpty!57295 ((_ is ValueCellFull!17631) mapValue!57295)) b!1339348))

(assert (= (and b!1339349 ((_ is ValueCellFull!17631) mapDefault!57295)) b!1339344))

(assert (= start!113044 b!1339349))

(declare-fun m!1227445 () Bool)

(assert (=> start!113044 m!1227445))

(declare-fun m!1227447 () Bool)

(assert (=> start!113044 m!1227447))

(declare-fun m!1227449 () Bool)

(assert (=> start!113044 m!1227449))

(declare-fun m!1227451 () Bool)

(assert (=> mapNonEmpty!57295 m!1227451))

(declare-fun m!1227453 () Bool)

(assert (=> b!1339346 m!1227453))

(declare-fun m!1227455 () Bool)

(assert (=> b!1339347 m!1227455))

(check-sat (not b!1339347) (not mapNonEmpty!57295) (not start!113044) tp_is_empty!37059 (not b!1339346))
(check-sat)
