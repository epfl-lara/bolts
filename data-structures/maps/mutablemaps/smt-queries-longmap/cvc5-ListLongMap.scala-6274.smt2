; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80294 () Bool)

(assert start!80294)

(declare-fun b!942664 () Bool)

(declare-fun b_free!17965 () Bool)

(declare-fun b_next!17965 () Bool)

(assert (=> b!942664 (= b_free!17965 (not b_next!17965))))

(declare-fun tp!62401 () Bool)

(declare-fun b_and!29395 () Bool)

(assert (=> b!942664 (= tp!62401 b_and!29395)))

(declare-fun b!942655 () Bool)

(declare-fun res!633539 () Bool)

(declare-fun e!530046 () Bool)

(assert (=> b!942655 (=> (not res!633539) (not e!530046))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!942655 (= res!633539 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!633535 () Bool)

(assert (=> start!80294 (=> (not res!633535) (not e!530046))))

(declare-datatypes ((V!32263 0))(
  ( (V!32264 (val!10287 Int)) )
))
(declare-datatypes ((ValueCell!9755 0))(
  ( (ValueCellFull!9755 (v!12818 V!32263)) (EmptyCell!9755) )
))
(declare-datatypes ((array!56934 0))(
  ( (array!56935 (arr!27389 (Array (_ BitVec 32) ValueCell!9755)) (size!27855 (_ BitVec 32))) )
))
(declare-datatypes ((array!56936 0))(
  ( (array!56937 (arr!27390 (Array (_ BitVec 32) (_ BitVec 64))) (size!27856 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4660 0))(
  ( (LongMapFixedSize!4661 (defaultEntry!5621 Int) (mask!27230 (_ BitVec 32)) (extraKeys!5353 (_ BitVec 32)) (zeroValue!5457 V!32263) (minValue!5457 V!32263) (_size!2385 (_ BitVec 32)) (_keys!10491 array!56936) (_values!5644 array!56934) (_vacant!2385 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4660)

(declare-fun valid!1765 (LongMapFixedSize!4660) Bool)

(assert (=> start!80294 (= res!633535 (valid!1765 thiss!1141))))

(assert (=> start!80294 e!530046))

(declare-fun e!530045 () Bool)

(assert (=> start!80294 e!530045))

(assert (=> start!80294 true))

(declare-fun mapIsEmpty!32531 () Bool)

(declare-fun mapRes!32531 () Bool)

(assert (=> mapIsEmpty!32531 mapRes!32531))

(declare-fun b!942656 () Bool)

(assert (=> b!942656 (= e!530046 false)))

(declare-fun lt!425142 () Bool)

(declare-datatypes ((List!19358 0))(
  ( (Nil!19355) (Cons!19354 (h!20504 (_ BitVec 64)) (t!27681 List!19358)) )
))
(declare-fun arrayNoDuplicates!0 (array!56936 (_ BitVec 32) List!19358) Bool)

(assert (=> b!942656 (= lt!425142 (arrayNoDuplicates!0 (_keys!10491 thiss!1141) #b00000000000000000000000000000000 Nil!19355))))

(declare-fun b!942657 () Bool)

(declare-fun res!633540 () Bool)

(assert (=> b!942657 (=> (not res!633540) (not e!530046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942657 (= res!633540 (validMask!0 (mask!27230 thiss!1141)))))

(declare-fun b!942658 () Bool)

(declare-fun res!633536 () Bool)

(assert (=> b!942658 (=> (not res!633536) (not e!530046))))

(declare-datatypes ((SeekEntryResult!9029 0))(
  ( (MissingZero!9029 (index!38486 (_ BitVec 32))) (Found!9029 (index!38487 (_ BitVec 32))) (Intermediate!9029 (undefined!9841 Bool) (index!38488 (_ BitVec 32)) (x!80943 (_ BitVec 32))) (Undefined!9029) (MissingVacant!9029 (index!38489 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56936 (_ BitVec 32)) SeekEntryResult!9029)

(assert (=> b!942658 (= res!633536 (not (is-Found!9029 (seekEntry!0 key!756 (_keys!10491 thiss!1141) (mask!27230 thiss!1141)))))))

(declare-fun b!942659 () Bool)

(declare-fun res!633537 () Bool)

(assert (=> b!942659 (=> (not res!633537) (not e!530046))))

(declare-datatypes ((tuple2!13520 0))(
  ( (tuple2!13521 (_1!6770 (_ BitVec 64)) (_2!6770 V!32263)) )
))
(declare-datatypes ((List!19359 0))(
  ( (Nil!19356) (Cons!19355 (h!20505 tuple2!13520) (t!27682 List!19359)) )
))
(declare-datatypes ((ListLongMap!12231 0))(
  ( (ListLongMap!12232 (toList!6131 List!19359)) )
))
(declare-fun contains!5152 (ListLongMap!12231 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3319 (array!56936 array!56934 (_ BitVec 32) (_ BitVec 32) V!32263 V!32263 (_ BitVec 32) Int) ListLongMap!12231)

(assert (=> b!942659 (= res!633537 (contains!5152 (getCurrentListMap!3319 (_keys!10491 thiss!1141) (_values!5644 thiss!1141) (mask!27230 thiss!1141) (extraKeys!5353 thiss!1141) (zeroValue!5457 thiss!1141) (minValue!5457 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5621 thiss!1141)) key!756))))

(declare-fun b!942660 () Bool)

(declare-fun res!633534 () Bool)

(assert (=> b!942660 (=> (not res!633534) (not e!530046))))

(assert (=> b!942660 (= res!633534 (and (= (size!27855 (_values!5644 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27230 thiss!1141))) (= (size!27856 (_keys!10491 thiss!1141)) (size!27855 (_values!5644 thiss!1141))) (bvsge (mask!27230 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5353 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5353 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942661 () Bool)

(declare-fun res!633538 () Bool)

(assert (=> b!942661 (=> (not res!633538) (not e!530046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56936 (_ BitVec 32)) Bool)

(assert (=> b!942661 (= res!633538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10491 thiss!1141) (mask!27230 thiss!1141)))))

(declare-fun mapNonEmpty!32531 () Bool)

(declare-fun tp!62402 () Bool)

(declare-fun e!530043 () Bool)

(assert (=> mapNonEmpty!32531 (= mapRes!32531 (and tp!62402 e!530043))))

(declare-fun mapKey!32531 () (_ BitVec 32))

(declare-fun mapRest!32531 () (Array (_ BitVec 32) ValueCell!9755))

(declare-fun mapValue!32531 () ValueCell!9755)

(assert (=> mapNonEmpty!32531 (= (arr!27389 (_values!5644 thiss!1141)) (store mapRest!32531 mapKey!32531 mapValue!32531))))

(declare-fun b!942662 () Bool)

(declare-fun tp_is_empty!20473 () Bool)

(assert (=> b!942662 (= e!530043 tp_is_empty!20473)))

(declare-fun b!942663 () Bool)

(declare-fun e!530044 () Bool)

(assert (=> b!942663 (= e!530044 tp_is_empty!20473)))

(declare-fun e!530047 () Bool)

(declare-fun array_inv!21234 (array!56936) Bool)

(declare-fun array_inv!21235 (array!56934) Bool)

(assert (=> b!942664 (= e!530045 (and tp!62401 tp_is_empty!20473 (array_inv!21234 (_keys!10491 thiss!1141)) (array_inv!21235 (_values!5644 thiss!1141)) e!530047))))

(declare-fun b!942665 () Bool)

(assert (=> b!942665 (= e!530047 (and e!530044 mapRes!32531))))

(declare-fun condMapEmpty!32531 () Bool)

(declare-fun mapDefault!32531 () ValueCell!9755)

