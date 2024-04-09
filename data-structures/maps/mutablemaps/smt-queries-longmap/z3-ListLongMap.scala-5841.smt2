; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75462 () Bool)

(assert start!75462)

(declare-fun b!887845 () Bool)

(declare-fun b_free!15549 () Bool)

(declare-fun b_next!15549 () Bool)

(assert (=> b!887845 (= b_free!15549 (not b_next!15549))))

(declare-fun tp!54595 () Bool)

(declare-fun b_and!25803 () Bool)

(assert (=> b!887845 (= tp!54595 b_and!25803)))

(declare-fun b!887844 () Bool)

(declare-fun e!494657 () Bool)

(declare-fun tp_is_empty!17877 () Bool)

(assert (=> b!887844 (= e!494657 tp_is_empty!17877)))

(declare-fun e!494654 () Bool)

(declare-fun e!494656 () Bool)

(declare-datatypes ((array!51708 0))(
  ( (array!51709 (arr!24862 (Array (_ BitVec 32) (_ BitVec 64))) (size!25303 (_ BitVec 32))) )
))
(declare-datatypes ((V!28801 0))(
  ( (V!28802 (val!8989 Int)) )
))
(declare-datatypes ((ValueCell!8457 0))(
  ( (ValueCellFull!8457 (v!11455 V!28801)) (EmptyCell!8457) )
))
(declare-datatypes ((array!51710 0))(
  ( (array!51711 (arr!24863 (Array (_ BitVec 32) ValueCell!8457)) (size!25304 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3930 0))(
  ( (LongMapFixedSize!3931 (defaultEntry!5156 Int) (mask!25559 (_ BitVec 32)) (extraKeys!4850 (_ BitVec 32)) (zeroValue!4954 V!28801) (minValue!4954 V!28801) (_size!2020 (_ BitVec 32)) (_keys!9829 array!51708) (_values!5141 array!51710) (_vacant!2020 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3930)

(declare-fun array_inv!19542 (array!51708) Bool)

(declare-fun array_inv!19543 (array!51710) Bool)

(assert (=> b!887845 (= e!494656 (and tp!54595 tp_is_empty!17877 (array_inv!19542 (_keys!9829 thiss!1181)) (array_inv!19543 (_values!5141 thiss!1181)) e!494654))))

(declare-fun b!887846 () Bool)

(declare-fun e!494658 () Bool)

(assert (=> b!887846 (= e!494658 tp_is_empty!17877)))

(declare-fun mapNonEmpty!28348 () Bool)

(declare-fun mapRes!28348 () Bool)

(declare-fun tp!54594 () Bool)

(assert (=> mapNonEmpty!28348 (= mapRes!28348 (and tp!54594 e!494657))))

(declare-fun mapValue!28348 () ValueCell!8457)

(declare-fun mapKey!28348 () (_ BitVec 32))

(declare-fun mapRest!28348 () (Array (_ BitVec 32) ValueCell!8457))

(assert (=> mapNonEmpty!28348 (= (arr!24863 (_values!5141 thiss!1181)) (store mapRest!28348 mapKey!28348 mapValue!28348))))

(declare-fun b!887847 () Bool)

(declare-fun res!602247 () Bool)

(declare-fun e!494655 () Bool)

(assert (=> b!887847 (=> (not res!602247) (not e!494655))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!887847 (= res!602247 (and (= key!785 (bvneg key!785)) (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4850 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!602246 () Bool)

(assert (=> start!75462 (=> (not res!602246) (not e!494655))))

(declare-fun valid!1522 (LongMapFixedSize!3930) Bool)

(assert (=> start!75462 (= res!602246 (valid!1522 thiss!1181))))

(assert (=> start!75462 e!494655))

(assert (=> start!75462 e!494656))

(assert (=> start!75462 true))

(declare-fun mapIsEmpty!28348 () Bool)

(assert (=> mapIsEmpty!28348 mapRes!28348))

(declare-fun b!887848 () Bool)

(assert (=> b!887848 (= e!494655 false)))

(declare-fun lt!401479 () Bool)

(declare-fun contains!4312 (LongMapFixedSize!3930 (_ BitVec 64)) Bool)

(assert (=> b!887848 (= lt!401479 (contains!4312 thiss!1181 key!785))))

(declare-fun b!887849 () Bool)

(assert (=> b!887849 (= e!494654 (and e!494658 mapRes!28348))))

(declare-fun condMapEmpty!28348 () Bool)

(declare-fun mapDefault!28348 () ValueCell!8457)

(assert (=> b!887849 (= condMapEmpty!28348 (= (arr!24863 (_values!5141 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8457)) mapDefault!28348)))))

(assert (= (and start!75462 res!602246) b!887847))

(assert (= (and b!887847 res!602247) b!887848))

(assert (= (and b!887849 condMapEmpty!28348) mapIsEmpty!28348))

(assert (= (and b!887849 (not condMapEmpty!28348)) mapNonEmpty!28348))

(get-info :version)

(assert (= (and mapNonEmpty!28348 ((_ is ValueCellFull!8457) mapValue!28348)) b!887844))

(assert (= (and b!887849 ((_ is ValueCellFull!8457) mapDefault!28348)) b!887846))

(assert (= b!887845 b!887849))

(assert (= start!75462 b!887845))

(declare-fun m!827391 () Bool)

(assert (=> b!887845 m!827391))

(declare-fun m!827393 () Bool)

(assert (=> b!887845 m!827393))

(declare-fun m!827395 () Bool)

(assert (=> mapNonEmpty!28348 m!827395))

(declare-fun m!827397 () Bool)

(assert (=> start!75462 m!827397))

(declare-fun m!827399 () Bool)

(assert (=> b!887848 m!827399))

(check-sat (not start!75462) (not b_next!15549) (not b!887845) b_and!25803 tp_is_empty!17877 (not mapNonEmpty!28348) (not b!887848))
(check-sat b_and!25803 (not b_next!15549))
