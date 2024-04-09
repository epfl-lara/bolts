; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39418 () Bool)

(assert start!39418)

(declare-fun b_free!9677 () Bool)

(declare-fun b_next!9677 () Bool)

(assert (=> start!39418 (= b_free!9677 (not b_next!9677))))

(declare-fun tp!34559 () Bool)

(declare-fun b_and!17247 () Bool)

(assert (=> start!39418 (= tp!34559 b_and!17247)))

(declare-fun b!419064 () Bool)

(declare-fun res!244365 () Bool)

(declare-fun e!249785 () Bool)

(assert (=> b!419064 (=> (not res!244365) (not e!249785))))

(declare-datatypes ((array!25489 0))(
  ( (array!25490 (arr!12191 (Array (_ BitVec 32) (_ BitVec 64))) (size!12543 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25489)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15543 0))(
  ( (V!15544 (val!5459 Int)) )
))
(declare-datatypes ((ValueCell!5071 0))(
  ( (ValueCellFull!5071 (v!7702 V!15543)) (EmptyCell!5071) )
))
(declare-datatypes ((array!25491 0))(
  ( (array!25492 (arr!12192 (Array (_ BitVec 32) ValueCell!5071)) (size!12544 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25491)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!419064 (= res!244365 (and (= (size!12544 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12543 _keys!709) (size!12544 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-datatypes ((tuple2!7072 0))(
  ( (tuple2!7073 (_1!3546 (_ BitVec 64)) (_2!3546 V!15543)) )
))
(declare-datatypes ((List!7119 0))(
  ( (Nil!7116) (Cons!7115 (h!7971 tuple2!7072) (t!12469 List!7119)) )
))
(declare-datatypes ((ListLongMap!5999 0))(
  ( (ListLongMap!6000 (toList!3015 List!7119)) )
))
(declare-fun call!29207 () ListLongMap!5999)

(declare-fun e!249784 () Bool)

(declare-fun call!29206 () ListLongMap!5999)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun b!419065 () Bool)

(declare-fun v!412 () V!15543)

(declare-fun +!1222 (ListLongMap!5999 tuple2!7072) ListLongMap!5999)

(assert (=> b!419065 (= e!249784 (= call!29207 (+!1222 call!29206 (tuple2!7073 k!794 v!412))))))

(declare-fun b!419066 () Bool)

(declare-fun e!249783 () Bool)

(declare-fun tp_is_empty!10829 () Bool)

(assert (=> b!419066 (= e!249783 tp_is_empty!10829)))

(declare-fun b!419067 () Bool)

(declare-fun e!249787 () Bool)

(assert (=> b!419067 (= e!249785 e!249787)))

(declare-fun res!244366 () Bool)

(assert (=> b!419067 (=> (not res!244366) (not e!249787))))

(declare-fun lt!192216 () array!25489)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25489 (_ BitVec 32)) Bool)

(assert (=> b!419067 (= res!244366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192216 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419067 (= lt!192216 (array!25490 (store (arr!12191 _keys!709) i!563 k!794) (size!12543 _keys!709)))))

(declare-fun b!419068 () Bool)

(declare-fun e!249782 () Bool)

(declare-fun e!249789 () Bool)

(declare-fun mapRes!17865 () Bool)

(assert (=> b!419068 (= e!249782 (and e!249789 mapRes!17865))))

(declare-fun condMapEmpty!17865 () Bool)

(declare-fun mapDefault!17865 () ValueCell!5071)

