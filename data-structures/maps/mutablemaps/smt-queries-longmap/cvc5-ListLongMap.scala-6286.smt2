; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80422 () Bool)

(assert start!80422)

(declare-fun b!944091 () Bool)

(declare-fun b_free!18037 () Bool)

(declare-fun b_next!18037 () Bool)

(assert (=> b!944091 (= b_free!18037 (not b_next!18037))))

(declare-fun tp!62622 () Bool)

(declare-fun b_and!29473 () Bool)

(assert (=> b!944091 (= tp!62622 b_and!29473)))

(declare-fun b!944085 () Bool)

(declare-fun e!530918 () Bool)

(declare-fun tp_is_empty!20545 () Bool)

(assert (=> b!944085 (= e!530918 tp_is_empty!20545)))

(declare-fun b!944086 () Bool)

(declare-fun res!634339 () Bool)

(declare-fun e!530913 () Bool)

(assert (=> b!944086 (=> (not res!634339) (not e!530913))))

(declare-datatypes ((V!32359 0))(
  ( (V!32360 (val!10323 Int)) )
))
(declare-datatypes ((ValueCell!9791 0))(
  ( (ValueCellFull!9791 (v!12855 V!32359)) (EmptyCell!9791) )
))
(declare-datatypes ((array!57080 0))(
  ( (array!57081 (arr!27461 (Array (_ BitVec 32) ValueCell!9791)) (size!27928 (_ BitVec 32))) )
))
(declare-datatypes ((array!57082 0))(
  ( (array!57083 (arr!27462 (Array (_ BitVec 32) (_ BitVec 64))) (size!27929 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4732 0))(
  ( (LongMapFixedSize!4733 (defaultEntry!5661 Int) (mask!27300 (_ BitVec 32)) (extraKeys!5393 (_ BitVec 32)) (zeroValue!5497 V!32359) (minValue!5497 V!32359) (_size!2421 (_ BitVec 32)) (_keys!10535 array!57082) (_values!5684 array!57080) (_vacant!2421 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4732)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13568 0))(
  ( (tuple2!13569 (_1!6794 (_ BitVec 64)) (_2!6794 V!32359)) )
))
(declare-datatypes ((List!19398 0))(
  ( (Nil!19395) (Cons!19394 (h!20545 tuple2!13568) (t!27723 List!19398)) )
))
(declare-datatypes ((ListLongMap!12279 0))(
  ( (ListLongMap!12280 (toList!6155 List!19398)) )
))
(declare-fun contains!5178 (ListLongMap!12279 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3343 (array!57082 array!57080 (_ BitVec 32) (_ BitVec 32) V!32359 V!32359 (_ BitVec 32) Int) ListLongMap!12279)

(assert (=> b!944086 (= res!634339 (contains!5178 (getCurrentListMap!3343 (_keys!10535 thiss!1141) (_values!5684 thiss!1141) (mask!27300 thiss!1141) (extraKeys!5393 thiss!1141) (zeroValue!5497 thiss!1141) (minValue!5497 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5661 thiss!1141)) key!756))))

(declare-fun res!634338 () Bool)

(assert (=> start!80422 (=> (not res!634338) (not e!530913))))

(declare-fun valid!1786 (LongMapFixedSize!4732) Bool)

(assert (=> start!80422 (= res!634338 (valid!1786 thiss!1141))))

(assert (=> start!80422 e!530913))

(declare-fun e!530917 () Bool)

(assert (=> start!80422 e!530917))

(assert (=> start!80422 true))

(declare-fun mapNonEmpty!32643 () Bool)

(declare-fun mapRes!32643 () Bool)

(declare-fun tp!62621 () Bool)

(assert (=> mapNonEmpty!32643 (= mapRes!32643 (and tp!62621 e!530918))))

(declare-fun mapKey!32643 () (_ BitVec 32))

(declare-fun mapValue!32643 () ValueCell!9791)

(declare-fun mapRest!32643 () (Array (_ BitVec 32) ValueCell!9791))

(assert (=> mapNonEmpty!32643 (= (arr!27461 (_values!5684 thiss!1141)) (store mapRest!32643 mapKey!32643 mapValue!32643))))

(declare-fun b!944087 () Bool)

(declare-fun res!634337 () Bool)

(declare-fun e!530914 () Bool)

(assert (=> b!944087 (=> res!634337 e!530914)))

(declare-fun lt!425511 () (_ BitVec 32))

(assert (=> b!944087 (= res!634337 (or (not (= (size!27929 (_keys!10535 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27300 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!27929 (_keys!10535 thiss!1141))) (bvslt lt!425511 #b00000000000000000000000000000000) (bvsgt lt!425511 (size!27929 (_keys!10535 thiss!1141)))))))

(declare-fun b!944088 () Bool)

(declare-fun res!634342 () Bool)

(assert (=> b!944088 (=> (not res!634342) (not e!530913))))

(assert (=> b!944088 (= res!634342 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944089 () Bool)

(assert (=> b!944089 (= e!530914 true)))

(declare-fun lt!425512 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57082 (_ BitVec 32)) Bool)

(assert (=> b!944089 (= lt!425512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10535 thiss!1141) (mask!27300 thiss!1141)))))

(declare-fun b!944090 () Bool)

(declare-fun e!530919 () Bool)

(assert (=> b!944090 (= e!530919 tp_is_empty!20545)))

(declare-fun e!530915 () Bool)

(declare-fun array_inv!21282 (array!57082) Bool)

(declare-fun array_inv!21283 (array!57080) Bool)

(assert (=> b!944091 (= e!530917 (and tp!62622 tp_is_empty!20545 (array_inv!21282 (_keys!10535 thiss!1141)) (array_inv!21283 (_values!5684 thiss!1141)) e!530915))))

(declare-fun b!944092 () Bool)

(assert (=> b!944092 (= e!530915 (and e!530919 mapRes!32643))))

(declare-fun condMapEmpty!32643 () Bool)

(declare-fun mapDefault!32643 () ValueCell!9791)

