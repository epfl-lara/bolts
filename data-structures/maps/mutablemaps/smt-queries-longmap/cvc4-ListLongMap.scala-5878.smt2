; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75830 () Bool)

(assert start!75830)

(declare-fun b!891509 () Bool)

(declare-fun b_free!15773 () Bool)

(declare-fun b_next!15773 () Bool)

(assert (=> b!891509 (= b_free!15773 (not b_next!15773))))

(declare-fun tp!55289 () Bool)

(declare-fun b_and!26031 () Bool)

(assert (=> b!891509 (= tp!55289 b_and!26031)))

(declare-fun b!891505 () Bool)

(declare-fun e!497547 () Bool)

(declare-fun e!497549 () Bool)

(assert (=> b!891505 (= e!497547 e!497549)))

(declare-fun res!604124 () Bool)

(assert (=> b!891505 (=> res!604124 e!497549)))

(declare-datatypes ((array!52168 0))(
  ( (array!52169 (arr!25086 (Array (_ BitVec 32) (_ BitVec 64))) (size!25531 (_ BitVec 32))) )
))
(declare-datatypes ((V!29099 0))(
  ( (V!29100 (val!9101 Int)) )
))
(declare-datatypes ((ValueCell!8569 0))(
  ( (ValueCellFull!8569 (v!11573 V!29099)) (EmptyCell!8569) )
))
(declare-datatypes ((array!52170 0))(
  ( (array!52171 (arr!25087 (Array (_ BitVec 32) ValueCell!8569)) (size!25532 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4154 0))(
  ( (LongMapFixedSize!4155 (defaultEntry!5274 Int) (mask!25764 (_ BitVec 32)) (extraKeys!4968 (_ BitVec 32)) (zeroValue!5072 V!29099) (minValue!5072 V!29099) (_size!2132 (_ BitVec 32)) (_keys!9953 array!52168) (_values!5259 array!52170) (_vacant!2132 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4154)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891505 (= res!604124 (not (validMask!0 (mask!25764 thiss!1181))))))

(declare-datatypes ((tuple2!11982 0))(
  ( (tuple2!11983 (_1!6001 (_ BitVec 64)) (_2!6001 V!29099)) )
))
(declare-datatypes ((List!17833 0))(
  ( (Nil!17830) (Cons!17829 (h!18960 tuple2!11982) (t!25140 List!17833)) )
))
(declare-datatypes ((ListLongMap!10693 0))(
  ( (ListLongMap!10694 (toList!5362 List!17833)) )
))
(declare-fun lt!402743 () ListLongMap!10693)

(declare-datatypes ((SeekEntryResult!8823 0))(
  ( (MissingZero!8823 (index!37662 (_ BitVec 32))) (Found!8823 (index!37663 (_ BitVec 32))) (Intermediate!8823 (undefined!9635 Bool) (index!37664 (_ BitVec 32)) (x!75752 (_ BitVec 32))) (Undefined!8823) (MissingVacant!8823 (index!37665 (_ BitVec 32))) )
))
(declare-fun lt!402747 () SeekEntryResult!8823)

(declare-fun contains!4339 (ListLongMap!10693 (_ BitVec 64)) Bool)

(assert (=> b!891505 (contains!4339 lt!402743 (select (arr!25086 (_keys!9953 thiss!1181)) (index!37663 lt!402747)))))

(declare-fun getCurrentListMap!2615 (array!52168 array!52170 (_ BitVec 32) (_ BitVec 32) V!29099 V!29099 (_ BitVec 32) Int) ListLongMap!10693)

(assert (=> b!891505 (= lt!402743 (getCurrentListMap!2615 (_keys!9953 thiss!1181) (_values!5259 thiss!1181) (mask!25764 thiss!1181) (extraKeys!4968 thiss!1181) (zeroValue!5072 thiss!1181) (minValue!5072 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5274 thiss!1181)))))

(declare-datatypes ((Unit!30329 0))(
  ( (Unit!30330) )
))
(declare-fun lt!402744 () Unit!30329)

(declare-fun lemmaValidKeyInArrayIsInListMap!208 (array!52168 array!52170 (_ BitVec 32) (_ BitVec 32) V!29099 V!29099 (_ BitVec 32) Int) Unit!30329)

(assert (=> b!891505 (= lt!402744 (lemmaValidKeyInArrayIsInListMap!208 (_keys!9953 thiss!1181) (_values!5259 thiss!1181) (mask!25764 thiss!1181) (extraKeys!4968 thiss!1181) (zeroValue!5072 thiss!1181) (minValue!5072 thiss!1181) (index!37663 lt!402747) (defaultEntry!5274 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52168 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891505 (arrayContainsKey!0 (_keys!9953 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402746 () Unit!30329)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52168 (_ BitVec 64) (_ BitVec 32)) Unit!30329)

(assert (=> b!891505 (= lt!402746 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9953 thiss!1181) key!785 (index!37663 lt!402747)))))

(declare-fun b!891506 () Bool)

(declare-fun e!497542 () Bool)

(declare-fun tp_is_empty!18101 () Bool)

(assert (=> b!891506 (= e!497542 tp_is_empty!18101)))

(declare-fun b!891507 () Bool)

(declare-fun res!604128 () Bool)

(assert (=> b!891507 (=> res!604128 e!497549)))

(assert (=> b!891507 (= res!604128 (or (not (= (size!25532 (_values!5259 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25764 thiss!1181)))) (not (= (size!25531 (_keys!9953 thiss!1181)) (size!25532 (_values!5259 thiss!1181)))) (bvslt (mask!25764 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4968 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4968 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!28706 () Bool)

(declare-fun mapRes!28706 () Bool)

(assert (=> mapIsEmpty!28706 mapRes!28706))

(declare-fun b!891508 () Bool)

(declare-fun e!497546 () Bool)

(assert (=> b!891508 (= e!497546 (and e!497542 mapRes!28706))))

(declare-fun condMapEmpty!28706 () Bool)

(declare-fun mapDefault!28706 () ValueCell!8569)

