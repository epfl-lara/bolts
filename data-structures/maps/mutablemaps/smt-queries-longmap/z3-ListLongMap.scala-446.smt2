; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8302 () Bool)

(assert start!8302)

(declare-fun b!53857 () Bool)

(declare-fun b_free!1745 () Bool)

(declare-fun b_next!1745 () Bool)

(assert (=> b!53857 (= b_free!1745 (not b_next!1745))))

(declare-fun tp!7336 () Bool)

(declare-fun b_and!3041 () Bool)

(assert (=> b!53857 (= tp!7336 b_and!3041)))

(declare-fun b!53863 () Bool)

(declare-fun b_free!1747 () Bool)

(declare-fun b_next!1747 () Bool)

(assert (=> b!53863 (= b_free!1747 (not b_next!1747))))

(declare-fun tp!7335 () Bool)

(declare-fun b_and!3043 () Bool)

(assert (=> b!53863 (= tp!7335 b_and!3043)))

(declare-fun b!53853 () Bool)

(declare-fun res!30500 () Bool)

(declare-fun e!35151 () Bool)

(assert (=> b!53853 (=> (not res!30500) (not e!35151))))

(declare-datatypes ((V!2699 0))(
  ( (V!2700 (val!1189 Int)) )
))
(declare-datatypes ((array!3500 0))(
  ( (array!3501 (arr!1672 (Array (_ BitVec 32) (_ BitVec 64))) (size!1901 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!801 0))(
  ( (ValueCellFull!801 (v!2261 V!2699)) (EmptyCell!801) )
))
(declare-datatypes ((array!3502 0))(
  ( (array!3503 (arr!1673 (Array (_ BitVec 32) ValueCell!801)) (size!1902 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!510 0))(
  ( (LongMapFixedSize!511 (defaultEntry!1969 Int) (mask!5808 (_ BitVec 32)) (extraKeys!1860 (_ BitVec 32)) (zeroValue!1887 V!2699) (minValue!1887 V!2699) (_size!304 (_ BitVec 32)) (_keys!3589 array!3500) (_values!1952 array!3502) (_vacant!304 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!510)

(declare-fun valid!192 (LongMapFixedSize!510) Bool)

(assert (=> b!53853 (= res!30500 (valid!192 newMap!16))))

(declare-fun res!30504 () Bool)

(assert (=> start!8302 (=> (not res!30504) (not e!35151))))

(declare-datatypes ((Cell!322 0))(
  ( (Cell!323 (v!2262 LongMapFixedSize!510)) )
))
(declare-datatypes ((LongMap!322 0))(
  ( (LongMap!323 (underlying!172 Cell!322)) )
))
(declare-fun thiss!992 () LongMap!322)

(declare-fun valid!193 (LongMap!322) Bool)

(assert (=> start!8302 (= res!30504 (valid!193 thiss!992))))

(assert (=> start!8302 e!35151))

(declare-fun e!35153 () Bool)

(assert (=> start!8302 e!35153))

(assert (=> start!8302 true))

(declare-fun e!35155 () Bool)

(assert (=> start!8302 e!35155))

(declare-fun mapIsEmpty!2537 () Bool)

(declare-fun mapRes!2537 () Bool)

(assert (=> mapIsEmpty!2537 mapRes!2537))

(declare-fun b!53854 () Bool)

(declare-fun res!30502 () Bool)

(assert (=> b!53854 (=> (not res!30502) (not e!35151))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!53854 (= res!30502 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1901 (_keys!3589 (v!2262 (underlying!172 thiss!992)))))))))

(declare-fun b!53855 () Bool)

(declare-fun res!30501 () Bool)

(assert (=> b!53855 (=> (not res!30501) (not e!35151))))

(assert (=> b!53855 (= res!30501 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5808 newMap!16)) (_size!304 (v!2262 (underlying!172 thiss!992)))))))

(declare-fun b!53856 () Bool)

(declare-fun e!35149 () Bool)

(declare-fun e!35148 () Bool)

(assert (=> b!53856 (= e!35149 e!35148)))

(declare-fun mapNonEmpty!2537 () Bool)

(declare-fun mapRes!2538 () Bool)

(declare-fun tp!7338 () Bool)

(declare-fun e!35156 () Bool)

(assert (=> mapNonEmpty!2537 (= mapRes!2538 (and tp!7338 e!35156))))

(declare-fun mapValue!2538 () ValueCell!801)

(declare-fun mapKey!2538 () (_ BitVec 32))

(declare-fun mapRest!2537 () (Array (_ BitVec 32) ValueCell!801))

(assert (=> mapNonEmpty!2537 (= (arr!1673 (_values!1952 (v!2262 (underlying!172 thiss!992)))) (store mapRest!2537 mapKey!2538 mapValue!2538))))

(declare-fun mapIsEmpty!2538 () Bool)

(assert (=> mapIsEmpty!2538 mapRes!2538))

(declare-fun tp_is_empty!2289 () Bool)

(declare-fun e!35150 () Bool)

(declare-fun array_inv!981 (array!3500) Bool)

(declare-fun array_inv!982 (array!3502) Bool)

(assert (=> b!53857 (= e!35148 (and tp!7336 tp_is_empty!2289 (array_inv!981 (_keys!3589 (v!2262 (underlying!172 thiss!992)))) (array_inv!982 (_values!1952 (v!2262 (underlying!172 thiss!992)))) e!35150))))

(declare-fun b!53858 () Bool)

(declare-fun res!30506 () Bool)

(declare-fun e!35154 () Bool)

(assert (=> b!53858 (=> (not res!30506) (not e!35154))))

(declare-datatypes ((List!1382 0))(
  ( (Nil!1379) (Cons!1378 (h!1958 (_ BitVec 64)) (t!4504 List!1382)) )
))
(declare-fun arrayNoDuplicates!0 (array!3500 (_ BitVec 32) List!1382) Bool)

(assert (=> b!53858 (= res!30506 (arrayNoDuplicates!0 (_keys!3589 (v!2262 (underlying!172 thiss!992))) #b00000000000000000000000000000000 Nil!1379))))

(declare-fun b!53859 () Bool)

(declare-fun e!35152 () Bool)

(assert (=> b!53859 (= e!35150 (and e!35152 mapRes!2538))))

(declare-fun condMapEmpty!2538 () Bool)

(declare-fun mapDefault!2538 () ValueCell!801)

(assert (=> b!53859 (= condMapEmpty!2538 (= (arr!1673 (_values!1952 (v!2262 (underlying!172 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!801)) mapDefault!2538)))))

(declare-fun b!53860 () Bool)

(declare-fun e!35158 () Bool)

(assert (=> b!53860 (= e!35158 tp_is_empty!2289)))

(declare-fun b!53861 () Bool)

(declare-fun e!35146 () Bool)

(assert (=> b!53861 (= e!35146 (and e!35158 mapRes!2537))))

(declare-fun condMapEmpty!2537 () Bool)

(declare-fun mapDefault!2537 () ValueCell!801)

(assert (=> b!53861 (= condMapEmpty!2537 (= (arr!1673 (_values!1952 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!801)) mapDefault!2537)))))

(declare-fun b!53862 () Bool)

(assert (=> b!53862 (= e!35152 tp_is_empty!2289)))

(assert (=> b!53863 (= e!35155 (and tp!7335 tp_is_empty!2289 (array_inv!981 (_keys!3589 newMap!16)) (array_inv!982 (_values!1952 newMap!16)) e!35146))))

(declare-fun b!53864 () Bool)

(declare-fun e!35147 () Bool)

(assert (=> b!53864 (= e!35147 tp_is_empty!2289)))

(declare-fun b!53865 () Bool)

(assert (=> b!53865 (= e!35153 e!35149)))

(declare-fun b!53866 () Bool)

(declare-fun res!30509 () Bool)

(assert (=> b!53866 (=> (not res!30509) (not e!35154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!53866 (= res!30509 (validMask!0 (mask!5808 (v!2262 (underlying!172 thiss!992)))))))

(declare-fun mapNonEmpty!2538 () Bool)

(declare-fun tp!7337 () Bool)

(assert (=> mapNonEmpty!2538 (= mapRes!2537 (and tp!7337 e!35147))))

(declare-fun mapValue!2537 () ValueCell!801)

(declare-fun mapRest!2538 () (Array (_ BitVec 32) ValueCell!801))

(declare-fun mapKey!2537 () (_ BitVec 32))

(assert (=> mapNonEmpty!2538 (= (arr!1673 (_values!1952 newMap!16)) (store mapRest!2538 mapKey!2537 mapValue!2537))))

(declare-fun b!53867 () Bool)

(declare-fun res!30510 () Bool)

(assert (=> b!53867 (=> (not res!30510) (not e!35154))))

(assert (=> b!53867 (= res!30510 (and (= (size!1902 (_values!1952 (v!2262 (underlying!172 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5808 (v!2262 (underlying!172 thiss!992))))) (= (size!1901 (_keys!3589 (v!2262 (underlying!172 thiss!992)))) (size!1902 (_values!1952 (v!2262 (underlying!172 thiss!992))))) (bvsge (mask!5808 (v!2262 (underlying!172 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1860 (v!2262 (underlying!172 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1860 (v!2262 (underlying!172 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!53868 () Bool)

(assert (=> b!53868 (= e!35156 tp_is_empty!2289)))

(declare-fun b!53869 () Bool)

(declare-fun res!30505 () Bool)

(assert (=> b!53869 (=> (not res!30505) (not e!35154))))

(assert (=> b!53869 (= res!30505 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1901 (_keys!3589 (v!2262 (underlying!172 thiss!992)))))))))

(declare-fun b!53870 () Bool)

(declare-fun e!35159 () Bool)

(assert (=> b!53870 (= e!35159 e!35154)))

(declare-fun res!30507 () Bool)

(assert (=> b!53870 (=> (not res!30507) (not e!35154))))

(declare-datatypes ((tuple2!1902 0))(
  ( (tuple2!1903 (_1!961 (_ BitVec 64)) (_2!961 V!2699)) )
))
(declare-datatypes ((List!1383 0))(
  ( (Nil!1380) (Cons!1379 (h!1959 tuple2!1902) (t!4505 List!1383)) )
))
(declare-datatypes ((ListLongMap!1301 0))(
  ( (ListLongMap!1302 (toList!666 List!1383)) )
))
(declare-fun lt!21544 () ListLongMap!1301)

(declare-fun contains!637 (ListLongMap!1301 (_ BitVec 64)) Bool)

(assert (=> b!53870 (= res!30507 (contains!637 lt!21544 (select (arr!1672 (_keys!3589 (v!2262 (underlying!172 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1904 0))(
  ( (tuple2!1905 (_1!962 Bool) (_2!962 LongMapFixedSize!510)) )
))
(declare-fun lt!21546 () tuple2!1904)

(declare-fun update!50 (LongMapFixedSize!510 (_ BitVec 64) V!2699) tuple2!1904)

(declare-fun get!1005 (ValueCell!801 V!2699) V!2699)

(declare-fun dynLambda!278 (Int (_ BitVec 64)) V!2699)

(assert (=> b!53870 (= lt!21546 (update!50 newMap!16 (select (arr!1672 (_keys!3589 (v!2262 (underlying!172 thiss!992)))) from!355) (get!1005 (select (arr!1673 (_values!1952 (v!2262 (underlying!172 thiss!992)))) from!355) (dynLambda!278 (defaultEntry!1969 (v!2262 (underlying!172 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!53871 () Bool)

(declare-fun res!30503 () Bool)

(assert (=> b!53871 (=> (not res!30503) (not e!35154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3500 (_ BitVec 32)) Bool)

(assert (=> b!53871 (= res!30503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3589 (v!2262 (underlying!172 thiss!992))) (mask!5808 (v!2262 (underlying!172 thiss!992)))))))

(declare-fun b!53872 () Bool)

(assert (=> b!53872 (= e!35151 e!35159)))

(declare-fun res!30508 () Bool)

(assert (=> b!53872 (=> (not res!30508) (not e!35159))))

(declare-fun lt!21547 () ListLongMap!1301)

(assert (=> b!53872 (= res!30508 (and (= lt!21547 lt!21544) (not (= (select (arr!1672 (_keys!3589 (v!2262 (underlying!172 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1672 (_keys!3589 (v!2262 (underlying!172 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1043 (LongMapFixedSize!510) ListLongMap!1301)

(assert (=> b!53872 (= lt!21544 (map!1043 newMap!16))))

(declare-fun getCurrentListMap!373 (array!3500 array!3502 (_ BitVec 32) (_ BitVec 32) V!2699 V!2699 (_ BitVec 32) Int) ListLongMap!1301)

(assert (=> b!53872 (= lt!21547 (getCurrentListMap!373 (_keys!3589 (v!2262 (underlying!172 thiss!992))) (_values!1952 (v!2262 (underlying!172 thiss!992))) (mask!5808 (v!2262 (underlying!172 thiss!992))) (extraKeys!1860 (v!2262 (underlying!172 thiss!992))) (zeroValue!1887 (v!2262 (underlying!172 thiss!992))) (minValue!1887 (v!2262 (underlying!172 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1969 (v!2262 (underlying!172 thiss!992)))))))

(declare-fun b!53873 () Bool)

(assert (=> b!53873 (= e!35154 false)))

(declare-fun lt!21545 () Bool)

(assert (=> b!53873 (= lt!21545 (contains!637 lt!21547 (select (arr!1672 (_keys!3589 (v!2262 (underlying!172 thiss!992)))) from!355)))))

(assert (= (and start!8302 res!30504) b!53854))

(assert (= (and b!53854 res!30502) b!53853))

(assert (= (and b!53853 res!30500) b!53855))

(assert (= (and b!53855 res!30501) b!53872))

(assert (= (and b!53872 res!30508) b!53870))

(assert (= (and b!53870 res!30507) b!53866))

(assert (= (and b!53866 res!30509) b!53867))

(assert (= (and b!53867 res!30510) b!53871))

(assert (= (and b!53871 res!30503) b!53858))

(assert (= (and b!53858 res!30506) b!53869))

(assert (= (and b!53869 res!30505) b!53873))

(assert (= (and b!53859 condMapEmpty!2538) mapIsEmpty!2538))

(assert (= (and b!53859 (not condMapEmpty!2538)) mapNonEmpty!2537))

(get-info :version)

(assert (= (and mapNonEmpty!2537 ((_ is ValueCellFull!801) mapValue!2538)) b!53868))

(assert (= (and b!53859 ((_ is ValueCellFull!801) mapDefault!2538)) b!53862))

(assert (= b!53857 b!53859))

(assert (= b!53856 b!53857))

(assert (= b!53865 b!53856))

(assert (= start!8302 b!53865))

(assert (= (and b!53861 condMapEmpty!2537) mapIsEmpty!2537))

(assert (= (and b!53861 (not condMapEmpty!2537)) mapNonEmpty!2538))

(assert (= (and mapNonEmpty!2538 ((_ is ValueCellFull!801) mapValue!2537)) b!53864))

(assert (= (and b!53861 ((_ is ValueCellFull!801) mapDefault!2537)) b!53860))

(assert (= b!53863 b!53861))

(assert (= start!8302 b!53863))

(declare-fun b_lambda!2403 () Bool)

(assert (=> (not b_lambda!2403) (not b!53870)))

(declare-fun t!4501 () Bool)

(declare-fun tb!1097 () Bool)

(assert (=> (and b!53857 (= (defaultEntry!1969 (v!2262 (underlying!172 thiss!992))) (defaultEntry!1969 (v!2262 (underlying!172 thiss!992)))) t!4501) tb!1097))

(declare-fun result!2039 () Bool)

(assert (=> tb!1097 (= result!2039 tp_is_empty!2289)))

(assert (=> b!53870 t!4501))

(declare-fun b_and!3045 () Bool)

(assert (= b_and!3041 (and (=> t!4501 result!2039) b_and!3045)))

(declare-fun t!4503 () Bool)

(declare-fun tb!1099 () Bool)

(assert (=> (and b!53863 (= (defaultEntry!1969 newMap!16) (defaultEntry!1969 (v!2262 (underlying!172 thiss!992)))) t!4503) tb!1099))

(declare-fun result!2043 () Bool)

(assert (= result!2043 result!2039))

(assert (=> b!53870 t!4503))

(declare-fun b_and!3047 () Bool)

(assert (= b_and!3043 (and (=> t!4503 result!2043) b_and!3047)))

(declare-fun m!45711 () Bool)

(assert (=> b!53863 m!45711))

(declare-fun m!45713 () Bool)

(assert (=> b!53863 m!45713))

(declare-fun m!45715 () Bool)

(assert (=> b!53872 m!45715))

(declare-fun m!45717 () Bool)

(assert (=> b!53872 m!45717))

(declare-fun m!45719 () Bool)

(assert (=> b!53872 m!45719))

(declare-fun m!45721 () Bool)

(assert (=> b!53853 m!45721))

(declare-fun m!45723 () Bool)

(assert (=> start!8302 m!45723))

(declare-fun m!45725 () Bool)

(assert (=> b!53870 m!45725))

(declare-fun m!45727 () Bool)

(assert (=> b!53870 m!45727))

(declare-fun m!45729 () Bool)

(assert (=> b!53870 m!45729))

(assert (=> b!53870 m!45715))

(assert (=> b!53870 m!45727))

(assert (=> b!53870 m!45715))

(declare-fun m!45731 () Bool)

(assert (=> b!53870 m!45731))

(assert (=> b!53870 m!45715))

(assert (=> b!53870 m!45729))

(declare-fun m!45733 () Bool)

(assert (=> b!53870 m!45733))

(assert (=> b!53870 m!45725))

(declare-fun m!45735 () Bool)

(assert (=> b!53871 m!45735))

(declare-fun m!45737 () Bool)

(assert (=> b!53858 m!45737))

(declare-fun m!45739 () Bool)

(assert (=> b!53857 m!45739))

(declare-fun m!45741 () Bool)

(assert (=> b!53857 m!45741))

(declare-fun m!45743 () Bool)

(assert (=> mapNonEmpty!2538 m!45743))

(declare-fun m!45745 () Bool)

(assert (=> b!53866 m!45745))

(declare-fun m!45747 () Bool)

(assert (=> mapNonEmpty!2537 m!45747))

(assert (=> b!53873 m!45715))

(assert (=> b!53873 m!45715))

(declare-fun m!45749 () Bool)

(assert (=> b!53873 m!45749))

(check-sat (not b!53853) (not b!53873) (not b!53863) (not b_next!1747) (not b!53857) tp_is_empty!2289 (not mapNonEmpty!2538) (not b!53866) (not start!8302) (not b_next!1745) (not b!53871) (not b!53858) (not b!53870) b_and!3047 b_and!3045 (not mapNonEmpty!2537) (not b_lambda!2403) (not b!53872))
(check-sat b_and!3045 b_and!3047 (not b_next!1745) (not b_next!1747))
