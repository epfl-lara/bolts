; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17182 () Bool)

(assert start!17182)

(declare-fun b!172418 () Bool)

(declare-fun b_free!4257 () Bool)

(declare-fun b_next!4257 () Bool)

(assert (=> b!172418 (= b_free!4257 (not b_next!4257))))

(declare-fun tp!15417 () Bool)

(declare-fun b_and!10715 () Bool)

(assert (=> b!172418 (= tp!15417 b_and!10715)))

(declare-fun b!172416 () Bool)

(declare-fun e!113821 () Bool)

(declare-datatypes ((V!5019 0))(
  ( (V!5020 (val!2059 Int)) )
))
(declare-datatypes ((ValueCell!1671 0))(
  ( (ValueCellFull!1671 (v!3923 V!5019)) (EmptyCell!1671) )
))
(declare-datatypes ((array!7178 0))(
  ( (array!7179 (arr!3412 (Array (_ BitVec 32) (_ BitVec 64))) (size!3709 (_ BitVec 32))) )
))
(declare-datatypes ((array!7180 0))(
  ( (array!7181 (arr!3413 (Array (_ BitVec 32) ValueCell!1671)) (size!3710 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2250 0))(
  ( (LongMapFixedSize!2251 (defaultEntry!3571 Int) (mask!8416 (_ BitVec 32)) (extraKeys!3310 (_ BitVec 32)) (zeroValue!3412 V!5019) (minValue!3414 V!5019) (_size!1174 (_ BitVec 32)) (_keys!5408 array!7178) (_values!3554 array!7180) (_vacant!1174 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2250)

(assert (=> b!172416 (= e!113821 (and (= (size!3710 (_values!3554 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8416 thiss!1248))) (= (size!3709 (_keys!5408 thiss!1248)) (size!3710 (_values!3554 thiss!1248))) (bvslt (mask!8416 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!6853 () Bool)

(declare-fun mapRes!6853 () Bool)

(declare-fun tp!15418 () Bool)

(declare-fun e!113826 () Bool)

(assert (=> mapNonEmpty!6853 (= mapRes!6853 (and tp!15418 e!113826))))

(declare-fun mapValue!6853 () ValueCell!1671)

(declare-fun mapKey!6853 () (_ BitVec 32))

(declare-fun mapRest!6853 () (Array (_ BitVec 32) ValueCell!1671))

(assert (=> mapNonEmpty!6853 (= (arr!3413 (_values!3554 thiss!1248)) (store mapRest!6853 mapKey!6853 mapValue!6853))))

(declare-fun b!172417 () Bool)

(declare-fun res!81884 () Bool)

(assert (=> b!172417 (=> (not res!81884) (not e!113821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172417 (= res!81884 (validMask!0 (mask!8416 thiss!1248)))))

(declare-fun tp_is_empty!4029 () Bool)

(declare-fun e!113823 () Bool)

(declare-fun e!113822 () Bool)

(declare-fun array_inv!2175 (array!7178) Bool)

(declare-fun array_inv!2176 (array!7180) Bool)

(assert (=> b!172418 (= e!113822 (and tp!15417 tp_is_empty!4029 (array_inv!2175 (_keys!5408 thiss!1248)) (array_inv!2176 (_values!3554 thiss!1248)) e!113823))))

(declare-fun b!172419 () Bool)

(declare-fun e!113825 () Bool)

(assert (=> b!172419 (= e!113823 (and e!113825 mapRes!6853))))

(declare-fun condMapEmpty!6853 () Bool)

(declare-fun mapDefault!6853 () ValueCell!1671)

(assert (=> b!172419 (= condMapEmpty!6853 (= (arr!3413 (_values!3554 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1671)) mapDefault!6853)))))

(declare-fun b!172420 () Bool)

(assert (=> b!172420 (= e!113825 tp_is_empty!4029)))

(declare-fun mapIsEmpty!6853 () Bool)

(assert (=> mapIsEmpty!6853 mapRes!6853))

(declare-fun res!81885 () Bool)

(assert (=> start!17182 (=> (not res!81885) (not e!113821))))

(declare-fun valid!947 (LongMapFixedSize!2250) Bool)

(assert (=> start!17182 (= res!81885 (valid!947 thiss!1248))))

(assert (=> start!17182 e!113821))

(assert (=> start!17182 e!113822))

(assert (=> start!17182 true))

(declare-fun b!172421 () Bool)

(declare-fun res!81883 () Bool)

(assert (=> b!172421 (=> (not res!81883) (not e!113821))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172421 (= res!81883 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172422 () Bool)

(assert (=> b!172422 (= e!113826 tp_is_empty!4029)))

(assert (= (and start!17182 res!81885) b!172421))

(assert (= (and b!172421 res!81883) b!172417))

(assert (= (and b!172417 res!81884) b!172416))

(assert (= (and b!172419 condMapEmpty!6853) mapIsEmpty!6853))

(assert (= (and b!172419 (not condMapEmpty!6853)) mapNonEmpty!6853))

(get-info :version)

(assert (= (and mapNonEmpty!6853 ((_ is ValueCellFull!1671) mapValue!6853)) b!172422))

(assert (= (and b!172419 ((_ is ValueCellFull!1671) mapDefault!6853)) b!172420))

(assert (= b!172418 b!172419))

(assert (= start!17182 b!172418))

(declare-fun m!201217 () Bool)

(assert (=> mapNonEmpty!6853 m!201217))

(declare-fun m!201219 () Bool)

(assert (=> b!172417 m!201219))

(declare-fun m!201221 () Bool)

(assert (=> b!172418 m!201221))

(declare-fun m!201223 () Bool)

(assert (=> b!172418 m!201223))

(declare-fun m!201225 () Bool)

(assert (=> start!17182 m!201225))

(check-sat (not b_next!4257) (not mapNonEmpty!6853) (not b!172417) (not b!172418) tp_is_empty!4029 b_and!10715 (not start!17182))
(check-sat b_and!10715 (not b_next!4257))
(get-model)

(declare-fun d!52425 () Bool)

(assert (=> d!52425 (= (array_inv!2175 (_keys!5408 thiss!1248)) (bvsge (size!3709 (_keys!5408 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172418 d!52425))

(declare-fun d!52427 () Bool)

(assert (=> d!52427 (= (array_inv!2176 (_values!3554 thiss!1248)) (bvsge (size!3710 (_values!3554 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172418 d!52427))

(declare-fun d!52429 () Bool)

(assert (=> d!52429 (= (validMask!0 (mask!8416 thiss!1248)) (and (or (= (mask!8416 thiss!1248) #b00000000000000000000000000000111) (= (mask!8416 thiss!1248) #b00000000000000000000000000001111) (= (mask!8416 thiss!1248) #b00000000000000000000000000011111) (= (mask!8416 thiss!1248) #b00000000000000000000000000111111) (= (mask!8416 thiss!1248) #b00000000000000000000000001111111) (= (mask!8416 thiss!1248) #b00000000000000000000000011111111) (= (mask!8416 thiss!1248) #b00000000000000000000000111111111) (= (mask!8416 thiss!1248) #b00000000000000000000001111111111) (= (mask!8416 thiss!1248) #b00000000000000000000011111111111) (= (mask!8416 thiss!1248) #b00000000000000000000111111111111) (= (mask!8416 thiss!1248) #b00000000000000000001111111111111) (= (mask!8416 thiss!1248) #b00000000000000000011111111111111) (= (mask!8416 thiss!1248) #b00000000000000000111111111111111) (= (mask!8416 thiss!1248) #b00000000000000001111111111111111) (= (mask!8416 thiss!1248) #b00000000000000011111111111111111) (= (mask!8416 thiss!1248) #b00000000000000111111111111111111) (= (mask!8416 thiss!1248) #b00000000000001111111111111111111) (= (mask!8416 thiss!1248) #b00000000000011111111111111111111) (= (mask!8416 thiss!1248) #b00000000000111111111111111111111) (= (mask!8416 thiss!1248) #b00000000001111111111111111111111) (= (mask!8416 thiss!1248) #b00000000011111111111111111111111) (= (mask!8416 thiss!1248) #b00000000111111111111111111111111) (= (mask!8416 thiss!1248) #b00000001111111111111111111111111) (= (mask!8416 thiss!1248) #b00000011111111111111111111111111) (= (mask!8416 thiss!1248) #b00000111111111111111111111111111) (= (mask!8416 thiss!1248) #b00001111111111111111111111111111) (= (mask!8416 thiss!1248) #b00011111111111111111111111111111) (= (mask!8416 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8416 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!172417 d!52429))

(declare-fun d!52431 () Bool)

(declare-fun res!81901 () Bool)

(declare-fun e!113847 () Bool)

(assert (=> d!52431 (=> (not res!81901) (not e!113847))))

(declare-fun simpleValid!138 (LongMapFixedSize!2250) Bool)

(assert (=> d!52431 (= res!81901 (simpleValid!138 thiss!1248))))

(assert (=> d!52431 (= (valid!947 thiss!1248) e!113847)))

(declare-fun b!172450 () Bool)

(declare-fun res!81902 () Bool)

(assert (=> b!172450 (=> (not res!81902) (not e!113847))))

(declare-fun arrayCountValidKeys!0 (array!7178 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!172450 (= res!81902 (= (arrayCountValidKeys!0 (_keys!5408 thiss!1248) #b00000000000000000000000000000000 (size!3709 (_keys!5408 thiss!1248))) (_size!1174 thiss!1248)))))

(declare-fun b!172451 () Bool)

(declare-fun res!81903 () Bool)

(assert (=> b!172451 (=> (not res!81903) (not e!113847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7178 (_ BitVec 32)) Bool)

(assert (=> b!172451 (= res!81903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5408 thiss!1248) (mask!8416 thiss!1248)))))

(declare-fun b!172452 () Bool)

(declare-datatypes ((List!2219 0))(
  ( (Nil!2216) (Cons!2215 (h!2832 (_ BitVec 64)) (t!7034 List!2219)) )
))
(declare-fun arrayNoDuplicates!0 (array!7178 (_ BitVec 32) List!2219) Bool)

(assert (=> b!172452 (= e!113847 (arrayNoDuplicates!0 (_keys!5408 thiss!1248) #b00000000000000000000000000000000 Nil!2216))))

(assert (= (and d!52431 res!81901) b!172450))

(assert (= (and b!172450 res!81902) b!172451))

(assert (= (and b!172451 res!81903) b!172452))

(declare-fun m!201237 () Bool)

(assert (=> d!52431 m!201237))

(declare-fun m!201239 () Bool)

(assert (=> b!172450 m!201239))

(declare-fun m!201241 () Bool)

(assert (=> b!172451 m!201241))

(declare-fun m!201243 () Bool)

(assert (=> b!172452 m!201243))

(assert (=> start!17182 d!52431))

(declare-fun condMapEmpty!6859 () Bool)

(declare-fun mapDefault!6859 () ValueCell!1671)

(assert (=> mapNonEmpty!6853 (= condMapEmpty!6859 (= mapRest!6853 ((as const (Array (_ BitVec 32) ValueCell!1671)) mapDefault!6859)))))

(declare-fun e!113853 () Bool)

(declare-fun mapRes!6859 () Bool)

(assert (=> mapNonEmpty!6853 (= tp!15418 (and e!113853 mapRes!6859))))

(declare-fun mapIsEmpty!6859 () Bool)

(assert (=> mapIsEmpty!6859 mapRes!6859))

(declare-fun mapNonEmpty!6859 () Bool)

(declare-fun tp!15427 () Bool)

(declare-fun e!113852 () Bool)

(assert (=> mapNonEmpty!6859 (= mapRes!6859 (and tp!15427 e!113852))))

(declare-fun mapKey!6859 () (_ BitVec 32))

(declare-fun mapRest!6859 () (Array (_ BitVec 32) ValueCell!1671))

(declare-fun mapValue!6859 () ValueCell!1671)

(assert (=> mapNonEmpty!6859 (= mapRest!6853 (store mapRest!6859 mapKey!6859 mapValue!6859))))

(declare-fun b!172460 () Bool)

(assert (=> b!172460 (= e!113853 tp_is_empty!4029)))

(declare-fun b!172459 () Bool)

(assert (=> b!172459 (= e!113852 tp_is_empty!4029)))

(assert (= (and mapNonEmpty!6853 condMapEmpty!6859) mapIsEmpty!6859))

(assert (= (and mapNonEmpty!6853 (not condMapEmpty!6859)) mapNonEmpty!6859))

(assert (= (and mapNonEmpty!6859 ((_ is ValueCellFull!1671) mapValue!6859)) b!172459))

(assert (= (and mapNonEmpty!6853 ((_ is ValueCellFull!1671) mapDefault!6859)) b!172460))

(declare-fun m!201245 () Bool)

(assert (=> mapNonEmpty!6859 m!201245))

(check-sat (not mapNonEmpty!6859) tp_is_empty!4029 (not d!52431) (not b!172451) (not b_next!4257) (not b!172452) (not b!172450) b_and!10715)
(check-sat b_and!10715 (not b_next!4257))
