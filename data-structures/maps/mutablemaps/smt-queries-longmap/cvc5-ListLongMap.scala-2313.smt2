; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37348 () Bool)

(assert start!37348)

(declare-fun b_free!8467 () Bool)

(declare-fun b_next!8467 () Bool)

(assert (=> start!37348 (= b_free!8467 (not b_next!8467))))

(declare-fun tp!30116 () Bool)

(declare-fun b_and!15727 () Bool)

(assert (=> start!37348 (= tp!30116 b_and!15727)))

(declare-fun b!378765 () Bool)

(declare-fun res!214719 () Bool)

(declare-fun e!230498 () Bool)

(assert (=> b!378765 (=> (not res!214719) (not e!230498))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22127 0))(
  ( (array!22128 (arr!10529 (Array (_ BitVec 32) (_ BitVec 64))) (size!10881 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22127)

(assert (=> b!378765 (= res!214719 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10881 _keys!658))))))

(declare-fun b!378766 () Bool)

(declare-fun res!214722 () Bool)

(assert (=> b!378766 (=> (not res!214722) (not e!230498))))

(declare-datatypes ((List!5992 0))(
  ( (Nil!5989) (Cons!5988 (h!6844 (_ BitVec 64)) (t!11150 List!5992)) )
))
(declare-fun arrayNoDuplicates!0 (array!22127 (_ BitVec 32) List!5992) Bool)

(assert (=> b!378766 (= res!214722 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5989))))

(declare-fun b!378767 () Bool)

(declare-fun res!214724 () Bool)

(declare-fun e!230495 () Bool)

(assert (=> b!378767 (=> (not res!214724) (not e!230495))))

(declare-fun lt!176737 () array!22127)

(assert (=> b!378767 (= res!214724 (arrayNoDuplicates!0 lt!176737 #b00000000000000000000000000000000 Nil!5989))))

(declare-fun b!378768 () Bool)

(declare-fun res!214726 () Bool)

(assert (=> b!378768 (=> (not res!214726) (not e!230498))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378768 (= res!214726 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!378769 () Bool)

(declare-fun e!230497 () Bool)

(declare-fun e!230496 () Bool)

(assert (=> b!378769 (= e!230497 e!230496)))

(declare-fun res!214730 () Bool)

(assert (=> b!378769 (=> res!214730 e!230496)))

(assert (=> b!378769 (= res!214730 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13259 0))(
  ( (V!13260 (val!4602 Int)) )
))
(declare-datatypes ((tuple2!6120 0))(
  ( (tuple2!6121 (_1!3070 (_ BitVec 64)) (_2!3070 V!13259)) )
))
(declare-datatypes ((List!5993 0))(
  ( (Nil!5990) (Cons!5989 (h!6845 tuple2!6120) (t!11151 List!5993)) )
))
(declare-datatypes ((ListLongMap!5047 0))(
  ( (ListLongMap!5048 (toList!2539 List!5993)) )
))
(declare-fun lt!176732 () ListLongMap!5047)

(declare-fun lt!176735 () ListLongMap!5047)

(assert (=> b!378769 (= lt!176732 lt!176735)))

(declare-fun lt!176734 () ListLongMap!5047)

(declare-fun lt!176739 () tuple2!6120)

(declare-fun +!880 (ListLongMap!5047 tuple2!6120) ListLongMap!5047)

(assert (=> b!378769 (= lt!176735 (+!880 lt!176734 lt!176739))))

(declare-fun lt!176740 () ListLongMap!5047)

(declare-fun lt!176743 () ListLongMap!5047)

(assert (=> b!378769 (= lt!176740 lt!176743)))

(declare-fun lt!176733 () ListLongMap!5047)

(assert (=> b!378769 (= lt!176743 (+!880 lt!176733 lt!176739))))

(declare-fun lt!176741 () ListLongMap!5047)

(assert (=> b!378769 (= lt!176740 (+!880 lt!176741 lt!176739))))

(declare-fun minValue!472 () V!13259)

(assert (=> b!378769 (= lt!176739 (tuple2!6121 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378770 () Bool)

(declare-fun e!230499 () Bool)

(declare-fun e!230492 () Bool)

(declare-fun mapRes!15237 () Bool)

(assert (=> b!378770 (= e!230499 (and e!230492 mapRes!15237))))

(declare-fun condMapEmpty!15237 () Bool)

(declare-datatypes ((ValueCell!4214 0))(
  ( (ValueCellFull!4214 (v!6795 V!13259)) (EmptyCell!4214) )
))
(declare-datatypes ((array!22129 0))(
  ( (array!22130 (arr!10530 (Array (_ BitVec 32) ValueCell!4214)) (size!10882 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22129)

(declare-fun mapDefault!15237 () ValueCell!4214)

