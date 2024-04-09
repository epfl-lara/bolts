; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113596 () Bool)

(assert start!113596)

(declare-fun b_free!31553 () Bool)

(declare-fun b_next!31553 () Bool)

(assert (=> start!113596 (= b_free!31553 (not b_next!31553))))

(declare-fun tp!110468 () Bool)

(declare-fun b_and!50905 () Bool)

(assert (=> start!113596 (= tp!110468 b_and!50905)))

(declare-fun b!1348048 () Bool)

(declare-fun e!766925 () Bool)

(assert (=> b!1348048 (= e!766925 (not true))))

(declare-datatypes ((V!55173 0))(
  ( (V!55174 (val!18851 Int)) )
))
(declare-datatypes ((tuple2!24448 0))(
  ( (tuple2!24449 (_1!12234 (_ BitVec 64)) (_2!12234 V!55173)) )
))
(declare-datatypes ((List!31617 0))(
  ( (Nil!31614) (Cons!31613 (h!32822 tuple2!24448) (t!46256 List!31617)) )
))
(declare-datatypes ((ListLongMap!22117 0))(
  ( (ListLongMap!22118 (toList!11074 List!31617)) )
))
(declare-fun lt!595875 () ListLongMap!22117)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9187 (ListLongMap!22117 (_ BitVec 64)) Bool)

(assert (=> b!1348048 (contains!9187 lt!595875 k!1142)))

(declare-fun lt!595876 () V!55173)

(declare-datatypes ((Unit!44114 0))(
  ( (Unit!44115) )
))
(declare-fun lt!595873 () Unit!44114)

(declare-datatypes ((array!91895 0))(
  ( (array!91896 (arr!44398 (Array (_ BitVec 32) (_ BitVec 64))) (size!44949 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91895)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!409 ((_ BitVec 64) (_ BitVec 64) V!55173 ListLongMap!22117) Unit!44114)

(assert (=> b!1348048 (= lt!595873 (lemmaInListMapAfterAddingDiffThenInBefore!409 k!1142 (select (arr!44398 _keys!1571) from!1960) lt!595876 lt!595875))))

(declare-fun lt!595874 () ListLongMap!22117)

(assert (=> b!1348048 (contains!9187 lt!595874 k!1142)))

(declare-fun lt!595877 () Unit!44114)

(declare-fun zeroValue!1245 () V!55173)

(assert (=> b!1348048 (= lt!595877 (lemmaInListMapAfterAddingDiffThenInBefore!409 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595874))))

(declare-fun +!4823 (ListLongMap!22117 tuple2!24448) ListLongMap!22117)

(assert (=> b!1348048 (= lt!595874 (+!4823 lt!595875 (tuple2!24449 (select (arr!44398 _keys!1571) from!1960) lt!595876)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17878 0))(
  ( (ValueCellFull!17878 (v!21500 V!55173)) (EmptyCell!17878) )
))
(declare-datatypes ((array!91897 0))(
  ( (array!91898 (arr!44399 (Array (_ BitVec 32) ValueCell!17878)) (size!44950 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91897)

(declare-fun get!22471 (ValueCell!17878 V!55173) V!55173)

(declare-fun dynLambda!3860 (Int (_ BitVec 64)) V!55173)

(assert (=> b!1348048 (= lt!595876 (get!22471 (select (arr!44399 _values!1303) from!1960) (dynLambda!3860 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!55173)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6550 (array!91895 array!91897 (_ BitVec 32) (_ BitVec 32) V!55173 V!55173 (_ BitVec 32) Int) ListLongMap!22117)

(assert (=> b!1348048 (= lt!595875 (getCurrentListMapNoExtraKeys!6550 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1348049 () Bool)

(declare-fun res!894544 () Bool)

(assert (=> b!1348049 (=> (not res!894544) (not e!766925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1348049 (= res!894544 (validKeyInArray!0 (select (arr!44398 _keys!1571) from!1960)))))

(declare-fun res!894543 () Bool)

(assert (=> start!113596 (=> (not res!894543) (not e!766925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113596 (= res!894543 (validMask!0 mask!1977))))

(assert (=> start!113596 e!766925))

(declare-fun tp_is_empty!37553 () Bool)

(assert (=> start!113596 tp_is_empty!37553))

(assert (=> start!113596 true))

(declare-fun array_inv!33357 (array!91895) Bool)

(assert (=> start!113596 (array_inv!33357 _keys!1571)))

(declare-fun e!766922 () Bool)

(declare-fun array_inv!33358 (array!91897) Bool)

(assert (=> start!113596 (and (array_inv!33358 _values!1303) e!766922)))

(assert (=> start!113596 tp!110468))

(declare-fun b!1348050 () Bool)

(declare-fun res!894545 () Bool)

(assert (=> b!1348050 (=> (not res!894545) (not e!766925))))

(declare-datatypes ((List!31618 0))(
  ( (Nil!31615) (Cons!31614 (h!32823 (_ BitVec 64)) (t!46257 List!31618)) )
))
(declare-fun arrayNoDuplicates!0 (array!91895 (_ BitVec 32) List!31618) Bool)

(assert (=> b!1348050 (= res!894545 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31615))))

(declare-fun b!1348051 () Bool)

(declare-fun res!894547 () Bool)

(assert (=> b!1348051 (=> (not res!894547) (not e!766925))))

(declare-fun getCurrentListMap!5964 (array!91895 array!91897 (_ BitVec 32) (_ BitVec 32) V!55173 V!55173 (_ BitVec 32) Int) ListLongMap!22117)

(assert (=> b!1348051 (= res!894547 (contains!9187 (getCurrentListMap!5964 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1348052 () Bool)

(declare-fun e!766924 () Bool)

(declare-fun mapRes!58040 () Bool)

(assert (=> b!1348052 (= e!766922 (and e!766924 mapRes!58040))))

(declare-fun condMapEmpty!58040 () Bool)

(declare-fun mapDefault!58040 () ValueCell!17878)

