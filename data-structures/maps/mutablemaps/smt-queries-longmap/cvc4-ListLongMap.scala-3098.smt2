; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43540 () Bool)

(assert start!43540)

(declare-fun b_free!12311 () Bool)

(declare-fun b_next!12311 () Bool)

(assert (=> start!43540 (= b_free!12311 (not b_next!12311))))

(declare-fun tp!43216 () Bool)

(declare-fun b_and!21089 () Bool)

(assert (=> start!43540 (= tp!43216 b_and!21089)))

(declare-fun b!482126 () Bool)

(declare-fun e!283732 () Bool)

(assert (=> b!482126 (= e!283732 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19501 0))(
  ( (V!19502 (val!6959 Int)) )
))
(declare-fun minValue!1458 () V!19501)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19501)

(declare-datatypes ((ValueCell!6550 0))(
  ( (ValueCellFull!6550 (v!9248 V!19501)) (EmptyCell!6550) )
))
(declare-datatypes ((array!31275 0))(
  ( (array!31276 (arr!15037 (Array (_ BitVec 32) ValueCell!6550)) (size!15395 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31275)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lt!218666 () Bool)

(declare-datatypes ((array!31277 0))(
  ( (array!31278 (arr!15038 (Array (_ BitVec 32) (_ BitVec 64))) (size!15396 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31277)

(declare-datatypes ((tuple2!9136 0))(
  ( (tuple2!9137 (_1!4578 (_ BitVec 64)) (_2!4578 V!19501)) )
))
(declare-datatypes ((List!9252 0))(
  ( (Nil!9249) (Cons!9248 (h!10104 tuple2!9136) (t!15474 List!9252)) )
))
(declare-datatypes ((ListLongMap!8063 0))(
  ( (ListLongMap!8064 (toList!4047 List!9252)) )
))
(declare-fun contains!2658 (ListLongMap!8063 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2339 (array!31277 array!31275 (_ BitVec 32) (_ BitVec 32) V!19501 V!19501 (_ BitVec 32) Int) ListLongMap!8063)

(assert (=> b!482126 (= lt!218666 (contains!2658 (getCurrentListMap!2339 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun res!287475 () Bool)

(assert (=> start!43540 (=> (not res!287475) (not e!283732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43540 (= res!287475 (validMask!0 mask!2352))))

(assert (=> start!43540 e!283732))

(assert (=> start!43540 true))

(declare-fun tp_is_empty!13823 () Bool)

(assert (=> start!43540 tp_is_empty!13823))

(declare-fun e!283731 () Bool)

(declare-fun array_inv!10826 (array!31275) Bool)

(assert (=> start!43540 (and (array_inv!10826 _values!1516) e!283731)))

(assert (=> start!43540 tp!43216))

(declare-fun array_inv!10827 (array!31277) Bool)

(assert (=> start!43540 (array_inv!10827 _keys!1874)))

(declare-fun mapIsEmpty!22444 () Bool)

(declare-fun mapRes!22444 () Bool)

(assert (=> mapIsEmpty!22444 mapRes!22444))

(declare-fun b!482127 () Bool)

(declare-fun res!287476 () Bool)

(assert (=> b!482127 (=> (not res!287476) (not e!283732))))

(declare-datatypes ((List!9253 0))(
  ( (Nil!9250) (Cons!9249 (h!10105 (_ BitVec 64)) (t!15475 List!9253)) )
))
(declare-fun arrayNoDuplicates!0 (array!31277 (_ BitVec 32) List!9253) Bool)

(assert (=> b!482127 (= res!287476 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9250))))

(declare-fun b!482128 () Bool)

(declare-fun e!283730 () Bool)

(assert (=> b!482128 (= e!283731 (and e!283730 mapRes!22444))))

(declare-fun condMapEmpty!22444 () Bool)

(declare-fun mapDefault!22444 () ValueCell!6550)

