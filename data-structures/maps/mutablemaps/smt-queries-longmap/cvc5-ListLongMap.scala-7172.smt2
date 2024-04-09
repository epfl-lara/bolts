; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91684 () Bool)

(assert start!91684)

(declare-fun b!1043249 () Bool)

(declare-fun b_free!21085 () Bool)

(declare-fun b_next!21085 () Bool)

(assert (=> b!1043249 (= b_free!21085 (not b_next!21085))))

(declare-fun tp!74493 () Bool)

(declare-fun b_and!33635 () Bool)

(assert (=> b!1043249 (= tp!74493 b_and!33635)))

(declare-fun e!591103 () Bool)

(declare-fun e!591096 () Bool)

(declare-datatypes ((V!37947 0))(
  ( (V!37948 (val!12453 Int)) )
))
(declare-datatypes ((ValueCell!11699 0))(
  ( (ValueCellFull!11699 (v!15045 V!37947)) (EmptyCell!11699) )
))
(declare-datatypes ((array!65756 0))(
  ( (array!65757 (arr!31627 (Array (_ BitVec 32) (_ BitVec 64))) (size!32163 (_ BitVec 32))) )
))
(declare-datatypes ((array!65758 0))(
  ( (array!65759 (arr!31628 (Array (_ BitVec 32) ValueCell!11699)) (size!32164 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5992 0))(
  ( (LongMapFixedSize!5993 (defaultEntry!6378 Int) (mask!30460 (_ BitVec 32)) (extraKeys!6106 (_ BitVec 32)) (zeroValue!6212 V!37947) (minValue!6212 V!37947) (_size!3051 (_ BitVec 32)) (_keys!11633 array!65756) (_values!6401 array!65758) (_vacant!3051 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5992)

(declare-fun tp_is_empty!24805 () Bool)

(declare-fun array_inv!24281 (array!65756) Bool)

(declare-fun array_inv!24282 (array!65758) Bool)

(assert (=> b!1043249 (= e!591096 (and tp!74493 tp_is_empty!24805 (array_inv!24281 (_keys!11633 thiss!1427)) (array_inv!24282 (_values!6401 thiss!1427)) e!591103))))

(declare-fun b!1043251 () Bool)

(declare-fun res!695138 () Bool)

(declare-fun e!591098 () Bool)

(assert (=> b!1043251 (=> (not res!695138) (not e!591098))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1043251 (= res!695138 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1043252 () Bool)

(declare-fun e!591100 () Bool)

(assert (=> b!1043252 (= e!591100 true)))

(declare-fun lt!459824 () Bool)

(declare-datatypes ((List!22111 0))(
  ( (Nil!22108) (Cons!22107 (h!23315 (_ BitVec 64)) (t!31332 List!22111)) )
))
(declare-fun arrayNoDuplicates!0 (array!65756 (_ BitVec 32) List!22111) Bool)

(assert (=> b!1043252 (= lt!459824 (arrayNoDuplicates!0 (_keys!11633 thiss!1427) #b00000000000000000000000000000000 Nil!22108))))

(declare-fun b!1043253 () Bool)

(declare-fun e!591101 () Bool)

(declare-fun mapRes!38828 () Bool)

(assert (=> b!1043253 (= e!591103 (and e!591101 mapRes!38828))))

(declare-fun condMapEmpty!38828 () Bool)

(declare-fun mapDefault!38828 () ValueCell!11699)

