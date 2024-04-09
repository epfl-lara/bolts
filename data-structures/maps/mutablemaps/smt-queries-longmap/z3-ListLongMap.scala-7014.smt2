; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89126 () Bool)

(assert start!89126)

(declare-fun b!1021354 () Bool)

(declare-fun b_free!20139 () Bool)

(declare-fun b_next!20139 () Bool)

(assert (=> b!1021354 (= b_free!20139 (not b_next!20139))))

(declare-fun tp!71450 () Bool)

(declare-fun b_and!32355 () Bool)

(assert (=> b!1021354 (= tp!71450 b_and!32355)))

(declare-fun b!1021352 () Bool)

(declare-fun e!575277 () Bool)

(declare-fun e!575278 () Bool)

(assert (=> b!1021352 (= e!575277 e!575278)))

(declare-fun mapIsEmpty!37203 () Bool)

(declare-fun mapRes!37203 () Bool)

(assert (=> mapIsEmpty!37203 mapRes!37203))

(declare-datatypes ((array!63744 0))(
  ( (array!63745 (arr!30681 (Array (_ BitVec 32) (_ BitVec 64))) (size!31193 (_ BitVec 32))) )
))
(declare-datatypes ((V!36685 0))(
  ( (V!36686 (val!11980 Int)) )
))
(declare-datatypes ((ValueCell!11226 0))(
  ( (ValueCellFull!11226 (v!14548 V!36685)) (EmptyCell!11226) )
))
(declare-datatypes ((array!63746 0))(
  ( (array!63747 (arr!30682 (Array (_ BitVec 32) ValueCell!11226)) (size!31194 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5046 0))(
  ( (LongMapFixedSize!5047 (defaultEntry!5875 Int) (mask!29439 (_ BitVec 32)) (extraKeys!5607 (_ BitVec 32)) (zeroValue!5711 V!36685) (minValue!5711 V!36685) (_size!2578 (_ BitVec 32)) (_keys!11017 array!63744) (_values!5898 array!63746) (_vacant!2578 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1114 0))(
  ( (Cell!1115 (v!14549 LongMapFixedSize!5046)) )
))
(declare-datatypes ((LongMap!1114 0))(
  ( (LongMap!1115 (underlying!568 Cell!1114)) )
))
(declare-fun thiss!1120 () LongMap!1114)

(declare-fun tp_is_empty!23859 () Bool)

(declare-fun e!575282 () Bool)

(declare-fun array_inv!23655 (array!63744) Bool)

(declare-fun array_inv!23656 (array!63746) Bool)

(assert (=> b!1021354 (= e!575278 (and tp!71450 tp_is_empty!23859 (array_inv!23655 (_keys!11017 (v!14549 (underlying!568 thiss!1120)))) (array_inv!23656 (_values!5898 (v!14549 (underlying!568 thiss!1120)))) e!575282))))

(declare-fun b!1021355 () Bool)

(declare-fun e!575279 () Bool)

(assert (=> b!1021355 (= e!575279 tp_is_empty!23859)))

(declare-fun res!684429 () Bool)

(declare-fun e!575281 () Bool)

(assert (=> start!89126 (=> (not res!684429) (not e!575281))))

(declare-fun valid!1890 (LongMap!1114) Bool)

(assert (=> start!89126 (= res!684429 (valid!1890 thiss!1120))))

(assert (=> start!89126 e!575281))

(declare-fun e!575280 () Bool)

(assert (=> start!89126 e!575280))

(declare-fun b!1021353 () Bool)

(assert (=> b!1021353 (= e!575280 e!575277)))

(declare-fun mapNonEmpty!37203 () Bool)

(declare-fun tp!71449 () Bool)

(declare-fun e!575284 () Bool)

(assert (=> mapNonEmpty!37203 (= mapRes!37203 (and tp!71449 e!575284))))

(declare-fun mapValue!37203 () ValueCell!11226)

(declare-fun mapRest!37203 () (Array (_ BitVec 32) ValueCell!11226))

(declare-fun mapKey!37203 () (_ BitVec 32))

(assert (=> mapNonEmpty!37203 (= (arr!30682 (_values!5898 (v!14549 (underlying!568 thiss!1120)))) (store mapRest!37203 mapKey!37203 mapValue!37203))))

(declare-fun b!1021356 () Bool)

(assert (=> b!1021356 (= e!575282 (and e!575279 mapRes!37203))))

(declare-fun condMapEmpty!37203 () Bool)

(declare-fun mapDefault!37203 () ValueCell!11226)

(assert (=> b!1021356 (= condMapEmpty!37203 (= (arr!30682 (_values!5898 (v!14549 (underlying!568 thiss!1120)))) ((as const (Array (_ BitVec 32) ValueCell!11226)) mapDefault!37203)))))

(declare-fun b!1021357 () Bool)

(assert (=> b!1021357 (= e!575284 tp_is_empty!23859)))

(declare-fun b!1021358 () Bool)

(declare-fun valid!1891 (LongMapFixedSize!5046) Bool)

(assert (=> b!1021358 (= e!575281 (not (valid!1891 (v!14549 (underlying!568 thiss!1120)))))))

(assert (= (and start!89126 res!684429) b!1021358))

(assert (= (and b!1021356 condMapEmpty!37203) mapIsEmpty!37203))

(assert (= (and b!1021356 (not condMapEmpty!37203)) mapNonEmpty!37203))

(get-info :version)

(assert (= (and mapNonEmpty!37203 ((_ is ValueCellFull!11226) mapValue!37203)) b!1021357))

(assert (= (and b!1021356 ((_ is ValueCellFull!11226) mapDefault!37203)) b!1021355))

(assert (= b!1021354 b!1021356))

(assert (= b!1021352 b!1021354))

(assert (= b!1021353 b!1021352))

(assert (= start!89126 b!1021353))

(declare-fun m!941039 () Bool)

(assert (=> b!1021354 m!941039))

(declare-fun m!941041 () Bool)

(assert (=> b!1021354 m!941041))

(declare-fun m!941043 () Bool)

(assert (=> start!89126 m!941043))

(declare-fun m!941045 () Bool)

(assert (=> mapNonEmpty!37203 m!941045))

(declare-fun m!941047 () Bool)

(assert (=> b!1021358 m!941047))

(check-sat b_and!32355 (not start!89126) tp_is_empty!23859 (not mapNonEmpty!37203) (not b!1021354) (not b_next!20139) (not b!1021358))
(check-sat b_and!32355 (not b_next!20139))
(get-model)

(declare-fun d!122467 () Bool)

(assert (=> d!122467 (= (array_inv!23655 (_keys!11017 (v!14549 (underlying!568 thiss!1120)))) (bvsge (size!31193 (_keys!11017 (v!14549 (underlying!568 thiss!1120)))) #b00000000000000000000000000000000))))

(assert (=> b!1021354 d!122467))

(declare-fun d!122469 () Bool)

(assert (=> d!122469 (= (array_inv!23656 (_values!5898 (v!14549 (underlying!568 thiss!1120)))) (bvsge (size!31194 (_values!5898 (v!14549 (underlying!568 thiss!1120)))) #b00000000000000000000000000000000))))

(assert (=> b!1021354 d!122469))

(declare-fun d!122471 () Bool)

(declare-fun res!684439 () Bool)

(declare-fun e!575311 () Bool)

(assert (=> d!122471 (=> (not res!684439) (not e!575311))))

(declare-fun simpleValid!385 (LongMapFixedSize!5046) Bool)

(assert (=> d!122471 (= res!684439 (simpleValid!385 (v!14549 (underlying!568 thiss!1120))))))

(assert (=> d!122471 (= (valid!1891 (v!14549 (underlying!568 thiss!1120))) e!575311)))

(declare-fun b!1021386 () Bool)

(declare-fun res!684440 () Bool)

(assert (=> b!1021386 (=> (not res!684440) (not e!575311))))

(declare-fun arrayCountValidKeys!0 (array!63744 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1021386 (= res!684440 (= (arrayCountValidKeys!0 (_keys!11017 (v!14549 (underlying!568 thiss!1120))) #b00000000000000000000000000000000 (size!31193 (_keys!11017 (v!14549 (underlying!568 thiss!1120))))) (_size!2578 (v!14549 (underlying!568 thiss!1120)))))))

(declare-fun b!1021387 () Bool)

(declare-fun res!684441 () Bool)

(assert (=> b!1021387 (=> (not res!684441) (not e!575311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63744 (_ BitVec 32)) Bool)

(assert (=> b!1021387 (= res!684441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11017 (v!14549 (underlying!568 thiss!1120))) (mask!29439 (v!14549 (underlying!568 thiss!1120)))))))

(declare-fun b!1021388 () Bool)

(declare-datatypes ((List!21768 0))(
  ( (Nil!21765) (Cons!21764 (h!22962 (_ BitVec 64)) (t!30789 List!21768)) )
))
(declare-fun arrayNoDuplicates!0 (array!63744 (_ BitVec 32) List!21768) Bool)

(assert (=> b!1021388 (= e!575311 (arrayNoDuplicates!0 (_keys!11017 (v!14549 (underlying!568 thiss!1120))) #b00000000000000000000000000000000 Nil!21765))))

(assert (= (and d!122471 res!684439) b!1021386))

(assert (= (and b!1021386 res!684440) b!1021387))

(assert (= (and b!1021387 res!684441) b!1021388))

(declare-fun m!941059 () Bool)

(assert (=> d!122471 m!941059))

(declare-fun m!941061 () Bool)

(assert (=> b!1021386 m!941061))

(declare-fun m!941063 () Bool)

(assert (=> b!1021387 m!941063))

(declare-fun m!941065 () Bool)

(assert (=> b!1021388 m!941065))

(assert (=> b!1021358 d!122471))

(declare-fun d!122473 () Bool)

(assert (=> d!122473 (= (valid!1890 thiss!1120) (valid!1891 (v!14549 (underlying!568 thiss!1120))))))

(declare-fun bs!29769 () Bool)

(assert (= bs!29769 d!122473))

(assert (=> bs!29769 m!941047))

(assert (=> start!89126 d!122473))

(declare-fun mapNonEmpty!37209 () Bool)

(declare-fun mapRes!37209 () Bool)

(declare-fun tp!71459 () Bool)

(declare-fun e!575317 () Bool)

(assert (=> mapNonEmpty!37209 (= mapRes!37209 (and tp!71459 e!575317))))

(declare-fun mapRest!37209 () (Array (_ BitVec 32) ValueCell!11226))

(declare-fun mapValue!37209 () ValueCell!11226)

(declare-fun mapKey!37209 () (_ BitVec 32))

(assert (=> mapNonEmpty!37209 (= mapRest!37203 (store mapRest!37209 mapKey!37209 mapValue!37209))))

(declare-fun b!1021396 () Bool)

(declare-fun e!575316 () Bool)

(assert (=> b!1021396 (= e!575316 tp_is_empty!23859)))

(declare-fun mapIsEmpty!37209 () Bool)

(assert (=> mapIsEmpty!37209 mapRes!37209))

(declare-fun condMapEmpty!37209 () Bool)

(declare-fun mapDefault!37209 () ValueCell!11226)

(assert (=> mapNonEmpty!37203 (= condMapEmpty!37209 (= mapRest!37203 ((as const (Array (_ BitVec 32) ValueCell!11226)) mapDefault!37209)))))

(assert (=> mapNonEmpty!37203 (= tp!71449 (and e!575316 mapRes!37209))))

(declare-fun b!1021395 () Bool)

(assert (=> b!1021395 (= e!575317 tp_is_empty!23859)))

(assert (= (and mapNonEmpty!37203 condMapEmpty!37209) mapIsEmpty!37209))

(assert (= (and mapNonEmpty!37203 (not condMapEmpty!37209)) mapNonEmpty!37209))

(assert (= (and mapNonEmpty!37209 ((_ is ValueCellFull!11226) mapValue!37209)) b!1021395))

(assert (= (and mapNonEmpty!37203 ((_ is ValueCellFull!11226) mapDefault!37209)) b!1021396))

(declare-fun m!941067 () Bool)

(assert (=> mapNonEmpty!37209 m!941067))

(check-sat (not mapNonEmpty!37209) (not d!122473) (not b!1021388) b_and!32355 tp_is_empty!23859 (not b_next!20139) (not d!122471) (not b!1021386) (not b!1021387))
(check-sat b_and!32355 (not b_next!20139))
