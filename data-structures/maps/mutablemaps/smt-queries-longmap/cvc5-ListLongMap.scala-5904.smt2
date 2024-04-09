; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76382 () Bool)

(assert start!76382)

(declare-fun b!895735 () Bool)

(declare-fun b_free!15925 () Bool)

(declare-fun b_next!15925 () Bool)

(assert (=> b!895735 (= b_free!15925 (not b_next!15925))))

(declare-fun tp!55794 () Bool)

(declare-fun b_and!26235 () Bool)

(assert (=> b!895735 (= tp!55794 b_and!26235)))

(declare-fun res!605931 () Bool)

(declare-fun e!500572 () Bool)

(assert (=> start!76382 (=> (not res!605931) (not e!500572))))

(declare-datatypes ((array!52500 0))(
  ( (array!52501 (arr!25238 (Array (_ BitVec 32) (_ BitVec 64))) (size!25689 (_ BitVec 32))) )
))
(declare-datatypes ((V!29303 0))(
  ( (V!29304 (val!9177 Int)) )
))
(declare-datatypes ((ValueCell!8645 0))(
  ( (ValueCellFull!8645 (v!11664 V!29303)) (EmptyCell!8645) )
))
(declare-datatypes ((array!52502 0))(
  ( (array!52503 (arr!25239 (Array (_ BitVec 32) ValueCell!8645)) (size!25690 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4306 0))(
  ( (LongMapFixedSize!4307 (defaultEntry!5365 Int) (mask!25972 (_ BitVec 32)) (extraKeys!5061 (_ BitVec 32)) (zeroValue!5165 V!29303) (minValue!5165 V!29303) (_size!2208 (_ BitVec 32)) (_keys!10082 array!52500) (_values!5352 array!52502) (_vacant!2208 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4306)

(declare-fun valid!1652 (LongMapFixedSize!4306) Bool)

(assert (=> start!76382 (= res!605931 (valid!1652 thiss!1181))))

(assert (=> start!76382 e!500572))

(declare-fun e!500569 () Bool)

(assert (=> start!76382 e!500569))

(assert (=> start!76382 true))

(declare-fun b!895729 () Bool)

(declare-fun res!605930 () Bool)

(assert (=> b!895729 (=> (not res!605930) (not e!500572))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895729 (= res!605930 (not (= key!785 (bvneg key!785))))))

(declare-fun b!895730 () Bool)

(declare-datatypes ((SeekEntryResult!8876 0))(
  ( (MissingZero!8876 (index!37874 (_ BitVec 32))) (Found!8876 (index!37875 (_ BitVec 32))) (Intermediate!8876 (undefined!9688 Bool) (index!37876 (_ BitVec 32)) (x!76229 (_ BitVec 32))) (Undefined!8876) (MissingVacant!8876 (index!37877 (_ BitVec 32))) )
))
(declare-fun lt!404570 () SeekEntryResult!8876)

(assert (=> b!895730 (= e!500572 (not (or (not (is-Found!8876 lt!404570)) (bvsge (index!37875 lt!404570) #b00000000000000000000000000000000))))))

(declare-fun e!500570 () Bool)

(assert (=> b!895730 e!500570))

(declare-fun res!605929 () Bool)

(assert (=> b!895730 (=> res!605929 e!500570)))

(assert (=> b!895730 (= res!605929 (not (is-Found!8876 lt!404570)))))

(declare-datatypes ((Unit!30439 0))(
  ( (Unit!30440) )
))
(declare-fun lt!404571 () Unit!30439)

(declare-fun lemmaSeekEntryGivesInRangeIndex!69 (array!52500 array!52502 (_ BitVec 32) (_ BitVec 32) V!29303 V!29303 (_ BitVec 64)) Unit!30439)

(assert (=> b!895730 (= lt!404571 (lemmaSeekEntryGivesInRangeIndex!69 (_keys!10082 thiss!1181) (_values!5352 thiss!1181) (mask!25972 thiss!1181) (extraKeys!5061 thiss!1181) (zeroValue!5165 thiss!1181) (minValue!5165 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52500 (_ BitVec 32)) SeekEntryResult!8876)

(assert (=> b!895730 (= lt!404570 (seekEntry!0 key!785 (_keys!10082 thiss!1181) (mask!25972 thiss!1181)))))

(declare-fun b!895731 () Bool)

(declare-fun e!500567 () Bool)

(declare-fun tp_is_empty!18253 () Bool)

(assert (=> b!895731 (= e!500567 tp_is_empty!18253)))

(declare-fun b!895732 () Bool)

(declare-fun e!500566 () Bool)

(declare-fun mapRes!28984 () Bool)

(assert (=> b!895732 (= e!500566 (and e!500567 mapRes!28984))))

(declare-fun condMapEmpty!28984 () Bool)

(declare-fun mapDefault!28984 () ValueCell!8645)

