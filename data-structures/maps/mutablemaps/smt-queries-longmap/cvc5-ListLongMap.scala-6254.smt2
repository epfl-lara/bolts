; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80018 () Bool)

(assert start!80018)

(declare-fun b!940206 () Bool)

(declare-fun b_free!17845 () Bool)

(declare-fun b_next!17845 () Bool)

(assert (=> b!940206 (= b_free!17845 (not b_next!17845))))

(declare-fun tp!62011 () Bool)

(declare-fun b_and!29275 () Bool)

(assert (=> b!940206 (= tp!62011 b_and!29275)))

(declare-fun e!528381 () Bool)

(declare-datatypes ((V!32103 0))(
  ( (V!32104 (val!10227 Int)) )
))
(declare-datatypes ((ValueCell!9695 0))(
  ( (ValueCellFull!9695 (v!12758 V!32103)) (EmptyCell!9695) )
))
(declare-datatypes ((array!56676 0))(
  ( (array!56677 (arr!27269 (Array (_ BitVec 32) ValueCell!9695)) (size!27731 (_ BitVec 32))) )
))
(declare-datatypes ((array!56678 0))(
  ( (array!56679 (arr!27270 (Array (_ BitVec 32) (_ BitVec 64))) (size!27732 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4540 0))(
  ( (LongMapFixedSize!4541 (defaultEntry!5561 Int) (mask!27093 (_ BitVec 32)) (extraKeys!5293 (_ BitVec 32)) (zeroValue!5397 V!32103) (minValue!5397 V!32103) (_size!2325 (_ BitVec 32)) (_keys!10407 array!56678) (_values!5584 array!56676) (_vacant!2325 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4540)

(declare-fun e!528378 () Bool)

(declare-fun tp_is_empty!20353 () Bool)

(declare-fun array_inv!21152 (array!56678) Bool)

(declare-fun array_inv!21153 (array!56676) Bool)

(assert (=> b!940206 (= e!528378 (and tp!62011 tp_is_empty!20353 (array_inv!21152 (_keys!10407 thiss!1141)) (array_inv!21153 (_values!5584 thiss!1141)) e!528381))))

(declare-fun mapIsEmpty!32320 () Bool)

(declare-fun mapRes!32320 () Bool)

(assert (=> mapIsEmpty!32320 mapRes!32320))

(declare-fun b!940207 () Bool)

(declare-fun e!528384 () Bool)

(assert (=> b!940207 (= e!528384 tp_is_empty!20353)))

(declare-fun b!940208 () Bool)

(declare-fun res!632318 () Bool)

(declare-fun e!528382 () Bool)

(assert (=> b!940208 (=> res!632318 e!528382)))

(assert (=> b!940208 (= res!632318 (or (not (= (size!27731 (_values!5584 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27093 thiss!1141)))) (not (= (size!27732 (_keys!10407 thiss!1141)) (size!27731 (_values!5584 thiss!1141)))) (bvslt (mask!27093 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5293 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5293 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940209 () Bool)

(declare-fun e!528383 () Bool)

(assert (=> b!940209 (= e!528383 (not e!528382))))

(declare-fun res!632313 () Bool)

(assert (=> b!940209 (=> res!632313 e!528382)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940209 (= res!632313 (not (validMask!0 (mask!27093 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940209 (arrayContainsKey!0 (_keys!10407 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!8985 0))(
  ( (MissingZero!8985 (index!38310 (_ BitVec 32))) (Found!8985 (index!38311 (_ BitVec 32))) (Intermediate!8985 (undefined!9797 Bool) (index!38312 (_ BitVec 32)) (x!80631 (_ BitVec 32))) (Undefined!8985) (MissingVacant!8985 (index!38313 (_ BitVec 32))) )
))
(declare-fun lt!424632 () SeekEntryResult!8985)

(declare-datatypes ((Unit!31763 0))(
  ( (Unit!31764) )
))
(declare-fun lt!424631 () Unit!31763)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56678 (_ BitVec 64) (_ BitVec 32)) Unit!31763)

(assert (=> b!940209 (= lt!424631 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10407 thiss!1141) key!756 (index!38311 lt!424632)))))

(declare-fun res!632317 () Bool)

(declare-fun e!528377 () Bool)

(assert (=> start!80018 (=> (not res!632317) (not e!528377))))

(declare-fun valid!1725 (LongMapFixedSize!4540) Bool)

(assert (=> start!80018 (= res!632317 (valid!1725 thiss!1141))))

(assert (=> start!80018 e!528377))

(assert (=> start!80018 e!528378))

(assert (=> start!80018 true))

(declare-fun b!940210 () Bool)

(assert (=> b!940210 (= e!528382 true)))

(declare-fun lt!424630 () Bool)

(declare-datatypes ((List!19319 0))(
  ( (Nil!19316) (Cons!19315 (h!20461 (_ BitVec 64)) (t!27642 List!19319)) )
))
(declare-fun arrayNoDuplicates!0 (array!56678 (_ BitVec 32) List!19319) Bool)

(assert (=> b!940210 (= lt!424630 (arrayNoDuplicates!0 (_keys!10407 thiss!1141) #b00000000000000000000000000000000 Nil!19316))))

(declare-fun b!940211 () Bool)

(declare-fun res!632314 () Bool)

(assert (=> b!940211 (=> (not res!632314) (not e!528377))))

(assert (=> b!940211 (= res!632314 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940212 () Bool)

(declare-fun e!528379 () Bool)

(assert (=> b!940212 (= e!528379 tp_is_empty!20353)))

(declare-fun mapNonEmpty!32320 () Bool)

(declare-fun tp!62010 () Bool)

(assert (=> mapNonEmpty!32320 (= mapRes!32320 (and tp!62010 e!528384))))

(declare-fun mapKey!32320 () (_ BitVec 32))

(declare-fun mapRest!32320 () (Array (_ BitVec 32) ValueCell!9695))

(declare-fun mapValue!32320 () ValueCell!9695)

(assert (=> mapNonEmpty!32320 (= (arr!27269 (_values!5584 thiss!1141)) (store mapRest!32320 mapKey!32320 mapValue!32320))))

(declare-fun b!940213 () Bool)

(declare-fun res!632316 () Bool)

(assert (=> b!940213 (=> res!632316 e!528382)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56678 (_ BitVec 32)) Bool)

(assert (=> b!940213 (= res!632316 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10407 thiss!1141) (mask!27093 thiss!1141))))))

(declare-fun b!940214 () Bool)

(assert (=> b!940214 (= e!528377 e!528383)))

(declare-fun res!632315 () Bool)

(assert (=> b!940214 (=> (not res!632315) (not e!528383))))

(assert (=> b!940214 (= res!632315 (is-Found!8985 lt!424632))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56678 (_ BitVec 32)) SeekEntryResult!8985)

(assert (=> b!940214 (= lt!424632 (seekEntry!0 key!756 (_keys!10407 thiss!1141) (mask!27093 thiss!1141)))))

(declare-fun b!940215 () Bool)

(assert (=> b!940215 (= e!528381 (and e!528379 mapRes!32320))))

(declare-fun condMapEmpty!32320 () Bool)

(declare-fun mapDefault!32320 () ValueCell!9695)

