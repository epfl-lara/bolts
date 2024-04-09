; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80330 () Bool)

(assert start!80330)

(declare-fun b!943254 () Bool)

(declare-fun b_free!18001 () Bool)

(declare-fun b_next!18001 () Bool)

(assert (=> b!943254 (= b_free!18001 (not b_next!18001))))

(declare-fun tp!62509 () Bool)

(declare-fun b_and!29431 () Bool)

(assert (=> b!943254 (= tp!62509 b_and!29431)))

(declare-fun b!943249 () Bool)

(declare-fun e!530368 () Bool)

(assert (=> b!943249 (= e!530368 false)))

(declare-fun lt!425196 () Bool)

(declare-datatypes ((V!32311 0))(
  ( (V!32312 (val!10305 Int)) )
))
(declare-datatypes ((ValueCell!9773 0))(
  ( (ValueCellFull!9773 (v!12836 V!32311)) (EmptyCell!9773) )
))
(declare-datatypes ((array!57006 0))(
  ( (array!57007 (arr!27425 (Array (_ BitVec 32) ValueCell!9773)) (size!27891 (_ BitVec 32))) )
))
(declare-datatypes ((array!57008 0))(
  ( (array!57009 (arr!27426 (Array (_ BitVec 32) (_ BitVec 64))) (size!27892 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4696 0))(
  ( (LongMapFixedSize!4697 (defaultEntry!5639 Int) (mask!27260 (_ BitVec 32)) (extraKeys!5371 (_ BitVec 32)) (zeroValue!5475 V!32311) (minValue!5475 V!32311) (_size!2403 (_ BitVec 32)) (_keys!10509 array!57008) (_values!5662 array!57006) (_vacant!2403 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4696)

(declare-datatypes ((List!19382 0))(
  ( (Nil!19379) (Cons!19378 (h!20528 (_ BitVec 64)) (t!27705 List!19382)) )
))
(declare-fun arrayNoDuplicates!0 (array!57008 (_ BitVec 32) List!19382) Bool)

(assert (=> b!943249 (= lt!425196 (arrayNoDuplicates!0 (_keys!10509 thiss!1141) #b00000000000000000000000000000000 Nil!19379))))

(declare-fun mapIsEmpty!32585 () Bool)

(declare-fun mapRes!32585 () Bool)

(assert (=> mapIsEmpty!32585 mapRes!32585))

(declare-fun b!943251 () Bool)

(declare-fun res!633918 () Bool)

(assert (=> b!943251 (=> (not res!633918) (not e!530368))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!943251 (= res!633918 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943252 () Bool)

(declare-fun res!633912 () Bool)

(assert (=> b!943252 (=> (not res!633912) (not e!530368))))

(declare-datatypes ((SeekEntryResult!9041 0))(
  ( (MissingZero!9041 (index!38534 (_ BitVec 32))) (Found!9041 (index!38535 (_ BitVec 32))) (Intermediate!9041 (undefined!9853 Bool) (index!38536 (_ BitVec 32)) (x!81003 (_ BitVec 32))) (Undefined!9041) (MissingVacant!9041 (index!38537 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57008 (_ BitVec 32)) SeekEntryResult!9041)

(assert (=> b!943252 (= res!633912 (not (is-Found!9041 (seekEntry!0 key!756 (_keys!10509 thiss!1141) (mask!27260 thiss!1141)))))))

(declare-fun b!943253 () Bool)

(declare-fun e!530372 () Bool)

(declare-fun tp_is_empty!20509 () Bool)

(assert (=> b!943253 (= e!530372 tp_is_empty!20509)))

(declare-fun e!530371 () Bool)

(declare-fun e!530370 () Bool)

(declare-fun array_inv!21262 (array!57008) Bool)

(declare-fun array_inv!21263 (array!57006) Bool)

(assert (=> b!943254 (= e!530371 (and tp!62509 tp_is_empty!20509 (array_inv!21262 (_keys!10509 thiss!1141)) (array_inv!21263 (_values!5662 thiss!1141)) e!530370))))

(declare-fun mapNonEmpty!32585 () Bool)

(declare-fun tp!62510 () Bool)

(assert (=> mapNonEmpty!32585 (= mapRes!32585 (and tp!62510 e!530372))))

(declare-fun mapKey!32585 () (_ BitVec 32))

(declare-fun mapValue!32585 () ValueCell!9773)

(declare-fun mapRest!32585 () (Array (_ BitVec 32) ValueCell!9773))

(assert (=> mapNonEmpty!32585 (= (arr!27425 (_values!5662 thiss!1141)) (store mapRest!32585 mapKey!32585 mapValue!32585))))

(declare-fun b!943255 () Bool)

(declare-fun e!530367 () Bool)

(assert (=> b!943255 (= e!530367 tp_is_empty!20509)))

(declare-fun b!943250 () Bool)

(declare-fun res!633914 () Bool)

(assert (=> b!943250 (=> (not res!633914) (not e!530368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943250 (= res!633914 (validMask!0 (mask!27260 thiss!1141)))))

(declare-fun res!633913 () Bool)

(assert (=> start!80330 (=> (not res!633913) (not e!530368))))

(declare-fun valid!1775 (LongMapFixedSize!4696) Bool)

(assert (=> start!80330 (= res!633913 (valid!1775 thiss!1141))))

(assert (=> start!80330 e!530368))

(assert (=> start!80330 e!530371))

(assert (=> start!80330 true))

(declare-fun b!943256 () Bool)

(declare-fun res!633915 () Bool)

(assert (=> b!943256 (=> (not res!633915) (not e!530368))))

(declare-datatypes ((tuple2!13544 0))(
  ( (tuple2!13545 (_1!6782 (_ BitVec 64)) (_2!6782 V!32311)) )
))
(declare-datatypes ((List!19383 0))(
  ( (Nil!19380) (Cons!19379 (h!20529 tuple2!13544) (t!27706 List!19383)) )
))
(declare-datatypes ((ListLongMap!12255 0))(
  ( (ListLongMap!12256 (toList!6143 List!19383)) )
))
(declare-fun contains!5164 (ListLongMap!12255 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3331 (array!57008 array!57006 (_ BitVec 32) (_ BitVec 32) V!32311 V!32311 (_ BitVec 32) Int) ListLongMap!12255)

(assert (=> b!943256 (= res!633915 (contains!5164 (getCurrentListMap!3331 (_keys!10509 thiss!1141) (_values!5662 thiss!1141) (mask!27260 thiss!1141) (extraKeys!5371 thiss!1141) (zeroValue!5475 thiss!1141) (minValue!5475 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5639 thiss!1141)) key!756))))

(declare-fun b!943257 () Bool)

(declare-fun res!633917 () Bool)

(assert (=> b!943257 (=> (not res!633917) (not e!530368))))

(assert (=> b!943257 (= res!633917 (and (= (size!27891 (_values!5662 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27260 thiss!1141))) (= (size!27892 (_keys!10509 thiss!1141)) (size!27891 (_values!5662 thiss!1141))) (bvsge (mask!27260 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5371 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5371 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!943258 () Bool)

(declare-fun res!633916 () Bool)

(assert (=> b!943258 (=> (not res!633916) (not e!530368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57008 (_ BitVec 32)) Bool)

(assert (=> b!943258 (= res!633916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10509 thiss!1141) (mask!27260 thiss!1141)))))

(declare-fun b!943259 () Bool)

(assert (=> b!943259 (= e!530370 (and e!530367 mapRes!32585))))

(declare-fun condMapEmpty!32585 () Bool)

(declare-fun mapDefault!32585 () ValueCell!9773)

