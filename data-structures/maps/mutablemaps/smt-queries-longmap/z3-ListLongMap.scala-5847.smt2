; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75586 () Bool)

(assert start!75586)

(declare-fun b!888622 () Bool)

(declare-fun b_free!15585 () Bool)

(declare-fun b_next!15585 () Bool)

(assert (=> b!888622 (= b_free!15585 (not b_next!15585))))

(declare-fun tp!54711 () Bool)

(declare-fun b_and!25843 () Bool)

(assert (=> b!888622 (= tp!54711 b_and!25843)))

(declare-fun e!495239 () Bool)

(declare-fun e!495236 () Bool)

(declare-datatypes ((array!51784 0))(
  ( (array!51785 (arr!24898 (Array (_ BitVec 32) (_ BitVec 64))) (size!25341 (_ BitVec 32))) )
))
(declare-datatypes ((V!28849 0))(
  ( (V!28850 (val!9007 Int)) )
))
(declare-datatypes ((ValueCell!8475 0))(
  ( (ValueCellFull!8475 (v!11477 V!28849)) (EmptyCell!8475) )
))
(declare-datatypes ((array!51786 0))(
  ( (array!51787 (arr!24899 (Array (_ BitVec 32) ValueCell!8475)) (size!25342 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3966 0))(
  ( (LongMapFixedSize!3967 (defaultEntry!5180 Int) (mask!25603 (_ BitVec 32)) (extraKeys!4874 (_ BitVec 32)) (zeroValue!4978 V!28849) (minValue!4978 V!28849) (_size!2038 (_ BitVec 32)) (_keys!9857 array!51784) (_values!5165 array!51786) (_vacant!2038 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3966)

(declare-fun tp_is_empty!17913 () Bool)

(declare-fun array_inv!19562 (array!51784) Bool)

(declare-fun array_inv!19563 (array!51786) Bool)

(assert (=> b!888622 (= e!495236 (and tp!54711 tp_is_empty!17913 (array_inv!19562 (_keys!9857 thiss!1181)) (array_inv!19563 (_values!5165 thiss!1181)) e!495239))))

(declare-fun b!888623 () Bool)

(declare-fun e!495240 () Bool)

(declare-fun mapRes!28410 () Bool)

(assert (=> b!888623 (= e!495239 (and e!495240 mapRes!28410))))

(declare-fun condMapEmpty!28410 () Bool)

(declare-fun mapDefault!28410 () ValueCell!8475)

(assert (=> b!888623 (= condMapEmpty!28410 (= (arr!24899 (_values!5165 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8475)) mapDefault!28410)))))

(declare-fun res!602492 () Bool)

(declare-fun e!495237 () Bool)

(assert (=> start!75586 (=> (not res!602492) (not e!495237))))

(declare-fun valid!1534 (LongMapFixedSize!3966) Bool)

(assert (=> start!75586 (= res!602492 (valid!1534 thiss!1181))))

(assert (=> start!75586 e!495237))

(assert (=> start!75586 e!495236))

(assert (=> start!75586 true))

(declare-fun b!888624 () Bool)

(declare-fun e!495241 () Bool)

(assert (=> b!888624 (= e!495241 tp_is_empty!17913)))

(declare-fun b!888625 () Bool)

(declare-fun res!602493 () Bool)

(assert (=> b!888625 (=> (not res!602493) (not e!495237))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!888625 (= res!602493 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!4874 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (or (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!4874 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!888626 () Bool)

(assert (=> b!888626 (= e!495237 false)))

(declare-fun lt!401865 () Bool)

(declare-fun contains!4323 (LongMapFixedSize!3966 (_ BitVec 64)) Bool)

(assert (=> b!888626 (= lt!401865 (contains!4323 thiss!1181 key!785))))

(declare-fun mapIsEmpty!28410 () Bool)

(assert (=> mapIsEmpty!28410 mapRes!28410))

(declare-fun b!888627 () Bool)

(assert (=> b!888627 (= e!495240 tp_is_empty!17913)))

(declare-fun mapNonEmpty!28410 () Bool)

(declare-fun tp!54710 () Bool)

(assert (=> mapNonEmpty!28410 (= mapRes!28410 (and tp!54710 e!495241))))

(declare-fun mapRest!28410 () (Array (_ BitVec 32) ValueCell!8475))

(declare-fun mapValue!28410 () ValueCell!8475)

(declare-fun mapKey!28410 () (_ BitVec 32))

(assert (=> mapNonEmpty!28410 (= (arr!24899 (_values!5165 thiss!1181)) (store mapRest!28410 mapKey!28410 mapValue!28410))))

(assert (= (and start!75586 res!602492) b!888625))

(assert (= (and b!888625 res!602493) b!888626))

(assert (= (and b!888623 condMapEmpty!28410) mapIsEmpty!28410))

(assert (= (and b!888623 (not condMapEmpty!28410)) mapNonEmpty!28410))

(get-info :version)

(assert (= (and mapNonEmpty!28410 ((_ is ValueCellFull!8475) mapValue!28410)) b!888624))

(assert (= (and b!888623 ((_ is ValueCellFull!8475) mapDefault!28410)) b!888627))

(assert (= b!888622 b!888623))

(assert (= start!75586 b!888622))

(declare-fun m!827939 () Bool)

(assert (=> b!888622 m!827939))

(declare-fun m!827941 () Bool)

(assert (=> b!888622 m!827941))

(declare-fun m!827943 () Bool)

(assert (=> start!75586 m!827943))

(declare-fun m!827945 () Bool)

(assert (=> b!888626 m!827945))

(declare-fun m!827947 () Bool)

(assert (=> mapNonEmpty!28410 m!827947))

(check-sat (not b_next!15585) (not b!888626) (not mapNonEmpty!28410) (not b!888622) tp_is_empty!17913 (not start!75586) b_and!25843)
(check-sat b_and!25843 (not b_next!15585))
