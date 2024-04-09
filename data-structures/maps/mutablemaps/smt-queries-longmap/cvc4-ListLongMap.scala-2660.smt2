; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39790 () Bool)

(assert start!39790)

(declare-fun b_free!10049 () Bool)

(declare-fun b_next!10049 () Bool)

(assert (=> start!39790 (= b_free!10049 (not b_next!10049))))

(declare-fun tp!35676 () Bool)

(declare-fun b_and!17775 () Bool)

(assert (=> start!39790 (= tp!35676 b_and!17775)))

(declare-fun b!428589 () Bool)

(declare-fun res!251690 () Bool)

(declare-fun e!253957 () Bool)

(assert (=> b!428589 (=> (not res!251690) (not e!253957))))

(declare-datatypes ((array!26219 0))(
  ( (array!26220 (arr!12556 (Array (_ BitVec 32) (_ BitVec 64))) (size!12908 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26219)

(declare-datatypes ((List!7415 0))(
  ( (Nil!7412) (Cons!7411 (h!8267 (_ BitVec 64)) (t!12921 List!7415)) )
))
(declare-fun arrayNoDuplicates!0 (array!26219 (_ BitVec 32) List!7415) Bool)

(assert (=> b!428589 (= res!251690 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7412))))

(declare-fun b!428590 () Bool)

(declare-fun res!251695 () Bool)

(declare-fun e!253955 () Bool)

(assert (=> b!428590 (=> (not res!251695) (not e!253955))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428590 (= res!251695 (bvsle from!863 i!563))))

(declare-fun b!428592 () Bool)

(declare-datatypes ((Unit!12544 0))(
  ( (Unit!12545) )
))
(declare-fun e!253949 () Unit!12544)

(declare-fun Unit!12546 () Unit!12544)

(assert (=> b!428592 (= e!253949 Unit!12546)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!195890 () Unit!12544)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26219 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12544)

(assert (=> b!428592 (= lt!195890 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!428592 false))

(declare-fun b!428593 () Bool)

(declare-fun e!253952 () Bool)

(declare-fun tp_is_empty!11201 () Bool)

(assert (=> b!428593 (= e!253952 tp_is_empty!11201)))

(declare-fun b!428594 () Bool)

(declare-fun e!253954 () Bool)

(assert (=> b!428594 (= e!253955 e!253954)))

(declare-fun res!251703 () Bool)

(assert (=> b!428594 (=> (not res!251703) (not e!253954))))

(assert (=> b!428594 (= res!251703 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16039 0))(
  ( (V!16040 (val!5645 Int)) )
))
(declare-fun minValue!515 () V!16039)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16039)

(declare-datatypes ((ValueCell!5257 0))(
  ( (ValueCellFull!5257 (v!7888 V!16039)) (EmptyCell!5257) )
))
(declare-datatypes ((array!26221 0))(
  ( (array!26222 (arr!12557 (Array (_ BitVec 32) ValueCell!5257)) (size!12909 (_ BitVec 32))) )
))
(declare-fun lt!195895 () array!26221)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7366 0))(
  ( (tuple2!7367 (_1!3693 (_ BitVec 64)) (_2!3693 V!16039)) )
))
(declare-datatypes ((List!7416 0))(
  ( (Nil!7413) (Cons!7412 (h!8268 tuple2!7366) (t!12922 List!7416)) )
))
(declare-datatypes ((ListLongMap!6293 0))(
  ( (ListLongMap!6294 (toList!3162 List!7416)) )
))
(declare-fun lt!195896 () ListLongMap!6293)

(declare-fun lt!195889 () array!26219)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1361 (array!26219 array!26221 (_ BitVec 32) (_ BitVec 32) V!16039 V!16039 (_ BitVec 32) Int) ListLongMap!6293)

(assert (=> b!428594 (= lt!195896 (getCurrentListMapNoExtraKeys!1361 lt!195889 lt!195895 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26221)

(declare-fun v!412 () V!16039)

(assert (=> b!428594 (= lt!195895 (array!26222 (store (arr!12557 _values!549) i!563 (ValueCellFull!5257 v!412)) (size!12909 _values!549)))))

(declare-fun lt!195888 () ListLongMap!6293)

(assert (=> b!428594 (= lt!195888 (getCurrentListMapNoExtraKeys!1361 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!428595 () Bool)

(declare-fun res!251702 () Bool)

(assert (=> b!428595 (=> (not res!251702) (not e!253957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428595 (= res!251702 (validMask!0 mask!1025))))

(declare-fun b!428596 () Bool)

(declare-fun res!251698 () Bool)

(assert (=> b!428596 (=> (not res!251698) (not e!253955))))

(assert (=> b!428596 (= res!251698 (arrayNoDuplicates!0 lt!195889 #b00000000000000000000000000000000 Nil!7412))))

(declare-fun b!428597 () Bool)

(declare-fun res!251691 () Bool)

(assert (=> b!428597 (=> (not res!251691) (not e!253957))))

(assert (=> b!428597 (= res!251691 (or (= (select (arr!12556 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12556 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18423 () Bool)

(declare-fun mapRes!18423 () Bool)

(assert (=> mapIsEmpty!18423 mapRes!18423))

(declare-fun b!428598 () Bool)

(declare-fun res!251696 () Bool)

(assert (=> b!428598 (=> (not res!251696) (not e!253957))))

(declare-fun arrayContainsKey!0 (array!26219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!428598 (= res!251696 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!428599 () Bool)

(declare-fun e!253953 () Bool)

(declare-fun e!253956 () Bool)

(assert (=> b!428599 (= e!253953 (and e!253956 mapRes!18423))))

(declare-fun condMapEmpty!18423 () Bool)

(declare-fun mapDefault!18423 () ValueCell!5257)

