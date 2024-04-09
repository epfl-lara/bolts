; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113020 () Bool)

(assert start!113020)

(declare-fun b!1339128 () Bool)

(declare-fun e!762712 () Bool)

(declare-fun tp_is_empty!37035 () Bool)

(assert (=> b!1339128 (= e!762712 tp_is_empty!37035)))

(declare-fun mapNonEmpty!57259 () Bool)

(declare-fun mapRes!57259 () Bool)

(declare-fun tp!108959 () Bool)

(assert (=> mapNonEmpty!57259 (= mapRes!57259 (and tp!108959 e!762712))))

(declare-datatypes ((V!54483 0))(
  ( (V!54484 (val!18592 Int)) )
))
(declare-datatypes ((ValueCell!17619 0))(
  ( (ValueCellFull!17619 (v!21238 V!54483)) (EmptyCell!17619) )
))
(declare-fun mapValue!57259 () ValueCell!17619)

(declare-fun mapKey!57259 () (_ BitVec 32))

(declare-fun mapRest!57259 () (Array (_ BitVec 32) ValueCell!17619))

(declare-datatypes ((array!90893 0))(
  ( (array!90894 (arr!43898 (Array (_ BitVec 32) ValueCell!17619)) (size!44449 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90893)

(assert (=> mapNonEmpty!57259 (= (arr!43898 _values!1303) (store mapRest!57259 mapKey!57259 mapValue!57259))))

(declare-fun b!1339129 () Bool)

(declare-fun e!762715 () Bool)

(assert (=> b!1339129 (= e!762715 false)))

(declare-fun lt!593788 () Bool)

(declare-datatypes ((array!90895 0))(
  ( (array!90896 (arr!43899 (Array (_ BitVec 32) (_ BitVec 64))) (size!44450 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90895)

(declare-datatypes ((List!31272 0))(
  ( (Nil!31269) (Cons!31268 (h!32477 (_ BitVec 64)) (t!45611 List!31272)) )
))
(declare-fun arrayNoDuplicates!0 (array!90895 (_ BitVec 32) List!31272) Bool)

(assert (=> b!1339129 (= lt!593788 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31269))))

(declare-fun res!888472 () Bool)

(assert (=> start!113020 (=> (not res!888472) (not e!762715))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113020 (= res!888472 (validMask!0 mask!1977))))

(assert (=> start!113020 e!762715))

(assert (=> start!113020 true))

(declare-fun e!762713 () Bool)

(declare-fun array_inv!33025 (array!90893) Bool)

(assert (=> start!113020 (and (array_inv!33025 _values!1303) e!762713)))

(declare-fun array_inv!33026 (array!90895) Bool)

(assert (=> start!113020 (array_inv!33026 _keys!1571)))

(declare-fun b!1339130 () Bool)

(declare-fun res!888473 () Bool)

(assert (=> b!1339130 (=> (not res!888473) (not e!762715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90895 (_ BitVec 32)) Bool)

(assert (=> b!1339130 (= res!888473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339131 () Bool)

(declare-fun res!888471 () Bool)

(assert (=> b!1339131 (=> (not res!888471) (not e!762715))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339131 (= res!888471 (and (= (size!44449 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44450 _keys!1571) (size!44449 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57259 () Bool)

(assert (=> mapIsEmpty!57259 mapRes!57259))

(declare-fun b!1339132 () Bool)

(declare-fun e!762716 () Bool)

(assert (=> b!1339132 (= e!762713 (and e!762716 mapRes!57259))))

(declare-fun condMapEmpty!57259 () Bool)

(declare-fun mapDefault!57259 () ValueCell!17619)

(assert (=> b!1339132 (= condMapEmpty!57259 (= (arr!43898 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17619)) mapDefault!57259)))))

(declare-fun b!1339133 () Bool)

(assert (=> b!1339133 (= e!762716 tp_is_empty!37035)))

(assert (= (and start!113020 res!888472) b!1339131))

(assert (= (and b!1339131 res!888471) b!1339130))

(assert (= (and b!1339130 res!888473) b!1339129))

(assert (= (and b!1339132 condMapEmpty!57259) mapIsEmpty!57259))

(assert (= (and b!1339132 (not condMapEmpty!57259)) mapNonEmpty!57259))

(get-info :version)

(assert (= (and mapNonEmpty!57259 ((_ is ValueCellFull!17619) mapValue!57259)) b!1339128))

(assert (= (and b!1339132 ((_ is ValueCellFull!17619) mapDefault!57259)) b!1339133))

(assert (= start!113020 b!1339132))

(declare-fun m!1227301 () Bool)

(assert (=> mapNonEmpty!57259 m!1227301))

(declare-fun m!1227303 () Bool)

(assert (=> b!1339129 m!1227303))

(declare-fun m!1227305 () Bool)

(assert (=> start!113020 m!1227305))

(declare-fun m!1227307 () Bool)

(assert (=> start!113020 m!1227307))

(declare-fun m!1227309 () Bool)

(assert (=> start!113020 m!1227309))

(declare-fun m!1227311 () Bool)

(assert (=> b!1339130 m!1227311))

(check-sat (not mapNonEmpty!57259) tp_is_empty!37035 (not b!1339130) (not start!113020) (not b!1339129))
(check-sat)
