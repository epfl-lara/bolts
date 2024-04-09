; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89374 () Bool)

(assert start!89374)

(declare-fun b!1024096 () Bool)

(declare-fun b_free!20347 () Bool)

(declare-fun b_next!20347 () Bool)

(assert (=> b!1024096 (= b_free!20347 (not b_next!20347))))

(declare-fun tp!72085 () Bool)

(declare-fun b_and!32611 () Bool)

(assert (=> b!1024096 (= tp!72085 b_and!32611)))

(declare-fun b!1024094 () Bool)

(declare-fun res!685793 () Bool)

(declare-fun e!577252 () Bool)

(assert (=> b!1024094 (=> (not res!685793) (not e!577252))))

(declare-datatypes ((V!36963 0))(
  ( (V!36964 (val!12084 Int)) )
))
(declare-datatypes ((ValueCell!11330 0))(
  ( (ValueCellFull!11330 (v!14654 V!36963)) (EmptyCell!11330) )
))
(declare-datatypes ((array!64166 0))(
  ( (array!64167 (arr!30889 (Array (_ BitVec 32) (_ BitVec 64))) (size!31403 (_ BitVec 32))) )
))
(declare-datatypes ((array!64168 0))(
  ( (array!64169 (arr!30890 (Array (_ BitVec 32) ValueCell!11330)) (size!31404 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5254 0))(
  ( (LongMapFixedSize!5255 (defaultEntry!5979 Int) (mask!29617 (_ BitVec 32)) (extraKeys!5711 (_ BitVec 32)) (zeroValue!5815 V!36963) (minValue!5815 V!36963) (_size!2682 (_ BitVec 32)) (_keys!11123 array!64166) (_values!6002 array!64168) (_vacant!2682 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5254)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1024094 (= res!685793 (validMask!0 (mask!29617 thiss!1427)))))

(declare-fun b!1024095 () Bool)

(declare-fun e!577253 () Bool)

(declare-fun tp_is_empty!24067 () Bool)

(assert (=> b!1024095 (= e!577253 tp_is_empty!24067)))

(declare-fun e!577249 () Bool)

(declare-fun e!577250 () Bool)

(declare-fun array_inv!23793 (array!64166) Bool)

(declare-fun array_inv!23794 (array!64168) Bool)

(assert (=> b!1024096 (= e!577250 (and tp!72085 tp_is_empty!24067 (array_inv!23793 (_keys!11123 thiss!1427)) (array_inv!23794 (_values!6002 thiss!1427)) e!577249))))

(declare-fun mapIsEmpty!37526 () Bool)

(declare-fun mapRes!37526 () Bool)

(assert (=> mapIsEmpty!37526 mapRes!37526))

(declare-fun b!1024097 () Bool)

(declare-fun res!685794 () Bool)

(assert (=> b!1024097 (=> (not res!685794) (not e!577252))))

(assert (=> b!1024097 (= res!685794 (= (size!31403 (_keys!11123 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29617 thiss!1427))))))

(declare-fun b!1024098 () Bool)

(declare-fun res!685791 () Bool)

(assert (=> b!1024098 (=> (not res!685791) (not e!577252))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024098 (= res!685791 (not (= key!909 (bvneg key!909))))))

(declare-fun res!685792 () Bool)

(assert (=> start!89374 (=> (not res!685792) (not e!577252))))

(declare-fun valid!1955 (LongMapFixedSize!5254) Bool)

(assert (=> start!89374 (= res!685792 (valid!1955 thiss!1427))))

(assert (=> start!89374 e!577252))

(assert (=> start!89374 e!577250))

(assert (=> start!89374 true))

(declare-fun b!1024099 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1024099 (= e!577252 (not (validKeyInArray!0 key!909)))))

(declare-fun mapNonEmpty!37526 () Bool)

(declare-fun tp!72084 () Bool)

(assert (=> mapNonEmpty!37526 (= mapRes!37526 (and tp!72084 e!577253))))

(declare-fun mapValue!37526 () ValueCell!11330)

(declare-fun mapKey!37526 () (_ BitVec 32))

(declare-fun mapRest!37526 () (Array (_ BitVec 32) ValueCell!11330))

(assert (=> mapNonEmpty!37526 (= (arr!30890 (_values!6002 thiss!1427)) (store mapRest!37526 mapKey!37526 mapValue!37526))))

(declare-fun b!1024100 () Bool)

(declare-fun e!577248 () Bool)

(assert (=> b!1024100 (= e!577249 (and e!577248 mapRes!37526))))

(declare-fun condMapEmpty!37526 () Bool)

(declare-fun mapDefault!37526 () ValueCell!11330)

