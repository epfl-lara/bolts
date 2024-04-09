; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76250 () Bool)

(assert start!76250)

(declare-fun b!894873 () Bool)

(declare-fun b_free!15893 () Bool)

(declare-fun b_next!15893 () Bool)

(assert (=> b!894873 (= b_free!15893 (not b_next!15893))))

(declare-fun tp!55678 () Bool)

(declare-fun b_and!26203 () Bool)

(assert (=> b!894873 (= tp!55678 b_and!26203)))

(declare-fun b!894867 () Bool)

(declare-fun e!499965 () Bool)

(declare-fun tp_is_empty!18221 () Bool)

(assert (=> b!894867 (= e!499965 tp_is_empty!18221)))

(declare-fun res!605567 () Bool)

(declare-fun e!499960 () Bool)

(assert (=> start!76250 (=> (not res!605567) (not e!499960))))

(declare-datatypes ((array!52424 0))(
  ( (array!52425 (arr!25206 (Array (_ BitVec 32) (_ BitVec 64))) (size!25655 (_ BitVec 32))) )
))
(declare-datatypes ((V!29259 0))(
  ( (V!29260 (val!9161 Int)) )
))
(declare-datatypes ((ValueCell!8629 0))(
  ( (ValueCellFull!8629 (v!11648 V!29259)) (EmptyCell!8629) )
))
(declare-datatypes ((array!52426 0))(
  ( (array!52427 (arr!25207 (Array (_ BitVec 32) ValueCell!8629)) (size!25656 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4274 0))(
  ( (LongMapFixedSize!4275 (defaultEntry!5349 Int) (mask!25921 (_ BitVec 32)) (extraKeys!5045 (_ BitVec 32)) (zeroValue!5149 V!29259) (minValue!5149 V!29259) (_size!2192 (_ BitVec 32)) (_keys!10051 array!52424) (_values!5336 array!52426) (_vacant!2192 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4274)

(declare-fun valid!1640 (LongMapFixedSize!4274) Bool)

(assert (=> start!76250 (= res!605567 (valid!1640 thiss!1181))))

(assert (=> start!76250 e!499960))

(declare-fun e!499962 () Bool)

(assert (=> start!76250 e!499962))

(assert (=> start!76250 true))

(declare-fun b!894868 () Bool)

(declare-fun e!499964 () Bool)

(declare-fun e!499961 () Bool)

(declare-fun mapRes!28916 () Bool)

(assert (=> b!894868 (= e!499964 (and e!499961 mapRes!28916))))

(declare-fun condMapEmpty!28916 () Bool)

(declare-fun mapDefault!28916 () ValueCell!8629)

