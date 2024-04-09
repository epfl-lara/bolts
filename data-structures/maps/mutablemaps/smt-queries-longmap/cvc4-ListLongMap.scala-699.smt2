; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16714 () Bool)

(assert start!16714)

(declare-fun b!167404 () Bool)

(declare-fun b_free!4007 () Bool)

(declare-fun b_next!4007 () Bool)

(assert (=> b!167404 (= b_free!4007 (not b_next!4007))))

(declare-fun tp!14622 () Bool)

(declare-fun b_and!10439 () Bool)

(assert (=> b!167404 (= tp!14622 b_and!10439)))

(declare-fun e!109954 () Bool)

(declare-fun tp_is_empty!3809 () Bool)

(declare-fun e!109953 () Bool)

(declare-datatypes ((V!4725 0))(
  ( (V!4726 (val!1949 Int)) )
))
(declare-datatypes ((ValueCell!1561 0))(
  ( (ValueCellFull!1561 (v!3810 V!4725)) (EmptyCell!1561) )
))
(declare-datatypes ((array!6714 0))(
  ( (array!6715 (arr!3192 (Array (_ BitVec 32) (_ BitVec 64))) (size!3480 (_ BitVec 32))) )
))
(declare-datatypes ((array!6716 0))(
  ( (array!6717 (arr!3193 (Array (_ BitVec 32) ValueCell!1561)) (size!3481 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2030 0))(
  ( (LongMapFixedSize!2031 (defaultEntry!3457 Int) (mask!8204 (_ BitVec 32)) (extraKeys!3198 (_ BitVec 32)) (zeroValue!3300 V!4725) (minValue!3300 V!4725) (_size!1064 (_ BitVec 32)) (_keys!5282 array!6714) (_values!3440 array!6716) (_vacant!1064 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2030)

(declare-fun array_inv!2049 (array!6714) Bool)

(declare-fun array_inv!2050 (array!6716) Bool)

(assert (=> b!167404 (= e!109954 (and tp!14622 tp_is_empty!3809 (array_inv!2049 (_keys!5282 thiss!1248)) (array_inv!2050 (_values!3440 thiss!1248)) e!109953))))

(declare-fun b!167405 () Bool)

(declare-datatypes ((Unit!5126 0))(
  ( (Unit!5127) )
))
(declare-fun e!109957 () Unit!5126)

(declare-fun lt!83718 () Unit!5126)

(assert (=> b!167405 (= e!109957 lt!83718)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!108 (array!6714 array!6716 (_ BitVec 32) (_ BitVec 32) V!4725 V!4725 (_ BitVec 64) Int) Unit!5126)

(assert (=> b!167405 (= lt!83718 (lemmaInListMapThenSeekEntryOrOpenFindsIt!108 (_keys!5282 thiss!1248) (_values!3440 thiss!1248) (mask!8204 thiss!1248) (extraKeys!3198 thiss!1248) (zeroValue!3300 thiss!1248) (minValue!3300 thiss!1248) key!828 (defaultEntry!3457 thiss!1248)))))

(declare-fun res!79642 () Bool)

(declare-datatypes ((SeekEntryResult!490 0))(
  ( (MissingZero!490 (index!4128 (_ BitVec 32))) (Found!490 (index!4129 (_ BitVec 32))) (Intermediate!490 (undefined!1302 Bool) (index!4130 (_ BitVec 32)) (x!18534 (_ BitVec 32))) (Undefined!490) (MissingVacant!490 (index!4131 (_ BitVec 32))) )
))
(declare-fun lt!83719 () SeekEntryResult!490)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167405 (= res!79642 (inRange!0 (index!4129 lt!83719) (mask!8204 thiss!1248)))))

(declare-fun e!109955 () Bool)

(assert (=> b!167405 (=> (not res!79642) (not e!109955))))

(assert (=> b!167405 e!109955))

(declare-fun b!167406 () Bool)

(declare-fun e!109958 () Bool)

(assert (=> b!167406 (= e!109958 false)))

(declare-fun lt!83716 () Bool)

(declare-datatypes ((List!2151 0))(
  ( (Nil!2148) (Cons!2147 (h!2764 (_ BitVec 64)) (t!6961 List!2151)) )
))
(declare-fun arrayNoDuplicates!0 (array!6714 (_ BitVec 32) List!2151) Bool)

(assert (=> b!167406 (= lt!83716 (arrayNoDuplicates!0 (_keys!5282 thiss!1248) #b00000000000000000000000000000000 Nil!2148))))

(declare-fun res!79644 () Bool)

(declare-fun e!109952 () Bool)

(assert (=> start!16714 (=> (not res!79644) (not e!109952))))

(declare-fun valid!879 (LongMapFixedSize!2030) Bool)

(assert (=> start!16714 (= res!79644 (valid!879 thiss!1248))))

(assert (=> start!16714 e!109952))

(assert (=> start!16714 e!109954))

(assert (=> start!16714 true))

(declare-fun b!167407 () Bool)

(declare-fun e!109956 () Bool)

(assert (=> b!167407 (= e!109956 tp_is_empty!3809)))

(declare-fun b!167408 () Bool)

(declare-fun e!109960 () Bool)

(assert (=> b!167408 (= e!109960 tp_is_empty!3809)))

(declare-fun b!167409 () Bool)

(declare-fun mapRes!6432 () Bool)

(assert (=> b!167409 (= e!109953 (and e!109960 mapRes!6432))))

(declare-fun condMapEmpty!6432 () Bool)

(declare-fun mapDefault!6432 () ValueCell!1561)

