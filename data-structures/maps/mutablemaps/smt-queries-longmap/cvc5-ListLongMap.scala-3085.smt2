; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43434 () Bool)

(assert start!43434)

(declare-fun b_free!12229 () Bool)

(declare-fun b_next!12229 () Bool)

(assert (=> start!43434 (= b_free!12229 (not b_next!12229))))

(declare-fun tp!42966 () Bool)

(declare-fun b_and!21005 () Bool)

(assert (=> start!43434 (= tp!42966 b_and!21005)))

(declare-fun b!480926 () Bool)

(declare-fun e!282975 () Bool)

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!480926 (= e!282975 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480927 () Bool)

(declare-fun e!282977 () Bool)

(declare-fun tp_is_empty!13741 () Bool)

(assert (=> b!480927 (= e!282977 tp_is_empty!13741)))

(declare-fun b!480928 () Bool)

(declare-fun res!286828 () Bool)

(declare-fun e!282976 () Bool)

(assert (=> b!480928 (=> (not res!286828) (not e!282976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480928 (= res!286828 (validKeyInArray!0 k!1332))))

(declare-fun b!480930 () Bool)

(declare-fun res!286825 () Bool)

(assert (=> b!480930 (=> (not res!286825) (not e!282976))))

(declare-datatypes ((array!31119 0))(
  ( (array!31120 (arr!14960 (Array (_ BitVec 32) (_ BitVec 64))) (size!15318 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31119)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31119 (_ BitVec 32)) Bool)

(assert (=> b!480930 (= res!286825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480931 () Bool)

(declare-fun res!286824 () Bool)

(assert (=> b!480931 (=> (not res!286824) (not e!282976))))

(declare-datatypes ((V!19393 0))(
  ( (V!19394 (val!6918 Int)) )
))
(declare-fun minValue!1458 () V!19393)

(declare-fun zeroValue!1458 () V!19393)

(declare-datatypes ((ValueCell!6509 0))(
  ( (ValueCellFull!6509 (v!9206 V!19393)) (EmptyCell!6509) )
))
(declare-datatypes ((array!31121 0))(
  ( (array!31122 (arr!14961 (Array (_ BitVec 32) ValueCell!6509)) (size!15319 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31121)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9076 0))(
  ( (tuple2!9077 (_1!4548 (_ BitVec 64)) (_2!4548 V!19393)) )
))
(declare-datatypes ((List!9192 0))(
  ( (Nil!9189) (Cons!9188 (h!10044 tuple2!9076) (t!15412 List!9192)) )
))
(declare-datatypes ((ListLongMap!8003 0))(
  ( (ListLongMap!8004 (toList!4017 List!9192)) )
))
(declare-fun contains!2627 (ListLongMap!8003 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2309 (array!31119 array!31121 (_ BitVec 32) (_ BitVec 32) V!19393 V!19393 (_ BitVec 32) Int) ListLongMap!8003)

(assert (=> b!480931 (= res!286824 (contains!2627 (getCurrentListMap!2309 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!480932 () Bool)

(declare-fun e!282979 () Bool)

(declare-fun mapRes!22318 () Bool)

(assert (=> b!480932 (= e!282979 (and e!282977 mapRes!22318))))

(declare-fun condMapEmpty!22318 () Bool)

(declare-fun mapDefault!22318 () ValueCell!6509)

