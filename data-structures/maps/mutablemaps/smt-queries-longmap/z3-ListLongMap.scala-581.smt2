; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15642 () Bool)

(assert start!15642)

(declare-fun b!155693 () Bool)

(declare-fun b_free!3297 () Bool)

(declare-fun b_next!3297 () Bool)

(assert (=> b!155693 (= b_free!3297 (not b_next!3297))))

(declare-fun tp!12415 () Bool)

(declare-fun b_and!9729 () Bool)

(assert (=> b!155693 (= tp!12415 b_and!9729)))

(declare-fun mapIsEmpty!5291 () Bool)

(declare-fun mapRes!5291 () Bool)

(assert (=> mapIsEmpty!5291 mapRes!5291))

(declare-fun b!155689 () Bool)

(declare-fun res!73570 () Bool)

(declare-fun e!101730 () Bool)

(assert (=> b!155689 (=> (not res!73570) (not e!101730))))

(declare-datatypes ((V!3779 0))(
  ( (V!3780 (val!1594 Int)) )
))
(declare-datatypes ((ValueCell!1206 0))(
  ( (ValueCellFull!1206 (v!3455 V!3779)) (EmptyCell!1206) )
))
(declare-datatypes ((array!5250 0))(
  ( (array!5251 (arr!2482 (Array (_ BitVec 32) (_ BitVec 64))) (size!2760 (_ BitVec 32))) )
))
(declare-datatypes ((array!5252 0))(
  ( (array!5253 (arr!2483 (Array (_ BitVec 32) ValueCell!1206)) (size!2761 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1320 0))(
  ( (LongMapFixedSize!1321 (defaultEntry!3102 Int) (mask!7533 (_ BitVec 32)) (extraKeys!2843 (_ BitVec 32)) (zeroValue!2945 V!3779) (minValue!2945 V!3779) (_size!709 (_ BitVec 32)) (_keys!4877 array!5250) (_values!3085 array!5252) (_vacant!709 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1320)

(assert (=> b!155689 (= res!73570 (and (= (size!2761 (_values!3085 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7533 thiss!1248))) (= (size!2760 (_keys!4877 thiss!1248)) (size!2761 (_values!3085 thiss!1248))) (bvsge (mask!7533 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2843 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2843 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2843 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2843 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2843 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2843 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2843 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!5291 () Bool)

(declare-fun tp!12416 () Bool)

(declare-fun e!101728 () Bool)

(assert (=> mapNonEmpty!5291 (= mapRes!5291 (and tp!12416 e!101728))))

(declare-fun mapRest!5291 () (Array (_ BitVec 32) ValueCell!1206))

(declare-fun mapValue!5291 () ValueCell!1206)

(declare-fun mapKey!5291 () (_ BitVec 32))

(assert (=> mapNonEmpty!5291 (= (arr!2483 (_values!3085 thiss!1248)) (store mapRest!5291 mapKey!5291 mapValue!5291))))

(declare-fun b!155690 () Bool)

(declare-fun res!73571 () Bool)

(assert (=> b!155690 (=> (not res!73571) (not e!101730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155690 (= res!73571 (validMask!0 (mask!7533 thiss!1248)))))

(declare-fun res!73573 () Bool)

(assert (=> start!15642 (=> (not res!73573) (not e!101730))))

(declare-fun valid!637 (LongMapFixedSize!1320) Bool)

(assert (=> start!15642 (= res!73573 (valid!637 thiss!1248))))

(assert (=> start!15642 e!101730))

(declare-fun e!101727 () Bool)

(assert (=> start!15642 e!101727))

(assert (=> start!15642 true))

(declare-fun b!155691 () Bool)

(declare-fun res!73569 () Bool)

(assert (=> b!155691 (=> (not res!73569) (not e!101730))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155691 (= res!73569 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155692 () Bool)

(assert (=> b!155692 (= e!101730 false)))

(declare-fun lt!81419 () Bool)

(declare-datatypes ((List!1847 0))(
  ( (Nil!1844) (Cons!1843 (h!2452 (_ BitVec 64)) (t!6657 List!1847)) )
))
(declare-fun arrayNoDuplicates!0 (array!5250 (_ BitVec 32) List!1847) Bool)

(assert (=> b!155692 (= lt!81419 (arrayNoDuplicates!0 (_keys!4877 thiss!1248) #b00000000000000000000000000000000 Nil!1844))))

(declare-fun e!101729 () Bool)

(declare-fun tp_is_empty!3099 () Bool)

(declare-fun array_inv!1555 (array!5250) Bool)

(declare-fun array_inv!1556 (array!5252) Bool)

(assert (=> b!155693 (= e!101727 (and tp!12415 tp_is_empty!3099 (array_inv!1555 (_keys!4877 thiss!1248)) (array_inv!1556 (_values!3085 thiss!1248)) e!101729))))

(declare-fun b!155694 () Bool)

(declare-fun e!101732 () Bool)

(assert (=> b!155694 (= e!101732 tp_is_empty!3099)))

(declare-fun b!155695 () Bool)

(declare-fun res!73572 () Bool)

(assert (=> b!155695 (=> (not res!73572) (not e!101730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5250 (_ BitVec 32)) Bool)

(assert (=> b!155695 (= res!73572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4877 thiss!1248) (mask!7533 thiss!1248)))))

(declare-fun b!155696 () Bool)

(assert (=> b!155696 (= e!101728 tp_is_empty!3099)))

(declare-fun b!155697 () Bool)

(assert (=> b!155697 (= e!101729 (and e!101732 mapRes!5291))))

(declare-fun condMapEmpty!5291 () Bool)

(declare-fun mapDefault!5291 () ValueCell!1206)

(assert (=> b!155697 (= condMapEmpty!5291 (= (arr!2483 (_values!3085 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1206)) mapDefault!5291)))))

(assert (= (and start!15642 res!73573) b!155691))

(assert (= (and b!155691 res!73569) b!155690))

(assert (= (and b!155690 res!73571) b!155689))

(assert (= (and b!155689 res!73570) b!155695))

(assert (= (and b!155695 res!73572) b!155692))

(assert (= (and b!155697 condMapEmpty!5291) mapIsEmpty!5291))

(assert (= (and b!155697 (not condMapEmpty!5291)) mapNonEmpty!5291))

(get-info :version)

(assert (= (and mapNonEmpty!5291 ((_ is ValueCellFull!1206) mapValue!5291)) b!155696))

(assert (= (and b!155697 ((_ is ValueCellFull!1206) mapDefault!5291)) b!155694))

(assert (= b!155693 b!155697))

(assert (= start!15642 b!155693))

(declare-fun m!189469 () Bool)

(assert (=> b!155693 m!189469))

(declare-fun m!189471 () Bool)

(assert (=> b!155693 m!189471))

(declare-fun m!189473 () Bool)

(assert (=> b!155690 m!189473))

(declare-fun m!189475 () Bool)

(assert (=> start!15642 m!189475))

(declare-fun m!189477 () Bool)

(assert (=> b!155695 m!189477))

(declare-fun m!189479 () Bool)

(assert (=> b!155692 m!189479))

(declare-fun m!189481 () Bool)

(assert (=> mapNonEmpty!5291 m!189481))

(check-sat (not b!155693) (not mapNonEmpty!5291) (not b!155690) b_and!9729 (not b!155692) (not start!15642) tp_is_empty!3099 (not b_next!3297) (not b!155695))
(check-sat b_and!9729 (not b_next!3297))
