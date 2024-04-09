; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113316 () Bool)

(assert start!113316)

(declare-fun b_free!31331 () Bool)

(declare-fun b_next!31331 () Bool)

(assert (=> start!113316 (= b_free!31331 (not b_next!31331))))

(declare-fun tp!109798 () Bool)

(declare-fun b_and!50563 () Bool)

(assert (=> start!113316 (= tp!109798 b_and!50563)))

(declare-fun mapIsEmpty!57703 () Bool)

(declare-fun mapRes!57703 () Bool)

(assert (=> mapIsEmpty!57703 mapRes!57703))

(declare-fun b!1343962 () Bool)

(declare-fun e!764936 () Bool)

(declare-fun tp_is_empty!37331 () Bool)

(assert (=> b!1343962 (= e!764936 tp_is_empty!37331)))

(declare-fun b!1343963 () Bool)

(declare-fun e!764932 () Bool)

(assert (=> b!1343963 (= e!764932 false)))

(declare-datatypes ((V!54877 0))(
  ( (V!54878 (val!18740 Int)) )
))
(declare-fun minValue!1245 () V!54877)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91461 0))(
  ( (array!91462 (arr!44182 (Array (_ BitVec 32) (_ BitVec 64))) (size!44733 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91461)

(declare-fun zeroValue!1245 () V!54877)

(declare-fun lt!595078 () Bool)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17767 0))(
  ( (ValueCellFull!17767 (v!21386 V!54877)) (EmptyCell!17767) )
))
(declare-datatypes ((array!91463 0))(
  ( (array!91464 (arr!44183 (Array (_ BitVec 32) ValueCell!17767)) (size!44734 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91463)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24300 0))(
  ( (tuple2!24301 (_1!12160 (_ BitVec 64)) (_2!12160 V!54877)) )
))
(declare-datatypes ((List!31472 0))(
  ( (Nil!31469) (Cons!31468 (h!32677 tuple2!24300) (t!46003 List!31472)) )
))
(declare-datatypes ((ListLongMap!21969 0))(
  ( (ListLongMap!21970 (toList!11000 List!31472)) )
))
(declare-fun contains!9112 (ListLongMap!21969 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5893 (array!91461 array!91463 (_ BitVec 32) (_ BitVec 32) V!54877 V!54877 (_ BitVec 32) Int) ListLongMap!21969)

(assert (=> b!1343963 (= lt!595078 (contains!9112 (getCurrentListMap!5893 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1343964 () Bool)

(declare-fun res!891783 () Bool)

(assert (=> b!1343964 (=> (not res!891783) (not e!764932))))

(assert (=> b!1343964 (= res!891783 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44733 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343965 () Bool)

(declare-fun res!891784 () Bool)

(assert (=> b!1343965 (=> (not res!891784) (not e!764932))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91461 (_ BitVec 32)) Bool)

(assert (=> b!1343965 (= res!891784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343966 () Bool)

(declare-fun e!764934 () Bool)

(assert (=> b!1343966 (= e!764934 tp_is_empty!37331)))

(declare-fun mapNonEmpty!57703 () Bool)

(declare-fun tp!109799 () Bool)

(assert (=> mapNonEmpty!57703 (= mapRes!57703 (and tp!109799 e!764934))))

(declare-fun mapValue!57703 () ValueCell!17767)

(declare-fun mapRest!57703 () (Array (_ BitVec 32) ValueCell!17767))

(declare-fun mapKey!57703 () (_ BitVec 32))

(assert (=> mapNonEmpty!57703 (= (arr!44183 _values!1303) (store mapRest!57703 mapKey!57703 mapValue!57703))))

(declare-fun res!891781 () Bool)

(assert (=> start!113316 (=> (not res!891781) (not e!764932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113316 (= res!891781 (validMask!0 mask!1977))))

(assert (=> start!113316 e!764932))

(assert (=> start!113316 tp_is_empty!37331))

(assert (=> start!113316 true))

(declare-fun array_inv!33217 (array!91461) Bool)

(assert (=> start!113316 (array_inv!33217 _keys!1571)))

(declare-fun e!764935 () Bool)

(declare-fun array_inv!33218 (array!91463) Bool)

(assert (=> start!113316 (and (array_inv!33218 _values!1303) e!764935)))

(assert (=> start!113316 tp!109798))

(declare-fun b!1343967 () Bool)

(declare-fun res!891785 () Bool)

(assert (=> b!1343967 (=> (not res!891785) (not e!764932))))

(declare-datatypes ((List!31473 0))(
  ( (Nil!31470) (Cons!31469 (h!32678 (_ BitVec 64)) (t!46004 List!31473)) )
))
(declare-fun arrayNoDuplicates!0 (array!91461 (_ BitVec 32) List!31473) Bool)

(assert (=> b!1343967 (= res!891785 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31470))))

(declare-fun b!1343968 () Bool)

(assert (=> b!1343968 (= e!764935 (and e!764936 mapRes!57703))))

(declare-fun condMapEmpty!57703 () Bool)

(declare-fun mapDefault!57703 () ValueCell!17767)

