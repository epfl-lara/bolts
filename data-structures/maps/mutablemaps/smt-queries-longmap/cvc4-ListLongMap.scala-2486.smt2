; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38746 () Bool)

(assert start!38746)

(declare-fun b_free!9275 () Bool)

(declare-fun b_next!9275 () Bool)

(assert (=> start!38746 (= b_free!9275 (not b_next!9275))))

(declare-fun tp!32948 () Bool)

(declare-fun b_and!16679 () Bool)

(assert (=> start!38746 (= tp!32948 b_and!16679)))

(declare-fun b!403276 () Bool)

(declare-fun e!242785 () Bool)

(declare-datatypes ((V!14647 0))(
  ( (V!14648 (val!5123 Int)) )
))
(declare-datatypes ((tuple2!6756 0))(
  ( (tuple2!6757 (_1!3388 (_ BitVec 64)) (_2!3388 V!14647)) )
))
(declare-datatypes ((List!6696 0))(
  ( (Nil!6693) (Cons!6692 (h!7548 tuple2!6756) (t!11878 List!6696)) )
))
(declare-datatypes ((ListLongMap!5683 0))(
  ( (ListLongMap!5684 (toList!2857 List!6696)) )
))
(declare-fun call!28487 () ListLongMap!5683)

(declare-fun call!28486 () ListLongMap!5683)

(assert (=> b!403276 (= e!242785 (= call!28487 call!28486))))

(declare-fun b!403277 () Bool)

(declare-fun e!242786 () Bool)

(declare-fun tp_is_empty!10157 () Bool)

(assert (=> b!403277 (= e!242786 tp_is_empty!10157)))

(declare-datatypes ((array!24185 0))(
  ( (array!24186 (arr!11539 (Array (_ BitVec 32) (_ BitVec 64))) (size!11891 (_ BitVec 32))) )
))
(declare-fun lt!188012 () array!24185)

(declare-fun minValue!515 () V!14647)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28483 () Bool)

(declare-datatypes ((ValueCell!4735 0))(
  ( (ValueCellFull!4735 (v!7366 V!14647)) (EmptyCell!4735) )
))
(declare-datatypes ((array!24187 0))(
  ( (array!24188 (arr!11540 (Array (_ BitVec 32) ValueCell!4735)) (size!11892 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24187)

(declare-fun zeroValue!515 () V!14647)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun c!54794 () Bool)

(declare-fun v!412 () V!14647)

(declare-fun _keys!709 () array!24185)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1068 (array!24185 array!24187 (_ BitVec 32) (_ BitVec 32) V!14647 V!14647 (_ BitVec 32) Int) ListLongMap!5683)

(assert (=> bm!28483 (= call!28486 (getCurrentListMapNoExtraKeys!1068 (ite c!54794 lt!188012 _keys!709) (ite c!54794 (array!24188 (store (arr!11540 _values!549) i!563 (ValueCellFull!4735 v!412)) (size!11892 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403278 () Bool)

(declare-fun res!232488 () Bool)

(declare-fun e!242788 () Bool)

(assert (=> b!403278 (=> (not res!232488) (not e!242788))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403278 (= res!232488 (validKeyInArray!0 k!794))))

(declare-fun b!403279 () Bool)

(declare-fun e!242787 () Bool)

(declare-fun e!242782 () Bool)

(declare-fun mapRes!16857 () Bool)

(assert (=> b!403279 (= e!242787 (and e!242782 mapRes!16857))))

(declare-fun condMapEmpty!16857 () Bool)

(declare-fun mapDefault!16857 () ValueCell!4735)

