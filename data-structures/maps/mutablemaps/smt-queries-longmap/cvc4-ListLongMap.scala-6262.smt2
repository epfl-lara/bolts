; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80070 () Bool)

(assert start!80070)

(declare-fun b!940963 () Bool)

(declare-fun b_free!17897 () Bool)

(declare-fun b_next!17897 () Bool)

(assert (=> b!940963 (= b_free!17897 (not b_next!17897))))

(declare-fun tp!62167 () Bool)

(declare-fun b_and!29327 () Bool)

(assert (=> b!940963 (= tp!62167 b_and!29327)))

(declare-fun b!940962 () Bool)

(declare-fun e!528995 () Bool)

(declare-fun tp_is_empty!20405 () Bool)

(assert (=> b!940962 (= e!528995 tp_is_empty!20405)))

(declare-fun e!528994 () Bool)

(declare-datatypes ((V!32171 0))(
  ( (V!32172 (val!10253 Int)) )
))
(declare-datatypes ((ValueCell!9721 0))(
  ( (ValueCellFull!9721 (v!12784 V!32171)) (EmptyCell!9721) )
))
(declare-datatypes ((array!56780 0))(
  ( (array!56781 (arr!27321 (Array (_ BitVec 32) ValueCell!9721)) (size!27783 (_ BitVec 32))) )
))
(declare-datatypes ((array!56782 0))(
  ( (array!56783 (arr!27322 (Array (_ BitVec 32) (_ BitVec 64))) (size!27784 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4592 0))(
  ( (LongMapFixedSize!4593 (defaultEntry!5587 Int) (mask!27135 (_ BitVec 32)) (extraKeys!5319 (_ BitVec 32)) (zeroValue!5423 V!32171) (minValue!5423 V!32171) (_size!2351 (_ BitVec 32)) (_keys!10433 array!56782) (_values!5610 array!56780) (_vacant!2351 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4592)

(declare-fun e!528999 () Bool)

(declare-fun array_inv!21188 (array!56782) Bool)

(declare-fun array_inv!21189 (array!56780) Bool)

(assert (=> b!940963 (= e!528994 (and tp!62167 tp_is_empty!20405 (array_inv!21188 (_keys!10433 thiss!1141)) (array_inv!21189 (_values!5610 thiss!1141)) e!528999))))

(declare-fun b!940964 () Bool)

(declare-fun e!528998 () Bool)

(declare-fun e!528997 () Bool)

(assert (=> b!940964 (= e!528998 e!528997)))

(declare-fun res!632757 () Bool)

(assert (=> b!940964 (=> (not res!632757) (not e!528997))))

(declare-datatypes ((SeekEntryResult!9008 0))(
  ( (MissingZero!9008 (index!38402 (_ BitVec 32))) (Found!9008 (index!38403 (_ BitVec 32))) (Intermediate!9008 (undefined!9820 Bool) (index!38404 (_ BitVec 32)) (x!80718 (_ BitVec 32))) (Undefined!9008) (MissingVacant!9008 (index!38405 (_ BitVec 32))) )
))
(declare-fun lt!424866 () SeekEntryResult!9008)

(assert (=> b!940964 (= res!632757 (is-Found!9008 lt!424866))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56782 (_ BitVec 32)) SeekEntryResult!9008)

(assert (=> b!940964 (= lt!424866 (seekEntry!0 key!756 (_keys!10433 thiss!1141) (mask!27135 thiss!1141)))))

(declare-fun b!940965 () Bool)

(assert (=> b!940965 (= e!528997 (not true))))

(declare-datatypes ((tuple2!13508 0))(
  ( (tuple2!13509 (_1!6764 (_ BitVec 64)) (_2!6764 V!32171)) )
))
(declare-datatypes ((List!19338 0))(
  ( (Nil!19335) (Cons!19334 (h!20480 tuple2!13508) (t!27661 List!19338)) )
))
(declare-datatypes ((ListLongMap!12219 0))(
  ( (ListLongMap!12220 (toList!6125 List!19338)) )
))
(declare-fun contains!5140 (ListLongMap!12219 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3313 (array!56782 array!56780 (_ BitVec 32) (_ BitVec 32) V!32171 V!32171 (_ BitVec 32) Int) ListLongMap!12219)

(assert (=> b!940965 (contains!5140 (getCurrentListMap!3313 (_keys!10433 thiss!1141) (_values!5610 thiss!1141) (mask!27135 thiss!1141) (extraKeys!5319 thiss!1141) (zeroValue!5423 thiss!1141) (minValue!5423 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5587 thiss!1141)) (select (arr!27322 (_keys!10433 thiss!1141)) (index!38403 lt!424866)))))

(declare-datatypes ((Unit!31803 0))(
  ( (Unit!31804) )
))
(declare-fun lt!424865 () Unit!31803)

(declare-fun lemmaValidKeyInArrayIsInListMap!256 (array!56782 array!56780 (_ BitVec 32) (_ BitVec 32) V!32171 V!32171 (_ BitVec 32) Int) Unit!31803)

(assert (=> b!940965 (= lt!424865 (lemmaValidKeyInArrayIsInListMap!256 (_keys!10433 thiss!1141) (_values!5610 thiss!1141) (mask!27135 thiss!1141) (extraKeys!5319 thiss!1141) (zeroValue!5423 thiss!1141) (minValue!5423 thiss!1141) (index!38403 lt!424866) (defaultEntry!5587 thiss!1141)))))

(declare-fun arrayContainsKey!0 (array!56782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940965 (arrayContainsKey!0 (_keys!10433 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!424864 () Unit!31803)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56782 (_ BitVec 64) (_ BitVec 32)) Unit!31803)

(assert (=> b!940965 (= lt!424864 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10433 thiss!1141) key!756 (index!38403 lt!424866)))))

(declare-fun res!632758 () Bool)

(assert (=> start!80070 (=> (not res!632758) (not e!528998))))

(declare-fun valid!1742 (LongMapFixedSize!4592) Bool)

(assert (=> start!80070 (= res!632758 (valid!1742 thiss!1141))))

(assert (=> start!80070 e!528998))

(assert (=> start!80070 e!528994))

(assert (=> start!80070 true))

(declare-fun mapNonEmpty!32398 () Bool)

(declare-fun mapRes!32398 () Bool)

(declare-fun tp!62166 () Bool)

(assert (=> mapNonEmpty!32398 (= mapRes!32398 (and tp!62166 e!528995))))

(declare-fun mapRest!32398 () (Array (_ BitVec 32) ValueCell!9721))

(declare-fun mapValue!32398 () ValueCell!9721)

(declare-fun mapKey!32398 () (_ BitVec 32))

(assert (=> mapNonEmpty!32398 (= (arr!27321 (_values!5610 thiss!1141)) (store mapRest!32398 mapKey!32398 mapValue!32398))))

(declare-fun b!940966 () Bool)

(declare-fun e!528993 () Bool)

(assert (=> b!940966 (= e!528999 (and e!528993 mapRes!32398))))

(declare-fun condMapEmpty!32398 () Bool)

(declare-fun mapDefault!32398 () ValueCell!9721)

