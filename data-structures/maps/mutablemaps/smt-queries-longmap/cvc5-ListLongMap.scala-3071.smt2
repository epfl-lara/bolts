; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43286 () Bool)

(assert start!43286)

(declare-fun b_free!12145 () Bool)

(declare-fun b_next!12145 () Bool)

(assert (=> start!43286 (= b_free!12145 (not b_next!12145))))

(declare-fun tp!42705 () Bool)

(declare-fun b_and!20915 () Bool)

(assert (=> start!43286 (= tp!42705 b_and!20915)))

(declare-fun b!479294 () Bool)

(declare-fun res!285975 () Bool)

(declare-fun e!281997 () Bool)

(assert (=> b!479294 (=> (not res!285975) (not e!281997))))

(declare-datatypes ((array!30951 0))(
  ( (array!30952 (arr!14879 (Array (_ BitVec 32) (_ BitVec 64))) (size!15237 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30951)

(declare-datatypes ((List!9130 0))(
  ( (Nil!9127) (Cons!9126 (h!9982 (_ BitVec 64)) (t!15344 List!9130)) )
))
(declare-fun arrayNoDuplicates!0 (array!30951 (_ BitVec 32) List!9130) Bool)

(assert (=> b!479294 (= res!285975 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9127))))

(declare-fun b!479295 () Bool)

(declare-fun e!281998 () Bool)

(declare-fun tp_is_empty!13657 () Bool)

(assert (=> b!479295 (= e!281998 tp_is_empty!13657)))

(declare-fun b!479296 () Bool)

(assert (=> b!479296 (= e!281997 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun lt!217832 () Bool)

(declare-datatypes ((V!19281 0))(
  ( (V!19282 (val!6876 Int)) )
))
(declare-fun minValue!1458 () V!19281)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19281)

(declare-datatypes ((ValueCell!6467 0))(
  ( (ValueCellFull!6467 (v!9161 V!19281)) (EmptyCell!6467) )
))
(declare-datatypes ((array!30953 0))(
  ( (array!30954 (arr!14880 (Array (_ BitVec 32) ValueCell!6467)) (size!15238 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30953)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9018 0))(
  ( (tuple2!9019 (_1!4519 (_ BitVec 64)) (_2!4519 V!19281)) )
))
(declare-datatypes ((List!9131 0))(
  ( (Nil!9128) (Cons!9127 (h!9983 tuple2!9018) (t!15345 List!9131)) )
))
(declare-datatypes ((ListLongMap!7945 0))(
  ( (ListLongMap!7946 (toList!3988 List!9131)) )
))
(declare-fun contains!2595 (ListLongMap!7945 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2280 (array!30951 array!30953 (_ BitVec 32) (_ BitVec 32) V!19281 V!19281 (_ BitVec 32) Int) ListLongMap!7945)

(assert (=> b!479296 (= lt!217832 (contains!2595 (getCurrentListMap!2280 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!479297 () Bool)

(declare-fun e!281995 () Bool)

(assert (=> b!479297 (= e!281995 tp_is_empty!13657)))

(declare-fun b!479298 () Bool)

(declare-fun e!281994 () Bool)

(declare-fun mapRes!22183 () Bool)

(assert (=> b!479298 (= e!281994 (and e!281998 mapRes!22183))))

(declare-fun condMapEmpty!22183 () Bool)

(declare-fun mapDefault!22183 () ValueCell!6467)

