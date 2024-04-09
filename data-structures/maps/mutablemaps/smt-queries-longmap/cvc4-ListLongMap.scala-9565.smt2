; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113292 () Bool)

(assert start!113292)

(declare-fun b_free!31307 () Bool)

(declare-fun b_next!31307 () Bool)

(assert (=> start!113292 (= b_free!31307 (not b_next!31307))))

(declare-fun tp!109726 () Bool)

(declare-fun b_and!50531 () Bool)

(assert (=> start!113292 (= tp!109726 b_and!50531)))

(declare-fun res!891568 () Bool)

(declare-fun e!764753 () Bool)

(assert (=> start!113292 (=> (not res!891568) (not e!764753))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113292 (= res!891568 (validMask!0 mask!1977))))

(assert (=> start!113292 e!764753))

(declare-fun tp_is_empty!37307 () Bool)

(assert (=> start!113292 tp_is_empty!37307))

(assert (=> start!113292 true))

(declare-datatypes ((array!91413 0))(
  ( (array!91414 (arr!44158 (Array (_ BitVec 32) (_ BitVec 64))) (size!44709 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91413)

(declare-fun array_inv!33199 (array!91413) Bool)

(assert (=> start!113292 (array_inv!33199 _keys!1571)))

(declare-datatypes ((V!54845 0))(
  ( (V!54846 (val!18728 Int)) )
))
(declare-datatypes ((ValueCell!17755 0))(
  ( (ValueCellFull!17755 (v!21374 V!54845)) (EmptyCell!17755) )
))
(declare-datatypes ((array!91415 0))(
  ( (array!91416 (arr!44159 (Array (_ BitVec 32) ValueCell!17755)) (size!44710 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91415)

(declare-fun e!764755 () Bool)

(declare-fun array_inv!33200 (array!91415) Bool)

(assert (=> start!113292 (and (array_inv!33200 _values!1303) e!764755)))

(assert (=> start!113292 tp!109726))

(declare-fun mapNonEmpty!57667 () Bool)

(declare-fun mapRes!57667 () Bool)

(declare-fun tp!109727 () Bool)

(declare-fun e!764754 () Bool)

(assert (=> mapNonEmpty!57667 (= mapRes!57667 (and tp!109727 e!764754))))

(declare-fun mapValue!57667 () ValueCell!17755)

(declare-fun mapRest!57667 () (Array (_ BitVec 32) ValueCell!17755))

(declare-fun mapKey!57667 () (_ BitVec 32))

(assert (=> mapNonEmpty!57667 (= (arr!44159 _values!1303) (store mapRest!57667 mapKey!57667 mapValue!57667))))

(declare-fun b!1343626 () Bool)

(assert (=> b!1343626 (= e!764754 tp_is_empty!37307)))

(declare-fun b!1343627 () Bool)

(declare-fun res!891561 () Bool)

(assert (=> b!1343627 (=> (not res!891561) (not e!764753))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343627 (= res!891561 (validKeyInArray!0 (select (arr!44158 _keys!1571) from!1960)))))

(declare-fun b!1343628 () Bool)

(declare-fun res!891564 () Bool)

(assert (=> b!1343628 (=> (not res!891564) (not e!764753))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1343628 (= res!891564 (and (= (size!44710 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44709 _keys!1571) (size!44710 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343629 () Bool)

(declare-fun res!891567 () Bool)

(assert (=> b!1343629 (=> (not res!891567) (not e!764753))))

(declare-fun minValue!1245 () V!54845)

(declare-fun zeroValue!1245 () V!54845)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24280 0))(
  ( (tuple2!24281 (_1!12150 (_ BitVec 64)) (_2!12150 V!54845)) )
))
(declare-datatypes ((List!31455 0))(
  ( (Nil!31452) (Cons!31451 (h!32660 tuple2!24280) (t!45980 List!31455)) )
))
(declare-datatypes ((ListLongMap!21949 0))(
  ( (ListLongMap!21950 (toList!10990 List!31455)) )
))
(declare-fun contains!9102 (ListLongMap!21949 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5884 (array!91413 array!91415 (_ BitVec 32) (_ BitVec 32) V!54845 V!54845 (_ BitVec 32) Int) ListLongMap!21949)

(assert (=> b!1343629 (= res!891567 (contains!9102 (getCurrentListMap!5884 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1343630 () Bool)

(declare-fun res!891562 () Bool)

(assert (=> b!1343630 (=> (not res!891562) (not e!764753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91413 (_ BitVec 32)) Bool)

(assert (=> b!1343630 (= res!891562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57667 () Bool)

(assert (=> mapIsEmpty!57667 mapRes!57667))

(declare-fun b!1343631 () Bool)

(declare-fun e!764756 () Bool)

(assert (=> b!1343631 (= e!764755 (and e!764756 mapRes!57667))))

(declare-fun condMapEmpty!57667 () Bool)

(declare-fun mapDefault!57667 () ValueCell!17755)

