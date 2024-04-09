; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113388 () Bool)

(assert start!113388)

(declare-fun b_free!31403 () Bool)

(declare-fun b_next!31403 () Bool)

(assert (=> start!113388 (= b_free!31403 (not b_next!31403))))

(declare-fun tp!110014 () Bool)

(declare-fun b_and!50669 () Bool)

(assert (=> start!113388 (= tp!110014 b_and!50669)))

(declare-fun b!1345169 () Bool)

(declare-fun e!765508 () Bool)

(declare-fun e!765511 () Bool)

(assert (=> b!1345169 (= e!765508 e!765511)))

(declare-fun res!892632 () Bool)

(assert (=> b!1345169 (=> (not res!892632) (not e!765511))))

(declare-datatypes ((V!54973 0))(
  ( (V!54974 (val!18776 Int)) )
))
(declare-fun lt!595249 () V!54973)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91603 0))(
  ( (array!91604 (arr!44253 (Array (_ BitVec 32) (_ BitVec 64))) (size!44804 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91603)

(declare-datatypes ((tuple2!24340 0))(
  ( (tuple2!24341 (_1!12180 (_ BitVec 64)) (_2!12180 V!54973)) )
))
(declare-datatypes ((List!31513 0))(
  ( (Nil!31510) (Cons!31509 (h!32718 tuple2!24340) (t!46080 List!31513)) )
))
(declare-datatypes ((ListLongMap!22009 0))(
  ( (ListLongMap!22010 (toList!11020 List!31513)) )
))
(declare-fun lt!595248 () ListLongMap!22009)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun contains!9132 (ListLongMap!22009 (_ BitVec 64)) Bool)

(declare-fun +!4800 (ListLongMap!22009 tuple2!24340) ListLongMap!22009)

(assert (=> b!1345169 (= res!892632 (contains!9132 (+!4800 lt!595248 (tuple2!24341 (select (arr!44253 _keys!1571) from!1960) lt!595249)) k!1142))))

(declare-fun minValue!1245 () V!54973)

(declare-fun defaultEntry!1306 () Int)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54973)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17803 0))(
  ( (ValueCellFull!17803 (v!21422 V!54973)) (EmptyCell!17803) )
))
(declare-datatypes ((array!91605 0))(
  ( (array!91606 (arr!44254 (Array (_ BitVec 32) ValueCell!17803)) (size!44805 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91605)

(declare-fun getCurrentListMapNoExtraKeys!6523 (array!91603 array!91605 (_ BitVec 32) (_ BitVec 32) V!54973 V!54973 (_ BitVec 32) Int) ListLongMap!22009)

(assert (=> b!1345169 (= lt!595248 (getCurrentListMapNoExtraKeys!6523 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22395 (ValueCell!17803 V!54973) V!54973)

(declare-fun dynLambda!3837 (Int (_ BitVec 64)) V!54973)

(assert (=> b!1345169 (= lt!595249 (get!22395 (select (arr!44254 _values!1303) from!1960) (dynLambda!3837 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1345170 () Bool)

(declare-fun res!892635 () Bool)

(assert (=> b!1345170 (=> (not res!892635) (not e!765508))))

(assert (=> b!1345170 (= res!892635 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345171 () Bool)

(declare-fun res!892633 () Bool)

(assert (=> b!1345171 (=> (not res!892633) (not e!765508))))

(assert (=> b!1345171 (= res!892633 (not (= (select (arr!44253 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1345172 () Bool)

(declare-fun e!765512 () Bool)

(declare-fun e!765510 () Bool)

(declare-fun mapRes!57811 () Bool)

(assert (=> b!1345172 (= e!765512 (and e!765510 mapRes!57811))))

(declare-fun condMapEmpty!57811 () Bool)

(declare-fun mapDefault!57811 () ValueCell!17803)

