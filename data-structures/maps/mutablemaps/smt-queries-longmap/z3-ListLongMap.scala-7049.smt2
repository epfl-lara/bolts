; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89376 () Bool)

(assert start!89376)

(declare-fun b!1024122 () Bool)

(declare-fun b_free!20349 () Bool)

(declare-fun b_next!20349 () Bool)

(assert (=> b!1024122 (= b_free!20349 (not b_next!20349))))

(declare-fun tp!72091 () Bool)

(declare-fun b_and!32613 () Bool)

(assert (=> b!1024122 (= tp!72091 b_and!32613)))

(declare-fun b!1024118 () Bool)

(declare-fun res!685805 () Bool)

(declare-fun e!577268 () Bool)

(assert (=> b!1024118 (=> (not res!685805) (not e!577268))))

(declare-datatypes ((V!36965 0))(
  ( (V!36966 (val!12085 Int)) )
))
(declare-datatypes ((ValueCell!11331 0))(
  ( (ValueCellFull!11331 (v!14655 V!36965)) (EmptyCell!11331) )
))
(declare-datatypes ((array!64170 0))(
  ( (array!64171 (arr!30891 (Array (_ BitVec 32) (_ BitVec 64))) (size!31405 (_ BitVec 32))) )
))
(declare-datatypes ((array!64172 0))(
  ( (array!64173 (arr!30892 (Array (_ BitVec 32) ValueCell!11331)) (size!31406 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5256 0))(
  ( (LongMapFixedSize!5257 (defaultEntry!5980 Int) (mask!29618 (_ BitVec 32)) (extraKeys!5712 (_ BitVec 32)) (zeroValue!5816 V!36965) (minValue!5816 V!36965) (_size!2683 (_ BitVec 32)) (_keys!11124 array!64170) (_values!6003 array!64172) (_vacant!2683 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5256)

(assert (=> b!1024118 (= res!685805 (= (size!31405 (_keys!11124 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29618 thiss!1427))))))

(declare-fun b!1024119 () Bool)

(declare-fun e!577271 () Bool)

(declare-fun e!577266 () Bool)

(declare-fun mapRes!37529 () Bool)

(assert (=> b!1024119 (= e!577271 (and e!577266 mapRes!37529))))

(declare-fun condMapEmpty!37529 () Bool)

(declare-fun mapDefault!37529 () ValueCell!11331)

(assert (=> b!1024119 (= condMapEmpty!37529 (= (arr!30892 (_values!6003 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11331)) mapDefault!37529)))))

(declare-fun b!1024120 () Bool)

(declare-fun e!577270 () Bool)

(declare-fun tp_is_empty!24069 () Bool)

(assert (=> b!1024120 (= e!577270 tp_is_empty!24069)))

(declare-fun mapNonEmpty!37529 () Bool)

(declare-fun tp!72090 () Bool)

(assert (=> mapNonEmpty!37529 (= mapRes!37529 (and tp!72090 e!577270))))

(declare-fun mapRest!37529 () (Array (_ BitVec 32) ValueCell!11331))

(declare-fun mapKey!37529 () (_ BitVec 32))

(declare-fun mapValue!37529 () ValueCell!11331)

(assert (=> mapNonEmpty!37529 (= (arr!30892 (_values!6003 thiss!1427)) (store mapRest!37529 mapKey!37529 mapValue!37529))))

(declare-fun b!1024121 () Bool)

(declare-fun res!685804 () Bool)

(assert (=> b!1024121 (=> (not res!685804) (not e!577268))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1024121 (= res!685804 (validMask!0 (mask!29618 thiss!1427)))))

(declare-fun res!685806 () Bool)

(assert (=> start!89376 (=> (not res!685806) (not e!577268))))

(declare-fun valid!1956 (LongMapFixedSize!5256) Bool)

(assert (=> start!89376 (= res!685806 (valid!1956 thiss!1427))))

(assert (=> start!89376 e!577268))

(declare-fun e!577267 () Bool)

(assert (=> start!89376 e!577267))

(assert (=> start!89376 true))

(declare-fun array_inv!23795 (array!64170) Bool)

(declare-fun array_inv!23796 (array!64172) Bool)

(assert (=> b!1024122 (= e!577267 (and tp!72091 tp_is_empty!24069 (array_inv!23795 (_keys!11124 thiss!1427)) (array_inv!23796 (_values!6003 thiss!1427)) e!577271))))

(declare-fun mapIsEmpty!37529 () Bool)

(assert (=> mapIsEmpty!37529 mapRes!37529))

(declare-fun b!1024123 () Bool)

(declare-fun res!685803 () Bool)

(assert (=> b!1024123 (=> (not res!685803) (not e!577268))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024123 (= res!685803 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024124 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1024124 (= e!577268 (not (validKeyInArray!0 key!909)))))

(declare-fun b!1024125 () Bool)

(assert (=> b!1024125 (= e!577266 tp_is_empty!24069)))

(assert (= (and start!89376 res!685806) b!1024123))

(assert (= (and b!1024123 res!685803) b!1024121))

(assert (= (and b!1024121 res!685804) b!1024118))

(assert (= (and b!1024118 res!685805) b!1024124))

(assert (= (and b!1024119 condMapEmpty!37529) mapIsEmpty!37529))

(assert (= (and b!1024119 (not condMapEmpty!37529)) mapNonEmpty!37529))

(get-info :version)

(assert (= (and mapNonEmpty!37529 ((_ is ValueCellFull!11331) mapValue!37529)) b!1024120))

(assert (= (and b!1024119 ((_ is ValueCellFull!11331) mapDefault!37529)) b!1024125))

(assert (= b!1024122 b!1024119))

(assert (= start!89376 b!1024122))

(declare-fun m!942693 () Bool)

(assert (=> start!89376 m!942693))

(declare-fun m!942695 () Bool)

(assert (=> b!1024124 m!942695))

(declare-fun m!942697 () Bool)

(assert (=> b!1024122 m!942697))

(declare-fun m!942699 () Bool)

(assert (=> b!1024122 m!942699))

(declare-fun m!942701 () Bool)

(assert (=> b!1024121 m!942701))

(declare-fun m!942703 () Bool)

(assert (=> mapNonEmpty!37529 m!942703))

(check-sat (not mapNonEmpty!37529) (not b!1024122) tp_is_empty!24069 (not b_next!20349) (not b!1024124) (not start!89376) b_and!32613 (not b!1024121))
(check-sat b_and!32613 (not b_next!20349))
(get-model)

(declare-fun d!122577 () Bool)

(declare-fun res!685825 () Bool)

(declare-fun e!577292 () Bool)

(assert (=> d!122577 (=> (not res!685825) (not e!577292))))

(declare-fun simpleValid!388 (LongMapFixedSize!5256) Bool)

(assert (=> d!122577 (= res!685825 (simpleValid!388 thiss!1427))))

(assert (=> d!122577 (= (valid!1956 thiss!1427) e!577292)))

(declare-fun b!1024156 () Bool)

(declare-fun res!685826 () Bool)

(assert (=> b!1024156 (=> (not res!685826) (not e!577292))))

(declare-fun arrayCountValidKeys!0 (array!64170 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024156 (= res!685826 (= (arrayCountValidKeys!0 (_keys!11124 thiss!1427) #b00000000000000000000000000000000 (size!31405 (_keys!11124 thiss!1427))) (_size!2683 thiss!1427)))))

(declare-fun b!1024157 () Bool)

(declare-fun res!685827 () Bool)

(assert (=> b!1024157 (=> (not res!685827) (not e!577292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64170 (_ BitVec 32)) Bool)

(assert (=> b!1024157 (= res!685827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11124 thiss!1427) (mask!29618 thiss!1427)))))

(declare-fun b!1024158 () Bool)

(declare-datatypes ((List!21828 0))(
  ( (Nil!21825) (Cons!21824 (h!23022 (_ BitVec 64)) (t!30897 List!21828)) )
))
(declare-fun arrayNoDuplicates!0 (array!64170 (_ BitVec 32) List!21828) Bool)

(assert (=> b!1024158 (= e!577292 (arrayNoDuplicates!0 (_keys!11124 thiss!1427) #b00000000000000000000000000000000 Nil!21825))))

(assert (= (and d!122577 res!685825) b!1024156))

(assert (= (and b!1024156 res!685826) b!1024157))

(assert (= (and b!1024157 res!685827) b!1024158))

(declare-fun m!942717 () Bool)

(assert (=> d!122577 m!942717))

(declare-fun m!942719 () Bool)

(assert (=> b!1024156 m!942719))

(declare-fun m!942721 () Bool)

(assert (=> b!1024157 m!942721))

(declare-fun m!942723 () Bool)

(assert (=> b!1024158 m!942723))

(assert (=> start!89376 d!122577))

(declare-fun d!122579 () Bool)

(assert (=> d!122579 (= (validMask!0 (mask!29618 thiss!1427)) (and (or (= (mask!29618 thiss!1427) #b00000000000000000000000000000111) (= (mask!29618 thiss!1427) #b00000000000000000000000000001111) (= (mask!29618 thiss!1427) #b00000000000000000000000000011111) (= (mask!29618 thiss!1427) #b00000000000000000000000000111111) (= (mask!29618 thiss!1427) #b00000000000000000000000001111111) (= (mask!29618 thiss!1427) #b00000000000000000000000011111111) (= (mask!29618 thiss!1427) #b00000000000000000000000111111111) (= (mask!29618 thiss!1427) #b00000000000000000000001111111111) (= (mask!29618 thiss!1427) #b00000000000000000000011111111111) (= (mask!29618 thiss!1427) #b00000000000000000000111111111111) (= (mask!29618 thiss!1427) #b00000000000000000001111111111111) (= (mask!29618 thiss!1427) #b00000000000000000011111111111111) (= (mask!29618 thiss!1427) #b00000000000000000111111111111111) (= (mask!29618 thiss!1427) #b00000000000000001111111111111111) (= (mask!29618 thiss!1427) #b00000000000000011111111111111111) (= (mask!29618 thiss!1427) #b00000000000000111111111111111111) (= (mask!29618 thiss!1427) #b00000000000001111111111111111111) (= (mask!29618 thiss!1427) #b00000000000011111111111111111111) (= (mask!29618 thiss!1427) #b00000000000111111111111111111111) (= (mask!29618 thiss!1427) #b00000000001111111111111111111111) (= (mask!29618 thiss!1427) #b00000000011111111111111111111111) (= (mask!29618 thiss!1427) #b00000000111111111111111111111111) (= (mask!29618 thiss!1427) #b00000001111111111111111111111111) (= (mask!29618 thiss!1427) #b00000011111111111111111111111111) (= (mask!29618 thiss!1427) #b00000111111111111111111111111111) (= (mask!29618 thiss!1427) #b00001111111111111111111111111111) (= (mask!29618 thiss!1427) #b00011111111111111111111111111111) (= (mask!29618 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!29618 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1024121 d!122579))

(declare-fun d!122581 () Bool)

(assert (=> d!122581 (= (array_inv!23795 (_keys!11124 thiss!1427)) (bvsge (size!31405 (_keys!11124 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1024122 d!122581))

(declare-fun d!122583 () Bool)

(assert (=> d!122583 (= (array_inv!23796 (_values!6003 thiss!1427)) (bvsge (size!31406 (_values!6003 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1024122 d!122583))

(declare-fun d!122585 () Bool)

(assert (=> d!122585 (= (validKeyInArray!0 key!909) (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1024124 d!122585))

(declare-fun b!1024166 () Bool)

(declare-fun e!577297 () Bool)

(assert (=> b!1024166 (= e!577297 tp_is_empty!24069)))

(declare-fun mapNonEmpty!37535 () Bool)

(declare-fun mapRes!37535 () Bool)

(declare-fun tp!72100 () Bool)

(declare-fun e!577298 () Bool)

(assert (=> mapNonEmpty!37535 (= mapRes!37535 (and tp!72100 e!577298))))

(declare-fun mapValue!37535 () ValueCell!11331)

(declare-fun mapKey!37535 () (_ BitVec 32))

(declare-fun mapRest!37535 () (Array (_ BitVec 32) ValueCell!11331))

(assert (=> mapNonEmpty!37535 (= mapRest!37529 (store mapRest!37535 mapKey!37535 mapValue!37535))))

(declare-fun b!1024165 () Bool)

(assert (=> b!1024165 (= e!577298 tp_is_empty!24069)))

(declare-fun mapIsEmpty!37535 () Bool)

(assert (=> mapIsEmpty!37535 mapRes!37535))

(declare-fun condMapEmpty!37535 () Bool)

(declare-fun mapDefault!37535 () ValueCell!11331)

(assert (=> mapNonEmpty!37529 (= condMapEmpty!37535 (= mapRest!37529 ((as const (Array (_ BitVec 32) ValueCell!11331)) mapDefault!37535)))))

(assert (=> mapNonEmpty!37529 (= tp!72090 (and e!577297 mapRes!37535))))

(assert (= (and mapNonEmpty!37529 condMapEmpty!37535) mapIsEmpty!37535))

(assert (= (and mapNonEmpty!37529 (not condMapEmpty!37535)) mapNonEmpty!37535))

(assert (= (and mapNonEmpty!37535 ((_ is ValueCellFull!11331) mapValue!37535)) b!1024165))

(assert (= (and mapNonEmpty!37529 ((_ is ValueCellFull!11331) mapDefault!37535)) b!1024166))

(declare-fun m!942725 () Bool)

(assert (=> mapNonEmpty!37535 m!942725))

(check-sat (not mapNonEmpty!37535) (not b_next!20349) (not b!1024156) (not b!1024158) b_and!32613 (not d!122577) (not b!1024157) tp_is_empty!24069)
(check-sat b_and!32613 (not b_next!20349))
