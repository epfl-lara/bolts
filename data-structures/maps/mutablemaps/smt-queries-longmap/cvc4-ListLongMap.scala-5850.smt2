; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75636 () Bool)

(assert start!75636)

(declare-fun b!888950 () Bool)

(declare-fun b_free!15605 () Bool)

(declare-fun b_next!15605 () Bool)

(assert (=> b!888950 (= b_free!15605 (not b_next!15605))))

(declare-fun tp!54777 () Bool)

(declare-fun b_and!25863 () Bool)

(assert (=> b!888950 (= tp!54777 b_and!25863)))

(declare-fun b!888948 () Bool)

(declare-fun e!495491 () Bool)

(declare-datatypes ((array!51828 0))(
  ( (array!51829 (arr!24918 (Array (_ BitVec 32) (_ BitVec 64))) (size!25362 (_ BitVec 32))) )
))
(declare-datatypes ((V!28875 0))(
  ( (V!28876 (val!9017 Int)) )
))
(declare-datatypes ((ValueCell!8485 0))(
  ( (ValueCellFull!8485 (v!11489 V!28875)) (EmptyCell!8485) )
))
(declare-datatypes ((array!51830 0))(
  ( (array!51831 (arr!24919 (Array (_ BitVec 32) ValueCell!8485)) (size!25363 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3986 0))(
  ( (LongMapFixedSize!3987 (defaultEntry!5190 Int) (mask!25621 (_ BitVec 32)) (extraKeys!4884 (_ BitVec 32)) (zeroValue!4988 V!28875) (minValue!4988 V!28875) (_size!2048 (_ BitVec 32)) (_keys!9868 array!51828) (_values!5175 array!51830) (_vacant!2048 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3986)

(assert (=> b!888948 (= e!495491 (not (= (size!25362 (_keys!9868 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25621 thiss!1181)))))))

(declare-fun b!888949 () Bool)

(declare-fun res!602615 () Bool)

(assert (=> b!888949 (=> (not res!602615) (not e!495491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!888949 (= res!602615 (validMask!0 (mask!25621 thiss!1181)))))

(declare-fun tp_is_empty!17933 () Bool)

(declare-fun e!495487 () Bool)

(declare-fun e!495490 () Bool)

(declare-fun array_inv!19576 (array!51828) Bool)

(declare-fun array_inv!19577 (array!51830) Bool)

(assert (=> b!888950 (= e!495487 (and tp!54777 tp_is_empty!17933 (array_inv!19576 (_keys!9868 thiss!1181)) (array_inv!19577 (_values!5175 thiss!1181)) e!495490))))

(declare-fun b!888951 () Bool)

(declare-fun e!495492 () Bool)

(assert (=> b!888951 (= e!495492 tp_is_empty!17933)))

(declare-fun b!888952 () Bool)

(declare-fun res!602616 () Bool)

(assert (=> b!888952 (=> (not res!602616) (not e!495491))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!888952 (= res!602616 (not (= key!785 (bvneg key!785))))))

(declare-fun b!888953 () Bool)

(declare-fun e!495488 () Bool)

(assert (=> b!888953 (= e!495488 tp_is_empty!17933)))

(declare-fun mapIsEmpty!28447 () Bool)

(declare-fun mapRes!28447 () Bool)

(assert (=> mapIsEmpty!28447 mapRes!28447))

(declare-fun res!602614 () Bool)

(assert (=> start!75636 (=> (not res!602614) (not e!495491))))

(declare-fun valid!1542 (LongMapFixedSize!3986) Bool)

(assert (=> start!75636 (= res!602614 (valid!1542 thiss!1181))))

(assert (=> start!75636 e!495491))

(assert (=> start!75636 e!495487))

(assert (=> start!75636 true))

(declare-fun mapNonEmpty!28447 () Bool)

(declare-fun tp!54778 () Bool)

(assert (=> mapNonEmpty!28447 (= mapRes!28447 (and tp!54778 e!495492))))

(declare-fun mapValue!28447 () ValueCell!8485)

(declare-fun mapKey!28447 () (_ BitVec 32))

(declare-fun mapRest!28447 () (Array (_ BitVec 32) ValueCell!8485))

(assert (=> mapNonEmpty!28447 (= (arr!24919 (_values!5175 thiss!1181)) (store mapRest!28447 mapKey!28447 mapValue!28447))))

(declare-fun b!888954 () Bool)

(assert (=> b!888954 (= e!495490 (and e!495488 mapRes!28447))))

(declare-fun condMapEmpty!28447 () Bool)

(declare-fun mapDefault!28447 () ValueCell!8485)

