; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109400 () Bool)

(assert start!109400)

(declare-fun b_free!28853 () Bool)

(declare-fun b_next!28853 () Bool)

(assert (=> start!109400 (= b_free!28853 (not b_next!28853))))

(declare-fun tp!101679 () Bool)

(declare-fun b_and!46953 () Bool)

(assert (=> start!109400 (= tp!101679 b_and!46953)))

(declare-fun b!1294405 () Bool)

(declare-fun e!738656 () Bool)

(assert (=> b!1294405 (= e!738656 (not true))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!51093 0))(
  ( (V!51094 (val!17321 Int)) )
))
(declare-datatypes ((tuple2!22442 0))(
  ( (tuple2!22443 (_1!11231 (_ BitVec 64)) (_2!11231 V!51093)) )
))
(declare-datatypes ((List!29617 0))(
  ( (Nil!29614) (Cons!29613 (h!30822 tuple2!22442) (t!43188 List!29617)) )
))
(declare-datatypes ((ListLongMap!20111 0))(
  ( (ListLongMap!20112 (toList!10071 List!29617)) )
))
(declare-fun contains!8127 (ListLongMap!20111 (_ BitVec 64)) Bool)

(assert (=> b!1294405 (not (contains!8127 (ListLongMap!20112 Nil!29614) k!1205))))

(declare-datatypes ((Unit!42813 0))(
  ( (Unit!42814) )
))
(declare-fun lt!579658 () Unit!42813)

(declare-fun emptyContainsNothing!163 ((_ BitVec 64)) Unit!42813)

(assert (=> b!1294405 (= lt!579658 (emptyContainsNothing!163 k!1205))))

(declare-fun b!1294406 () Bool)

(declare-fun res!860310 () Bool)

(assert (=> b!1294406 (=> (not res!860310) (not e!738656))))

(declare-datatypes ((array!85973 0))(
  ( (array!85974 (arr!41483 (Array (_ BitVec 32) (_ BitVec 64))) (size!42034 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85973)

(declare-datatypes ((List!29618 0))(
  ( (Nil!29615) (Cons!29614 (h!30823 (_ BitVec 64)) (t!43189 List!29618)) )
))
(declare-fun arrayNoDuplicates!0 (array!85973 (_ BitVec 32) List!29618) Bool)

(assert (=> b!1294406 (= res!860310 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29615))))

(declare-fun b!1294407 () Bool)

(declare-fun res!860303 () Bool)

(assert (=> b!1294407 (=> (not res!860303) (not e!738656))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1294407 (= res!860303 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42034 _keys!1741))))))

(declare-fun b!1294408 () Bool)

(declare-fun res!860307 () Bool)

(assert (=> b!1294408 (=> (not res!860307) (not e!738656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294408 (= res!860307 (not (validKeyInArray!0 (select (arr!41483 _keys!1741) from!2144))))))

(declare-fun b!1294409 () Bool)

(declare-fun e!738655 () Bool)

(declare-fun e!738657 () Bool)

(declare-fun mapRes!53300 () Bool)

(assert (=> b!1294409 (= e!738655 (and e!738657 mapRes!53300))))

(declare-fun condMapEmpty!53300 () Bool)

(declare-datatypes ((ValueCell!16348 0))(
  ( (ValueCellFull!16348 (v!19922 V!51093)) (EmptyCell!16348) )
))
(declare-datatypes ((array!85975 0))(
  ( (array!85976 (arr!41484 (Array (_ BitVec 32) ValueCell!16348)) (size!42035 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85975)

(declare-fun mapDefault!53300 () ValueCell!16348)

