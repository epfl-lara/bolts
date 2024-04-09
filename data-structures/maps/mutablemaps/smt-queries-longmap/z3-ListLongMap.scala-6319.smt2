; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81230 () Bool)

(assert start!81230)

(declare-fun b!950084 () Bool)

(declare-fun b_free!18237 () Bool)

(declare-fun b_next!18237 () Bool)

(assert (=> b!950084 (= b_free!18237 (not b_next!18237))))

(declare-fun tp!63307 () Bool)

(declare-fun b_and!29711 () Bool)

(assert (=> b!950084 (= tp!63307 b_and!29711)))

(declare-fun b!950077 () Bool)

(declare-fun res!637123 () Bool)

(declare-fun e!534924 () Bool)

(assert (=> b!950077 (=> (not res!637123) (not e!534924))))

(declare-datatypes ((V!32625 0))(
  ( (V!32626 (val!10423 Int)) )
))
(declare-datatypes ((ValueCell!9891 0))(
  ( (ValueCellFull!9891 (v!12966 V!32625)) (EmptyCell!9891) )
))
(declare-datatypes ((array!57530 0))(
  ( (array!57531 (arr!27661 (Array (_ BitVec 32) ValueCell!9891)) (size!28139 (_ BitVec 32))) )
))
(declare-datatypes ((array!57532 0))(
  ( (array!57533 (arr!27662 (Array (_ BitVec 32) (_ BitVec 64))) (size!28140 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4932 0))(
  ( (LongMapFixedSize!4933 (defaultEntry!5777 Int) (mask!27568 (_ BitVec 32)) (extraKeys!5509 (_ BitVec 32)) (zeroValue!5613 V!32625) (minValue!5613 V!32625) (_size!2521 (_ BitVec 32)) (_keys!10709 array!57532) (_values!5800 array!57530) (_vacant!2521 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4932)

(assert (=> b!950077 (= res!637123 (and (= (size!28139 (_values!5800 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27568 thiss!1141))) (= (size!28140 (_keys!10709 thiss!1141)) (size!28139 (_values!5800 thiss!1141))) (bvsge (mask!27568 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5509 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5509 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!950078 () Bool)

(declare-fun e!534926 () Bool)

(declare-fun tp_is_empty!20745 () Bool)

(assert (=> b!950078 (= e!534926 tp_is_empty!20745)))

(declare-fun b!950079 () Bool)

(declare-fun res!637122 () Bool)

(assert (=> b!950079 (=> (not res!637122) (not e!534924))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9128 0))(
  ( (MissingZero!9128 (index!38882 (_ BitVec 32))) (Found!9128 (index!38883 (_ BitVec 32))) (Intermediate!9128 (undefined!9940 Bool) (index!38884 (_ BitVec 32)) (x!81731 (_ BitVec 32))) (Undefined!9128) (MissingVacant!9128 (index!38885 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57532 (_ BitVec 32)) SeekEntryResult!9128)

(assert (=> b!950079 (= res!637122 (not ((_ is Found!9128) (seekEntry!0 key!756 (_keys!10709 thiss!1141) (mask!27568 thiss!1141)))))))

(declare-fun mapNonEmpty!33029 () Bool)

(declare-fun mapRes!33029 () Bool)

(declare-fun tp!63308 () Bool)

(assert (=> mapNonEmpty!33029 (= mapRes!33029 (and tp!63308 e!534926))))

(declare-fun mapValue!33029 () ValueCell!9891)

(declare-fun mapKey!33029 () (_ BitVec 32))

(declare-fun mapRest!33029 () (Array (_ BitVec 32) ValueCell!9891))

(assert (=> mapNonEmpty!33029 (= (arr!27661 (_values!5800 thiss!1141)) (store mapRest!33029 mapKey!33029 mapValue!33029))))

(declare-fun res!637119 () Bool)

(assert (=> start!81230 (=> (not res!637119) (not e!534924))))

(declare-fun valid!1850 (LongMapFixedSize!4932) Bool)

(assert (=> start!81230 (= res!637119 (valid!1850 thiss!1141))))

(assert (=> start!81230 e!534924))

(declare-fun e!534925 () Bool)

(assert (=> start!81230 e!534925))

(assert (=> start!81230 true))

(declare-fun b!950080 () Bool)

(declare-fun res!637124 () Bool)

(assert (=> b!950080 (=> (not res!637124) (not e!534924))))

(assert (=> b!950080 (= res!637124 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!950081 () Bool)

(declare-fun res!637121 () Bool)

(assert (=> b!950081 (=> (not res!637121) (not e!534924))))

(declare-datatypes ((tuple2!13642 0))(
  ( (tuple2!13643 (_1!6831 (_ BitVec 64)) (_2!6831 V!32625)) )
))
(declare-datatypes ((List!19467 0))(
  ( (Nil!19464) (Cons!19463 (h!20623 tuple2!13642) (t!27814 List!19467)) )
))
(declare-datatypes ((ListLongMap!12353 0))(
  ( (ListLongMap!12354 (toList!6192 List!19467)) )
))
(declare-fun contains!5234 (ListLongMap!12353 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3377 (array!57532 array!57530 (_ BitVec 32) (_ BitVec 32) V!32625 V!32625 (_ BitVec 32) Int) ListLongMap!12353)

(assert (=> b!950081 (= res!637121 (contains!5234 (getCurrentListMap!3377 (_keys!10709 thiss!1141) (_values!5800 thiss!1141) (mask!27568 thiss!1141) (extraKeys!5509 thiss!1141) (zeroValue!5613 thiss!1141) (minValue!5613 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5777 thiss!1141)) key!756))))

(declare-fun b!950082 () Bool)

(declare-fun res!637118 () Bool)

(assert (=> b!950082 (=> (not res!637118) (not e!534924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!950082 (= res!637118 (validMask!0 (mask!27568 thiss!1141)))))

(declare-fun b!950083 () Bool)

(assert (=> b!950083 (= e!534924 false)))

(declare-fun lt!427880 () Bool)

(declare-datatypes ((List!19468 0))(
  ( (Nil!19465) (Cons!19464 (h!20624 (_ BitVec 64)) (t!27815 List!19468)) )
))
(declare-fun arrayNoDuplicates!0 (array!57532 (_ BitVec 32) List!19468) Bool)

(assert (=> b!950083 (= lt!427880 (arrayNoDuplicates!0 (_keys!10709 thiss!1141) #b00000000000000000000000000000000 Nil!19465))))

(declare-fun mapIsEmpty!33029 () Bool)

(assert (=> mapIsEmpty!33029 mapRes!33029))

(declare-fun e!534928 () Bool)

(declare-fun array_inv!21416 (array!57532) Bool)

(declare-fun array_inv!21417 (array!57530) Bool)

(assert (=> b!950084 (= e!534925 (and tp!63307 tp_is_empty!20745 (array_inv!21416 (_keys!10709 thiss!1141)) (array_inv!21417 (_values!5800 thiss!1141)) e!534928))))

(declare-fun b!950085 () Bool)

(declare-fun res!637120 () Bool)

(assert (=> b!950085 (=> (not res!637120) (not e!534924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57532 (_ BitVec 32)) Bool)

(assert (=> b!950085 (= res!637120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10709 thiss!1141) (mask!27568 thiss!1141)))))

(declare-fun b!950086 () Bool)

(declare-fun e!534929 () Bool)

(assert (=> b!950086 (= e!534929 tp_is_empty!20745)))

(declare-fun b!950087 () Bool)

(assert (=> b!950087 (= e!534928 (and e!534929 mapRes!33029))))

(declare-fun condMapEmpty!33029 () Bool)

(declare-fun mapDefault!33029 () ValueCell!9891)

(assert (=> b!950087 (= condMapEmpty!33029 (= (arr!27661 (_values!5800 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9891)) mapDefault!33029)))))

(assert (= (and start!81230 res!637119) b!950080))

(assert (= (and b!950080 res!637124) b!950079))

(assert (= (and b!950079 res!637122) b!950081))

(assert (= (and b!950081 res!637121) b!950082))

(assert (= (and b!950082 res!637118) b!950077))

(assert (= (and b!950077 res!637123) b!950085))

(assert (= (and b!950085 res!637120) b!950083))

(assert (= (and b!950087 condMapEmpty!33029) mapIsEmpty!33029))

(assert (= (and b!950087 (not condMapEmpty!33029)) mapNonEmpty!33029))

(assert (= (and mapNonEmpty!33029 ((_ is ValueCellFull!9891) mapValue!33029)) b!950078))

(assert (= (and b!950087 ((_ is ValueCellFull!9891) mapDefault!33029)) b!950086))

(assert (= b!950084 b!950087))

(assert (= start!81230 b!950084))

(declare-fun m!882647 () Bool)

(assert (=> b!950084 m!882647))

(declare-fun m!882649 () Bool)

(assert (=> b!950084 m!882649))

(declare-fun m!882651 () Bool)

(assert (=> b!950082 m!882651))

(declare-fun m!882653 () Bool)

(assert (=> b!950085 m!882653))

(declare-fun m!882655 () Bool)

(assert (=> b!950079 m!882655))

(declare-fun m!882657 () Bool)

(assert (=> start!81230 m!882657))

(declare-fun m!882659 () Bool)

(assert (=> b!950081 m!882659))

(assert (=> b!950081 m!882659))

(declare-fun m!882661 () Bool)

(assert (=> b!950081 m!882661))

(declare-fun m!882663 () Bool)

(assert (=> mapNonEmpty!33029 m!882663))

(declare-fun m!882665 () Bool)

(assert (=> b!950083 m!882665))

(check-sat (not start!81230) (not b!950081) (not b!950079) (not b!950083) (not b_next!18237) (not b!950084) (not mapNonEmpty!33029) tp_is_empty!20745 b_and!29711 (not b!950082) (not b!950085))
(check-sat b_and!29711 (not b_next!18237))
