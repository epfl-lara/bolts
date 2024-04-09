; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75632 () Bool)

(assert start!75632)

(declare-fun b!888906 () Bool)

(declare-fun b_free!15601 () Bool)

(declare-fun b_next!15601 () Bool)

(assert (=> b!888906 (= b_free!15601 (not b_next!15601))))

(declare-fun tp!54765 () Bool)

(declare-fun b_and!25859 () Bool)

(assert (=> b!888906 (= tp!54765 b_and!25859)))

(declare-fun e!495452 () Bool)

(declare-datatypes ((array!51820 0))(
  ( (array!51821 (arr!24914 (Array (_ BitVec 32) (_ BitVec 64))) (size!25358 (_ BitVec 32))) )
))
(declare-datatypes ((V!28871 0))(
  ( (V!28872 (val!9015 Int)) )
))
(declare-datatypes ((ValueCell!8483 0))(
  ( (ValueCellFull!8483 (v!11487 V!28871)) (EmptyCell!8483) )
))
(declare-datatypes ((array!51822 0))(
  ( (array!51823 (arr!24915 (Array (_ BitVec 32) ValueCell!8483)) (size!25359 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3982 0))(
  ( (LongMapFixedSize!3983 (defaultEntry!5188 Int) (mask!25619 (_ BitVec 32)) (extraKeys!4882 (_ BitVec 32)) (zeroValue!4986 V!28871) (minValue!4986 V!28871) (_size!2046 (_ BitVec 32)) (_keys!9866 array!51820) (_values!5173 array!51822) (_vacant!2046 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3982)

(declare-fun tp_is_empty!17929 () Bool)

(declare-fun e!495456 () Bool)

(declare-fun array_inv!19572 (array!51820) Bool)

(declare-fun array_inv!19573 (array!51822) Bool)

(assert (=> b!888906 (= e!495452 (and tp!54765 tp_is_empty!17929 (array_inv!19572 (_keys!9866 thiss!1181)) (array_inv!19573 (_values!5173 thiss!1181)) e!495456))))

(declare-fun b!888907 () Bool)

(declare-fun e!495455 () Bool)

(assert (=> b!888907 (= e!495455 tp_is_empty!17929)))

(declare-fun res!602597 () Bool)

(declare-fun e!495454 () Bool)

(assert (=> start!75632 (=> (not res!602597) (not e!495454))))

(declare-fun valid!1540 (LongMapFixedSize!3982) Bool)

(assert (=> start!75632 (= res!602597 (valid!1540 thiss!1181))))

(assert (=> start!75632 e!495454))

(assert (=> start!75632 e!495452))

(assert (=> start!75632 true))

(declare-fun b!888908 () Bool)

(declare-fun res!602598 () Bool)

(assert (=> b!888908 (=> (not res!602598) (not e!495454))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!888908 (= res!602598 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28441 () Bool)

(declare-fun mapRes!28441 () Bool)

(assert (=> mapIsEmpty!28441 mapRes!28441))

(declare-fun mapNonEmpty!28441 () Bool)

(declare-fun tp!54766 () Bool)

(declare-fun e!495453 () Bool)

(assert (=> mapNonEmpty!28441 (= mapRes!28441 (and tp!54766 e!495453))))

(declare-fun mapValue!28441 () ValueCell!8483)

(declare-fun mapKey!28441 () (_ BitVec 32))

(declare-fun mapRest!28441 () (Array (_ BitVec 32) ValueCell!8483))

(assert (=> mapNonEmpty!28441 (= (arr!24915 (_values!5173 thiss!1181)) (store mapRest!28441 mapKey!28441 mapValue!28441))))

(declare-fun b!888909 () Bool)

(assert (=> b!888909 (= e!495454 (not (= (size!25358 (_keys!9866 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25619 thiss!1181)))))))

(declare-fun b!888910 () Bool)

(assert (=> b!888910 (= e!495453 tp_is_empty!17929)))

(declare-fun b!888911 () Bool)

(declare-fun res!602596 () Bool)

(assert (=> b!888911 (=> (not res!602596) (not e!495454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!888911 (= res!602596 (validMask!0 (mask!25619 thiss!1181)))))

(declare-fun b!888912 () Bool)

(assert (=> b!888912 (= e!495456 (and e!495455 mapRes!28441))))

(declare-fun condMapEmpty!28441 () Bool)

(declare-fun mapDefault!28441 () ValueCell!8483)

