; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43380 () Bool)

(assert start!43380)

(declare-fun b_free!12199 () Bool)

(declare-fun b_next!12199 () Bool)

(assert (=> start!43380 (= b_free!12199 (not b_next!12199))))

(declare-fun tp!42874 () Bool)

(declare-fun b_and!20973 () Bool)

(assert (=> start!43380 (= tp!42874 b_and!20973)))

(declare-fun b!480300 () Bool)

(declare-fun e!282619 () Bool)

(declare-fun tp_is_empty!13711 () Bool)

(assert (=> b!480300 (= e!282619 tp_is_empty!13711)))

(declare-fun b!480302 () Bool)

(declare-fun res!286502 () Bool)

(declare-fun e!282622 () Bool)

(assert (=> b!480302 (=> (not res!286502) (not e!282622))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19353 0))(
  ( (V!19354 (val!6903 Int)) )
))
(declare-fun minValue!1458 () V!19353)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19353)

(declare-datatypes ((ValueCell!6494 0))(
  ( (ValueCellFull!6494 (v!9190 V!19353)) (EmptyCell!6494) )
))
(declare-datatypes ((array!31057 0))(
  ( (array!31058 (arr!14930 (Array (_ BitVec 32) ValueCell!6494)) (size!15288 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31057)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31059 0))(
  ( (array!31060 (arr!14931 (Array (_ BitVec 32) (_ BitVec 64))) (size!15289 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31059)

(declare-datatypes ((tuple2!9052 0))(
  ( (tuple2!9053 (_1!4536 (_ BitVec 64)) (_2!4536 V!19353)) )
))
(declare-datatypes ((List!9168 0))(
  ( (Nil!9165) (Cons!9164 (h!10020 tuple2!9052) (t!15386 List!9168)) )
))
(declare-datatypes ((ListLongMap!7979 0))(
  ( (ListLongMap!7980 (toList!4005 List!9168)) )
))
(declare-fun contains!2614 (ListLongMap!7979 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2297 (array!31059 array!31057 (_ BitVec 32) (_ BitVec 32) V!19353 V!19353 (_ BitVec 32) Int) ListLongMap!7979)

(assert (=> b!480302 (= res!286502 (contains!2614 (getCurrentListMap!2297 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!480303 () Bool)

(declare-fun e!282621 () Bool)

(declare-fun e!282620 () Bool)

(declare-fun mapRes!22270 () Bool)

(assert (=> b!480303 (= e!282621 (and e!282620 mapRes!22270))))

(declare-fun condMapEmpty!22270 () Bool)

(declare-fun mapDefault!22270 () ValueCell!6494)

