; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20452 () Bool)

(assert start!20452)

(declare-fun b_free!5099 () Bool)

(declare-fun b_next!5099 () Bool)

(assert (=> start!20452 (= b_free!5099 (not b_next!5099))))

(declare-fun tp!18328 () Bool)

(declare-fun b_and!11863 () Bool)

(assert (=> start!20452 (= tp!18328 b_and!11863)))

(declare-fun b!202374 () Bool)

(declare-fun res!96986 () Bool)

(declare-fun e!132570 () Bool)

(assert (=> b!202374 (=> (not res!96986) (not e!132570))))

(declare-datatypes ((V!6253 0))(
  ( (V!6254 (val!2522 Int)) )
))
(declare-datatypes ((tuple2!3820 0))(
  ( (tuple2!3821 (_1!1920 (_ BitVec 64)) (_2!1920 V!6253)) )
))
(declare-datatypes ((List!2750 0))(
  ( (Nil!2747) (Cons!2746 (h!3388 tuple2!3820) (t!7689 List!2750)) )
))
(declare-datatypes ((ListLongMap!2747 0))(
  ( (ListLongMap!2748 (toList!1389 List!2750)) )
))
(declare-fun lt!101627 () ListLongMap!2747)

(declare-fun lt!101624 () tuple2!3820)

(declare-fun lt!101626 () ListLongMap!2747)

(declare-fun +!406 (ListLongMap!2747 tuple2!3820) ListLongMap!2747)

(assert (=> b!202374 (= res!96986 (= lt!101626 (+!406 lt!101627 lt!101624)))))

(declare-fun b!202375 () Bool)

(declare-fun res!96985 () Bool)

(declare-fun e!132568 () Bool)

(assert (=> b!202375 (=> (not res!96985) (not e!132568))))

(declare-datatypes ((array!9134 0))(
  ( (array!9135 (arr!4317 (Array (_ BitVec 32) (_ BitVec 64))) (size!4642 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9134)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9134 (_ BitVec 32)) Bool)

(assert (=> b!202375 (= res!96985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202376 () Bool)

(declare-fun res!96982 () Bool)

(assert (=> b!202376 (=> (not res!96982) (not e!132568))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202376 (= res!96982 (= (select (arr!4317 _keys!825) i!601) k!843))))

(declare-fun mapIsEmpty!8501 () Bool)

(declare-fun mapRes!8501 () Bool)

(assert (=> mapIsEmpty!8501 mapRes!8501))

(declare-fun b!202377 () Bool)

(declare-fun e!132571 () Bool)

(declare-fun tp_is_empty!4955 () Bool)

(assert (=> b!202377 (= e!132571 tp_is_empty!4955)))

(declare-fun b!202378 () Bool)

(declare-fun res!96988 () Bool)

(assert (=> b!202378 (=> (not res!96988) (not e!132568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202378 (= res!96988 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8501 () Bool)

(declare-fun tp!18329 () Bool)

(declare-fun e!132569 () Bool)

(assert (=> mapNonEmpty!8501 (= mapRes!8501 (and tp!18329 e!132569))))

(declare-datatypes ((ValueCell!2134 0))(
  ( (ValueCellFull!2134 (v!4488 V!6253)) (EmptyCell!2134) )
))
(declare-fun mapRest!8501 () (Array (_ BitVec 32) ValueCell!2134))

(declare-fun mapValue!8501 () ValueCell!2134)

(declare-datatypes ((array!9136 0))(
  ( (array!9137 (arr!4318 (Array (_ BitVec 32) ValueCell!2134)) (size!4643 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9136)

(declare-fun mapKey!8501 () (_ BitVec 32))

(assert (=> mapNonEmpty!8501 (= (arr!4318 _values!649) (store mapRest!8501 mapKey!8501 mapValue!8501))))

(declare-fun b!202379 () Bool)

(declare-fun e!132572 () Bool)

(assert (=> b!202379 (= e!132572 (and e!132571 mapRes!8501))))

(declare-fun condMapEmpty!8501 () Bool)

(declare-fun mapDefault!8501 () ValueCell!2134)

