; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90290 () Bool)

(assert start!90290)

(declare-fun b!1033169 () Bool)

(declare-fun b_free!20773 () Bool)

(declare-fun b_next!20773 () Bool)

(assert (=> b!1033169 (= b_free!20773 (not b_next!20773))))

(declare-fun tp!73414 () Bool)

(declare-fun b_and!33259 () Bool)

(assert (=> b!1033169 (= tp!73414 b_and!33259)))

(declare-fun mapIsEmpty!38216 () Bool)

(declare-fun mapRes!38216 () Bool)

(assert (=> mapIsEmpty!38216 mapRes!38216))

(declare-fun b!1033164 () Bool)

(declare-fun res!690457 () Bool)

(declare-fun e!583964 () Bool)

(assert (=> b!1033164 (=> (not res!690457) (not e!583964))))

(declare-datatypes ((V!37531 0))(
  ( (V!37532 (val!12297 Int)) )
))
(declare-datatypes ((ValueCell!11543 0))(
  ( (ValueCellFull!11543 (v!14875 V!37531)) (EmptyCell!11543) )
))
(declare-datatypes ((array!65046 0))(
  ( (array!65047 (arr!31315 (Array (_ BitVec 32) (_ BitVec 64))) (size!31838 (_ BitVec 32))) )
))
(declare-datatypes ((array!65048 0))(
  ( (array!65049 (arr!31316 (Array (_ BitVec 32) ValueCell!11543)) (size!31839 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5680 0))(
  ( (LongMapFixedSize!5681 (defaultEntry!6214 Int) (mask!30054 (_ BitVec 32)) (extraKeys!5946 (_ BitVec 32)) (zeroValue!6050 V!37531) (minValue!6050 V!37531) (_size!2895 (_ BitVec 32)) (_keys!11389 array!65046) (_values!6237 array!65048) (_vacant!2895 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5680)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033164 (= res!690457 (validMask!0 (mask!30054 thiss!1427)))))

(declare-fun b!1033165 () Bool)

(declare-fun e!583966 () Bool)

(declare-fun tp_is_empty!24493 () Bool)

(assert (=> b!1033165 (= e!583966 tp_is_empty!24493)))

(declare-fun b!1033166 () Bool)

(declare-fun e!583965 () Bool)

(assert (=> b!1033166 (= e!583965 tp_is_empty!24493)))

(declare-fun b!1033167 () Bool)

(declare-fun e!583967 () Bool)

(assert (=> b!1033167 (= e!583967 (and e!583965 mapRes!38216))))

(declare-fun condMapEmpty!38216 () Bool)

(declare-fun mapDefault!38216 () ValueCell!11543)

