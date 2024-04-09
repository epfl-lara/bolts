; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112336 () Bool)

(assert start!112336)

(declare-fun b_free!30695 () Bool)

(declare-fun b_next!30695 () Bool)

(assert (=> start!112336 (= b_free!30695 (not b_next!30695))))

(declare-fun tp!107722 () Bool)

(declare-fun b_and!49455 () Bool)

(assert (=> start!112336 (= tp!107722 b_and!49455)))

(declare-fun mapIsEmpty!56581 () Bool)

(declare-fun mapRes!56581 () Bool)

(assert (=> mapIsEmpty!56581 mapRes!56581))

(declare-fun b!1330666 () Bool)

(declare-fun res!883064 () Bool)

(declare-fun e!758385 () Bool)

(assert (=> b!1330666 (=> (not res!883064) (not e!758385))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90063 0))(
  ( (array!90064 (arr!43493 (Array (_ BitVec 32) (_ BitVec 64))) (size!44044 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90063)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-datatypes ((V!53909 0))(
  ( (V!53910 (val!18377 Int)) )
))
(declare-fun minValue!1262 () V!53909)

(declare-fun zeroValue!1262 () V!53909)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17404 0))(
  ( (ValueCellFull!17404 (v!21012 V!53909)) (EmptyCell!17404) )
))
(declare-datatypes ((array!90065 0))(
  ( (array!90066 (arr!43494 (Array (_ BitVec 32) ValueCell!17404)) (size!44045 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90065)

(declare-datatypes ((tuple2!23816 0))(
  ( (tuple2!23817 (_1!11918 (_ BitVec 64)) (_2!11918 V!53909)) )
))
(declare-datatypes ((List!31003 0))(
  ( (Nil!31000) (Cons!30999 (h!32208 tuple2!23816) (t!45118 List!31003)) )
))
(declare-datatypes ((ListLongMap!21485 0))(
  ( (ListLongMap!21486 (toList!10758 List!31003)) )
))
(declare-fun contains!8858 (ListLongMap!21485 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5684 (array!90063 array!90065 (_ BitVec 32) (_ BitVec 32) V!53909 V!53909 (_ BitVec 32) Int) ListLongMap!21485)

(assert (=> b!1330666 (= res!883064 (contains!8858 (getCurrentListMap!5684 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1330667 () Bool)

(declare-fun e!758386 () Bool)

(declare-fun tp_is_empty!36605 () Bool)

(assert (=> b!1330667 (= e!758386 tp_is_empty!36605)))

(declare-fun mapNonEmpty!56581 () Bool)

(declare-fun tp!107723 () Bool)

(assert (=> mapNonEmpty!56581 (= mapRes!56581 (and tp!107723 e!758386))))

(declare-fun mapValue!56581 () ValueCell!17404)

(declare-fun mapKey!56581 () (_ BitVec 32))

(declare-fun mapRest!56581 () (Array (_ BitVec 32) ValueCell!17404))

(assert (=> mapNonEmpty!56581 (= (arr!43494 _values!1320) (store mapRest!56581 mapKey!56581 mapValue!56581))))

(declare-fun b!1330668 () Bool)

(declare-fun res!883066 () Bool)

(assert (=> b!1330668 (=> (not res!883066) (not e!758385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90063 (_ BitVec 32)) Bool)

(assert (=> b!1330668 (= res!883066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330669 () Bool)

(declare-fun res!883062 () Bool)

(assert (=> b!1330669 (=> (not res!883062) (not e!758385))))

(assert (=> b!1330669 (= res!883062 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44044 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330670 () Bool)

(declare-fun e!758389 () Bool)

(declare-fun e!758387 () Bool)

(assert (=> b!1330670 (= e!758389 (and e!758387 mapRes!56581))))

(declare-fun condMapEmpty!56581 () Bool)

(declare-fun mapDefault!56581 () ValueCell!17404)

