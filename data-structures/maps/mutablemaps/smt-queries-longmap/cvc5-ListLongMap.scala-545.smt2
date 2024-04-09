; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14434 () Bool)

(assert start!14434)

(declare-fun b!135959 () Bool)

(declare-fun b_free!2929 () Bool)

(declare-fun b_next!2929 () Bool)

(assert (=> b!135959 (= b_free!2929 (not b_next!2929))))

(declare-fun tp!11239 () Bool)

(declare-fun b_and!8417 () Bool)

(assert (=> b!135959 (= tp!11239 b_and!8417)))

(declare-fun b!135966 () Bool)

(declare-fun b_free!2931 () Bool)

(declare-fun b_next!2931 () Bool)

(assert (=> b!135966 (= b_free!2931 (not b_next!2931))))

(declare-fun tp!11240 () Bool)

(declare-fun b_and!8419 () Bool)

(assert (=> b!135966 (= tp!11240 b_and!8419)))

(declare-fun b!135953 () Bool)

(declare-fun res!65246 () Bool)

(declare-fun e!88540 () Bool)

(assert (=> b!135953 (=> (not res!65246) (not e!88540))))

(declare-datatypes ((V!3489 0))(
  ( (V!3490 (val!1485 Int)) )
))
(declare-datatypes ((array!4790 0))(
  ( (array!4791 (arr!2264 (Array (_ BitVec 32) (_ BitVec 64))) (size!2534 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1097 0))(
  ( (ValueCellFull!1097 (v!3211 V!3489)) (EmptyCell!1097) )
))
(declare-datatypes ((array!4792 0))(
  ( (array!4793 (arr!2265 (Array (_ BitVec 32) ValueCell!1097)) (size!2535 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1102 0))(
  ( (LongMapFixedSize!1103 (defaultEntry!2885 Int) (mask!7197 (_ BitVec 32)) (extraKeys!2646 (_ BitVec 32)) (zeroValue!2738 V!3489) (minValue!2738 V!3489) (_size!600 (_ BitVec 32)) (_keys!4638 array!4790) (_values!2868 array!4792) (_vacant!600 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1102)

(declare-fun valid!524 (LongMapFixedSize!1102) Bool)

(assert (=> b!135953 (= res!65246 (valid!524 newMap!16))))

(declare-fun b!135954 () Bool)

(declare-fun e!88546 () Bool)

(declare-fun tp_is_empty!2881 () Bool)

(assert (=> b!135954 (= e!88546 tp_is_empty!2881)))

(declare-fun b!135955 () Bool)

(declare-fun e!88541 () Bool)

(declare-fun e!88548 () Bool)

(declare-fun mapRes!4665 () Bool)

(assert (=> b!135955 (= e!88541 (and e!88548 mapRes!4665))))

(declare-fun condMapEmpty!4665 () Bool)

(declare-datatypes ((Cell!890 0))(
  ( (Cell!891 (v!3212 LongMapFixedSize!1102)) )
))
(declare-datatypes ((LongMap!890 0))(
  ( (LongMap!891 (underlying!456 Cell!890)) )
))
(declare-fun thiss!992 () LongMap!890)

(declare-fun mapDefault!4666 () ValueCell!1097)

