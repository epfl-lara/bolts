; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91690 () Bool)

(assert start!91690)

(declare-fun b!1043347 () Bool)

(declare-fun b_free!21091 () Bool)

(declare-fun b_next!21091 () Bool)

(assert (=> b!1043347 (= b_free!21091 (not b_next!21091))))

(declare-fun tp!74512 () Bool)

(declare-fun b_and!33641 () Bool)

(assert (=> b!1043347 (= tp!74512 b_and!33641)))

(declare-fun b!1043339 () Bool)

(declare-fun res!695196 () Bool)

(declare-fun e!591169 () Bool)

(assert (=> b!1043339 (=> res!695196 e!591169)))

(declare-datatypes ((V!37955 0))(
  ( (V!37956 (val!12456 Int)) )
))
(declare-datatypes ((ValueCell!11702 0))(
  ( (ValueCellFull!11702 (v!15048 V!37955)) (EmptyCell!11702) )
))
(declare-datatypes ((array!65768 0))(
  ( (array!65769 (arr!31633 (Array (_ BitVec 32) (_ BitVec 64))) (size!32169 (_ BitVec 32))) )
))
(declare-datatypes ((array!65770 0))(
  ( (array!65771 (arr!31634 (Array (_ BitVec 32) ValueCell!11702)) (size!32170 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5998 0))(
  ( (LongMapFixedSize!5999 (defaultEntry!6381 Int) (mask!30465 (_ BitVec 32)) (extraKeys!6109 (_ BitVec 32)) (zeroValue!6215 V!37955) (minValue!6215 V!37955) (_size!3054 (_ BitVec 32)) (_keys!11636 array!65768) (_values!6404 array!65770) (_vacant!3054 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5998)

(assert (=> b!1043339 (= res!695196 (or (not (= (size!32170 (_values!6404 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30465 thiss!1427)))) (not (= (size!32169 (_keys!11636 thiss!1427)) (size!32170 (_values!6404 thiss!1427)))) (bvslt (mask!30465 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6109 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!6109 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun res!695195 () Bool)

(declare-fun e!591172 () Bool)

(assert (=> start!91690 (=> (not res!695195) (not e!591172))))

(declare-fun valid!2203 (LongMapFixedSize!5998) Bool)

(assert (=> start!91690 (= res!695195 (valid!2203 thiss!1427))))

(assert (=> start!91690 e!591172))

(declare-fun e!591170 () Bool)

(assert (=> start!91690 e!591170))

(assert (=> start!91690 true))

(declare-fun b!1043340 () Bool)

(assert (=> b!1043340 (= e!591169 true)))

(declare-fun lt!459886 () Bool)

(declare-datatypes ((List!22113 0))(
  ( (Nil!22110) (Cons!22109 (h!23317 (_ BitVec 64)) (t!31334 List!22113)) )
))
(declare-fun arrayNoDuplicates!0 (array!65768 (_ BitVec 32) List!22113) Bool)

(assert (=> b!1043340 (= lt!459886 (arrayNoDuplicates!0 (_keys!11636 thiss!1427) #b00000000000000000000000000000000 Nil!22110))))

(declare-fun b!1043341 () Bool)

(declare-fun e!591175 () Bool)

(declare-fun tp_is_empty!24811 () Bool)

(assert (=> b!1043341 (= e!591175 tp_is_empty!24811)))

(declare-fun b!1043342 () Bool)

(declare-fun e!591168 () Bool)

(declare-fun mapRes!38837 () Bool)

(assert (=> b!1043342 (= e!591168 (and e!591175 mapRes!38837))))

(declare-fun condMapEmpty!38837 () Bool)

(declare-fun mapDefault!38837 () ValueCell!11702)

