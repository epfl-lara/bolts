; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25144 () Bool)

(assert start!25144)

(declare-fun b!261860 () Bool)

(declare-fun b_free!6779 () Bool)

(declare-fun b_next!6779 () Bool)

(assert (=> b!261860 (= b_free!6779 (not b_next!6779))))

(declare-fun tp!23667 () Bool)

(declare-fun b_and!13931 () Bool)

(assert (=> b!261860 (= tp!23667 b_and!13931)))

(declare-fun e!169710 () Bool)

(declare-fun tp_is_empty!6641 () Bool)

(declare-fun e!169700 () Bool)

(declare-datatypes ((V!8501 0))(
  ( (V!8502 (val!3365 Int)) )
))
(declare-datatypes ((ValueCell!2977 0))(
  ( (ValueCellFull!2977 (v!5486 V!8501)) (EmptyCell!2977) )
))
(declare-datatypes ((array!12638 0))(
  ( (array!12639 (arr!5981 (Array (_ BitVec 32) ValueCell!2977)) (size!6332 (_ BitVec 32))) )
))
(declare-datatypes ((array!12640 0))(
  ( (array!12641 (arr!5982 (Array (_ BitVec 32) (_ BitVec 64))) (size!6333 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3854 0))(
  ( (LongMapFixedSize!3855 (defaultEntry!4825 Int) (mask!11175 (_ BitVec 32)) (extraKeys!4562 (_ BitVec 32)) (zeroValue!4666 V!8501) (minValue!4666 V!8501) (_size!1976 (_ BitVec 32)) (_keys!7013 array!12640) (_values!4808 array!12638) (_vacant!1976 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3854)

(declare-fun array_inv!3943 (array!12640) Bool)

(declare-fun array_inv!3944 (array!12638) Bool)

(assert (=> b!261860 (= e!169700 (and tp!23667 tp_is_empty!6641 (array_inv!3943 (_keys!7013 thiss!1504)) (array_inv!3944 (_values!4808 thiss!1504)) e!169710))))

(declare-fun bm!25004 () Bool)

(declare-fun call!25008 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!25004 (= call!25008 (arrayContainsKey!0 (_keys!7013 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!261861 () Bool)

(declare-datatypes ((Unit!8149 0))(
  ( (Unit!8150) )
))
(declare-fun e!169701 () Unit!8149)

(declare-fun Unit!8151 () Unit!8149)

(assert (=> b!261861 (= e!169701 Unit!8151)))

(declare-fun lt!132334 () Unit!8149)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!450 (array!12640 array!12638 (_ BitVec 32) (_ BitVec 32) V!8501 V!8501 (_ BitVec 64) Int) Unit!8149)

(assert (=> b!261861 (= lt!132334 (lemmaInListMapThenSeekEntryOrOpenFindsIt!450 (_keys!7013 thiss!1504) (_values!4808 thiss!1504) (mask!11175 thiss!1504) (extraKeys!4562 thiss!1504) (zeroValue!4666 thiss!1504) (minValue!4666 thiss!1504) key!932 (defaultEntry!4825 thiss!1504)))))

(assert (=> b!261861 false))

(declare-fun mapNonEmpty!11320 () Bool)

(declare-fun mapRes!11320 () Bool)

(declare-fun tp!23668 () Bool)

(declare-fun e!169699 () Bool)

(assert (=> mapNonEmpty!11320 (= mapRes!11320 (and tp!23668 e!169699))))

(declare-fun mapRest!11320 () (Array (_ BitVec 32) ValueCell!2977))

(declare-fun mapValue!11320 () ValueCell!2977)

(declare-fun mapKey!11320 () (_ BitVec 32))

(assert (=> mapNonEmpty!11320 (= (arr!5981 (_values!4808 thiss!1504)) (store mapRest!11320 mapKey!11320 mapValue!11320))))

(declare-fun b!261862 () Bool)

(declare-fun c!44593 () Bool)

(declare-datatypes ((SeekEntryResult!1202 0))(
  ( (MissingZero!1202 (index!6978 (_ BitVec 32))) (Found!1202 (index!6979 (_ BitVec 32))) (Intermediate!1202 (undefined!2014 Bool) (index!6980 (_ BitVec 32)) (x!25200 (_ BitVec 32))) (Undefined!1202) (MissingVacant!1202 (index!6981 (_ BitVec 32))) )
))
(declare-fun lt!132326 () SeekEntryResult!1202)

(assert (=> b!261862 (= c!44593 (is-MissingVacant!1202 lt!132326))))

(declare-fun e!169706 () Bool)

(declare-fun e!169712 () Bool)

(assert (=> b!261862 (= e!169706 e!169712)))

(declare-fun b!261863 () Bool)

(declare-fun e!169711 () Bool)

(declare-fun e!169702 () Bool)

(assert (=> b!261863 (= e!169711 e!169702)))

(declare-fun res!127939 () Bool)

(assert (=> b!261863 (=> (not res!127939) (not e!169702))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!261863 (= res!127939 (or (= lt!132326 (MissingZero!1202 index!297)) (= lt!132326 (MissingVacant!1202 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12640 (_ BitVec 32)) SeekEntryResult!1202)

(assert (=> b!261863 (= lt!132326 (seekEntryOrOpen!0 key!932 (_keys!7013 thiss!1504) (mask!11175 thiss!1504)))))

(declare-fun b!261864 () Bool)

(declare-fun res!127936 () Bool)

(assert (=> b!261864 (= res!127936 (= (select (arr!5982 (_keys!7013 thiss!1504)) (index!6981 lt!132326)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169707 () Bool)

(assert (=> b!261864 (=> (not res!127936) (not e!169707))))

(declare-fun b!261865 () Bool)

(declare-fun e!169703 () Bool)

(assert (=> b!261865 (= e!169710 (and e!169703 mapRes!11320))))

(declare-fun condMapEmpty!11320 () Bool)

(declare-fun mapDefault!11320 () ValueCell!2977)

