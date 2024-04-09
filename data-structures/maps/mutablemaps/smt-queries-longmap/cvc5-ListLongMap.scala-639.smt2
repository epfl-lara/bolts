; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16194 () Bool)

(assert start!16194)

(declare-fun b!161330 () Bool)

(declare-fun b_free!3643 () Bool)

(declare-fun b_next!3643 () Bool)

(assert (=> b!161330 (= b_free!3643 (not b_next!3643))))

(declare-fun tp!13498 () Bool)

(declare-fun b_and!10075 () Bool)

(assert (=> b!161330 (= tp!13498 b_and!10075)))

(declare-fun b!161325 () Bool)

(declare-datatypes ((Unit!5009 0))(
  ( (Unit!5010) )
))
(declare-fun e!105434 () Unit!5009)

(declare-fun Unit!5011 () Unit!5009)

(assert (=> b!161325 (= e!105434 Unit!5011)))

(declare-fun lt!82220 () Unit!5009)

(declare-datatypes ((V!4241 0))(
  ( (V!4242 (val!1767 Int)) )
))
(declare-datatypes ((ValueCell!1379 0))(
  ( (ValueCellFull!1379 (v!3628 V!4241)) (EmptyCell!1379) )
))
(declare-datatypes ((array!5968 0))(
  ( (array!5969 (arr!2828 (Array (_ BitVec 32) (_ BitVec 64))) (size!3112 (_ BitVec 32))) )
))
(declare-datatypes ((array!5970 0))(
  ( (array!5971 (arr!2829 (Array (_ BitVec 32) ValueCell!1379)) (size!3113 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1666 0))(
  ( (LongMapFixedSize!1667 (defaultEntry!3275 Int) (mask!7865 (_ BitVec 32)) (extraKeys!3016 (_ BitVec 32)) (zeroValue!3118 V!4241) (minValue!3118 V!4241) (_size!882 (_ BitVec 32)) (_keys!5076 array!5968) (_values!3258 array!5970) (_vacant!882 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1666)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!77 (array!5968 array!5970 (_ BitVec 32) (_ BitVec 32) V!4241 V!4241 (_ BitVec 64) Int) Unit!5009)

(assert (=> b!161325 (= lt!82220 (lemmaInListMapThenSeekEntryOrOpenFindsIt!77 (_keys!5076 thiss!1248) (_values!3258 thiss!1248) (mask!7865 thiss!1248) (extraKeys!3016 thiss!1248) (zeroValue!3118 thiss!1248) (minValue!3118 thiss!1248) key!828 (defaultEntry!3275 thiss!1248)))))

(assert (=> b!161325 false))

(declare-fun b!161326 () Bool)

(declare-fun e!105437 () Bool)

(assert (=> b!161326 (= e!105437 false)))

(declare-fun lt!82219 () Unit!5009)

(assert (=> b!161326 (= lt!82219 e!105434)))

(declare-fun c!29934 () Bool)

(declare-datatypes ((tuple2!2940 0))(
  ( (tuple2!2941 (_1!1480 (_ BitVec 64)) (_2!1480 V!4241)) )
))
(declare-datatypes ((List!1992 0))(
  ( (Nil!1989) (Cons!1988 (h!2601 tuple2!2940) (t!6802 List!1992)) )
))
(declare-datatypes ((ListLongMap!1949 0))(
  ( (ListLongMap!1950 (toList!990 List!1992)) )
))
(declare-fun contains!1020 (ListLongMap!1949 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!650 (array!5968 array!5970 (_ BitVec 32) (_ BitVec 32) V!4241 V!4241 (_ BitVec 32) Int) ListLongMap!1949)

(assert (=> b!161326 (= c!29934 (contains!1020 (getCurrentListMap!650 (_keys!5076 thiss!1248) (_values!3258 thiss!1248) (mask!7865 thiss!1248) (extraKeys!3016 thiss!1248) (zeroValue!3118 thiss!1248) (minValue!3118 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3275 thiss!1248)) key!828))))

(declare-fun b!161327 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!75 (array!5968 array!5970 (_ BitVec 32) (_ BitVec 32) V!4241 V!4241 (_ BitVec 64) Int) Unit!5009)

(assert (=> b!161327 (= e!105434 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!75 (_keys!5076 thiss!1248) (_values!3258 thiss!1248) (mask!7865 thiss!1248) (extraKeys!3016 thiss!1248) (zeroValue!3118 thiss!1248) (minValue!3118 thiss!1248) key!828 (defaultEntry!3275 thiss!1248)))))

(declare-fun res!76498 () Bool)

(assert (=> start!16194 (=> (not res!76498) (not e!105437))))

(declare-fun valid!757 (LongMapFixedSize!1666) Bool)

(assert (=> start!16194 (= res!76498 (valid!757 thiss!1248))))

(assert (=> start!16194 e!105437))

(declare-fun e!105439 () Bool)

(assert (=> start!16194 e!105439))

(assert (=> start!16194 true))

(declare-fun b!161328 () Bool)

(declare-fun e!105440 () Bool)

(declare-fun tp_is_empty!3445 () Bool)

(assert (=> b!161328 (= e!105440 tp_is_empty!3445)))

(declare-fun mapNonEmpty!5855 () Bool)

(declare-fun mapRes!5855 () Bool)

(declare-fun tp!13499 () Bool)

(assert (=> mapNonEmpty!5855 (= mapRes!5855 (and tp!13499 e!105440))))

(declare-fun mapValue!5855 () ValueCell!1379)

(declare-fun mapKey!5855 () (_ BitVec 32))

(declare-fun mapRest!5855 () (Array (_ BitVec 32) ValueCell!1379))

(assert (=> mapNonEmpty!5855 (= (arr!2829 (_values!3258 thiss!1248)) (store mapRest!5855 mapKey!5855 mapValue!5855))))

(declare-fun b!161329 () Bool)

(declare-fun e!105436 () Bool)

(declare-fun e!105435 () Bool)

(assert (=> b!161329 (= e!105436 (and e!105435 mapRes!5855))))

(declare-fun condMapEmpty!5855 () Bool)

(declare-fun mapDefault!5855 () ValueCell!1379)

