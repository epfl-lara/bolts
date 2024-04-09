; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113632 () Bool)

(assert start!113632)

(declare-fun b_free!31563 () Bool)

(declare-fun b_next!31563 () Bool)

(assert (=> start!113632 (= b_free!31563 (not b_next!31563))))

(declare-fun tp!110501 () Bool)

(declare-fun b_and!50931 () Bool)

(assert (=> start!113632 (= tp!110501 b_and!50931)))

(declare-fun b!1348407 () Bool)

(declare-fun e!767120 () Bool)

(declare-fun tp_is_empty!37563 () Bool)

(assert (=> b!1348407 (= e!767120 tp_is_empty!37563)))

(declare-fun mapNonEmpty!58058 () Bool)

(declare-fun mapRes!58058 () Bool)

(declare-fun tp!110502 () Bool)

(declare-fun e!767117 () Bool)

(assert (=> mapNonEmpty!58058 (= mapRes!58058 (and tp!110502 e!767117))))

(declare-datatypes ((V!55187 0))(
  ( (V!55188 (val!18856 Int)) )
))
(declare-datatypes ((ValueCell!17883 0))(
  ( (ValueCellFull!17883 (v!21506 V!55187)) (EmptyCell!17883) )
))
(declare-fun mapValue!58058 () ValueCell!17883)

(declare-fun mapRest!58058 () (Array (_ BitVec 32) ValueCell!17883))

(declare-fun mapKey!58058 () (_ BitVec 32))

(declare-datatypes ((array!91915 0))(
  ( (array!91916 (arr!44407 (Array (_ BitVec 32) ValueCell!17883)) (size!44958 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91915)

(assert (=> mapNonEmpty!58058 (= (arr!44407 _values!1303) (store mapRest!58058 mapKey!58058 mapValue!58058))))

(declare-fun b!1348408 () Bool)

(declare-fun res!894734 () Bool)

(declare-fun e!767121 () Bool)

(assert (=> b!1348408 (=> (not res!894734) (not e!767121))))

(declare-datatypes ((array!91917 0))(
  ( (array!91918 (arr!44408 (Array (_ BitVec 32) (_ BitVec 64))) (size!44959 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91917)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91917 (_ BitVec 32)) Bool)

(assert (=> b!1348408 (= res!894734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1348409 () Bool)

(declare-fun res!894735 () Bool)

(assert (=> b!1348409 (=> (not res!894735) (not e!767121))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1348409 (= res!894735 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44959 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1348410 () Bool)

(declare-fun res!894732 () Bool)

(assert (=> b!1348410 (=> (not res!894732) (not e!767121))))

(declare-datatypes ((List!31622 0))(
  ( (Nil!31619) (Cons!31618 (h!32827 (_ BitVec 64)) (t!46267 List!31622)) )
))
(declare-fun arrayNoDuplicates!0 (array!91917 (_ BitVec 32) List!31622) Bool)

(assert (=> b!1348410 (= res!894732 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31619))))

(declare-fun res!894733 () Bool)

(assert (=> start!113632 (=> (not res!894733) (not e!767121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113632 (= res!894733 (validMask!0 mask!1977))))

(assert (=> start!113632 e!767121))

(assert (=> start!113632 tp_is_empty!37563))

(assert (=> start!113632 true))

(declare-fun array_inv!33363 (array!91917) Bool)

(assert (=> start!113632 (array_inv!33363 _keys!1571)))

(declare-fun e!767118 () Bool)

(declare-fun array_inv!33364 (array!91915) Bool)

(assert (=> start!113632 (and (array_inv!33364 _values!1303) e!767118)))

(assert (=> start!113632 tp!110501))

(declare-fun mapIsEmpty!58058 () Bool)

(assert (=> mapIsEmpty!58058 mapRes!58058))

(declare-fun b!1348411 () Bool)

(assert (=> b!1348411 (= e!767121 false)))

(declare-fun minValue!1245 () V!55187)

(declare-fun lt!596106 () Bool)

(declare-fun zeroValue!1245 () V!55187)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24454 0))(
  ( (tuple2!24455 (_1!12237 (_ BitVec 64)) (_2!12237 V!55187)) )
))
(declare-datatypes ((List!31623 0))(
  ( (Nil!31620) (Cons!31619 (h!32828 tuple2!24454) (t!46268 List!31623)) )
))
(declare-datatypes ((ListLongMap!22123 0))(
  ( (ListLongMap!22124 (toList!11077 List!31623)) )
))
(declare-fun contains!9192 (ListLongMap!22123 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5967 (array!91917 array!91915 (_ BitVec 32) (_ BitVec 32) V!55187 V!55187 (_ BitVec 32) Int) ListLongMap!22123)

(assert (=> b!1348411 (= lt!596106 (contains!9192 (getCurrentListMap!5967 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1348412 () Bool)

(assert (=> b!1348412 (= e!767117 tp_is_empty!37563)))

(declare-fun b!1348413 () Bool)

(assert (=> b!1348413 (= e!767118 (and e!767120 mapRes!58058))))

(declare-fun condMapEmpty!58058 () Bool)

(declare-fun mapDefault!58058 () ValueCell!17883)

(assert (=> b!1348413 (= condMapEmpty!58058 (= (arr!44407 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17883)) mapDefault!58058)))))

(declare-fun b!1348414 () Bool)

(declare-fun res!894736 () Bool)

(assert (=> b!1348414 (=> (not res!894736) (not e!767121))))

(assert (=> b!1348414 (= res!894736 (and (= (size!44958 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44959 _keys!1571) (size!44958 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(assert (= (and start!113632 res!894733) b!1348414))

(assert (= (and b!1348414 res!894736) b!1348408))

(assert (= (and b!1348408 res!894734) b!1348410))

(assert (= (and b!1348410 res!894732) b!1348409))

(assert (= (and b!1348409 res!894735) b!1348411))

(assert (= (and b!1348413 condMapEmpty!58058) mapIsEmpty!58058))

(assert (= (and b!1348413 (not condMapEmpty!58058)) mapNonEmpty!58058))

(get-info :version)

(assert (= (and mapNonEmpty!58058 ((_ is ValueCellFull!17883) mapValue!58058)) b!1348412))

(assert (= (and b!1348413 ((_ is ValueCellFull!17883) mapDefault!58058)) b!1348407))

(assert (= start!113632 b!1348413))

(declare-fun m!1235527 () Bool)

(assert (=> mapNonEmpty!58058 m!1235527))

(declare-fun m!1235529 () Bool)

(assert (=> b!1348410 m!1235529))

(declare-fun m!1235531 () Bool)

(assert (=> b!1348411 m!1235531))

(assert (=> b!1348411 m!1235531))

(declare-fun m!1235533 () Bool)

(assert (=> b!1348411 m!1235533))

(declare-fun m!1235535 () Bool)

(assert (=> b!1348408 m!1235535))

(declare-fun m!1235537 () Bool)

(assert (=> start!113632 m!1235537))

(declare-fun m!1235539 () Bool)

(assert (=> start!113632 m!1235539))

(declare-fun m!1235541 () Bool)

(assert (=> start!113632 m!1235541))

(check-sat b_and!50931 (not b!1348410) (not b!1348411) (not start!113632) (not b!1348408) (not b_next!31563) tp_is_empty!37563 (not mapNonEmpty!58058))
(check-sat b_and!50931 (not b_next!31563))
