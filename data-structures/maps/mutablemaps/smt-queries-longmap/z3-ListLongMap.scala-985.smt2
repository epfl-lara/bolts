; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21278 () Bool)

(assert start!21278)

(declare-fun b!214147 () Bool)

(declare-fun b_free!5661 () Bool)

(declare-fun b_next!5661 () Bool)

(assert (=> b!214147 (= b_free!5661 (not b_next!5661))))

(declare-fun tp!20063 () Bool)

(declare-fun b_and!12569 () Bool)

(assert (=> b!214147 (= tp!20063 b_and!12569)))

(declare-fun b!214144 () Bool)

(declare-fun e!139265 () Bool)

(declare-fun tp_is_empty!5523 () Bool)

(assert (=> b!214144 (= e!139265 tp_is_empty!5523)))

(declare-fun b!214145 () Bool)

(declare-fun e!139269 () Bool)

(declare-datatypes ((V!7011 0))(
  ( (V!7012 (val!2806 Int)) )
))
(declare-datatypes ((ValueCell!2418 0))(
  ( (ValueCellFull!2418 (v!4820 V!7011)) (EmptyCell!2418) )
))
(declare-datatypes ((array!10252 0))(
  ( (array!10253 (arr!4863 (Array (_ BitVec 32) ValueCell!2418)) (size!5189 (_ BitVec 32))) )
))
(declare-datatypes ((array!10254 0))(
  ( (array!10255 (arr!4864 (Array (_ BitVec 32) (_ BitVec 64))) (size!5190 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2736 0))(
  ( (LongMapFixedSize!2737 (defaultEntry!4018 Int) (mask!9670 (_ BitVec 32)) (extraKeys!3755 (_ BitVec 32)) (zeroValue!3859 V!7011) (minValue!3859 V!7011) (_size!1417 (_ BitVec 32)) (_keys!6035 array!10254) (_values!4001 array!10252) (_vacant!1417 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2736)

(assert (=> b!214145 (= e!139269 (bvslt (mask!9670 thiss!1504) #b00000000000000000000000000000000))))

(declare-fun res!104852 () Bool)

(assert (=> start!21278 (=> (not res!104852) (not e!139269))))

(declare-fun valid!1113 (LongMapFixedSize!2736) Bool)

(assert (=> start!21278 (= res!104852 (valid!1113 thiss!1504))))

(assert (=> start!21278 e!139269))

(declare-fun e!139268 () Bool)

(assert (=> start!21278 e!139268))

(assert (=> start!21278 true))

(declare-fun b!214146 () Bool)

(declare-fun e!139267 () Bool)

(declare-fun e!139264 () Bool)

(declare-fun mapRes!9393 () Bool)

(assert (=> b!214146 (= e!139267 (and e!139264 mapRes!9393))))

(declare-fun condMapEmpty!9393 () Bool)

(declare-fun mapDefault!9393 () ValueCell!2418)

(assert (=> b!214146 (= condMapEmpty!9393 (= (arr!4863 (_values!4001 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2418)) mapDefault!9393)))))

(declare-fun array_inv!3207 (array!10254) Bool)

(declare-fun array_inv!3208 (array!10252) Bool)

(assert (=> b!214147 (= e!139268 (and tp!20063 tp_is_empty!5523 (array_inv!3207 (_keys!6035 thiss!1504)) (array_inv!3208 (_values!4001 thiss!1504)) e!139267))))

(declare-fun mapNonEmpty!9393 () Bool)

(declare-fun tp!20064 () Bool)

(assert (=> mapNonEmpty!9393 (= mapRes!9393 (and tp!20064 e!139265))))

(declare-fun mapRest!9393 () (Array (_ BitVec 32) ValueCell!2418))

(declare-fun mapKey!9393 () (_ BitVec 32))

(declare-fun mapValue!9393 () ValueCell!2418)

(assert (=> mapNonEmpty!9393 (= (arr!4863 (_values!4001 thiss!1504)) (store mapRest!9393 mapKey!9393 mapValue!9393))))

(declare-fun mapIsEmpty!9393 () Bool)

(assert (=> mapIsEmpty!9393 mapRes!9393))

(declare-fun b!214148 () Bool)

(declare-fun res!104853 () Bool)

(assert (=> b!214148 (=> (not res!104853) (not e!139269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214148 (= res!104853 (validMask!0 (mask!9670 thiss!1504)))))

(declare-fun b!214149 () Bool)

(declare-fun res!104854 () Bool)

(assert (=> b!214149 (=> (not res!104854) (not e!139269))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!214149 (= res!104854 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!214150 () Bool)

(assert (=> b!214150 (= e!139264 tp_is_empty!5523)))

(assert (= (and start!21278 res!104852) b!214149))

(assert (= (and b!214149 res!104854) b!214148))

(assert (= (and b!214148 res!104853) b!214145))

(assert (= (and b!214146 condMapEmpty!9393) mapIsEmpty!9393))

(assert (= (and b!214146 (not condMapEmpty!9393)) mapNonEmpty!9393))

(get-info :version)

(assert (= (and mapNonEmpty!9393 ((_ is ValueCellFull!2418) mapValue!9393)) b!214144))

(assert (= (and b!214146 ((_ is ValueCellFull!2418) mapDefault!9393)) b!214150))

(assert (= b!214147 b!214146))

(assert (= start!21278 b!214147))

(declare-fun m!241969 () Bool)

(assert (=> start!21278 m!241969))

(declare-fun m!241971 () Bool)

(assert (=> b!214147 m!241971))

(declare-fun m!241973 () Bool)

(assert (=> b!214147 m!241973))

(declare-fun m!241975 () Bool)

(assert (=> mapNonEmpty!9393 m!241975))

(declare-fun m!241977 () Bool)

(assert (=> b!214148 m!241977))

(check-sat b_and!12569 (not start!21278) tp_is_empty!5523 (not b!214148) (not mapNonEmpty!9393) (not b!214147) (not b_next!5661))
(check-sat b_and!12569 (not b_next!5661))
(get-model)

(declare-fun d!58195 () Bool)

(assert (=> d!58195 (= (validMask!0 (mask!9670 thiss!1504)) (and (or (= (mask!9670 thiss!1504) #b00000000000000000000000000000111) (= (mask!9670 thiss!1504) #b00000000000000000000000000001111) (= (mask!9670 thiss!1504) #b00000000000000000000000000011111) (= (mask!9670 thiss!1504) #b00000000000000000000000000111111) (= (mask!9670 thiss!1504) #b00000000000000000000000001111111) (= (mask!9670 thiss!1504) #b00000000000000000000000011111111) (= (mask!9670 thiss!1504) #b00000000000000000000000111111111) (= (mask!9670 thiss!1504) #b00000000000000000000001111111111) (= (mask!9670 thiss!1504) #b00000000000000000000011111111111) (= (mask!9670 thiss!1504) #b00000000000000000000111111111111) (= (mask!9670 thiss!1504) #b00000000000000000001111111111111) (= (mask!9670 thiss!1504) #b00000000000000000011111111111111) (= (mask!9670 thiss!1504) #b00000000000000000111111111111111) (= (mask!9670 thiss!1504) #b00000000000000001111111111111111) (= (mask!9670 thiss!1504) #b00000000000000011111111111111111) (= (mask!9670 thiss!1504) #b00000000000000111111111111111111) (= (mask!9670 thiss!1504) #b00000000000001111111111111111111) (= (mask!9670 thiss!1504) #b00000000000011111111111111111111) (= (mask!9670 thiss!1504) #b00000000000111111111111111111111) (= (mask!9670 thiss!1504) #b00000000001111111111111111111111) (= (mask!9670 thiss!1504) #b00000000011111111111111111111111) (= (mask!9670 thiss!1504) #b00000000111111111111111111111111) (= (mask!9670 thiss!1504) #b00000001111111111111111111111111) (= (mask!9670 thiss!1504) #b00000011111111111111111111111111) (= (mask!9670 thiss!1504) #b00000111111111111111111111111111) (= (mask!9670 thiss!1504) #b00001111111111111111111111111111) (= (mask!9670 thiss!1504) #b00011111111111111111111111111111) (= (mask!9670 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9670 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!214148 d!58195))

(declare-fun d!58197 () Bool)

(declare-fun res!104870 () Bool)

(declare-fun e!139290 () Bool)

(assert (=> d!58197 (=> (not res!104870) (not e!139290))))

(declare-fun simpleValid!207 (LongMapFixedSize!2736) Bool)

(assert (=> d!58197 (= res!104870 (simpleValid!207 thiss!1504))))

(assert (=> d!58197 (= (valid!1113 thiss!1504) e!139290)))

(declare-fun b!214178 () Bool)

(declare-fun res!104871 () Bool)

(assert (=> b!214178 (=> (not res!104871) (not e!139290))))

(declare-fun arrayCountValidKeys!0 (array!10254 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!214178 (= res!104871 (= (arrayCountValidKeys!0 (_keys!6035 thiss!1504) #b00000000000000000000000000000000 (size!5190 (_keys!6035 thiss!1504))) (_size!1417 thiss!1504)))))

(declare-fun b!214179 () Bool)

(declare-fun res!104872 () Bool)

(assert (=> b!214179 (=> (not res!104872) (not e!139290))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10254 (_ BitVec 32)) Bool)

(assert (=> b!214179 (= res!104872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6035 thiss!1504) (mask!9670 thiss!1504)))))

(declare-fun b!214180 () Bool)

(declare-datatypes ((List!3147 0))(
  ( (Nil!3144) (Cons!3143 (h!3785 (_ BitVec 64)) (t!8110 List!3147)) )
))
(declare-fun arrayNoDuplicates!0 (array!10254 (_ BitVec 32) List!3147) Bool)

(assert (=> b!214180 (= e!139290 (arrayNoDuplicates!0 (_keys!6035 thiss!1504) #b00000000000000000000000000000000 Nil!3144))))

(assert (= (and d!58197 res!104870) b!214178))

(assert (= (and b!214178 res!104871) b!214179))

(assert (= (and b!214179 res!104872) b!214180))

(declare-fun m!241989 () Bool)

(assert (=> d!58197 m!241989))

(declare-fun m!241991 () Bool)

(assert (=> b!214178 m!241991))

(declare-fun m!241993 () Bool)

(assert (=> b!214179 m!241993))

(declare-fun m!241995 () Bool)

(assert (=> b!214180 m!241995))

(assert (=> start!21278 d!58197))

(declare-fun d!58199 () Bool)

(assert (=> d!58199 (= (array_inv!3207 (_keys!6035 thiss!1504)) (bvsge (size!5190 (_keys!6035 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214147 d!58199))

(declare-fun d!58201 () Bool)

(assert (=> d!58201 (= (array_inv!3208 (_values!4001 thiss!1504)) (bvsge (size!5189 (_values!4001 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!214147 d!58201))

(declare-fun mapIsEmpty!9399 () Bool)

(declare-fun mapRes!9399 () Bool)

(assert (=> mapIsEmpty!9399 mapRes!9399))

(declare-fun mapNonEmpty!9399 () Bool)

(declare-fun tp!20073 () Bool)

(declare-fun e!139296 () Bool)

(assert (=> mapNonEmpty!9399 (= mapRes!9399 (and tp!20073 e!139296))))

(declare-fun mapKey!9399 () (_ BitVec 32))

(declare-fun mapRest!9399 () (Array (_ BitVec 32) ValueCell!2418))

(declare-fun mapValue!9399 () ValueCell!2418)

(assert (=> mapNonEmpty!9399 (= mapRest!9393 (store mapRest!9399 mapKey!9399 mapValue!9399))))

(declare-fun b!214188 () Bool)

(declare-fun e!139295 () Bool)

(assert (=> b!214188 (= e!139295 tp_is_empty!5523)))

(declare-fun b!214187 () Bool)

(assert (=> b!214187 (= e!139296 tp_is_empty!5523)))

(declare-fun condMapEmpty!9399 () Bool)

(declare-fun mapDefault!9399 () ValueCell!2418)

(assert (=> mapNonEmpty!9393 (= condMapEmpty!9399 (= mapRest!9393 ((as const (Array (_ BitVec 32) ValueCell!2418)) mapDefault!9399)))))

(assert (=> mapNonEmpty!9393 (= tp!20064 (and e!139295 mapRes!9399))))

(assert (= (and mapNonEmpty!9393 condMapEmpty!9399) mapIsEmpty!9399))

(assert (= (and mapNonEmpty!9393 (not condMapEmpty!9399)) mapNonEmpty!9399))

(assert (= (and mapNonEmpty!9399 ((_ is ValueCellFull!2418) mapValue!9399)) b!214187))

(assert (= (and mapNonEmpty!9393 ((_ is ValueCellFull!2418) mapDefault!9399)) b!214188))

(declare-fun m!241997 () Bool)

(assert (=> mapNonEmpty!9399 m!241997))

(check-sat (not b!214178) (not b!214180) (not b_next!5661) b_and!12569 (not b!214179) (not d!58197) (not mapNonEmpty!9399) tp_is_empty!5523)
(check-sat b_and!12569 (not b_next!5661))
