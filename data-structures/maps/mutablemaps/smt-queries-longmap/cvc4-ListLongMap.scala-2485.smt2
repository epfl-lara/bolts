; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38740 () Bool)

(assert start!38740)

(declare-fun b_free!9269 () Bool)

(declare-fun b_next!9269 () Bool)

(assert (=> start!38740 (= b_free!9269 (not b_next!9269))))

(declare-fun tp!32931 () Bool)

(declare-fun b_and!16673 () Bool)

(assert (=> start!38740 (= tp!32931 b_and!16673)))

(declare-datatypes ((array!24173 0))(
  ( (array!24174 (arr!11533 (Array (_ BitVec 32) (_ BitVec 64))) (size!11885 (_ BitVec 32))) )
))
(declare-fun lt!187994 () array!24173)

(declare-datatypes ((V!14639 0))(
  ( (V!14640 (val!5120 Int)) )
))
(declare-fun minValue!515 () V!14639)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4732 0))(
  ( (ValueCellFull!4732 (v!7363 V!14639)) (EmptyCell!4732) )
))
(declare-datatypes ((array!24175 0))(
  ( (array!24176 (arr!11534 (Array (_ BitVec 32) ValueCell!4732)) (size!11886 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24175)

(declare-fun zeroValue!515 () V!14639)

(declare-fun bm!28465 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!6750 0))(
  ( (tuple2!6751 (_1!3385 (_ BitVec 64)) (_2!3385 V!14639)) )
))
(declare-datatypes ((List!6692 0))(
  ( (Nil!6689) (Cons!6688 (h!7544 tuple2!6750) (t!11874 List!6692)) )
))
(declare-datatypes ((ListLongMap!5677 0))(
  ( (ListLongMap!5678 (toList!2854 List!6692)) )
))
(declare-fun call!28468 () ListLongMap!5677)

(declare-fun c!54785 () Bool)

(declare-fun v!412 () V!14639)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!24173)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1065 (array!24173 array!24175 (_ BitVec 32) (_ BitVec 32) V!14639 V!14639 (_ BitVec 32) Int) ListLongMap!5677)

(assert (=> bm!28465 (= call!28468 (getCurrentListMapNoExtraKeys!1065 (ite c!54785 _keys!709 lt!187994) (ite c!54785 _values!549 (array!24176 (store (arr!11534 _values!549) i!563 (ValueCellFull!4732 v!412)) (size!11886 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16848 () Bool)

(declare-fun mapRes!16848 () Bool)

(assert (=> mapIsEmpty!16848 mapRes!16848))

(declare-fun b!403123 () Bool)

(declare-fun res!232370 () Bool)

(declare-fun e!242722 () Bool)

(assert (=> b!403123 (=> (not res!232370) (not e!242722))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403123 (= res!232370 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!403125 () Bool)

(declare-fun e!242720 () Bool)

(declare-fun e!242721 () Bool)

(assert (=> b!403125 (= e!242720 (and e!242721 mapRes!16848))))

(declare-fun condMapEmpty!16848 () Bool)

(declare-fun mapDefault!16848 () ValueCell!4732)

