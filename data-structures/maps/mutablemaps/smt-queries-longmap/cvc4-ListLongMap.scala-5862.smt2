; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75734 () Bool)

(assert start!75734)

(declare-fun b!889963 () Bool)

(declare-fun b_free!15677 () Bool)

(declare-fun b_next!15677 () Bool)

(assert (=> b!889963 (= b_free!15677 (not b_next!15677))))

(declare-fun tp!55001 () Bool)

(declare-fun b_and!25935 () Bool)

(assert (=> b!889963 (= tp!55001 b_and!25935)))

(declare-fun b!889962 () Bool)

(declare-fun res!603155 () Bool)

(declare-fun e!496283 () Bool)

(assert (=> b!889962 (=> (not res!603155) (not e!496283))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889962 (= res!603155 (not (= key!785 (bvneg key!785))))))

(declare-fun e!496285 () Bool)

(declare-datatypes ((array!51976 0))(
  ( (array!51977 (arr!24990 (Array (_ BitVec 32) (_ BitVec 64))) (size!25435 (_ BitVec 32))) )
))
(declare-datatypes ((V!28971 0))(
  ( (V!28972 (val!9053 Int)) )
))
(declare-datatypes ((ValueCell!8521 0))(
  ( (ValueCellFull!8521 (v!11525 V!28971)) (EmptyCell!8521) )
))
(declare-datatypes ((array!51978 0))(
  ( (array!51979 (arr!24991 (Array (_ BitVec 32) ValueCell!8521)) (size!25436 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4058 0))(
  ( (LongMapFixedSize!4059 (defaultEntry!5226 Int) (mask!25684 (_ BitVec 32)) (extraKeys!4920 (_ BitVec 32)) (zeroValue!5024 V!28971) (minValue!5024 V!28971) (_size!2084 (_ BitVec 32)) (_keys!9905 array!51976) (_values!5211 array!51978) (_vacant!2084 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4058)

(declare-fun e!496284 () Bool)

(declare-fun tp_is_empty!18005 () Bool)

(declare-fun array_inv!19624 (array!51976) Bool)

(declare-fun array_inv!19625 (array!51978) Bool)

(assert (=> b!889963 (= e!496285 (and tp!55001 tp_is_empty!18005 (array_inv!19624 (_keys!9905 thiss!1181)) (array_inv!19625 (_values!5211 thiss!1181)) e!496284))))

(declare-fun mapIsEmpty!28562 () Bool)

(declare-fun mapRes!28562 () Bool)

(assert (=> mapIsEmpty!28562 mapRes!28562))

(declare-fun b!889964 () Bool)

(assert (=> b!889964 (= e!496283 (not true))))

(declare-fun e!496289 () Bool)

(assert (=> b!889964 e!496289))

(declare-fun res!603156 () Bool)

(assert (=> b!889964 (=> res!603156 e!496289)))

(declare-datatypes ((SeekEntryResult!8782 0))(
  ( (MissingZero!8782 (index!37498 (_ BitVec 32))) (Found!8782 (index!37499 (_ BitVec 32))) (Intermediate!8782 (undefined!9594 Bool) (index!37500 (_ BitVec 32)) (x!75583 (_ BitVec 32))) (Undefined!8782) (MissingVacant!8782 (index!37501 (_ BitVec 32))) )
))
(declare-fun lt!402134 () SeekEntryResult!8782)

(assert (=> b!889964 (= res!603156 (not (is-Found!8782 lt!402134)))))

(declare-datatypes ((Unit!30255 0))(
  ( (Unit!30256) )
))
(declare-fun lt!402135 () Unit!30255)

(declare-fun lemmaSeekEntryGivesInRangeIndex!7 (array!51976 array!51978 (_ BitVec 32) (_ BitVec 32) V!28971 V!28971 (_ BitVec 64)) Unit!30255)

(assert (=> b!889964 (= lt!402135 (lemmaSeekEntryGivesInRangeIndex!7 (_keys!9905 thiss!1181) (_values!5211 thiss!1181) (mask!25684 thiss!1181) (extraKeys!4920 thiss!1181) (zeroValue!5024 thiss!1181) (minValue!5024 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51976 (_ BitVec 32)) SeekEntryResult!8782)

(assert (=> b!889964 (= lt!402134 (seekEntry!0 key!785 (_keys!9905 thiss!1181) (mask!25684 thiss!1181)))))

(declare-fun b!889965 () Bool)

(declare-fun e!496288 () Bool)

(assert (=> b!889965 (= e!496284 (and e!496288 mapRes!28562))))

(declare-fun condMapEmpty!28562 () Bool)

(declare-fun mapDefault!28562 () ValueCell!8521)

