; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80290 () Bool)

(assert start!80290)

(declare-fun b!942599 () Bool)

(declare-fun b_free!17961 () Bool)

(declare-fun b_next!17961 () Bool)

(assert (=> b!942599 (= b_free!17961 (not b_next!17961))))

(declare-fun tp!62389 () Bool)

(declare-fun b_and!29391 () Bool)

(assert (=> b!942599 (= tp!62389 b_and!29391)))

(declare-fun b!942590 () Bool)

(declare-fun e!530007 () Bool)

(declare-fun tp_is_empty!20469 () Bool)

(assert (=> b!942590 (= e!530007 tp_is_empty!20469)))

(declare-fun b!942591 () Bool)

(declare-fun res!633497 () Bool)

(declare-fun e!530009 () Bool)

(assert (=> b!942591 (=> (not res!633497) (not e!530009))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32257 0))(
  ( (V!32258 (val!10285 Int)) )
))
(declare-datatypes ((ValueCell!9753 0))(
  ( (ValueCellFull!9753 (v!12816 V!32257)) (EmptyCell!9753) )
))
(declare-datatypes ((array!56926 0))(
  ( (array!56927 (arr!27385 (Array (_ BitVec 32) ValueCell!9753)) (size!27851 (_ BitVec 32))) )
))
(declare-datatypes ((array!56928 0))(
  ( (array!56929 (arr!27386 (Array (_ BitVec 32) (_ BitVec 64))) (size!27852 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4656 0))(
  ( (LongMapFixedSize!4657 (defaultEntry!5619 Int) (mask!27226 (_ BitVec 32)) (extraKeys!5351 (_ BitVec 32)) (zeroValue!5455 V!32257) (minValue!5455 V!32257) (_size!2383 (_ BitVec 32)) (_keys!10489 array!56928) (_values!5642 array!56926) (_vacant!2383 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4656)

(get-info :version)

(declare-datatypes ((SeekEntryResult!9028 0))(
  ( (MissingZero!9028 (index!38482 (_ BitVec 32))) (Found!9028 (index!38483 (_ BitVec 32))) (Intermediate!9028 (undefined!9840 Bool) (index!38484 (_ BitVec 32)) (x!80934 (_ BitVec 32))) (Undefined!9028) (MissingVacant!9028 (index!38485 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56928 (_ BitVec 32)) SeekEntryResult!9028)

(assert (=> b!942591 (= res!633497 (not ((_ is Found!9028) (seekEntry!0 key!756 (_keys!10489 thiss!1141) (mask!27226 thiss!1141)))))))

(declare-fun mapIsEmpty!32525 () Bool)

(declare-fun mapRes!32525 () Bool)

(assert (=> mapIsEmpty!32525 mapRes!32525))

(declare-fun b!942592 () Bool)

(declare-fun res!633493 () Bool)

(assert (=> b!942592 (=> (not res!633493) (not e!530009))))

(assert (=> b!942592 (= res!633493 (and (= (size!27851 (_values!5642 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27226 thiss!1141))) (= (size!27852 (_keys!10489 thiss!1141)) (size!27851 (_values!5642 thiss!1141))) (bvsge (mask!27226 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5351 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5351 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942593 () Bool)

(declare-fun e!530011 () Bool)

(assert (=> b!942593 (= e!530011 tp_is_empty!20469)))

(declare-fun b!942594 () Bool)

(declare-fun e!530012 () Bool)

(assert (=> b!942594 (= e!530012 (and e!530007 mapRes!32525))))

(declare-fun condMapEmpty!32525 () Bool)

(declare-fun mapDefault!32525 () ValueCell!9753)

(assert (=> b!942594 (= condMapEmpty!32525 (= (arr!27385 (_values!5642 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9753)) mapDefault!32525)))))

(declare-fun b!942595 () Bool)

(assert (=> b!942595 (= e!530009 false)))

(declare-fun lt!425136 () Bool)

(declare-datatypes ((List!19354 0))(
  ( (Nil!19351) (Cons!19350 (h!20500 (_ BitVec 64)) (t!27677 List!19354)) )
))
(declare-fun arrayNoDuplicates!0 (array!56928 (_ BitVec 32) List!19354) Bool)

(assert (=> b!942595 (= lt!425136 (arrayNoDuplicates!0 (_keys!10489 thiss!1141) #b00000000000000000000000000000000 Nil!19351))))

(declare-fun b!942596 () Bool)

(declare-fun res!633495 () Bool)

(assert (=> b!942596 (=> (not res!633495) (not e!530009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942596 (= res!633495 (validMask!0 (mask!27226 thiss!1141)))))

(declare-fun b!942597 () Bool)

(declare-fun res!633498 () Bool)

(assert (=> b!942597 (=> (not res!633498) (not e!530009))))

(assert (=> b!942597 (= res!633498 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!942598 () Bool)

(declare-fun res!633492 () Bool)

(assert (=> b!942598 (=> (not res!633492) (not e!530009))))

(declare-datatypes ((tuple2!13516 0))(
  ( (tuple2!13517 (_1!6768 (_ BitVec 64)) (_2!6768 V!32257)) )
))
(declare-datatypes ((List!19355 0))(
  ( (Nil!19352) (Cons!19351 (h!20501 tuple2!13516) (t!27678 List!19355)) )
))
(declare-datatypes ((ListLongMap!12227 0))(
  ( (ListLongMap!12228 (toList!6129 List!19355)) )
))
(declare-fun contains!5150 (ListLongMap!12227 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3317 (array!56928 array!56926 (_ BitVec 32) (_ BitVec 32) V!32257 V!32257 (_ BitVec 32) Int) ListLongMap!12227)

(assert (=> b!942598 (= res!633492 (contains!5150 (getCurrentListMap!3317 (_keys!10489 thiss!1141) (_values!5642 thiss!1141) (mask!27226 thiss!1141) (extraKeys!5351 thiss!1141) (zeroValue!5455 thiss!1141) (minValue!5455 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5619 thiss!1141)) key!756))))

(declare-fun res!633496 () Bool)

(assert (=> start!80290 (=> (not res!633496) (not e!530009))))

(declare-fun valid!1763 (LongMapFixedSize!4656) Bool)

(assert (=> start!80290 (= res!633496 (valid!1763 thiss!1141))))

(assert (=> start!80290 e!530009))

(declare-fun e!530008 () Bool)

(assert (=> start!80290 e!530008))

(assert (=> start!80290 true))

(declare-fun b!942589 () Bool)

(declare-fun res!633494 () Bool)

(assert (=> b!942589 (=> (not res!633494) (not e!530009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56928 (_ BitVec 32)) Bool)

(assert (=> b!942589 (= res!633494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10489 thiss!1141) (mask!27226 thiss!1141)))))

(declare-fun array_inv!21230 (array!56928) Bool)

(declare-fun array_inv!21231 (array!56926) Bool)

(assert (=> b!942599 (= e!530008 (and tp!62389 tp_is_empty!20469 (array_inv!21230 (_keys!10489 thiss!1141)) (array_inv!21231 (_values!5642 thiss!1141)) e!530012))))

(declare-fun mapNonEmpty!32525 () Bool)

(declare-fun tp!62390 () Bool)

(assert (=> mapNonEmpty!32525 (= mapRes!32525 (and tp!62390 e!530011))))

(declare-fun mapValue!32525 () ValueCell!9753)

(declare-fun mapRest!32525 () (Array (_ BitVec 32) ValueCell!9753))

(declare-fun mapKey!32525 () (_ BitVec 32))

(assert (=> mapNonEmpty!32525 (= (arr!27385 (_values!5642 thiss!1141)) (store mapRest!32525 mapKey!32525 mapValue!32525))))

(assert (= (and start!80290 res!633496) b!942597))

(assert (= (and b!942597 res!633498) b!942591))

(assert (= (and b!942591 res!633497) b!942598))

(assert (= (and b!942598 res!633492) b!942596))

(assert (= (and b!942596 res!633495) b!942592))

(assert (= (and b!942592 res!633493) b!942589))

(assert (= (and b!942589 res!633494) b!942595))

(assert (= (and b!942594 condMapEmpty!32525) mapIsEmpty!32525))

(assert (= (and b!942594 (not condMapEmpty!32525)) mapNonEmpty!32525))

(assert (= (and mapNonEmpty!32525 ((_ is ValueCellFull!9753) mapValue!32525)) b!942593))

(assert (= (and b!942594 ((_ is ValueCellFull!9753) mapDefault!32525)) b!942590))

(assert (= b!942599 b!942594))

(assert (= start!80290 b!942599))

(declare-fun m!877135 () Bool)

(assert (=> mapNonEmpty!32525 m!877135))

(declare-fun m!877137 () Bool)

(assert (=> b!942596 m!877137))

(declare-fun m!877139 () Bool)

(assert (=> b!942598 m!877139))

(assert (=> b!942598 m!877139))

(declare-fun m!877141 () Bool)

(assert (=> b!942598 m!877141))

(declare-fun m!877143 () Bool)

(assert (=> start!80290 m!877143))

(declare-fun m!877145 () Bool)

(assert (=> b!942599 m!877145))

(declare-fun m!877147 () Bool)

(assert (=> b!942599 m!877147))

(declare-fun m!877149 () Bool)

(assert (=> b!942595 m!877149))

(declare-fun m!877151 () Bool)

(assert (=> b!942591 m!877151))

(declare-fun m!877153 () Bool)

(assert (=> b!942589 m!877153))

(check-sat (not b!942589) (not b!942595) (not b!942591) (not start!80290) b_and!29391 (not b_next!17961) (not b!942599) (not b!942598) (not mapNonEmpty!32525) (not b!942596) tp_is_empty!20469)
(check-sat b_and!29391 (not b_next!17961))
