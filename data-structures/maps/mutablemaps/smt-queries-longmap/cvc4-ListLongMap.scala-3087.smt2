; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43474 () Bool)

(assert start!43474)

(declare-fun b_free!12245 () Bool)

(declare-fun b_next!12245 () Bool)

(assert (=> start!43474 (= b_free!12245 (not b_next!12245))))

(declare-fun tp!43018 () Bool)

(declare-fun b_and!21023 () Bool)

(assert (=> start!43474 (= tp!43018 b_and!21023)))

(declare-fun b!481321 () Bool)

(declare-fun res!287022 () Bool)

(declare-fun e!283206 () Bool)

(assert (=> b!481321 (=> (not res!287022) (not e!283206))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!481321 (= res!287022 (validKeyInArray!0 k!1332))))

(declare-fun b!481322 () Bool)

(declare-fun e!283208 () Bool)

(declare-fun tp_is_empty!13757 () Bool)

(assert (=> b!481322 (= e!283208 tp_is_empty!13757)))

(declare-fun b!481323 () Bool)

(declare-fun res!287025 () Bool)

(assert (=> b!481323 (=> (not res!287025) (not e!283206))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19413 0))(
  ( (V!19414 (val!6926 Int)) )
))
(declare-fun minValue!1458 () V!19413)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19413)

(declare-datatypes ((ValueCell!6517 0))(
  ( (ValueCellFull!6517 (v!9215 V!19413)) (EmptyCell!6517) )
))
(declare-datatypes ((array!31151 0))(
  ( (array!31152 (arr!14975 (Array (_ BitVec 32) ValueCell!6517)) (size!15333 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31151)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31153 0))(
  ( (array!31154 (arr!14976 (Array (_ BitVec 32) (_ BitVec 64))) (size!15334 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31153)

(declare-datatypes ((tuple2!9088 0))(
  ( (tuple2!9089 (_1!4554 (_ BitVec 64)) (_2!4554 V!19413)) )
))
(declare-datatypes ((List!9202 0))(
  ( (Nil!9199) (Cons!9198 (h!10054 tuple2!9088) (t!15424 List!9202)) )
))
(declare-datatypes ((ListLongMap!8015 0))(
  ( (ListLongMap!8016 (toList!4023 List!9202)) )
))
(declare-fun contains!2634 (ListLongMap!8015 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2315 (array!31153 array!31151 (_ BitVec 32) (_ BitVec 32) V!19413 V!19413 (_ BitVec 32) Int) ListLongMap!8015)

(assert (=> b!481323 (= res!287025 (contains!2634 (getCurrentListMap!2315 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun mapNonEmpty!22345 () Bool)

(declare-fun mapRes!22345 () Bool)

(declare-fun tp!43017 () Bool)

(assert (=> mapNonEmpty!22345 (= mapRes!22345 (and tp!43017 e!283208))))

(declare-fun mapValue!22345 () ValueCell!6517)

(declare-fun mapRest!22345 () (Array (_ BitVec 32) ValueCell!6517))

(declare-fun mapKey!22345 () (_ BitVec 32))

(assert (=> mapNonEmpty!22345 (= (arr!14975 _values!1516) (store mapRest!22345 mapKey!22345 mapValue!22345))))

(declare-fun b!481324 () Bool)

(declare-fun res!287023 () Bool)

(assert (=> b!481324 (=> (not res!287023) (not e!283206))))

(assert (=> b!481324 (= res!287023 (and (= (size!15333 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15334 _keys!1874) (size!15333 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481325 () Bool)

(declare-fun res!287024 () Bool)

(assert (=> b!481325 (=> (not res!287024) (not e!283206))))

(declare-datatypes ((List!9203 0))(
  ( (Nil!9200) (Cons!9199 (h!10055 (_ BitVec 64)) (t!15425 List!9203)) )
))
(declare-fun arrayNoDuplicates!0 (array!31153 (_ BitVec 32) List!9203) Bool)

(assert (=> b!481325 (= res!287024 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9200))))

(declare-fun b!481326 () Bool)

(declare-fun e!283205 () Bool)

(declare-fun e!283207 () Bool)

(assert (=> b!481326 (= e!283205 (and e!283207 mapRes!22345))))

(declare-fun condMapEmpty!22345 () Bool)

(declare-fun mapDefault!22345 () ValueCell!6517)

