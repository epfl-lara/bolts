; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15654 () Bool)

(assert start!15654)

(declare-fun b!155817 () Bool)

(declare-fun b_free!3309 () Bool)

(declare-fun b_next!3309 () Bool)

(assert (=> b!155817 (= b_free!3309 (not b_next!3309))))

(declare-fun tp!12451 () Bool)

(declare-fun b_and!9741 () Bool)

(assert (=> b!155817 (= tp!12451 b_and!9741)))

(declare-fun res!73623 () Bool)

(declare-fun e!101845 () Bool)

(assert (=> start!15654 (=> (not res!73623) (not e!101845))))

(declare-datatypes ((V!3795 0))(
  ( (V!3796 (val!1600 Int)) )
))
(declare-datatypes ((ValueCell!1212 0))(
  ( (ValueCellFull!1212 (v!3461 V!3795)) (EmptyCell!1212) )
))
(declare-datatypes ((array!5274 0))(
  ( (array!5275 (arr!2494 (Array (_ BitVec 32) (_ BitVec 64))) (size!2772 (_ BitVec 32))) )
))
(declare-datatypes ((array!5276 0))(
  ( (array!5277 (arr!2495 (Array (_ BitVec 32) ValueCell!1212)) (size!2773 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1332 0))(
  ( (LongMapFixedSize!1333 (defaultEntry!3108 Int) (mask!7543 (_ BitVec 32)) (extraKeys!2849 (_ BitVec 32)) (zeroValue!2951 V!3795) (minValue!2951 V!3795) (_size!715 (_ BitVec 32)) (_keys!4883 array!5274) (_values!3091 array!5276) (_vacant!715 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1332)

(declare-fun valid!643 (LongMapFixedSize!1332) Bool)

(assert (=> start!15654 (= res!73623 (valid!643 thiss!1248))))

(assert (=> start!15654 e!101845))

(declare-fun e!101843 () Bool)

(assert (=> start!15654 e!101843))

(assert (=> start!15654 true))

(declare-fun tp_is_empty!3111 () Bool)

(assert (=> start!15654 tp_is_empty!3111))

(declare-fun b!155814 () Bool)

(declare-fun e!101841 () Bool)

(assert (=> b!155814 (= e!101841 tp_is_empty!3111)))

(declare-fun b!155815 () Bool)

(declare-fun e!101846 () Bool)

(declare-fun e!101844 () Bool)

(declare-fun mapRes!5309 () Bool)

(assert (=> b!155815 (= e!101846 (and e!101844 mapRes!5309))))

(declare-fun condMapEmpty!5309 () Bool)

(declare-fun mapDefault!5309 () ValueCell!1212)

(assert (=> b!155815 (= condMapEmpty!5309 (= (arr!2495 (_values!3091 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1212)) mapDefault!5309)))))

(declare-fun b!155816 () Bool)

(declare-fun e!101842 () Bool)

(assert (=> b!155816 (= e!101842 true)))

(declare-fun lt!81458 () Bool)

(declare-fun lt!81457 () LongMapFixedSize!1332)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2816 0))(
  ( (tuple2!2817 (_1!1418 (_ BitVec 64)) (_2!1418 V!3795)) )
))
(declare-datatypes ((List!1853 0))(
  ( (Nil!1850) (Cons!1849 (h!2458 tuple2!2816) (t!6663 List!1853)) )
))
(declare-datatypes ((ListLongMap!1825 0))(
  ( (ListLongMap!1826 (toList!928 List!1853)) )
))
(declare-fun contains!964 (ListLongMap!1825 (_ BitVec 64)) Bool)

(declare-fun map!1529 (LongMapFixedSize!1332) ListLongMap!1825)

(assert (=> b!155816 (= lt!81458 (contains!964 (map!1529 lt!81457) key!828))))

(declare-fun array_inv!1565 (array!5274) Bool)

(declare-fun array_inv!1566 (array!5276) Bool)

(assert (=> b!155817 (= e!101843 (and tp!12451 tp_is_empty!3111 (array_inv!1565 (_keys!4883 thiss!1248)) (array_inv!1566 (_values!3091 thiss!1248)) e!101846))))

(declare-fun b!155818 () Bool)

(assert (=> b!155818 (= e!101845 (not e!101842))))

(declare-fun res!73624 () Bool)

(assert (=> b!155818 (=> res!73624 e!101842)))

(assert (=> b!155818 (= res!73624 (not (valid!643 lt!81457)))))

(declare-fun v!309 () V!3795)

(assert (=> b!155818 (= lt!81457 (LongMapFixedSize!1333 (defaultEntry!3108 thiss!1248) (mask!7543 thiss!1248) (bvor (extraKeys!2849 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2951 thiss!1248) (_size!715 thiss!1248) (_keys!4883 thiss!1248) (_values!3091 thiss!1248) (_vacant!715 thiss!1248)))))

(declare-fun +!192 (ListLongMap!1825 tuple2!2816) ListLongMap!1825)

(declare-fun getCurrentListMap!589 (array!5274 array!5276 (_ BitVec 32) (_ BitVec 32) V!3795 V!3795 (_ BitVec 32) Int) ListLongMap!1825)

(assert (=> b!155818 (= (+!192 (getCurrentListMap!589 (_keys!4883 thiss!1248) (_values!3091 thiss!1248) (mask!7543 thiss!1248) (extraKeys!2849 thiss!1248) (zeroValue!2951 thiss!1248) (minValue!2951 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3108 thiss!1248)) (tuple2!2817 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!589 (_keys!4883 thiss!1248) (_values!3091 thiss!1248) (mask!7543 thiss!1248) (bvor (extraKeys!2849 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2951 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3108 thiss!1248)))))

(declare-datatypes ((Unit!4936 0))(
  ( (Unit!4937) )
))
(declare-fun lt!81456 () Unit!4936)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!76 (array!5274 array!5276 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3795 V!3795 V!3795 Int) Unit!4936)

(assert (=> b!155818 (= lt!81456 (lemmaChangeZeroKeyThenAddPairToListMap!76 (_keys!4883 thiss!1248) (_values!3091 thiss!1248) (mask!7543 thiss!1248) (extraKeys!2849 thiss!1248) (bvor (extraKeys!2849 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2951 thiss!1248) v!309 (minValue!2951 thiss!1248) (defaultEntry!3108 thiss!1248)))))

(declare-fun mapNonEmpty!5309 () Bool)

(declare-fun tp!12452 () Bool)

(assert (=> mapNonEmpty!5309 (= mapRes!5309 (and tp!12452 e!101841))))

(declare-fun mapValue!5309 () ValueCell!1212)

(declare-fun mapKey!5309 () (_ BitVec 32))

(declare-fun mapRest!5309 () (Array (_ BitVec 32) ValueCell!1212))

(assert (=> mapNonEmpty!5309 (= (arr!2495 (_values!3091 thiss!1248)) (store mapRest!5309 mapKey!5309 mapValue!5309))))

(declare-fun b!155819 () Bool)

(assert (=> b!155819 (= e!101844 tp_is_empty!3111)))

(declare-fun b!155820 () Bool)

(declare-fun res!73622 () Bool)

(assert (=> b!155820 (=> (not res!73622) (not e!101845))))

(assert (=> b!155820 (= res!73622 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!5309 () Bool)

(assert (=> mapIsEmpty!5309 mapRes!5309))

(assert (= (and start!15654 res!73623) b!155820))

(assert (= (and b!155820 res!73622) b!155818))

(assert (= (and b!155818 (not res!73624)) b!155816))

(assert (= (and b!155815 condMapEmpty!5309) mapIsEmpty!5309))

(assert (= (and b!155815 (not condMapEmpty!5309)) mapNonEmpty!5309))

(get-info :version)

(assert (= (and mapNonEmpty!5309 ((_ is ValueCellFull!1212) mapValue!5309)) b!155814))

(assert (= (and b!155815 ((_ is ValueCellFull!1212) mapDefault!5309)) b!155819))

(assert (= b!155817 b!155815))

(assert (= start!15654 b!155817))

(declare-fun m!189573 () Bool)

(assert (=> b!155816 m!189573))

(assert (=> b!155816 m!189573))

(declare-fun m!189575 () Bool)

(assert (=> b!155816 m!189575))

(declare-fun m!189577 () Bool)

(assert (=> mapNonEmpty!5309 m!189577))

(declare-fun m!189579 () Bool)

(assert (=> start!15654 m!189579))

(declare-fun m!189581 () Bool)

(assert (=> b!155818 m!189581))

(declare-fun m!189583 () Bool)

(assert (=> b!155818 m!189583))

(declare-fun m!189585 () Bool)

(assert (=> b!155818 m!189585))

(declare-fun m!189587 () Bool)

(assert (=> b!155818 m!189587))

(assert (=> b!155818 m!189583))

(declare-fun m!189589 () Bool)

(assert (=> b!155818 m!189589))

(declare-fun m!189591 () Bool)

(assert (=> b!155817 m!189591))

(declare-fun m!189593 () Bool)

(assert (=> b!155817 m!189593))

(check-sat (not b!155817) tp_is_empty!3111 (not mapNonEmpty!5309) (not b!155816) (not start!15654) b_and!9741 (not b_next!3309) (not b!155818))
(check-sat b_and!9741 (not b_next!3309))
