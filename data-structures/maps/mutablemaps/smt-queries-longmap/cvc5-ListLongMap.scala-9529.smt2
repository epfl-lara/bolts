; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113072 () Bool)

(assert start!113072)

(declare-fun b_free!31087 () Bool)

(declare-fun b_next!31087 () Bool)

(assert (=> start!113072 (= b_free!31087 (not b_next!31087))))

(declare-fun tp!109066 () Bool)

(declare-fun b_and!50127 () Bool)

(assert (=> start!113072 (= tp!109066 b_and!50127)))

(declare-fun b!1339663 () Bool)

(declare-fun res!888775 () Bool)

(declare-fun e!763102 () Bool)

(assert (=> b!1339663 (=> (not res!888775) (not e!763102))))

(declare-datatypes ((array!90991 0))(
  ( (array!90992 (arr!43947 (Array (_ BitVec 32) (_ BitVec 64))) (size!44498 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90991)

(declare-datatypes ((List!31295 0))(
  ( (Nil!31292) (Cons!31291 (h!32500 (_ BitVec 64)) (t!45634 List!31295)) )
))
(declare-fun arrayNoDuplicates!0 (array!90991 (_ BitVec 32) List!31295) Bool)

(assert (=> b!1339663 (= res!888775 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31292))))

(declare-fun b!1339664 () Bool)

(declare-fun e!763104 () Bool)

(declare-fun tp_is_empty!37087 () Bool)

(assert (=> b!1339664 (= e!763104 tp_is_empty!37087)))

(declare-fun res!888776 () Bool)

(assert (=> start!113072 (=> (not res!888776) (not e!763102))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113072 (= res!888776 (validMask!0 mask!1977))))

(assert (=> start!113072 e!763102))

(assert (=> start!113072 tp_is_empty!37087))

(assert (=> start!113072 true))

(declare-fun array_inv!33061 (array!90991) Bool)

(assert (=> start!113072 (array_inv!33061 _keys!1571)))

(declare-datatypes ((V!54553 0))(
  ( (V!54554 (val!18618 Int)) )
))
(declare-datatypes ((ValueCell!17645 0))(
  ( (ValueCellFull!17645 (v!21264 V!54553)) (EmptyCell!17645) )
))
(declare-datatypes ((array!90993 0))(
  ( (array!90994 (arr!43948 (Array (_ BitVec 32) ValueCell!17645)) (size!44499 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90993)

(declare-fun e!763103 () Bool)

(declare-fun array_inv!33062 (array!90993) Bool)

(assert (=> start!113072 (and (array_inv!33062 _values!1303) e!763103)))

(assert (=> start!113072 tp!109066))

(declare-fun mapIsEmpty!57337 () Bool)

(declare-fun mapRes!57337 () Bool)

(assert (=> mapIsEmpty!57337 mapRes!57337))

(declare-fun b!1339665 () Bool)

(assert (=> b!1339665 (= e!763102 false)))

(declare-fun minValue!1245 () V!54553)

(declare-fun zeroValue!1245 () V!54553)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun lt!593857 () Bool)

(declare-datatypes ((tuple2!24108 0))(
  ( (tuple2!24109 (_1!12064 (_ BitVec 64)) (_2!12064 V!54553)) )
))
(declare-datatypes ((List!31296 0))(
  ( (Nil!31293) (Cons!31292 (h!32501 tuple2!24108) (t!45635 List!31296)) )
))
(declare-datatypes ((ListLongMap!21777 0))(
  ( (ListLongMap!21778 (toList!10904 List!31296)) )
))
(declare-fun contains!9016 (ListLongMap!21777 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5808 (array!90991 array!90993 (_ BitVec 32) (_ BitVec 32) V!54553 V!54553 (_ BitVec 32) Int) ListLongMap!21777)

(assert (=> b!1339665 (= lt!593857 (contains!9016 (getCurrentListMap!5808 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1339666 () Bool)

(declare-fun res!888772 () Bool)

(assert (=> b!1339666 (=> (not res!888772) (not e!763102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90991 (_ BitVec 32)) Bool)

(assert (=> b!1339666 (= res!888772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339667 () Bool)

(declare-fun e!763106 () Bool)

(assert (=> b!1339667 (= e!763103 (and e!763106 mapRes!57337))))

(declare-fun condMapEmpty!57337 () Bool)

(declare-fun mapDefault!57337 () ValueCell!17645)

