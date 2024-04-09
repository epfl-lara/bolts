; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80334 () Bool)

(assert start!80334)

(declare-fun b!943324 () Bool)

(declare-fun b_free!18005 () Bool)

(declare-fun b_next!18005 () Bool)

(assert (=> b!943324 (= b_free!18005 (not b_next!18005))))

(declare-fun tp!62522 () Bool)

(declare-fun b_and!29435 () Bool)

(assert (=> b!943324 (= tp!62522 b_and!29435)))

(declare-fun b!943315 () Bool)

(declare-fun res!633957 () Bool)

(declare-fun e!530406 () Bool)

(assert (=> b!943315 (=> (not res!633957) (not e!530406))))

(declare-datatypes ((V!32315 0))(
  ( (V!32316 (val!10307 Int)) )
))
(declare-datatypes ((ValueCell!9775 0))(
  ( (ValueCellFull!9775 (v!12838 V!32315)) (EmptyCell!9775) )
))
(declare-datatypes ((array!57014 0))(
  ( (array!57015 (arr!27429 (Array (_ BitVec 32) ValueCell!9775)) (size!27895 (_ BitVec 32))) )
))
(declare-datatypes ((array!57016 0))(
  ( (array!57017 (arr!27430 (Array (_ BitVec 32) (_ BitVec 64))) (size!27896 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4700 0))(
  ( (LongMapFixedSize!4701 (defaultEntry!5641 Int) (mask!27262 (_ BitVec 32)) (extraKeys!5373 (_ BitVec 32)) (zeroValue!5477 V!32315) (minValue!5477 V!32315) (_size!2405 (_ BitVec 32)) (_keys!10511 array!57016) (_values!5664 array!57014) (_vacant!2405 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4700)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57016 (_ BitVec 32)) Bool)

(assert (=> b!943315 (= res!633957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10511 thiss!1141) (mask!27262 thiss!1141)))))

(declare-fun b!943316 () Bool)

(declare-fun res!633955 () Bool)

(assert (=> b!943316 (=> (not res!633955) (not e!530406))))

(assert (=> b!943316 (= res!633955 (and (= (size!27895 (_values!5664 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27262 thiss!1141))) (= (size!27896 (_keys!10511 thiss!1141)) (size!27895 (_values!5664 thiss!1141))) (bvsge (mask!27262 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5373 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5373 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!943317 () Bool)

(declare-fun e!530403 () Bool)

(declare-fun tp_is_empty!20513 () Bool)

(assert (=> b!943317 (= e!530403 tp_is_empty!20513)))

(declare-fun b!943318 () Bool)

(assert (=> b!943318 (= e!530406 false)))

(declare-fun lt!425202 () Bool)

(declare-datatypes ((List!19386 0))(
  ( (Nil!19383) (Cons!19382 (h!20532 (_ BitVec 64)) (t!27709 List!19386)) )
))
(declare-fun arrayNoDuplicates!0 (array!57016 (_ BitVec 32) List!19386) Bool)

(assert (=> b!943318 (= lt!425202 (arrayNoDuplicates!0 (_keys!10511 thiss!1141) #b00000000000000000000000000000000 Nil!19383))))

(declare-fun mapIsEmpty!32591 () Bool)

(declare-fun mapRes!32591 () Bool)

(assert (=> mapIsEmpty!32591 mapRes!32591))

(declare-fun b!943319 () Bool)

(declare-fun res!633954 () Bool)

(assert (=> b!943319 (=> (not res!633954) (not e!530406))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!943319 (= res!633954 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943320 () Bool)

(declare-fun res!633960 () Bool)

(assert (=> b!943320 (=> (not res!633960) (not e!530406))))

(declare-datatypes ((SeekEntryResult!9043 0))(
  ( (MissingZero!9043 (index!38542 (_ BitVec 32))) (Found!9043 (index!38543 (_ BitVec 32))) (Intermediate!9043 (undefined!9855 Bool) (index!38544 (_ BitVec 32)) (x!81005 (_ BitVec 32))) (Undefined!9043) (MissingVacant!9043 (index!38545 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57016 (_ BitVec 32)) SeekEntryResult!9043)

(assert (=> b!943320 (= res!633960 (not (is-Found!9043 (seekEntry!0 key!756 (_keys!10511 thiss!1141) (mask!27262 thiss!1141)))))))

(declare-fun b!943321 () Bool)

(declare-fun e!530405 () Bool)

(assert (=> b!943321 (= e!530405 (and e!530403 mapRes!32591))))

(declare-fun condMapEmpty!32591 () Bool)

(declare-fun mapDefault!32591 () ValueCell!9775)

