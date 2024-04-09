; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75940 () Bool)

(assert start!75940)

(declare-fun b!893026 () Bool)

(declare-fun b_free!15847 () Bool)

(declare-fun b_next!15847 () Bool)

(assert (=> b!893026 (= b_free!15847 (not b_next!15847))))

(declare-fun tp!55513 () Bool)

(declare-fun b_and!26127 () Bool)

(assert (=> b!893026 (= tp!55513 b_and!26127)))

(declare-fun res!604940 () Bool)

(declare-fun e!498717 () Bool)

(assert (=> start!75940 (=> (not res!604940) (not e!498717))))

(declare-datatypes ((array!52318 0))(
  ( (array!52319 (arr!25160 (Array (_ BitVec 32) (_ BitVec 64))) (size!25605 (_ BitVec 32))) )
))
(declare-datatypes ((V!29199 0))(
  ( (V!29200 (val!9138 Int)) )
))
(declare-datatypes ((ValueCell!8606 0))(
  ( (ValueCellFull!8606 (v!11613 V!29199)) (EmptyCell!8606) )
))
(declare-datatypes ((array!52320 0))(
  ( (array!52321 (arr!25161 (Array (_ BitVec 32) ValueCell!8606)) (size!25606 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4228 0))(
  ( (LongMapFixedSize!4229 (defaultEntry!5314 Int) (mask!25833 (_ BitVec 32)) (extraKeys!5009 (_ BitVec 32)) (zeroValue!5113 V!29199) (minValue!5113 V!29199) (_size!2169 (_ BitVec 32)) (_keys!9995 array!52318) (_values!5300 array!52320) (_vacant!2169 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4228)

(declare-fun valid!1623 (LongMapFixedSize!4228) Bool)

(assert (=> start!75940 (= res!604940 (valid!1623 thiss!1181))))

(assert (=> start!75940 e!498717))

(declare-fun e!498718 () Bool)

(assert (=> start!75940 e!498718))

(assert (=> start!75940 true))

(declare-fun b!893019 () Bool)

(declare-fun e!498715 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(declare-datatypes ((Option!451 0))(
  ( (Some!450 (v!11614 V!29199)) (None!449) )
))
(declare-fun isDefined!326 (Option!451) Bool)

(declare-datatypes ((tuple2!12032 0))(
  ( (tuple2!12033 (_1!6026 (_ BitVec 64)) (_2!6026 V!29199)) )
))
(declare-datatypes ((List!17873 0))(
  ( (Nil!17870) (Cons!17869 (h!19000 tuple2!12032) (t!25198 List!17873)) )
))
(declare-fun getValueByKey!445 (List!17873 (_ BitVec 64)) Option!451)

(declare-datatypes ((ListLongMap!10743 0))(
  ( (ListLongMap!10744 (toList!5387 List!17873)) )
))
(declare-fun map!12210 (LongMapFixedSize!4228) ListLongMap!10743)

(assert (=> b!893019 (= e!498715 (isDefined!326 (getValueByKey!445 (toList!5387 (map!12210 thiss!1181)) key!785)))))

(declare-fun b!893020 () Bool)

(assert (=> b!893020 (= e!498717 (not e!498715))))

(declare-fun res!604937 () Bool)

(assert (=> b!893020 (=> res!604937 e!498715)))

(declare-datatypes ((SeekEntryResult!8855 0))(
  ( (MissingZero!8855 (index!37790 (_ BitVec 32))) (Found!8855 (index!37791 (_ BitVec 32))) (Intermediate!8855 (undefined!9667 Bool) (index!37792 (_ BitVec 32)) (x!75916 (_ BitVec 32))) (Undefined!8855) (MissingVacant!8855 (index!37793 (_ BitVec 32))) )
))
(declare-fun lt!403497 () SeekEntryResult!8855)

(assert (=> b!893020 (= res!604937 (is-Found!8855 lt!403497))))

(declare-fun e!498720 () Bool)

(assert (=> b!893020 e!498720))

(declare-fun res!604938 () Bool)

(assert (=> b!893020 (=> res!604938 e!498720)))

(assert (=> b!893020 (= res!604938 (not (is-Found!8855 lt!403497)))))

(declare-datatypes ((Unit!30391 0))(
  ( (Unit!30392) )
))
(declare-fun lt!403496 () Unit!30391)

(declare-fun lemmaSeekEntryGivesInRangeIndex!67 (array!52318 array!52320 (_ BitVec 32) (_ BitVec 32) V!29199 V!29199 (_ BitVec 64)) Unit!30391)

(assert (=> b!893020 (= lt!403496 (lemmaSeekEntryGivesInRangeIndex!67 (_keys!9995 thiss!1181) (_values!5300 thiss!1181) (mask!25833 thiss!1181) (extraKeys!5009 thiss!1181) (zeroValue!5113 thiss!1181) (minValue!5113 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52318 (_ BitVec 32)) SeekEntryResult!8855)

(assert (=> b!893020 (= lt!403497 (seekEntry!0 key!785 (_keys!9995 thiss!1181) (mask!25833 thiss!1181)))))

(declare-fun b!893021 () Bool)

(declare-fun e!498721 () Bool)

(declare-fun e!498719 () Bool)

(declare-fun mapRes!28820 () Bool)

(assert (=> b!893021 (= e!498721 (and e!498719 mapRes!28820))))

(declare-fun condMapEmpty!28820 () Bool)

(declare-fun mapDefault!28820 () ValueCell!8606)

