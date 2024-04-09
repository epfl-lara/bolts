; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90128 () Bool)

(assert start!90128)

(declare-fun b!1032060 () Bool)

(declare-fun b_free!20699 () Bool)

(declare-fun b_next!20699 () Bool)

(assert (=> b!1032060 (= b_free!20699 (not b_next!20699))))

(declare-fun tp!73168 () Bool)

(declare-fun b_and!33183 () Bool)

(assert (=> b!1032060 (= tp!73168 b_and!33183)))

(declare-fun mapNonEmpty!38082 () Bool)

(declare-fun mapRes!38082 () Bool)

(declare-fun tp!73169 () Bool)

(declare-fun e!583080 () Bool)

(assert (=> mapNonEmpty!38082 (= mapRes!38082 (and tp!73169 e!583080))))

(declare-fun mapKey!38082 () (_ BitVec 32))

(declare-datatypes ((V!37431 0))(
  ( (V!37432 (val!12260 Int)) )
))
(declare-datatypes ((ValueCell!11506 0))(
  ( (ValueCellFull!11506 (v!14838 V!37431)) (EmptyCell!11506) )
))
(declare-fun mapValue!38082 () ValueCell!11506)

(declare-fun mapRest!38082 () (Array (_ BitVec 32) ValueCell!11506))

(declare-datatypes ((array!64886 0))(
  ( (array!64887 (arr!31241 (Array (_ BitVec 32) (_ BitVec 64))) (size!31759 (_ BitVec 32))) )
))
(declare-datatypes ((array!64888 0))(
  ( (array!64889 (arr!31242 (Array (_ BitVec 32) ValueCell!11506)) (size!31760 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5606 0))(
  ( (LongMapFixedSize!5607 (defaultEntry!6177 Int) (mask!29980 (_ BitVec 32)) (extraKeys!5909 (_ BitVec 32)) (zeroValue!6013 V!37431) (minValue!6013 V!37431) (_size!2858 (_ BitVec 32)) (_keys!11347 array!64886) (_values!6200 array!64888) (_vacant!2858 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5606)

(assert (=> mapNonEmpty!38082 (= (arr!31242 (_values!6200 thiss!1427)) (store mapRest!38082 mapKey!38082 mapValue!38082))))

(declare-fun b!1032058 () Bool)

(declare-fun e!583086 () Bool)

(assert (=> b!1032058 (= e!583086 false)))

(declare-fun b!1032059 () Bool)

(declare-datatypes ((Unit!33793 0))(
  ( (Unit!33794) )
))
(declare-fun e!583084 () Unit!33793)

(declare-fun Unit!33795 () Unit!33793)

(assert (=> b!1032059 (= e!583084 Unit!33795)))

(declare-fun lt!455967 () Unit!33793)

(declare-datatypes ((tuple2!15830 0))(
  ( (tuple2!15831 (_1!7925 Unit!33793) (_2!7925 LongMapFixedSize!5606)) )
))
(declare-fun lt!455961 () tuple2!15830)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun lemmaKeyInListMapIsInArray!357 (array!64886 array!64888 (_ BitVec 32) (_ BitVec 32) V!37431 V!37431 (_ BitVec 64) Int) Unit!33793)

(assert (=> b!1032059 (= lt!455967 (lemmaKeyInListMapIsInArray!357 (_keys!11347 (_2!7925 lt!455961)) (_values!6200 (_2!7925 lt!455961)) (mask!29980 (_2!7925 lt!455961)) (extraKeys!5909 (_2!7925 lt!455961)) (zeroValue!6013 (_2!7925 lt!455961)) (minValue!6013 (_2!7925 lt!455961)) key!909 (defaultEntry!6177 (_2!7925 lt!455961))))))

(declare-fun c!104249 () Bool)

(assert (=> b!1032059 (= c!104249 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!689980 () Bool)

(declare-fun e!583083 () Bool)

(assert (=> b!1032059 (= res!689980 e!583083)))

(assert (=> b!1032059 (=> (not res!689980) (not e!583086))))

(assert (=> b!1032059 e!583086))

(declare-fun tp_is_empty!24419 () Bool)

(declare-fun e!583087 () Bool)

(declare-fun e!583082 () Bool)

(declare-fun array_inv!24021 (array!64886) Bool)

(declare-fun array_inv!24022 (array!64888) Bool)

(assert (=> b!1032060 (= e!583087 (and tp!73168 tp_is_empty!24419 (array_inv!24021 (_keys!11347 thiss!1427)) (array_inv!24022 (_values!6200 thiss!1427)) e!583082))))

(declare-fun b!1032061 () Bool)

(declare-fun e!583078 () Bool)

(declare-fun e!583085 () Bool)

(assert (=> b!1032061 (= e!583078 e!583085)))

(declare-fun res!689982 () Bool)

(assert (=> b!1032061 (=> (not res!689982) (not e!583085))))

(declare-datatypes ((SeekEntryResult!9716 0))(
  ( (MissingZero!9716 (index!41234 (_ BitVec 32))) (Found!9716 (index!41235 (_ BitVec 32))) (Intermediate!9716 (undefined!10528 Bool) (index!41236 (_ BitVec 32)) (x!91935 (_ BitVec 32))) (Undefined!9716) (MissingVacant!9716 (index!41237 (_ BitVec 32))) )
))
(declare-fun lt!455969 () SeekEntryResult!9716)

(assert (=> b!1032061 (= res!689982 (is-Found!9716 lt!455969))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64886 (_ BitVec 32)) SeekEntryResult!9716)

(assert (=> b!1032061 (= lt!455969 (seekEntry!0 key!909 (_keys!11347 thiss!1427) (mask!29980 thiss!1427)))))

(declare-fun b!1032062 () Bool)

(assert (=> b!1032062 (= e!583080 tp_is_empty!24419)))

(declare-fun b!1032063 () Bool)

(declare-fun e!583079 () Bool)

(assert (=> b!1032063 (= e!583082 (and e!583079 mapRes!38082))))

(declare-fun condMapEmpty!38082 () Bool)

(declare-fun mapDefault!38082 () ValueCell!11506)

