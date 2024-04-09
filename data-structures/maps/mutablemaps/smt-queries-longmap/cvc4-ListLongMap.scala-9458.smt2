; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112396 () Bool)

(assert start!112396)

(declare-fun b_free!30755 () Bool)

(declare-fun b_next!30755 () Bool)

(assert (=> start!112396 (= b_free!30755 (not b_next!30755))))

(declare-fun tp!107902 () Bool)

(declare-fun b_and!49575 () Bool)

(assert (=> start!112396 (= tp!107902 b_and!49575)))

(declare-fun b!1331806 () Bool)

(declare-fun res!883875 () Bool)

(declare-fun e!758837 () Bool)

(assert (=> b!1331806 (=> (not res!883875) (not e!758837))))

(declare-datatypes ((V!53989 0))(
  ( (V!53990 (val!18407 Int)) )
))
(declare-datatypes ((ValueCell!17434 0))(
  ( (ValueCellFull!17434 (v!21042 V!53989)) (EmptyCell!17434) )
))
(declare-datatypes ((array!90179 0))(
  ( (array!90180 (arr!43551 (Array (_ BitVec 32) ValueCell!17434)) (size!44102 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90179)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90181 0))(
  ( (array!90182 (arr!43552 (Array (_ BitVec 32) (_ BitVec 64))) (size!44103 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90181)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53989)

(declare-fun zeroValue!1262 () V!53989)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23864 0))(
  ( (tuple2!23865 (_1!11942 (_ BitVec 64)) (_2!11942 V!53989)) )
))
(declare-datatypes ((List!31046 0))(
  ( (Nil!31043) (Cons!31042 (h!32251 tuple2!23864) (t!45221 List!31046)) )
))
(declare-datatypes ((ListLongMap!21533 0))(
  ( (ListLongMap!21534 (toList!10782 List!31046)) )
))
(declare-fun contains!8882 (ListLongMap!21533 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5705 (array!90181 array!90179 (_ BitVec 32) (_ BitVec 32) V!53989 V!53989 (_ BitVec 32) Int) ListLongMap!21533)

(assert (=> b!1331806 (= res!883875 (contains!8882 (getCurrentListMap!5705 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1331807 () Bool)

(declare-fun e!758839 () Bool)

(declare-fun tp_is_empty!36665 () Bool)

(assert (=> b!1331807 (= e!758839 tp_is_empty!36665)))

(declare-fun b!1331808 () Bool)

(declare-fun res!883870 () Bool)

(assert (=> b!1331808 (=> (not res!883870) (not e!758837))))

(assert (=> b!1331808 (= res!883870 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331809 () Bool)

(declare-fun e!758836 () Bool)

(declare-fun e!758835 () Bool)

(declare-fun mapRes!56671 () Bool)

(assert (=> b!1331809 (= e!758836 (and e!758835 mapRes!56671))))

(declare-fun condMapEmpty!56671 () Bool)

(declare-fun mapDefault!56671 () ValueCell!17434)

