; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89166 () Bool)

(assert start!89166)

(declare-fun b!1021798 () Bool)

(declare-fun b_free!20171 () Bool)

(declare-fun b_next!20171 () Bool)

(assert (=> b!1021798 (= b_free!20171 (not b_next!20171))))

(declare-fun tp!71548 () Bool)

(declare-fun b_and!32387 () Bool)

(assert (=> b!1021798 (= tp!71548 b_and!32387)))

(declare-fun b!1021793 () Bool)

(declare-fun res!684664 () Bool)

(declare-fun e!575582 () Bool)

(assert (=> b!1021793 (=> (not res!684664) (not e!575582))))

(declare-datatypes ((V!36727 0))(
  ( (V!36728 (val!11996 Int)) )
))
(declare-datatypes ((ValueCell!11242 0))(
  ( (ValueCellFull!11242 (v!14566 V!36727)) (EmptyCell!11242) )
))
(declare-datatypes ((array!63810 0))(
  ( (array!63811 (arr!30713 (Array (_ BitVec 32) (_ BitVec 64))) (size!31225 (_ BitVec 32))) )
))
(declare-datatypes ((array!63812 0))(
  ( (array!63813 (arr!30714 (Array (_ BitVec 32) ValueCell!11242)) (size!31226 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5078 0))(
  ( (LongMapFixedSize!5079 (defaultEntry!5891 Int) (mask!29465 (_ BitVec 32)) (extraKeys!5623 (_ BitVec 32)) (zeroValue!5727 V!36727) (minValue!5727 V!36727) (_size!2594 (_ BitVec 32)) (_keys!11033 array!63810) (_values!5914 array!63812) (_vacant!2594 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5078)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63810 (_ BitVec 32)) Bool)

(assert (=> b!1021793 (= res!684664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11033 thiss!1427) (mask!29465 thiss!1427)))))

(declare-fun b!1021794 () Bool)

(assert (=> b!1021794 (= e!575582 false)))

(declare-fun lt!450127 () Bool)

(declare-datatypes ((List!21777 0))(
  ( (Nil!21774) (Cons!21773 (h!22971 (_ BitVec 64)) (t!30798 List!21777)) )
))
(declare-fun arrayNoDuplicates!0 (array!63810 (_ BitVec 32) List!21777) Bool)

(assert (=> b!1021794 (= lt!450127 (arrayNoDuplicates!0 (_keys!11033 thiss!1427) #b00000000000000000000000000000000 Nil!21774))))

(declare-fun b!1021795 () Bool)

(declare-fun e!575584 () Bool)

(declare-fun e!575586 () Bool)

(declare-fun mapRes!37254 () Bool)

(assert (=> b!1021795 (= e!575584 (and e!575586 mapRes!37254))))

(declare-fun condMapEmpty!37254 () Bool)

(declare-fun mapDefault!37254 () ValueCell!11242)

