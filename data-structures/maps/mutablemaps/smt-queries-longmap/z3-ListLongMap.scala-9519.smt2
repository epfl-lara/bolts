; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113014 () Bool)

(assert start!113014)

(declare-fun res!888446 () Bool)

(declare-fun e!762667 () Bool)

(assert (=> start!113014 (=> (not res!888446) (not e!762667))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113014 (= res!888446 (validMask!0 mask!1977))))

(assert (=> start!113014 e!762667))

(assert (=> start!113014 true))

(declare-datatypes ((V!54475 0))(
  ( (V!54476 (val!18589 Int)) )
))
(declare-datatypes ((ValueCell!17616 0))(
  ( (ValueCellFull!17616 (v!21235 V!54475)) (EmptyCell!17616) )
))
(declare-datatypes ((array!90883 0))(
  ( (array!90884 (arr!43893 (Array (_ BitVec 32) ValueCell!17616)) (size!44444 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90883)

(declare-fun e!762671 () Bool)

(declare-fun array_inv!33023 (array!90883) Bool)

(assert (=> start!113014 (and (array_inv!33023 _values!1303) e!762671)))

(declare-datatypes ((array!90885 0))(
  ( (array!90886 (arr!43894 (Array (_ BitVec 32) (_ BitVec 64))) (size!44445 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90885)

(declare-fun array_inv!33024 (array!90885) Bool)

(assert (=> start!113014 (array_inv!33024 _keys!1571)))

(declare-fun b!1339074 () Bool)

(declare-fun e!762670 () Bool)

(declare-fun tp_is_empty!37029 () Bool)

(assert (=> b!1339074 (= e!762670 tp_is_empty!37029)))

(declare-fun b!1339075 () Bool)

(declare-fun res!888444 () Bool)

(assert (=> b!1339075 (=> (not res!888444) (not e!762667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90885 (_ BitVec 32)) Bool)

(assert (=> b!1339075 (= res!888444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339076 () Bool)

(declare-fun e!762668 () Bool)

(assert (=> b!1339076 (= e!762668 tp_is_empty!37029)))

(declare-fun mapNonEmpty!57250 () Bool)

(declare-fun mapRes!57250 () Bool)

(declare-fun tp!108950 () Bool)

(assert (=> mapNonEmpty!57250 (= mapRes!57250 (and tp!108950 e!762670))))

(declare-fun mapKey!57250 () (_ BitVec 32))

(declare-fun mapValue!57250 () ValueCell!17616)

(declare-fun mapRest!57250 () (Array (_ BitVec 32) ValueCell!17616))

(assert (=> mapNonEmpty!57250 (= (arr!43893 _values!1303) (store mapRest!57250 mapKey!57250 mapValue!57250))))

(declare-fun mapIsEmpty!57250 () Bool)

(assert (=> mapIsEmpty!57250 mapRes!57250))

(declare-fun b!1339077 () Bool)

(declare-fun res!888445 () Bool)

(assert (=> b!1339077 (=> (not res!888445) (not e!762667))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339077 (= res!888445 (and (= (size!44444 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44445 _keys!1571) (size!44444 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339078 () Bool)

(assert (=> b!1339078 (= e!762671 (and e!762668 mapRes!57250))))

(declare-fun condMapEmpty!57250 () Bool)

(declare-fun mapDefault!57250 () ValueCell!17616)

(assert (=> b!1339078 (= condMapEmpty!57250 (= (arr!43893 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17616)) mapDefault!57250)))))

(declare-fun b!1339079 () Bool)

(assert (=> b!1339079 (= e!762667 false)))

(declare-fun lt!593779 () Bool)

(declare-datatypes ((List!31270 0))(
  ( (Nil!31267) (Cons!31266 (h!32475 (_ BitVec 64)) (t!45609 List!31270)) )
))
(declare-fun arrayNoDuplicates!0 (array!90885 (_ BitVec 32) List!31270) Bool)

(assert (=> b!1339079 (= lt!593779 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31267))))

(assert (= (and start!113014 res!888446) b!1339077))

(assert (= (and b!1339077 res!888445) b!1339075))

(assert (= (and b!1339075 res!888444) b!1339079))

(assert (= (and b!1339078 condMapEmpty!57250) mapIsEmpty!57250))

(assert (= (and b!1339078 (not condMapEmpty!57250)) mapNonEmpty!57250))

(get-info :version)

(assert (= (and mapNonEmpty!57250 ((_ is ValueCellFull!17616) mapValue!57250)) b!1339074))

(assert (= (and b!1339078 ((_ is ValueCellFull!17616) mapDefault!57250)) b!1339076))

(assert (= start!113014 b!1339078))

(declare-fun m!1227265 () Bool)

(assert (=> start!113014 m!1227265))

(declare-fun m!1227267 () Bool)

(assert (=> start!113014 m!1227267))

(declare-fun m!1227269 () Bool)

(assert (=> start!113014 m!1227269))

(declare-fun m!1227271 () Bool)

(assert (=> b!1339075 m!1227271))

(declare-fun m!1227273 () Bool)

(assert (=> mapNonEmpty!57250 m!1227273))

(declare-fun m!1227275 () Bool)

(assert (=> b!1339079 m!1227275))

(check-sat tp_is_empty!37029 (not mapNonEmpty!57250) (not b!1339079) (not b!1339075) (not start!113014))
(check-sat)
