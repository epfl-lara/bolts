; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75826 () Bool)

(assert start!75826)

(declare-fun b!891437 () Bool)

(declare-fun b_free!15769 () Bool)

(declare-fun b_next!15769 () Bool)

(assert (=> b!891437 (= b_free!15769 (not b_next!15769))))

(declare-fun tp!55277 () Bool)

(declare-fun b_and!26027 () Bool)

(assert (=> b!891437 (= tp!55277 b_and!26027)))

(declare-fun b!891433 () Bool)

(declare-fun e!497491 () Bool)

(declare-fun tp_is_empty!18097 () Bool)

(assert (=> b!891433 (= e!497491 tp_is_empty!18097)))

(declare-fun b!891435 () Bool)

(declare-fun res!604073 () Bool)

(declare-fun e!497487 () Bool)

(assert (=> b!891435 (=> res!604073 e!497487)))

(declare-datatypes ((array!52160 0))(
  ( (array!52161 (arr!25082 (Array (_ BitVec 32) (_ BitVec 64))) (size!25527 (_ BitVec 32))) )
))
(declare-datatypes ((V!29095 0))(
  ( (V!29096 (val!9099 Int)) )
))
(declare-datatypes ((ValueCell!8567 0))(
  ( (ValueCellFull!8567 (v!11571 V!29095)) (EmptyCell!8567) )
))
(declare-datatypes ((array!52162 0))(
  ( (array!52163 (arr!25083 (Array (_ BitVec 32) ValueCell!8567)) (size!25528 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4150 0))(
  ( (LongMapFixedSize!4151 (defaultEntry!5272 Int) (mask!25762 (_ BitVec 32)) (extraKeys!4966 (_ BitVec 32)) (zeroValue!5070 V!29095) (minValue!5070 V!29095) (_size!2130 (_ BitVec 32)) (_keys!9951 array!52160) (_values!5257 array!52162) (_vacant!2130 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4150)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52160 (_ BitVec 32)) Bool)

(assert (=> b!891435 (= res!604073 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9951 thiss!1181) (mask!25762 thiss!1181))))))

(declare-fun b!891436 () Bool)

(declare-fun e!497493 () Bool)

(declare-fun e!497489 () Bool)

(assert (=> b!891436 (= e!497493 (not e!497489))))

(declare-fun res!604075 () Bool)

(assert (=> b!891436 (=> res!604075 e!497489)))

(declare-datatypes ((SeekEntryResult!8821 0))(
  ( (MissingZero!8821 (index!37654 (_ BitVec 32))) (Found!8821 (index!37655 (_ BitVec 32))) (Intermediate!8821 (undefined!9633 Bool) (index!37656 (_ BitVec 32)) (x!75750 (_ BitVec 32))) (Undefined!8821) (MissingVacant!8821 (index!37657 (_ BitVec 32))) )
))
(declare-fun lt!402708 () SeekEntryResult!8821)

(assert (=> b!891436 (= res!604075 (not (is-Found!8821 lt!402708)))))

(declare-fun e!497492 () Bool)

(assert (=> b!891436 e!497492))

(declare-fun res!604077 () Bool)

(assert (=> b!891436 (=> res!604077 e!497492)))

(assert (=> b!891436 (= res!604077 (not (is-Found!8821 lt!402708)))))

(declare-datatypes ((Unit!30325 0))(
  ( (Unit!30326) )
))
(declare-fun lt!402707 () Unit!30325)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!41 (array!52160 array!52162 (_ BitVec 32) (_ BitVec 32) V!29095 V!29095 (_ BitVec 64)) Unit!30325)

(assert (=> b!891436 (= lt!402707 (lemmaSeekEntryGivesInRangeIndex!41 (_keys!9951 thiss!1181) (_values!5257 thiss!1181) (mask!25762 thiss!1181) (extraKeys!4966 thiss!1181) (zeroValue!5070 thiss!1181) (minValue!5070 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52160 (_ BitVec 32)) SeekEntryResult!8821)

(assert (=> b!891436 (= lt!402708 (seekEntry!0 key!785 (_keys!9951 thiss!1181) (mask!25762 thiss!1181)))))

(declare-fun e!497494 () Bool)

(declare-fun e!497488 () Bool)

(declare-fun array_inv!19680 (array!52160) Bool)

(declare-fun array_inv!19681 (array!52162) Bool)

(assert (=> b!891437 (= e!497494 (and tp!55277 tp_is_empty!18097 (array_inv!19680 (_keys!9951 thiss!1181)) (array_inv!19681 (_values!5257 thiss!1181)) e!497488))))

(declare-fun b!891438 () Bool)

(assert (=> b!891438 (= e!497489 e!497487)))

(declare-fun res!604078 () Bool)

(assert (=> b!891438 (=> res!604078 e!497487)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891438 (= res!604078 (not (validMask!0 (mask!25762 thiss!1181))))))

(declare-datatypes ((tuple2!11978 0))(
  ( (tuple2!11979 (_1!5999 (_ BitVec 64)) (_2!5999 V!29095)) )
))
(declare-datatypes ((List!17830 0))(
  ( (Nil!17827) (Cons!17826 (h!18957 tuple2!11978) (t!25137 List!17830)) )
))
(declare-datatypes ((ListLongMap!10689 0))(
  ( (ListLongMap!10690 (toList!5360 List!17830)) )
))
(declare-fun lt!402709 () ListLongMap!10689)

(declare-fun contains!4337 (ListLongMap!10689 (_ BitVec 64)) Bool)

(assert (=> b!891438 (contains!4337 lt!402709 (select (arr!25082 (_keys!9951 thiss!1181)) (index!37655 lt!402708)))))

(declare-fun getCurrentListMap!2613 (array!52160 array!52162 (_ BitVec 32) (_ BitVec 32) V!29095 V!29095 (_ BitVec 32) Int) ListLongMap!10689)

(assert (=> b!891438 (= lt!402709 (getCurrentListMap!2613 (_keys!9951 thiss!1181) (_values!5257 thiss!1181) (mask!25762 thiss!1181) (extraKeys!4966 thiss!1181) (zeroValue!5070 thiss!1181) (minValue!5070 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5272 thiss!1181)))))

(declare-fun lt!402706 () Unit!30325)

(declare-fun lemmaValidKeyInArrayIsInListMap!206 (array!52160 array!52162 (_ BitVec 32) (_ BitVec 32) V!29095 V!29095 (_ BitVec 32) Int) Unit!30325)

(assert (=> b!891438 (= lt!402706 (lemmaValidKeyInArrayIsInListMap!206 (_keys!9951 thiss!1181) (_values!5257 thiss!1181) (mask!25762 thiss!1181) (extraKeys!4966 thiss!1181) (zeroValue!5070 thiss!1181) (minValue!5070 thiss!1181) (index!37655 lt!402708) (defaultEntry!5272 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52160 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891438 (arrayContainsKey!0 (_keys!9951 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402710 () Unit!30325)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52160 (_ BitVec 64) (_ BitVec 32)) Unit!30325)

(assert (=> b!891438 (= lt!402710 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9951 thiss!1181) key!785 (index!37655 lt!402708)))))

(declare-fun b!891439 () Bool)

(declare-fun res!604074 () Bool)

(assert (=> b!891439 (=> (not res!604074) (not e!497493))))

(assert (=> b!891439 (= res!604074 (not (= key!785 (bvneg key!785))))))

(declare-fun b!891440 () Bool)

(declare-fun e!497490 () Bool)

(assert (=> b!891440 (= e!497490 tp_is_empty!18097)))

(declare-fun mapIsEmpty!28700 () Bool)

(declare-fun mapRes!28700 () Bool)

(assert (=> mapIsEmpty!28700 mapRes!28700))

(declare-fun b!891441 () Bool)

(assert (=> b!891441 (= e!497488 (and e!497491 mapRes!28700))))

(declare-fun condMapEmpty!28700 () Bool)

(declare-fun mapDefault!28700 () ValueCell!8567)

