; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39754 () Bool)

(assert start!39754)

(declare-fun b_free!10013 () Bool)

(declare-fun b_next!10013 () Bool)

(assert (=> start!39754 (= b_free!10013 (not b_next!10013))))

(declare-fun tp!35568 () Bool)

(declare-fun b_and!17703 () Bool)

(assert (=> start!39754 (= tp!35568 b_and!17703)))

(declare-fun b!427583 () Bool)

(declare-fun res!250937 () Bool)

(declare-fun e!253494 () Bool)

(assert (=> b!427583 (=> (not res!250937) (not e!253494))))

(declare-datatypes ((array!26149 0))(
  ( (array!26150 (arr!12521 (Array (_ BitVec 32) (_ BitVec 64))) (size!12873 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26149)

(declare-datatypes ((List!7386 0))(
  ( (Nil!7383) (Cons!7382 (h!8238 (_ BitVec 64)) (t!12856 List!7386)) )
))
(declare-fun arrayNoDuplicates!0 (array!26149 (_ BitVec 32) List!7386) Bool)

(assert (=> b!427583 (= res!250937 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7383))))

(declare-fun b!427584 () Bool)

(declare-fun res!250940 () Bool)

(assert (=> b!427584 (=> (not res!250940) (not e!253494))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427584 (= res!250940 (validKeyInArray!0 k!794))))

(declare-fun b!427585 () Bool)

(declare-fun e!253493 () Bool)

(assert (=> b!427585 (= e!253493 true)))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((V!15991 0))(
  ( (V!15992 (val!5627 Int)) )
))
(declare-datatypes ((ValueCell!5239 0))(
  ( (ValueCellFull!5239 (v!7870 V!15991)) (EmptyCell!5239) )
))
(declare-datatypes ((array!26151 0))(
  ( (array!26152 (arr!12522 (Array (_ BitVec 32) ValueCell!5239)) (size!12874 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26151)

(declare-datatypes ((tuple2!7336 0))(
  ( (tuple2!7337 (_1!3678 (_ BitVec 64)) (_2!3678 V!15991)) )
))
(declare-datatypes ((List!7387 0))(
  ( (Nil!7384) (Cons!7383 (h!8239 tuple2!7336) (t!12857 List!7387)) )
))
(declare-datatypes ((ListLongMap!6263 0))(
  ( (ListLongMap!6264 (toList!3147 List!7387)) )
))
(declare-fun lt!195406 () ListLongMap!6263)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!195411 () ListLongMap!6263)

(declare-fun +!1300 (ListLongMap!6263 tuple2!7336) ListLongMap!6263)

(declare-fun get!6205 (ValueCell!5239 V!15991) V!15991)

(declare-fun dynLambda!748 (Int (_ BitVec 64)) V!15991)

(assert (=> b!427585 (= lt!195411 (+!1300 lt!195406 (tuple2!7337 (select (arr!12521 _keys!709) from!863) (get!6205 (select (arr!12522 _values!549) from!863) (dynLambda!748 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!18369 () Bool)

(declare-fun mapRes!18369 () Bool)

(assert (=> mapIsEmpty!18369 mapRes!18369))

(declare-fun mapNonEmpty!18369 () Bool)

(declare-fun tp!35567 () Bool)

(declare-fun e!253497 () Bool)

(assert (=> mapNonEmpty!18369 (= mapRes!18369 (and tp!35567 e!253497))))

(declare-fun mapValue!18369 () ValueCell!5239)

(declare-fun mapRest!18369 () (Array (_ BitVec 32) ValueCell!5239))

(declare-fun mapKey!18369 () (_ BitVec 32))

(assert (=> mapNonEmpty!18369 (= (arr!12522 _values!549) (store mapRest!18369 mapKey!18369 mapValue!18369))))

(declare-fun b!427586 () Bool)

(declare-fun e!253498 () Bool)

(declare-fun e!253495 () Bool)

(assert (=> b!427586 (= e!253498 (and e!253495 mapRes!18369))))

(declare-fun condMapEmpty!18369 () Bool)

(declare-fun mapDefault!18369 () ValueCell!5239)

