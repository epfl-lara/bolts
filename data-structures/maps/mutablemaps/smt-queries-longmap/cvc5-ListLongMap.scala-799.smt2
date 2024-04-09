; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19204 () Bool)

(assert start!19204)

(declare-fun b!188761 () Bool)

(declare-fun b_free!4633 () Bool)

(declare-fun b_next!4633 () Bool)

(assert (=> b!188761 (= b_free!4633 (not b_next!4633))))

(declare-fun tp!16725 () Bool)

(declare-fun b_and!11285 () Bool)

(assert (=> b!188761 (= tp!16725 b_and!11285)))

(declare-fun b!188760 () Bool)

(declare-fun res!89248 () Bool)

(declare-fun e!124235 () Bool)

(assert (=> b!188760 (=> (not res!89248) (not e!124235))))

(declare-datatypes ((V!5521 0))(
  ( (V!5522 (val!2247 Int)) )
))
(declare-datatypes ((ValueCell!1859 0))(
  ( (ValueCellFull!1859 (v!4162 V!5521)) (EmptyCell!1859) )
))
(declare-datatypes ((array!8034 0))(
  ( (array!8035 (arr!3788 (Array (_ BitVec 32) (_ BitVec 64))) (size!4108 (_ BitVec 32))) )
))
(declare-datatypes ((array!8036 0))(
  ( (array!8037 (arr!3789 (Array (_ BitVec 32) ValueCell!1859)) (size!4109 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2626 0))(
  ( (LongMapFixedSize!2627 (defaultEntry!3851 Int) (mask!9026 (_ BitVec 32)) (extraKeys!3588 (_ BitVec 32)) (zeroValue!3692 V!5521) (minValue!3692 V!5521) (_size!1362 (_ BitVec 32)) (_keys!5814 array!8034) (_values!3834 array!8036) (_vacant!1362 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2626)

(declare-datatypes ((List!2415 0))(
  ( (Nil!2412) (Cons!2411 (h!3048 (_ BitVec 64)) (t!7323 List!2415)) )
))
(declare-fun arrayNoDuplicates!0 (array!8034 (_ BitVec 32) List!2415) Bool)

(assert (=> b!188760 (= res!89248 (arrayNoDuplicates!0 (_keys!5814 thiss!1248) #b00000000000000000000000000000000 Nil!2412))))

(declare-fun tp_is_empty!4405 () Bool)

(declare-fun e!124243 () Bool)

(declare-fun e!124236 () Bool)

(declare-fun array_inv!2443 (array!8034) Bool)

(declare-fun array_inv!2444 (array!8036) Bool)

(assert (=> b!188761 (= e!124243 (and tp!16725 tp_is_empty!4405 (array_inv!2443 (_keys!5814 thiss!1248)) (array_inv!2444 (_values!3834 thiss!1248)) e!124236))))

(declare-fun mapNonEmpty!7597 () Bool)

(declare-fun mapRes!7597 () Bool)

(declare-fun tp!16726 () Bool)

(declare-fun e!124238 () Bool)

(assert (=> mapNonEmpty!7597 (= mapRes!7597 (and tp!16726 e!124238))))

(declare-fun mapRest!7597 () (Array (_ BitVec 32) ValueCell!1859))

(declare-fun mapValue!7597 () ValueCell!1859)

(declare-fun mapKey!7597 () (_ BitVec 32))

(assert (=> mapNonEmpty!7597 (= (arr!3789 (_values!3834 thiss!1248)) (store mapRest!7597 mapKey!7597 mapValue!7597))))

(declare-datatypes ((SeekEntryResult!666 0))(
  ( (MissingZero!666 (index!4834 (_ BitVec 32))) (Found!666 (index!4835 (_ BitVec 32))) (Intermediate!666 (undefined!1478 Bool) (index!4836 (_ BitVec 32)) (x!20388 (_ BitVec 32))) (Undefined!666) (MissingVacant!666 (index!4837 (_ BitVec 32))) )
))
(declare-fun lt!93480 () SeekEntryResult!666)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun b!188762 () Bool)

(declare-fun e!124241 () Bool)

(assert (=> b!188762 (= e!124241 (= (select (arr!3788 (_keys!5814 thiss!1248)) (index!4835 lt!93480)) key!828))))

(declare-fun b!188763 () Bool)

(declare-fun e!124242 () Bool)

(assert (=> b!188763 (= e!124242 tp_is_empty!4405)))

(declare-fun res!89247 () Bool)

(declare-fun e!124244 () Bool)

(assert (=> start!19204 (=> (not res!89247) (not e!124244))))

(declare-fun valid!1072 (LongMapFixedSize!2626) Bool)

(assert (=> start!19204 (= res!89247 (valid!1072 thiss!1248))))

(assert (=> start!19204 e!124244))

(assert (=> start!19204 e!124243))

(assert (=> start!19204 true))

(declare-fun b!188764 () Bool)

(declare-fun e!124239 () Bool)

(assert (=> b!188764 (= e!124244 e!124239)))

(declare-fun res!89246 () Bool)

(assert (=> b!188764 (=> (not res!89246) (not e!124239))))

(assert (=> b!188764 (= res!89246 (and (not (is-Undefined!666 lt!93480)) (not (is-MissingVacant!666 lt!93480)) (not (is-MissingZero!666 lt!93480)) (is-Found!666 lt!93480)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8034 (_ BitVec 32)) SeekEntryResult!666)

(assert (=> b!188764 (= lt!93480 (seekEntryOrOpen!0 key!828 (_keys!5814 thiss!1248) (mask!9026 thiss!1248)))))

(declare-fun b!188765 () Bool)

(assert (=> b!188765 (= e!124235 (or (bvslt (index!4835 lt!93480) #b00000000000000000000000000000000) (bvsge (index!4835 lt!93480) (size!4108 (_keys!5814 thiss!1248)))))))

(declare-fun b!188766 () Bool)

(declare-fun res!89249 () Bool)

(assert (=> b!188766 (=> (not res!89249) (not e!124235))))

(assert (=> b!188766 (= res!89249 (and (= (size!4109 (_values!3834 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9026 thiss!1248))) (= (size!4108 (_keys!5814 thiss!1248)) (size!4109 (_values!3834 thiss!1248))) (bvsge (mask!9026 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3588 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3588 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!188767 () Bool)

(declare-datatypes ((Unit!5688 0))(
  ( (Unit!5689) )
))
(declare-fun e!124240 () Unit!5688)

(declare-fun Unit!5690 () Unit!5688)

(assert (=> b!188767 (= e!124240 Unit!5690)))

(declare-fun lt!93482 () Unit!5688)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!160 (array!8034 array!8036 (_ BitVec 32) (_ BitVec 32) V!5521 V!5521 (_ BitVec 64) Int) Unit!5688)

(assert (=> b!188767 (= lt!93482 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!160 (_keys!5814 thiss!1248) (_values!3834 thiss!1248) (mask!9026 thiss!1248) (extraKeys!3588 thiss!1248) (zeroValue!3692 thiss!1248) (minValue!3692 thiss!1248) key!828 (defaultEntry!3851 thiss!1248)))))

(assert (=> b!188767 false))

(declare-fun b!188768 () Bool)

(assert (=> b!188768 (= e!124238 tp_is_empty!4405)))

(declare-fun b!188769 () Bool)

(declare-fun lt!93481 () Unit!5688)

(assert (=> b!188769 (= e!124240 lt!93481)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!159 (array!8034 array!8036 (_ BitVec 32) (_ BitVec 32) V!5521 V!5521 (_ BitVec 64) Int) Unit!5688)

(assert (=> b!188769 (= lt!93481 (lemmaInListMapThenSeekEntryOrOpenFindsIt!159 (_keys!5814 thiss!1248) (_values!3834 thiss!1248) (mask!9026 thiss!1248) (extraKeys!3588 thiss!1248) (zeroValue!3692 thiss!1248) (minValue!3692 thiss!1248) key!828 (defaultEntry!3851 thiss!1248)))))

(declare-fun res!89245 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!188769 (= res!89245 (inRange!0 (index!4835 lt!93480) (mask!9026 thiss!1248)))))

(assert (=> b!188769 (=> (not res!89245) (not e!124241))))

(assert (=> b!188769 e!124241))

(declare-fun b!188770 () Bool)

(declare-fun res!89244 () Bool)

(assert (=> b!188770 (=> (not res!89244) (not e!124244))))

(assert (=> b!188770 (= res!89244 (not (= key!828 (bvneg key!828))))))

(declare-fun b!188771 () Bool)

(declare-fun res!89251 () Bool)

(assert (=> b!188771 (=> (not res!89251) (not e!124235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8034 (_ BitVec 32)) Bool)

(assert (=> b!188771 (= res!89251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5814 thiss!1248) (mask!9026 thiss!1248)))))

(declare-fun b!188772 () Bool)

(assert (=> b!188772 (= e!124239 e!124235)))

(declare-fun res!89250 () Bool)

(assert (=> b!188772 (=> (not res!89250) (not e!124235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!188772 (= res!89250 (validMask!0 (mask!9026 thiss!1248)))))

(declare-fun lt!93483 () Unit!5688)

(assert (=> b!188772 (= lt!93483 e!124240)))

(declare-fun c!33919 () Bool)

(declare-datatypes ((tuple2!3492 0))(
  ( (tuple2!3493 (_1!1756 (_ BitVec 64)) (_2!1756 V!5521)) )
))
(declare-datatypes ((List!2416 0))(
  ( (Nil!2413) (Cons!2412 (h!3049 tuple2!3492) (t!7324 List!2416)) )
))
(declare-datatypes ((ListLongMap!2423 0))(
  ( (ListLongMap!2424 (toList!1227 List!2416)) )
))
(declare-fun contains!1326 (ListLongMap!2423 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!870 (array!8034 array!8036 (_ BitVec 32) (_ BitVec 32) V!5521 V!5521 (_ BitVec 32) Int) ListLongMap!2423)

(assert (=> b!188772 (= c!33919 (contains!1326 (getCurrentListMap!870 (_keys!5814 thiss!1248) (_values!3834 thiss!1248) (mask!9026 thiss!1248) (extraKeys!3588 thiss!1248) (zeroValue!3692 thiss!1248) (minValue!3692 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3851 thiss!1248)) key!828))))

(declare-fun mapIsEmpty!7597 () Bool)

(assert (=> mapIsEmpty!7597 mapRes!7597))

(declare-fun b!188773 () Bool)

(assert (=> b!188773 (= e!124236 (and e!124242 mapRes!7597))))

(declare-fun condMapEmpty!7597 () Bool)

(declare-fun mapDefault!7597 () ValueCell!1859)

