; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76540 () Bool)

(assert start!76540)

(declare-fun b!896598 () Bool)

(declare-fun b_free!15961 () Bool)

(declare-fun b_next!15961 () Bool)

(assert (=> b!896598 (= b_free!15961 (not b_next!15961))))

(declare-fun tp!55923 () Bool)

(declare-fun b_and!26271 () Bool)

(assert (=> b!896598 (= tp!55923 b_and!26271)))

(declare-fun b!896597 () Bool)

(declare-fun e!501255 () Bool)

(declare-datatypes ((SeekEntryResult!8890 0))(
  ( (MissingZero!8890 (index!37930 (_ BitVec 32))) (Found!8890 (index!37931 (_ BitVec 32))) (Intermediate!8890 (undefined!9702 Bool) (index!37932 (_ BitVec 32)) (x!76357 (_ BitVec 32))) (Undefined!8890) (MissingVacant!8890 (index!37933 (_ BitVec 32))) )
))
(declare-fun lt!404880 () SeekEntryResult!8890)

(declare-datatypes ((array!52584 0))(
  ( (array!52585 (arr!25274 (Array (_ BitVec 32) (_ BitVec 64))) (size!25727 (_ BitVec 32))) )
))
(declare-datatypes ((V!29351 0))(
  ( (V!29352 (val!9195 Int)) )
))
(declare-datatypes ((ValueCell!8663 0))(
  ( (ValueCellFull!8663 (v!11682 V!29351)) (EmptyCell!8663) )
))
(declare-datatypes ((array!52586 0))(
  ( (array!52587 (arr!25275 (Array (_ BitVec 32) ValueCell!8663)) (size!25728 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4342 0))(
  ( (LongMapFixedSize!4343 (defaultEntry!5383 Int) (mask!26033 (_ BitVec 32)) (extraKeys!5087 (_ BitVec 32)) (zeroValue!5191 V!29351) (minValue!5191 V!29351) (_size!2226 (_ BitVec 32)) (_keys!10120 array!52584) (_values!5378 array!52586) (_vacant!2226 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4342)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!896597 (= e!501255 (inRange!0 (index!37931 lt!404880) (mask!26033 thiss!1181)))))

(declare-fun e!501248 () Bool)

(declare-fun tp_is_empty!18289 () Bool)

(declare-fun e!501253 () Bool)

(declare-fun array_inv!19812 (array!52584) Bool)

(declare-fun array_inv!19813 (array!52586) Bool)

(assert (=> b!896598 (= e!501253 (and tp!55923 tp_is_empty!18289 (array_inv!19812 (_keys!10120 thiss!1181)) (array_inv!19813 (_values!5378 thiss!1181)) e!501248))))

(declare-fun mapNonEmpty!29058 () Bool)

(declare-fun mapRes!29058 () Bool)

(declare-fun tp!55922 () Bool)

(declare-fun e!501251 () Bool)

(assert (=> mapNonEmpty!29058 (= mapRes!29058 (and tp!55922 e!501251))))

(declare-fun mapValue!29058 () ValueCell!8663)

(declare-fun mapRest!29058 () (Array (_ BitVec 32) ValueCell!8663))

(declare-fun mapKey!29058 () (_ BitVec 32))

(assert (=> mapNonEmpty!29058 (= (arr!25275 (_values!5378 thiss!1181)) (store mapRest!29058 mapKey!29058 mapValue!29058))))

(declare-fun b!896599 () Bool)

(declare-fun e!501250 () Bool)

(assert (=> b!896599 (= e!501250 tp_is_empty!18289)))

(declare-fun b!896600 () Bool)

(declare-fun e!501252 () Bool)

(assert (=> b!896600 (= e!501252 (or (not (= (size!25728 (_values!5378 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26033 thiss!1181)))) (= (size!25727 (_keys!10120 thiss!1181)) (size!25728 (_values!5378 thiss!1181)))))))

(declare-fun mapIsEmpty!29058 () Bool)

(assert (=> mapIsEmpty!29058 mapRes!29058))

(declare-fun b!896601 () Bool)

(declare-fun e!501254 () Bool)

(assert (=> b!896601 (= e!501254 e!501252)))

(declare-fun res!606307 () Bool)

(assert (=> b!896601 (=> res!606307 e!501252)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!896601 (= res!606307 (not (validMask!0 (mask!26033 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896601 (arrayContainsKey!0 (_keys!10120 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30461 0))(
  ( (Unit!30462) )
))
(declare-fun lt!404878 () Unit!30461)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52584 (_ BitVec 64) (_ BitVec 32)) Unit!30461)

(assert (=> b!896601 (= lt!404878 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10120 thiss!1181) key!785 (index!37931 lt!404880)))))

(declare-fun b!896602 () Bool)

(assert (=> b!896602 (= e!501248 (and e!501250 mapRes!29058))))

(declare-fun condMapEmpty!29058 () Bool)

(declare-fun mapDefault!29058 () ValueCell!8663)

