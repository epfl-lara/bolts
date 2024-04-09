; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71604 () Bool)

(assert start!71604)

(declare-fun b_free!13501 () Bool)

(declare-fun b_next!13501 () Bool)

(assert (=> start!71604 (= b_free!13501 (not b_next!13501))))

(declare-fun tp!47294 () Bool)

(declare-fun b_and!22577 () Bool)

(assert (=> start!71604 (= tp!47294 b_and!22577)))

(declare-fun b!831606 () Bool)

(declare-fun e!463781 () Bool)

(declare-fun e!463780 () Bool)

(assert (=> b!831606 (= e!463781 (not e!463780))))

(declare-fun res!566066 () Bool)

(assert (=> b!831606 (=> res!566066 e!463780)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!831606 (= res!566066 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!25283 0))(
  ( (V!25284 (val!7653 Int)) )
))
(declare-datatypes ((tuple2!10178 0))(
  ( (tuple2!10179 (_1!5099 (_ BitVec 64)) (_2!5099 V!25283)) )
))
(declare-datatypes ((List!16007 0))(
  ( (Nil!16004) (Cons!16003 (h!17133 tuple2!10178) (t!22383 List!16007)) )
))
(declare-datatypes ((ListLongMap!9015 0))(
  ( (ListLongMap!9016 (toList!4523 List!16007)) )
))
(declare-fun lt!377349 () ListLongMap!9015)

(declare-fun lt!377348 () ListLongMap!9015)

(assert (=> b!831606 (= lt!377349 lt!377348)))

(declare-fun zeroValueBefore!34 () V!25283)

(declare-datatypes ((array!46568 0))(
  ( (array!46569 (arr!22315 (Array (_ BitVec 32) (_ BitVec 64))) (size!22736 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46568)

(declare-fun zeroValueAfter!34 () V!25283)

(declare-fun minValue!754 () V!25283)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((ValueCell!7190 0))(
  ( (ValueCellFull!7190 (v!10094 V!25283)) (EmptyCell!7190) )
))
(declare-datatypes ((array!46570 0))(
  ( (array!46571 (arr!22316 (Array (_ BitVec 32) ValueCell!7190)) (size!22737 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46570)

(declare-datatypes ((Unit!28495 0))(
  ( (Unit!28496) )
))
(declare-fun lt!377347 () Unit!28495)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!612 (array!46568 array!46570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25283 V!25283 V!25283 V!25283 (_ BitVec 32) Int) Unit!28495)

(assert (=> b!831606 (= lt!377347 (lemmaNoChangeToArrayThenSameMapNoExtras!612 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2522 (array!46568 array!46570 (_ BitVec 32) (_ BitVec 32) V!25283 V!25283 (_ BitVec 32) Int) ListLongMap!9015)

(assert (=> b!831606 (= lt!377348 (getCurrentListMapNoExtraKeys!2522 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!831606 (= lt!377349 (getCurrentListMapNoExtraKeys!2522 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!831607 () Bool)

(declare-fun e!463782 () Bool)

(declare-fun tp_is_empty!15211 () Bool)

(assert (=> b!831607 (= e!463782 tp_is_empty!15211)))

(declare-fun mapIsEmpty!24474 () Bool)

(declare-fun mapRes!24474 () Bool)

(assert (=> mapIsEmpty!24474 mapRes!24474))

(declare-fun b!831608 () Bool)

(declare-fun e!463785 () Bool)

(declare-fun e!463784 () Bool)

(assert (=> b!831608 (= e!463785 (and e!463784 mapRes!24474))))

(declare-fun condMapEmpty!24474 () Bool)

(declare-fun mapDefault!24474 () ValueCell!7190)

