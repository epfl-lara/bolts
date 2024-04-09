; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39720 () Bool)

(assert start!39720)

(declare-fun b_free!9979 () Bool)

(declare-fun b_next!9979 () Bool)

(assert (=> start!39720 (= b_free!9979 (not b_next!9979))))

(declare-fun tp!35465 () Bool)

(declare-fun b_and!17653 () Bool)

(assert (=> start!39720 (= tp!35465 b_and!17653)))

(declare-fun b!426716 () Bool)

(declare-fun res!250238 () Bool)

(declare-fun e!253100 () Bool)

(assert (=> b!426716 (=> (not res!250238) (not e!253100))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!426716 (= res!250238 (bvsle from!863 i!563))))

(declare-fun b!426717 () Bool)

(declare-fun res!250245 () Bool)

(assert (=> b!426717 (=> (not res!250245) (not e!253100))))

(declare-datatypes ((array!26083 0))(
  ( (array!26084 (arr!12488 (Array (_ BitVec 32) (_ BitVec 64))) (size!12840 (_ BitVec 32))) )
))
(declare-fun lt!195072 () array!26083)

(declare-datatypes ((List!7358 0))(
  ( (Nil!7355) (Cons!7354 (h!8210 (_ BitVec 64)) (t!12810 List!7358)) )
))
(declare-fun arrayNoDuplicates!0 (array!26083 (_ BitVec 32) List!7358) Bool)

(assert (=> b!426717 (= res!250245 (arrayNoDuplicates!0 lt!195072 #b00000000000000000000000000000000 Nil!7355))))

(declare-fun b!426718 () Bool)

(declare-fun res!250242 () Bool)

(declare-fun e!253105 () Bool)

(assert (=> b!426718 (=> (not res!250242) (not e!253105))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426718 (= res!250242 (validKeyInArray!0 k!794))))

(declare-fun b!426719 () Bool)

(declare-fun e!253102 () Bool)

(assert (=> b!426719 (= e!253100 e!253102)))

(declare-fun res!250244 () Bool)

(assert (=> b!426719 (=> (not res!250244) (not e!253102))))

(assert (=> b!426719 (= res!250244 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15947 0))(
  ( (V!15948 (val!5610 Int)) )
))
(declare-fun minValue!515 () V!15947)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15947)

(declare-datatypes ((tuple2!7310 0))(
  ( (tuple2!7311 (_1!3665 (_ BitVec 64)) (_2!3665 V!15947)) )
))
(declare-datatypes ((List!7359 0))(
  ( (Nil!7356) (Cons!7355 (h!8211 tuple2!7310) (t!12811 List!7359)) )
))
(declare-datatypes ((ListLongMap!6237 0))(
  ( (ListLongMap!6238 (toList!3134 List!7359)) )
))
(declare-fun lt!195073 () ListLongMap!6237)

(declare-datatypes ((ValueCell!5222 0))(
  ( (ValueCellFull!5222 (v!7853 V!15947)) (EmptyCell!5222) )
))
(declare-datatypes ((array!26085 0))(
  ( (array!26086 (arr!12489 (Array (_ BitVec 32) ValueCell!5222)) (size!12841 (_ BitVec 32))) )
))
(declare-fun lt!195074 () array!26085)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1335 (array!26083 array!26085 (_ BitVec 32) (_ BitVec 32) V!15947 V!15947 (_ BitVec 32) Int) ListLongMap!6237)

(assert (=> b!426719 (= lt!195073 (getCurrentListMapNoExtraKeys!1335 lt!195072 lt!195074 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26085)

(declare-fun v!412 () V!15947)

(assert (=> b!426719 (= lt!195074 (array!26086 (store (arr!12489 _values!549) i!563 (ValueCellFull!5222 v!412)) (size!12841 _values!549)))))

(declare-fun lt!195071 () ListLongMap!6237)

(declare-fun _keys!709 () array!26083)

(assert (=> b!426719 (= lt!195071 (getCurrentListMapNoExtraKeys!1335 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426720 () Bool)

(declare-fun res!250237 () Bool)

(assert (=> b!426720 (=> (not res!250237) (not e!253105))))

(assert (=> b!426720 (= res!250237 (and (= (size!12841 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12840 _keys!709) (size!12841 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426721 () Bool)

(declare-fun res!250239 () Bool)

(assert (=> b!426721 (=> (not res!250239) (not e!253105))))

(assert (=> b!426721 (= res!250239 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12840 _keys!709))))))

(declare-fun b!426722 () Bool)

(declare-fun e!253101 () Bool)

(declare-fun e!253099 () Bool)

(declare-fun mapRes!18318 () Bool)

(assert (=> b!426722 (= e!253101 (and e!253099 mapRes!18318))))

(declare-fun condMapEmpty!18318 () Bool)

(declare-fun mapDefault!18318 () ValueCell!5222)

