; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16904 () Bool)

(assert start!16904)

(declare-fun b!170012 () Bool)

(declare-fun b_free!4179 () Bool)

(declare-fun b_next!4179 () Bool)

(assert (=> b!170012 (= b_free!4179 (not b_next!4179))))

(declare-fun tp!15150 () Bool)

(declare-fun b_and!10611 () Bool)

(assert (=> b!170012 (= tp!15150 b_and!10611)))

(declare-fun b!170011 () Bool)

(declare-fun e!112162 () Bool)

(declare-fun tp_is_empty!3951 () Bool)

(assert (=> b!170011 (= e!112162 tp_is_empty!3951)))

(declare-fun res!80839 () Bool)

(declare-fun e!112158 () Bool)

(assert (=> start!16904 (=> (not res!80839) (not e!112158))))

(declare-datatypes ((V!4915 0))(
  ( (V!4916 (val!2020 Int)) )
))
(declare-datatypes ((ValueCell!1632 0))(
  ( (ValueCellFull!1632 (v!3881 V!4915)) (EmptyCell!1632) )
))
(declare-datatypes ((array!7004 0))(
  ( (array!7005 (arr!3334 (Array (_ BitVec 32) (_ BitVec 64))) (size!3625 (_ BitVec 32))) )
))
(declare-datatypes ((array!7006 0))(
  ( (array!7007 (arr!3335 (Array (_ BitVec 32) ValueCell!1632)) (size!3626 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2172 0))(
  ( (LongMapFixedSize!2173 (defaultEntry!3528 Int) (mask!8329 (_ BitVec 32)) (extraKeys!3269 (_ BitVec 32)) (zeroValue!3371 V!4915) (minValue!3371 V!4915) (_size!1135 (_ BitVec 32)) (_keys!5356 array!7004) (_values!3511 array!7006) (_vacant!1135 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2172)

(declare-fun valid!925 (LongMapFixedSize!2172) Bool)

(assert (=> start!16904 (= res!80839 (valid!925 thiss!1248))))

(assert (=> start!16904 e!112158))

(declare-fun e!112159 () Bool)

(assert (=> start!16904 e!112159))

(assert (=> start!16904 true))

(declare-fun e!112157 () Bool)

(declare-fun array_inv!2127 (array!7004) Bool)

(declare-fun array_inv!2128 (array!7006) Bool)

(assert (=> b!170012 (= e!112159 (and tp!15150 tp_is_empty!3951 (array_inv!2127 (_keys!5356 thiss!1248)) (array_inv!2128 (_values!3511 thiss!1248)) e!112157))))

(declare-fun mapNonEmpty!6702 () Bool)

(declare-fun mapRes!6702 () Bool)

(declare-fun tp!15149 () Bool)

(declare-fun e!112161 () Bool)

(assert (=> mapNonEmpty!6702 (= mapRes!6702 (and tp!15149 e!112161))))

(declare-fun mapValue!6702 () ValueCell!1632)

(declare-fun mapRest!6702 () (Array (_ BitVec 32) ValueCell!1632))

(declare-fun mapKey!6702 () (_ BitVec 32))

(assert (=> mapNonEmpty!6702 (= (arr!3335 (_values!3511 thiss!1248)) (store mapRest!6702 mapKey!6702 mapValue!6702))))

(declare-fun b!170013 () Bool)

(declare-fun res!80841 () Bool)

(assert (=> b!170013 (=> (not res!80841) (not e!112158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170013 (= res!80841 (validMask!0 (mask!8329 thiss!1248)))))

(declare-fun b!170014 () Bool)

(assert (=> b!170014 (= e!112157 (and e!112162 mapRes!6702))))

(declare-fun condMapEmpty!6702 () Bool)

(declare-fun mapDefault!6702 () ValueCell!1632)

(assert (=> b!170014 (= condMapEmpty!6702 (= (arr!3335 (_values!3511 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1632)) mapDefault!6702)))))

(declare-fun mapIsEmpty!6702 () Bool)

(assert (=> mapIsEmpty!6702 mapRes!6702))

(declare-fun b!170015 () Bool)

(declare-fun res!80840 () Bool)

(assert (=> b!170015 (=> (not res!80840) (not e!112158))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170015 (= res!80840 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!170016 () Bool)

(assert (=> b!170016 (= e!112161 tp_is_empty!3951)))

(declare-fun b!170017 () Bool)

(assert (=> b!170017 (= e!112158 (and (= (size!3626 (_values!3511 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8329 thiss!1248))) (= (size!3625 (_keys!5356 thiss!1248)) (size!3626 (_values!3511 thiss!1248))) (bvslt (mask!8329 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and start!16904 res!80839) b!170015))

(assert (= (and b!170015 res!80840) b!170013))

(assert (= (and b!170013 res!80841) b!170017))

(assert (= (and b!170014 condMapEmpty!6702) mapIsEmpty!6702))

(assert (= (and b!170014 (not condMapEmpty!6702)) mapNonEmpty!6702))

(get-info :version)

(assert (= (and mapNonEmpty!6702 ((_ is ValueCellFull!1632) mapValue!6702)) b!170016))

(assert (= (and b!170014 ((_ is ValueCellFull!1632) mapDefault!6702)) b!170011))

(assert (= b!170012 b!170014))

(assert (= start!16904 b!170012))

(declare-fun m!198747 () Bool)

(assert (=> start!16904 m!198747))

(declare-fun m!198749 () Bool)

(assert (=> b!170012 m!198749))

(declare-fun m!198751 () Bool)

(assert (=> b!170012 m!198751))

(declare-fun m!198753 () Bool)

(assert (=> mapNonEmpty!6702 m!198753))

(declare-fun m!198755 () Bool)

(assert (=> b!170013 m!198755))

(check-sat b_and!10611 (not mapNonEmpty!6702) tp_is_empty!3951 (not b!170012) (not b_next!4179) (not b!170013) (not start!16904))
(check-sat b_and!10611 (not b_next!4179))
(get-model)

(declare-fun d!51603 () Bool)

(assert (=> d!51603 (= (validMask!0 (mask!8329 thiss!1248)) (and (or (= (mask!8329 thiss!1248) #b00000000000000000000000000000111) (= (mask!8329 thiss!1248) #b00000000000000000000000000001111) (= (mask!8329 thiss!1248) #b00000000000000000000000000011111) (= (mask!8329 thiss!1248) #b00000000000000000000000000111111) (= (mask!8329 thiss!1248) #b00000000000000000000000001111111) (= (mask!8329 thiss!1248) #b00000000000000000000000011111111) (= (mask!8329 thiss!1248) #b00000000000000000000000111111111) (= (mask!8329 thiss!1248) #b00000000000000000000001111111111) (= (mask!8329 thiss!1248) #b00000000000000000000011111111111) (= (mask!8329 thiss!1248) #b00000000000000000000111111111111) (= (mask!8329 thiss!1248) #b00000000000000000001111111111111) (= (mask!8329 thiss!1248) #b00000000000000000011111111111111) (= (mask!8329 thiss!1248) #b00000000000000000111111111111111) (= (mask!8329 thiss!1248) #b00000000000000001111111111111111) (= (mask!8329 thiss!1248) #b00000000000000011111111111111111) (= (mask!8329 thiss!1248) #b00000000000000111111111111111111) (= (mask!8329 thiss!1248) #b00000000000001111111111111111111) (= (mask!8329 thiss!1248) #b00000000000011111111111111111111) (= (mask!8329 thiss!1248) #b00000000000111111111111111111111) (= (mask!8329 thiss!1248) #b00000000001111111111111111111111) (= (mask!8329 thiss!1248) #b00000000011111111111111111111111) (= (mask!8329 thiss!1248) #b00000000111111111111111111111111) (= (mask!8329 thiss!1248) #b00000001111111111111111111111111) (= (mask!8329 thiss!1248) #b00000011111111111111111111111111) (= (mask!8329 thiss!1248) #b00000111111111111111111111111111) (= (mask!8329 thiss!1248) #b00001111111111111111111111111111) (= (mask!8329 thiss!1248) #b00011111111111111111111111111111) (= (mask!8329 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8329 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!170013 d!51603))

(declare-fun d!51605 () Bool)

(declare-fun res!80857 () Bool)

(declare-fun e!112183 () Bool)

(assert (=> d!51605 (=> (not res!80857) (not e!112183))))

(declare-fun simpleValid!129 (LongMapFixedSize!2172) Bool)

(assert (=> d!51605 (= res!80857 (simpleValid!129 thiss!1248))))

(assert (=> d!51605 (= (valid!925 thiss!1248) e!112183)))

(declare-fun b!170045 () Bool)

(declare-fun res!80858 () Bool)

(assert (=> b!170045 (=> (not res!80858) (not e!112183))))

(declare-fun arrayCountValidKeys!0 (array!7004 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!170045 (= res!80858 (= (arrayCountValidKeys!0 (_keys!5356 thiss!1248) #b00000000000000000000000000000000 (size!3625 (_keys!5356 thiss!1248))) (_size!1135 thiss!1248)))))

(declare-fun b!170046 () Bool)

(declare-fun res!80859 () Bool)

(assert (=> b!170046 (=> (not res!80859) (not e!112183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7004 (_ BitVec 32)) Bool)

(assert (=> b!170046 (= res!80859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5356 thiss!1248) (mask!8329 thiss!1248)))))

(declare-fun b!170047 () Bool)

(declare-datatypes ((List!2206 0))(
  ( (Nil!2203) (Cons!2202 (h!2819 (_ BitVec 64)) (t!7016 List!2206)) )
))
(declare-fun arrayNoDuplicates!0 (array!7004 (_ BitVec 32) List!2206) Bool)

(assert (=> b!170047 (= e!112183 (arrayNoDuplicates!0 (_keys!5356 thiss!1248) #b00000000000000000000000000000000 Nil!2203))))

(assert (= (and d!51605 res!80857) b!170045))

(assert (= (and b!170045 res!80858) b!170046))

(assert (= (and b!170046 res!80859) b!170047))

(declare-fun m!198767 () Bool)

(assert (=> d!51605 m!198767))

(declare-fun m!198769 () Bool)

(assert (=> b!170045 m!198769))

(declare-fun m!198771 () Bool)

(assert (=> b!170046 m!198771))

(declare-fun m!198773 () Bool)

(assert (=> b!170047 m!198773))

(assert (=> start!16904 d!51605))

(declare-fun d!51607 () Bool)

(assert (=> d!51607 (= (array_inv!2127 (_keys!5356 thiss!1248)) (bvsge (size!3625 (_keys!5356 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170012 d!51607))

(declare-fun d!51609 () Bool)

(assert (=> d!51609 (= (array_inv!2128 (_values!3511 thiss!1248)) (bvsge (size!3626 (_values!3511 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170012 d!51609))

(declare-fun mapIsEmpty!6708 () Bool)

(declare-fun mapRes!6708 () Bool)

(assert (=> mapIsEmpty!6708 mapRes!6708))

(declare-fun condMapEmpty!6708 () Bool)

(declare-fun mapDefault!6708 () ValueCell!1632)

(assert (=> mapNonEmpty!6702 (= condMapEmpty!6708 (= mapRest!6702 ((as const (Array (_ BitVec 32) ValueCell!1632)) mapDefault!6708)))))

(declare-fun e!112189 () Bool)

(assert (=> mapNonEmpty!6702 (= tp!15149 (and e!112189 mapRes!6708))))

(declare-fun mapNonEmpty!6708 () Bool)

(declare-fun tp!15159 () Bool)

(declare-fun e!112188 () Bool)

(assert (=> mapNonEmpty!6708 (= mapRes!6708 (and tp!15159 e!112188))))

(declare-fun mapRest!6708 () (Array (_ BitVec 32) ValueCell!1632))

(declare-fun mapKey!6708 () (_ BitVec 32))

(declare-fun mapValue!6708 () ValueCell!1632)

(assert (=> mapNonEmpty!6708 (= mapRest!6702 (store mapRest!6708 mapKey!6708 mapValue!6708))))

(declare-fun b!170055 () Bool)

(assert (=> b!170055 (= e!112189 tp_is_empty!3951)))

(declare-fun b!170054 () Bool)

(assert (=> b!170054 (= e!112188 tp_is_empty!3951)))

(assert (= (and mapNonEmpty!6702 condMapEmpty!6708) mapIsEmpty!6708))

(assert (= (and mapNonEmpty!6702 (not condMapEmpty!6708)) mapNonEmpty!6708))

(assert (= (and mapNonEmpty!6708 ((_ is ValueCellFull!1632) mapValue!6708)) b!170054))

(assert (= (and mapNonEmpty!6702 ((_ is ValueCellFull!1632) mapDefault!6708)) b!170055))

(declare-fun m!198775 () Bool)

(assert (=> mapNonEmpty!6708 m!198775))

(check-sat (not d!51605) (not mapNonEmpty!6708) b_and!10611 tp_is_empty!3951 (not b!170047) (not b!170046) (not b!170045) (not b_next!4179))
(check-sat b_and!10611 (not b_next!4179))
