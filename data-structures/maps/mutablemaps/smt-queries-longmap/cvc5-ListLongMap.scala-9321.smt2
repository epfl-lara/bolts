; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111398 () Bool)

(assert start!111398)

(declare-fun b_free!30019 () Bool)

(declare-fun b_next!30019 () Bool)

(assert (=> start!111398 (= b_free!30019 (not b_next!30019))))

(declare-fun tp!105533 () Bool)

(declare-fun b_and!48249 () Bool)

(assert (=> start!111398 (= tp!105533 b_and!48249)))

(declare-fun mapIsEmpty!55406 () Bool)

(declare-fun mapRes!55406 () Bool)

(assert (=> mapIsEmpty!55406 mapRes!55406))

(declare-fun b!1317647 () Bool)

(declare-fun e!751957 () Bool)

(declare-fun tp_is_empty!35839 () Bool)

(assert (=> b!1317647 (= e!751957 tp_is_empty!35839)))

(declare-fun b!1317648 () Bool)

(declare-fun res!874581 () Bool)

(declare-fun e!751953 () Bool)

(assert (=> b!1317648 (=> (not res!874581) (not e!751953))))

(declare-datatypes ((array!88583 0))(
  ( (array!88584 (arr!42761 (Array (_ BitVec 32) (_ BitVec 64))) (size!43312 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88583)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52889 0))(
  ( (V!52890 (val!17994 Int)) )
))
(declare-datatypes ((ValueCell!17021 0))(
  ( (ValueCellFull!17021 (v!20622 V!52889)) (EmptyCell!17021) )
))
(declare-datatypes ((array!88585 0))(
  ( (array!88586 (arr!42762 (Array (_ BitVec 32) ValueCell!17021)) (size!43313 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88585)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1317648 (= res!874581 (and (= (size!43313 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43312 _keys!1609) (size!43313 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317649 () Bool)

(declare-fun res!874582 () Bool)

(assert (=> b!1317649 (=> (not res!874582) (not e!751953))))

(declare-datatypes ((List!30496 0))(
  ( (Nil!30493) (Cons!30492 (h!31701 (_ BitVec 64)) (t!44111 List!30496)) )
))
(declare-fun arrayNoDuplicates!0 (array!88583 (_ BitVec 32) List!30496) Bool)

(assert (=> b!1317649 (= res!874582 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30493))))

(declare-fun b!1317650 () Bool)

(declare-fun e!751956 () Bool)

(assert (=> b!1317650 (= e!751956 tp_is_empty!35839)))

(declare-fun res!874583 () Bool)

(assert (=> start!111398 (=> (not res!874583) (not e!751953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111398 (= res!874583 (validMask!0 mask!2019))))

(assert (=> start!111398 e!751953))

(declare-fun array_inv!32247 (array!88583) Bool)

(assert (=> start!111398 (array_inv!32247 _keys!1609)))

(assert (=> start!111398 true))

(assert (=> start!111398 tp_is_empty!35839))

(declare-fun e!751954 () Bool)

(declare-fun array_inv!32248 (array!88585) Bool)

(assert (=> start!111398 (and (array_inv!32248 _values!1337) e!751954)))

(assert (=> start!111398 tp!105533))

(declare-fun b!1317651 () Bool)

(assert (=> b!1317651 (= e!751953 false)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52889)

(declare-fun lt!586336 () Bool)

(declare-fun minValue!1279 () V!52889)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23308 0))(
  ( (tuple2!23309 (_1!11664 (_ BitVec 64)) (_2!11664 V!52889)) )
))
(declare-datatypes ((List!30497 0))(
  ( (Nil!30494) (Cons!30493 (h!31702 tuple2!23308) (t!44112 List!30497)) )
))
(declare-datatypes ((ListLongMap!20977 0))(
  ( (ListLongMap!20978 (toList!10504 List!30497)) )
))
(declare-fun contains!8595 (ListLongMap!20977 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5460 (array!88583 array!88585 (_ BitVec 32) (_ BitVec 32) V!52889 V!52889 (_ BitVec 32) Int) ListLongMap!20977)

(assert (=> b!1317651 (= lt!586336 (contains!8595 (getCurrentListMap!5460 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1317652 () Bool)

(declare-fun res!874584 () Bool)

(assert (=> b!1317652 (=> (not res!874584) (not e!751953))))

(assert (=> b!1317652 (= res!874584 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43312 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1317653 () Bool)

(assert (=> b!1317653 (= e!751954 (and e!751956 mapRes!55406))))

(declare-fun condMapEmpty!55406 () Bool)

(declare-fun mapDefault!55406 () ValueCell!17021)

