; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113054 () Bool)

(assert start!113054)

(declare-fun b_free!31069 () Bool)

(declare-fun b_next!31069 () Bool)

(assert (=> start!113054 (= b_free!31069 (not b_next!31069))))

(declare-fun tp!109013 () Bool)

(declare-fun b_and!50109 () Bool)

(assert (=> start!113054 (= tp!109013 b_and!50109)))

(declare-fun b!1339447 () Bool)

(declare-fun e!762969 () Bool)

(assert (=> b!1339447 (= e!762969 false)))

(declare-datatypes ((V!54529 0))(
  ( (V!54530 (val!18609 Int)) )
))
(declare-fun minValue!1245 () V!54529)

(declare-fun lt!593830 () Bool)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!90957 0))(
  ( (array!90958 (arr!43930 (Array (_ BitVec 32) (_ BitVec 64))) (size!44481 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90957)

(declare-fun zeroValue!1245 () V!54529)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17636 0))(
  ( (ValueCellFull!17636 (v!21255 V!54529)) (EmptyCell!17636) )
))
(declare-datatypes ((array!90959 0))(
  ( (array!90960 (arr!43931 (Array (_ BitVec 32) ValueCell!17636)) (size!44482 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90959)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24098 0))(
  ( (tuple2!24099 (_1!12059 (_ BitVec 64)) (_2!12059 V!54529)) )
))
(declare-datatypes ((List!31284 0))(
  ( (Nil!31281) (Cons!31280 (h!32489 tuple2!24098) (t!45623 List!31284)) )
))
(declare-datatypes ((ListLongMap!21767 0))(
  ( (ListLongMap!21768 (toList!10899 List!31284)) )
))
(declare-fun contains!9011 (ListLongMap!21767 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5803 (array!90957 array!90959 (_ BitVec 32) (_ BitVec 32) V!54529 V!54529 (_ BitVec 32) Int) ListLongMap!21767)

(assert (=> b!1339447 (= lt!593830 (contains!9011 (getCurrentListMap!5803 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun mapIsEmpty!57310 () Bool)

(declare-fun mapRes!57310 () Bool)

(assert (=> mapIsEmpty!57310 mapRes!57310))

(declare-fun b!1339448 () Bool)

(declare-fun res!888640 () Bool)

(assert (=> b!1339448 (=> (not res!888640) (not e!762969))))

(assert (=> b!1339448 (= res!888640 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44481 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339449 () Bool)

(declare-fun res!888639 () Bool)

(assert (=> b!1339449 (=> (not res!888639) (not e!762969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90957 (_ BitVec 32)) Bool)

(assert (=> b!1339449 (= res!888639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339450 () Bool)

(declare-fun e!762971 () Bool)

(declare-fun tp_is_empty!37069 () Bool)

(assert (=> b!1339450 (= e!762971 tp_is_empty!37069)))

(declare-fun b!1339451 () Bool)

(declare-fun e!762968 () Bool)

(assert (=> b!1339451 (= e!762968 tp_is_empty!37069)))

(declare-fun b!1339453 () Bool)

(declare-fun e!762970 () Bool)

(assert (=> b!1339453 (= e!762970 (and e!762971 mapRes!57310))))

(declare-fun condMapEmpty!57310 () Bool)

(declare-fun mapDefault!57310 () ValueCell!17636)

