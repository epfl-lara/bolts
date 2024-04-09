; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39402 () Bool)

(assert start!39402)

(declare-fun b_free!9661 () Bool)

(declare-fun b_next!9661 () Bool)

(assert (=> start!39402 (= b_free!9661 (not b_next!9661))))

(declare-fun tp!34512 () Bool)

(declare-fun b_and!17215 () Bool)

(assert (=> start!39402 (= tp!34512 b_and!17215)))

(declare-datatypes ((V!15523 0))(
  ( (V!15524 (val!5451 Int)) )
))
(declare-fun minValue!515 () V!15523)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!29155 () Bool)

(declare-datatypes ((ValueCell!5063 0))(
  ( (ValueCellFull!5063 (v!7694 V!15523)) (EmptyCell!5063) )
))
(declare-datatypes ((array!25457 0))(
  ( (array!25458 (arr!12175 (Array (_ BitVec 32) ValueCell!5063)) (size!12527 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25457)

(declare-fun zeroValue!515 () V!15523)

(declare-datatypes ((array!25459 0))(
  ( (array!25460 (arr!12176 (Array (_ BitVec 32) (_ BitVec 64))) (size!12528 (_ BitVec 32))) )
))
(declare-fun lt!191952 () array!25459)

(declare-datatypes ((tuple2!7056 0))(
  ( (tuple2!7057 (_1!3538 (_ BitVec 64)) (_2!3538 V!15523)) )
))
(declare-datatypes ((List!7106 0))(
  ( (Nil!7103) (Cons!7102 (h!7958 tuple2!7056) (t!12440 List!7106)) )
))
(declare-datatypes ((ListLongMap!5983 0))(
  ( (ListLongMap!5984 (toList!3007 List!7106)) )
))
(declare-fun call!29159 () ListLongMap!5983)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!25459)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!191946 () array!25457)

(declare-fun c!55130 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1210 (array!25459 array!25457 (_ BitVec 32) (_ BitVec 32) V!15523 V!15523 (_ BitVec 32) Int) ListLongMap!5983)

(assert (=> bm!29155 (= call!29159 (getCurrentListMapNoExtraKeys!1210 (ite c!55130 lt!191952 _keys!709) (ite c!55130 lt!191946 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418592 () Bool)

(declare-fun res!244019 () Bool)

(declare-fun e!249568 () Bool)

(assert (=> b!418592 (=> (not res!244019) (not e!249568))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!418592 (= res!244019 (bvsle from!863 i!563))))

(declare-fun b!418594 () Bool)

(declare-fun res!244026 () Bool)

(declare-fun e!249566 () Bool)

(assert (=> b!418594 (=> (not res!244026) (not e!249566))))

(assert (=> b!418594 (= res!244026 (and (= (size!12527 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12528 _keys!709) (size!12527 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!418595 () Bool)

(declare-fun res!244027 () Bool)

(assert (=> b!418595 (=> (not res!244027) (not e!249566))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25459 (_ BitVec 32)) Bool)

(assert (=> b!418595 (= res!244027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!29156 () Bool)

(declare-fun call!29158 () ListLongMap!5983)

(assert (=> bm!29156 (= call!29158 (getCurrentListMapNoExtraKeys!1210 (ite c!55130 _keys!709 lt!191952) (ite c!55130 _values!549 lt!191946) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!418596 () Bool)

(declare-fun e!249572 () Bool)

(assert (=> b!418596 (= e!249572 (= call!29158 call!29159))))

(declare-fun b!418597 () Bool)

(declare-fun e!249571 () Bool)

(declare-fun e!249573 () Bool)

(declare-fun mapRes!17841 () Bool)

(assert (=> b!418597 (= e!249571 (and e!249573 mapRes!17841))))

(declare-fun condMapEmpty!17841 () Bool)

(declare-fun mapDefault!17841 () ValueCell!5063)

