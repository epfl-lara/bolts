; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8242 () Bool)

(assert start!8242)

(declare-fun b!52149 () Bool)

(declare-fun b_free!1625 () Bool)

(declare-fun b_next!1625 () Bool)

(assert (=> b!52149 (= b_free!1625 (not b_next!1625))))

(declare-fun tp!6977 () Bool)

(declare-fun b_and!2845 () Bool)

(assert (=> b!52149 (= tp!6977 b_and!2845)))

(declare-fun b!52152 () Bool)

(declare-fun b_free!1627 () Bool)

(declare-fun b_next!1627 () Bool)

(assert (=> b!52152 (= b_free!1627 (not b_next!1627))))

(declare-fun tp!6978 () Bool)

(declare-fun b_and!2847 () Bool)

(assert (=> b!52152 (= tp!6978 b_and!2847)))

(declare-fun b!52144 () Bool)

(declare-fun res!29736 () Bool)

(declare-fun e!33864 () Bool)

(assert (=> b!52144 (=> (not res!29736) (not e!33864))))

(declare-datatypes ((V!2619 0))(
  ( (V!2620 (val!1159 Int)) )
))
(declare-datatypes ((array!3380 0))(
  ( (array!3381 (arr!1612 (Array (_ BitVec 32) (_ BitVec 64))) (size!1841 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!771 0))(
  ( (ValueCellFull!771 (v!2203 V!2619)) (EmptyCell!771) )
))
(declare-datatypes ((array!3382 0))(
  ( (array!3383 (arr!1613 (Array (_ BitVec 32) ValueCell!771)) (size!1842 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!450 0))(
  ( (LongMapFixedSize!451 (defaultEntry!1939 Int) (mask!5758 (_ BitVec 32)) (extraKeys!1830 (_ BitVec 32)) (zeroValue!1857 V!2619) (minValue!1857 V!2619) (_size!274 (_ BitVec 32)) (_keys!3559 array!3380) (_values!1922 array!3382) (_vacant!274 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!266 0))(
  ( (Cell!267 (v!2204 LongMapFixedSize!450)) )
))
(declare-datatypes ((LongMap!266 0))(
  ( (LongMap!267 (underlying!144 Cell!266)) )
))
(declare-fun thiss!992 () LongMap!266)

(declare-datatypes ((List!1355 0))(
  ( (Nil!1352) (Cons!1351 (h!1931 (_ BitVec 64)) (t!4397 List!1355)) )
))
(declare-fun arrayNoDuplicates!0 (array!3380 (_ BitVec 32) List!1355) Bool)

(assert (=> b!52144 (= res!29736 (arrayNoDuplicates!0 (_keys!3559 (v!2204 (underlying!144 thiss!992))) #b00000000000000000000000000000000 Nil!1352))))

(declare-fun b!52145 () Bool)

(declare-fun res!29734 () Bool)

(assert (=> b!52145 (=> (not res!29734) (not e!33864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3380 (_ BitVec 32)) Bool)

(assert (=> b!52145 (= res!29734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3559 (v!2204 (underlying!144 thiss!992))) (mask!5758 (v!2204 (underlying!144 thiss!992)))))))

(declare-fun mapNonEmpty!2357 () Bool)

(declare-fun mapRes!2358 () Bool)

(declare-fun tp!6976 () Bool)

(declare-fun e!33865 () Bool)

(assert (=> mapNonEmpty!2357 (= mapRes!2358 (and tp!6976 e!33865))))

(declare-fun mapValue!2357 () ValueCell!771)

(declare-fun mapKey!2358 () (_ BitVec 32))

(declare-fun newMap!16 () LongMapFixedSize!450)

(declare-fun mapRest!2357 () (Array (_ BitVec 32) ValueCell!771))

(assert (=> mapNonEmpty!2357 (= (arr!1613 (_values!1922 newMap!16)) (store mapRest!2357 mapKey!2358 mapValue!2357))))

(declare-fun b!52146 () Bool)

(declare-fun tp_is_empty!2229 () Bool)

(assert (=> b!52146 (= e!33865 tp_is_empty!2229)))

(declare-fun b!52147 () Bool)

(declare-fun res!29731 () Bool)

(assert (=> b!52147 (=> (not res!29731) (not e!33864))))

(assert (=> b!52147 (= res!29731 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5758 newMap!16)) (_size!274 (v!2204 (underlying!144 thiss!992)))))))

(declare-fun b!52148 () Bool)

(declare-fun e!33867 () Bool)

(declare-fun e!33868 () Bool)

(assert (=> b!52148 (= e!33867 e!33868)))

(declare-fun e!33866 () Bool)

(declare-fun array_inv!939 (array!3380) Bool)

(declare-fun array_inv!940 (array!3382) Bool)

(assert (=> b!52149 (= e!33868 (and tp!6977 tp_is_empty!2229 (array_inv!939 (_keys!3559 (v!2204 (underlying!144 thiss!992)))) (array_inv!940 (_values!1922 (v!2204 (underlying!144 thiss!992)))) e!33866))))

(declare-fun mapIsEmpty!2357 () Bool)

(declare-fun mapRes!2357 () Bool)

(assert (=> mapIsEmpty!2357 mapRes!2357))

(declare-fun b!52151 () Bool)

(declare-fun e!33869 () Bool)

(declare-fun e!33860 () Bool)

(assert (=> b!52151 (= e!33869 (and e!33860 mapRes!2358))))

(declare-fun condMapEmpty!2358 () Bool)

(declare-fun mapDefault!2357 () ValueCell!771)

(assert (=> b!52151 (= condMapEmpty!2358 (= (arr!1613 (_values!1922 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!771)) mapDefault!2357)))))

(declare-fun e!33861 () Bool)

(assert (=> b!52152 (= e!33861 (and tp!6978 tp_is_empty!2229 (array_inv!939 (_keys!3559 newMap!16)) (array_inv!940 (_values!1922 newMap!16)) e!33869))))

(declare-fun b!52153 () Bool)

(declare-fun res!29735 () Bool)

(assert (=> b!52153 (=> (not res!29735) (not e!33864))))

(declare-fun valid!156 (LongMapFixedSize!450) Bool)

(assert (=> b!52153 (= res!29735 (valid!156 newMap!16))))

(declare-fun b!52154 () Bool)

(declare-fun e!33858 () Bool)

(assert (=> b!52154 (= e!33858 tp_is_empty!2229)))

(declare-fun b!52155 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!52155 (= e!33864 (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000))))

(declare-fun b!52156 () Bool)

(declare-fun res!29732 () Bool)

(assert (=> b!52156 (=> (not res!29732) (not e!33864))))

(assert (=> b!52156 (= res!29732 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1841 (_keys!3559 (v!2204 (underlying!144 thiss!992)))))))))

(declare-fun b!52150 () Bool)

(declare-fun res!29733 () Bool)

(assert (=> b!52150 (=> (not res!29733) (not e!33864))))

(assert (=> b!52150 (= res!29733 (and (= (size!1842 (_values!1922 (v!2204 (underlying!144 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5758 (v!2204 (underlying!144 thiss!992))))) (= (size!1841 (_keys!3559 (v!2204 (underlying!144 thiss!992)))) (size!1842 (_values!1922 (v!2204 (underlying!144 thiss!992))))) (bvsge (mask!5758 (v!2204 (underlying!144 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1830 (v!2204 (underlying!144 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1830 (v!2204 (underlying!144 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun res!29730 () Bool)

(assert (=> start!8242 (=> (not res!29730) (not e!33864))))

(declare-fun valid!157 (LongMap!266) Bool)

(assert (=> start!8242 (= res!29730 (valid!157 thiss!992))))

(assert (=> start!8242 e!33864))

(declare-fun e!33857 () Bool)

(assert (=> start!8242 e!33857))

(assert (=> start!8242 true))

(assert (=> start!8242 e!33861))

(declare-fun mapIsEmpty!2358 () Bool)

(assert (=> mapIsEmpty!2358 mapRes!2358))

(declare-fun b!52157 () Bool)

(declare-fun e!33863 () Bool)

(assert (=> b!52157 (= e!33863 tp_is_empty!2229)))

(declare-fun b!52158 () Bool)

(assert (=> b!52158 (= e!33860 tp_is_empty!2229)))

(declare-fun b!52159 () Bool)

(declare-fun res!29729 () Bool)

(assert (=> b!52159 (=> (not res!29729) (not e!33864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!52159 (= res!29729 (validMask!0 (mask!5758 (v!2204 (underlying!144 thiss!992)))))))

(declare-fun b!52160 () Bool)

(assert (=> b!52160 (= e!33866 (and e!33863 mapRes!2357))))

(declare-fun condMapEmpty!2357 () Bool)

(declare-fun mapDefault!2358 () ValueCell!771)

(assert (=> b!52160 (= condMapEmpty!2357 (= (arr!1613 (_values!1922 (v!2204 (underlying!144 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!771)) mapDefault!2358)))))

(declare-fun b!52161 () Bool)

(assert (=> b!52161 (= e!33857 e!33867)))

(declare-fun mapNonEmpty!2358 () Bool)

(declare-fun tp!6975 () Bool)

(assert (=> mapNonEmpty!2358 (= mapRes!2357 (and tp!6975 e!33858))))

(declare-fun mapValue!2358 () ValueCell!771)

(declare-fun mapRest!2358 () (Array (_ BitVec 32) ValueCell!771))

(declare-fun mapKey!2357 () (_ BitVec 32))

(assert (=> mapNonEmpty!2358 (= (arr!1613 (_values!1922 (v!2204 (underlying!144 thiss!992)))) (store mapRest!2358 mapKey!2357 mapValue!2358))))

(assert (= (and start!8242 res!29730) b!52156))

(assert (= (and b!52156 res!29732) b!52153))

(assert (= (and b!52153 res!29735) b!52147))

(assert (= (and b!52147 res!29731) b!52159))

(assert (= (and b!52159 res!29729) b!52150))

(assert (= (and b!52150 res!29733) b!52145))

(assert (= (and b!52145 res!29734) b!52144))

(assert (= (and b!52144 res!29736) b!52155))

(assert (= (and b!52160 condMapEmpty!2357) mapIsEmpty!2357))

(assert (= (and b!52160 (not condMapEmpty!2357)) mapNonEmpty!2358))

(get-info :version)

(assert (= (and mapNonEmpty!2358 ((_ is ValueCellFull!771) mapValue!2358)) b!52154))

(assert (= (and b!52160 ((_ is ValueCellFull!771) mapDefault!2358)) b!52157))

(assert (= b!52149 b!52160))

(assert (= b!52148 b!52149))

(assert (= b!52161 b!52148))

(assert (= start!8242 b!52161))

(assert (= (and b!52151 condMapEmpty!2358) mapIsEmpty!2358))

(assert (= (and b!52151 (not condMapEmpty!2358)) mapNonEmpty!2357))

(assert (= (and mapNonEmpty!2357 ((_ is ValueCellFull!771) mapValue!2357)) b!52146))

(assert (= (and b!52151 ((_ is ValueCellFull!771) mapDefault!2357)) b!52158))

(assert (= b!52152 b!52151))

(assert (= start!8242 b!52152))

(declare-fun m!44739 () Bool)

(assert (=> b!52159 m!44739))

(declare-fun m!44741 () Bool)

(assert (=> b!52145 m!44741))

(declare-fun m!44743 () Bool)

(assert (=> b!52152 m!44743))

(declare-fun m!44745 () Bool)

(assert (=> b!52152 m!44745))

(declare-fun m!44747 () Bool)

(assert (=> mapNonEmpty!2358 m!44747))

(declare-fun m!44749 () Bool)

(assert (=> b!52153 m!44749))

(declare-fun m!44751 () Bool)

(assert (=> start!8242 m!44751))

(declare-fun m!44753 () Bool)

(assert (=> mapNonEmpty!2357 m!44753))

(declare-fun m!44755 () Bool)

(assert (=> b!52144 m!44755))

(declare-fun m!44757 () Bool)

(assert (=> b!52149 m!44757))

(declare-fun m!44759 () Bool)

(assert (=> b!52149 m!44759))

(check-sat (not start!8242) b_and!2847 tp_is_empty!2229 (not mapNonEmpty!2357) (not b!52152) (not b!52149) (not b_next!1627) (not b!52159) (not b!52144) (not mapNonEmpty!2358) (not b!52145) (not b_next!1625) b_and!2845 (not b!52153))
(check-sat b_and!2845 b_and!2847 (not b_next!1625) (not b_next!1627))
