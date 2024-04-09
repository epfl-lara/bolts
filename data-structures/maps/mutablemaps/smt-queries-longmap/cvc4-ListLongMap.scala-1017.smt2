; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21718 () Bool)

(assert start!21718)

(declare-fun b!218075 () Bool)

(declare-fun b_free!5855 () Bool)

(declare-fun b_next!5855 () Bool)

(assert (=> b!218075 (= b_free!5855 (not b_next!5855))))

(declare-fun tp!20699 () Bool)

(declare-fun b_and!12763 () Bool)

(assert (=> b!218075 (= tp!20699 b_and!12763)))

(declare-datatypes ((V!7269 0))(
  ( (V!7270 (val!2903 Int)) )
))
(declare-datatypes ((ValueCell!2515 0))(
  ( (ValueCellFull!2515 (v!4917 V!7269)) (EmptyCell!2515) )
))
(declare-datatypes ((array!10672 0))(
  ( (array!10673 (arr!5057 (Array (_ BitVec 32) ValueCell!2515)) (size!5389 (_ BitVec 32))) )
))
(declare-datatypes ((array!10674 0))(
  ( (array!10675 (arr!5058 (Array (_ BitVec 32) (_ BitVec 64))) (size!5390 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2930 0))(
  ( (LongMapFixedSize!2931 (defaultEntry!4115 Int) (mask!9884 (_ BitVec 32)) (extraKeys!3852 (_ BitVec 32)) (zeroValue!3956 V!7269) (minValue!3956 V!7269) (_size!1514 (_ BitVec 32)) (_keys!6164 array!10674) (_values!4098 array!10672) (_vacant!1514 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2930)

(declare-fun e!141871 () Bool)

(declare-fun e!141869 () Bool)

(declare-fun tp_is_empty!5717 () Bool)

(declare-fun array_inv!3341 (array!10674) Bool)

(declare-fun array_inv!3342 (array!10672) Bool)

(assert (=> b!218075 (= e!141869 (and tp!20699 tp_is_empty!5717 (array_inv!3341 (_keys!6164 thiss!1504)) (array_inv!3342 (_values!4098 thiss!1504)) e!141871))))

(declare-fun b!218076 () Bool)

(declare-fun res!106902 () Bool)

(declare-fun e!141873 () Bool)

(assert (=> b!218076 (=> (not res!106902) (not e!141873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10674 (_ BitVec 32)) Bool)

(assert (=> b!218076 (= res!106902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6164 thiss!1504) (mask!9884 thiss!1504)))))

(declare-fun b!218077 () Bool)

(declare-fun e!141868 () Bool)

(declare-fun mapRes!9738 () Bool)

(assert (=> b!218077 (= e!141871 (and e!141868 mapRes!9738))))

(declare-fun condMapEmpty!9738 () Bool)

(declare-fun mapDefault!9738 () ValueCell!2515)

