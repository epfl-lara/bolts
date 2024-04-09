; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16804 () Bool)

(assert start!16804)

(declare-fun b!169050 () Bool)

(declare-fun b_free!4097 () Bool)

(declare-fun b_next!4097 () Bool)

(assert (=> b!169050 (= b_free!4097 (not b_next!4097))))

(declare-fun tp!14891 () Bool)

(declare-fun b_and!10529 () Bool)

(assert (=> b!169050 (= tp!14891 b_and!10529)))

(declare-fun b!169045 () Bool)

(declare-fun e!111283 () Bool)

(declare-fun e!111282 () Bool)

(assert (=> b!169045 (= e!111283 e!111282)))

(declare-fun res!80469 () Bool)

(assert (=> b!169045 (=> (not res!80469) (not e!111282))))

(declare-datatypes ((SeekEntryResult!528 0))(
  ( (MissingZero!528 (index!4280 (_ BitVec 32))) (Found!528 (index!4281 (_ BitVec 32))) (Intermediate!528 (undefined!1340 Bool) (index!4282 (_ BitVec 32)) (x!18692 (_ BitVec 32))) (Undefined!528) (MissingVacant!528 (index!4283 (_ BitVec 32))) )
))
(declare-fun lt!84853 () SeekEntryResult!528)

(assert (=> b!169045 (= res!80469 (and (not (is-Undefined!528 lt!84853)) (not (is-MissingVacant!528 lt!84853)) (not (is-MissingZero!528 lt!84853)) (is-Found!528 lt!84853)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4845 0))(
  ( (V!4846 (val!1994 Int)) )
))
(declare-datatypes ((ValueCell!1606 0))(
  ( (ValueCellFull!1606 (v!3855 V!4845)) (EmptyCell!1606) )
))
(declare-datatypes ((array!6894 0))(
  ( (array!6895 (arr!3282 (Array (_ BitVec 32) (_ BitVec 64))) (size!3570 (_ BitVec 32))) )
))
(declare-datatypes ((array!6896 0))(
  ( (array!6897 (arr!3283 (Array (_ BitVec 32) ValueCell!1606)) (size!3571 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2120 0))(
  ( (LongMapFixedSize!2121 (defaultEntry!3502 Int) (mask!8279 (_ BitVec 32)) (extraKeys!3243 (_ BitVec 32)) (zeroValue!3345 V!4845) (minValue!3345 V!4845) (_size!1109 (_ BitVec 32)) (_keys!5327 array!6894) (_values!3485 array!6896) (_vacant!1109 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2120)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6894 (_ BitVec 32)) SeekEntryResult!528)

(assert (=> b!169045 (= lt!84853 (seekEntryOrOpen!0 key!828 (_keys!5327 thiss!1248) (mask!8279 thiss!1248)))))

(declare-fun mapNonEmpty!6567 () Bool)

(declare-fun mapRes!6567 () Bool)

(declare-fun tp!14892 () Bool)

(declare-fun e!111275 () Bool)

(assert (=> mapNonEmpty!6567 (= mapRes!6567 (and tp!14892 e!111275))))

(declare-fun mapKey!6567 () (_ BitVec 32))

(declare-fun mapValue!6567 () ValueCell!1606)

(declare-fun mapRest!6567 () (Array (_ BitVec 32) ValueCell!1606))

(assert (=> mapNonEmpty!6567 (= (arr!3283 (_values!3485 thiss!1248)) (store mapRest!6567 mapKey!6567 mapValue!6567))))

(declare-fun b!169046 () Bool)

(assert (=> b!169046 (= e!111282 (not true))))

(declare-fun lt!84861 () Bool)

(declare-fun lt!84856 () array!6896)

(declare-fun valid!910 (LongMapFixedSize!2120) Bool)

(assert (=> b!169046 (= lt!84861 (valid!910 (LongMapFixedSize!2121 (defaultEntry!3502 thiss!1248) (mask!8279 thiss!1248) (extraKeys!3243 thiss!1248) (zeroValue!3345 thiss!1248) (minValue!3345 thiss!1248) (_size!1109 thiss!1248) (_keys!5327 thiss!1248) lt!84856 (_vacant!1109 thiss!1248))))))

(declare-datatypes ((tuple2!3190 0))(
  ( (tuple2!3191 (_1!1605 (_ BitVec 64)) (_2!1605 V!4845)) )
))
(declare-datatypes ((List!2198 0))(
  ( (Nil!2195) (Cons!2194 (h!2811 tuple2!3190) (t!7008 List!2198)) )
))
(declare-datatypes ((ListLongMap!2159 0))(
  ( (ListLongMap!2160 (toList!1095 List!2198)) )
))
(declare-fun lt!84860 () ListLongMap!2159)

(declare-fun contains!1131 (ListLongMap!2159 (_ BitVec 64)) Bool)

(assert (=> b!169046 (contains!1131 lt!84860 (select (arr!3282 (_keys!5327 thiss!1248)) (index!4281 lt!84853)))))

(declare-datatypes ((Unit!5230 0))(
  ( (Unit!5231) )
))
(declare-fun lt!84857 () Unit!5230)

(declare-fun lemmaValidKeyInArrayIsInListMap!140 (array!6894 array!6896 (_ BitVec 32) (_ BitVec 32) V!4845 V!4845 (_ BitVec 32) Int) Unit!5230)

(assert (=> b!169046 (= lt!84857 (lemmaValidKeyInArrayIsInListMap!140 (_keys!5327 thiss!1248) lt!84856 (mask!8279 thiss!1248) (extraKeys!3243 thiss!1248) (zeroValue!3345 thiss!1248) (minValue!3345 thiss!1248) (index!4281 lt!84853) (defaultEntry!3502 thiss!1248)))))

(declare-fun lt!84862 () ListLongMap!2159)

(assert (=> b!169046 (= lt!84862 lt!84860)))

(declare-fun getCurrentListMap!748 (array!6894 array!6896 (_ BitVec 32) (_ BitVec 32) V!4845 V!4845 (_ BitVec 32) Int) ListLongMap!2159)

(assert (=> b!169046 (= lt!84860 (getCurrentListMap!748 (_keys!5327 thiss!1248) lt!84856 (mask!8279 thiss!1248) (extraKeys!3243 thiss!1248) (zeroValue!3345 thiss!1248) (minValue!3345 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3502 thiss!1248)))))

(declare-fun v!309 () V!4845)

(declare-fun lt!84854 () ListLongMap!2159)

(declare-fun +!237 (ListLongMap!2159 tuple2!3190) ListLongMap!2159)

(assert (=> b!169046 (= lt!84862 (+!237 lt!84854 (tuple2!3191 key!828 v!309)))))

(assert (=> b!169046 (= lt!84856 (array!6897 (store (arr!3283 (_values!3485 thiss!1248)) (index!4281 lt!84853) (ValueCellFull!1606 v!309)) (size!3571 (_values!3485 thiss!1248))))))

(declare-fun lt!84855 () Unit!5230)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!97 (array!6894 array!6896 (_ BitVec 32) (_ BitVec 32) V!4845 V!4845 (_ BitVec 32) (_ BitVec 64) V!4845 Int) Unit!5230)

(assert (=> b!169046 (= lt!84855 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!97 (_keys!5327 thiss!1248) (_values!3485 thiss!1248) (mask!8279 thiss!1248) (extraKeys!3243 thiss!1248) (zeroValue!3345 thiss!1248) (minValue!3345 thiss!1248) (index!4281 lt!84853) key!828 v!309 (defaultEntry!3502 thiss!1248)))))

(declare-fun lt!84863 () Unit!5230)

(declare-fun e!111278 () Unit!5230)

(assert (=> b!169046 (= lt!84863 e!111278)))

(declare-fun c!30408 () Bool)

(assert (=> b!169046 (= c!30408 (contains!1131 lt!84854 key!828))))

(assert (=> b!169046 (= lt!84854 (getCurrentListMap!748 (_keys!5327 thiss!1248) (_values!3485 thiss!1248) (mask!8279 thiss!1248) (extraKeys!3243 thiss!1248) (zeroValue!3345 thiss!1248) (minValue!3345 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3502 thiss!1248)))))

(declare-fun res!80472 () Bool)

(assert (=> start!16804 (=> (not res!80472) (not e!111283))))

(assert (=> start!16804 (= res!80472 (valid!910 thiss!1248))))

(assert (=> start!16804 e!111283))

(declare-fun e!111277 () Bool)

(assert (=> start!16804 e!111277))

(assert (=> start!16804 true))

(declare-fun tp_is_empty!3899 () Bool)

(assert (=> start!16804 tp_is_empty!3899))

(declare-fun b!169047 () Bool)

(declare-fun Unit!5232 () Unit!5230)

(assert (=> b!169047 (= e!111278 Unit!5232)))

(declare-fun lt!84859 () Unit!5230)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!136 (array!6894 array!6896 (_ BitVec 32) (_ BitVec 32) V!4845 V!4845 (_ BitVec 64) Int) Unit!5230)

(assert (=> b!169047 (= lt!84859 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!136 (_keys!5327 thiss!1248) (_values!3485 thiss!1248) (mask!8279 thiss!1248) (extraKeys!3243 thiss!1248) (zeroValue!3345 thiss!1248) (minValue!3345 thiss!1248) key!828 (defaultEntry!3502 thiss!1248)))))

(assert (=> b!169047 false))

(declare-fun b!169048 () Bool)

(assert (=> b!169048 (= e!111275 tp_is_empty!3899)))

(declare-fun e!111279 () Bool)

(declare-fun b!169049 () Bool)

(assert (=> b!169049 (= e!111279 (= (select (arr!3282 (_keys!5327 thiss!1248)) (index!4281 lt!84853)) key!828))))

(declare-fun e!111281 () Bool)

(declare-fun array_inv!2101 (array!6894) Bool)

(declare-fun array_inv!2102 (array!6896) Bool)

(assert (=> b!169050 (= e!111277 (and tp!14891 tp_is_empty!3899 (array_inv!2101 (_keys!5327 thiss!1248)) (array_inv!2102 (_values!3485 thiss!1248)) e!111281))))

(declare-fun b!169051 () Bool)

(declare-fun res!80470 () Bool)

(assert (=> b!169051 (=> (not res!80470) (not e!111283))))

(assert (=> b!169051 (= res!80470 (not (= key!828 (bvneg key!828))))))

(declare-fun b!169052 () Bool)

(declare-fun lt!84858 () Unit!5230)

(assert (=> b!169052 (= e!111278 lt!84858)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!136 (array!6894 array!6896 (_ BitVec 32) (_ BitVec 32) V!4845 V!4845 (_ BitVec 64) Int) Unit!5230)

(assert (=> b!169052 (= lt!84858 (lemmaInListMapThenSeekEntryOrOpenFindsIt!136 (_keys!5327 thiss!1248) (_values!3485 thiss!1248) (mask!8279 thiss!1248) (extraKeys!3243 thiss!1248) (zeroValue!3345 thiss!1248) (minValue!3345 thiss!1248) key!828 (defaultEntry!3502 thiss!1248)))))

(declare-fun res!80471 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!169052 (= res!80471 (inRange!0 (index!4281 lt!84853) (mask!8279 thiss!1248)))))

(assert (=> b!169052 (=> (not res!80471) (not e!111279))))

(assert (=> b!169052 e!111279))

(declare-fun b!169053 () Bool)

(declare-fun e!111280 () Bool)

(assert (=> b!169053 (= e!111280 tp_is_empty!3899)))

(declare-fun b!169054 () Bool)

(assert (=> b!169054 (= e!111281 (and e!111280 mapRes!6567))))

(declare-fun condMapEmpty!6567 () Bool)

(declare-fun mapDefault!6567 () ValueCell!1606)

