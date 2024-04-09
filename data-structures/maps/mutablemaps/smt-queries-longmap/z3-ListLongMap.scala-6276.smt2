; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80308 () Bool)

(assert start!80308)

(declare-fun b!942887 () Bool)

(declare-fun b_free!17979 () Bool)

(declare-fun b_next!17979 () Bool)

(assert (=> b!942887 (= b_free!17979 (not b_next!17979))))

(declare-fun tp!62444 () Bool)

(declare-fun b_and!29409 () Bool)

(assert (=> b!942887 (= tp!62444 b_and!29409)))

(declare-fun mapNonEmpty!32552 () Bool)

(declare-fun mapRes!32552 () Bool)

(declare-fun tp!62443 () Bool)

(declare-fun e!530173 () Bool)

(assert (=> mapNonEmpty!32552 (= mapRes!32552 (and tp!62443 e!530173))))

(declare-datatypes ((V!32281 0))(
  ( (V!32282 (val!10294 Int)) )
))
(declare-datatypes ((ValueCell!9762 0))(
  ( (ValueCellFull!9762 (v!12825 V!32281)) (EmptyCell!9762) )
))
(declare-fun mapValue!32552 () ValueCell!9762)

(declare-fun mapKey!32552 () (_ BitVec 32))

(declare-fun mapRest!32552 () (Array (_ BitVec 32) ValueCell!9762))

(declare-datatypes ((array!56962 0))(
  ( (array!56963 (arr!27403 (Array (_ BitVec 32) ValueCell!9762)) (size!27869 (_ BitVec 32))) )
))
(declare-datatypes ((array!56964 0))(
  ( (array!56965 (arr!27404 (Array (_ BitVec 32) (_ BitVec 64))) (size!27870 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4674 0))(
  ( (LongMapFixedSize!4675 (defaultEntry!5628 Int) (mask!27241 (_ BitVec 32)) (extraKeys!5360 (_ BitVec 32)) (zeroValue!5464 V!32281) (minValue!5464 V!32281) (_size!2392 (_ BitVec 32)) (_keys!10498 array!56964) (_values!5651 array!56962) (_vacant!2392 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4674)

(assert (=> mapNonEmpty!32552 (= (arr!27403 (_values!5651 thiss!1141)) (store mapRest!32552 mapKey!32552 mapValue!32552))))

(declare-fun res!633682 () Bool)

(declare-fun e!530174 () Bool)

(assert (=> start!80308 (=> (not res!633682) (not e!530174))))

(declare-fun valid!1768 (LongMapFixedSize!4674) Bool)

(assert (=> start!80308 (= res!633682 (valid!1768 thiss!1141))))

(assert (=> start!80308 e!530174))

(declare-fun e!530170 () Bool)

(assert (=> start!80308 e!530170))

(assert (=> start!80308 true))

(declare-fun b!942886 () Bool)

(declare-fun res!633686 () Bool)

(assert (=> b!942886 (=> (not res!633686) (not e!530174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942886 (= res!633686 (validMask!0 (mask!27241 thiss!1141)))))

(declare-fun e!530171 () Bool)

(declare-fun tp_is_empty!20487 () Bool)

(declare-fun array_inv!21242 (array!56964) Bool)

(declare-fun array_inv!21243 (array!56962) Bool)

(assert (=> b!942887 (= e!530170 (and tp!62444 tp_is_empty!20487 (array_inv!21242 (_keys!10498 thiss!1141)) (array_inv!21243 (_values!5651 thiss!1141)) e!530171))))

(declare-fun b!942888 () Bool)

(declare-fun e!530169 () Bool)

(assert (=> b!942888 (= e!530171 (and e!530169 mapRes!32552))))

(declare-fun condMapEmpty!32552 () Bool)

(declare-fun mapDefault!32552 () ValueCell!9762)

(assert (=> b!942888 (= condMapEmpty!32552 (= (arr!27403 (_values!5651 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9762)) mapDefault!32552)))))

(declare-fun b!942889 () Bool)

(assert (=> b!942889 (= e!530169 tp_is_empty!20487)))

(declare-fun b!942890 () Bool)

(declare-fun res!633683 () Bool)

(assert (=> b!942890 (=> (not res!633683) (not e!530174))))

(assert (=> b!942890 (= res!633683 (and (= (size!27869 (_values!5651 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27241 thiss!1141))) (= (size!27870 (_keys!10498 thiss!1141)) (size!27869 (_values!5651 thiss!1141))) (bvsge (mask!27241 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5360 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5360 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942891 () Bool)

(assert (=> b!942891 (= e!530173 tp_is_empty!20487)))

(declare-fun b!942892 () Bool)

(declare-fun res!633687 () Bool)

(assert (=> b!942892 (=> (not res!633687) (not e!530174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56964 (_ BitVec 32)) Bool)

(assert (=> b!942892 (= res!633687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10498 thiss!1141) (mask!27241 thiss!1141)))))

(declare-fun b!942893 () Bool)

(declare-fun res!633681 () Bool)

(assert (=> b!942893 (=> (not res!633681) (not e!530174))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!942893 (= res!633681 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!942894 () Bool)

(assert (=> b!942894 (= e!530174 false)))

(declare-fun lt!425163 () Bool)

(declare-datatypes ((List!19366 0))(
  ( (Nil!19363) (Cons!19362 (h!20512 (_ BitVec 64)) (t!27689 List!19366)) )
))
(declare-fun arrayNoDuplicates!0 (array!56964 (_ BitVec 32) List!19366) Bool)

(assert (=> b!942894 (= lt!425163 (arrayNoDuplicates!0 (_keys!10498 thiss!1141) #b00000000000000000000000000000000 Nil!19363))))

(declare-fun b!942895 () Bool)

(declare-fun res!633684 () Bool)

(assert (=> b!942895 (=> (not res!633684) (not e!530174))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9032 0))(
  ( (MissingZero!9032 (index!38498 (_ BitVec 32))) (Found!9032 (index!38499 (_ BitVec 32))) (Intermediate!9032 (undefined!9844 Bool) (index!38500 (_ BitVec 32)) (x!80962 (_ BitVec 32))) (Undefined!9032) (MissingVacant!9032 (index!38501 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56964 (_ BitVec 32)) SeekEntryResult!9032)

(assert (=> b!942895 (= res!633684 (not ((_ is Found!9032) (seekEntry!0 key!756 (_keys!10498 thiss!1141) (mask!27241 thiss!1141)))))))

(declare-fun mapIsEmpty!32552 () Bool)

(assert (=> mapIsEmpty!32552 mapRes!32552))

(declare-fun b!942896 () Bool)

(declare-fun res!633685 () Bool)

(assert (=> b!942896 (=> (not res!633685) (not e!530174))))

(declare-datatypes ((tuple2!13530 0))(
  ( (tuple2!13531 (_1!6775 (_ BitVec 64)) (_2!6775 V!32281)) )
))
(declare-datatypes ((List!19367 0))(
  ( (Nil!19364) (Cons!19363 (h!20513 tuple2!13530) (t!27690 List!19367)) )
))
(declare-datatypes ((ListLongMap!12241 0))(
  ( (ListLongMap!12242 (toList!6136 List!19367)) )
))
(declare-fun contains!5157 (ListLongMap!12241 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3324 (array!56964 array!56962 (_ BitVec 32) (_ BitVec 32) V!32281 V!32281 (_ BitVec 32) Int) ListLongMap!12241)

(assert (=> b!942896 (= res!633685 (contains!5157 (getCurrentListMap!3324 (_keys!10498 thiss!1141) (_values!5651 thiss!1141) (mask!27241 thiss!1141) (extraKeys!5360 thiss!1141) (zeroValue!5464 thiss!1141) (minValue!5464 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5628 thiss!1141)) key!756))))

(assert (= (and start!80308 res!633682) b!942893))

(assert (= (and b!942893 res!633681) b!942895))

(assert (= (and b!942895 res!633684) b!942896))

(assert (= (and b!942896 res!633685) b!942886))

(assert (= (and b!942886 res!633686) b!942890))

(assert (= (and b!942890 res!633683) b!942892))

(assert (= (and b!942892 res!633687) b!942894))

(assert (= (and b!942888 condMapEmpty!32552) mapIsEmpty!32552))

(assert (= (and b!942888 (not condMapEmpty!32552)) mapNonEmpty!32552))

(assert (= (and mapNonEmpty!32552 ((_ is ValueCellFull!9762) mapValue!32552)) b!942891))

(assert (= (and b!942888 ((_ is ValueCellFull!9762) mapDefault!32552)) b!942889))

(assert (= b!942887 b!942888))

(assert (= start!80308 b!942887))

(declare-fun m!877315 () Bool)

(assert (=> b!942895 m!877315))

(declare-fun m!877317 () Bool)

(assert (=> b!942896 m!877317))

(assert (=> b!942896 m!877317))

(declare-fun m!877319 () Bool)

(assert (=> b!942896 m!877319))

(declare-fun m!877321 () Bool)

(assert (=> b!942892 m!877321))

(declare-fun m!877323 () Bool)

(assert (=> mapNonEmpty!32552 m!877323))

(declare-fun m!877325 () Bool)

(assert (=> b!942886 m!877325))

(declare-fun m!877327 () Bool)

(assert (=> b!942894 m!877327))

(declare-fun m!877329 () Bool)

(assert (=> start!80308 m!877329))

(declare-fun m!877331 () Bool)

(assert (=> b!942887 m!877331))

(declare-fun m!877333 () Bool)

(assert (=> b!942887 m!877333))

(check-sat b_and!29409 (not b!942895) (not b!942887) (not mapNonEmpty!32552) (not b!942886) tp_is_empty!20487 (not b!942896) (not start!80308) (not b!942894) (not b!942892) (not b_next!17979))
(check-sat b_and!29409 (not b_next!17979))
