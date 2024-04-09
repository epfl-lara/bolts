; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77254 () Bool)

(assert start!77254)

(declare-fun b!900920 () Bool)

(declare-fun b_free!16067 () Bool)

(declare-fun b_next!16067 () Bool)

(assert (=> b!900920 (= b_free!16067 (not b_next!16067))))

(declare-fun tp!56298 () Bool)

(declare-fun b_and!26411 () Bool)

(assert (=> b!900920 (= tp!56298 b_and!26411)))

(declare-fun b!900911 () Bool)

(declare-fun e!504354 () Bool)

(declare-fun tp_is_empty!18395 () Bool)

(assert (=> b!900911 (= e!504354 tp_is_empty!18395)))

(declare-fun b!900912 () Bool)

(declare-fun res!608437 () Bool)

(declare-fun e!504353 () Bool)

(assert (=> b!900912 (=> res!608437 e!504353)))

(declare-datatypes ((array!52830 0))(
  ( (array!52831 (arr!25380 (Array (_ BitVec 32) (_ BitVec 64))) (size!25840 (_ BitVec 32))) )
))
(declare-datatypes ((V!29491 0))(
  ( (V!29492 (val!9248 Int)) )
))
(declare-datatypes ((ValueCell!8716 0))(
  ( (ValueCellFull!8716 (v!11744 V!29491)) (EmptyCell!8716) )
))
(declare-datatypes ((array!52832 0))(
  ( (array!52833 (arr!25381 (Array (_ BitVec 32) ValueCell!8716)) (size!25841 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4448 0))(
  ( (LongMapFixedSize!4449 (defaultEntry!5462 Int) (mask!26256 (_ BitVec 32)) (extraKeys!5190 (_ BitVec 32)) (zeroValue!5294 V!29491) (minValue!5294 V!29491) (_size!2279 (_ BitVec 32)) (_keys!10268 array!52830) (_values!5481 array!52832) (_vacant!2279 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4448)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52830 (_ BitVec 32)) Bool)

(assert (=> b!900912 (= res!608437 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10268 thiss!1181) (mask!26256 thiss!1181))))))

(declare-fun b!900913 () Bool)

(declare-fun res!608442 () Bool)

(assert (=> b!900913 (=> res!608442 e!504353)))

(declare-datatypes ((List!17944 0))(
  ( (Nil!17941) (Cons!17940 (h!19086 (_ BitVec 64)) (t!25309 List!17944)) )
))
(declare-fun arrayNoDuplicates!0 (array!52830 (_ BitVec 32) List!17944) Bool)

(assert (=> b!900913 (= res!608442 (not (arrayNoDuplicates!0 (_keys!10268 thiss!1181) #b00000000000000000000000000000000 Nil!17941)))))

(declare-fun res!608440 () Bool)

(declare-fun e!504356 () Bool)

(assert (=> start!77254 (=> (not res!608440) (not e!504356))))

(declare-fun valid!1692 (LongMapFixedSize!4448) Bool)

(assert (=> start!77254 (= res!608440 (valid!1692 thiss!1181))))

(assert (=> start!77254 e!504356))

(declare-fun e!504360 () Bool)

(assert (=> start!77254 e!504360))

(assert (=> start!77254 true))

(declare-fun b!900914 () Bool)

(declare-fun res!608436 () Bool)

(assert (=> b!900914 (=> res!608436 e!504353)))

(assert (=> b!900914 (= res!608436 (or (not (= (size!25841 (_values!5481 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26256 thiss!1181)))) (not (= (size!25840 (_keys!10268 thiss!1181)) (size!25841 (_values!5481 thiss!1181)))) (bvslt (mask!26256 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5190 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5190 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!900915 () Bool)

(declare-fun e!504361 () Bool)

(assert (=> b!900915 (= e!504361 tp_is_empty!18395)))

(declare-fun b!900916 () Bool)

(declare-datatypes ((SeekEntryResult!8933 0))(
  ( (MissingZero!8933 (index!38102 (_ BitVec 32))) (Found!8933 (index!38103 (_ BitVec 32))) (Intermediate!8933 (undefined!9745 Bool) (index!38104 (_ BitVec 32)) (x!76749 (_ BitVec 32))) (Undefined!8933) (MissingVacant!8933 (index!38105 (_ BitVec 32))) )
))
(declare-fun lt!407169 () SeekEntryResult!8933)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!900916 (= e!504353 (inRange!0 (index!38103 lt!407169) (mask!26256 thiss!1181)))))

(declare-fun b!900917 () Bool)

(declare-fun res!608441 () Bool)

(assert (=> b!900917 (=> res!608441 e!504353)))

(declare-datatypes ((tuple2!12084 0))(
  ( (tuple2!12085 (_1!6052 (_ BitVec 64)) (_2!6052 V!29491)) )
))
(declare-datatypes ((List!17945 0))(
  ( (Nil!17942) (Cons!17941 (h!19087 tuple2!12084) (t!25310 List!17945)) )
))
(declare-datatypes ((ListLongMap!10795 0))(
  ( (ListLongMap!10796 (toList!5413 List!17945)) )
))
(declare-fun lt!407167 () ListLongMap!10795)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4422 (ListLongMap!10795 (_ BitVec 64)) Bool)

(assert (=> b!900917 (= res!608441 (not (contains!4422 lt!407167 key!785)))))

(declare-fun b!900918 () Bool)

(declare-fun res!608434 () Bool)

(assert (=> b!900918 (=> (not res!608434) (not e!504356))))

(assert (=> b!900918 (= res!608434 (not (= key!785 (bvneg key!785))))))

(declare-fun b!900919 () Bool)

(declare-fun e!504355 () Bool)

(declare-fun mapRes!29275 () Bool)

(assert (=> b!900919 (= e!504355 (and e!504361 mapRes!29275))))

(declare-fun condMapEmpty!29275 () Bool)

(declare-fun mapDefault!29275 () ValueCell!8716)

