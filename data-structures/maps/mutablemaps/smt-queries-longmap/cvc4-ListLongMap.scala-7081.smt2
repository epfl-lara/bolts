; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89580 () Bool)

(assert start!89580)

(declare-fun b!1027038 () Bool)

(declare-fun b_free!20543 () Bool)

(declare-fun b_next!20543 () Bool)

(assert (=> b!1027038 (= b_free!20543 (not b_next!20543))))

(declare-fun tp!72675 () Bool)

(declare-fun b_and!32807 () Bool)

(assert (=> b!1027038 (= tp!72675 b_and!32807)))

(declare-fun b!1027037 () Bool)

(declare-fun res!687552 () Bool)

(declare-fun e!579581 () Bool)

(assert (=> b!1027037 (=> (not res!687552) (not e!579581))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1027037 (= res!687552 (not (= key!909 (bvneg key!909))))))

(declare-fun tp_is_empty!24263 () Bool)

(declare-fun e!579583 () Bool)

(declare-datatypes ((V!37223 0))(
  ( (V!37224 (val!12182 Int)) )
))
(declare-datatypes ((ValueCell!11428 0))(
  ( (ValueCellFull!11428 (v!14752 V!37223)) (EmptyCell!11428) )
))
(declare-datatypes ((array!64560 0))(
  ( (array!64561 (arr!31085 (Array (_ BitVec 32) (_ BitVec 64))) (size!31599 (_ BitVec 32))) )
))
(declare-datatypes ((array!64562 0))(
  ( (array!64563 (arr!31086 (Array (_ BitVec 32) ValueCell!11428)) (size!31600 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5450 0))(
  ( (LongMapFixedSize!5451 (defaultEntry!6077 Int) (mask!29780 (_ BitVec 32)) (extraKeys!5809 (_ BitVec 32)) (zeroValue!5913 V!37223) (minValue!5913 V!37223) (_size!2780 (_ BitVec 32)) (_keys!11221 array!64560) (_values!6100 array!64562) (_vacant!2780 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5450)

(declare-fun e!579579 () Bool)

(declare-fun array_inv!23921 (array!64560) Bool)

(declare-fun array_inv!23922 (array!64562) Bool)

(assert (=> b!1027038 (= e!579583 (and tp!72675 tp_is_empty!24263 (array_inv!23921 (_keys!11221 thiss!1427)) (array_inv!23922 (_values!6100 thiss!1427)) e!579579))))

(declare-fun b!1027039 () Bool)

(declare-fun e!579582 () Bool)

(assert (=> b!1027039 (= e!579581 e!579582)))

(declare-fun res!687551 () Bool)

(assert (=> b!1027039 (=> (not res!687551) (not e!579582))))

(declare-datatypes ((SeekEntryResult!9652 0))(
  ( (MissingZero!9652 (index!40978 (_ BitVec 32))) (Found!9652 (index!40979 (_ BitVec 32))) (Intermediate!9652 (undefined!10464 Bool) (index!40980 (_ BitVec 32)) (x!91365 (_ BitVec 32))) (Undefined!9652) (MissingVacant!9652 (index!40981 (_ BitVec 32))) )
))
(declare-fun lt!451994 () SeekEntryResult!9652)

(assert (=> b!1027039 (= res!687551 (is-Found!9652 lt!451994))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64560 (_ BitVec 32)) SeekEntryResult!9652)

(assert (=> b!1027039 (= lt!451994 (seekEntry!0 key!909 (_keys!11221 thiss!1427) (mask!29780 thiss!1427)))))

(declare-fun b!1027040 () Bool)

(declare-fun res!687553 () Bool)

(declare-fun e!579584 () Bool)

(assert (=> b!1027040 (=> res!687553 e!579584)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64560 (_ BitVec 32)) Bool)

(assert (=> b!1027040 (= res!687553 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11221 thiss!1427) (mask!29780 thiss!1427))))))

(declare-fun b!1027041 () Bool)

(assert (=> b!1027041 (= e!579584 true)))

(declare-fun lt!451992 () Bool)

(declare-datatypes ((List!21905 0))(
  ( (Nil!21902) (Cons!21901 (h!23099 (_ BitVec 64)) (t!30974 List!21905)) )
))
(declare-fun arrayNoDuplicates!0 (array!64560 (_ BitVec 32) List!21905) Bool)

(assert (=> b!1027041 (= lt!451992 (arrayNoDuplicates!0 (_keys!11221 thiss!1427) #b00000000000000000000000000000000 Nil!21902))))

(declare-fun mapNonEmpty!37823 () Bool)

(declare-fun mapRes!37823 () Bool)

(declare-fun tp!72676 () Bool)

(declare-fun e!579577 () Bool)

(assert (=> mapNonEmpty!37823 (= mapRes!37823 (and tp!72676 e!579577))))

(declare-fun mapValue!37823 () ValueCell!11428)

(declare-fun mapRest!37823 () (Array (_ BitVec 32) ValueCell!11428))

(declare-fun mapKey!37823 () (_ BitVec 32))

(assert (=> mapNonEmpty!37823 (= (arr!31086 (_values!6100 thiss!1427)) (store mapRest!37823 mapKey!37823 mapValue!37823))))

(declare-fun b!1027042 () Bool)

(declare-fun e!579580 () Bool)

(assert (=> b!1027042 (= e!579580 tp_is_empty!24263)))

(declare-fun b!1027043 () Bool)

(assert (=> b!1027043 (= e!579579 (and e!579580 mapRes!37823))))

(declare-fun condMapEmpty!37823 () Bool)

(declare-fun mapDefault!37823 () ValueCell!11428)

