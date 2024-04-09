; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76478 () Bool)

(assert start!76478)

(declare-fun b!896301 () Bool)

(declare-fun b_free!15953 () Bool)

(declare-fun b_next!15953 () Bool)

(assert (=> b!896301 (= b_free!15953 (not b_next!15953))))

(declare-fun tp!55891 () Bool)

(declare-fun b_and!26263 () Bool)

(assert (=> b!896301 (= tp!55891 b_and!26263)))

(declare-fun b!896299 () Bool)

(declare-fun e!501028 () Bool)

(declare-fun e!501026 () Bool)

(assert (=> b!896299 (= e!501028 (not e!501026))))

(declare-fun res!606168 () Bool)

(assert (=> b!896299 (=> res!606168 e!501026)))

(declare-datatypes ((SeekEntryResult!8886 0))(
  ( (MissingZero!8886 (index!37914 (_ BitVec 32))) (Found!8886 (index!37915 (_ BitVec 32))) (Intermediate!8886 (undefined!9698 Bool) (index!37916 (_ BitVec 32)) (x!76312 (_ BitVec 32))) (Undefined!8886) (MissingVacant!8886 (index!37917 (_ BitVec 32))) )
))
(declare-fun lt!404769 () SeekEntryResult!8886)

(assert (=> b!896299 (= res!606168 (not (is-Found!8886 lt!404769)))))

(declare-fun e!501031 () Bool)

(assert (=> b!896299 e!501031))

(declare-fun res!606166 () Bool)

(assert (=> b!896299 (=> res!606166 e!501031)))

(assert (=> b!896299 (= res!606166 (not (is-Found!8886 lt!404769)))))

(declare-datatypes ((Unit!30455 0))(
  ( (Unit!30456) )
))
(declare-fun lt!404767 () Unit!30455)

(declare-datatypes ((array!52564 0))(
  ( (array!52565 (arr!25266 (Array (_ BitVec 32) (_ BitVec 64))) (size!25718 (_ BitVec 32))) )
))
(declare-datatypes ((V!29339 0))(
  ( (V!29340 (val!9191 Int)) )
))
(declare-datatypes ((ValueCell!8659 0))(
  ( (ValueCellFull!8659 (v!11678 V!29339)) (EmptyCell!8659) )
))
(declare-datatypes ((array!52566 0))(
  ( (array!52567 (arr!25267 (Array (_ BitVec 32) ValueCell!8659)) (size!25719 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4334 0))(
  ( (LongMapFixedSize!4335 (defaultEntry!5379 Int) (mask!26012 (_ BitVec 32)) (extraKeys!5080 (_ BitVec 32)) (zeroValue!5184 V!29339) (minValue!5184 V!29339) (_size!2222 (_ BitVec 32)) (_keys!10108 array!52564) (_values!5371 array!52566) (_vacant!2222 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4334)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!77 (array!52564 array!52566 (_ BitVec 32) (_ BitVec 32) V!29339 V!29339 (_ BitVec 64)) Unit!30455)

(assert (=> b!896299 (= lt!404767 (lemmaSeekEntryGivesInRangeIndex!77 (_keys!10108 thiss!1181) (_values!5371 thiss!1181) (mask!26012 thiss!1181) (extraKeys!5080 thiss!1181) (zeroValue!5184 thiss!1181) (minValue!5184 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52564 (_ BitVec 32)) SeekEntryResult!8886)

(assert (=> b!896299 (= lt!404769 (seekEntry!0 key!785 (_keys!10108 thiss!1181) (mask!26012 thiss!1181)))))

(declare-fun b!896300 () Bool)

(declare-fun e!501033 () Bool)

(declare-fun tp_is_empty!18281 () Bool)

(assert (=> b!896300 (= e!501033 tp_is_empty!18281)))

(declare-fun e!501030 () Bool)

(declare-fun e!501029 () Bool)

(declare-fun array_inv!19806 (array!52564) Bool)

(declare-fun array_inv!19807 (array!52566) Bool)

(assert (=> b!896301 (= e!501030 (and tp!55891 tp_is_empty!18281 (array_inv!19806 (_keys!10108 thiss!1181)) (array_inv!19807 (_values!5371 thiss!1181)) e!501029))))

(declare-fun b!896302 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!896302 (= e!501026 (validMask!0 (mask!26012 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896302 (arrayContainsKey!0 (_keys!10108 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!404768 () Unit!30455)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52564 (_ BitVec 64) (_ BitVec 32)) Unit!30455)

(assert (=> b!896302 (= lt!404768 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10108 thiss!1181) key!785 (index!37915 lt!404769)))))

(declare-fun b!896303 () Bool)

(declare-fun e!501027 () Bool)

(assert (=> b!896303 (= e!501027 tp_is_empty!18281)))

(declare-fun b!896304 () Bool)

(declare-fun mapRes!29039 () Bool)

(assert (=> b!896304 (= e!501029 (and e!501027 mapRes!29039))))

(declare-fun condMapEmpty!29039 () Bool)

(declare-fun mapDefault!29039 () ValueCell!8659)

