; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16204 () Bool)

(assert start!16204)

(declare-fun b!161466 () Bool)

(declare-fun b_free!3653 () Bool)

(declare-fun b_next!3653 () Bool)

(assert (=> b!161466 (= b_free!3653 (not b_next!3653))))

(declare-fun tp!13528 () Bool)

(declare-fun b_and!10085 () Bool)

(assert (=> b!161466 (= tp!13528 b_and!10085)))

(declare-fun res!76542 () Bool)

(declare-fun e!105540 () Bool)

(assert (=> start!16204 (=> (not res!76542) (not e!105540))))

(declare-datatypes ((V!4253 0))(
  ( (V!4254 (val!1772 Int)) )
))
(declare-datatypes ((ValueCell!1384 0))(
  ( (ValueCellFull!1384 (v!3633 V!4253)) (EmptyCell!1384) )
))
(declare-datatypes ((array!5988 0))(
  ( (array!5989 (arr!2838 (Array (_ BitVec 32) (_ BitVec 64))) (size!3122 (_ BitVec 32))) )
))
(declare-datatypes ((array!5990 0))(
  ( (array!5991 (arr!2839 (Array (_ BitVec 32) ValueCell!1384)) (size!3123 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1676 0))(
  ( (LongMapFixedSize!1677 (defaultEntry!3280 Int) (mask!7872 (_ BitVec 32)) (extraKeys!3021 (_ BitVec 32)) (zeroValue!3123 V!4253) (minValue!3123 V!4253) (_size!887 (_ BitVec 32)) (_keys!5081 array!5988) (_values!3263 array!5990) (_vacant!887 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1676)

(declare-fun valid!760 (LongMapFixedSize!1676) Bool)

(assert (=> start!16204 (= res!76542 (valid!760 thiss!1248))))

(assert (=> start!16204 e!105540))

(declare-fun e!105545 () Bool)

(assert (=> start!16204 e!105545))

(assert (=> start!16204 true))

(declare-fun b!161460 () Bool)

(declare-fun e!105544 () Bool)

(declare-fun tp_is_empty!3455 () Bool)

(assert (=> b!161460 (= e!105544 tp_is_empty!3455)))

(declare-fun b!161461 () Bool)

(declare-fun res!76544 () Bool)

(assert (=> b!161461 (=> (not res!76544) (not e!105540))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161461 (= res!76544 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161462 () Bool)

(declare-datatypes ((Unit!5021 0))(
  ( (Unit!5022) )
))
(declare-fun e!105542 () Unit!5021)

(declare-fun Unit!5023 () Unit!5021)

(assert (=> b!161462 (= e!105542 Unit!5023)))

(declare-fun lt!82249 () Unit!5021)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!81 (array!5988 array!5990 (_ BitVec 32) (_ BitVec 32) V!4253 V!4253 (_ BitVec 64) Int) Unit!5021)

(assert (=> b!161462 (= lt!82249 (lemmaInListMapThenSeekEntryOrOpenFindsIt!81 (_keys!5081 thiss!1248) (_values!3263 thiss!1248) (mask!7872 thiss!1248) (extraKeys!3021 thiss!1248) (zeroValue!3123 thiss!1248) (minValue!3123 thiss!1248) key!828 (defaultEntry!3280 thiss!1248)))))

(assert (=> b!161462 false))

(declare-fun mapIsEmpty!5870 () Bool)

(declare-fun mapRes!5870 () Bool)

(assert (=> mapIsEmpty!5870 mapRes!5870))

(declare-fun b!161463 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!79 (array!5988 array!5990 (_ BitVec 32) (_ BitVec 32) V!4253 V!4253 (_ BitVec 64) Int) Unit!5021)

(assert (=> b!161463 (= e!105542 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!79 (_keys!5081 thiss!1248) (_values!3263 thiss!1248) (mask!7872 thiss!1248) (extraKeys!3021 thiss!1248) (zeroValue!3123 thiss!1248) (minValue!3123 thiss!1248) key!828 (defaultEntry!3280 thiss!1248)))))

(declare-fun b!161464 () Bool)

(assert (=> b!161464 (= e!105540 false)))

(declare-fun lt!82250 () Unit!5021)

(assert (=> b!161464 (= lt!82250 e!105542)))

(declare-fun c!29949 () Bool)

(declare-datatypes ((tuple2!2948 0))(
  ( (tuple2!2949 (_1!1484 (_ BitVec 64)) (_2!1484 V!4253)) )
))
(declare-datatypes ((List!1996 0))(
  ( (Nil!1993) (Cons!1992 (h!2605 tuple2!2948) (t!6806 List!1996)) )
))
(declare-datatypes ((ListLongMap!1957 0))(
  ( (ListLongMap!1958 (toList!994 List!1996)) )
))
(declare-fun contains!1024 (ListLongMap!1957 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!654 (array!5988 array!5990 (_ BitVec 32) (_ BitVec 32) V!4253 V!4253 (_ BitVec 32) Int) ListLongMap!1957)

(assert (=> b!161464 (= c!29949 (contains!1024 (getCurrentListMap!654 (_keys!5081 thiss!1248) (_values!3263 thiss!1248) (mask!7872 thiss!1248) (extraKeys!3021 thiss!1248) (zeroValue!3123 thiss!1248) (minValue!3123 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3280 thiss!1248)) key!828))))

(declare-fun b!161465 () Bool)

(declare-fun e!105541 () Bool)

(declare-fun e!105543 () Bool)

(assert (=> b!161465 (= e!105541 (and e!105543 mapRes!5870))))

(declare-fun condMapEmpty!5870 () Bool)

(declare-fun mapDefault!5870 () ValueCell!1384)

