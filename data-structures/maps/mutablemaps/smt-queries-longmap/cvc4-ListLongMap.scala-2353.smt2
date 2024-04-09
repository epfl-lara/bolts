; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37592 () Bool)

(assert start!37592)

(declare-fun b_free!8711 () Bool)

(declare-fun b_next!8711 () Bool)

(assert (=> start!37592 (= b_free!8711 (not b_next!8711))))

(declare-fun tp!30848 () Bool)

(declare-fun b_and!15971 () Bool)

(assert (=> start!37592 (= tp!30848 b_and!15971)))

(declare-fun b!384021 () Bool)

(declare-fun res!218880 () Bool)

(declare-fun e!233189 () Bool)

(assert (=> b!384021 (=> (not res!218880) (not e!233189))))

(declare-datatypes ((array!22605 0))(
  ( (array!22606 (arr!10768 (Array (_ BitVec 32) (_ BitVec 64))) (size!11120 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22605)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384021 (= res!218880 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!384022 () Bool)

(declare-fun e!233186 () Bool)

(declare-fun tp_is_empty!9359 () Bool)

(assert (=> b!384022 (= e!233186 tp_is_empty!9359)))

(declare-fun b!384023 () Bool)

(declare-fun res!218887 () Bool)

(declare-fun e!233190 () Bool)

(assert (=> b!384023 (=> (not res!218887) (not e!233190))))

(declare-fun lt!180681 () array!22605)

(declare-datatypes ((List!6180 0))(
  ( (Nil!6177) (Cons!6176 (h!7032 (_ BitVec 64)) (t!11338 List!6180)) )
))
(declare-fun arrayNoDuplicates!0 (array!22605 (_ BitVec 32) List!6180) Bool)

(assert (=> b!384023 (= res!218887 (arrayNoDuplicates!0 lt!180681 #b00000000000000000000000000000000 Nil!6177))))

(declare-fun b!384025 () Bool)

(declare-fun e!233187 () Bool)

(assert (=> b!384025 (= e!233187 (bvsle #b00000000000000000000000000000000 (size!11120 _keys!658)))))

(declare-fun b!384026 () Bool)

(declare-fun e!233192 () Bool)

(assert (=> b!384026 (= e!233192 e!233187)))

(declare-fun res!218884 () Bool)

(assert (=> b!384026 (=> res!218884 e!233187)))

(declare-datatypes ((V!13583 0))(
  ( (V!13584 (val!4724 Int)) )
))
(declare-datatypes ((tuple2!6312 0))(
  ( (tuple2!6313 (_1!3166 (_ BitVec 64)) (_2!3166 V!13583)) )
))
(declare-datatypes ((List!6181 0))(
  ( (Nil!6178) (Cons!6177 (h!7033 tuple2!6312) (t!11339 List!6181)) )
))
(declare-datatypes ((ListLongMap!5239 0))(
  ( (ListLongMap!5240 (toList!2635 List!6181)) )
))
(declare-fun lt!180676 () ListLongMap!5239)

(declare-fun lt!180677 () ListLongMap!5239)

(declare-fun lt!180674 () tuple2!6312)

(declare-fun +!971 (ListLongMap!5239 tuple2!6312) ListLongMap!5239)

(assert (=> b!384026 (= res!218884 (not (= (+!971 lt!180677 lt!180674) lt!180676)))))

(declare-fun lt!180678 () ListLongMap!5239)

(assert (=> b!384026 (= lt!180676 lt!180678)))

(declare-fun b!384027 () Bool)

(declare-fun res!218879 () Bool)

(assert (=> b!384027 (=> (not res!218879) (not e!233189))))

(assert (=> b!384027 (= res!218879 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6177))))

(declare-fun b!384028 () Bool)

(declare-fun e!233188 () Bool)

(declare-fun mapRes!15603 () Bool)

(assert (=> b!384028 (= e!233188 (and e!233186 mapRes!15603))))

(declare-fun condMapEmpty!15603 () Bool)

(declare-datatypes ((ValueCell!4336 0))(
  ( (ValueCellFull!4336 (v!6917 V!13583)) (EmptyCell!4336) )
))
(declare-datatypes ((array!22607 0))(
  ( (array!22608 (arr!10769 (Array (_ BitVec 32) ValueCell!4336)) (size!11121 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22607)

(declare-fun mapDefault!15603 () ValueCell!4336)

