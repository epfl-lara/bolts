; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76652 () Bool)

(assert start!76652)

(declare-fun b!897232 () Bool)

(declare-fun b_free!15983 () Bool)

(declare-fun b_next!15983 () Bool)

(assert (=> b!897232 (= b_free!15983 (not b_next!15983))))

(declare-fun tp!56000 () Bool)

(declare-fun b_and!26293 () Bool)

(assert (=> b!897232 (= tp!56000 b_and!26293)))

(declare-fun mapIsEmpty!29102 () Bool)

(declare-fun mapRes!29102 () Bool)

(assert (=> mapIsEmpty!29102 mapRes!29102))

(declare-fun tp_is_empty!18311 () Bool)

(declare-fun e!501752 () Bool)

(declare-datatypes ((array!52634 0))(
  ( (array!52635 (arr!25296 (Array (_ BitVec 32) (_ BitVec 64))) (size!25751 (_ BitVec 32))) )
))
(declare-datatypes ((V!29379 0))(
  ( (V!29380 (val!9206 Int)) )
))
(declare-datatypes ((ValueCell!8674 0))(
  ( (ValueCellFull!8674 (v!11693 V!29379)) (EmptyCell!8674) )
))
(declare-datatypes ((array!52636 0))(
  ( (array!52637 (arr!25297 (Array (_ BitVec 32) ValueCell!8674)) (size!25752 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4364 0))(
  ( (LongMapFixedSize!4365 (defaultEntry!5394 Int) (mask!26072 (_ BitVec 32)) (extraKeys!5103 (_ BitVec 32)) (zeroValue!5207 V!29379) (minValue!5207 V!29379) (_size!2237 (_ BitVec 32)) (_keys!10145 array!52634) (_values!5394 array!52636) (_vacant!2237 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4364)

(declare-fun e!501753 () Bool)

(declare-fun array_inv!19830 (array!52634) Bool)

(declare-fun array_inv!19831 (array!52636) Bool)

(assert (=> b!897232 (= e!501753 (and tp!56000 tp_is_empty!18311 (array_inv!19830 (_keys!10145 thiss!1181)) (array_inv!19831 (_values!5394 thiss!1181)) e!501752))))

(declare-fun b!897233 () Bool)

(declare-fun e!501754 () Bool)

(assert (=> b!897233 (= e!501754 (or (not (= (size!25752 (_values!5394 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26072 thiss!1181)))) (not (= (size!25751 (_keys!10145 thiss!1181)) (size!25752 (_values!5394 thiss!1181)))) (bvslt (mask!26072 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5103 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5103 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!897234 () Bool)

(declare-fun e!501751 () Bool)

(assert (=> b!897234 (= e!501751 e!501754)))

(declare-fun res!606607 () Bool)

(assert (=> b!897234 (=> res!606607 e!501754)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!897234 (= res!606607 (not (validMask!0 (mask!26072 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!897234 (arrayContainsKey!0 (_keys!10145 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!8898 0))(
  ( (MissingZero!8898 (index!37962 (_ BitVec 32))) (Found!8898 (index!37963 (_ BitVec 32))) (Intermediate!8898 (undefined!9710 Bool) (index!37964 (_ BitVec 32)) (x!76431 (_ BitVec 32))) (Undefined!8898) (MissingVacant!8898 (index!37965 (_ BitVec 32))) )
))
(declare-fun lt!405106 () SeekEntryResult!8898)

(declare-datatypes ((Unit!30477 0))(
  ( (Unit!30478) )
))
(declare-fun lt!405107 () Unit!30477)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52634 (_ BitVec 64) (_ BitVec 32)) Unit!30477)

(assert (=> b!897234 (= lt!405107 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10145 thiss!1181) key!785 (index!37963 lt!405106)))))

(declare-fun b!897235 () Bool)

(declare-fun e!501749 () Bool)

(assert (=> b!897235 (= e!501749 tp_is_empty!18311)))

(declare-fun b!897236 () Bool)

(assert (=> b!897236 (= e!501752 (and e!501749 mapRes!29102))))

(declare-fun condMapEmpty!29102 () Bool)

(declare-fun mapDefault!29102 () ValueCell!8674)

