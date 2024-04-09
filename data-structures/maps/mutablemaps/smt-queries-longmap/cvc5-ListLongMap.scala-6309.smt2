; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80866 () Bool)

(assert start!80866)

(declare-fun b!947328 () Bool)

(declare-fun b_free!18175 () Bool)

(declare-fun b_next!18175 () Bool)

(assert (=> b!947328 (= b_free!18175 (not b_next!18175))))

(declare-fun tp!63087 () Bool)

(declare-fun b_and!29615 () Bool)

(assert (=> b!947328 (= tp!63087 b_and!29615)))

(declare-fun b!947325 () Bool)

(declare-fun res!635883 () Bool)

(declare-fun e!533228 () Bool)

(assert (=> b!947325 (=> res!635883 e!533228)))

(declare-datatypes ((SeekEntryResult!9107 0))(
  ( (MissingZero!9107 (index!38798 (_ BitVec 32))) (Found!9107 (index!38799 (_ BitVec 32))) (Intermediate!9107 (undefined!9919 Bool) (index!38800 (_ BitVec 32)) (x!81500 (_ BitVec 32))) (Undefined!9107) (MissingVacant!9107 (index!38801 (_ BitVec 32))) )
))
(declare-fun lt!426533 () SeekEntryResult!9107)

(declare-datatypes ((V!32543 0))(
  ( (V!32544 (val!10392 Int)) )
))
(declare-datatypes ((ValueCell!9860 0))(
  ( (ValueCellFull!9860 (v!12926 V!32543)) (EmptyCell!9860) )
))
(declare-datatypes ((array!57386 0))(
  ( (array!57387 (arr!27599 (Array (_ BitVec 32) ValueCell!9860)) (size!28073 (_ BitVec 32))) )
))
(declare-datatypes ((array!57388 0))(
  ( (array!57389 (arr!27600 (Array (_ BitVec 32) (_ BitVec 64))) (size!28074 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4870 0))(
  ( (LongMapFixedSize!4871 (defaultEntry!5732 Int) (mask!27465 (_ BitVec 32)) (extraKeys!5464 (_ BitVec 32)) (zeroValue!5568 V!32543) (minValue!5568 V!32543) (_size!2490 (_ BitVec 32)) (_keys!10639 array!57388) (_values!5755 array!57386) (_vacant!2490 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4870)

(assert (=> b!947325 (= res!635883 (or (bvslt (index!38799 lt!426533) #b00000000000000000000000000000000) (bvsge (index!38799 lt!426533) (size!28074 (_keys!10639 thiss!1141)))))))

(declare-fun b!947326 () Bool)

(declare-fun res!635878 () Bool)

(assert (=> b!947326 (=> res!635878 e!533228)))

(assert (=> b!947326 (= res!635878 (or (not (= (size!28073 (_values!5755 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27465 thiss!1141)))) (not (= (size!28074 (_keys!10639 thiss!1141)) (size!28073 (_values!5755 thiss!1141)))) (bvslt (mask!27465 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5464 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5464 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!947327 () Bool)

(declare-fun res!635881 () Bool)

(assert (=> b!947327 (=> res!635881 e!533228)))

(declare-datatypes ((List!19436 0))(
  ( (Nil!19433) (Cons!19432 (h!20588 (_ BitVec 64)) (t!27765 List!19436)) )
))
(declare-fun arrayNoDuplicates!0 (array!57388 (_ BitVec 32) List!19436) Bool)

(assert (=> b!947327 (= res!635881 (not (arrayNoDuplicates!0 (_keys!10639 thiss!1141) #b00000000000000000000000000000000 Nil!19433)))))

(declare-fun mapIsEmpty!32902 () Bool)

(declare-fun mapRes!32902 () Bool)

(assert (=> mapIsEmpty!32902 mapRes!32902))

(declare-fun b!947329 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!947329 (= e!533228 (validKeyInArray!0 (select (arr!27600 (_keys!10639 thiss!1141)) (index!38799 lt!426533))))))

(declare-fun b!947330 () Bool)

(declare-fun e!533230 () Bool)

(declare-fun e!533229 () Bool)

(assert (=> b!947330 (= e!533230 e!533229)))

(declare-fun res!635882 () Bool)

(assert (=> b!947330 (=> (not res!635882) (not e!533229))))

(assert (=> b!947330 (= res!635882 (is-Found!9107 lt!426533))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57388 (_ BitVec 32)) SeekEntryResult!9107)

(assert (=> b!947330 (= lt!426533 (seekEntry!0 key!756 (_keys!10639 thiss!1141) (mask!27465 thiss!1141)))))

(declare-fun b!947331 () Bool)

(declare-fun e!533226 () Bool)

(declare-fun tp_is_empty!20683 () Bool)

(assert (=> b!947331 (= e!533226 tp_is_empty!20683)))

(declare-fun mapNonEmpty!32902 () Bool)

(declare-fun tp!63088 () Bool)

(assert (=> mapNonEmpty!32902 (= mapRes!32902 (and tp!63088 e!533226))))

(declare-fun mapRest!32902 () (Array (_ BitVec 32) ValueCell!9860))

(declare-fun mapValue!32902 () ValueCell!9860)

(declare-fun mapKey!32902 () (_ BitVec 32))

(assert (=> mapNonEmpty!32902 (= (arr!27599 (_values!5755 thiss!1141)) (store mapRest!32902 mapKey!32902 mapValue!32902))))

(declare-fun b!947332 () Bool)

(declare-fun res!635880 () Bool)

(assert (=> b!947332 (=> res!635880 e!533228)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57388 (_ BitVec 32)) Bool)

(assert (=> b!947332 (= res!635880 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10639 thiss!1141) (mask!27465 thiss!1141))))))

(declare-fun b!947333 () Bool)

(declare-fun e!533232 () Bool)

(declare-fun e!533233 () Bool)

(assert (=> b!947333 (= e!533232 (and e!533233 mapRes!32902))))

(declare-fun condMapEmpty!32902 () Bool)

(declare-fun mapDefault!32902 () ValueCell!9860)

