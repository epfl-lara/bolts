; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75524 () Bool)

(assert start!75524)

(declare-fun b!888234 () Bool)

(declare-fun b_free!15567 () Bool)

(declare-fun b_next!15567 () Bool)

(assert (=> b!888234 (= b_free!15567 (not b_next!15567))))

(declare-fun tp!54653 () Bool)

(declare-fun b_and!25823 () Bool)

(assert (=> b!888234 (= tp!54653 b_and!25823)))

(declare-fun b!888233 () Bool)

(declare-fun e!494950 () Bool)

(declare-fun tp_is_empty!17895 () Bool)

(assert (=> b!888233 (= e!494950 tp_is_empty!17895)))

(declare-datatypes ((array!51746 0))(
  ( (array!51747 (arr!24880 (Array (_ BitVec 32) (_ BitVec 64))) (size!25322 (_ BitVec 32))) )
))
(declare-datatypes ((V!28825 0))(
  ( (V!28826 (val!8998 Int)) )
))
(declare-datatypes ((ValueCell!8466 0))(
  ( (ValueCellFull!8466 (v!11467 V!28825)) (EmptyCell!8466) )
))
(declare-datatypes ((array!51748 0))(
  ( (array!51749 (arr!24881 (Array (_ BitVec 32) ValueCell!8466)) (size!25323 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3948 0))(
  ( (LongMapFixedSize!3949 (defaultEntry!5168 Int) (mask!25581 (_ BitVec 32)) (extraKeys!4862 (_ BitVec 32)) (zeroValue!4966 V!28825) (minValue!4966 V!28825) (_size!2029 (_ BitVec 32)) (_keys!9843 array!51746) (_values!5153 array!51748) (_vacant!2029 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3948)

(declare-fun e!494946 () Bool)

(declare-fun e!494948 () Bool)

(declare-fun array_inv!19550 (array!51746) Bool)

(declare-fun array_inv!19551 (array!51748) Bool)

(assert (=> b!888234 (= e!494946 (and tp!54653 tp_is_empty!17895 (array_inv!19550 (_keys!9843 thiss!1181)) (array_inv!19551 (_values!5153 thiss!1181)) e!494948))))

(declare-fun b!888235 () Bool)

(declare-fun e!494947 () Bool)

(declare-fun mapRes!28379 () Bool)

(assert (=> b!888235 (= e!494948 (and e!494947 mapRes!28379))))

(declare-fun condMapEmpty!28379 () Bool)

(declare-fun mapDefault!28379 () ValueCell!8466)

(assert (=> b!888235 (= condMapEmpty!28379 (= (arr!24881 (_values!5153 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8466)) mapDefault!28379)))))

(declare-fun b!888236 () Bool)

(declare-fun e!494945 () Bool)

(assert (=> b!888236 (= e!494945 false)))

(declare-fun lt!401672 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4318 (LongMapFixedSize!3948 (_ BitVec 64)) Bool)

(assert (=> b!888236 (= lt!401672 (contains!4318 thiss!1181 key!785))))

(declare-fun b!888237 () Bool)

(declare-fun res!602369 () Bool)

(assert (=> b!888237 (=> (not res!602369) (not e!494945))))

(assert (=> b!888237 (= res!602369 (and (= key!785 (bvneg key!785)) (or (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (= (bvand (extraKeys!4862 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4862 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!28379 () Bool)

(assert (=> mapIsEmpty!28379 mapRes!28379))

(declare-fun b!888238 () Bool)

(assert (=> b!888238 (= e!494947 tp_is_empty!17895)))

(declare-fun res!602370 () Bool)

(assert (=> start!75524 (=> (not res!602370) (not e!494945))))

(declare-fun valid!1529 (LongMapFixedSize!3948) Bool)

(assert (=> start!75524 (= res!602370 (valid!1529 thiss!1181))))

(assert (=> start!75524 e!494945))

(assert (=> start!75524 e!494946))

(assert (=> start!75524 true))

(declare-fun mapNonEmpty!28379 () Bool)

(declare-fun tp!54652 () Bool)

(assert (=> mapNonEmpty!28379 (= mapRes!28379 (and tp!54652 e!494950))))

(declare-fun mapKey!28379 () (_ BitVec 32))

(declare-fun mapValue!28379 () ValueCell!8466)

(declare-fun mapRest!28379 () (Array (_ BitVec 32) ValueCell!8466))

(assert (=> mapNonEmpty!28379 (= (arr!24881 (_values!5153 thiss!1181)) (store mapRest!28379 mapKey!28379 mapValue!28379))))

(assert (= (and start!75524 res!602370) b!888237))

(assert (= (and b!888237 res!602369) b!888236))

(assert (= (and b!888235 condMapEmpty!28379) mapIsEmpty!28379))

(assert (= (and b!888235 (not condMapEmpty!28379)) mapNonEmpty!28379))

(get-info :version)

(assert (= (and mapNonEmpty!28379 ((_ is ValueCellFull!8466) mapValue!28379)) b!888233))

(assert (= (and b!888235 ((_ is ValueCellFull!8466) mapDefault!28379)) b!888238))

(assert (= b!888234 b!888235))

(assert (= start!75524 b!888234))

(declare-fun m!827665 () Bool)

(assert (=> b!888234 m!827665))

(declare-fun m!827667 () Bool)

(assert (=> b!888234 m!827667))

(declare-fun m!827669 () Bool)

(assert (=> b!888236 m!827669))

(declare-fun m!827671 () Bool)

(assert (=> start!75524 m!827671))

(declare-fun m!827673 () Bool)

(assert (=> mapNonEmpty!28379 m!827673))

(check-sat (not mapNonEmpty!28379) (not b_next!15567) (not start!75524) tp_is_empty!17895 (not b!888234) b_and!25823 (not b!888236))
(check-sat b_and!25823 (not b_next!15567))
