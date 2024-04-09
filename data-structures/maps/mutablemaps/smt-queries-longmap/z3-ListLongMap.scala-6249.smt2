; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79990 () Bool)

(assert start!79990)

(declare-fun b!939876 () Bool)

(declare-fun b_free!17817 () Bool)

(declare-fun b_next!17817 () Bool)

(assert (=> b!939876 (= b_free!17817 (not b_next!17817))))

(declare-fun tp!61927 () Bool)

(declare-fun b_and!29247 () Bool)

(assert (=> b!939876 (= tp!61927 b_and!29247)))

(declare-fun b!939874 () Bool)

(declare-fun e!528085 () Bool)

(declare-fun tp_is_empty!20325 () Bool)

(assert (=> b!939874 (= e!528085 tp_is_empty!20325)))

(declare-fun e!528087 () Bool)

(declare-datatypes ((V!32065 0))(
  ( (V!32066 (val!10213 Int)) )
))
(declare-datatypes ((ValueCell!9681 0))(
  ( (ValueCellFull!9681 (v!12744 V!32065)) (EmptyCell!9681) )
))
(declare-datatypes ((array!56620 0))(
  ( (array!56621 (arr!27241 (Array (_ BitVec 32) ValueCell!9681)) (size!27703 (_ BitVec 32))) )
))
(declare-datatypes ((array!56622 0))(
  ( (array!56623 (arr!27242 (Array (_ BitVec 32) (_ BitVec 64))) (size!27704 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4512 0))(
  ( (LongMapFixedSize!4513 (defaultEntry!5547 Int) (mask!27069 (_ BitVec 32)) (extraKeys!5279 (_ BitVec 32)) (zeroValue!5383 V!32065) (minValue!5383 V!32065) (_size!2311 (_ BitVec 32)) (_keys!10393 array!56622) (_values!5570 array!56620) (_vacant!2311 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4512)

(declare-fun e!528088 () Bool)

(declare-fun array_inv!21136 (array!56622) Bool)

(declare-fun array_inv!21137 (array!56620) Bool)

(assert (=> b!939876 (= e!528087 (and tp!61927 tp_is_empty!20325 (array_inv!21136 (_keys!10393 thiss!1141)) (array_inv!21137 (_values!5570 thiss!1141)) e!528088))))

(declare-fun b!939877 () Bool)

(declare-fun res!632149 () Bool)

(declare-fun e!528089 () Bool)

(assert (=> b!939877 (=> (not res!632149) (not e!528089))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!939877 (= res!632149 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!939878 () Bool)

(assert (=> b!939878 (= e!528089 false)))

(declare-datatypes ((SeekEntryResult!8974 0))(
  ( (MissingZero!8974 (index!38266 (_ BitVec 32))) (Found!8974 (index!38267 (_ BitVec 32))) (Intermediate!8974 (undefined!9786 Bool) (index!38268 (_ BitVec 32)) (x!80580 (_ BitVec 32))) (Undefined!8974) (MissingVacant!8974 (index!38269 (_ BitVec 32))) )
))
(declare-fun lt!424548 () SeekEntryResult!8974)

(declare-fun seekEntry!0 ((_ BitVec 64) array!56622 (_ BitVec 32)) SeekEntryResult!8974)

(assert (=> b!939878 (= lt!424548 (seekEntry!0 key!756 (_keys!10393 thiss!1141) (mask!27069 thiss!1141)))))

(declare-fun mapIsEmpty!32278 () Bool)

(declare-fun mapRes!32278 () Bool)

(assert (=> mapIsEmpty!32278 mapRes!32278))

(declare-fun b!939879 () Bool)

(declare-fun e!528090 () Bool)

(assert (=> b!939879 (= e!528088 (and e!528090 mapRes!32278))))

(declare-fun condMapEmpty!32278 () Bool)

(declare-fun mapDefault!32278 () ValueCell!9681)

(assert (=> b!939879 (= condMapEmpty!32278 (= (arr!27241 (_values!5570 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9681)) mapDefault!32278)))))

(declare-fun mapNonEmpty!32278 () Bool)

(declare-fun tp!61926 () Bool)

(assert (=> mapNonEmpty!32278 (= mapRes!32278 (and tp!61926 e!528085))))

(declare-fun mapKey!32278 () (_ BitVec 32))

(declare-fun mapValue!32278 () ValueCell!9681)

(declare-fun mapRest!32278 () (Array (_ BitVec 32) ValueCell!9681))

(assert (=> mapNonEmpty!32278 (= (arr!27241 (_values!5570 thiss!1141)) (store mapRest!32278 mapKey!32278 mapValue!32278))))

(declare-fun res!632150 () Bool)

(assert (=> start!79990 (=> (not res!632150) (not e!528089))))

(declare-fun valid!1715 (LongMapFixedSize!4512) Bool)

(assert (=> start!79990 (= res!632150 (valid!1715 thiss!1141))))

(assert (=> start!79990 e!528089))

(assert (=> start!79990 e!528087))

(assert (=> start!79990 true))

(declare-fun b!939875 () Bool)

(assert (=> b!939875 (= e!528090 tp_is_empty!20325)))

(assert (= (and start!79990 res!632150) b!939877))

(assert (= (and b!939877 res!632149) b!939878))

(assert (= (and b!939879 condMapEmpty!32278) mapIsEmpty!32278))

(assert (= (and b!939879 (not condMapEmpty!32278)) mapNonEmpty!32278))

(get-info :version)

(assert (= (and mapNonEmpty!32278 ((_ is ValueCellFull!9681) mapValue!32278)) b!939874))

(assert (= (and b!939879 ((_ is ValueCellFull!9681) mapDefault!32278)) b!939875))

(assert (= b!939876 b!939879))

(assert (= start!79990 b!939876))

(declare-fun m!875589 () Bool)

(assert (=> b!939876 m!875589))

(declare-fun m!875591 () Bool)

(assert (=> b!939876 m!875591))

(declare-fun m!875593 () Bool)

(assert (=> b!939878 m!875593))

(declare-fun m!875595 () Bool)

(assert (=> mapNonEmpty!32278 m!875595))

(declare-fun m!875597 () Bool)

(assert (=> start!79990 m!875597))

(check-sat (not b!939876) (not b!939878) b_and!29247 (not start!79990) (not b_next!17817) (not mapNonEmpty!32278) tp_is_empty!20325)
(check-sat b_and!29247 (not b_next!17817))
