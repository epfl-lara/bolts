; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75694 () Bool)

(assert start!75694)

(declare-fun b!889462 () Bool)

(declare-fun b_free!15637 () Bool)

(declare-fun b_next!15637 () Bool)

(assert (=> b!889462 (= b_free!15637 (not b_next!15637))))

(declare-fun tp!54881 () Bool)

(declare-fun b_and!25895 () Bool)

(assert (=> b!889462 (= tp!54881 b_and!25895)))

(declare-fun res!602892 () Bool)

(declare-fun e!495868 () Bool)

(assert (=> start!75694 (=> (not res!602892) (not e!495868))))

(declare-datatypes ((array!51896 0))(
  ( (array!51897 (arr!24950 (Array (_ BitVec 32) (_ BitVec 64))) (size!25395 (_ BitVec 32))) )
))
(declare-datatypes ((V!28919 0))(
  ( (V!28920 (val!9033 Int)) )
))
(declare-datatypes ((ValueCell!8501 0))(
  ( (ValueCellFull!8501 (v!11505 V!28919)) (EmptyCell!8501) )
))
(declare-datatypes ((array!51898 0))(
  ( (array!51899 (arr!24951 (Array (_ BitVec 32) ValueCell!8501)) (size!25396 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4018 0))(
  ( (LongMapFixedSize!4019 (defaultEntry!5206 Int) (mask!25652 (_ BitVec 32)) (extraKeys!4900 (_ BitVec 32)) (zeroValue!5004 V!28919) (minValue!5004 V!28919) (_size!2064 (_ BitVec 32)) (_keys!9885 array!51896) (_values!5191 array!51898) (_vacant!2064 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4018)

(declare-fun valid!1552 (LongMapFixedSize!4018) Bool)

(assert (=> start!75694 (= res!602892 (valid!1552 thiss!1181))))

(assert (=> start!75694 e!495868))

(declare-fun e!495864 () Bool)

(assert (=> start!75694 e!495864))

(assert (=> start!75694 true))

(declare-fun b!889456 () Bool)

(declare-fun res!602891 () Bool)

(declare-fun e!495869 () Bool)

(assert (=> b!889456 (=> (not res!602891) (not e!495869))))

(assert (=> b!889456 (= res!602891 (and (= (size!25396 (_values!5191 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25652 thiss!1181))) (= (size!25395 (_keys!9885 thiss!1181)) (size!25396 (_values!5191 thiss!1181))) (bvsge (mask!25652 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!4900 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!4900 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!889457 () Bool)

(declare-fun res!602890 () Bool)

(assert (=> b!889457 (=> (not res!602890) (not e!495869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51896 (_ BitVec 32)) Bool)

(assert (=> b!889457 (= res!602890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9885 thiss!1181) (mask!25652 thiss!1181)))))

(declare-fun mapNonEmpty!28502 () Bool)

(declare-fun mapRes!28502 () Bool)

(declare-fun tp!54880 () Bool)

(declare-fun e!495865 () Bool)

(assert (=> mapNonEmpty!28502 (= mapRes!28502 (and tp!54880 e!495865))))

(declare-fun mapValue!28502 () ValueCell!8501)

(declare-fun mapKey!28502 () (_ BitVec 32))

(declare-fun mapRest!28502 () (Array (_ BitVec 32) ValueCell!8501))

(assert (=> mapNonEmpty!28502 (= (arr!24951 (_values!5191 thiss!1181)) (store mapRest!28502 mapKey!28502 mapValue!28502))))

(declare-fun b!889458 () Bool)

(declare-fun e!495863 () Bool)

(declare-fun e!495866 () Bool)

(assert (=> b!889458 (= e!495863 (and e!495866 mapRes!28502))))

(declare-fun condMapEmpty!28502 () Bool)

(declare-fun mapDefault!28502 () ValueCell!8501)

