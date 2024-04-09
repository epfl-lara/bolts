; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39414 () Bool)

(assert start!39414)

(declare-fun b_free!9673 () Bool)

(declare-fun b_next!9673 () Bool)

(assert (=> start!39414 (= b_free!9673 (not b_next!9673))))

(declare-fun tp!34548 () Bool)

(declare-fun b_and!17239 () Bool)

(assert (=> start!39414 (= tp!34548 b_and!17239)))

(declare-datatypes ((V!15539 0))(
  ( (V!15540 (val!5457 Int)) )
))
(declare-fun minValue!515 () V!15539)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5069 0))(
  ( (ValueCellFull!5069 (v!7700 V!15539)) (EmptyCell!5069) )
))
(declare-datatypes ((array!25481 0))(
  ( (array!25482 (arr!12187 (Array (_ BitVec 32) ValueCell!5069)) (size!12539 (_ BitVec 32))) )
))
(declare-fun lt!192141 () array!25481)

(declare-fun _values!549 () array!25481)

(declare-fun bm!29191 () Bool)

(declare-datatypes ((tuple2!7068 0))(
  ( (tuple2!7069 (_1!3544 (_ BitVec 64)) (_2!3544 V!15539)) )
))
(declare-datatypes ((List!7116 0))(
  ( (Nil!7113) (Cons!7112 (h!7968 tuple2!7068) (t!12462 List!7116)) )
))
(declare-datatypes ((ListLongMap!5995 0))(
  ( (ListLongMap!5996 (toList!3013 List!7116)) )
))
(declare-fun call!29195 () ListLongMap!5995)

(declare-datatypes ((array!25483 0))(
  ( (array!25484 (arr!12188 (Array (_ BitVec 32) (_ BitVec 64))) (size!12540 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25483)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!55148 () Bool)

(declare-fun zeroValue!515 () V!15539)

(declare-fun lt!192144 () array!25483)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1215 (array!25483 array!25481 (_ BitVec 32) (_ BitVec 32) V!15539 V!15539 (_ BitVec 32) Int) ListLongMap!5995)

(assert (=> bm!29191 (= call!29195 (getCurrentListMapNoExtraKeys!1215 (ite c!55148 _keys!709 lt!192144) (ite c!55148 _values!549 lt!192141) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17859 () Bool)

(declare-fun mapRes!17859 () Bool)

(assert (=> mapIsEmpty!17859 mapRes!17859))

(declare-fun b!418946 () Bool)

(declare-fun res!244274 () Bool)

(declare-fun e!249728 () Bool)

(assert (=> b!418946 (=> (not res!244274) (not e!249728))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!418946 (= res!244274 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!17859 () Bool)

(declare-fun tp!34547 () Bool)

(declare-fun e!249729 () Bool)

(assert (=> mapNonEmpty!17859 (= mapRes!17859 (and tp!34547 e!249729))))

(declare-fun mapRest!17859 () (Array (_ BitVec 32) ValueCell!5069))

(declare-fun mapValue!17859 () ValueCell!5069)

(declare-fun mapKey!17859 () (_ BitVec 32))

(assert (=> mapNonEmpty!17859 (= (arr!12187 _values!549) (store mapRest!17859 mapKey!17859 mapValue!17859))))

(declare-fun call!29194 () ListLongMap!5995)

(declare-fun bm!29192 () Bool)

(assert (=> bm!29192 (= call!29194 (getCurrentListMapNoExtraKeys!1215 (ite c!55148 lt!192144 _keys!709) (ite c!55148 lt!192141 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun e!249731 () Bool)

(declare-fun b!418947 () Bool)

(declare-fun v!412 () V!15539)

(declare-fun +!1220 (ListLongMap!5995 tuple2!7068) ListLongMap!5995)

(assert (=> b!418947 (= e!249731 (= call!29194 (+!1220 call!29195 (tuple2!7069 k!794 v!412))))))

(declare-fun b!418948 () Bool)

(declare-fun e!249736 () Bool)

(declare-fun e!249730 () Bool)

(assert (=> b!418948 (= e!249736 (and e!249730 mapRes!17859))))

(declare-fun condMapEmpty!17859 () Bool)

(declare-fun mapDefault!17859 () ValueCell!5069)

