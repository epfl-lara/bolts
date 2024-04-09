; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8098 () Bool)

(assert start!8098)

(declare-fun b!50919 () Bool)

(declare-fun b_free!1565 () Bool)

(declare-fun b_next!1565 () Bool)

(assert (=> b!50919 (= b_free!1565 (not b_next!1565))))

(declare-fun tp!6770 () Bool)

(declare-fun b_and!2785 () Bool)

(assert (=> b!50919 (= tp!6770 b_and!2785)))

(declare-fun b!50921 () Bool)

(declare-fun b_free!1567 () Bool)

(declare-fun b_next!1567 () Bool)

(assert (=> b!50921 (= b_free!1567 (not b_next!1567))))

(declare-fun tp!6769 () Bool)

(declare-fun b_and!2787 () Bool)

(assert (=> b!50921 (= tp!6769 b_and!2787)))

(declare-fun b!50911 () Bool)

(declare-fun e!32944 () Bool)

(declare-fun tp_is_empty!2199 () Bool)

(assert (=> b!50911 (= e!32944 tp_is_empty!2199)))

(declare-fun b!50912 () Bool)

(declare-fun res!29225 () Bool)

(declare-fun e!32956 () Bool)

(assert (=> b!50912 (=> (not res!29225) (not e!32956))))

(declare-datatypes ((V!2579 0))(
  ( (V!2580 (val!1144 Int)) )
))
(declare-datatypes ((array!3312 0))(
  ( (array!3313 (arr!1582 (Array (_ BitVec 32) (_ BitVec 64))) (size!1807 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!756 0))(
  ( (ValueCellFull!756 (v!2173 V!2579)) (EmptyCell!756) )
))
(declare-datatypes ((array!3314 0))(
  ( (array!3315 (arr!1583 (Array (_ BitVec 32) ValueCell!756)) (size!1808 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!420 0))(
  ( (LongMapFixedSize!421 (defaultEntry!1924 Int) (mask!5721 (_ BitVec 32)) (extraKeys!1815 (_ BitVec 32)) (zeroValue!1842 V!2579) (minValue!1842 V!2579) (_size!259 (_ BitVec 32)) (_keys!3536 array!3312) (_values!1907 array!3314) (_vacant!259 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!420)

(declare-datatypes ((Cell!242 0))(
  ( (Cell!243 (v!2174 LongMapFixedSize!420)) )
))
(declare-datatypes ((LongMap!242 0))(
  ( (LongMap!243 (underlying!132 Cell!242)) )
))
(declare-fun thiss!992 () LongMap!242)

(assert (=> b!50912 (= res!29225 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5721 newMap!16)) (_size!259 (v!2174 (underlying!132 thiss!992)))))))

(declare-fun b!50913 () Bool)

(assert (=> b!50913 (= e!32956 (and (= (size!1808 (_values!1907 (v!2174 (underlying!132 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5721 (v!2174 (underlying!132 thiss!992))))) (= (size!1807 (_keys!3536 (v!2174 (underlying!132 thiss!992)))) (size!1808 (_values!1907 (v!2174 (underlying!132 thiss!992))))) (bvslt (mask!5721 (v!2174 (underlying!132 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!50914 () Bool)

(declare-fun e!32955 () Bool)

(assert (=> b!50914 (= e!32955 tp_is_empty!2199)))

(declare-fun b!50915 () Bool)

(declare-fun res!29222 () Bool)

(assert (=> b!50915 (=> (not res!29222) (not e!32956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!50915 (= res!29222 (validMask!0 (mask!5721 (v!2174 (underlying!132 thiss!992)))))))

(declare-fun mapNonEmpty!2239 () Bool)

(declare-fun mapRes!2240 () Bool)

(declare-fun tp!6768 () Bool)

(declare-fun e!32953 () Bool)

(assert (=> mapNonEmpty!2239 (= mapRes!2240 (and tp!6768 e!32953))))

(declare-fun mapValue!2240 () ValueCell!756)

(declare-fun mapKey!2240 () (_ BitVec 32))

(declare-fun mapRest!2239 () (Array (_ BitVec 32) ValueCell!756))

(assert (=> mapNonEmpty!2239 (= (arr!1583 (_values!1907 (v!2174 (underlying!132 thiss!992)))) (store mapRest!2239 mapKey!2240 mapValue!2240))))

(declare-fun res!29223 () Bool)

(assert (=> start!8098 (=> (not res!29223) (not e!32956))))

(declare-fun valid!141 (LongMap!242) Bool)

(assert (=> start!8098 (= res!29223 (valid!141 thiss!992))))

(assert (=> start!8098 e!32956))

(declare-fun e!32954 () Bool)

(assert (=> start!8098 e!32954))

(assert (=> start!8098 true))

(declare-fun e!32945 () Bool)

(assert (=> start!8098 e!32945))

(declare-fun b!50916 () Bool)

(declare-fun e!32948 () Bool)

(assert (=> b!50916 (= e!32948 tp_is_empty!2199)))

(declare-fun b!50917 () Bool)

(declare-fun e!32951 () Bool)

(declare-fun mapRes!2239 () Bool)

(assert (=> b!50917 (= e!32951 (and e!32955 mapRes!2239))))

(declare-fun condMapEmpty!2239 () Bool)

(declare-fun mapDefault!2239 () ValueCell!756)

(assert (=> b!50917 (= condMapEmpty!2239 (= (arr!1583 (_values!1907 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!756)) mapDefault!2239)))))

(declare-fun mapIsEmpty!2239 () Bool)

(assert (=> mapIsEmpty!2239 mapRes!2239))

(declare-fun b!50918 () Bool)

(declare-fun e!32947 () Bool)

(declare-fun e!32946 () Bool)

(assert (=> b!50918 (= e!32947 e!32946)))

(declare-fun e!32950 () Bool)

(declare-fun array_inv!921 (array!3312) Bool)

(declare-fun array_inv!922 (array!3314) Bool)

(assert (=> b!50919 (= e!32946 (and tp!6770 tp_is_empty!2199 (array_inv!921 (_keys!3536 (v!2174 (underlying!132 thiss!992)))) (array_inv!922 (_values!1907 (v!2174 (underlying!132 thiss!992)))) e!32950))))

(declare-fun b!50920 () Bool)

(assert (=> b!50920 (= e!32953 tp_is_empty!2199)))

(assert (=> b!50921 (= e!32945 (and tp!6769 tp_is_empty!2199 (array_inv!921 (_keys!3536 newMap!16)) (array_inv!922 (_values!1907 newMap!16)) e!32951))))

(declare-fun b!50922 () Bool)

(assert (=> b!50922 (= e!32954 e!32947)))

(declare-fun mapIsEmpty!2240 () Bool)

(assert (=> mapIsEmpty!2240 mapRes!2240))

(declare-fun mapNonEmpty!2240 () Bool)

(declare-fun tp!6767 () Bool)

(assert (=> mapNonEmpty!2240 (= mapRes!2239 (and tp!6767 e!32944))))

(declare-fun mapRest!2240 () (Array (_ BitVec 32) ValueCell!756))

(declare-fun mapValue!2239 () ValueCell!756)

(declare-fun mapKey!2239 () (_ BitVec 32))

(assert (=> mapNonEmpty!2240 (= (arr!1583 (_values!1907 newMap!16)) (store mapRest!2240 mapKey!2239 mapValue!2239))))

(declare-fun b!50923 () Bool)

(assert (=> b!50923 (= e!32950 (and e!32948 mapRes!2240))))

(declare-fun condMapEmpty!2240 () Bool)

(declare-fun mapDefault!2240 () ValueCell!756)

(assert (=> b!50923 (= condMapEmpty!2240 (= (arr!1583 (_values!1907 (v!2174 (underlying!132 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!756)) mapDefault!2240)))))

(declare-fun b!50924 () Bool)

(declare-fun res!29224 () Bool)

(assert (=> b!50924 (=> (not res!29224) (not e!32956))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!50924 (= res!29224 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1807 (_keys!3536 (v!2174 (underlying!132 thiss!992)))))))))

(declare-fun b!50925 () Bool)

(declare-fun res!29226 () Bool)

(assert (=> b!50925 (=> (not res!29226) (not e!32956))))

(declare-fun valid!142 (LongMapFixedSize!420) Bool)

(assert (=> b!50925 (= res!29226 (valid!142 newMap!16))))

(assert (= (and start!8098 res!29223) b!50924))

(assert (= (and b!50924 res!29224) b!50925))

(assert (= (and b!50925 res!29226) b!50912))

(assert (= (and b!50912 res!29225) b!50915))

(assert (= (and b!50915 res!29222) b!50913))

(assert (= (and b!50923 condMapEmpty!2240) mapIsEmpty!2240))

(assert (= (and b!50923 (not condMapEmpty!2240)) mapNonEmpty!2239))

(get-info :version)

(assert (= (and mapNonEmpty!2239 ((_ is ValueCellFull!756) mapValue!2240)) b!50920))

(assert (= (and b!50923 ((_ is ValueCellFull!756) mapDefault!2240)) b!50916))

(assert (= b!50919 b!50923))

(assert (= b!50918 b!50919))

(assert (= b!50922 b!50918))

(assert (= start!8098 b!50922))

(assert (= (and b!50917 condMapEmpty!2239) mapIsEmpty!2239))

(assert (= (and b!50917 (not condMapEmpty!2239)) mapNonEmpty!2240))

(assert (= (and mapNonEmpty!2240 ((_ is ValueCellFull!756) mapValue!2239)) b!50911))

(assert (= (and b!50917 ((_ is ValueCellFull!756) mapDefault!2239)) b!50914))

(assert (= b!50921 b!50917))

(assert (= start!8098 b!50921))

(declare-fun m!44031 () Bool)

(assert (=> b!50919 m!44031))

(declare-fun m!44033 () Bool)

(assert (=> b!50919 m!44033))

(declare-fun m!44035 () Bool)

(assert (=> mapNonEmpty!2240 m!44035))

(declare-fun m!44037 () Bool)

(assert (=> b!50921 m!44037))

(declare-fun m!44039 () Bool)

(assert (=> b!50921 m!44039))

(declare-fun m!44041 () Bool)

(assert (=> b!50925 m!44041))

(declare-fun m!44043 () Bool)

(assert (=> b!50915 m!44043))

(declare-fun m!44045 () Bool)

(assert (=> mapNonEmpty!2239 m!44045))

(declare-fun m!44047 () Bool)

(assert (=> start!8098 m!44047))

(check-sat (not mapNonEmpty!2239) (not b_next!1567) (not mapNonEmpty!2240) b_and!2787 (not start!8098) (not b_next!1565) (not b!50925) (not b!50919) (not b!50915) tp_is_empty!2199 (not b!50921) b_and!2785)
(check-sat b_and!2785 b_and!2787 (not b_next!1565) (not b_next!1567))
