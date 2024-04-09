; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75886 () Bool)

(assert start!75886)

(declare-fun b!892575 () Bool)

(declare-fun b_free!15829 () Bool)

(declare-fun b_next!15829 () Bool)

(assert (=> b!892575 (= b_free!15829 (not b_next!15829))))

(declare-fun tp!55457 () Bool)

(declare-fun b_and!26099 () Bool)

(assert (=> b!892575 (= tp!55457 b_and!26099)))

(declare-fun b!892567 () Bool)

(declare-fun e!498361 () Bool)

(declare-datatypes ((V!29175 0))(
  ( (V!29176 (val!9129 Int)) )
))
(declare-fun call!39551 () V!29175)

(declare-datatypes ((array!52280 0))(
  ( (array!52281 (arr!25142 (Array (_ BitVec 32) (_ BitVec 64))) (size!25587 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8597 0))(
  ( (ValueCellFull!8597 (v!11601 V!29175)) (EmptyCell!8597) )
))
(declare-datatypes ((array!52282 0))(
  ( (array!52283 (arr!25143 (Array (_ BitVec 32) ValueCell!8597)) (size!25588 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4210 0))(
  ( (LongMapFixedSize!4211 (defaultEntry!5302 Int) (mask!25812 (_ BitVec 32)) (extraKeys!4996 (_ BitVec 32)) (zeroValue!5100 V!29175) (minValue!5100 V!29175) (_size!2160 (_ BitVec 32)) (_keys!9981 array!52280) (_values!5287 array!52282) (_vacant!2160 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4210)

(assert (=> b!892567 (= e!498361 (= call!39551 (minValue!5100 thiss!1181)))))

(declare-fun b!892568 () Bool)

(declare-fun e!498362 () Bool)

(declare-fun tp_is_empty!18157 () Bool)

(assert (=> b!892568 (= e!498362 tp_is_empty!18157)))

(declare-fun e!498368 () Bool)

(declare-datatypes ((SeekEntryResult!8846 0))(
  ( (MissingZero!8846 (index!37754 (_ BitVec 32))) (Found!8846 (index!37755 (_ BitVec 32))) (Intermediate!8846 (undefined!9658 Bool) (index!37756 (_ BitVec 32)) (x!75869 (_ BitVec 32))) (Undefined!8846) (MissingVacant!8846 (index!37757 (_ BitVec 32))) )
))
(declare-fun lt!403259 () SeekEntryResult!8846)

(declare-fun b!892569 () Bool)

(declare-fun get!13244 (ValueCell!8597 V!29175) V!29175)

(declare-fun dynLambda!1293 (Int (_ BitVec 64)) V!29175)

(assert (=> b!892569 (= e!498368 (= call!39551 (get!13244 (select (arr!25143 (_values!5287 thiss!1181)) (index!37755 lt!403259)) (dynLambda!1293 (defaultEntry!5302 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!892570 () Bool)

(declare-fun res!604756 () Bool)

(assert (=> b!892570 (=> (not res!604756) (not e!498361))))

(assert (=> b!892570 (= res!604756 (not (= (bvand (extraKeys!4996 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!892570 (= e!498368 e!498361)))

(declare-fun b!892571 () Bool)

(declare-fun e!498367 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892571 (= e!498367 (inRange!0 (index!37755 lt!403259) (mask!25812 thiss!1181)))))

(declare-fun bm!39548 () Bool)

(declare-fun call!39552 () V!29175)

(declare-datatypes ((tuple2!12026 0))(
  ( (tuple2!12027 (_1!6023 (_ BitVec 64)) (_2!6023 V!29175)) )
))
(declare-datatypes ((List!17869 0))(
  ( (Nil!17866) (Cons!17865 (h!18996 tuple2!12026) (t!25190 List!17869)) )
))
(declare-datatypes ((ListLongMap!10737 0))(
  ( (ListLongMap!10738 (toList!5384 List!17869)) )
))
(declare-fun lt!403257 () ListLongMap!10737)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun apply!404 (ListLongMap!10737 (_ BitVec 64)) V!29175)

(assert (=> bm!39548 (= call!39552 (apply!404 lt!403257 key!785))))

(declare-fun b!892572 () Bool)

(declare-fun e!498369 () Bool)

(assert (=> b!892572 (= e!498369 e!498368)))

(declare-fun c!93904 () Bool)

(assert (=> b!892572 (= c!93904 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!892573 () Bool)

(declare-fun e!498365 () Bool)

(assert (=> b!892573 (= e!498365 tp_is_empty!18157)))

(declare-fun res!604760 () Bool)

(declare-fun e!498364 () Bool)

(assert (=> start!75886 (=> (not res!604760) (not e!498364))))

(declare-fun valid!1617 (LongMapFixedSize!4210) Bool)

(assert (=> start!75886 (= res!604760 (valid!1617 thiss!1181))))

(assert (=> start!75886 e!498364))

(declare-fun e!498363 () Bool)

(assert (=> start!75886 e!498363))

(assert (=> start!75886 true))

(declare-fun b!892574 () Bool)

(declare-fun e!498366 () Bool)

(declare-fun e!498360 () Bool)

(assert (=> b!892574 (= e!498366 e!498360)))

(declare-fun res!604759 () Bool)

(assert (=> b!892574 (=> res!604759 e!498360)))

(declare-fun contains!4361 (LongMapFixedSize!4210 (_ BitVec 64)) Bool)

(assert (=> b!892574 (= res!604759 (not (contains!4361 thiss!1181 key!785)))))

(assert (=> b!892574 e!498369))

(declare-fun c!93905 () Bool)

(assert (=> b!892574 (= c!93905 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!30373 0))(
  ( (Unit!30374) )
))
(declare-fun lt!403256 () Unit!30373)

(declare-fun lemmaKeyInListMapThenSameValueInArray!7 (array!52280 array!52282 (_ BitVec 32) (_ BitVec 32) V!29175 V!29175 (_ BitVec 64) (_ BitVec 32) Int) Unit!30373)

(assert (=> b!892574 (= lt!403256 (lemmaKeyInListMapThenSameValueInArray!7 (_keys!9981 thiss!1181) (_values!5287 thiss!1181) (mask!25812 thiss!1181) (extraKeys!4996 thiss!1181) (zeroValue!5100 thiss!1181) (minValue!5100 thiss!1181) key!785 (index!37755 lt!403259) (defaultEntry!5302 thiss!1181)))))

(declare-fun contains!4362 (ListLongMap!10737 (_ BitVec 64)) Bool)

(assert (=> b!892574 (contains!4362 lt!403257 (select (arr!25142 (_keys!9981 thiss!1181)) (index!37755 lt!403259)))))

(declare-fun getCurrentListMap!2634 (array!52280 array!52282 (_ BitVec 32) (_ BitVec 32) V!29175 V!29175 (_ BitVec 32) Int) ListLongMap!10737)

(assert (=> b!892574 (= lt!403257 (getCurrentListMap!2634 (_keys!9981 thiss!1181) (_values!5287 thiss!1181) (mask!25812 thiss!1181) (extraKeys!4996 thiss!1181) (zeroValue!5100 thiss!1181) (minValue!5100 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5302 thiss!1181)))))

(declare-fun lt!403258 () Unit!30373)

(declare-fun lemmaValidKeyInArrayIsInListMap!227 (array!52280 array!52282 (_ BitVec 32) (_ BitVec 32) V!29175 V!29175 (_ BitVec 32) Int) Unit!30373)

(assert (=> b!892574 (= lt!403258 (lemmaValidKeyInArrayIsInListMap!227 (_keys!9981 thiss!1181) (_values!5287 thiss!1181) (mask!25812 thiss!1181) (extraKeys!4996 thiss!1181) (zeroValue!5100 thiss!1181) (minValue!5100 thiss!1181) (index!37755 lt!403259) (defaultEntry!5302 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52280 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892574 (arrayContainsKey!0 (_keys!9981 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403260 () Unit!30373)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52280 (_ BitVec 64) (_ BitVec 32)) Unit!30373)

(assert (=> b!892574 (= lt!403260 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9981 thiss!1181) key!785 (index!37755 lt!403259)))))

(declare-fun e!498359 () Bool)

(declare-fun array_inv!19726 (array!52280) Bool)

(declare-fun array_inv!19727 (array!52282) Bool)

(assert (=> b!892575 (= e!498363 (and tp!55457 tp_is_empty!18157 (array_inv!19726 (_keys!9981 thiss!1181)) (array_inv!19727 (_values!5287 thiss!1181)) e!498359))))

(declare-fun b!892576 () Bool)

(declare-fun e!498371 () Bool)

(assert (=> b!892576 (= e!498371 (= call!39552 (zeroValue!5100 thiss!1181)))))

(declare-fun bm!39549 () Bool)

(assert (=> bm!39549 (= call!39551 call!39552)))

(declare-fun b!892577 () Bool)

(declare-fun res!604761 () Bool)

(assert (=> b!892577 (=> (not res!604761) (not e!498364))))

(assert (=> b!892577 (= res!604761 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28790 () Bool)

(declare-fun mapRes!28790 () Bool)

(assert (=> mapIsEmpty!28790 mapRes!28790))

(declare-fun b!892578 () Bool)

(declare-datatypes ((Option!448 0))(
  ( (Some!447 (v!11602 V!29175)) (None!446) )
))
(declare-fun isDefined!323 (Option!448) Bool)

(declare-fun getValueByKey!442 (List!17869 (_ BitVec 64)) Option!448)

(declare-fun map!12201 (LongMapFixedSize!4210) ListLongMap!10737)

(assert (=> b!892578 (= e!498360 (isDefined!323 (getValueByKey!442 (toList!5384 (map!12201 thiss!1181)) key!785)))))

(declare-fun b!892579 () Bool)

(assert (=> b!892579 (= e!498359 (and e!498365 mapRes!28790))))

(declare-fun condMapEmpty!28790 () Bool)

(declare-fun mapDefault!28790 () ValueCell!8597)

