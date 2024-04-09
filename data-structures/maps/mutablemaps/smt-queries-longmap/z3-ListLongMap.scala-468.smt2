; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9032 () Bool)

(assert start!9032)

(declare-fun b!63859 () Bool)

(declare-fun b_free!2009 () Bool)

(declare-fun b_next!2009 () Bool)

(assert (=> b!63859 (= b_free!2009 (not b_next!2009))))

(declare-fun tp!8166 () Bool)

(declare-fun b_and!3909 () Bool)

(assert (=> b!63859 (= tp!8166 b_and!3909)))

(declare-fun b!63854 () Bool)

(declare-fun b_free!2011 () Bool)

(declare-fun b_next!2011 () Bool)

(assert (=> b!63854 (= b_free!2011 (not b_next!2011))))

(declare-fun tp!8165 () Bool)

(declare-fun b_and!3911 () Bool)

(assert (=> b!63854 (= tp!8165 b_and!3911)))

(declare-fun b!63842 () Bool)

(declare-fun e!41879 () Bool)

(declare-datatypes ((V!2875 0))(
  ( (V!2876 (val!1255 Int)) )
))
(declare-datatypes ((array!3774 0))(
  ( (array!3775 (arr!1804 (Array (_ BitVec 32) (_ BitVec 64))) (size!2037 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!867 0))(
  ( (ValueCellFull!867 (v!2434 V!2875)) (EmptyCell!867) )
))
(declare-datatypes ((array!3776 0))(
  ( (array!3777 (arr!1805 (Array (_ BitVec 32) ValueCell!867)) (size!2038 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!642 0))(
  ( (LongMapFixedSize!643 (defaultEntry!2109 Int) (mask!6025 (_ BitVec 32)) (extraKeys!1984 (_ BitVec 32)) (zeroValue!2019 V!2875) (minValue!2019 V!2875) (_size!370 (_ BitVec 32)) (_keys!3745 array!3774) (_values!2092 array!3776) (_vacant!370 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!452 0))(
  ( (Cell!453 (v!2435 LongMapFixedSize!642)) )
))
(declare-datatypes ((LongMap!452 0))(
  ( (LongMap!453 (underlying!237 Cell!452)) )
))
(declare-fun thiss!992 () LongMap!452)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3774 (_ BitVec 32)) Bool)

(assert (=> b!63842 (= e!41879 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun b!63843 () Bool)

(declare-fun e!41883 () Bool)

(declare-fun e!41877 () Bool)

(assert (=> b!63843 (= e!41883 e!41877)))

(declare-fun mapNonEmpty!2969 () Bool)

(declare-fun mapRes!2969 () Bool)

(declare-fun tp!8164 () Bool)

(declare-fun e!41871 () Bool)

(assert (=> mapNonEmpty!2969 (= mapRes!2969 (and tp!8164 e!41871))))

(declare-fun mapValue!2969 () ValueCell!867)

(declare-fun mapKey!2969 () (_ BitVec 32))

(declare-fun mapRest!2970 () (Array (_ BitVec 32) ValueCell!867))

(assert (=> mapNonEmpty!2969 (= (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) (store mapRest!2970 mapKey!2969 mapValue!2969))))

(declare-fun b!63844 () Bool)

(declare-fun e!41870 () Bool)

(assert (=> b!63844 (= e!41870 e!41879)))

(declare-fun res!34871 () Bool)

(assert (=> b!63844 (=> (not res!34871) (not e!41879))))

(declare-datatypes ((tuple2!2076 0))(
  ( (tuple2!2077 (_1!1048 Bool) (_2!1048 LongMapFixedSize!642)) )
))
(declare-fun lt!26905 () tuple2!2076)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!63844 (= res!34871 (and (_1!1048 lt!26905) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!1755 0))(
  ( (Unit!1756) )
))
(declare-fun lt!26903 () Unit!1755)

(declare-fun e!41868 () Unit!1755)

(assert (=> b!63844 (= lt!26903 e!41868)))

(declare-datatypes ((tuple2!2078 0))(
  ( (tuple2!2079 (_1!1049 (_ BitVec 64)) (_2!1049 V!2875)) )
))
(declare-datatypes ((List!1469 0))(
  ( (Nil!1466) (Cons!1465 (h!2049 tuple2!2078) (t!4887 List!1469)) )
))
(declare-datatypes ((ListLongMap!1395 0))(
  ( (ListLongMap!1396 (toList!713 List!1469)) )
))
(declare-fun lt!26901 () ListLongMap!1395)

(declare-fun c!8677 () Bool)

(declare-fun contains!704 (ListLongMap!1395 (_ BitVec 64)) Bool)

(assert (=> b!63844 (= c!8677 (contains!704 lt!26901 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!642)

(declare-fun update!90 (LongMapFixedSize!642 (_ BitVec 64) V!2875) tuple2!2076)

(declare-fun get!1103 (ValueCell!867 V!2875) V!2875)

(declare-fun dynLambda!318 (Int (_ BitVec 64)) V!2875)

(assert (=> b!63844 (= lt!26905 (update!90 newMap!16 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!63845 () Bool)

(declare-fun res!34869 () Bool)

(assert (=> b!63845 (=> (not res!34869) (not e!41879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!63845 (= res!34869 (validMask!0 (mask!6025 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun b!63846 () Bool)

(declare-fun Unit!1757 () Unit!1755)

(assert (=> b!63846 (= e!41868 Unit!1757)))

(declare-fun b!63847 () Bool)

(declare-fun res!34874 () Bool)

(declare-fun e!41869 () Bool)

(assert (=> b!63847 (=> (not res!34874) (not e!41869))))

(assert (=> b!63847 (= res!34874 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6025 newMap!16)) (_size!370 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun b!63848 () Bool)

(declare-fun res!34873 () Bool)

(assert (=> b!63848 (=> (not res!34873) (not e!41879))))

(assert (=> b!63848 (= res!34873 (and (= (size!2038 (_values!2092 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6025 (v!2435 (underlying!237 thiss!992))))) (= (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (size!2038 (_values!2092 (v!2435 (underlying!237 thiss!992))))) (bvsge (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!63849 () Bool)

(assert (=> b!63849 (= e!41869 e!41870)))

(declare-fun res!34870 () Bool)

(assert (=> b!63849 (=> (not res!34870) (not e!41870))))

(declare-fun lt!26904 () ListLongMap!1395)

(assert (=> b!63849 (= res!34870 (and (= lt!26904 lt!26901) (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1123 (LongMapFixedSize!642) ListLongMap!1395)

(assert (=> b!63849 (= lt!26901 (map!1123 newMap!16))))

(declare-fun getCurrentListMap!409 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 32) Int) ListLongMap!1395)

(assert (=> b!63849 (= lt!26904 (getCurrentListMap!409 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun b!63850 () Bool)

(declare-fun e!41874 () Bool)

(declare-fun e!41880 () Bool)

(assert (=> b!63850 (= e!41874 (and e!41880 mapRes!2969))))

(declare-fun condMapEmpty!2970 () Bool)

(declare-fun mapDefault!2970 () ValueCell!867)

(assert (=> b!63850 (= condMapEmpty!2970 (= (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!867)) mapDefault!2970)))))

(declare-fun b!63851 () Bool)

(declare-fun res!34867 () Bool)

(assert (=> b!63851 (=> (not res!34867) (not e!41869))))

(declare-fun valid!266 (LongMapFixedSize!642) Bool)

(assert (=> b!63851 (= res!34867 (valid!266 newMap!16))))

(declare-fun b!63852 () Bool)

(declare-fun e!41876 () Bool)

(declare-fun tp_is_empty!2421 () Bool)

(assert (=> b!63852 (= e!41876 tp_is_empty!2421)))

(declare-fun b!63853 () Bool)

(declare-fun Unit!1758 () Unit!1755)

(assert (=> b!63853 (= e!41868 Unit!1758)))

(declare-fun lt!26902 () Unit!1755)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!35 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 64) (_ BitVec 32) Int) Unit!1755)

(assert (=> b!63853 (= lt!26902 (lemmaListMapContainsThenArrayContainsFrom!35 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!63853 (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!26899 () Unit!1755)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3774 (_ BitVec 32) (_ BitVec 32)) Unit!1755)

(assert (=> b!63853 (= lt!26899 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1470 0))(
  ( (Nil!1467) (Cons!1466 (h!2050 (_ BitVec 64)) (t!4888 List!1470)) )
))
(declare-fun arrayNoDuplicates!0 (array!3774 (_ BitVec 32) List!1470) Bool)

(assert (=> b!63853 (arrayNoDuplicates!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) from!355 Nil!1467)))

(declare-fun lt!26900 () Unit!1755)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3774 (_ BitVec 32) (_ BitVec 64) List!1470) Unit!1755)

(assert (=> b!63853 (= lt!26900 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (Cons!1466 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) Nil!1467)))))

(assert (=> b!63853 false))

(declare-fun mapIsEmpty!2969 () Bool)

(declare-fun mapRes!2970 () Bool)

(assert (=> mapIsEmpty!2969 mapRes!2970))

(declare-fun e!41873 () Bool)

(declare-fun e!41875 () Bool)

(declare-fun array_inv!1065 (array!3774) Bool)

(declare-fun array_inv!1066 (array!3776) Bool)

(assert (=> b!63854 (= e!41873 (and tp!8165 tp_is_empty!2421 (array_inv!1065 (_keys!3745 newMap!16)) (array_inv!1066 (_values!2092 newMap!16)) e!41875))))

(declare-fun b!63855 () Bool)

(declare-fun e!41872 () Bool)

(assert (=> b!63855 (= e!41872 tp_is_empty!2421)))

(declare-fun mapNonEmpty!2970 () Bool)

(declare-fun tp!8163 () Bool)

(assert (=> mapNonEmpty!2970 (= mapRes!2970 (and tp!8163 e!41876))))

(declare-fun mapKey!2970 () (_ BitVec 32))

(declare-fun mapRest!2969 () (Array (_ BitVec 32) ValueCell!867))

(declare-fun mapValue!2970 () ValueCell!867)

(assert (=> mapNonEmpty!2970 (= (arr!1805 (_values!2092 newMap!16)) (store mapRest!2969 mapKey!2970 mapValue!2970))))

(declare-fun mapIsEmpty!2970 () Bool)

(assert (=> mapIsEmpty!2970 mapRes!2969))

(declare-fun b!63856 () Bool)

(assert (=> b!63856 (= e!41875 (and e!41872 mapRes!2970))))

(declare-fun condMapEmpty!2969 () Bool)

(declare-fun mapDefault!2969 () ValueCell!867)

(assert (=> b!63856 (= condMapEmpty!2969 (= (arr!1805 (_values!2092 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!867)) mapDefault!2969)))))

(declare-fun res!34868 () Bool)

(assert (=> start!9032 (=> (not res!34868) (not e!41869))))

(declare-fun valid!267 (LongMap!452) Bool)

(assert (=> start!9032 (= res!34868 (valid!267 thiss!992))))

(assert (=> start!9032 e!41869))

(declare-fun e!41878 () Bool)

(assert (=> start!9032 e!41878))

(assert (=> start!9032 true))

(assert (=> start!9032 e!41873))

(declare-fun b!63857 () Bool)

(assert (=> b!63857 (= e!41871 tp_is_empty!2421)))

(declare-fun b!63858 () Bool)

(assert (=> b!63858 (= e!41878 e!41883)))

(assert (=> b!63859 (= e!41877 (and tp!8166 tp_is_empty!2421 (array_inv!1065 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (array_inv!1066 (_values!2092 (v!2435 (underlying!237 thiss!992)))) e!41874))))

(declare-fun b!63860 () Bool)

(declare-fun res!34872 () Bool)

(assert (=> b!63860 (=> (not res!34872) (not e!41869))))

(assert (=> b!63860 (= res!34872 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992)))))))))

(declare-fun b!63861 () Bool)

(assert (=> b!63861 (= e!41880 tp_is_empty!2421)))

(assert (= (and start!9032 res!34868) b!63860))

(assert (= (and b!63860 res!34872) b!63851))

(assert (= (and b!63851 res!34867) b!63847))

(assert (= (and b!63847 res!34874) b!63849))

(assert (= (and b!63849 res!34870) b!63844))

(assert (= (and b!63844 c!8677) b!63853))

(assert (= (and b!63844 (not c!8677)) b!63846))

(assert (= (and b!63844 res!34871) b!63845))

(assert (= (and b!63845 res!34869) b!63848))

(assert (= (and b!63848 res!34873) b!63842))

(assert (= (and b!63850 condMapEmpty!2970) mapIsEmpty!2970))

(assert (= (and b!63850 (not condMapEmpty!2970)) mapNonEmpty!2969))

(get-info :version)

(assert (= (and mapNonEmpty!2969 ((_ is ValueCellFull!867) mapValue!2969)) b!63857))

(assert (= (and b!63850 ((_ is ValueCellFull!867) mapDefault!2970)) b!63861))

(assert (= b!63859 b!63850))

(assert (= b!63843 b!63859))

(assert (= b!63858 b!63843))

(assert (= start!9032 b!63858))

(assert (= (and b!63856 condMapEmpty!2969) mapIsEmpty!2969))

(assert (= (and b!63856 (not condMapEmpty!2969)) mapNonEmpty!2970))

(assert (= (and mapNonEmpty!2970 ((_ is ValueCellFull!867) mapValue!2970)) b!63852))

(assert (= (and b!63856 ((_ is ValueCellFull!867) mapDefault!2969)) b!63855))

(assert (= b!63854 b!63856))

(assert (= start!9032 b!63854))

(declare-fun b_lambda!2877 () Bool)

(assert (=> (not b_lambda!2877) (not b!63844)))

(declare-fun t!4884 () Bool)

(declare-fun tb!1393 () Bool)

(assert (=> (and b!63859 (= (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))) t!4884) tb!1393))

(declare-fun result!2477 () Bool)

(assert (=> tb!1393 (= result!2477 tp_is_empty!2421)))

(assert (=> b!63844 t!4884))

(declare-fun b_and!3913 () Bool)

(assert (= b_and!3909 (and (=> t!4884 result!2477) b_and!3913)))

(declare-fun tb!1395 () Bool)

(declare-fun t!4886 () Bool)

(assert (=> (and b!63854 (= (defaultEntry!2109 newMap!16) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))) t!4886) tb!1395))

(declare-fun result!2481 () Bool)

(assert (= result!2481 result!2477))

(assert (=> b!63844 t!4886))

(declare-fun b_and!3915 () Bool)

(assert (= b_and!3911 (and (=> t!4886 result!2481) b_and!3915)))

(declare-fun m!58187 () Bool)

(assert (=> b!63853 m!58187))

(declare-fun m!58189 () Bool)

(assert (=> b!63853 m!58189))

(declare-fun m!58191 () Bool)

(assert (=> b!63853 m!58191))

(declare-fun m!58193 () Bool)

(assert (=> b!63853 m!58193))

(assert (=> b!63853 m!58191))

(assert (=> b!63853 m!58191))

(declare-fun m!58195 () Bool)

(assert (=> b!63853 m!58195))

(assert (=> b!63853 m!58191))

(declare-fun m!58197 () Bool)

(assert (=> b!63853 m!58197))

(declare-fun m!58199 () Bool)

(assert (=> b!63854 m!58199))

(declare-fun m!58201 () Bool)

(assert (=> b!63854 m!58201))

(declare-fun m!58203 () Bool)

(assert (=> mapNonEmpty!2969 m!58203))

(declare-fun m!58205 () Bool)

(assert (=> b!63844 m!58205))

(declare-fun m!58207 () Bool)

(assert (=> b!63844 m!58207))

(declare-fun m!58209 () Bool)

(assert (=> b!63844 m!58209))

(assert (=> b!63844 m!58207))

(assert (=> b!63844 m!58191))

(assert (=> b!63844 m!58209))

(declare-fun m!58211 () Bool)

(assert (=> b!63844 m!58211))

(assert (=> b!63844 m!58205))

(assert (=> b!63844 m!58191))

(assert (=> b!63844 m!58191))

(declare-fun m!58213 () Bool)

(assert (=> b!63844 m!58213))

(declare-fun m!58215 () Bool)

(assert (=> mapNonEmpty!2970 m!58215))

(declare-fun m!58217 () Bool)

(assert (=> b!63851 m!58217))

(declare-fun m!58219 () Bool)

(assert (=> b!63845 m!58219))

(declare-fun m!58221 () Bool)

(assert (=> start!9032 m!58221))

(assert (=> b!63849 m!58191))

(declare-fun m!58223 () Bool)

(assert (=> b!63849 m!58223))

(declare-fun m!58225 () Bool)

(assert (=> b!63849 m!58225))

(declare-fun m!58227 () Bool)

(assert (=> b!63859 m!58227))

(declare-fun m!58229 () Bool)

(assert (=> b!63859 m!58229))

(declare-fun m!58231 () Bool)

(assert (=> b!63842 m!58231))

(check-sat (not b_lambda!2877) tp_is_empty!2421 (not start!9032) (not b_next!2011) (not b!63851) (not mapNonEmpty!2969) b_and!3915 (not b!63854) b_and!3913 (not b!63853) (not b!63859) (not b!63844) (not b!63842) (not b_next!2009) (not b!63849) (not mapNonEmpty!2970) (not b!63845))
(check-sat b_and!3913 b_and!3915 (not b_next!2009) (not b_next!2011))
(get-model)

(declare-fun b_lambda!2881 () Bool)

(assert (= b_lambda!2877 (or (and b!63859 b_free!2009) (and b!63854 b_free!2011 (= (defaultEntry!2109 newMap!16) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))))) b_lambda!2881)))

(check-sat tp_is_empty!2421 (not start!9032) (not b_next!2011) (not b_lambda!2881) (not b!63851) (not mapNonEmpty!2969) b_and!3915 (not b!63854) b_and!3913 (not b!63853) (not b!63859) (not b!63844) (not b!63842) (not b_next!2009) (not b!63849) (not mapNonEmpty!2970) (not b!63845))
(check-sat b_and!3913 b_and!3915 (not b_next!2009) (not b_next!2011))
(get-model)

(declare-fun d!13283 () Bool)

(declare-fun e!41936 () Bool)

(assert (=> d!13283 e!41936))

(declare-fun res!34901 () Bool)

(assert (=> d!13283 (=> res!34901 e!41936)))

(declare-fun lt!26937 () Bool)

(assert (=> d!13283 (= res!34901 (not lt!26937))))

(declare-fun lt!26935 () Bool)

(assert (=> d!13283 (= lt!26937 lt!26935)))

(declare-fun lt!26936 () Unit!1755)

(declare-fun e!41937 () Unit!1755)

(assert (=> d!13283 (= lt!26936 e!41937)))

(declare-fun c!8683 () Bool)

(assert (=> d!13283 (= c!8683 lt!26935)))

(declare-fun containsKey!130 (List!1469 (_ BitVec 64)) Bool)

(assert (=> d!13283 (= lt!26935 (containsKey!130 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> d!13283 (= (contains!704 lt!26901 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) lt!26937)))

(declare-fun b!63932 () Bool)

(declare-fun lt!26938 () Unit!1755)

(assert (=> b!63932 (= e!41937 lt!26938)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!79 (List!1469 (_ BitVec 64)) Unit!1755)

(assert (=> b!63932 (= lt!26938 (lemmaContainsKeyImpliesGetValueByKeyDefined!79 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-datatypes ((Option!132 0))(
  ( (Some!131 (v!2439 V!2875)) (None!130) )
))
(declare-fun isDefined!80 (Option!132) Bool)

(declare-fun getValueByKey!126 (List!1469 (_ BitVec 64)) Option!132)

(assert (=> b!63932 (isDefined!80 (getValueByKey!126 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun b!63933 () Bool)

(declare-fun Unit!1763 () Unit!1755)

(assert (=> b!63933 (= e!41937 Unit!1763)))

(declare-fun b!63934 () Bool)

(assert (=> b!63934 (= e!41936 (isDefined!80 (getValueByKey!126 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355))))))

(assert (= (and d!13283 c!8683) b!63932))

(assert (= (and d!13283 (not c!8683)) b!63933))

(assert (= (and d!13283 (not res!34901)) b!63934))

(assert (=> d!13283 m!58191))

(declare-fun m!58279 () Bool)

(assert (=> d!13283 m!58279))

(assert (=> b!63932 m!58191))

(declare-fun m!58281 () Bool)

(assert (=> b!63932 m!58281))

(assert (=> b!63932 m!58191))

(declare-fun m!58283 () Bool)

(assert (=> b!63932 m!58283))

(assert (=> b!63932 m!58283))

(declare-fun m!58285 () Bool)

(assert (=> b!63932 m!58285))

(assert (=> b!63934 m!58191))

(assert (=> b!63934 m!58283))

(assert (=> b!63934 m!58283))

(assert (=> b!63934 m!58285))

(assert (=> b!63844 d!13283))

(declare-fun call!5124 () Bool)

(declare-fun bm!5110 () Bool)

(assert (=> bm!5110 (= call!5124 (arrayContainsKey!0 (_keys!3745 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!64019 () Bool)

(declare-fun e!41997 () Bool)

(declare-fun e!41998 () Bool)

(assert (=> b!64019 (= e!41997 e!41998)))

(declare-fun res!34938 () Bool)

(declare-fun call!5136 () Bool)

(assert (=> b!64019 (= res!34938 call!5136)))

(assert (=> b!64019 (=> (not res!34938) (not e!41998))))

(declare-fun c!8722 () Bool)

(declare-fun lt!27018 () (_ BitVec 32))

(declare-fun c!8721 () Bool)

(declare-fun lt!27009 () array!3776)

(declare-fun bm!5111 () Bool)

(declare-fun call!5133 () ListLongMap!1395)

(assert (=> bm!5111 (= call!5133 (getCurrentListMap!409 (_keys!3745 newMap!16) (ite c!8722 (_values!2092 newMap!16) lt!27009) (mask!6025 newMap!16) (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) (zeroValue!2019 newMap!16) (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun b!64020 () Bool)

(declare-fun lt!26996 () Unit!1755)

(declare-fun e!42000 () Unit!1755)

(assert (=> b!64020 (= lt!26996 e!42000)))

(declare-fun c!8715 () Bool)

(declare-fun call!5128 () Bool)

(assert (=> b!64020 (= c!8715 call!5128)))

(declare-fun e!42001 () tuple2!2076)

(assert (=> b!64020 (= e!42001 (tuple2!2077 false newMap!16))))

(declare-fun bm!5112 () Bool)

(declare-datatypes ((SeekEntryResult!240 0))(
  ( (MissingZero!240 (index!3086 (_ BitVec 32))) (Found!240 (index!3087 (_ BitVec 32))) (Intermediate!240 (undefined!1052 Bool) (index!3088 (_ BitVec 32)) (x!10462 (_ BitVec 32))) (Undefined!240) (MissingVacant!240 (index!3089 (_ BitVec 32))) )
))
(declare-fun lt!27011 () SeekEntryResult!240)

(declare-fun call!5117 () Bool)

(declare-fun c!8713 () Bool)

(declare-fun c!8716 () Bool)

(declare-fun lt!27014 () SeekEntryResult!240)

(declare-fun lt!27017 () SeekEntryResult!240)

(declare-fun c!8718 () Bool)

(declare-fun c!8719 () Bool)

(declare-fun lt!26997 () SeekEntryResult!240)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!5112 (= call!5117 (inRange!0 (ite c!8718 (ite c!8715 (index!3087 lt!27011) (ite c!8719 (index!3086 lt!27017) (index!3089 lt!27017))) (ite c!8716 (index!3087 lt!26997) (ite c!8713 (index!3086 lt!27014) (index!3089 lt!27014)))) (mask!6025 newMap!16)))))

(declare-fun bm!5113 () Bool)

(declare-fun lt!27012 () (_ BitVec 32))

(declare-fun lt!27001 () SeekEntryResult!240)

(declare-fun call!5116 () ListLongMap!1395)

(assert (=> bm!5113 (= call!5116 (getCurrentListMap!409 (_keys!3745 newMap!16) (ite (or c!8722 c!8718) (_values!2092 newMap!16) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16)))) (mask!6025 newMap!16) (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16)) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun bm!5114 () Bool)

(declare-fun call!5131 () Bool)

(assert (=> bm!5114 (= call!5131 call!5124)))

(declare-fun bm!5115 () Bool)

(declare-fun call!5114 () Bool)

(assert (=> bm!5115 (= call!5136 call!5114)))

(declare-fun b!64021 () Bool)

(declare-fun e!41999 () tuple2!2076)

(declare-fun lt!26994 () tuple2!2076)

(assert (=> b!64021 (= e!41999 (tuple2!2077 (_1!1048 lt!26994) (_2!1048 lt!26994)))))

(declare-fun call!5126 () tuple2!2076)

(assert (=> b!64021 (= lt!26994 call!5126)))

(declare-fun b!64022 () Bool)

(declare-fun res!34931 () Bool)

(assert (=> b!64022 (= res!34931 call!5114)))

(declare-fun e!41983 () Bool)

(assert (=> b!64022 (=> (not res!34931) (not e!41983))))

(declare-fun b!64023 () Bool)

(declare-fun res!34930 () Bool)

(declare-fun e!41993 () Bool)

(assert (=> b!64023 (=> (not res!34930) (not e!41993))))

(assert (=> b!64023 (= res!34930 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3086 lt!27017)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64024 () Bool)

(declare-fun e!41988 () Unit!1755)

(declare-fun Unit!1764 () Unit!1755)

(assert (=> b!64024 (= e!41988 Unit!1764)))

(declare-fun lt!27013 () Unit!1755)

(declare-fun call!5134 () Unit!1755)

(assert (=> b!64024 (= lt!27013 call!5134)))

(declare-fun call!5113 () SeekEntryResult!240)

(assert (=> b!64024 (= lt!27014 call!5113)))

(assert (=> b!64024 (= c!8713 ((_ is MissingZero!240) lt!27014))))

(declare-fun e!41992 () Bool)

(assert (=> b!64024 e!41992))

(declare-fun lt!27007 () Unit!1755)

(assert (=> b!64024 (= lt!27007 lt!27013)))

(assert (=> b!64024 false))

(declare-fun bm!5116 () Bool)

(assert (=> bm!5116 (= call!5114 call!5117)))

(declare-fun b!64025 () Bool)

(assert (=> b!64025 (= e!41998 (not call!5131))))

(declare-fun b!64026 () Bool)

(declare-fun e!41996 () tuple2!2076)

(assert (=> b!64026 (= e!41996 e!42001)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3774 (_ BitVec 32)) SeekEntryResult!240)

(assert (=> b!64026 (= lt!27001 (seekEntryOrOpen!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (_keys!3745 newMap!16) (mask!6025 newMap!16)))))

(assert (=> b!64026 (= c!8718 ((_ is Undefined!240) lt!27001))))

(declare-fun b!64027 () Bool)

(declare-fun res!34936 () Bool)

(assert (=> b!64027 (=> (not res!34936) (not e!41993))))

(assert (=> b!64027 (= res!34936 call!5136)))

(declare-fun e!41982 () Bool)

(assert (=> b!64027 (= e!41982 e!41993)))

(declare-fun bm!5117 () Bool)

(declare-fun c!8714 () Bool)

(assert (=> bm!5117 (= c!8714 c!8718)))

(declare-fun e!42002 () ListLongMap!1395)

(assert (=> bm!5117 (= call!5128 (contains!704 e!42002 (ite c!8718 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!27001)))))))

(declare-fun b!64028 () Bool)

(declare-fun lt!27008 () Unit!1755)

(assert (=> b!64028 (= e!42000 lt!27008)))

(assert (=> b!64028 (= lt!27008 call!5134)))

(declare-fun call!5118 () SeekEntryResult!240)

(assert (=> b!64028 (= lt!27017 call!5118)))

(assert (=> b!64028 (= c!8719 ((_ is MissingZero!240) lt!27017))))

(assert (=> b!64028 e!41982))

(declare-fun bm!5118 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!18 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 64) Int) Unit!1755)

(assert (=> bm!5118 (= call!5134 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (defaultEntry!2109 newMap!16)))))

(declare-fun b!64029 () Bool)

(declare-fun res!34941 () Bool)

(declare-fun e!41986 () Bool)

(assert (=> b!64029 (=> (not res!34941) (not e!41986))))

(assert (=> b!64029 (= res!34941 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3086 lt!27014)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64030 () Bool)

(declare-fun lt!27006 () Unit!1755)

(declare-fun lt!26995 () Unit!1755)

(assert (=> b!64030 (= lt!27006 lt!26995)))

(declare-fun call!5130 () ListLongMap!1395)

(declare-fun call!5122 () ListLongMap!1395)

(assert (=> b!64030 (= call!5130 call!5122)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!18 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 V!2875 Int) Unit!1755)

(assert (=> b!64030 (= lt!26995 (lemmaChangeLongMinValueKeyThenAddPairToListMap!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) lt!27018 (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2109 newMap!16)))))

(assert (=> b!64030 (= lt!27018 (bvor (extraKeys!1984 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!41987 () tuple2!2076)

(assert (=> b!64030 (= e!41987 (tuple2!2077 true (LongMapFixedSize!643 (defaultEntry!2109 newMap!16) (mask!6025 newMap!16) (bvor (extraKeys!1984 newMap!16) #b00000000000000000000000000000010) (zeroValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!370 newMap!16) (_keys!3745 newMap!16) (_values!2092 newMap!16) (_vacant!370 newMap!16))))))

(declare-fun b!64031 () Bool)

(declare-fun res!34934 () Bool)

(assert (=> b!64031 (= res!34934 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3089 lt!27017)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!64031 (=> (not res!34934) (not e!41998))))

(declare-fun bm!5119 () Bool)

(assert (=> bm!5119 (= call!5122 call!5133)))

(declare-fun call!5123 () ListLongMap!1395)

(declare-fun e!41991 () ListLongMap!1395)

(declare-fun bm!5120 () Bool)

(declare-fun +!84 (ListLongMap!1395 tuple2!2078) ListLongMap!1395)

(assert (=> bm!5120 (= call!5123 (+!84 e!41991 (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!8712 () Bool)

(assert (=> bm!5120 (= c!8712 c!8722)))

(declare-fun b!64032 () Bool)

(declare-fun Unit!1765 () Unit!1755)

(assert (=> b!64032 (= e!42000 Unit!1765)))

(declare-fun lt!27003 () Unit!1755)

(declare-fun call!5132 () Unit!1755)

(assert (=> b!64032 (= lt!27003 call!5132)))

(assert (=> b!64032 (= lt!27011 call!5118)))

(declare-fun res!34933 () Bool)

(assert (=> b!64032 (= res!34933 ((_ is Found!240) lt!27011))))

(assert (=> b!64032 (=> (not res!34933) (not e!41983))))

(assert (=> b!64032 e!41983))

(declare-fun lt!27005 () Unit!1755)

(assert (=> b!64032 (= lt!27005 lt!27003)))

(assert (=> b!64032 false))

(declare-fun bm!5121 () Bool)

(declare-fun call!5125 () ListLongMap!1395)

(assert (=> bm!5121 (= call!5125 call!5116)))

(declare-fun b!64033 () Bool)

(declare-fun c!8723 () Bool)

(assert (=> b!64033 (= c!8723 ((_ is MissingVacant!240) lt!27001))))

(assert (=> b!64033 (= e!42001 e!41999)))

(declare-fun bm!5122 () Bool)

(declare-fun call!5129 () SeekEntryResult!240)

(assert (=> bm!5122 (= call!5118 call!5129)))

(declare-fun b!64034 () Bool)

(declare-fun call!5119 () Bool)

(assert (=> b!64034 (= e!41986 (not call!5119))))

(declare-fun b!64035 () Bool)

(declare-fun e!41990 () Bool)

(assert (=> b!64035 (= e!41990 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!26997)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun bm!5123 () Bool)

(assert (=> bm!5123 (= call!5130 call!5123)))

(declare-fun b!64036 () Bool)

(assert (=> b!64036 (= e!41991 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun b!64037 () Bool)

(assert (=> b!64037 (= e!41993 (not call!5131))))

(declare-fun b!64038 () Bool)

(declare-fun e!41985 () Bool)

(declare-fun e!41995 () Bool)

(assert (=> b!64038 (= e!41985 e!41995)))

(declare-fun res!34939 () Bool)

(declare-fun call!5135 () ListLongMap!1395)

(assert (=> b!64038 (= res!34939 (contains!704 call!5135 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> b!64038 (=> (not res!34939) (not e!41995))))

(declare-fun b!64039 () Bool)

(declare-fun res!34932 () Bool)

(assert (=> b!64039 (= res!34932 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3089 lt!27014)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!41989 () Bool)

(assert (=> b!64039 (=> (not res!34932) (not e!41989))))

(declare-fun b!64040 () Bool)

(declare-fun call!5127 () ListLongMap!1395)

(assert (=> b!64040 (= e!41991 (ite c!8721 call!5122 call!5127))))

(declare-fun b!64041 () Bool)

(assert (=> b!64041 (= e!42002 call!5125)))

(declare-fun b!64042 () Bool)

(declare-fun e!42003 () tuple2!2076)

(assert (=> b!64042 (= e!41999 e!42003)))

(declare-fun c!8720 () Bool)

(assert (=> b!64042 (= c!8720 ((_ is MissingZero!240) lt!27001))))

(declare-fun b!64043 () Bool)

(declare-fun res!34935 () Bool)

(assert (=> b!64043 (=> (not res!34935) (not e!41986))))

(declare-fun call!5115 () Bool)

(assert (=> b!64043 (= res!34935 call!5115)))

(assert (=> b!64043 (= e!41992 e!41986)))

(declare-fun b!64044 () Bool)

(declare-fun c!8725 () Bool)

(assert (=> b!64044 (= c!8725 ((_ is MissingVacant!240) lt!27017))))

(assert (=> b!64044 (= e!41982 e!41997)))

(declare-fun b!64045 () Bool)

(declare-fun e!41984 () Bool)

(assert (=> b!64045 (= e!41984 ((_ is Undefined!240) lt!27014))))

(declare-fun b!64046 () Bool)

(declare-fun e!41994 () Bool)

(assert (=> b!64046 (= e!41994 e!41985)))

(declare-fun c!8717 () Bool)

(declare-fun lt!27015 () tuple2!2076)

(assert (=> b!64046 (= c!8717 (_1!1048 lt!27015))))

(declare-fun b!64047 () Bool)

(assert (=> b!64047 (= e!41983 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!27011)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun bm!5124 () Bool)

(declare-fun updateHelperNewKey!18 (LongMapFixedSize!642 (_ BitVec 64) V!2875 (_ BitVec 32)) tuple2!2076)

(assert (=> bm!5124 (= call!5126 (updateHelperNewKey!18 newMap!16 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001))))))

(declare-fun b!64048 () Bool)

(declare-fun res!34937 () Bool)

(declare-fun call!5121 () Bool)

(assert (=> b!64048 (= res!34937 call!5121)))

(assert (=> b!64048 (=> (not res!34937) (not e!41990))))

(declare-fun b!64049 () Bool)

(assert (=> b!64049 (= e!41989 (not call!5119))))

(declare-fun b!64050 () Bool)

(declare-fun lt!27019 () Unit!1755)

(declare-fun lt!26993 () Unit!1755)

(assert (=> b!64050 (= lt!27019 lt!26993)))

(assert (=> b!64050 call!5128))

(declare-fun lemmaValidKeyInArrayIsInListMap!76 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 32) Int) Unit!1755)

(assert (=> b!64050 (= lt!26993 (lemmaValidKeyInArrayIsInListMap!76 (_keys!3745 newMap!16) lt!27009 (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (index!3087 lt!27001) (defaultEntry!2109 newMap!16)))))

(assert (=> b!64050 (= lt!27009 (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16))))))

(declare-fun lt!27002 () Unit!1755)

(declare-fun lt!27004 () Unit!1755)

(assert (=> b!64050 (= lt!27002 lt!27004)))

(assert (=> b!64050 (= call!5123 call!5125)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!18 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 32) (_ BitVec 64) V!2875 Int) Unit!1755)

(assert (=> b!64050 (= lt!27004 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (index!3087 lt!27001) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27000 () Unit!1755)

(assert (=> b!64050 (= lt!27000 e!41988)))

(assert (=> b!64050 (= c!8716 (contains!704 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> b!64050 (= e!42003 (tuple2!2077 true (LongMapFixedSize!643 (defaultEntry!2109 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (_size!370 newMap!16) (_keys!3745 newMap!16) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16))) (_vacant!370 newMap!16))))))

(declare-fun b!64051 () Bool)

(declare-fun lt!26999 () tuple2!2076)

(assert (=> b!64051 (= lt!26999 call!5126)))

(assert (=> b!64051 (= e!42003 (tuple2!2077 (_1!1048 lt!26999) (_2!1048 lt!26999)))))

(declare-fun b!64052 () Bool)

(assert (=> b!64052 (= e!42002 call!5133)))

(declare-fun bm!5125 () Bool)

(assert (=> bm!5125 (= call!5113 call!5129)))

(declare-fun bm!5126 () Bool)

(assert (=> bm!5126 (= call!5119 call!5124)))

(declare-fun b!64053 () Bool)

(declare-fun lt!27010 () Unit!1755)

(declare-fun lt!26998 () Unit!1755)

(assert (=> b!64053 (= lt!27010 lt!26998)))

(assert (=> b!64053 (= call!5130 call!5127)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!18 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 V!2875 Int) Unit!1755)

(assert (=> b!64053 (= lt!26998 (lemmaChangeZeroKeyThenAddPairToListMap!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) lt!27012 (zeroValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2019 newMap!16) (defaultEntry!2109 newMap!16)))))

(assert (=> b!64053 (= lt!27012 (bvor (extraKeys!1984 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!64053 (= e!41987 (tuple2!2077 true (LongMapFixedSize!643 (defaultEntry!2109 newMap!16) (mask!6025 newMap!16) (bvor (extraKeys!1984 newMap!16) #b00000000000000000000000000000001) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2019 newMap!16) (_size!370 newMap!16) (_keys!3745 newMap!16) (_values!2092 newMap!16) (_vacant!370 newMap!16))))))

(declare-fun bm!5127 () Bool)

(declare-fun call!5120 () ListLongMap!1395)

(assert (=> bm!5127 (= call!5120 (map!1123 newMap!16))))

(declare-fun b!64054 () Bool)

(assert (=> b!64054 (= e!41995 (= call!5135 (+!84 call!5120 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun d!13285 () Bool)

(assert (=> d!13285 e!41994))

(declare-fun res!34942 () Bool)

(assert (=> d!13285 (=> (not res!34942) (not e!41994))))

(assert (=> d!13285 (= res!34942 (valid!266 (_2!1048 lt!27015)))))

(assert (=> d!13285 (= lt!27015 e!41996)))

(assert (=> d!13285 (= c!8722 (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvneg (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355))))))

(assert (=> d!13285 (valid!266 newMap!16)))

(assert (=> d!13285 (= (update!90 newMap!16 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!27015)))

(declare-fun bm!5128 () Bool)

(assert (=> bm!5128 (= call!5129 (seekEntryOrOpen!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (_keys!3745 newMap!16) (mask!6025 newMap!16)))))

(declare-fun b!64055 () Bool)

(assert (=> b!64055 (= e!41997 ((_ is Undefined!240) lt!27017))))

(declare-fun b!64056 () Bool)

(declare-fun lt!27016 () Unit!1755)

(assert (=> b!64056 (= e!41988 lt!27016)))

(assert (=> b!64056 (= lt!27016 call!5132)))

(assert (=> b!64056 (= lt!26997 call!5113)))

(declare-fun res!34940 () Bool)

(assert (=> b!64056 (= res!34940 ((_ is Found!240) lt!26997))))

(assert (=> b!64056 (=> (not res!34940) (not e!41990))))

(assert (=> b!64056 e!41990))

(declare-fun bm!5129 () Bool)

(assert (=> bm!5129 (= call!5135 (map!1123 (_2!1048 lt!27015)))))

(declare-fun bm!5130 () Bool)

(assert (=> bm!5130 (= call!5127 call!5116)))

(declare-fun bm!5131 () Bool)

(assert (=> bm!5131 (= call!5115 call!5121)))

(declare-fun b!64057 () Bool)

(declare-fun c!8724 () Bool)

(assert (=> b!64057 (= c!8724 ((_ is MissingVacant!240) lt!27014))))

(assert (=> b!64057 (= e!41992 e!41984)))

(declare-fun bm!5132 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!18 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 64) Int) Unit!1755)

(assert (=> bm!5132 (= call!5132 (lemmaInListMapThenSeekEntryOrOpenFindsIt!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (defaultEntry!2109 newMap!16)))))

(declare-fun b!64058 () Bool)

(assert (=> b!64058 (= e!41985 (= call!5135 call!5120))))

(declare-fun b!64059 () Bool)

(assert (=> b!64059 (= e!41984 e!41989)))

(declare-fun res!34943 () Bool)

(assert (=> b!64059 (= res!34943 call!5115)))

(assert (=> b!64059 (=> (not res!34943) (not e!41989))))

(declare-fun bm!5133 () Bool)

(assert (=> bm!5133 (= call!5121 call!5117)))

(declare-fun b!64060 () Bool)

(assert (=> b!64060 (= e!41996 e!41987)))

(assert (=> b!64060 (= c!8721 (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!13285 c!8722) b!64060))

(assert (= (and d!13285 (not c!8722)) b!64026))

(assert (= (and b!64060 c!8721) b!64053))

(assert (= (and b!64060 (not c!8721)) b!64030))

(assert (= (or b!64053 b!64030) bm!5130))

(assert (= (or b!64053 b!64030) bm!5119))

(assert (= (or b!64053 b!64030) bm!5123))

(assert (= (and b!64026 c!8718) b!64020))

(assert (= (and b!64026 (not c!8718)) b!64033))

(assert (= (and b!64020 c!8715) b!64032))

(assert (= (and b!64020 (not c!8715)) b!64028))

(assert (= (and b!64032 res!34933) b!64022))

(assert (= (and b!64022 res!34931) b!64047))

(assert (= (and b!64028 c!8719) b!64027))

(assert (= (and b!64028 (not c!8719)) b!64044))

(assert (= (and b!64027 res!34936) b!64023))

(assert (= (and b!64023 res!34930) b!64037))

(assert (= (and b!64044 c!8725) b!64019))

(assert (= (and b!64044 (not c!8725)) b!64055))

(assert (= (and b!64019 res!34938) b!64031))

(assert (= (and b!64031 res!34934) b!64025))

(assert (= (or b!64027 b!64019) bm!5115))

(assert (= (or b!64037 b!64025) bm!5114))

(assert (= (or b!64022 bm!5115) bm!5116))

(assert (= (or b!64032 b!64028) bm!5122))

(assert (= (and b!64033 c!8723) b!64021))

(assert (= (and b!64033 (not c!8723)) b!64042))

(assert (= (and b!64042 c!8720) b!64051))

(assert (= (and b!64042 (not c!8720)) b!64050))

(assert (= (and b!64050 c!8716) b!64056))

(assert (= (and b!64050 (not c!8716)) b!64024))

(assert (= (and b!64056 res!34940) b!64048))

(assert (= (and b!64048 res!34937) b!64035))

(assert (= (and b!64024 c!8713) b!64043))

(assert (= (and b!64024 (not c!8713)) b!64057))

(assert (= (and b!64043 res!34935) b!64029))

(assert (= (and b!64029 res!34941) b!64034))

(assert (= (and b!64057 c!8724) b!64059))

(assert (= (and b!64057 (not c!8724)) b!64045))

(assert (= (and b!64059 res!34943) b!64039))

(assert (= (and b!64039 res!34932) b!64049))

(assert (= (or b!64043 b!64059) bm!5131))

(assert (= (or b!64034 b!64049) bm!5126))

(assert (= (or b!64048 bm!5131) bm!5133))

(assert (= (or b!64056 b!64024) bm!5125))

(assert (= (or b!64021 b!64051) bm!5124))

(assert (= (or b!64028 b!64024) bm!5118))

(assert (= (or b!64020 b!64050) bm!5121))

(assert (= (or bm!5116 bm!5133) bm!5112))

(assert (= (or b!64032 b!64056) bm!5132))

(assert (= (or bm!5122 bm!5125) bm!5128))

(assert (= (or bm!5114 bm!5126) bm!5110))

(assert (= (or b!64020 b!64050) bm!5117))

(assert (= (and bm!5117 c!8714) b!64041))

(assert (= (and bm!5117 (not c!8714)) b!64052))

(assert (= (or bm!5130 bm!5121) bm!5113))

(assert (= (or bm!5119 b!64052) bm!5111))

(assert (= (or bm!5123 b!64050) bm!5120))

(assert (= (and bm!5120 c!8712) b!64040))

(assert (= (and bm!5120 (not c!8712)) b!64036))

(assert (= (and d!13285 res!34942) b!64046))

(assert (= (and b!64046 c!8717) b!64038))

(assert (= (and b!64046 (not c!8717)) b!64058))

(assert (= (and b!64038 res!34939) b!64054))

(assert (= (or b!64054 b!64058) bm!5127))

(assert (= (or b!64038 b!64054 b!64058) bm!5129))

(declare-fun m!58287 () Bool)

(assert (=> bm!5113 m!58287))

(declare-fun m!58289 () Bool)

(assert (=> bm!5113 m!58289))

(declare-fun m!58291 () Bool)

(assert (=> bm!5117 m!58291))

(declare-fun m!58293 () Bool)

(assert (=> bm!5117 m!58293))

(declare-fun m!58295 () Bool)

(assert (=> b!64054 m!58295))

(declare-fun m!58297 () Bool)

(assert (=> bm!5129 m!58297))

(declare-fun m!58299 () Bool)

(assert (=> bm!5111 m!58299))

(declare-fun m!58301 () Bool)

(assert (=> bm!5112 m!58301))

(declare-fun m!58303 () Bool)

(assert (=> b!64035 m!58303))

(declare-fun m!58305 () Bool)

(assert (=> b!64023 m!58305))

(assert (=> bm!5110 m!58191))

(declare-fun m!58307 () Bool)

(assert (=> bm!5110 m!58307))

(assert (=> bm!5128 m!58191))

(declare-fun m!58309 () Bool)

(assert (=> bm!5128 m!58309))

(declare-fun m!58311 () Bool)

(assert (=> b!64031 m!58311))

(assert (=> b!64050 m!58191))

(assert (=> b!64050 m!58209))

(declare-fun m!58313 () Bool)

(assert (=> b!64050 m!58313))

(assert (=> b!64050 m!58287))

(declare-fun m!58315 () Bool)

(assert (=> b!64050 m!58315))

(assert (=> b!64050 m!58191))

(declare-fun m!58317 () Bool)

(assert (=> b!64050 m!58317))

(assert (=> b!64050 m!58315))

(declare-fun m!58319 () Bool)

(assert (=> b!64050 m!58319))

(declare-fun m!58321 () Bool)

(assert (=> b!64029 m!58321))

(assert (=> b!64038 m!58191))

(declare-fun m!58323 () Bool)

(assert (=> b!64038 m!58323))

(assert (=> b!64026 m!58191))

(assert (=> b!64026 m!58309))

(assert (=> b!64030 m!58209))

(declare-fun m!58325 () Bool)

(assert (=> b!64030 m!58325))

(assert (=> bm!5127 m!58223))

(declare-fun m!58327 () Bool)

(assert (=> b!64039 m!58327))

(declare-fun m!58329 () Bool)

(assert (=> d!13285 m!58329))

(assert (=> d!13285 m!58217))

(assert (=> bm!5132 m!58191))

(declare-fun m!58331 () Bool)

(assert (=> bm!5132 m!58331))

(assert (=> b!64036 m!58315))

(assert (=> b!64053 m!58209))

(declare-fun m!58333 () Bool)

(assert (=> b!64053 m!58333))

(assert (=> bm!5118 m!58191))

(declare-fun m!58335 () Bool)

(assert (=> bm!5118 m!58335))

(declare-fun m!58337 () Bool)

(assert (=> bm!5120 m!58337))

(assert (=> bm!5124 m!58191))

(assert (=> bm!5124 m!58209))

(declare-fun m!58339 () Bool)

(assert (=> bm!5124 m!58339))

(declare-fun m!58341 () Bool)

(assert (=> b!64047 m!58341))

(assert (=> b!63844 d!13285))

(declare-fun d!13287 () Bool)

(declare-fun c!8728 () Bool)

(assert (=> d!13287 (= c!8728 ((_ is ValueCellFull!867) (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun e!42006 () V!2875)

(assert (=> d!13287 (= (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!42006)))

(declare-fun b!64065 () Bool)

(declare-fun get!1104 (ValueCell!867 V!2875) V!2875)

(assert (=> b!64065 (= e!42006 (get!1104 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!64066 () Bool)

(declare-fun get!1105 (ValueCell!867 V!2875) V!2875)

(assert (=> b!64066 (= e!42006 (get!1105 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!13287 c!8728) b!64065))

(assert (= (and d!13287 (not c!8728)) b!64066))

(assert (=> b!64065 m!58205))

(assert (=> b!64065 m!58207))

(declare-fun m!58343 () Bool)

(assert (=> b!64065 m!58343))

(assert (=> b!64066 m!58205))

(assert (=> b!64066 m!58207))

(declare-fun m!58345 () Bool)

(assert (=> b!64066 m!58345))

(assert (=> b!63844 d!13287))

(declare-fun d!13289 () Bool)

(assert (=> d!13289 (= (map!1123 newMap!16) (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun bs!2780 () Bool)

(assert (= bs!2780 d!13289))

(assert (=> bs!2780 m!58315))

(assert (=> b!63849 d!13289))

(declare-fun b!64109 () Bool)

(declare-fun e!42042 () Unit!1755)

(declare-fun lt!27064 () Unit!1755)

(assert (=> b!64109 (= e!42042 lt!27064)))

(declare-fun lt!27068 () ListLongMap!1395)

(declare-fun getCurrentListMapNoExtraKeys!47 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 32) Int) ListLongMap!1395)

(assert (=> b!64109 (= lt!27068 (getCurrentListMapNoExtraKeys!47 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun lt!27069 () (_ BitVec 64))

(assert (=> b!64109 (= lt!27069 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27080 () (_ BitVec 64))

(assert (=> b!64109 (= lt!27080 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!27085 () Unit!1755)

(declare-fun addStillContains!45 (ListLongMap!1395 (_ BitVec 64) V!2875 (_ BitVec 64)) Unit!1755)

(assert (=> b!64109 (= lt!27085 (addStillContains!45 lt!27068 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27080))))

(assert (=> b!64109 (contains!704 (+!84 lt!27068 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27080)))

(declare-fun lt!27074 () Unit!1755)

(assert (=> b!64109 (= lt!27074 lt!27085)))

(declare-fun lt!27083 () ListLongMap!1395)

(assert (=> b!64109 (= lt!27083 (getCurrentListMapNoExtraKeys!47 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun lt!27067 () (_ BitVec 64))

(assert (=> b!64109 (= lt!27067 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27077 () (_ BitVec 64))

(assert (=> b!64109 (= lt!27077 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!27082 () Unit!1755)

(declare-fun addApplyDifferent!45 (ListLongMap!1395 (_ BitVec 64) V!2875 (_ BitVec 64)) Unit!1755)

(assert (=> b!64109 (= lt!27082 (addApplyDifferent!45 lt!27083 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27077))))

(declare-fun apply!69 (ListLongMap!1395 (_ BitVec 64)) V!2875)

(assert (=> b!64109 (= (apply!69 (+!84 lt!27083 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27077) (apply!69 lt!27083 lt!27077))))

(declare-fun lt!27078 () Unit!1755)

(assert (=> b!64109 (= lt!27078 lt!27082)))

(declare-fun lt!27084 () ListLongMap!1395)

(assert (=> b!64109 (= lt!27084 (getCurrentListMapNoExtraKeys!47 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun lt!27072 () (_ BitVec 64))

(assert (=> b!64109 (= lt!27072 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27065 () (_ BitVec 64))

(assert (=> b!64109 (= lt!27065 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!27066 () Unit!1755)

(assert (=> b!64109 (= lt!27066 (addApplyDifferent!45 lt!27084 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27065))))

(assert (=> b!64109 (= (apply!69 (+!84 lt!27084 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27065) (apply!69 lt!27084 lt!27065))))

(declare-fun lt!27073 () Unit!1755)

(assert (=> b!64109 (= lt!27073 lt!27066)))

(declare-fun lt!27075 () ListLongMap!1395)

(assert (=> b!64109 (= lt!27075 (getCurrentListMapNoExtraKeys!47 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun lt!27081 () (_ BitVec 64))

(assert (=> b!64109 (= lt!27081 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27076 () (_ BitVec 64))

(assert (=> b!64109 (= lt!27076 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!64109 (= lt!27064 (addApplyDifferent!45 lt!27075 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27076))))

(assert (=> b!64109 (= (apply!69 (+!84 lt!27075 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27076) (apply!69 lt!27075 lt!27076))))

(declare-fun call!5154 () ListLongMap!1395)

(declare-fun bm!5148 () Bool)

(declare-fun call!5152 () ListLongMap!1395)

(declare-fun c!8741 () Bool)

(declare-fun call!5153 () ListLongMap!1395)

(declare-fun call!5151 () ListLongMap!1395)

(declare-fun c!8746 () Bool)

(assert (=> bm!5148 (= call!5151 (+!84 (ite c!8746 call!5152 (ite c!8741 call!5154 call!5153)) (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(declare-fun bm!5149 () Bool)

(declare-fun call!5155 () ListLongMap!1395)

(assert (=> bm!5149 (= call!5155 call!5151)))

(declare-fun bm!5150 () Bool)

(declare-fun call!5156 () Bool)

(declare-fun lt!27079 () ListLongMap!1395)

(assert (=> bm!5150 (= call!5156 (contains!704 lt!27079 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64110 () Bool)

(declare-fun e!42040 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!64110 (= e!42040 (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!64111 () Bool)

(declare-fun e!42037 () Bool)

(assert (=> b!64111 (= e!42037 (not call!5156))))

(declare-fun b!64112 () Bool)

(declare-fun e!42038 () ListLongMap!1395)

(assert (=> b!64112 (= e!42038 call!5155)))

(declare-fun b!64113 () Bool)

(declare-fun Unit!1766 () Unit!1755)

(assert (=> b!64113 (= e!42042 Unit!1766)))

(declare-fun b!64114 () Bool)

(assert (=> b!64114 (= e!42038 call!5153)))

(declare-fun b!64115 () Bool)

(declare-fun e!42041 () Bool)

(assert (=> b!64115 (= e!42041 (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!42039 () Bool)

(declare-fun b!64116 () Bool)

(assert (=> b!64116 (= e!42039 (= (apply!69 lt!27079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!64116 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2038 (_values!2092 (v!2435 (underlying!237 thiss!992))))))))

(assert (=> b!64116 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun b!64117 () Bool)

(declare-fun res!34967 () Bool)

(declare-fun e!42036 () Bool)

(assert (=> b!64117 (=> (not res!34967) (not e!42036))))

(declare-fun e!42045 () Bool)

(assert (=> b!64117 (= res!34967 e!42045)))

(declare-fun res!34964 () Bool)

(assert (=> b!64117 (=> res!34964 e!42045)))

(assert (=> b!64117 (= res!34964 (not e!42040))))

(declare-fun res!34968 () Bool)

(assert (=> b!64117 (=> (not res!34968) (not e!42040))))

(assert (=> b!64117 (= res!34968 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun bm!5152 () Bool)

(assert (=> bm!5152 (= call!5154 call!5152)))

(declare-fun b!64118 () Bool)

(declare-fun e!42043 () ListLongMap!1395)

(declare-fun e!42033 () ListLongMap!1395)

(assert (=> b!64118 (= e!42043 e!42033)))

(assert (=> b!64118 (= c!8741 (and (not (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!64119 () Bool)

(declare-fun e!42034 () Bool)

(assert (=> b!64119 (= e!42036 e!42034)))

(declare-fun c!8743 () Bool)

(assert (=> b!64119 (= c!8743 (not (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!64120 () Bool)

(declare-fun e!42035 () Bool)

(assert (=> b!64120 (= e!42034 e!42035)))

(declare-fun res!34970 () Bool)

(declare-fun call!5157 () Bool)

(assert (=> b!64120 (= res!34970 call!5157)))

(assert (=> b!64120 (=> (not res!34970) (not e!42035))))

(declare-fun bm!5153 () Bool)

(assert (=> bm!5153 (= call!5152 (getCurrentListMapNoExtraKeys!47 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun bm!5151 () Bool)

(assert (=> bm!5151 (= call!5157 (contains!704 lt!27079 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!13291 () Bool)

(assert (=> d!13291 e!42036))

(declare-fun res!34969 () Bool)

(assert (=> d!13291 (=> (not res!34969) (not e!42036))))

(assert (=> d!13291 (= res!34969 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))))

(declare-fun lt!27070 () ListLongMap!1395)

(assert (=> d!13291 (= lt!27079 lt!27070)))

(declare-fun lt!27071 () Unit!1755)

(assert (=> d!13291 (= lt!27071 e!42042)))

(declare-fun c!8744 () Bool)

(assert (=> d!13291 (= c!8744 e!42041)))

(declare-fun res!34962 () Bool)

(assert (=> d!13291 (=> (not res!34962) (not e!42041))))

(assert (=> d!13291 (= res!34962 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(assert (=> d!13291 (= lt!27070 e!42043)))

(assert (=> d!13291 (= c!8746 (and (not (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!13291 (validMask!0 (mask!6025 (v!2435 (underlying!237 thiss!992))))))

(assert (=> d!13291 (= (getCurrentListMap!409 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))) lt!27079)))

(declare-fun b!64121 () Bool)

(assert (=> b!64121 (= e!42033 call!5155)))

(declare-fun bm!5154 () Bool)

(assert (=> bm!5154 (= call!5153 call!5154)))

(declare-fun b!64122 () Bool)

(declare-fun c!8742 () Bool)

(assert (=> b!64122 (= c!8742 (and (not (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!64122 (= e!42033 e!42038)))

(declare-fun b!64123 () Bool)

(declare-fun e!42044 () Bool)

(assert (=> b!64123 (= e!42044 (= (apply!69 lt!27079 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun b!64124 () Bool)

(assert (=> b!64124 (= e!42034 (not call!5157))))

(declare-fun b!64125 () Bool)

(assert (=> b!64125 (= e!42045 e!42039)))

(declare-fun res!34966 () Bool)

(assert (=> b!64125 (=> (not res!34966) (not e!42039))))

(assert (=> b!64125 (= res!34966 (contains!704 lt!27079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!64125 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun b!64126 () Bool)

(declare-fun res!34963 () Bool)

(assert (=> b!64126 (=> (not res!34963) (not e!42036))))

(assert (=> b!64126 (= res!34963 e!42037)))

(declare-fun c!8745 () Bool)

(assert (=> b!64126 (= c!8745 (not (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!64127 () Bool)

(assert (=> b!64127 (= e!42043 (+!84 call!5151 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun b!64128 () Bool)

(assert (=> b!64128 (= e!42035 (= (apply!69 lt!27079 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun b!64129 () Bool)

(assert (=> b!64129 (= e!42037 e!42044)))

(declare-fun res!34965 () Bool)

(assert (=> b!64129 (= res!34965 call!5156)))

(assert (=> b!64129 (=> (not res!34965) (not e!42044))))

(assert (= (and d!13291 c!8746) b!64127))

(assert (= (and d!13291 (not c!8746)) b!64118))

(assert (= (and b!64118 c!8741) b!64121))

(assert (= (and b!64118 (not c!8741)) b!64122))

(assert (= (and b!64122 c!8742) b!64112))

(assert (= (and b!64122 (not c!8742)) b!64114))

(assert (= (or b!64112 b!64114) bm!5154))

(assert (= (or b!64121 bm!5154) bm!5152))

(assert (= (or b!64121 b!64112) bm!5149))

(assert (= (or b!64127 bm!5152) bm!5153))

(assert (= (or b!64127 bm!5149) bm!5148))

(assert (= (and d!13291 res!34962) b!64115))

(assert (= (and d!13291 c!8744) b!64109))

(assert (= (and d!13291 (not c!8744)) b!64113))

(assert (= (and d!13291 res!34969) b!64117))

(assert (= (and b!64117 res!34968) b!64110))

(assert (= (and b!64117 (not res!34964)) b!64125))

(assert (= (and b!64125 res!34966) b!64116))

(assert (= (and b!64117 res!34967) b!64126))

(assert (= (and b!64126 c!8745) b!64129))

(assert (= (and b!64126 (not c!8745)) b!64111))

(assert (= (and b!64129 res!34965) b!64123))

(assert (= (or b!64129 b!64111) bm!5150))

(assert (= (and b!64126 res!34963) b!64119))

(assert (= (and b!64119 c!8743) b!64120))

(assert (= (and b!64119 (not c!8743)) b!64124))

(assert (= (and b!64120 res!34970) b!64128))

(assert (= (or b!64120 b!64124) bm!5151))

(declare-fun b_lambda!2883 () Bool)

(assert (=> (not b_lambda!2883) (not b!64116)))

(assert (=> b!64116 t!4884))

(declare-fun b_and!3925 () Bool)

(assert (= b_and!3913 (and (=> t!4884 result!2477) b_and!3925)))

(assert (=> b!64116 t!4886))

(declare-fun b_and!3927 () Bool)

(assert (= b_and!3915 (and (=> t!4886 result!2481) b_and!3927)))

(declare-fun m!58347 () Bool)

(assert (=> b!64123 m!58347))

(declare-fun m!58349 () Bool)

(assert (=> b!64127 m!58349))

(declare-fun m!58351 () Bool)

(assert (=> b!64109 m!58351))

(declare-fun m!58353 () Bool)

(assert (=> b!64109 m!58353))

(declare-fun m!58355 () Bool)

(assert (=> b!64109 m!58355))

(declare-fun m!58357 () Bool)

(assert (=> b!64109 m!58357))

(declare-fun m!58359 () Bool)

(assert (=> b!64109 m!58359))

(declare-fun m!58361 () Bool)

(assert (=> b!64109 m!58361))

(declare-fun m!58363 () Bool)

(assert (=> b!64109 m!58363))

(declare-fun m!58365 () Bool)

(assert (=> b!64109 m!58365))

(declare-fun m!58367 () Bool)

(assert (=> b!64109 m!58367))

(declare-fun m!58369 () Bool)

(assert (=> b!64109 m!58369))

(assert (=> b!64109 m!58361))

(declare-fun m!58371 () Bool)

(assert (=> b!64109 m!58371))

(declare-fun m!58373 () Bool)

(assert (=> b!64109 m!58373))

(declare-fun m!58375 () Bool)

(assert (=> b!64109 m!58375))

(declare-fun m!58377 () Bool)

(assert (=> b!64109 m!58377))

(declare-fun m!58379 () Bool)

(assert (=> b!64109 m!58379))

(assert (=> b!64109 m!58377))

(declare-fun m!58381 () Bool)

(assert (=> b!64109 m!58381))

(declare-fun m!58383 () Bool)

(assert (=> b!64109 m!58383))

(assert (=> b!64109 m!58351))

(assert (=> b!64109 m!58355))

(assert (=> b!64110 m!58369))

(assert (=> b!64110 m!58369))

(declare-fun m!58385 () Bool)

(assert (=> b!64110 m!58385))

(assert (=> b!64115 m!58369))

(assert (=> b!64115 m!58369))

(assert (=> b!64115 m!58385))

(declare-fun m!58387 () Bool)

(assert (=> b!64128 m!58387))

(assert (=> b!64125 m!58369))

(assert (=> b!64125 m!58369))

(declare-fun m!58389 () Bool)

(assert (=> b!64125 m!58389))

(declare-fun m!58391 () Bool)

(assert (=> bm!5148 m!58391))

(assert (=> b!64116 m!58369))

(declare-fun m!58393 () Bool)

(assert (=> b!64116 m!58393))

(declare-fun m!58395 () Bool)

(assert (=> b!64116 m!58395))

(assert (=> b!64116 m!58207))

(declare-fun m!58397 () Bool)

(assert (=> b!64116 m!58397))

(assert (=> b!64116 m!58207))

(assert (=> b!64116 m!58369))

(assert (=> b!64116 m!58395))

(assert (=> bm!5153 m!58379))

(assert (=> d!13291 m!58219))

(declare-fun m!58399 () Bool)

(assert (=> bm!5151 m!58399))

(declare-fun m!58401 () Bool)

(assert (=> bm!5150 m!58401))

(assert (=> b!63849 d!13291))

(declare-fun d!13293 () Bool)

(assert (=> d!13293 (= (valid!267 thiss!992) (valid!266 (v!2435 (underlying!237 thiss!992))))))

(declare-fun bs!2781 () Bool)

(assert (= bs!2781 d!13293))

(declare-fun m!58403 () Bool)

(assert (=> bs!2781 m!58403))

(assert (=> start!9032 d!13293))

(declare-fun d!13295 () Bool)

(assert (=> d!13295 (= (validMask!0 (mask!6025 (v!2435 (underlying!237 thiss!992)))) (and (or (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000001111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000011111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000001111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000011111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000001111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000011111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000001111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000011111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000000111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000001111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000011111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000000111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000001111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000011111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000000111111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000001111111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000011111111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000000111111111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000001111111111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000011111111111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00000111111111111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00001111111111111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00011111111111111111111111111111) (= (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6025 (v!2435 (underlying!237 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!63845 d!13295))

(declare-fun d!13297 () Bool)

(assert (=> d!13297 (= (array_inv!1065 (_keys!3745 newMap!16)) (bvsge (size!2037 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!63854 d!13297))

(declare-fun d!13299 () Bool)

(assert (=> d!13299 (= (array_inv!1066 (_values!2092 newMap!16)) (bvsge (size!2038 (_values!2092 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!63854 d!13299))

(declare-fun b!64139 () Bool)

(declare-fun e!42052 () Bool)

(declare-fun call!5160 () Bool)

(assert (=> b!64139 (= e!42052 call!5160)))

(declare-fun bm!5157 () Bool)

(assert (=> bm!5157 (= call!5160 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3745 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun b!64140 () Bool)

(declare-fun e!42054 () Bool)

(assert (=> b!64140 (= e!42052 e!42054)))

(declare-fun lt!27092 () (_ BitVec 64))

(assert (=> b!64140 (= lt!27092 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!27093 () Unit!1755)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3774 (_ BitVec 64) (_ BitVec 32)) Unit!1755)

(assert (=> b!64140 (= lt!27093 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) lt!27092 #b00000000000000000000000000000000))))

(assert (=> b!64140 (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) lt!27092 #b00000000000000000000000000000000)))

(declare-fun lt!27094 () Unit!1755)

(assert (=> b!64140 (= lt!27094 lt!27093)))

(declare-fun res!34975 () Bool)

(assert (=> b!64140 (= res!34975 (= (seekEntryOrOpen!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000) (_keys!3745 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992)))) (Found!240 #b00000000000000000000000000000000)))))

(assert (=> b!64140 (=> (not res!34975) (not e!42054))))

(declare-fun b!64141 () Bool)

(declare-fun e!42053 () Bool)

(assert (=> b!64141 (= e!42053 e!42052)))

(declare-fun c!8749 () Bool)

(assert (=> b!64141 (= c!8749 (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!64138 () Bool)

(assert (=> b!64138 (= e!42054 call!5160)))

(declare-fun d!13301 () Bool)

(declare-fun res!34976 () Bool)

(assert (=> d!13301 (=> res!34976 e!42053)))

(assert (=> d!13301 (= res!34976 (bvsge #b00000000000000000000000000000000 (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(assert (=> d!13301 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992)))) e!42053)))

(assert (= (and d!13301 (not res!34976)) b!64141))

(assert (= (and b!64141 c!8749) b!64140))

(assert (= (and b!64141 (not c!8749)) b!64139))

(assert (= (and b!64140 res!34975) b!64138))

(assert (= (or b!64138 b!64139) bm!5157))

(declare-fun m!58405 () Bool)

(assert (=> bm!5157 m!58405))

(declare-fun m!58407 () Bool)

(assert (=> b!64140 m!58407))

(declare-fun m!58409 () Bool)

(assert (=> b!64140 m!58409))

(declare-fun m!58411 () Bool)

(assert (=> b!64140 m!58411))

(assert (=> b!64140 m!58407))

(declare-fun m!58413 () Bool)

(assert (=> b!64140 m!58413))

(assert (=> b!64141 m!58407))

(assert (=> b!64141 m!58407))

(declare-fun m!58415 () Bool)

(assert (=> b!64141 m!58415))

(assert (=> b!63842 d!13301))

(declare-fun d!13303 () Bool)

(assert (=> d!13303 (= (array_inv!1065 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvsge (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!63859 d!13303))

(declare-fun d!13305 () Bool)

(assert (=> d!13305 (= (array_inv!1066 (_values!2092 (v!2435 (underlying!237 thiss!992)))) (bvsge (size!2038 (_values!2092 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!63859 d!13305))

(declare-fun d!13307 () Bool)

(declare-fun res!34983 () Bool)

(declare-fun e!42057 () Bool)

(assert (=> d!13307 (=> (not res!34983) (not e!42057))))

(declare-fun simpleValid!44 (LongMapFixedSize!642) Bool)

(assert (=> d!13307 (= res!34983 (simpleValid!44 newMap!16))))

(assert (=> d!13307 (= (valid!266 newMap!16) e!42057)))

(declare-fun b!64148 () Bool)

(declare-fun res!34984 () Bool)

(assert (=> b!64148 (=> (not res!34984) (not e!42057))))

(declare-fun arrayCountValidKeys!0 (array!3774 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!64148 (= res!34984 (= (arrayCountValidKeys!0 (_keys!3745 newMap!16) #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))) (_size!370 newMap!16)))))

(declare-fun b!64149 () Bool)

(declare-fun res!34985 () Bool)

(assert (=> b!64149 (=> (not res!34985) (not e!42057))))

(assert (=> b!64149 (= res!34985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3745 newMap!16) (mask!6025 newMap!16)))))

(declare-fun b!64150 () Bool)

(assert (=> b!64150 (= e!42057 (arrayNoDuplicates!0 (_keys!3745 newMap!16) #b00000000000000000000000000000000 Nil!1467))))

(assert (= (and d!13307 res!34983) b!64148))

(assert (= (and b!64148 res!34984) b!64149))

(assert (= (and b!64149 res!34985) b!64150))

(declare-fun m!58417 () Bool)

(assert (=> d!13307 m!58417))

(declare-fun m!58419 () Bool)

(assert (=> b!64148 m!58419))

(declare-fun m!58421 () Bool)

(assert (=> b!64149 m!58421))

(declare-fun m!58423 () Bool)

(assert (=> b!64150 m!58423))

(assert (=> b!63851 d!13307))

(declare-fun d!13309 () Bool)

(assert (=> d!13309 (not (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!27097 () Unit!1755)

(declare-fun choose!68 (array!3774 (_ BitVec 32) (_ BitVec 64) List!1470) Unit!1755)

(assert (=> d!13309 (= lt!27097 (choose!68 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (Cons!1466 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) Nil!1467)))))

(assert (=> d!13309 (bvslt (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!13309 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (Cons!1466 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) Nil!1467)) lt!27097)))

(declare-fun bs!2782 () Bool)

(assert (= bs!2782 d!13309))

(assert (=> bs!2782 m!58191))

(assert (=> bs!2782 m!58195))

(assert (=> bs!2782 m!58191))

(declare-fun m!58425 () Bool)

(assert (=> bs!2782 m!58425))

(assert (=> b!63853 d!13309))

(declare-fun d!13311 () Bool)

(assert (=> d!13311 (arrayNoDuplicates!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) from!355 Nil!1467)))

(declare-fun lt!27100 () Unit!1755)

(declare-fun choose!39 (array!3774 (_ BitVec 32) (_ BitVec 32)) Unit!1755)

(assert (=> d!13311 (= lt!27100 (choose!39 (_keys!3745 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!13311 (bvslt (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!13311 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000000 from!355) lt!27100)))

(declare-fun bs!2783 () Bool)

(assert (= bs!2783 d!13311))

(assert (=> bs!2783 m!58189))

(declare-fun m!58427 () Bool)

(assert (=> bs!2783 m!58427))

(assert (=> b!63853 d!13311))

(declare-fun d!13313 () Bool)

(declare-fun res!34990 () Bool)

(declare-fun e!42062 () Bool)

(assert (=> d!13313 (=> res!34990 e!42062)))

(assert (=> d!13313 (= res!34990 (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> d!13313 (= (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!42062)))

(declare-fun b!64155 () Bool)

(declare-fun e!42063 () Bool)

(assert (=> b!64155 (= e!42062 e!42063)))

(declare-fun res!34991 () Bool)

(assert (=> b!64155 (=> (not res!34991) (not e!42063))))

(assert (=> b!64155 (= res!34991 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun b!64156 () Bool)

(assert (=> b!64156 (= e!42063 (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!13313 (not res!34990)) b!64155))

(assert (= (and b!64155 res!34991) b!64156))

(assert (=> d!13313 m!58369))

(assert (=> b!64156 m!58191))

(declare-fun m!58429 () Bool)

(assert (=> b!64156 m!58429))

(assert (=> b!63853 d!13313))

(declare-fun d!13315 () Bool)

(declare-fun e!42066 () Bool)

(assert (=> d!13315 e!42066))

(declare-fun c!8752 () Bool)

(assert (=> d!13315 (= c!8752 (and (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!27103 () Unit!1755)

(declare-fun choose!351 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 64) (_ BitVec 32) Int) Unit!1755)

(assert (=> d!13315 (= lt!27103 (choose!351 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))))))

(assert (=> d!13315 (validMask!0 (mask!6025 (v!2435 (underlying!237 thiss!992))))))

(assert (=> d!13315 (= (lemmaListMapContainsThenArrayContainsFrom!35 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))) lt!27103)))

(declare-fun b!64161 () Bool)

(assert (=> b!64161 (= e!42066 (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!64162 () Bool)

(assert (=> b!64162 (= e!42066 (ite (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!13315 c!8752) b!64161))

(assert (= (and d!13315 (not c!8752)) b!64162))

(assert (=> d!13315 m!58191))

(declare-fun m!58431 () Bool)

(assert (=> d!13315 m!58431))

(assert (=> d!13315 m!58219))

(assert (=> b!64161 m!58191))

(assert (=> b!64161 m!58195))

(assert (=> b!63853 d!13315))

(declare-fun b!64173 () Bool)

(declare-fun e!42077 () Bool)

(declare-fun e!42076 () Bool)

(assert (=> b!64173 (= e!42077 e!42076)))

(declare-fun c!8755 () Bool)

(assert (=> b!64173 (= c!8755 (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun b!64174 () Bool)

(declare-fun e!42075 () Bool)

(declare-fun contains!705 (List!1470 (_ BitVec 64)) Bool)

(assert (=> b!64174 (= e!42075 (contains!705 Nil!1467 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun b!64176 () Bool)

(declare-fun e!42078 () Bool)

(assert (=> b!64176 (= e!42078 e!42077)))

(declare-fun res!35000 () Bool)

(assert (=> b!64176 (=> (not res!35000) (not e!42077))))

(assert (=> b!64176 (= res!35000 (not e!42075))))

(declare-fun res!34999 () Bool)

(assert (=> b!64176 (=> (not res!34999) (not e!42075))))

(assert (=> b!64176 (= res!34999 (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun call!5163 () Bool)

(declare-fun bm!5160 () Bool)

(assert (=> bm!5160 (= call!5163 (arrayNoDuplicates!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!8755 (Cons!1466 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) Nil!1467) Nil!1467)))))

(declare-fun b!64177 () Bool)

(assert (=> b!64177 (= e!42076 call!5163)))

(declare-fun b!64175 () Bool)

(assert (=> b!64175 (= e!42076 call!5163)))

(declare-fun d!13317 () Bool)

(declare-fun res!34998 () Bool)

(assert (=> d!13317 (=> res!34998 e!42078)))

(assert (=> d!13317 (= res!34998 (bvsge from!355 (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(assert (=> d!13317 (= (arrayNoDuplicates!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) from!355 Nil!1467) e!42078)))

(assert (= (and d!13317 (not res!34998)) b!64176))

(assert (= (and b!64176 res!34999) b!64174))

(assert (= (and b!64176 res!35000) b!64173))

(assert (= (and b!64173 c!8755) b!64177))

(assert (= (and b!64173 (not c!8755)) b!64175))

(assert (= (or b!64177 b!64175) bm!5160))

(assert (=> b!64173 m!58191))

(assert (=> b!64173 m!58191))

(declare-fun m!58433 () Bool)

(assert (=> b!64173 m!58433))

(assert (=> b!64174 m!58191))

(assert (=> b!64174 m!58191))

(declare-fun m!58435 () Bool)

(assert (=> b!64174 m!58435))

(assert (=> b!64176 m!58191))

(assert (=> b!64176 m!58191))

(assert (=> b!64176 m!58433))

(assert (=> bm!5160 m!58191))

(declare-fun m!58437 () Bool)

(assert (=> bm!5160 m!58437))

(assert (=> b!63853 d!13317))

(declare-fun mapIsEmpty!2979 () Bool)

(declare-fun mapRes!2979 () Bool)

(assert (=> mapIsEmpty!2979 mapRes!2979))

(declare-fun condMapEmpty!2979 () Bool)

(declare-fun mapDefault!2979 () ValueCell!867)

(assert (=> mapNonEmpty!2969 (= condMapEmpty!2979 (= mapRest!2970 ((as const (Array (_ BitVec 32) ValueCell!867)) mapDefault!2979)))))

(declare-fun e!42083 () Bool)

(assert (=> mapNonEmpty!2969 (= tp!8164 (and e!42083 mapRes!2979))))

(declare-fun mapNonEmpty!2979 () Bool)

(declare-fun tp!8181 () Bool)

(declare-fun e!42084 () Bool)

(assert (=> mapNonEmpty!2979 (= mapRes!2979 (and tp!8181 e!42084))))

(declare-fun mapKey!2979 () (_ BitVec 32))

(declare-fun mapRest!2979 () (Array (_ BitVec 32) ValueCell!867))

(declare-fun mapValue!2979 () ValueCell!867)

(assert (=> mapNonEmpty!2979 (= mapRest!2970 (store mapRest!2979 mapKey!2979 mapValue!2979))))

(declare-fun b!64184 () Bool)

(assert (=> b!64184 (= e!42084 tp_is_empty!2421)))

(declare-fun b!64185 () Bool)

(assert (=> b!64185 (= e!42083 tp_is_empty!2421)))

(assert (= (and mapNonEmpty!2969 condMapEmpty!2979) mapIsEmpty!2979))

(assert (= (and mapNonEmpty!2969 (not condMapEmpty!2979)) mapNonEmpty!2979))

(assert (= (and mapNonEmpty!2979 ((_ is ValueCellFull!867) mapValue!2979)) b!64184))

(assert (= (and mapNonEmpty!2969 ((_ is ValueCellFull!867) mapDefault!2979)) b!64185))

(declare-fun m!58439 () Bool)

(assert (=> mapNonEmpty!2979 m!58439))

(declare-fun mapIsEmpty!2980 () Bool)

(declare-fun mapRes!2980 () Bool)

(assert (=> mapIsEmpty!2980 mapRes!2980))

(declare-fun condMapEmpty!2980 () Bool)

(declare-fun mapDefault!2980 () ValueCell!867)

(assert (=> mapNonEmpty!2970 (= condMapEmpty!2980 (= mapRest!2969 ((as const (Array (_ BitVec 32) ValueCell!867)) mapDefault!2980)))))

(declare-fun e!42085 () Bool)

(assert (=> mapNonEmpty!2970 (= tp!8163 (and e!42085 mapRes!2980))))

(declare-fun mapNonEmpty!2980 () Bool)

(declare-fun tp!8182 () Bool)

(declare-fun e!42086 () Bool)

(assert (=> mapNonEmpty!2980 (= mapRes!2980 (and tp!8182 e!42086))))

(declare-fun mapValue!2980 () ValueCell!867)

(declare-fun mapKey!2980 () (_ BitVec 32))

(declare-fun mapRest!2980 () (Array (_ BitVec 32) ValueCell!867))

(assert (=> mapNonEmpty!2980 (= mapRest!2969 (store mapRest!2980 mapKey!2980 mapValue!2980))))

(declare-fun b!64186 () Bool)

(assert (=> b!64186 (= e!42086 tp_is_empty!2421)))

(declare-fun b!64187 () Bool)

(assert (=> b!64187 (= e!42085 tp_is_empty!2421)))

(assert (= (and mapNonEmpty!2970 condMapEmpty!2980) mapIsEmpty!2980))

(assert (= (and mapNonEmpty!2970 (not condMapEmpty!2980)) mapNonEmpty!2980))

(assert (= (and mapNonEmpty!2980 ((_ is ValueCellFull!867) mapValue!2980)) b!64186))

(assert (= (and mapNonEmpty!2970 ((_ is ValueCellFull!867) mapDefault!2980)) b!64187))

(declare-fun m!58441 () Bool)

(assert (=> mapNonEmpty!2980 m!58441))

(declare-fun b_lambda!2885 () Bool)

(assert (= b_lambda!2883 (or (and b!63859 b_free!2009) (and b!63854 b_free!2011 (= (defaultEntry!2109 newMap!16) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))))) b_lambda!2885)))

(check-sat (not b!64148) (not bm!5153) b_and!3927 (not bm!5129) (not b!64125) (not bm!5128) (not b!64123) (not mapNonEmpty!2980) (not b!64026) (not d!13293) (not bm!5113) (not d!13285) (not b!64174) (not d!13307) (not bm!5110) (not bm!5112) (not b!64128) (not d!13291) (not b!64173) (not b!64066) (not b!63932) (not b!64140) tp_is_empty!2421 (not b!64053) (not b_next!2011) (not bm!5120) (not b!63934) (not b!64054) (not b!64150) (not b!64065) (not b!64116) (not b!64156) (not bm!5124) (not b_lambda!2881) (not d!13309) (not b!64161) (not bm!5157) (not bm!5160) (not b!64050) (not bm!5111) (not b!64141) (not mapNonEmpty!2979) (not b_next!2009) (not d!13311) (not b!64110) (not b!64030) (not b!64038) (not bm!5150) (not b_lambda!2885) (not b!64109) (not bm!5127) (not bm!5118) (not b!64115) (not b!64149) b_and!3925 (not bm!5151) (not d!13315) (not bm!5117) (not bm!5148) (not bm!5132) (not d!13283) (not b!64176) (not b!64036) (not b!64127) (not d!13289))
(check-sat b_and!3925 b_and!3927 (not b_next!2009) (not b_next!2011))
(get-model)

(declare-fun d!13319 () Bool)

(declare-fun res!35001 () Bool)

(declare-fun e!42087 () Bool)

(assert (=> d!13319 (=> (not res!35001) (not e!42087))))

(assert (=> d!13319 (= res!35001 (simpleValid!44 (_2!1048 lt!27015)))))

(assert (=> d!13319 (= (valid!266 (_2!1048 lt!27015)) e!42087)))

(declare-fun b!64188 () Bool)

(declare-fun res!35002 () Bool)

(assert (=> b!64188 (=> (not res!35002) (not e!42087))))

(assert (=> b!64188 (= res!35002 (= (arrayCountValidKeys!0 (_keys!3745 (_2!1048 lt!27015)) #b00000000000000000000000000000000 (size!2037 (_keys!3745 (_2!1048 lt!27015)))) (_size!370 (_2!1048 lt!27015))))))

(declare-fun b!64189 () Bool)

(declare-fun res!35003 () Bool)

(assert (=> b!64189 (=> (not res!35003) (not e!42087))))

(assert (=> b!64189 (= res!35003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3745 (_2!1048 lt!27015)) (mask!6025 (_2!1048 lt!27015))))))

(declare-fun b!64190 () Bool)

(assert (=> b!64190 (= e!42087 (arrayNoDuplicates!0 (_keys!3745 (_2!1048 lt!27015)) #b00000000000000000000000000000000 Nil!1467))))

(assert (= (and d!13319 res!35001) b!64188))

(assert (= (and b!64188 res!35002) b!64189))

(assert (= (and b!64189 res!35003) b!64190))

(declare-fun m!58443 () Bool)

(assert (=> d!13319 m!58443))

(declare-fun m!58445 () Bool)

(assert (=> b!64188 m!58445))

(declare-fun m!58447 () Bool)

(assert (=> b!64189 m!58447))

(declare-fun m!58449 () Bool)

(assert (=> b!64190 m!58449))

(assert (=> d!13285 d!13319))

(assert (=> d!13285 d!13307))

(declare-fun d!13321 () Bool)

(declare-fun e!42090 () Bool)

(assert (=> d!13321 e!42090))

(declare-fun res!35009 () Bool)

(assert (=> d!13321 (=> (not res!35009) (not e!42090))))

(declare-fun lt!27112 () ListLongMap!1395)

(assert (=> d!13321 (= res!35009 (contains!704 lt!27112 (_1!1049 (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))))))

(declare-fun lt!27113 () List!1469)

(assert (=> d!13321 (= lt!27112 (ListLongMap!1396 lt!27113))))

(declare-fun lt!27115 () Unit!1755)

(declare-fun lt!27114 () Unit!1755)

(assert (=> d!13321 (= lt!27115 lt!27114)))

(assert (=> d!13321 (= (getValueByKey!126 lt!27113 (_1!1049 (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))) (Some!131 (_2!1049 (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!45 (List!1469 (_ BitVec 64) V!2875) Unit!1755)

(assert (=> d!13321 (= lt!27114 (lemmaContainsTupThenGetReturnValue!45 lt!27113 (_1!1049 (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))) (_2!1049 (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))))))

(declare-fun insertStrictlySorted!47 (List!1469 (_ BitVec 64) V!2875) List!1469)

(assert (=> d!13321 (= lt!27113 (insertStrictlySorted!47 (toList!713 (ite c!8746 call!5152 (ite c!8741 call!5154 call!5153))) (_1!1049 (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))) (_2!1049 (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))))))

(assert (=> d!13321 (= (+!84 (ite c!8746 call!5152 (ite c!8741 call!5154 call!5153)) (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))) lt!27112)))

(declare-fun b!64195 () Bool)

(declare-fun res!35008 () Bool)

(assert (=> b!64195 (=> (not res!35008) (not e!42090))))

(assert (=> b!64195 (= res!35008 (= (getValueByKey!126 (toList!713 lt!27112) (_1!1049 (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))) (Some!131 (_2!1049 (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))))

(declare-fun b!64196 () Bool)

(declare-fun contains!706 (List!1469 tuple2!2078) Bool)

(assert (=> b!64196 (= e!42090 (contains!706 (toList!713 lt!27112) (ite (or c!8746 c!8741) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (= (and d!13321 res!35009) b!64195))

(assert (= (and b!64195 res!35008) b!64196))

(declare-fun m!58451 () Bool)

(assert (=> d!13321 m!58451))

(declare-fun m!58453 () Bool)

(assert (=> d!13321 m!58453))

(declare-fun m!58455 () Bool)

(assert (=> d!13321 m!58455))

(declare-fun m!58457 () Bool)

(assert (=> d!13321 m!58457))

(declare-fun m!58459 () Bool)

(assert (=> b!64195 m!58459))

(declare-fun m!58461 () Bool)

(assert (=> b!64196 m!58461))

(assert (=> bm!5148 d!13321))

(declare-fun d!13323 () Bool)

(declare-fun e!42091 () Bool)

(assert (=> d!13323 e!42091))

(declare-fun res!35010 () Bool)

(assert (=> d!13323 (=> res!35010 e!42091)))

(declare-fun lt!27118 () Bool)

(assert (=> d!13323 (= res!35010 (not lt!27118))))

(declare-fun lt!27116 () Bool)

(assert (=> d!13323 (= lt!27118 lt!27116)))

(declare-fun lt!27117 () Unit!1755)

(declare-fun e!42092 () Unit!1755)

(assert (=> d!13323 (= lt!27117 e!42092)))

(declare-fun c!8756 () Bool)

(assert (=> d!13323 (= c!8756 lt!27116)))

(assert (=> d!13323 (= lt!27116 (containsKey!130 (toList!713 lt!27079) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!13323 (= (contains!704 lt!27079 #b0000000000000000000000000000000000000000000000000000000000000000) lt!27118)))

(declare-fun b!64197 () Bool)

(declare-fun lt!27119 () Unit!1755)

(assert (=> b!64197 (= e!42092 lt!27119)))

(assert (=> b!64197 (= lt!27119 (lemmaContainsKeyImpliesGetValueByKeyDefined!79 (toList!713 lt!27079) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!64197 (isDefined!80 (getValueByKey!126 (toList!713 lt!27079) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64198 () Bool)

(declare-fun Unit!1767 () Unit!1755)

(assert (=> b!64198 (= e!42092 Unit!1767)))

(declare-fun b!64199 () Bool)

(assert (=> b!64199 (= e!42091 (isDefined!80 (getValueByKey!126 (toList!713 lt!27079) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!13323 c!8756) b!64197))

(assert (= (and d!13323 (not c!8756)) b!64198))

(assert (= (and d!13323 (not res!35010)) b!64199))

(declare-fun m!58463 () Bool)

(assert (=> d!13323 m!58463))

(declare-fun m!58465 () Bool)

(assert (=> b!64197 m!58465))

(declare-fun m!58467 () Bool)

(assert (=> b!64197 m!58467))

(assert (=> b!64197 m!58467))

(declare-fun m!58469 () Bool)

(assert (=> b!64197 m!58469))

(assert (=> b!64199 m!58467))

(assert (=> b!64199 m!58467))

(assert (=> b!64199 m!58469))

(assert (=> bm!5150 d!13323))

(declare-fun d!13325 () Bool)

(assert (=> d!13325 (= (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) (and (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!64173 d!13325))

(declare-fun d!13327 () Bool)

(declare-fun get!1106 (Option!132) V!2875)

(assert (=> d!13327 (= (apply!69 lt!27079 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1106 (getValueByKey!126 (toList!713 lt!27079) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!2784 () Bool)

(assert (= bs!2784 d!13327))

(declare-fun m!58471 () Bool)

(assert (=> bs!2784 m!58471))

(assert (=> bs!2784 m!58471))

(declare-fun m!58473 () Bool)

(assert (=> bs!2784 m!58473))

(assert (=> b!64128 d!13327))

(declare-fun b!64200 () Bool)

(declare-fun e!42102 () Unit!1755)

(declare-fun lt!27120 () Unit!1755)

(assert (=> b!64200 (= e!42102 lt!27120)))

(declare-fun lt!27124 () ListLongMap!1395)

(assert (=> b!64200 (= lt!27124 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27125 () (_ BitVec 64))

(assert (=> b!64200 (= lt!27125 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27136 () (_ BitVec 64))

(assert (=> b!64200 (= lt!27136 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27141 () Unit!1755)

(assert (=> b!64200 (= lt!27141 (addStillContains!45 lt!27124 lt!27125 (zeroValue!2019 newMap!16) lt!27136))))

(assert (=> b!64200 (contains!704 (+!84 lt!27124 (tuple2!2079 lt!27125 (zeroValue!2019 newMap!16))) lt!27136)))

(declare-fun lt!27130 () Unit!1755)

(assert (=> b!64200 (= lt!27130 lt!27141)))

(declare-fun lt!27139 () ListLongMap!1395)

(assert (=> b!64200 (= lt!27139 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27123 () (_ BitVec 64))

(assert (=> b!64200 (= lt!27123 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27133 () (_ BitVec 64))

(assert (=> b!64200 (= lt!27133 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27138 () Unit!1755)

(assert (=> b!64200 (= lt!27138 (addApplyDifferent!45 lt!27139 lt!27123 (minValue!2019 newMap!16) lt!27133))))

(assert (=> b!64200 (= (apply!69 (+!84 lt!27139 (tuple2!2079 lt!27123 (minValue!2019 newMap!16))) lt!27133) (apply!69 lt!27139 lt!27133))))

(declare-fun lt!27134 () Unit!1755)

(assert (=> b!64200 (= lt!27134 lt!27138)))

(declare-fun lt!27140 () ListLongMap!1395)

(assert (=> b!64200 (= lt!27140 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27128 () (_ BitVec 64))

(assert (=> b!64200 (= lt!27128 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27121 () (_ BitVec 64))

(assert (=> b!64200 (= lt!27121 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27122 () Unit!1755)

(assert (=> b!64200 (= lt!27122 (addApplyDifferent!45 lt!27140 lt!27128 (zeroValue!2019 newMap!16) lt!27121))))

(assert (=> b!64200 (= (apply!69 (+!84 lt!27140 (tuple2!2079 lt!27128 (zeroValue!2019 newMap!16))) lt!27121) (apply!69 lt!27140 lt!27121))))

(declare-fun lt!27129 () Unit!1755)

(assert (=> b!64200 (= lt!27129 lt!27122)))

(declare-fun lt!27131 () ListLongMap!1395)

(assert (=> b!64200 (= lt!27131 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27137 () (_ BitVec 64))

(assert (=> b!64200 (= lt!27137 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27132 () (_ BitVec 64))

(assert (=> b!64200 (= lt!27132 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!64200 (= lt!27120 (addApplyDifferent!45 lt!27131 lt!27137 (minValue!2019 newMap!16) lt!27132))))

(assert (=> b!64200 (= (apply!69 (+!84 lt!27131 (tuple2!2079 lt!27137 (minValue!2019 newMap!16))) lt!27132) (apply!69 lt!27131 lt!27132))))

(declare-fun call!5165 () ListLongMap!1395)

(declare-fun bm!5161 () Bool)

(declare-fun call!5164 () ListLongMap!1395)

(declare-fun call!5167 () ListLongMap!1395)

(declare-fun call!5166 () ListLongMap!1395)

(declare-fun c!8762 () Bool)

(declare-fun c!8757 () Bool)

(assert (=> bm!5161 (= call!5164 (+!84 (ite c!8762 call!5165 (ite c!8757 call!5167 call!5166)) (ite (or c!8762 c!8757) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 newMap!16)) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 newMap!16)))))))

(declare-fun bm!5162 () Bool)

(declare-fun call!5168 () ListLongMap!1395)

(assert (=> bm!5162 (= call!5168 call!5164)))

(declare-fun bm!5163 () Bool)

(declare-fun call!5169 () Bool)

(declare-fun lt!27135 () ListLongMap!1395)

(assert (=> bm!5163 (= call!5169 (contains!704 lt!27135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64201 () Bool)

(declare-fun e!42100 () Bool)

(assert (=> b!64201 (= e!42100 (validKeyInArray!0 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!64202 () Bool)

(declare-fun e!42097 () Bool)

(assert (=> b!64202 (= e!42097 (not call!5169))))

(declare-fun b!64203 () Bool)

(declare-fun e!42098 () ListLongMap!1395)

(assert (=> b!64203 (= e!42098 call!5168)))

(declare-fun b!64204 () Bool)

(declare-fun Unit!1768 () Unit!1755)

(assert (=> b!64204 (= e!42102 Unit!1768)))

(declare-fun b!64205 () Bool)

(assert (=> b!64205 (= e!42098 call!5166)))

(declare-fun b!64206 () Bool)

(declare-fun e!42101 () Bool)

(assert (=> b!64206 (= e!42101 (validKeyInArray!0 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!64207 () Bool)

(declare-fun e!42099 () Bool)

(assert (=> b!64207 (= e!42099 (= (apply!69 lt!27135 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)) (get!1103 (select (arr!1805 (_values!2092 newMap!16)) #b00000000000000000000000000000000) (dynLambda!318 (defaultEntry!2109 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!64207 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2038 (_values!2092 newMap!16))))))

(assert (=> b!64207 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(declare-fun b!64208 () Bool)

(declare-fun res!35016 () Bool)

(declare-fun e!42096 () Bool)

(assert (=> b!64208 (=> (not res!35016) (not e!42096))))

(declare-fun e!42105 () Bool)

(assert (=> b!64208 (= res!35016 e!42105)))

(declare-fun res!35013 () Bool)

(assert (=> b!64208 (=> res!35013 e!42105)))

(assert (=> b!64208 (= res!35013 (not e!42100))))

(declare-fun res!35017 () Bool)

(assert (=> b!64208 (=> (not res!35017) (not e!42100))))

(assert (=> b!64208 (= res!35017 (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(declare-fun bm!5165 () Bool)

(assert (=> bm!5165 (= call!5167 call!5165)))

(declare-fun b!64209 () Bool)

(declare-fun e!42103 () ListLongMap!1395)

(declare-fun e!42093 () ListLongMap!1395)

(assert (=> b!64209 (= e!42103 e!42093)))

(assert (=> b!64209 (= c!8757 (and (not (= (bvand (extraKeys!1984 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1984 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!64210 () Bool)

(declare-fun e!42094 () Bool)

(assert (=> b!64210 (= e!42096 e!42094)))

(declare-fun c!8759 () Bool)

(assert (=> b!64210 (= c!8759 (not (= (bvand (extraKeys!1984 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!64211 () Bool)

(declare-fun e!42095 () Bool)

(assert (=> b!64211 (= e!42094 e!42095)))

(declare-fun res!35019 () Bool)

(declare-fun call!5170 () Bool)

(assert (=> b!64211 (= res!35019 call!5170)))

(assert (=> b!64211 (=> (not res!35019) (not e!42095))))

(declare-fun bm!5166 () Bool)

(assert (=> bm!5166 (= call!5165 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun bm!5164 () Bool)

(assert (=> bm!5164 (= call!5170 (contains!704 lt!27135 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!13329 () Bool)

(assert (=> d!13329 e!42096))

(declare-fun res!35018 () Bool)

(assert (=> d!13329 (=> (not res!35018) (not e!42096))))

(assert (=> d!13329 (= res!35018 (or (bvsge #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))))

(declare-fun lt!27126 () ListLongMap!1395)

(assert (=> d!13329 (= lt!27135 lt!27126)))

(declare-fun lt!27127 () Unit!1755)

(assert (=> d!13329 (= lt!27127 e!42102)))

(declare-fun c!8760 () Bool)

(assert (=> d!13329 (= c!8760 e!42101)))

(declare-fun res!35011 () Bool)

(assert (=> d!13329 (=> (not res!35011) (not e!42101))))

(assert (=> d!13329 (= res!35011 (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(assert (=> d!13329 (= lt!27126 e!42103)))

(assert (=> d!13329 (= c!8762 (and (not (= (bvand (extraKeys!1984 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1984 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!13329 (validMask!0 (mask!6025 newMap!16))))

(assert (=> d!13329 (= (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) lt!27135)))

(declare-fun b!64212 () Bool)

(assert (=> b!64212 (= e!42093 call!5168)))

(declare-fun bm!5167 () Bool)

(assert (=> bm!5167 (= call!5166 call!5167)))

(declare-fun b!64213 () Bool)

(declare-fun c!8758 () Bool)

(assert (=> b!64213 (= c!8758 (and (not (= (bvand (extraKeys!1984 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1984 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!64213 (= e!42093 e!42098)))

(declare-fun b!64214 () Bool)

(declare-fun e!42104 () Bool)

(assert (=> b!64214 (= e!42104 (= (apply!69 lt!27135 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2019 newMap!16)))))

(declare-fun b!64215 () Bool)

(assert (=> b!64215 (= e!42094 (not call!5170))))

(declare-fun b!64216 () Bool)

(assert (=> b!64216 (= e!42105 e!42099)))

(declare-fun res!35015 () Bool)

(assert (=> b!64216 (=> (not res!35015) (not e!42099))))

(assert (=> b!64216 (= res!35015 (contains!704 lt!27135 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!64216 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(declare-fun b!64217 () Bool)

(declare-fun res!35012 () Bool)

(assert (=> b!64217 (=> (not res!35012) (not e!42096))))

(assert (=> b!64217 (= res!35012 e!42097)))

(declare-fun c!8761 () Bool)

(assert (=> b!64217 (= c!8761 (not (= (bvand (extraKeys!1984 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!64218 () Bool)

(assert (=> b!64218 (= e!42103 (+!84 call!5164 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 newMap!16))))))

(declare-fun b!64219 () Bool)

(assert (=> b!64219 (= e!42095 (= (apply!69 lt!27135 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2019 newMap!16)))))

(declare-fun b!64220 () Bool)

(assert (=> b!64220 (= e!42097 e!42104)))

(declare-fun res!35014 () Bool)

(assert (=> b!64220 (= res!35014 call!5169)))

(assert (=> b!64220 (=> (not res!35014) (not e!42104))))

(assert (= (and d!13329 c!8762) b!64218))

(assert (= (and d!13329 (not c!8762)) b!64209))

(assert (= (and b!64209 c!8757) b!64212))

(assert (= (and b!64209 (not c!8757)) b!64213))

(assert (= (and b!64213 c!8758) b!64203))

(assert (= (and b!64213 (not c!8758)) b!64205))

(assert (= (or b!64203 b!64205) bm!5167))

(assert (= (or b!64212 bm!5167) bm!5165))

(assert (= (or b!64212 b!64203) bm!5162))

(assert (= (or b!64218 bm!5165) bm!5166))

(assert (= (or b!64218 bm!5162) bm!5161))

(assert (= (and d!13329 res!35011) b!64206))

(assert (= (and d!13329 c!8760) b!64200))

(assert (= (and d!13329 (not c!8760)) b!64204))

(assert (= (and d!13329 res!35018) b!64208))

(assert (= (and b!64208 res!35017) b!64201))

(assert (= (and b!64208 (not res!35013)) b!64216))

(assert (= (and b!64216 res!35015) b!64207))

(assert (= (and b!64208 res!35016) b!64217))

(assert (= (and b!64217 c!8761) b!64220))

(assert (= (and b!64217 (not c!8761)) b!64202))

(assert (= (and b!64220 res!35014) b!64214))

(assert (= (or b!64220 b!64202) bm!5163))

(assert (= (and b!64217 res!35012) b!64210))

(assert (= (and b!64210 c!8759) b!64211))

(assert (= (and b!64210 (not c!8759)) b!64215))

(assert (= (and b!64211 res!35019) b!64219))

(assert (= (or b!64211 b!64215) bm!5164))

(declare-fun b_lambda!2887 () Bool)

(assert (=> (not b_lambda!2887) (not b!64207)))

(declare-fun tb!1401 () Bool)

(declare-fun t!4896 () Bool)

(assert (=> (and b!63859 (= (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) (defaultEntry!2109 newMap!16)) t!4896) tb!1401))

(declare-fun result!2491 () Bool)

(assert (=> tb!1401 (= result!2491 tp_is_empty!2421)))

(assert (=> b!64207 t!4896))

(declare-fun b_and!3929 () Bool)

(assert (= b_and!3925 (and (=> t!4896 result!2491) b_and!3929)))

(declare-fun t!4898 () Bool)

(declare-fun tb!1403 () Bool)

(assert (=> (and b!63854 (= (defaultEntry!2109 newMap!16) (defaultEntry!2109 newMap!16)) t!4898) tb!1403))

(declare-fun result!2493 () Bool)

(assert (= result!2493 result!2491))

(assert (=> b!64207 t!4898))

(declare-fun b_and!3931 () Bool)

(assert (= b_and!3927 (and (=> t!4898 result!2493) b_and!3931)))

(declare-fun m!58475 () Bool)

(assert (=> b!64214 m!58475))

(declare-fun m!58477 () Bool)

(assert (=> b!64218 m!58477))

(declare-fun m!58479 () Bool)

(assert (=> b!64200 m!58479))

(declare-fun m!58481 () Bool)

(assert (=> b!64200 m!58481))

(declare-fun m!58483 () Bool)

(assert (=> b!64200 m!58483))

(declare-fun m!58485 () Bool)

(assert (=> b!64200 m!58485))

(declare-fun m!58487 () Bool)

(assert (=> b!64200 m!58487))

(declare-fun m!58489 () Bool)

(assert (=> b!64200 m!58489))

(declare-fun m!58491 () Bool)

(assert (=> b!64200 m!58491))

(declare-fun m!58493 () Bool)

(assert (=> b!64200 m!58493))

(declare-fun m!58495 () Bool)

(assert (=> b!64200 m!58495))

(declare-fun m!58497 () Bool)

(assert (=> b!64200 m!58497))

(assert (=> b!64200 m!58489))

(declare-fun m!58499 () Bool)

(assert (=> b!64200 m!58499))

(declare-fun m!58501 () Bool)

(assert (=> b!64200 m!58501))

(declare-fun m!58503 () Bool)

(assert (=> b!64200 m!58503))

(declare-fun m!58505 () Bool)

(assert (=> b!64200 m!58505))

(declare-fun m!58507 () Bool)

(assert (=> b!64200 m!58507))

(assert (=> b!64200 m!58505))

(declare-fun m!58509 () Bool)

(assert (=> b!64200 m!58509))

(declare-fun m!58511 () Bool)

(assert (=> b!64200 m!58511))

(assert (=> b!64200 m!58479))

(assert (=> b!64200 m!58483))

(assert (=> b!64201 m!58497))

(assert (=> b!64201 m!58497))

(declare-fun m!58513 () Bool)

(assert (=> b!64201 m!58513))

(assert (=> b!64206 m!58497))

(assert (=> b!64206 m!58497))

(assert (=> b!64206 m!58513))

(declare-fun m!58515 () Bool)

(assert (=> b!64219 m!58515))

(assert (=> b!64216 m!58497))

(assert (=> b!64216 m!58497))

(declare-fun m!58517 () Bool)

(assert (=> b!64216 m!58517))

(declare-fun m!58519 () Bool)

(assert (=> bm!5161 m!58519))

(assert (=> b!64207 m!58497))

(declare-fun m!58521 () Bool)

(assert (=> b!64207 m!58521))

(declare-fun m!58523 () Bool)

(assert (=> b!64207 m!58523))

(declare-fun m!58525 () Bool)

(assert (=> b!64207 m!58525))

(declare-fun m!58527 () Bool)

(assert (=> b!64207 m!58527))

(assert (=> b!64207 m!58525))

(assert (=> b!64207 m!58497))

(assert (=> b!64207 m!58523))

(assert (=> bm!5166 m!58507))

(declare-fun m!58529 () Bool)

(assert (=> d!13329 m!58529))

(declare-fun m!58531 () Bool)

(assert (=> bm!5164 m!58531))

(declare-fun m!58533 () Bool)

(assert (=> bm!5163 m!58533))

(assert (=> b!64036 d!13329))

(assert (=> bm!5127 d!13289))

(declare-fun d!13331 () Bool)

(assert (=> d!13331 (= (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!64110 d!13331))

(declare-fun d!13333 () Bool)

(assert (=> d!13333 (= (get!1104 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!2434 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> b!64065 d!13333))

(declare-fun d!13335 () Bool)

(declare-fun res!35020 () Bool)

(declare-fun e!42106 () Bool)

(assert (=> d!13335 (=> (not res!35020) (not e!42106))))

(assert (=> d!13335 (= res!35020 (simpleValid!44 (v!2435 (underlying!237 thiss!992))))))

(assert (=> d!13335 (= (valid!266 (v!2435 (underlying!237 thiss!992))) e!42106)))

(declare-fun b!64221 () Bool)

(declare-fun res!35021 () Bool)

(assert (=> b!64221 (=> (not res!35021) (not e!42106))))

(assert (=> b!64221 (= res!35021 (= (arrayCountValidKeys!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000000 (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))) (_size!370 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun b!64222 () Bool)

(declare-fun res!35022 () Bool)

(assert (=> b!64222 (=> (not res!35022) (not e!42106))))

(assert (=> b!64222 (= res!35022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun b!64223 () Bool)

(assert (=> b!64223 (= e!42106 (arrayNoDuplicates!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000000 Nil!1467))))

(assert (= (and d!13335 res!35020) b!64221))

(assert (= (and b!64221 res!35021) b!64222))

(assert (= (and b!64222 res!35022) b!64223))

(declare-fun m!58535 () Bool)

(assert (=> d!13335 m!58535))

(declare-fun m!58537 () Bool)

(assert (=> b!64221 m!58537))

(assert (=> b!64222 m!58231))

(declare-fun m!58539 () Bool)

(assert (=> b!64223 m!58539))

(assert (=> d!13293 d!13335))

(declare-fun d!13337 () Bool)

(declare-fun e!42107 () Bool)

(assert (=> d!13337 e!42107))

(declare-fun res!35023 () Bool)

(assert (=> d!13337 (=> res!35023 e!42107)))

(declare-fun lt!27144 () Bool)

(assert (=> d!13337 (= res!35023 (not lt!27144))))

(declare-fun lt!27142 () Bool)

(assert (=> d!13337 (= lt!27144 lt!27142)))

(declare-fun lt!27143 () Unit!1755)

(declare-fun e!42108 () Unit!1755)

(assert (=> d!13337 (= lt!27143 e!42108)))

(declare-fun c!8763 () Bool)

(assert (=> d!13337 (= c!8763 lt!27142)))

(assert (=> d!13337 (= lt!27142 (containsKey!130 (toList!713 call!5135) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> d!13337 (= (contains!704 call!5135 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) lt!27144)))

(declare-fun b!64224 () Bool)

(declare-fun lt!27145 () Unit!1755)

(assert (=> b!64224 (= e!42108 lt!27145)))

(assert (=> b!64224 (= lt!27145 (lemmaContainsKeyImpliesGetValueByKeyDefined!79 (toList!713 call!5135) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> b!64224 (isDefined!80 (getValueByKey!126 (toList!713 call!5135) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun b!64225 () Bool)

(declare-fun Unit!1769 () Unit!1755)

(assert (=> b!64225 (= e!42108 Unit!1769)))

(declare-fun b!64226 () Bool)

(assert (=> b!64226 (= e!42107 (isDefined!80 (getValueByKey!126 (toList!713 call!5135) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355))))))

(assert (= (and d!13337 c!8763) b!64224))

(assert (= (and d!13337 (not c!8763)) b!64225))

(assert (= (and d!13337 (not res!35023)) b!64226))

(assert (=> d!13337 m!58191))

(declare-fun m!58541 () Bool)

(assert (=> d!13337 m!58541))

(assert (=> b!64224 m!58191))

(declare-fun m!58543 () Bool)

(assert (=> b!64224 m!58543))

(assert (=> b!64224 m!58191))

(declare-fun m!58545 () Bool)

(assert (=> b!64224 m!58545))

(assert (=> b!64224 m!58545))

(declare-fun m!58547 () Bool)

(assert (=> b!64224 m!58547))

(assert (=> b!64226 m!58191))

(assert (=> b!64226 m!58545))

(assert (=> b!64226 m!58545))

(assert (=> b!64226 m!58547))

(assert (=> b!64038 d!13337))

(declare-fun d!13339 () Bool)

(declare-fun lt!27152 () SeekEntryResult!240)

(assert (=> d!13339 (and (or ((_ is Undefined!240) lt!27152) (not ((_ is Found!240) lt!27152)) (and (bvsge (index!3087 lt!27152) #b00000000000000000000000000000000) (bvslt (index!3087 lt!27152) (size!2037 (_keys!3745 newMap!16))))) (or ((_ is Undefined!240) lt!27152) ((_ is Found!240) lt!27152) (not ((_ is MissingZero!240) lt!27152)) (and (bvsge (index!3086 lt!27152) #b00000000000000000000000000000000) (bvslt (index!3086 lt!27152) (size!2037 (_keys!3745 newMap!16))))) (or ((_ is Undefined!240) lt!27152) ((_ is Found!240) lt!27152) ((_ is MissingZero!240) lt!27152) (not ((_ is MissingVacant!240) lt!27152)) (and (bvsge (index!3089 lt!27152) #b00000000000000000000000000000000) (bvslt (index!3089 lt!27152) (size!2037 (_keys!3745 newMap!16))))) (or ((_ is Undefined!240) lt!27152) (ite ((_ is Found!240) lt!27152) (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!27152)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) (ite ((_ is MissingZero!240) lt!27152) (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3086 lt!27152)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!240) lt!27152) (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3089 lt!27152)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!42117 () SeekEntryResult!240)

(assert (=> d!13339 (= lt!27152 e!42117)))

(declare-fun c!8772 () Bool)

(declare-fun lt!27154 () SeekEntryResult!240)

(assert (=> d!13339 (= c!8772 (and ((_ is Intermediate!240) lt!27154) (undefined!1052 lt!27154)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3774 (_ BitVec 32)) SeekEntryResult!240)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!13339 (= lt!27154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (mask!6025 newMap!16)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (_keys!3745 newMap!16) (mask!6025 newMap!16)))))

(assert (=> d!13339 (validMask!0 (mask!6025 newMap!16))))

(assert (=> d!13339 (= (seekEntryOrOpen!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (_keys!3745 newMap!16) (mask!6025 newMap!16)) lt!27152)))

(declare-fun b!64239 () Bool)

(assert (=> b!64239 (= e!42117 Undefined!240)))

(declare-fun b!64240 () Bool)

(declare-fun e!42115 () SeekEntryResult!240)

(assert (=> b!64240 (= e!42117 e!42115)))

(declare-fun lt!27153 () (_ BitVec 64))

(assert (=> b!64240 (= lt!27153 (select (arr!1804 (_keys!3745 newMap!16)) (index!3088 lt!27154)))))

(declare-fun c!8771 () Bool)

(assert (=> b!64240 (= c!8771 (= lt!27153 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun b!64241 () Bool)

(declare-fun e!42116 () SeekEntryResult!240)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3774 (_ BitVec 32)) SeekEntryResult!240)

(assert (=> b!64241 (= e!42116 (seekKeyOrZeroReturnVacant!0 (x!10462 lt!27154) (index!3088 lt!27154) (index!3088 lt!27154) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (_keys!3745 newMap!16) (mask!6025 newMap!16)))))

(declare-fun b!64242 () Bool)

(assert (=> b!64242 (= e!42115 (Found!240 (index!3088 lt!27154)))))

(declare-fun b!64243 () Bool)

(declare-fun c!8770 () Bool)

(assert (=> b!64243 (= c!8770 (= lt!27153 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!64243 (= e!42115 e!42116)))

(declare-fun b!64244 () Bool)

(assert (=> b!64244 (= e!42116 (MissingZero!240 (index!3088 lt!27154)))))

(assert (= (and d!13339 c!8772) b!64239))

(assert (= (and d!13339 (not c!8772)) b!64240))

(assert (= (and b!64240 c!8771) b!64242))

(assert (= (and b!64240 (not c!8771)) b!64243))

(assert (= (and b!64243 c!8770) b!64244))

(assert (= (and b!64243 (not c!8770)) b!64241))

(declare-fun m!58549 () Bool)

(assert (=> d!13339 m!58549))

(declare-fun m!58551 () Bool)

(assert (=> d!13339 m!58551))

(declare-fun m!58553 () Bool)

(assert (=> d!13339 m!58553))

(assert (=> d!13339 m!58529))

(declare-fun m!58555 () Bool)

(assert (=> d!13339 m!58555))

(assert (=> d!13339 m!58191))

(declare-fun m!58557 () Bool)

(assert (=> d!13339 m!58557))

(assert (=> d!13339 m!58191))

(assert (=> d!13339 m!58555))

(declare-fun m!58559 () Bool)

(assert (=> b!64240 m!58559))

(assert (=> b!64241 m!58191))

(declare-fun m!58561 () Bool)

(assert (=> b!64241 m!58561))

(assert (=> bm!5128 d!13339))

(declare-fun b!64245 () Bool)

(declare-fun e!42120 () Bool)

(declare-fun e!42119 () Bool)

(assert (=> b!64245 (= e!42120 e!42119)))

(declare-fun c!8773 () Bool)

(assert (=> b!64245 (= c!8773 (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun e!42118 () Bool)

(declare-fun b!64246 () Bool)

(assert (=> b!64246 (= e!42118 (contains!705 (ite c!8755 (Cons!1466 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) Nil!1467) Nil!1467) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!64248 () Bool)

(declare-fun e!42121 () Bool)

(assert (=> b!64248 (= e!42121 e!42120)))

(declare-fun res!35026 () Bool)

(assert (=> b!64248 (=> (not res!35026) (not e!42120))))

(assert (=> b!64248 (= res!35026 (not e!42118))))

(declare-fun res!35025 () Bool)

(assert (=> b!64248 (=> (not res!35025) (not e!42118))))

(assert (=> b!64248 (= res!35025 (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun call!5171 () Bool)

(declare-fun bm!5168 () Bool)

(assert (=> bm!5168 (= call!5171 (arrayNoDuplicates!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!8773 (Cons!1466 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!8755 (Cons!1466 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) Nil!1467) Nil!1467)) (ite c!8755 (Cons!1466 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) Nil!1467) Nil!1467))))))

(declare-fun b!64249 () Bool)

(assert (=> b!64249 (= e!42119 call!5171)))

(declare-fun b!64247 () Bool)

(assert (=> b!64247 (= e!42119 call!5171)))

(declare-fun d!13341 () Bool)

(declare-fun res!35024 () Bool)

(assert (=> d!13341 (=> res!35024 e!42121)))

(assert (=> d!13341 (= res!35024 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(assert (=> d!13341 (= (arrayNoDuplicates!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!8755 (Cons!1466 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) Nil!1467) Nil!1467)) e!42121)))

(assert (= (and d!13341 (not res!35024)) b!64248))

(assert (= (and b!64248 res!35025) b!64246))

(assert (= (and b!64248 res!35026) b!64245))

(assert (= (and b!64245 c!8773) b!64249))

(assert (= (and b!64245 (not c!8773)) b!64247))

(assert (= (or b!64249 b!64247) bm!5168))

(declare-fun m!58563 () Bool)

(assert (=> b!64245 m!58563))

(assert (=> b!64245 m!58563))

(declare-fun m!58565 () Bool)

(assert (=> b!64245 m!58565))

(assert (=> b!64246 m!58563))

(assert (=> b!64246 m!58563))

(declare-fun m!58567 () Bool)

(assert (=> b!64246 m!58567))

(assert (=> b!64248 m!58563))

(assert (=> b!64248 m!58563))

(assert (=> b!64248 m!58565))

(assert (=> bm!5168 m!58563))

(declare-fun m!58569 () Bool)

(assert (=> bm!5168 m!58569))

(assert (=> bm!5160 d!13341))

(assert (=> b!64026 d!13339))

(declare-fun d!13343 () Bool)

(assert (=> d!13343 (isDefined!80 (getValueByKey!126 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun lt!27157 () Unit!1755)

(declare-fun choose!352 (List!1469 (_ BitVec 64)) Unit!1755)

(assert (=> d!13343 (= lt!27157 (choose!352 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun e!42124 () Bool)

(assert (=> d!13343 e!42124))

(declare-fun res!35029 () Bool)

(assert (=> d!13343 (=> (not res!35029) (not e!42124))))

(declare-fun isStrictlySorted!282 (List!1469) Bool)

(assert (=> d!13343 (= res!35029 (isStrictlySorted!282 (toList!713 lt!26901)))))

(assert (=> d!13343 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!79 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) lt!27157)))

(declare-fun b!64252 () Bool)

(assert (=> b!64252 (= e!42124 (containsKey!130 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (= (and d!13343 res!35029) b!64252))

(assert (=> d!13343 m!58191))

(assert (=> d!13343 m!58283))

(assert (=> d!13343 m!58283))

(assert (=> d!13343 m!58285))

(assert (=> d!13343 m!58191))

(declare-fun m!58571 () Bool)

(assert (=> d!13343 m!58571))

(declare-fun m!58573 () Bool)

(assert (=> d!13343 m!58573))

(assert (=> b!64252 m!58191))

(assert (=> b!64252 m!58279))

(assert (=> b!63932 d!13343))

(declare-fun d!13345 () Bool)

(declare-fun isEmpty!307 (Option!132) Bool)

(assert (=> d!13345 (= (isDefined!80 (getValueByKey!126 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355))) (not (isEmpty!307 (getValueByKey!126 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))))

(declare-fun bs!2785 () Bool)

(assert (= bs!2785 d!13345))

(assert (=> bs!2785 m!58283))

(declare-fun m!58575 () Bool)

(assert (=> bs!2785 m!58575))

(assert (=> b!63932 d!13345))

(declare-fun d!13347 () Bool)

(declare-fun c!8778 () Bool)

(assert (=> d!13347 (= c!8778 (and ((_ is Cons!1465) (toList!713 lt!26901)) (= (_1!1049 (h!2049 (toList!713 lt!26901))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355))))))

(declare-fun e!42129 () Option!132)

(assert (=> d!13347 (= (getValueByKey!126 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) e!42129)))

(declare-fun b!64261 () Bool)

(assert (=> b!64261 (= e!42129 (Some!131 (_2!1049 (h!2049 (toList!713 lt!26901)))))))

(declare-fun b!64264 () Bool)

(declare-fun e!42130 () Option!132)

(assert (=> b!64264 (= e!42130 None!130)))

(declare-fun b!64262 () Bool)

(assert (=> b!64262 (= e!42129 e!42130)))

(declare-fun c!8779 () Bool)

(assert (=> b!64262 (= c!8779 (and ((_ is Cons!1465) (toList!713 lt!26901)) (not (= (_1!1049 (h!2049 (toList!713 lt!26901))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))))

(declare-fun b!64263 () Bool)

(assert (=> b!64263 (= e!42130 (getValueByKey!126 (t!4887 (toList!713 lt!26901)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (= (and d!13347 c!8778) b!64261))

(assert (= (and d!13347 (not c!8778)) b!64262))

(assert (= (and b!64262 c!8779) b!64263))

(assert (= (and b!64262 (not c!8779)) b!64264))

(assert (=> b!64263 m!58191))

(declare-fun m!58577 () Bool)

(assert (=> b!64263 m!58577))

(assert (=> b!63932 d!13347))

(declare-fun b!64273 () Bool)

(declare-fun res!35038 () Bool)

(declare-fun e!42133 () Bool)

(assert (=> b!64273 (=> (not res!35038) (not e!42133))))

(assert (=> b!64273 (= res!35038 (and (= (size!2038 (_values!2092 newMap!16)) (bvadd (mask!6025 newMap!16) #b00000000000000000000000000000001)) (= (size!2037 (_keys!3745 newMap!16)) (size!2038 (_values!2092 newMap!16))) (bvsge (_size!370 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!370 newMap!16) (bvadd (mask!6025 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!64276 () Bool)

(assert (=> b!64276 (= e!42133 (and (bvsge (extraKeys!1984 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!1984 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!370 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun d!13349 () Bool)

(declare-fun res!35040 () Bool)

(assert (=> d!13349 (=> (not res!35040) (not e!42133))))

(assert (=> d!13349 (= res!35040 (validMask!0 (mask!6025 newMap!16)))))

(assert (=> d!13349 (= (simpleValid!44 newMap!16) e!42133)))

(declare-fun b!64275 () Bool)

(declare-fun res!35039 () Bool)

(assert (=> b!64275 (=> (not res!35039) (not e!42133))))

(declare-fun size!2041 (LongMapFixedSize!642) (_ BitVec 32))

(assert (=> b!64275 (= res!35039 (= (size!2041 newMap!16) (bvadd (_size!370 newMap!16) (bvsdiv (bvadd (extraKeys!1984 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!64274 () Bool)

(declare-fun res!35041 () Bool)

(assert (=> b!64274 (=> (not res!35041) (not e!42133))))

(assert (=> b!64274 (= res!35041 (bvsge (size!2041 newMap!16) (_size!370 newMap!16)))))

(assert (= (and d!13349 res!35040) b!64273))

(assert (= (and b!64273 res!35038) b!64274))

(assert (= (and b!64274 res!35041) b!64275))

(assert (= (and b!64275 res!35039) b!64276))

(assert (=> d!13349 m!58529))

(declare-fun m!58579 () Bool)

(assert (=> b!64275 m!58579))

(assert (=> b!64274 m!58579))

(assert (=> d!13307 d!13349))

(assert (=> d!13289 d!13329))

(declare-fun d!13351 () Bool)

(declare-fun e!42136 () Bool)

(assert (=> d!13351 e!42136))

(declare-fun res!35046 () Bool)

(assert (=> d!13351 (=> (not res!35046) (not e!42136))))

(declare-fun lt!27163 () SeekEntryResult!240)

(assert (=> d!13351 (= res!35046 ((_ is Found!240) lt!27163))))

(assert (=> d!13351 (= lt!27163 (seekEntryOrOpen!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (_keys!3745 newMap!16) (mask!6025 newMap!16)))))

(declare-fun lt!27162 () Unit!1755)

(declare-fun choose!353 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 64) Int) Unit!1755)

(assert (=> d!13351 (= lt!27162 (choose!353 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (defaultEntry!2109 newMap!16)))))

(assert (=> d!13351 (validMask!0 (mask!6025 newMap!16))))

(assert (=> d!13351 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (defaultEntry!2109 newMap!16)) lt!27162)))

(declare-fun b!64281 () Bool)

(declare-fun res!35047 () Bool)

(assert (=> b!64281 (=> (not res!35047) (not e!42136))))

(assert (=> b!64281 (= res!35047 (inRange!0 (index!3087 lt!27163) (mask!6025 newMap!16)))))

(declare-fun b!64282 () Bool)

(assert (=> b!64282 (= e!42136 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!27163)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> b!64282 (and (bvsge (index!3087 lt!27163) #b00000000000000000000000000000000) (bvslt (index!3087 lt!27163) (size!2037 (_keys!3745 newMap!16))))))

(assert (= (and d!13351 res!35046) b!64281))

(assert (= (and b!64281 res!35047) b!64282))

(assert (=> d!13351 m!58191))

(assert (=> d!13351 m!58309))

(assert (=> d!13351 m!58191))

(declare-fun m!58581 () Bool)

(assert (=> d!13351 m!58581))

(assert (=> d!13351 m!58529))

(declare-fun m!58583 () Bool)

(assert (=> b!64281 m!58583))

(declare-fun m!58585 () Bool)

(assert (=> b!64282 m!58585))

(assert (=> bm!5132 d!13351))

(declare-fun b!64284 () Bool)

(declare-fun e!42137 () Bool)

(declare-fun call!5172 () Bool)

(assert (=> b!64284 (= e!42137 call!5172)))

(declare-fun bm!5169 () Bool)

(assert (=> bm!5169 (= call!5172 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3745 newMap!16) (mask!6025 newMap!16)))))

(declare-fun b!64285 () Bool)

(declare-fun e!42139 () Bool)

(assert (=> b!64285 (= e!42137 e!42139)))

(declare-fun lt!27164 () (_ BitVec 64))

(assert (=> b!64285 (= lt!27164 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27165 () Unit!1755)

(assert (=> b!64285 (= lt!27165 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3745 newMap!16) lt!27164 #b00000000000000000000000000000000))))

(assert (=> b!64285 (arrayContainsKey!0 (_keys!3745 newMap!16) lt!27164 #b00000000000000000000000000000000)))

(declare-fun lt!27166 () Unit!1755)

(assert (=> b!64285 (= lt!27166 lt!27165)))

(declare-fun res!35048 () Bool)

(assert (=> b!64285 (= res!35048 (= (seekEntryOrOpen!0 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000) (_keys!3745 newMap!16) (mask!6025 newMap!16)) (Found!240 #b00000000000000000000000000000000)))))

(assert (=> b!64285 (=> (not res!35048) (not e!42139))))

(declare-fun b!64286 () Bool)

(declare-fun e!42138 () Bool)

(assert (=> b!64286 (= e!42138 e!42137)))

(declare-fun c!8780 () Bool)

(assert (=> b!64286 (= c!8780 (validKeyInArray!0 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!64283 () Bool)

(assert (=> b!64283 (= e!42139 call!5172)))

(declare-fun d!13353 () Bool)

(declare-fun res!35049 () Bool)

(assert (=> d!13353 (=> res!35049 e!42138)))

(assert (=> d!13353 (= res!35049 (bvsge #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(assert (=> d!13353 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3745 newMap!16) (mask!6025 newMap!16)) e!42138)))

(assert (= (and d!13353 (not res!35049)) b!64286))

(assert (= (and b!64286 c!8780) b!64285))

(assert (= (and b!64286 (not c!8780)) b!64284))

(assert (= (and b!64285 res!35048) b!64283))

(assert (= (or b!64283 b!64284) bm!5169))

(declare-fun m!58587 () Bool)

(assert (=> bm!5169 m!58587))

(assert (=> b!64285 m!58497))

(declare-fun m!58589 () Bool)

(assert (=> b!64285 m!58589))

(declare-fun m!58591 () Bool)

(assert (=> b!64285 m!58591))

(assert (=> b!64285 m!58497))

(declare-fun m!58593 () Bool)

(assert (=> b!64285 m!58593))

(assert (=> b!64286 m!58497))

(assert (=> b!64286 m!58497))

(assert (=> b!64286 m!58513))

(assert (=> b!64149 d!13353))

(declare-fun d!13355 () Bool)

(declare-fun e!42142 () Bool)

(assert (=> d!13355 e!42142))

(declare-fun c!8783 () Bool)

(assert (=> d!13355 (= c!8783 (and (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!13355 true))

(declare-fun _$29!75 () Unit!1755)

(assert (=> d!13355 (= (choose!351 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))) _$29!75)))

(declare-fun b!64291 () Bool)

(assert (=> b!64291 (= e!42142 (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!64292 () Bool)

(assert (=> b!64292 (= e!42142 (ite (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!13355 c!8783) b!64291))

(assert (= (and d!13355 (not c!8783)) b!64292))

(assert (=> b!64291 m!58191))

(assert (=> b!64291 m!58195))

(assert (=> d!13315 d!13355))

(assert (=> d!13315 d!13295))

(assert (=> b!63934 d!13345))

(assert (=> b!63934 d!13347))

(declare-fun d!13357 () Bool)

(assert (=> d!13357 (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) lt!27092 #b00000000000000000000000000000000)))

(declare-fun lt!27169 () Unit!1755)

(declare-fun choose!13 (array!3774 (_ BitVec 64) (_ BitVec 32)) Unit!1755)

(assert (=> d!13357 (= lt!27169 (choose!13 (_keys!3745 (v!2435 (underlying!237 thiss!992))) lt!27092 #b00000000000000000000000000000000))))

(assert (=> d!13357 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!13357 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) lt!27092 #b00000000000000000000000000000000) lt!27169)))

(declare-fun bs!2786 () Bool)

(assert (= bs!2786 d!13357))

(assert (=> bs!2786 m!58411))

(declare-fun m!58595 () Bool)

(assert (=> bs!2786 m!58595))

(assert (=> b!64140 d!13357))

(declare-fun d!13359 () Bool)

(declare-fun res!35050 () Bool)

(declare-fun e!42143 () Bool)

(assert (=> d!13359 (=> res!35050 e!42143)))

(assert (=> d!13359 (= res!35050 (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000) lt!27092))))

(assert (=> d!13359 (= (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) lt!27092 #b00000000000000000000000000000000) e!42143)))

(declare-fun b!64293 () Bool)

(declare-fun e!42144 () Bool)

(assert (=> b!64293 (= e!42143 e!42144)))

(declare-fun res!35051 () Bool)

(assert (=> b!64293 (=> (not res!35051) (not e!42144))))

(assert (=> b!64293 (= res!35051 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun b!64294 () Bool)

(assert (=> b!64294 (= e!42144 (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) lt!27092 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!13359 (not res!35050)) b!64293))

(assert (= (and b!64293 res!35051) b!64294))

(assert (=> d!13359 m!58407))

(declare-fun m!58597 () Bool)

(assert (=> b!64294 m!58597))

(assert (=> b!64140 d!13359))

(declare-fun d!13361 () Bool)

(declare-fun lt!27170 () SeekEntryResult!240)

(assert (=> d!13361 (and (or ((_ is Undefined!240) lt!27170) (not ((_ is Found!240) lt!27170)) (and (bvsge (index!3087 lt!27170) #b00000000000000000000000000000000) (bvslt (index!3087 lt!27170) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))) (or ((_ is Undefined!240) lt!27170) ((_ is Found!240) lt!27170) (not ((_ is MissingZero!240) lt!27170)) (and (bvsge (index!3086 lt!27170) #b00000000000000000000000000000000) (bvslt (index!3086 lt!27170) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))) (or ((_ is Undefined!240) lt!27170) ((_ is Found!240) lt!27170) ((_ is MissingZero!240) lt!27170) (not ((_ is MissingVacant!240) lt!27170)) (and (bvsge (index!3089 lt!27170) #b00000000000000000000000000000000) (bvslt (index!3089 lt!27170) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))) (or ((_ is Undefined!240) lt!27170) (ite ((_ is Found!240) lt!27170) (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (index!3087 lt!27170)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!240) lt!27170) (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (index!3086 lt!27170)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!240) lt!27170) (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (index!3089 lt!27170)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!42147 () SeekEntryResult!240)

(assert (=> d!13361 (= lt!27170 e!42147)))

(declare-fun c!8786 () Bool)

(declare-fun lt!27172 () SeekEntryResult!240)

(assert (=> d!13361 (= c!8786 (and ((_ is Intermediate!240) lt!27172) (undefined!1052 lt!27172)))))

(assert (=> d!13361 (= lt!27172 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000) (mask!6025 (v!2435 (underlying!237 thiss!992)))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000) (_keys!3745 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992)))))))

(assert (=> d!13361 (validMask!0 (mask!6025 (v!2435 (underlying!237 thiss!992))))))

(assert (=> d!13361 (= (seekEntryOrOpen!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000) (_keys!3745 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992)))) lt!27170)))

(declare-fun b!64295 () Bool)

(assert (=> b!64295 (= e!42147 Undefined!240)))

(declare-fun b!64296 () Bool)

(declare-fun e!42145 () SeekEntryResult!240)

(assert (=> b!64296 (= e!42147 e!42145)))

(declare-fun lt!27171 () (_ BitVec 64))

(assert (=> b!64296 (= lt!27171 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (index!3088 lt!27172)))))

(declare-fun c!8785 () Bool)

(assert (=> b!64296 (= c!8785 (= lt!27171 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!64297 () Bool)

(declare-fun e!42146 () SeekEntryResult!240)

(assert (=> b!64297 (= e!42146 (seekKeyOrZeroReturnVacant!0 (x!10462 lt!27172) (index!3088 lt!27172) (index!3088 lt!27172) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000) (_keys!3745 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun b!64298 () Bool)

(assert (=> b!64298 (= e!42145 (Found!240 (index!3088 lt!27172)))))

(declare-fun b!64299 () Bool)

(declare-fun c!8784 () Bool)

(assert (=> b!64299 (= c!8784 (= lt!27171 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!64299 (= e!42145 e!42146)))

(declare-fun b!64300 () Bool)

(assert (=> b!64300 (= e!42146 (MissingZero!240 (index!3088 lt!27172)))))

(assert (= (and d!13361 c!8786) b!64295))

(assert (= (and d!13361 (not c!8786)) b!64296))

(assert (= (and b!64296 c!8785) b!64298))

(assert (= (and b!64296 (not c!8785)) b!64299))

(assert (= (and b!64299 c!8784) b!64300))

(assert (= (and b!64299 (not c!8784)) b!64297))

(declare-fun m!58599 () Bool)

(assert (=> d!13361 m!58599))

(declare-fun m!58601 () Bool)

(assert (=> d!13361 m!58601))

(declare-fun m!58603 () Bool)

(assert (=> d!13361 m!58603))

(assert (=> d!13361 m!58219))

(declare-fun m!58605 () Bool)

(assert (=> d!13361 m!58605))

(assert (=> d!13361 m!58407))

(declare-fun m!58607 () Bool)

(assert (=> d!13361 m!58607))

(assert (=> d!13361 m!58407))

(assert (=> d!13361 m!58605))

(declare-fun m!58609 () Bool)

(assert (=> b!64296 m!58609))

(assert (=> b!64297 m!58407))

(declare-fun m!58611 () Bool)

(assert (=> b!64297 m!58611))

(assert (=> b!64140 d!13361))

(declare-fun d!13363 () Bool)

(declare-fun res!35052 () Bool)

(declare-fun e!42148 () Bool)

(assert (=> d!13363 (=> res!35052 e!42148)))

(assert (=> d!13363 (= res!35052 (= (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> d!13363 (= (arrayContainsKey!0 (_keys!3745 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b00000000000000000000000000000000) e!42148)))

(declare-fun b!64301 () Bool)

(declare-fun e!42149 () Bool)

(assert (=> b!64301 (= e!42148 e!42149)))

(declare-fun res!35053 () Bool)

(assert (=> b!64301 (=> (not res!35053) (not e!42149))))

(assert (=> b!64301 (= res!35053 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2037 (_keys!3745 newMap!16))))))

(declare-fun b!64302 () Bool)

(assert (=> b!64302 (= e!42149 (arrayContainsKey!0 (_keys!3745 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!13363 (not res!35052)) b!64301))

(assert (= (and b!64301 res!35053) b!64302))

(assert (=> d!13363 m!58497))

(assert (=> b!64302 m!58191))

(declare-fun m!58613 () Bool)

(assert (=> b!64302 m!58613))

(assert (=> bm!5110 d!13363))

(assert (=> d!13311 d!13317))

(declare-fun d!13365 () Bool)

(assert (=> d!13365 (arrayNoDuplicates!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) from!355 Nil!1467)))

(assert (=> d!13365 true))

(declare-fun _$71!81 () Unit!1755)

(assert (=> d!13365 (= (choose!39 (_keys!3745 (v!2435 (underlying!237 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!81)))

(declare-fun bs!2787 () Bool)

(assert (= bs!2787 d!13365))

(assert (=> bs!2787 m!58189))

(assert (=> d!13311 d!13365))

(declare-fun d!13367 () Bool)

(declare-fun e!42150 () Bool)

(assert (=> d!13367 e!42150))

(declare-fun res!35055 () Bool)

(assert (=> d!13367 (=> (not res!35055) (not e!42150))))

(declare-fun lt!27173 () ListLongMap!1395)

(assert (=> d!13367 (= res!35055 (contains!704 lt!27173 (_1!1049 (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!27174 () List!1469)

(assert (=> d!13367 (= lt!27173 (ListLongMap!1396 lt!27174))))

(declare-fun lt!27176 () Unit!1755)

(declare-fun lt!27175 () Unit!1755)

(assert (=> d!13367 (= lt!27176 lt!27175)))

(assert (=> d!13367 (= (getValueByKey!126 lt!27174 (_1!1049 (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!131 (_2!1049 (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!13367 (= lt!27175 (lemmaContainsTupThenGetReturnValue!45 lt!27174 (_1!1049 (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1049 (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!13367 (= lt!27174 (insertStrictlySorted!47 (toList!713 e!41991) (_1!1049 (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1049 (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!13367 (= (+!84 e!41991 (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!27173)))

(declare-fun b!64303 () Bool)

(declare-fun res!35054 () Bool)

(assert (=> b!64303 (=> (not res!35054) (not e!42150))))

(assert (=> b!64303 (= res!35054 (= (getValueByKey!126 (toList!713 lt!27173) (_1!1049 (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!131 (_2!1049 (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!64304 () Bool)

(assert (=> b!64304 (= e!42150 (contains!706 (toList!713 lt!27173) (ite c!8722 (ite c!8721 (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!13367 res!35055) b!64303))

(assert (= (and b!64303 res!35054) b!64304))

(declare-fun m!58615 () Bool)

(assert (=> d!13367 m!58615))

(declare-fun m!58617 () Bool)

(assert (=> d!13367 m!58617))

(declare-fun m!58619 () Bool)

(assert (=> d!13367 m!58619))

(declare-fun m!58621 () Bool)

(assert (=> d!13367 m!58621))

(declare-fun m!58623 () Bool)

(assert (=> b!64303 m!58623))

(declare-fun m!58625 () Bool)

(assert (=> b!64304 m!58625))

(assert (=> bm!5120 d!13367))

(assert (=> d!13291 d!13295))

(assert (=> b!64161 d!13313))

(declare-fun b!64305 () Bool)

(declare-fun e!42160 () Unit!1755)

(declare-fun lt!27177 () Unit!1755)

(assert (=> b!64305 (= e!42160 lt!27177)))

(declare-fun lt!27181 () ListLongMap!1395)

(assert (=> b!64305 (= lt!27181 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (ite c!8722 (_values!2092 newMap!16) lt!27009) (mask!6025 newMap!16) (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) (zeroValue!2019 newMap!16) (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27182 () (_ BitVec 64))

(assert (=> b!64305 (= lt!27182 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27193 () (_ BitVec 64))

(assert (=> b!64305 (= lt!27193 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27198 () Unit!1755)

(assert (=> b!64305 (= lt!27198 (addStillContains!45 lt!27181 lt!27182 (zeroValue!2019 newMap!16) lt!27193))))

(assert (=> b!64305 (contains!704 (+!84 lt!27181 (tuple2!2079 lt!27182 (zeroValue!2019 newMap!16))) lt!27193)))

(declare-fun lt!27187 () Unit!1755)

(assert (=> b!64305 (= lt!27187 lt!27198)))

(declare-fun lt!27196 () ListLongMap!1395)

(assert (=> b!64305 (= lt!27196 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (ite c!8722 (_values!2092 newMap!16) lt!27009) (mask!6025 newMap!16) (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) (zeroValue!2019 newMap!16) (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27180 () (_ BitVec 64))

(assert (=> b!64305 (= lt!27180 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27190 () (_ BitVec 64))

(assert (=> b!64305 (= lt!27190 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27195 () Unit!1755)

(assert (=> b!64305 (= lt!27195 (addApplyDifferent!45 lt!27196 lt!27180 (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)) lt!27190))))

(assert (=> b!64305 (= (apply!69 (+!84 lt!27196 (tuple2!2079 lt!27180 (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)))) lt!27190) (apply!69 lt!27196 lt!27190))))

(declare-fun lt!27191 () Unit!1755)

(assert (=> b!64305 (= lt!27191 lt!27195)))

(declare-fun lt!27197 () ListLongMap!1395)

(assert (=> b!64305 (= lt!27197 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (ite c!8722 (_values!2092 newMap!16) lt!27009) (mask!6025 newMap!16) (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) (zeroValue!2019 newMap!16) (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27185 () (_ BitVec 64))

(assert (=> b!64305 (= lt!27185 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27178 () (_ BitVec 64))

(assert (=> b!64305 (= lt!27178 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27179 () Unit!1755)

(assert (=> b!64305 (= lt!27179 (addApplyDifferent!45 lt!27197 lt!27185 (zeroValue!2019 newMap!16) lt!27178))))

(assert (=> b!64305 (= (apply!69 (+!84 lt!27197 (tuple2!2079 lt!27185 (zeroValue!2019 newMap!16))) lt!27178) (apply!69 lt!27197 lt!27178))))

(declare-fun lt!27186 () Unit!1755)

(assert (=> b!64305 (= lt!27186 lt!27179)))

(declare-fun lt!27188 () ListLongMap!1395)

(assert (=> b!64305 (= lt!27188 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (ite c!8722 (_values!2092 newMap!16) lt!27009) (mask!6025 newMap!16) (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) (zeroValue!2019 newMap!16) (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27194 () (_ BitVec 64))

(assert (=> b!64305 (= lt!27194 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27189 () (_ BitVec 64))

(assert (=> b!64305 (= lt!27189 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!64305 (= lt!27177 (addApplyDifferent!45 lt!27188 lt!27194 (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)) lt!27189))))

(assert (=> b!64305 (= (apply!69 (+!84 lt!27188 (tuple2!2079 lt!27194 (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)))) lt!27189) (apply!69 lt!27188 lt!27189))))

(declare-fun c!8787 () Bool)

(declare-fun call!5176 () ListLongMap!1395)

(declare-fun call!5175 () ListLongMap!1395)

(declare-fun bm!5170 () Bool)

(declare-fun call!5173 () ListLongMap!1395)

(declare-fun c!8792 () Bool)

(declare-fun call!5174 () ListLongMap!1395)

(assert (=> bm!5170 (= call!5173 (+!84 (ite c!8792 call!5174 (ite c!8787 call!5176 call!5175)) (ite (or c!8792 c!8787) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2019 newMap!16)) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16))))))))

(declare-fun bm!5171 () Bool)

(declare-fun call!5177 () ListLongMap!1395)

(assert (=> bm!5171 (= call!5177 call!5173)))

(declare-fun bm!5172 () Bool)

(declare-fun call!5178 () Bool)

(declare-fun lt!27192 () ListLongMap!1395)

(assert (=> bm!5172 (= call!5178 (contains!704 lt!27192 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64306 () Bool)

(declare-fun e!42158 () Bool)

(assert (=> b!64306 (= e!42158 (validKeyInArray!0 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!64307 () Bool)

(declare-fun e!42155 () Bool)

(assert (=> b!64307 (= e!42155 (not call!5178))))

(declare-fun b!64308 () Bool)

(declare-fun e!42156 () ListLongMap!1395)

(assert (=> b!64308 (= e!42156 call!5177)))

(declare-fun b!64309 () Bool)

(declare-fun Unit!1770 () Unit!1755)

(assert (=> b!64309 (= e!42160 Unit!1770)))

(declare-fun b!64310 () Bool)

(assert (=> b!64310 (= e!42156 call!5175)))

(declare-fun b!64311 () Bool)

(declare-fun e!42159 () Bool)

(assert (=> b!64311 (= e!42159 (validKeyInArray!0 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!64312 () Bool)

(declare-fun e!42157 () Bool)

(assert (=> b!64312 (= e!42157 (= (apply!69 lt!27192 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)) (get!1103 (select (arr!1805 (ite c!8722 (_values!2092 newMap!16) lt!27009)) #b00000000000000000000000000000000) (dynLambda!318 (defaultEntry!2109 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!64312 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2038 (ite c!8722 (_values!2092 newMap!16) lt!27009))))))

(assert (=> b!64312 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(declare-fun b!64313 () Bool)

(declare-fun res!35061 () Bool)

(declare-fun e!42154 () Bool)

(assert (=> b!64313 (=> (not res!35061) (not e!42154))))

(declare-fun e!42163 () Bool)

(assert (=> b!64313 (= res!35061 e!42163)))

(declare-fun res!35058 () Bool)

(assert (=> b!64313 (=> res!35058 e!42163)))

(assert (=> b!64313 (= res!35058 (not e!42158))))

(declare-fun res!35062 () Bool)

(assert (=> b!64313 (=> (not res!35062) (not e!42158))))

(assert (=> b!64313 (= res!35062 (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(declare-fun bm!5174 () Bool)

(assert (=> bm!5174 (= call!5176 call!5174)))

(declare-fun b!64314 () Bool)

(declare-fun e!42161 () ListLongMap!1395)

(declare-fun e!42151 () ListLongMap!1395)

(assert (=> b!64314 (= e!42161 e!42151)))

(assert (=> b!64314 (= c!8787 (and (not (= (bvand (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!64315 () Bool)

(declare-fun e!42152 () Bool)

(assert (=> b!64315 (= e!42154 e!42152)))

(declare-fun c!8789 () Bool)

(assert (=> b!64315 (= c!8789 (not (= (bvand (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!64316 () Bool)

(declare-fun e!42153 () Bool)

(assert (=> b!64316 (= e!42152 e!42153)))

(declare-fun res!35064 () Bool)

(declare-fun call!5179 () Bool)

(assert (=> b!64316 (= res!35064 call!5179)))

(assert (=> b!64316 (=> (not res!35064) (not e!42153))))

(declare-fun bm!5175 () Bool)

(assert (=> bm!5175 (= call!5174 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (ite c!8722 (_values!2092 newMap!16) lt!27009) (mask!6025 newMap!16) (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) (zeroValue!2019 newMap!16) (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun bm!5173 () Bool)

(assert (=> bm!5173 (= call!5179 (contains!704 lt!27192 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!13369 () Bool)

(assert (=> d!13369 e!42154))

(declare-fun res!35063 () Bool)

(assert (=> d!13369 (=> (not res!35063) (not e!42154))))

(assert (=> d!13369 (= res!35063 (or (bvsge #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))))

(declare-fun lt!27183 () ListLongMap!1395)

(assert (=> d!13369 (= lt!27192 lt!27183)))

(declare-fun lt!27184 () Unit!1755)

(assert (=> d!13369 (= lt!27184 e!42160)))

(declare-fun c!8790 () Bool)

(assert (=> d!13369 (= c!8790 e!42159)))

(declare-fun res!35056 () Bool)

(assert (=> d!13369 (=> (not res!35056) (not e!42159))))

(assert (=> d!13369 (= res!35056 (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(assert (=> d!13369 (= lt!27183 e!42161)))

(assert (=> d!13369 (= c!8792 (and (not (= (bvand (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!13369 (validMask!0 (mask!6025 newMap!16))))

(assert (=> d!13369 (= (getCurrentListMap!409 (_keys!3745 newMap!16) (ite c!8722 (_values!2092 newMap!16) lt!27009) (mask!6025 newMap!16) (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) (zeroValue!2019 newMap!16) (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) lt!27192)))

(declare-fun b!64317 () Bool)

(assert (=> b!64317 (= e!42151 call!5177)))

(declare-fun bm!5176 () Bool)

(assert (=> bm!5176 (= call!5175 call!5176)))

(declare-fun c!8788 () Bool)

(declare-fun b!64318 () Bool)

(assert (=> b!64318 (= c!8788 (and (not (= (bvand (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!64318 (= e!42151 e!42156)))

(declare-fun b!64319 () Bool)

(declare-fun e!42162 () Bool)

(assert (=> b!64319 (= e!42162 (= (apply!69 lt!27192 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2019 newMap!16)))))

(declare-fun b!64320 () Bool)

(assert (=> b!64320 (= e!42152 (not call!5179))))

(declare-fun b!64321 () Bool)

(assert (=> b!64321 (= e!42163 e!42157)))

(declare-fun res!35060 () Bool)

(assert (=> b!64321 (=> (not res!35060) (not e!42157))))

(assert (=> b!64321 (= res!35060 (contains!704 lt!27192 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!64321 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(declare-fun b!64322 () Bool)

(declare-fun res!35057 () Bool)

(assert (=> b!64322 (=> (not res!35057) (not e!42154))))

(assert (=> b!64322 (= res!35057 e!42155)))

(declare-fun c!8791 () Bool)

(assert (=> b!64322 (= c!8791 (not (= (bvand (ite c!8722 (ite c!8721 (extraKeys!1984 newMap!16) lt!27018) (extraKeys!1984 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!64323 () Bool)

(assert (=> b!64323 (= e!42161 (+!84 call!5173 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16)))))))

(declare-fun b!64324 () Bool)

(assert (=> b!64324 (= e!42153 (= (apply!69 lt!27192 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!8722 (ite c!8721 (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2019 newMap!16))))))

(declare-fun b!64325 () Bool)

(assert (=> b!64325 (= e!42155 e!42162)))

(declare-fun res!35059 () Bool)

(assert (=> b!64325 (= res!35059 call!5178)))

(assert (=> b!64325 (=> (not res!35059) (not e!42162))))

(assert (= (and d!13369 c!8792) b!64323))

(assert (= (and d!13369 (not c!8792)) b!64314))

(assert (= (and b!64314 c!8787) b!64317))

(assert (= (and b!64314 (not c!8787)) b!64318))

(assert (= (and b!64318 c!8788) b!64308))

(assert (= (and b!64318 (not c!8788)) b!64310))

(assert (= (or b!64308 b!64310) bm!5176))

(assert (= (or b!64317 bm!5176) bm!5174))

(assert (= (or b!64317 b!64308) bm!5171))

(assert (= (or b!64323 bm!5174) bm!5175))

(assert (= (or b!64323 bm!5171) bm!5170))

(assert (= (and d!13369 res!35056) b!64311))

(assert (= (and d!13369 c!8790) b!64305))

(assert (= (and d!13369 (not c!8790)) b!64309))

(assert (= (and d!13369 res!35063) b!64313))

(assert (= (and b!64313 res!35062) b!64306))

(assert (= (and b!64313 (not res!35058)) b!64321))

(assert (= (and b!64321 res!35060) b!64312))

(assert (= (and b!64313 res!35061) b!64322))

(assert (= (and b!64322 c!8791) b!64325))

(assert (= (and b!64322 (not c!8791)) b!64307))

(assert (= (and b!64325 res!35059) b!64319))

(assert (= (or b!64325 b!64307) bm!5172))

(assert (= (and b!64322 res!35057) b!64315))

(assert (= (and b!64315 c!8789) b!64316))

(assert (= (and b!64315 (not c!8789)) b!64320))

(assert (= (and b!64316 res!35064) b!64324))

(assert (= (or b!64316 b!64320) bm!5173))

(declare-fun b_lambda!2889 () Bool)

(assert (=> (not b_lambda!2889) (not b!64312)))

(assert (=> b!64312 t!4896))

(declare-fun b_and!3933 () Bool)

(assert (= b_and!3929 (and (=> t!4896 result!2491) b_and!3933)))

(assert (=> b!64312 t!4898))

(declare-fun b_and!3935 () Bool)

(assert (= b_and!3931 (and (=> t!4898 result!2493) b_and!3935)))

(declare-fun m!58627 () Bool)

(assert (=> b!64319 m!58627))

(declare-fun m!58629 () Bool)

(assert (=> b!64323 m!58629))

(declare-fun m!58631 () Bool)

(assert (=> b!64305 m!58631))

(declare-fun m!58633 () Bool)

(assert (=> b!64305 m!58633))

(declare-fun m!58635 () Bool)

(assert (=> b!64305 m!58635))

(declare-fun m!58637 () Bool)

(assert (=> b!64305 m!58637))

(declare-fun m!58639 () Bool)

(assert (=> b!64305 m!58639))

(declare-fun m!58641 () Bool)

(assert (=> b!64305 m!58641))

(declare-fun m!58643 () Bool)

(assert (=> b!64305 m!58643))

(declare-fun m!58645 () Bool)

(assert (=> b!64305 m!58645))

(declare-fun m!58647 () Bool)

(assert (=> b!64305 m!58647))

(assert (=> b!64305 m!58497))

(assert (=> b!64305 m!58641))

(declare-fun m!58649 () Bool)

(assert (=> b!64305 m!58649))

(declare-fun m!58651 () Bool)

(assert (=> b!64305 m!58651))

(declare-fun m!58653 () Bool)

(assert (=> b!64305 m!58653))

(declare-fun m!58655 () Bool)

(assert (=> b!64305 m!58655))

(declare-fun m!58657 () Bool)

(assert (=> b!64305 m!58657))

(assert (=> b!64305 m!58655))

(declare-fun m!58659 () Bool)

(assert (=> b!64305 m!58659))

(declare-fun m!58661 () Bool)

(assert (=> b!64305 m!58661))

(assert (=> b!64305 m!58631))

(assert (=> b!64305 m!58635))

(assert (=> b!64306 m!58497))

(assert (=> b!64306 m!58497))

(assert (=> b!64306 m!58513))

(assert (=> b!64311 m!58497))

(assert (=> b!64311 m!58497))

(assert (=> b!64311 m!58513))

(declare-fun m!58663 () Bool)

(assert (=> b!64324 m!58663))

(assert (=> b!64321 m!58497))

(assert (=> b!64321 m!58497))

(declare-fun m!58665 () Bool)

(assert (=> b!64321 m!58665))

(declare-fun m!58667 () Bool)

(assert (=> bm!5170 m!58667))

(assert (=> b!64312 m!58497))

(declare-fun m!58669 () Bool)

(assert (=> b!64312 m!58669))

(declare-fun m!58671 () Bool)

(assert (=> b!64312 m!58671))

(assert (=> b!64312 m!58525))

(declare-fun m!58673 () Bool)

(assert (=> b!64312 m!58673))

(assert (=> b!64312 m!58525))

(assert (=> b!64312 m!58497))

(assert (=> b!64312 m!58671))

(assert (=> bm!5175 m!58657))

(assert (=> d!13369 m!58529))

(declare-fun m!58675 () Bool)

(assert (=> bm!5173 m!58675))

(declare-fun m!58677 () Bool)

(assert (=> bm!5172 m!58677))

(assert (=> bm!5111 d!13369))

(declare-fun d!13371 () Bool)

(assert (=> d!13371 (= (inRange!0 (ite c!8718 (ite c!8715 (index!3087 lt!27011) (ite c!8719 (index!3086 lt!27017) (index!3089 lt!27017))) (ite c!8716 (index!3087 lt!26997) (ite c!8713 (index!3086 lt!27014) (index!3089 lt!27014)))) (mask!6025 newMap!16)) (and (bvsge (ite c!8718 (ite c!8715 (index!3087 lt!27011) (ite c!8719 (index!3086 lt!27017) (index!3089 lt!27017))) (ite c!8716 (index!3087 lt!26997) (ite c!8713 (index!3086 lt!27014) (index!3089 lt!27014)))) #b00000000000000000000000000000000) (bvslt (ite c!8718 (ite c!8715 (index!3087 lt!27011) (ite c!8719 (index!3086 lt!27017) (index!3089 lt!27017))) (ite c!8716 (index!3087 lt!26997) (ite c!8713 (index!3086 lt!27014) (index!3089 lt!27014)))) (bvadd (mask!6025 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!5112 d!13371))

(declare-fun d!13373 () Bool)

(declare-fun e!42166 () Bool)

(assert (=> d!13373 e!42166))

(declare-fun res!35067 () Bool)

(assert (=> d!13373 (=> (not res!35067) (not e!42166))))

(assert (=> d!13373 (= res!35067 (and (bvsge (index!3087 lt!27001) #b00000000000000000000000000000000) (bvslt (index!3087 lt!27001) (size!2037 (_keys!3745 newMap!16)))))))

(declare-fun lt!27201 () Unit!1755)

(declare-fun choose!354 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 32) Int) Unit!1755)

(assert (=> d!13373 (= lt!27201 (choose!354 (_keys!3745 newMap!16) lt!27009 (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (index!3087 lt!27001) (defaultEntry!2109 newMap!16)))))

(assert (=> d!13373 (validMask!0 (mask!6025 newMap!16))))

(assert (=> d!13373 (= (lemmaValidKeyInArrayIsInListMap!76 (_keys!3745 newMap!16) lt!27009 (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (index!3087 lt!27001) (defaultEntry!2109 newMap!16)) lt!27201)))

(declare-fun b!64328 () Bool)

(assert (=> b!64328 (= e!42166 (contains!704 (getCurrentListMap!409 (_keys!3745 newMap!16) lt!27009 (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!27001))))))

(assert (= (and d!13373 res!35067) b!64328))

(declare-fun m!58679 () Bool)

(assert (=> d!13373 m!58679))

(assert (=> d!13373 m!58529))

(declare-fun m!58681 () Bool)

(assert (=> b!64328 m!58681))

(assert (=> b!64328 m!58291))

(assert (=> b!64328 m!58681))

(assert (=> b!64328 m!58291))

(declare-fun m!58683 () Bool)

(assert (=> b!64328 m!58683))

(assert (=> b!64050 d!13373))

(declare-fun d!13375 () Bool)

(declare-fun e!42169 () Bool)

(assert (=> d!13375 e!42169))

(declare-fun res!35070 () Bool)

(assert (=> d!13375 (=> (not res!35070) (not e!42169))))

(assert (=> d!13375 (= res!35070 (and (bvsge (index!3087 lt!27001) #b00000000000000000000000000000000) (bvslt (index!3087 lt!27001) (size!2038 (_values!2092 newMap!16)))))))

(declare-fun lt!27204 () Unit!1755)

(declare-fun choose!355 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 32) (_ BitVec 64) V!2875 Int) Unit!1755)

(assert (=> d!13375 (= lt!27204 (choose!355 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (index!3087 lt!27001) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2109 newMap!16)))))

(assert (=> d!13375 (validMask!0 (mask!6025 newMap!16))))

(assert (=> d!13375 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (index!3087 lt!27001) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2109 newMap!16)) lt!27204)))

(declare-fun b!64331 () Bool)

(assert (=> b!64331 (= e!42169 (= (+!84 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!409 (_keys!3745 newMap!16) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16))) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16))))))

(assert (= (and d!13375 res!35070) b!64331))

(assert (=> d!13375 m!58191))

(assert (=> d!13375 m!58209))

(declare-fun m!58685 () Bool)

(assert (=> d!13375 m!58685))

(assert (=> d!13375 m!58529))

(assert (=> b!64331 m!58315))

(assert (=> b!64331 m!58315))

(declare-fun m!58687 () Bool)

(assert (=> b!64331 m!58687))

(assert (=> b!64331 m!58287))

(declare-fun m!58689 () Bool)

(assert (=> b!64331 m!58689))

(assert (=> b!64050 d!13375))

(declare-fun d!13377 () Bool)

(declare-fun e!42170 () Bool)

(assert (=> d!13377 e!42170))

(declare-fun res!35071 () Bool)

(assert (=> d!13377 (=> res!35071 e!42170)))

(declare-fun lt!27207 () Bool)

(assert (=> d!13377 (= res!35071 (not lt!27207))))

(declare-fun lt!27205 () Bool)

(assert (=> d!13377 (= lt!27207 lt!27205)))

(declare-fun lt!27206 () Unit!1755)

(declare-fun e!42171 () Unit!1755)

(assert (=> d!13377 (= lt!27206 e!42171)))

(declare-fun c!8793 () Bool)

(assert (=> d!13377 (= c!8793 lt!27205)))

(assert (=> d!13377 (= lt!27205 (containsKey!130 (toList!713 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> d!13377 (= (contains!704 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) lt!27207)))

(declare-fun b!64332 () Bool)

(declare-fun lt!27208 () Unit!1755)

(assert (=> b!64332 (= e!42171 lt!27208)))

(assert (=> b!64332 (= lt!27208 (lemmaContainsKeyImpliesGetValueByKeyDefined!79 (toList!713 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> b!64332 (isDefined!80 (getValueByKey!126 (toList!713 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun b!64333 () Bool)

(declare-fun Unit!1771 () Unit!1755)

(assert (=> b!64333 (= e!42171 Unit!1771)))

(declare-fun b!64334 () Bool)

(assert (=> b!64334 (= e!42170 (isDefined!80 (getValueByKey!126 (toList!713 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355))))))

(assert (= (and d!13377 c!8793) b!64332))

(assert (= (and d!13377 (not c!8793)) b!64333))

(assert (= (and d!13377 (not res!35071)) b!64334))

(assert (=> d!13377 m!58191))

(declare-fun m!58691 () Bool)

(assert (=> d!13377 m!58691))

(assert (=> b!64332 m!58191))

(declare-fun m!58693 () Bool)

(assert (=> b!64332 m!58693))

(assert (=> b!64332 m!58191))

(declare-fun m!58695 () Bool)

(assert (=> b!64332 m!58695))

(assert (=> b!64332 m!58695))

(declare-fun m!58697 () Bool)

(assert (=> b!64332 m!58697))

(assert (=> b!64334 m!58191))

(assert (=> b!64334 m!58695))

(assert (=> b!64334 m!58695))

(assert (=> b!64334 m!58697))

(assert (=> b!64050 d!13377))

(assert (=> b!64050 d!13329))

(declare-fun d!13379 () Bool)

(assert (=> d!13379 (= (apply!69 lt!27084 lt!27065) (get!1106 (getValueByKey!126 (toList!713 lt!27084) lt!27065)))))

(declare-fun bs!2788 () Bool)

(assert (= bs!2788 d!13379))

(declare-fun m!58699 () Bool)

(assert (=> bs!2788 m!58699))

(assert (=> bs!2788 m!58699))

(declare-fun m!58701 () Bool)

(assert (=> bs!2788 m!58701))

(assert (=> b!64109 d!13379))

(declare-fun d!13381 () Bool)

(assert (=> d!13381 (= (apply!69 (+!84 lt!27084 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27065) (get!1106 (getValueByKey!126 (toList!713 (+!84 lt!27084 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))) lt!27065)))))

(declare-fun bs!2789 () Bool)

(assert (= bs!2789 d!13381))

(declare-fun m!58703 () Bool)

(assert (=> bs!2789 m!58703))

(assert (=> bs!2789 m!58703))

(declare-fun m!58705 () Bool)

(assert (=> bs!2789 m!58705))

(assert (=> b!64109 d!13381))

(declare-fun bm!5179 () Bool)

(declare-fun call!5182 () ListLongMap!1395)

(assert (=> bm!5179 (= call!5182 (getCurrentListMapNoExtraKeys!47 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun b!64359 () Bool)

(declare-fun e!42186 () Bool)

(declare-fun lt!27223 () ListLongMap!1395)

(declare-fun isEmpty!308 (ListLongMap!1395) Bool)

(assert (=> b!64359 (= e!42186 (isEmpty!308 lt!27223))))

(declare-fun b!64360 () Bool)

(assert (=> b!64360 (= e!42186 (= lt!27223 (getCurrentListMapNoExtraKeys!47 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun b!64361 () Bool)

(declare-fun lt!27225 () Unit!1755)

(declare-fun lt!27227 () Unit!1755)

(assert (=> b!64361 (= lt!27225 lt!27227)))

(declare-fun lt!27226 () (_ BitVec 64))

(declare-fun lt!27228 () V!2875)

(declare-fun lt!27224 () ListLongMap!1395)

(declare-fun lt!27229 () (_ BitVec 64))

(assert (=> b!64361 (not (contains!704 (+!84 lt!27224 (tuple2!2079 lt!27229 lt!27228)) lt!27226))))

(declare-fun addStillNotContains!20 (ListLongMap!1395 (_ BitVec 64) V!2875 (_ BitVec 64)) Unit!1755)

(assert (=> b!64361 (= lt!27227 (addStillNotContains!20 lt!27224 lt!27229 lt!27228 lt!27226))))

(assert (=> b!64361 (= lt!27226 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!64361 (= lt!27228 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!64361 (= lt!27229 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!64361 (= lt!27224 call!5182)))

(declare-fun e!42192 () ListLongMap!1395)

(assert (=> b!64361 (= e!42192 (+!84 call!5182 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!64362 () Bool)

(assert (=> b!64362 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(assert (=> b!64362 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2038 (_values!2092 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun e!42191 () Bool)

(assert (=> b!64362 (= e!42191 (= (apply!69 lt!27223 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!64363 () Bool)

(declare-fun e!42190 () ListLongMap!1395)

(assert (=> b!64363 (= e!42190 (ListLongMap!1396 Nil!1466))))

(declare-fun d!13383 () Bool)

(declare-fun e!42189 () Bool)

(assert (=> d!13383 e!42189))

(declare-fun res!35081 () Bool)

(assert (=> d!13383 (=> (not res!35081) (not e!42189))))

(assert (=> d!13383 (= res!35081 (not (contains!704 lt!27223 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!13383 (= lt!27223 e!42190)))

(declare-fun c!8803 () Bool)

(assert (=> d!13383 (= c!8803 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(assert (=> d!13383 (validMask!0 (mask!6025 (v!2435 (underlying!237 thiss!992))))))

(assert (=> d!13383 (= (getCurrentListMapNoExtraKeys!47 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (_values!2092 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992))) (extraKeys!1984 (v!2435 (underlying!237 thiss!992))) (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) (minValue!2019 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992)))) lt!27223)))

(declare-fun b!64364 () Bool)

(declare-fun e!42188 () Bool)

(assert (=> b!64364 (= e!42188 (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!64364 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!64365 () Bool)

(declare-fun res!35082 () Bool)

(assert (=> b!64365 (=> (not res!35082) (not e!42189))))

(assert (=> b!64365 (= res!35082 (not (contains!704 lt!27223 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!64366 () Bool)

(declare-fun e!42187 () Bool)

(assert (=> b!64366 (= e!42187 e!42186)))

(declare-fun c!8805 () Bool)

(assert (=> b!64366 (= c!8805 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun b!64367 () Bool)

(assert (=> b!64367 (= e!42192 call!5182)))

(declare-fun b!64368 () Bool)

(assert (=> b!64368 (= e!42190 e!42192)))

(declare-fun c!8802 () Bool)

(assert (=> b!64368 (= c!8802 (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!64369 () Bool)

(assert (=> b!64369 (= e!42187 e!42191)))

(assert (=> b!64369 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun res!35080 () Bool)

(assert (=> b!64369 (= res!35080 (contains!704 lt!27223 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!64369 (=> (not res!35080) (not e!42191))))

(declare-fun b!64370 () Bool)

(assert (=> b!64370 (= e!42189 e!42187)))

(declare-fun c!8804 () Bool)

(assert (=> b!64370 (= c!8804 e!42188)))

(declare-fun res!35083 () Bool)

(assert (=> b!64370 (=> (not res!35083) (not e!42188))))

(assert (=> b!64370 (= res!35083 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(assert (= (and d!13383 c!8803) b!64363))

(assert (= (and d!13383 (not c!8803)) b!64368))

(assert (= (and b!64368 c!8802) b!64361))

(assert (= (and b!64368 (not c!8802)) b!64367))

(assert (= (or b!64361 b!64367) bm!5179))

(assert (= (and d!13383 res!35081) b!64365))

(assert (= (and b!64365 res!35082) b!64370))

(assert (= (and b!64370 res!35083) b!64364))

(assert (= (and b!64370 c!8804) b!64369))

(assert (= (and b!64370 (not c!8804)) b!64366))

(assert (= (and b!64369 res!35080) b!64362))

(assert (= (and b!64366 c!8805) b!64360))

(assert (= (and b!64366 (not c!8805)) b!64359))

(declare-fun b_lambda!2891 () Bool)

(assert (=> (not b_lambda!2891) (not b!64361)))

(assert (=> b!64361 t!4884))

(declare-fun b_and!3937 () Bool)

(assert (= b_and!3933 (and (=> t!4884 result!2477) b_and!3937)))

(assert (=> b!64361 t!4886))

(declare-fun b_and!3939 () Bool)

(assert (= b_and!3935 (and (=> t!4886 result!2481) b_and!3939)))

(declare-fun b_lambda!2893 () Bool)

(assert (=> (not b_lambda!2893) (not b!64362)))

(assert (=> b!64362 t!4884))

(declare-fun b_and!3941 () Bool)

(assert (= b_and!3937 (and (=> t!4884 result!2477) b_and!3941)))

(assert (=> b!64362 t!4886))

(declare-fun b_and!3943 () Bool)

(assert (= b_and!3939 (and (=> t!4886 result!2481) b_and!3943)))

(declare-fun m!58707 () Bool)

(assert (=> b!64359 m!58707))

(declare-fun m!58709 () Bool)

(assert (=> d!13383 m!58709))

(assert (=> d!13383 m!58219))

(assert (=> b!64369 m!58369))

(assert (=> b!64369 m!58369))

(declare-fun m!58711 () Bool)

(assert (=> b!64369 m!58711))

(declare-fun m!58713 () Bool)

(assert (=> bm!5179 m!58713))

(assert (=> b!64368 m!58369))

(assert (=> b!64368 m!58369))

(assert (=> b!64368 m!58385))

(declare-fun m!58715 () Bool)

(assert (=> b!64361 m!58715))

(assert (=> b!64361 m!58395))

(assert (=> b!64361 m!58207))

(assert (=> b!64361 m!58397))

(assert (=> b!64361 m!58395))

(declare-fun m!58717 () Bool)

(assert (=> b!64361 m!58717))

(declare-fun m!58719 () Bool)

(assert (=> b!64361 m!58719))

(assert (=> b!64361 m!58207))

(assert (=> b!64361 m!58369))

(assert (=> b!64361 m!58717))

(declare-fun m!58721 () Bool)

(assert (=> b!64361 m!58721))

(assert (=> b!64364 m!58369))

(assert (=> b!64364 m!58369))

(assert (=> b!64364 m!58385))

(assert (=> b!64360 m!58713))

(assert (=> b!64362 m!58395))

(assert (=> b!64362 m!58207))

(assert (=> b!64362 m!58397))

(assert (=> b!64362 m!58369))

(assert (=> b!64362 m!58395))

(assert (=> b!64362 m!58369))

(declare-fun m!58723 () Bool)

(assert (=> b!64362 m!58723))

(assert (=> b!64362 m!58207))

(declare-fun m!58725 () Bool)

(assert (=> b!64365 m!58725))

(assert (=> b!64109 d!13383))

(declare-fun d!13385 () Bool)

(assert (=> d!13385 (= (apply!69 (+!84 lt!27075 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27076) (apply!69 lt!27075 lt!27076))))

(declare-fun lt!27232 () Unit!1755)

(declare-fun choose!356 (ListLongMap!1395 (_ BitVec 64) V!2875 (_ BitVec 64)) Unit!1755)

(assert (=> d!13385 (= lt!27232 (choose!356 lt!27075 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27076))))

(declare-fun e!42195 () Bool)

(assert (=> d!13385 e!42195))

(declare-fun res!35086 () Bool)

(assert (=> d!13385 (=> (not res!35086) (not e!42195))))

(assert (=> d!13385 (= res!35086 (contains!704 lt!27075 lt!27076))))

(assert (=> d!13385 (= (addApplyDifferent!45 lt!27075 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27076) lt!27232)))

(declare-fun b!64374 () Bool)

(assert (=> b!64374 (= e!42195 (not (= lt!27076 lt!27081)))))

(assert (= (and d!13385 res!35086) b!64374))

(assert (=> d!13385 m!58351))

(assert (=> d!13385 m!58353))

(assert (=> d!13385 m!58371))

(declare-fun m!58727 () Bool)

(assert (=> d!13385 m!58727))

(declare-fun m!58729 () Bool)

(assert (=> d!13385 m!58729))

(assert (=> d!13385 m!58351))

(assert (=> b!64109 d!13385))

(declare-fun d!13387 () Bool)

(declare-fun e!42196 () Bool)

(assert (=> d!13387 e!42196))

(declare-fun res!35087 () Bool)

(assert (=> d!13387 (=> res!35087 e!42196)))

(declare-fun lt!27235 () Bool)

(assert (=> d!13387 (= res!35087 (not lt!27235))))

(declare-fun lt!27233 () Bool)

(assert (=> d!13387 (= lt!27235 lt!27233)))

(declare-fun lt!27234 () Unit!1755)

(declare-fun e!42197 () Unit!1755)

(assert (=> d!13387 (= lt!27234 e!42197)))

(declare-fun c!8806 () Bool)

(assert (=> d!13387 (= c!8806 lt!27233)))

(assert (=> d!13387 (= lt!27233 (containsKey!130 (toList!713 (+!84 lt!27068 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))) lt!27080))))

(assert (=> d!13387 (= (contains!704 (+!84 lt!27068 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27080) lt!27235)))

(declare-fun b!64375 () Bool)

(declare-fun lt!27236 () Unit!1755)

(assert (=> b!64375 (= e!42197 lt!27236)))

(assert (=> b!64375 (= lt!27236 (lemmaContainsKeyImpliesGetValueByKeyDefined!79 (toList!713 (+!84 lt!27068 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))) lt!27080))))

(assert (=> b!64375 (isDefined!80 (getValueByKey!126 (toList!713 (+!84 lt!27068 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))) lt!27080))))

(declare-fun b!64376 () Bool)

(declare-fun Unit!1772 () Unit!1755)

(assert (=> b!64376 (= e!42197 Unit!1772)))

(declare-fun b!64377 () Bool)

(assert (=> b!64377 (= e!42196 (isDefined!80 (getValueByKey!126 (toList!713 (+!84 lt!27068 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))) lt!27080)))))

(assert (= (and d!13387 c!8806) b!64375))

(assert (= (and d!13387 (not c!8806)) b!64376))

(assert (= (and d!13387 (not res!35087)) b!64377))

(declare-fun m!58731 () Bool)

(assert (=> d!13387 m!58731))

(declare-fun m!58733 () Bool)

(assert (=> b!64375 m!58733))

(declare-fun m!58735 () Bool)

(assert (=> b!64375 m!58735))

(assert (=> b!64375 m!58735))

(declare-fun m!58737 () Bool)

(assert (=> b!64375 m!58737))

(assert (=> b!64377 m!58735))

(assert (=> b!64377 m!58735))

(assert (=> b!64377 m!58737))

(assert (=> b!64109 d!13387))

(declare-fun d!13389 () Bool)

(assert (=> d!13389 (= (apply!69 (+!84 lt!27083 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27077) (apply!69 lt!27083 lt!27077))))

(declare-fun lt!27237 () Unit!1755)

(assert (=> d!13389 (= lt!27237 (choose!356 lt!27083 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27077))))

(declare-fun e!42198 () Bool)

(assert (=> d!13389 e!42198))

(declare-fun res!35088 () Bool)

(assert (=> d!13389 (=> (not res!35088) (not e!42198))))

(assert (=> d!13389 (= res!35088 (contains!704 lt!27083 lt!27077))))

(assert (=> d!13389 (= (addApplyDifferent!45 lt!27083 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27077) lt!27237)))

(declare-fun b!64378 () Bool)

(assert (=> b!64378 (= e!42198 (not (= lt!27077 lt!27067)))))

(assert (= (and d!13389 res!35088) b!64378))

(assert (=> d!13389 m!58377))

(assert (=> d!13389 m!58381))

(assert (=> d!13389 m!58383))

(declare-fun m!58739 () Bool)

(assert (=> d!13389 m!58739))

(declare-fun m!58741 () Bool)

(assert (=> d!13389 m!58741))

(assert (=> d!13389 m!58377))

(assert (=> b!64109 d!13389))

(declare-fun d!13391 () Bool)

(assert (=> d!13391 (contains!704 (+!84 lt!27068 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27080)))

(declare-fun lt!27240 () Unit!1755)

(declare-fun choose!357 (ListLongMap!1395 (_ BitVec 64) V!2875 (_ BitVec 64)) Unit!1755)

(assert (=> d!13391 (= lt!27240 (choose!357 lt!27068 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27080))))

(assert (=> d!13391 (contains!704 lt!27068 lt!27080)))

(assert (=> d!13391 (= (addStillContains!45 lt!27068 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27080) lt!27240)))

(declare-fun bs!2790 () Bool)

(assert (= bs!2790 d!13391))

(assert (=> bs!2790 m!58361))

(assert (=> bs!2790 m!58361))

(assert (=> bs!2790 m!58363))

(declare-fun m!58743 () Bool)

(assert (=> bs!2790 m!58743))

(declare-fun m!58745 () Bool)

(assert (=> bs!2790 m!58745))

(assert (=> b!64109 d!13391))

(declare-fun d!13393 () Bool)

(assert (=> d!13393 (= (apply!69 (+!84 lt!27083 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27077) (get!1106 (getValueByKey!126 (toList!713 (+!84 lt!27083 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))) lt!27077)))))

(declare-fun bs!2791 () Bool)

(assert (= bs!2791 d!13393))

(declare-fun m!58747 () Bool)

(assert (=> bs!2791 m!58747))

(assert (=> bs!2791 m!58747))

(declare-fun m!58749 () Bool)

(assert (=> bs!2791 m!58749))

(assert (=> b!64109 d!13393))

(declare-fun d!13395 () Bool)

(declare-fun e!42199 () Bool)

(assert (=> d!13395 e!42199))

(declare-fun res!35090 () Bool)

(assert (=> d!13395 (=> (not res!35090) (not e!42199))))

(declare-fun lt!27241 () ListLongMap!1395)

(assert (=> d!13395 (= res!35090 (contains!704 lt!27241 (_1!1049 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(declare-fun lt!27242 () List!1469)

(assert (=> d!13395 (= lt!27241 (ListLongMap!1396 lt!27242))))

(declare-fun lt!27244 () Unit!1755)

(declare-fun lt!27243 () Unit!1755)

(assert (=> d!13395 (= lt!27244 lt!27243)))

(assert (=> d!13395 (= (getValueByKey!126 lt!27242 (_1!1049 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))) (Some!131 (_2!1049 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13395 (= lt!27243 (lemmaContainsTupThenGetReturnValue!45 lt!27242 (_1!1049 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) (_2!1049 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13395 (= lt!27242 (insertStrictlySorted!47 (toList!713 lt!27083) (_1!1049 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) (_2!1049 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13395 (= (+!84 lt!27083 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27241)))

(declare-fun b!64380 () Bool)

(declare-fun res!35089 () Bool)

(assert (=> b!64380 (=> (not res!35089) (not e!42199))))

(assert (=> b!64380 (= res!35089 (= (getValueByKey!126 (toList!713 lt!27241) (_1!1049 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))) (Some!131 (_2!1049 (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))))))

(declare-fun b!64381 () Bool)

(assert (=> b!64381 (= e!42199 (contains!706 (toList!713 lt!27241) (tuple2!2079 lt!27067 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))))

(assert (= (and d!13395 res!35090) b!64380))

(assert (= (and b!64380 res!35089) b!64381))

(declare-fun m!58751 () Bool)

(assert (=> d!13395 m!58751))

(declare-fun m!58753 () Bool)

(assert (=> d!13395 m!58753))

(declare-fun m!58755 () Bool)

(assert (=> d!13395 m!58755))

(declare-fun m!58757 () Bool)

(assert (=> d!13395 m!58757))

(declare-fun m!58759 () Bool)

(assert (=> b!64380 m!58759))

(declare-fun m!58761 () Bool)

(assert (=> b!64381 m!58761))

(assert (=> b!64109 d!13395))

(declare-fun d!13397 () Bool)

(declare-fun e!42200 () Bool)

(assert (=> d!13397 e!42200))

(declare-fun res!35092 () Bool)

(assert (=> d!13397 (=> (not res!35092) (not e!42200))))

(declare-fun lt!27245 () ListLongMap!1395)

(assert (=> d!13397 (= res!35092 (contains!704 lt!27245 (_1!1049 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(declare-fun lt!27246 () List!1469)

(assert (=> d!13397 (= lt!27245 (ListLongMap!1396 lt!27246))))

(declare-fun lt!27248 () Unit!1755)

(declare-fun lt!27247 () Unit!1755)

(assert (=> d!13397 (= lt!27248 lt!27247)))

(assert (=> d!13397 (= (getValueByKey!126 lt!27246 (_1!1049 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))) (Some!131 (_2!1049 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13397 (= lt!27247 (lemmaContainsTupThenGetReturnValue!45 lt!27246 (_1!1049 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) (_2!1049 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13397 (= lt!27246 (insertStrictlySorted!47 (toList!713 lt!27075) (_1!1049 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) (_2!1049 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13397 (= (+!84 lt!27075 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27245)))

(declare-fun b!64382 () Bool)

(declare-fun res!35091 () Bool)

(assert (=> b!64382 (=> (not res!35091) (not e!42200))))

(assert (=> b!64382 (= res!35091 (= (getValueByKey!126 (toList!713 lt!27245) (_1!1049 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))) (Some!131 (_2!1049 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))))))

(declare-fun b!64383 () Bool)

(assert (=> b!64383 (= e!42200 (contains!706 (toList!713 lt!27245) (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))))

(assert (= (and d!13397 res!35092) b!64382))

(assert (= (and b!64382 res!35091) b!64383))

(declare-fun m!58763 () Bool)

(assert (=> d!13397 m!58763))

(declare-fun m!58765 () Bool)

(assert (=> d!13397 m!58765))

(declare-fun m!58767 () Bool)

(assert (=> d!13397 m!58767))

(declare-fun m!58769 () Bool)

(assert (=> d!13397 m!58769))

(declare-fun m!58771 () Bool)

(assert (=> b!64382 m!58771))

(declare-fun m!58773 () Bool)

(assert (=> b!64383 m!58773))

(assert (=> b!64109 d!13397))

(declare-fun d!13399 () Bool)

(assert (=> d!13399 (= (apply!69 lt!27083 lt!27077) (get!1106 (getValueByKey!126 (toList!713 lt!27083) lt!27077)))))

(declare-fun bs!2792 () Bool)

(assert (= bs!2792 d!13399))

(declare-fun m!58775 () Bool)

(assert (=> bs!2792 m!58775))

(assert (=> bs!2792 m!58775))

(declare-fun m!58777 () Bool)

(assert (=> bs!2792 m!58777))

(assert (=> b!64109 d!13399))

(declare-fun d!13401 () Bool)

(assert (=> d!13401 (= (apply!69 lt!27075 lt!27076) (get!1106 (getValueByKey!126 (toList!713 lt!27075) lt!27076)))))

(declare-fun bs!2793 () Bool)

(assert (= bs!2793 d!13401))

(declare-fun m!58779 () Bool)

(assert (=> bs!2793 m!58779))

(assert (=> bs!2793 m!58779))

(declare-fun m!58781 () Bool)

(assert (=> bs!2793 m!58781))

(assert (=> b!64109 d!13401))

(declare-fun d!13403 () Bool)

(declare-fun e!42201 () Bool)

(assert (=> d!13403 e!42201))

(declare-fun res!35094 () Bool)

(assert (=> d!13403 (=> (not res!35094) (not e!42201))))

(declare-fun lt!27249 () ListLongMap!1395)

(assert (=> d!13403 (= res!35094 (contains!704 lt!27249 (_1!1049 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(declare-fun lt!27250 () List!1469)

(assert (=> d!13403 (= lt!27249 (ListLongMap!1396 lt!27250))))

(declare-fun lt!27252 () Unit!1755)

(declare-fun lt!27251 () Unit!1755)

(assert (=> d!13403 (= lt!27252 lt!27251)))

(assert (=> d!13403 (= (getValueByKey!126 lt!27250 (_1!1049 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))) (Some!131 (_2!1049 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13403 (= lt!27251 (lemmaContainsTupThenGetReturnValue!45 lt!27250 (_1!1049 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) (_2!1049 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13403 (= lt!27250 (insertStrictlySorted!47 (toList!713 lt!27084) (_1!1049 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) (_2!1049 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13403 (= (+!84 lt!27084 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27249)))

(declare-fun b!64384 () Bool)

(declare-fun res!35093 () Bool)

(assert (=> b!64384 (=> (not res!35093) (not e!42201))))

(assert (=> b!64384 (= res!35093 (= (getValueByKey!126 (toList!713 lt!27249) (_1!1049 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))) (Some!131 (_2!1049 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))))))))

(declare-fun b!64385 () Bool)

(assert (=> b!64385 (= e!42201 (contains!706 (toList!713 lt!27249) (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))))))

(assert (= (and d!13403 res!35094) b!64384))

(assert (= (and b!64384 res!35093) b!64385))

(declare-fun m!58783 () Bool)

(assert (=> d!13403 m!58783))

(declare-fun m!58785 () Bool)

(assert (=> d!13403 m!58785))

(declare-fun m!58787 () Bool)

(assert (=> d!13403 m!58787))

(declare-fun m!58789 () Bool)

(assert (=> d!13403 m!58789))

(declare-fun m!58791 () Bool)

(assert (=> b!64384 m!58791))

(declare-fun m!58793 () Bool)

(assert (=> b!64385 m!58793))

(assert (=> b!64109 d!13403))

(declare-fun d!13405 () Bool)

(assert (=> d!13405 (= (apply!69 (+!84 lt!27084 (tuple2!2079 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27065) (apply!69 lt!27084 lt!27065))))

(declare-fun lt!27253 () Unit!1755)

(assert (=> d!13405 (= lt!27253 (choose!356 lt!27084 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27065))))

(declare-fun e!42202 () Bool)

(assert (=> d!13405 e!42202))

(declare-fun res!35095 () Bool)

(assert (=> d!13405 (=> (not res!35095) (not e!42202))))

(assert (=> d!13405 (= res!35095 (contains!704 lt!27084 lt!27065))))

(assert (=> d!13405 (= (addApplyDifferent!45 lt!27084 lt!27072 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))) lt!27065) lt!27253)))

(declare-fun b!64386 () Bool)

(assert (=> b!64386 (= e!42202 (not (= lt!27065 lt!27072)))))

(assert (= (and d!13405 res!35095) b!64386))

(assert (=> d!13405 m!58355))

(assert (=> d!13405 m!58357))

(assert (=> d!13405 m!58359))

(declare-fun m!58795 () Bool)

(assert (=> d!13405 m!58795))

(declare-fun m!58797 () Bool)

(assert (=> d!13405 m!58797))

(assert (=> d!13405 m!58355))

(assert (=> b!64109 d!13405))

(declare-fun d!13407 () Bool)

(declare-fun e!42203 () Bool)

(assert (=> d!13407 e!42203))

(declare-fun res!35097 () Bool)

(assert (=> d!13407 (=> (not res!35097) (not e!42203))))

(declare-fun lt!27254 () ListLongMap!1395)

(assert (=> d!13407 (= res!35097 (contains!704 lt!27254 (_1!1049 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(declare-fun lt!27255 () List!1469)

(assert (=> d!13407 (= lt!27254 (ListLongMap!1396 lt!27255))))

(declare-fun lt!27257 () Unit!1755)

(declare-fun lt!27256 () Unit!1755)

(assert (=> d!13407 (= lt!27257 lt!27256)))

(assert (=> d!13407 (= (getValueByKey!126 lt!27255 (_1!1049 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))) (Some!131 (_2!1049 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13407 (= lt!27256 (lemmaContainsTupThenGetReturnValue!45 lt!27255 (_1!1049 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) (_2!1049 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13407 (= lt!27255 (insertStrictlySorted!47 (toList!713 lt!27068) (_1!1049 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) (_2!1049 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13407 (= (+!84 lt!27068 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27254)))

(declare-fun b!64387 () Bool)

(declare-fun res!35096 () Bool)

(assert (=> b!64387 (=> (not res!35096) (not e!42203))))

(assert (=> b!64387 (= res!35096 (= (getValueByKey!126 (toList!713 lt!27254) (_1!1049 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992)))))) (Some!131 (_2!1049 (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))))))))

(declare-fun b!64388 () Bool)

(assert (=> b!64388 (= e!42203 (contains!706 (toList!713 lt!27254) (tuple2!2079 lt!27069 (zeroValue!2019 (v!2435 (underlying!237 thiss!992))))))))

(assert (= (and d!13407 res!35097) b!64387))

(assert (= (and b!64387 res!35096) b!64388))

(declare-fun m!58799 () Bool)

(assert (=> d!13407 m!58799))

(declare-fun m!58801 () Bool)

(assert (=> d!13407 m!58801))

(declare-fun m!58803 () Bool)

(assert (=> d!13407 m!58803))

(declare-fun m!58805 () Bool)

(assert (=> d!13407 m!58805))

(declare-fun m!58807 () Bool)

(assert (=> b!64387 m!58807))

(declare-fun m!58809 () Bool)

(assert (=> b!64388 m!58809))

(assert (=> b!64109 d!13407))

(declare-fun d!13409 () Bool)

(assert (=> d!13409 (= (apply!69 (+!84 lt!27075 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27076) (get!1106 (getValueByKey!126 (toList!713 (+!84 lt!27075 (tuple2!2079 lt!27081 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))) lt!27076)))))

(declare-fun bs!2794 () Bool)

(assert (= bs!2794 d!13409))

(declare-fun m!58811 () Bool)

(assert (=> bs!2794 m!58811))

(assert (=> bs!2794 m!58811))

(declare-fun m!58813 () Bool)

(assert (=> bs!2794 m!58813))

(assert (=> b!64109 d!13409))

(declare-fun d!13411 () Bool)

(assert (=> d!13411 (= (apply!69 lt!27079 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1106 (getValueByKey!126 (toList!713 lt!27079) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!2795 () Bool)

(assert (= bs!2795 d!13411))

(assert (=> bs!2795 m!58467))

(assert (=> bs!2795 m!58467))

(declare-fun m!58815 () Bool)

(assert (=> bs!2795 m!58815))

(assert (=> b!64123 d!13411))

(declare-fun b!64389 () Bool)

(declare-fun e!42213 () Unit!1755)

(declare-fun lt!27258 () Unit!1755)

(assert (=> b!64389 (= e!42213 lt!27258)))

(declare-fun lt!27262 () ListLongMap!1395)

(assert (=> b!64389 (= lt!27262 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (ite (or c!8722 c!8718) (_values!2092 newMap!16) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16)))) (mask!6025 newMap!16) (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16)) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27263 () (_ BitVec 64))

(assert (=> b!64389 (= lt!27263 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27274 () (_ BitVec 64))

(assert (=> b!64389 (= lt!27274 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27279 () Unit!1755)

(assert (=> b!64389 (= lt!27279 (addStillContains!45 lt!27262 lt!27263 (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16)) lt!27274))))

(assert (=> b!64389 (contains!704 (+!84 lt!27262 (tuple2!2079 lt!27263 (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16)))) lt!27274)))

(declare-fun lt!27268 () Unit!1755)

(assert (=> b!64389 (= lt!27268 lt!27279)))

(declare-fun lt!27277 () ListLongMap!1395)

(assert (=> b!64389 (= lt!27277 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (ite (or c!8722 c!8718) (_values!2092 newMap!16) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16)))) (mask!6025 newMap!16) (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16)) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27261 () (_ BitVec 64))

(assert (=> b!64389 (= lt!27261 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27271 () (_ BitVec 64))

(assert (=> b!64389 (= lt!27271 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27276 () Unit!1755)

(assert (=> b!64389 (= lt!27276 (addApplyDifferent!45 lt!27277 lt!27261 (minValue!2019 newMap!16) lt!27271))))

(assert (=> b!64389 (= (apply!69 (+!84 lt!27277 (tuple2!2079 lt!27261 (minValue!2019 newMap!16))) lt!27271) (apply!69 lt!27277 lt!27271))))

(declare-fun lt!27272 () Unit!1755)

(assert (=> b!64389 (= lt!27272 lt!27276)))

(declare-fun lt!27278 () ListLongMap!1395)

(assert (=> b!64389 (= lt!27278 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (ite (or c!8722 c!8718) (_values!2092 newMap!16) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16)))) (mask!6025 newMap!16) (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16)) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27266 () (_ BitVec 64))

(assert (=> b!64389 (= lt!27266 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27259 () (_ BitVec 64))

(assert (=> b!64389 (= lt!27259 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!27260 () Unit!1755)

(assert (=> b!64389 (= lt!27260 (addApplyDifferent!45 lt!27278 lt!27266 (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16)) lt!27259))))

(assert (=> b!64389 (= (apply!69 (+!84 lt!27278 (tuple2!2079 lt!27266 (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16)))) lt!27259) (apply!69 lt!27278 lt!27259))))

(declare-fun lt!27267 () Unit!1755)

(assert (=> b!64389 (= lt!27267 lt!27260)))

(declare-fun lt!27269 () ListLongMap!1395)

(assert (=> b!64389 (= lt!27269 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (ite (or c!8722 c!8718) (_values!2092 newMap!16) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16)))) (mask!6025 newMap!16) (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16)) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27275 () (_ BitVec 64))

(assert (=> b!64389 (= lt!27275 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!27270 () (_ BitVec 64))

(assert (=> b!64389 (= lt!27270 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!64389 (= lt!27258 (addApplyDifferent!45 lt!27269 lt!27275 (minValue!2019 newMap!16) lt!27270))))

(assert (=> b!64389 (= (apply!69 (+!84 lt!27269 (tuple2!2079 lt!27275 (minValue!2019 newMap!16))) lt!27270) (apply!69 lt!27269 lt!27270))))

(declare-fun call!5186 () ListLongMap!1395)

(declare-fun call!5183 () ListLongMap!1395)

(declare-fun call!5184 () ListLongMap!1395)

(declare-fun call!5185 () ListLongMap!1395)

(declare-fun c!8812 () Bool)

(declare-fun bm!5180 () Bool)

(declare-fun c!8807 () Bool)

(assert (=> bm!5180 (= call!5183 (+!84 (ite c!8812 call!5184 (ite c!8807 call!5186 call!5185)) (ite (or c!8812 c!8807) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16))) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 newMap!16)))))))

(declare-fun bm!5181 () Bool)

(declare-fun call!5187 () ListLongMap!1395)

(assert (=> bm!5181 (= call!5187 call!5183)))

(declare-fun bm!5182 () Bool)

(declare-fun call!5188 () Bool)

(declare-fun lt!27273 () ListLongMap!1395)

(assert (=> bm!5182 (= call!5188 (contains!704 lt!27273 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64390 () Bool)

(declare-fun e!42211 () Bool)

(assert (=> b!64390 (= e!42211 (validKeyInArray!0 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!64391 () Bool)

(declare-fun e!42208 () Bool)

(assert (=> b!64391 (= e!42208 (not call!5188))))

(declare-fun b!64392 () Bool)

(declare-fun e!42209 () ListLongMap!1395)

(assert (=> b!64392 (= e!42209 call!5187)))

(declare-fun b!64393 () Bool)

(declare-fun Unit!1773 () Unit!1755)

(assert (=> b!64393 (= e!42213 Unit!1773)))

(declare-fun b!64394 () Bool)

(assert (=> b!64394 (= e!42209 call!5185)))

(declare-fun b!64395 () Bool)

(declare-fun e!42212 () Bool)

(assert (=> b!64395 (= e!42212 (validKeyInArray!0 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!42210 () Bool)

(declare-fun b!64396 () Bool)

(assert (=> b!64396 (= e!42210 (= (apply!69 lt!27273 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)) (get!1103 (select (arr!1805 (ite (or c!8722 c!8718) (_values!2092 newMap!16) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!318 (defaultEntry!2109 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!64396 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2038 (ite (or c!8722 c!8718) (_values!2092 newMap!16) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16)))))))))

(assert (=> b!64396 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(declare-fun b!64397 () Bool)

(declare-fun res!35103 () Bool)

(declare-fun e!42207 () Bool)

(assert (=> b!64397 (=> (not res!35103) (not e!42207))))

(declare-fun e!42216 () Bool)

(assert (=> b!64397 (= res!35103 e!42216)))

(declare-fun res!35100 () Bool)

(assert (=> b!64397 (=> res!35100 e!42216)))

(assert (=> b!64397 (= res!35100 (not e!42211))))

(declare-fun res!35104 () Bool)

(assert (=> b!64397 (=> (not res!35104) (not e!42211))))

(assert (=> b!64397 (= res!35104 (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(declare-fun bm!5184 () Bool)

(assert (=> bm!5184 (= call!5186 call!5184)))

(declare-fun b!64398 () Bool)

(declare-fun e!42214 () ListLongMap!1395)

(declare-fun e!42204 () ListLongMap!1395)

(assert (=> b!64398 (= e!42214 e!42204)))

(assert (=> b!64398 (= c!8807 (and (not (= (bvand (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!64399 () Bool)

(declare-fun e!42205 () Bool)

(assert (=> b!64399 (= e!42207 e!42205)))

(declare-fun c!8809 () Bool)

(assert (=> b!64399 (= c!8809 (not (= (bvand (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!64400 () Bool)

(declare-fun e!42206 () Bool)

(assert (=> b!64400 (= e!42205 e!42206)))

(declare-fun res!35106 () Bool)

(declare-fun call!5189 () Bool)

(assert (=> b!64400 (= res!35106 call!5189)))

(assert (=> b!64400 (=> (not res!35106) (not e!42206))))

(declare-fun bm!5185 () Bool)

(assert (=> bm!5185 (= call!5184 (getCurrentListMapNoExtraKeys!47 (_keys!3745 newMap!16) (ite (or c!8722 c!8718) (_values!2092 newMap!16) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16)))) (mask!6025 newMap!16) (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16)) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun bm!5183 () Bool)

(assert (=> bm!5183 (= call!5189 (contains!704 lt!27273 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!13413 () Bool)

(assert (=> d!13413 e!42207))

(declare-fun res!35105 () Bool)

(assert (=> d!13413 (=> (not res!35105) (not e!42207))))

(assert (=> d!13413 (= res!35105 (or (bvsge #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))))

(declare-fun lt!27264 () ListLongMap!1395)

(assert (=> d!13413 (= lt!27273 lt!27264)))

(declare-fun lt!27265 () Unit!1755)

(assert (=> d!13413 (= lt!27265 e!42213)))

(declare-fun c!8810 () Bool)

(assert (=> d!13413 (= c!8810 e!42212)))

(declare-fun res!35098 () Bool)

(assert (=> d!13413 (=> (not res!35098) (not e!42212))))

(assert (=> d!13413 (= res!35098 (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(assert (=> d!13413 (= lt!27264 e!42214)))

(assert (=> d!13413 (= c!8812 (and (not (= (bvand (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!13413 (validMask!0 (mask!6025 newMap!16))))

(assert (=> d!13413 (= (getCurrentListMap!409 (_keys!3745 newMap!16) (ite (or c!8722 c!8718) (_values!2092 newMap!16) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (index!3087 lt!27001) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16)))) (mask!6025 newMap!16) (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16)) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) lt!27273)))

(declare-fun b!64401 () Bool)

(assert (=> b!64401 (= e!42204 call!5187)))

(declare-fun bm!5186 () Bool)

(assert (=> bm!5186 (= call!5185 call!5186)))

(declare-fun b!64402 () Bool)

(declare-fun c!8808 () Bool)

(assert (=> b!64402 (= c!8808 (and (not (= (bvand (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!64402 (= e!42204 e!42209)))

(declare-fun e!42215 () Bool)

(declare-fun b!64403 () Bool)

(assert (=> b!64403 (= e!42215 (= (apply!69 lt!27273 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!8722 c!8721) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2019 newMap!16))))))

(declare-fun b!64404 () Bool)

(assert (=> b!64404 (= e!42205 (not call!5189))))

(declare-fun b!64405 () Bool)

(assert (=> b!64405 (= e!42216 e!42210)))

(declare-fun res!35102 () Bool)

(assert (=> b!64405 (=> (not res!35102) (not e!42210))))

(assert (=> b!64405 (= res!35102 (contains!704 lt!27273 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!64405 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(declare-fun b!64406 () Bool)

(declare-fun res!35099 () Bool)

(assert (=> b!64406 (=> (not res!35099) (not e!42207))))

(assert (=> b!64406 (= res!35099 e!42208)))

(declare-fun c!8811 () Bool)

(assert (=> b!64406 (= c!8811 (not (= (bvand (ite (and c!8722 c!8721) lt!27012 (extraKeys!1984 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!64407 () Bool)

(assert (=> b!64407 (= e!42214 (+!84 call!5183 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 newMap!16))))))

(declare-fun b!64408 () Bool)

(assert (=> b!64408 (= e!42206 (= (apply!69 lt!27273 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2019 newMap!16)))))

(declare-fun b!64409 () Bool)

(assert (=> b!64409 (= e!42208 e!42215)))

(declare-fun res!35101 () Bool)

(assert (=> b!64409 (= res!35101 call!5188)))

(assert (=> b!64409 (=> (not res!35101) (not e!42215))))

(assert (= (and d!13413 c!8812) b!64407))

(assert (= (and d!13413 (not c!8812)) b!64398))

(assert (= (and b!64398 c!8807) b!64401))

(assert (= (and b!64398 (not c!8807)) b!64402))

(assert (= (and b!64402 c!8808) b!64392))

(assert (= (and b!64402 (not c!8808)) b!64394))

(assert (= (or b!64392 b!64394) bm!5186))

(assert (= (or b!64401 bm!5186) bm!5184))

(assert (= (or b!64401 b!64392) bm!5181))

(assert (= (or b!64407 bm!5184) bm!5185))

(assert (= (or b!64407 bm!5181) bm!5180))

(assert (= (and d!13413 res!35098) b!64395))

(assert (= (and d!13413 c!8810) b!64389))

(assert (= (and d!13413 (not c!8810)) b!64393))

(assert (= (and d!13413 res!35105) b!64397))

(assert (= (and b!64397 res!35104) b!64390))

(assert (= (and b!64397 (not res!35100)) b!64405))

(assert (= (and b!64405 res!35102) b!64396))

(assert (= (and b!64397 res!35103) b!64406))

(assert (= (and b!64406 c!8811) b!64409))

(assert (= (and b!64406 (not c!8811)) b!64391))

(assert (= (and b!64409 res!35101) b!64403))

(assert (= (or b!64409 b!64391) bm!5182))

(assert (= (and b!64406 res!35099) b!64399))

(assert (= (and b!64399 c!8809) b!64400))

(assert (= (and b!64399 (not c!8809)) b!64404))

(assert (= (and b!64400 res!35106) b!64408))

(assert (= (or b!64400 b!64404) bm!5183))

(declare-fun b_lambda!2895 () Bool)

(assert (=> (not b_lambda!2895) (not b!64396)))

(assert (=> b!64396 t!4896))

(declare-fun b_and!3945 () Bool)

(assert (= b_and!3941 (and (=> t!4896 result!2491) b_and!3945)))

(assert (=> b!64396 t!4898))

(declare-fun b_and!3947 () Bool)

(assert (= b_and!3943 (and (=> t!4898 result!2493) b_and!3947)))

(declare-fun m!58817 () Bool)

(assert (=> b!64403 m!58817))

(declare-fun m!58819 () Bool)

(assert (=> b!64407 m!58819))

(declare-fun m!58821 () Bool)

(assert (=> b!64389 m!58821))

(declare-fun m!58823 () Bool)

(assert (=> b!64389 m!58823))

(declare-fun m!58825 () Bool)

(assert (=> b!64389 m!58825))

(declare-fun m!58827 () Bool)

(assert (=> b!64389 m!58827))

(declare-fun m!58829 () Bool)

(assert (=> b!64389 m!58829))

(declare-fun m!58831 () Bool)

(assert (=> b!64389 m!58831))

(declare-fun m!58833 () Bool)

(assert (=> b!64389 m!58833))

(declare-fun m!58835 () Bool)

(assert (=> b!64389 m!58835))

(declare-fun m!58837 () Bool)

(assert (=> b!64389 m!58837))

(assert (=> b!64389 m!58497))

(assert (=> b!64389 m!58831))

(declare-fun m!58839 () Bool)

(assert (=> b!64389 m!58839))

(declare-fun m!58841 () Bool)

(assert (=> b!64389 m!58841))

(declare-fun m!58843 () Bool)

(assert (=> b!64389 m!58843))

(declare-fun m!58845 () Bool)

(assert (=> b!64389 m!58845))

(declare-fun m!58847 () Bool)

(assert (=> b!64389 m!58847))

(assert (=> b!64389 m!58845))

(declare-fun m!58849 () Bool)

(assert (=> b!64389 m!58849))

(declare-fun m!58851 () Bool)

(assert (=> b!64389 m!58851))

(assert (=> b!64389 m!58821))

(assert (=> b!64389 m!58825))

(assert (=> b!64390 m!58497))

(assert (=> b!64390 m!58497))

(assert (=> b!64390 m!58513))

(assert (=> b!64395 m!58497))

(assert (=> b!64395 m!58497))

(assert (=> b!64395 m!58513))

(declare-fun m!58853 () Bool)

(assert (=> b!64408 m!58853))

(assert (=> b!64405 m!58497))

(assert (=> b!64405 m!58497))

(declare-fun m!58855 () Bool)

(assert (=> b!64405 m!58855))

(declare-fun m!58857 () Bool)

(assert (=> bm!5180 m!58857))

(assert (=> b!64396 m!58497))

(declare-fun m!58859 () Bool)

(assert (=> b!64396 m!58859))

(declare-fun m!58861 () Bool)

(assert (=> b!64396 m!58861))

(assert (=> b!64396 m!58525))

(declare-fun m!58863 () Bool)

(assert (=> b!64396 m!58863))

(assert (=> b!64396 m!58525))

(assert (=> b!64396 m!58497))

(assert (=> b!64396 m!58861))

(assert (=> bm!5185 m!58847))

(assert (=> d!13413 m!58529))

(declare-fun m!58865 () Bool)

(assert (=> bm!5183 m!58865))

(declare-fun m!58867 () Bool)

(assert (=> bm!5182 m!58867))

(assert (=> bm!5113 d!13413))

(declare-fun d!13415 () Bool)

(declare-fun e!42217 () Bool)

(assert (=> d!13415 e!42217))

(declare-fun res!35107 () Bool)

(assert (=> d!13415 (=> res!35107 e!42217)))

(declare-fun lt!27282 () Bool)

(assert (=> d!13415 (= res!35107 (not lt!27282))))

(declare-fun lt!27280 () Bool)

(assert (=> d!13415 (= lt!27282 lt!27280)))

(declare-fun lt!27281 () Unit!1755)

(declare-fun e!42218 () Unit!1755)

(assert (=> d!13415 (= lt!27281 e!42218)))

(declare-fun c!8813 () Bool)

(assert (=> d!13415 (= c!8813 lt!27280)))

(assert (=> d!13415 (= lt!27280 (containsKey!130 (toList!713 lt!27079) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!13415 (= (contains!704 lt!27079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!27282)))

(declare-fun b!64410 () Bool)

(declare-fun lt!27283 () Unit!1755)

(assert (=> b!64410 (= e!42218 lt!27283)))

(assert (=> b!64410 (= lt!27283 (lemmaContainsKeyImpliesGetValueByKeyDefined!79 (toList!713 lt!27079) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!64410 (isDefined!80 (getValueByKey!126 (toList!713 lt!27079) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!64411 () Bool)

(declare-fun Unit!1774 () Unit!1755)

(assert (=> b!64411 (= e!42218 Unit!1774)))

(declare-fun b!64412 () Bool)

(assert (=> b!64412 (= e!42217 (isDefined!80 (getValueByKey!126 (toList!713 lt!27079) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!13415 c!8813) b!64410))

(assert (= (and d!13415 (not c!8813)) b!64411))

(assert (= (and d!13415 (not res!35107)) b!64412))

(assert (=> d!13415 m!58369))

(declare-fun m!58869 () Bool)

(assert (=> d!13415 m!58869))

(assert (=> b!64410 m!58369))

(declare-fun m!58871 () Bool)

(assert (=> b!64410 m!58871))

(assert (=> b!64410 m!58369))

(declare-fun m!58873 () Bool)

(assert (=> b!64410 m!58873))

(assert (=> b!64410 m!58873))

(declare-fun m!58875 () Bool)

(assert (=> b!64410 m!58875))

(assert (=> b!64412 m!58369))

(assert (=> b!64412 m!58873))

(assert (=> b!64412 m!58873))

(assert (=> b!64412 m!58875))

(assert (=> b!64125 d!13415))

(assert (=> d!13309 d!13313))

(declare-fun d!13417 () Bool)

(assert (=> d!13417 (not (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> d!13417 true))

(declare-fun _$68!40 () Unit!1755)

(assert (=> d!13417 (= (choose!68 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (Cons!1466 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) Nil!1467)) _$68!40)))

(declare-fun bs!2796 () Bool)

(assert (= bs!2796 d!13417))

(assert (=> bs!2796 m!58191))

(assert (=> bs!2796 m!58195))

(assert (=> d!13309 d!13417))

(declare-fun d!13419 () Bool)

(assert (=> d!13419 (= (+!84 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) (tuple2!2079 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) lt!27012 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27286 () Unit!1755)

(declare-fun choose!358 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 V!2875 Int) Unit!1755)

(assert (=> d!13419 (= lt!27286 (choose!358 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) lt!27012 (zeroValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2019 newMap!16) (defaultEntry!2109 newMap!16)))))

(assert (=> d!13419 (validMask!0 (mask!6025 newMap!16))))

(assert (=> d!13419 (= (lemmaChangeZeroKeyThenAddPairToListMap!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) lt!27012 (zeroValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2019 newMap!16) (defaultEntry!2109 newMap!16)) lt!27286)))

(declare-fun bs!2797 () Bool)

(assert (= bs!2797 d!13419))

(assert (=> bs!2797 m!58209))

(declare-fun m!58877 () Bool)

(assert (=> bs!2797 m!58877))

(assert (=> bs!2797 m!58315))

(assert (=> bs!2797 m!58529))

(assert (=> bs!2797 m!58315))

(declare-fun m!58879 () Bool)

(assert (=> bs!2797 m!58879))

(assert (=> bs!2797 m!58209))

(declare-fun m!58881 () Bool)

(assert (=> bs!2797 m!58881))

(assert (=> b!64053 d!13419))

(declare-fun d!13421 () Bool)

(declare-fun e!42219 () Bool)

(assert (=> d!13421 e!42219))

(declare-fun res!35108 () Bool)

(assert (=> d!13421 (=> res!35108 e!42219)))

(declare-fun lt!27289 () Bool)

(assert (=> d!13421 (= res!35108 (not lt!27289))))

(declare-fun lt!27287 () Bool)

(assert (=> d!13421 (= lt!27289 lt!27287)))

(declare-fun lt!27288 () Unit!1755)

(declare-fun e!42220 () Unit!1755)

(assert (=> d!13421 (= lt!27288 e!42220)))

(declare-fun c!8814 () Bool)

(assert (=> d!13421 (= c!8814 lt!27287)))

(assert (=> d!13421 (= lt!27287 (containsKey!130 (toList!713 lt!27079) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!13421 (= (contains!704 lt!27079 #b1000000000000000000000000000000000000000000000000000000000000000) lt!27289)))

(declare-fun b!64413 () Bool)

(declare-fun lt!27290 () Unit!1755)

(assert (=> b!64413 (= e!42220 lt!27290)))

(assert (=> b!64413 (= lt!27290 (lemmaContainsKeyImpliesGetValueByKeyDefined!79 (toList!713 lt!27079) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!64413 (isDefined!80 (getValueByKey!126 (toList!713 lt!27079) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64414 () Bool)

(declare-fun Unit!1775 () Unit!1755)

(assert (=> b!64414 (= e!42220 Unit!1775)))

(declare-fun b!64415 () Bool)

(assert (=> b!64415 (= e!42219 (isDefined!80 (getValueByKey!126 (toList!713 lt!27079) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!13421 c!8814) b!64413))

(assert (= (and d!13421 (not c!8814)) b!64414))

(assert (= (and d!13421 (not res!35108)) b!64415))

(declare-fun m!58883 () Bool)

(assert (=> d!13421 m!58883))

(declare-fun m!58885 () Bool)

(assert (=> b!64413 m!58885))

(assert (=> b!64413 m!58471))

(assert (=> b!64413 m!58471))

(declare-fun m!58887 () Bool)

(assert (=> b!64413 m!58887))

(assert (=> b!64415 m!58471))

(assert (=> b!64415 m!58471))

(assert (=> b!64415 m!58887))

(assert (=> bm!5151 d!13421))

(declare-fun d!13423 () Bool)

(declare-fun e!42221 () Bool)

(assert (=> d!13423 e!42221))

(declare-fun res!35110 () Bool)

(assert (=> d!13423 (=> (not res!35110) (not e!42221))))

(declare-fun lt!27291 () ListLongMap!1395)

(assert (=> d!13423 (= res!35110 (contains!704 lt!27291 (_1!1049 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(declare-fun lt!27292 () List!1469)

(assert (=> d!13423 (= lt!27291 (ListLongMap!1396 lt!27292))))

(declare-fun lt!27294 () Unit!1755)

(declare-fun lt!27293 () Unit!1755)

(assert (=> d!13423 (= lt!27294 lt!27293)))

(assert (=> d!13423 (= (getValueByKey!126 lt!27292 (_1!1049 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))) (Some!131 (_2!1049 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13423 (= lt!27293 (lemmaContainsTupThenGetReturnValue!45 lt!27292 (_1!1049 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) (_2!1049 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13423 (= lt!27292 (insertStrictlySorted!47 (toList!713 call!5151) (_1!1049 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) (_2!1049 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))))))

(assert (=> d!13423 (= (+!84 call!5151 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))) lt!27291)))

(declare-fun b!64416 () Bool)

(declare-fun res!35109 () Bool)

(assert (=> b!64416 (=> (not res!35109) (not e!42221))))

(assert (=> b!64416 (= res!35109 (= (getValueByKey!126 (toList!713 lt!27291) (_1!1049 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992)))))) (Some!131 (_2!1049 (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))))))

(declare-fun b!64417 () Bool)

(assert (=> b!64417 (= e!42221 (contains!706 (toList!713 lt!27291) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2019 (v!2435 (underlying!237 thiss!992))))))))

(assert (= (and d!13423 res!35110) b!64416))

(assert (= (and b!64416 res!35109) b!64417))

(declare-fun m!58889 () Bool)

(assert (=> d!13423 m!58889))

(declare-fun m!58891 () Bool)

(assert (=> d!13423 m!58891))

(declare-fun m!58893 () Bool)

(assert (=> d!13423 m!58893))

(declare-fun m!58895 () Bool)

(assert (=> d!13423 m!58895))

(declare-fun m!58897 () Bool)

(assert (=> b!64416 m!58897))

(declare-fun m!58899 () Bool)

(assert (=> b!64417 m!58899))

(assert (=> b!64127 d!13423))

(declare-fun d!13425 () Bool)

(declare-fun lt!27297 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!68 (List!1470) (InoxSet (_ BitVec 64)))

(assert (=> d!13425 (= lt!27297 (select (content!68 Nil!1467) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun e!42227 () Bool)

(assert (=> d!13425 (= lt!27297 e!42227)))

(declare-fun res!35115 () Bool)

(assert (=> d!13425 (=> (not res!35115) (not e!42227))))

(assert (=> d!13425 (= res!35115 ((_ is Cons!1466) Nil!1467))))

(assert (=> d!13425 (= (contains!705 Nil!1467 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) lt!27297)))

(declare-fun b!64422 () Bool)

(declare-fun e!42226 () Bool)

(assert (=> b!64422 (= e!42227 e!42226)))

(declare-fun res!35116 () Bool)

(assert (=> b!64422 (=> res!35116 e!42226)))

(assert (=> b!64422 (= res!35116 (= (h!2050 Nil!1467) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun b!64423 () Bool)

(assert (=> b!64423 (= e!42226 (contains!705 (t!4888 Nil!1467) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (= (and d!13425 res!35115) b!64422))

(assert (= (and b!64422 (not res!35116)) b!64423))

(declare-fun m!58901 () Bool)

(assert (=> d!13425 m!58901))

(assert (=> d!13425 m!58191))

(declare-fun m!58903 () Bool)

(assert (=> d!13425 m!58903))

(assert (=> b!64423 m!58191))

(declare-fun m!58905 () Bool)

(assert (=> b!64423 m!58905))

(assert (=> b!64174 d!13425))

(declare-fun d!13427 () Bool)

(declare-fun e!42228 () Bool)

(assert (=> d!13427 e!42228))

(declare-fun res!35118 () Bool)

(assert (=> d!13427 (=> (not res!35118) (not e!42228))))

(declare-fun lt!27298 () ListLongMap!1395)

(assert (=> d!13427 (= res!35118 (contains!704 lt!27298 (_1!1049 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!27299 () List!1469)

(assert (=> d!13427 (= lt!27298 (ListLongMap!1396 lt!27299))))

(declare-fun lt!27301 () Unit!1755)

(declare-fun lt!27300 () Unit!1755)

(assert (=> d!13427 (= lt!27301 lt!27300)))

(assert (=> d!13427 (= (getValueByKey!126 lt!27299 (_1!1049 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!131 (_2!1049 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!13427 (= lt!27300 (lemmaContainsTupThenGetReturnValue!45 lt!27299 (_1!1049 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1049 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!13427 (= lt!27299 (insertStrictlySorted!47 (toList!713 call!5120) (_1!1049 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1049 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!13427 (= (+!84 call!5120 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!27298)))

(declare-fun b!64424 () Bool)

(declare-fun res!35117 () Bool)

(assert (=> b!64424 (=> (not res!35117) (not e!42228))))

(assert (=> b!64424 (= res!35117 (= (getValueByKey!126 (toList!713 lt!27298) (_1!1049 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!131 (_2!1049 (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!64425 () Bool)

(assert (=> b!64425 (= e!42228 (contains!706 (toList!713 lt!27298) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!13427 res!35118) b!64424))

(assert (= (and b!64424 res!35117) b!64425))

(declare-fun m!58907 () Bool)

(assert (=> d!13427 m!58907))

(declare-fun m!58909 () Bool)

(assert (=> d!13427 m!58909))

(declare-fun m!58911 () Bool)

(assert (=> d!13427 m!58911))

(declare-fun m!58913 () Bool)

(assert (=> d!13427 m!58913))

(declare-fun m!58915 () Bool)

(assert (=> b!64424 m!58915))

(declare-fun m!58917 () Bool)

(assert (=> b!64425 m!58917))

(assert (=> b!64054 d!13427))

(declare-fun d!13429 () Bool)

(assert (=> d!13429 (= (get!1105 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!64066 d!13429))

(assert (=> b!64176 d!13325))

(declare-fun d!13431 () Bool)

(assert (=> d!13431 (= (map!1123 (_2!1048 lt!27015)) (getCurrentListMap!409 (_keys!3745 (_2!1048 lt!27015)) (_values!2092 (_2!1048 lt!27015)) (mask!6025 (_2!1048 lt!27015)) (extraKeys!1984 (_2!1048 lt!27015)) (zeroValue!2019 (_2!1048 lt!27015)) (minValue!2019 (_2!1048 lt!27015)) #b00000000000000000000000000000000 (defaultEntry!2109 (_2!1048 lt!27015))))))

(declare-fun bs!2798 () Bool)

(assert (= bs!2798 d!13431))

(declare-fun m!58919 () Bool)

(assert (=> bs!2798 m!58919))

(assert (=> bm!5129 d!13431))

(declare-fun d!13433 () Bool)

(declare-fun res!35119 () Bool)

(declare-fun e!42229 () Bool)

(assert (=> d!13433 (=> res!35119 e!42229)))

(assert (=> d!13433 (= res!35119 (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> d!13433 (= (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!42229)))

(declare-fun b!64426 () Bool)

(declare-fun e!42230 () Bool)

(assert (=> b!64426 (= e!42229 e!42230)))

(declare-fun res!35120 () Bool)

(assert (=> b!64426 (=> (not res!35120) (not e!42230))))

(assert (=> b!64426 (= res!35120 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(declare-fun b!64427 () Bool)

(assert (=> b!64427 (= e!42230 (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!13433 (not res!35119)) b!64426))

(assert (= (and b!64426 res!35120) b!64427))

(declare-fun m!58921 () Bool)

(assert (=> d!13433 m!58921))

(assert (=> b!64427 m!58191))

(declare-fun m!58923 () Bool)

(assert (=> b!64427 m!58923))

(assert (=> b!64156 d!13433))

(assert (=> b!64115 d!13331))

(declare-fun d!13435 () Bool)

(declare-fun e!42231 () Bool)

(assert (=> d!13435 e!42231))

(declare-fun res!35121 () Bool)

(assert (=> d!13435 (=> res!35121 e!42231)))

(declare-fun lt!27304 () Bool)

(assert (=> d!13435 (= res!35121 (not lt!27304))))

(declare-fun lt!27302 () Bool)

(assert (=> d!13435 (= lt!27304 lt!27302)))

(declare-fun lt!27303 () Unit!1755)

(declare-fun e!42232 () Unit!1755)

(assert (=> d!13435 (= lt!27303 e!42232)))

(declare-fun c!8815 () Bool)

(assert (=> d!13435 (= c!8815 lt!27302)))

(assert (=> d!13435 (= lt!27302 (containsKey!130 (toList!713 e!42002) (ite c!8718 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!27001)))))))

(assert (=> d!13435 (= (contains!704 e!42002 (ite c!8718 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!27001)))) lt!27304)))

(declare-fun b!64428 () Bool)

(declare-fun lt!27305 () Unit!1755)

(assert (=> b!64428 (= e!42232 lt!27305)))

(assert (=> b!64428 (= lt!27305 (lemmaContainsKeyImpliesGetValueByKeyDefined!79 (toList!713 e!42002) (ite c!8718 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!27001)))))))

(assert (=> b!64428 (isDefined!80 (getValueByKey!126 (toList!713 e!42002) (ite c!8718 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!27001)))))))

(declare-fun b!64429 () Bool)

(declare-fun Unit!1776 () Unit!1755)

(assert (=> b!64429 (= e!42232 Unit!1776)))

(declare-fun b!64430 () Bool)

(assert (=> b!64430 (= e!42231 (isDefined!80 (getValueByKey!126 (toList!713 e!42002) (ite c!8718 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!27001))))))))

(assert (= (and d!13435 c!8815) b!64428))

(assert (= (and d!13435 (not c!8815)) b!64429))

(assert (= (and d!13435 (not res!35121)) b!64430))

(declare-fun m!58925 () Bool)

(assert (=> d!13435 m!58925))

(declare-fun m!58927 () Bool)

(assert (=> b!64428 m!58927))

(declare-fun m!58929 () Bool)

(assert (=> b!64428 m!58929))

(assert (=> b!64428 m!58929))

(declare-fun m!58931 () Bool)

(assert (=> b!64428 m!58931))

(assert (=> b!64430 m!58929))

(assert (=> b!64430 m!58929))

(assert (=> b!64430 m!58931))

(assert (=> bm!5117 d!13435))

(declare-fun d!13437 () Bool)

(assert (=> d!13437 (= (apply!69 lt!27079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1106 (getValueByKey!126 (toList!713 lt!27079) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!2799 () Bool)

(assert (= bs!2799 d!13437))

(assert (=> bs!2799 m!58369))

(assert (=> bs!2799 m!58873))

(assert (=> bs!2799 m!58873))

(declare-fun m!58933 () Bool)

(assert (=> bs!2799 m!58933))

(assert (=> b!64116 d!13437))

(declare-fun d!13439 () Bool)

(declare-fun c!8816 () Bool)

(assert (=> d!13439 (= c!8816 ((_ is ValueCellFull!867) (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!42233 () V!2875)

(assert (=> d!13439 (= (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!42233)))

(declare-fun b!64431 () Bool)

(assert (=> b!64431 (= e!42233 (get!1104 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!64432 () Bool)

(assert (=> b!64432 (= e!42233 (get!1105 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!13439 c!8816) b!64431))

(assert (= (and d!13439 (not c!8816)) b!64432))

(assert (=> b!64431 m!58395))

(assert (=> b!64431 m!58207))

(declare-fun m!58935 () Bool)

(assert (=> b!64431 m!58935))

(assert (=> b!64432 m!58395))

(assert (=> b!64432 m!58207))

(declare-fun m!58937 () Bool)

(assert (=> b!64432 m!58937))

(assert (=> b!64116 d!13439))

(declare-fun bm!5189 () Bool)

(declare-fun call!5192 () (_ BitVec 32))

(assert (=> bm!5189 (= call!5192 (arrayCountValidKeys!0 (_keys!3745 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2037 (_keys!3745 newMap!16))))))

(declare-fun b!64441 () Bool)

(declare-fun e!42239 () (_ BitVec 32))

(assert (=> b!64441 (= e!42239 #b00000000000000000000000000000000)))

(declare-fun b!64443 () Bool)

(declare-fun e!42238 () (_ BitVec 32))

(assert (=> b!64443 (= e!42238 call!5192)))

(declare-fun b!64444 () Bool)

(assert (=> b!64444 (= e!42239 e!42238)))

(declare-fun c!8822 () Bool)

(assert (=> b!64444 (= c!8822 (validKeyInArray!0 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!13441 () Bool)

(declare-fun lt!27308 () (_ BitVec 32))

(assert (=> d!13441 (and (bvsge lt!27308 #b00000000000000000000000000000000) (bvsle lt!27308 (bvsub (size!2037 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!13441 (= lt!27308 e!42239)))

(declare-fun c!8821 () Bool)

(assert (=> d!13441 (= c!8821 (bvsge #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(assert (=> d!13441 (and (bvsle #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2037 (_keys!3745 newMap!16)) (size!2037 (_keys!3745 newMap!16))))))

(assert (=> d!13441 (= (arrayCountValidKeys!0 (_keys!3745 newMap!16) #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))) lt!27308)))

(declare-fun b!64442 () Bool)

(assert (=> b!64442 (= e!42238 (bvadd #b00000000000000000000000000000001 call!5192))))

(assert (= (and d!13441 c!8821) b!64441))

(assert (= (and d!13441 (not c!8821)) b!64444))

(assert (= (and b!64444 c!8822) b!64442))

(assert (= (and b!64444 (not c!8822)) b!64443))

(assert (= (or b!64442 b!64443) bm!5189))

(declare-fun m!58939 () Bool)

(assert (=> bm!5189 m!58939))

(assert (=> b!64444 m!58497))

(assert (=> b!64444 m!58497))

(assert (=> b!64444 m!58513))

(assert (=> b!64148 d!13441))

(declare-fun b!64446 () Bool)

(declare-fun e!42240 () Bool)

(declare-fun call!5193 () Bool)

(assert (=> b!64446 (= e!42240 call!5193)))

(declare-fun bm!5190 () Bool)

(assert (=> bm!5190 (= call!5193 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3745 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992)))))))

(declare-fun b!64447 () Bool)

(declare-fun e!42242 () Bool)

(assert (=> b!64447 (= e!42240 e!42242)))

(declare-fun lt!27309 () (_ BitVec 64))

(assert (=> b!64447 (= lt!27309 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!27310 () Unit!1755)

(assert (=> b!64447 (= lt!27310 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) lt!27309 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!64447 (arrayContainsKey!0 (_keys!3745 (v!2435 (underlying!237 thiss!992))) lt!27309 #b00000000000000000000000000000000)))

(declare-fun lt!27311 () Unit!1755)

(assert (=> b!64447 (= lt!27311 lt!27310)))

(declare-fun res!35122 () Bool)

(assert (=> b!64447 (= res!35122 (= (seekEntryOrOpen!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3745 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992)))) (Found!240 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!64447 (=> (not res!35122) (not e!42242))))

(declare-fun b!64448 () Bool)

(declare-fun e!42241 () Bool)

(assert (=> b!64448 (= e!42241 e!42240)))

(declare-fun c!8823 () Bool)

(assert (=> b!64448 (= c!8823 (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!64445 () Bool)

(assert (=> b!64445 (= e!42242 call!5193)))

(declare-fun d!13443 () Bool)

(declare-fun res!35123 () Bool)

(assert (=> d!13443 (=> res!35123 e!42241)))

(assert (=> d!13443 (= res!35123 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2037 (_keys!3745 (v!2435 (underlying!237 thiss!992))))))))

(assert (=> d!13443 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3745 (v!2435 (underlying!237 thiss!992))) (mask!6025 (v!2435 (underlying!237 thiss!992)))) e!42241)))

(assert (= (and d!13443 (not res!35123)) b!64448))

(assert (= (and b!64448 c!8823) b!64447))

(assert (= (and b!64448 (not c!8823)) b!64446))

(assert (= (and b!64447 res!35122) b!64445))

(assert (= (or b!64445 b!64446) bm!5190))

(declare-fun m!58941 () Bool)

(assert (=> bm!5190 m!58941))

(declare-fun m!58943 () Bool)

(assert (=> b!64447 m!58943))

(declare-fun m!58945 () Bool)

(assert (=> b!64447 m!58945))

(declare-fun m!58947 () Bool)

(assert (=> b!64447 m!58947))

(assert (=> b!64447 m!58943))

(declare-fun m!58949 () Bool)

(assert (=> b!64447 m!58949))

(assert (=> b!64448 m!58943))

(assert (=> b!64448 m!58943))

(declare-fun m!58951 () Bool)

(assert (=> b!64448 m!58951))

(assert (=> bm!5157 d!13443))

(declare-fun b!64466 () Bool)

(declare-fun lt!27316 () SeekEntryResult!240)

(assert (=> b!64466 (and (bvsge (index!3086 lt!27316) #b00000000000000000000000000000000) (bvslt (index!3086 lt!27316) (size!2037 (_keys!3745 newMap!16))))))

(declare-fun res!35132 () Bool)

(assert (=> b!64466 (= res!35132 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3086 lt!27316)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!42254 () Bool)

(assert (=> b!64466 (=> (not res!35132) (not e!42254))))

(declare-fun b!64467 () Bool)

(declare-fun e!42252 () Bool)

(assert (=> b!64467 (= e!42252 ((_ is Undefined!240) lt!27316))))

(declare-fun b!64468 () Bool)

(declare-fun e!42251 () Bool)

(assert (=> b!64468 (= e!42251 e!42252)))

(declare-fun c!8829 () Bool)

(assert (=> b!64468 (= c!8829 ((_ is MissingVacant!240) lt!27316))))

(declare-fun b!64469 () Bool)

(assert (=> b!64469 (= e!42251 e!42254)))

(declare-fun res!35133 () Bool)

(declare-fun call!5199 () Bool)

(assert (=> b!64469 (= res!35133 call!5199)))

(assert (=> b!64469 (=> (not res!35133) (not e!42254))))

(declare-fun b!64470 () Bool)

(declare-fun e!42253 () Bool)

(declare-fun call!5198 () Bool)

(assert (=> b!64470 (= e!42253 (not call!5198))))

(declare-fun b!64465 () Bool)

(declare-fun res!35134 () Bool)

(assert (=> b!64465 (=> (not res!35134) (not e!42253))))

(assert (=> b!64465 (= res!35134 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3089 lt!27316)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!64465 (and (bvsge (index!3089 lt!27316) #b00000000000000000000000000000000) (bvslt (index!3089 lt!27316) (size!2037 (_keys!3745 newMap!16))))))

(declare-fun d!13445 () Bool)

(assert (=> d!13445 e!42251))

(declare-fun c!8828 () Bool)

(assert (=> d!13445 (= c!8828 ((_ is MissingZero!240) lt!27316))))

(assert (=> d!13445 (= lt!27316 (seekEntryOrOpen!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (_keys!3745 newMap!16) (mask!6025 newMap!16)))))

(declare-fun lt!27317 () Unit!1755)

(declare-fun choose!359 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 64) Int) Unit!1755)

(assert (=> d!13445 (= lt!27317 (choose!359 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (defaultEntry!2109 newMap!16)))))

(assert (=> d!13445 (validMask!0 (mask!6025 newMap!16))))

(assert (=> d!13445 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (defaultEntry!2109 newMap!16)) lt!27317)))

(declare-fun bm!5195 () Bool)

(assert (=> bm!5195 (= call!5199 (inRange!0 (ite c!8828 (index!3086 lt!27316) (index!3089 lt!27316)) (mask!6025 newMap!16)))))

(declare-fun b!64471 () Bool)

(declare-fun res!35135 () Bool)

(assert (=> b!64471 (=> (not res!35135) (not e!42253))))

(assert (=> b!64471 (= res!35135 call!5199)))

(assert (=> b!64471 (= e!42252 e!42253)))

(declare-fun b!64472 () Bool)

(assert (=> b!64472 (= e!42254 (not call!5198))))

(declare-fun bm!5196 () Bool)

(assert (=> bm!5196 (= call!5198 (arrayContainsKey!0 (_keys!3745 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(assert (= (and d!13445 c!8828) b!64469))

(assert (= (and d!13445 (not c!8828)) b!64468))

(assert (= (and b!64469 res!35133) b!64466))

(assert (= (and b!64466 res!35132) b!64472))

(assert (= (and b!64468 c!8829) b!64471))

(assert (= (and b!64468 (not c!8829)) b!64467))

(assert (= (and b!64471 res!35135) b!64465))

(assert (= (and b!64465 res!35134) b!64470))

(assert (= (or b!64469 b!64471) bm!5195))

(assert (= (or b!64472 b!64470) bm!5196))

(assert (=> bm!5196 m!58191))

(assert (=> bm!5196 m!58307))

(declare-fun m!58953 () Bool)

(assert (=> bm!5195 m!58953))

(assert (=> d!13445 m!58191))

(assert (=> d!13445 m!58309))

(assert (=> d!13445 m!58191))

(declare-fun m!58955 () Bool)

(assert (=> d!13445 m!58955))

(assert (=> d!13445 m!58529))

(declare-fun m!58957 () Bool)

(assert (=> b!64466 m!58957))

(declare-fun m!58959 () Bool)

(assert (=> b!64465 m!58959))

(assert (=> bm!5118 d!13445))

(declare-fun b!64473 () Bool)

(declare-fun e!42257 () Bool)

(declare-fun e!42256 () Bool)

(assert (=> b!64473 (= e!42257 e!42256)))

(declare-fun c!8830 () Bool)

(assert (=> b!64473 (= c!8830 (validKeyInArray!0 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!64474 () Bool)

(declare-fun e!42255 () Bool)

(assert (=> b!64474 (= e!42255 (contains!705 Nil!1467 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!64476 () Bool)

(declare-fun e!42258 () Bool)

(assert (=> b!64476 (= e!42258 e!42257)))

(declare-fun res!35138 () Bool)

(assert (=> b!64476 (=> (not res!35138) (not e!42257))))

(assert (=> b!64476 (= res!35138 (not e!42255))))

(declare-fun res!35137 () Bool)

(assert (=> b!64476 (=> (not res!35137) (not e!42255))))

(assert (=> b!64476 (= res!35137 (validKeyInArray!0 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!5197 () Bool)

(declare-fun call!5200 () Bool)

(assert (=> bm!5197 (= call!5200 (arrayNoDuplicates!0 (_keys!3745 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!8830 (Cons!1466 (select (arr!1804 (_keys!3745 newMap!16)) #b00000000000000000000000000000000) Nil!1467) Nil!1467)))))

(declare-fun b!64477 () Bool)

(assert (=> b!64477 (= e!42256 call!5200)))

(declare-fun b!64475 () Bool)

(assert (=> b!64475 (= e!42256 call!5200)))

(declare-fun d!13447 () Bool)

(declare-fun res!35136 () Bool)

(assert (=> d!13447 (=> res!35136 e!42258)))

(assert (=> d!13447 (= res!35136 (bvsge #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))))))

(assert (=> d!13447 (= (arrayNoDuplicates!0 (_keys!3745 newMap!16) #b00000000000000000000000000000000 Nil!1467) e!42258)))

(assert (= (and d!13447 (not res!35136)) b!64476))

(assert (= (and b!64476 res!35137) b!64474))

(assert (= (and b!64476 res!35138) b!64473))

(assert (= (and b!64473 c!8830) b!64477))

(assert (= (and b!64473 (not c!8830)) b!64475))

(assert (= (or b!64477 b!64475) bm!5197))

(assert (=> b!64473 m!58497))

(assert (=> b!64473 m!58497))

(assert (=> b!64473 m!58513))

(assert (=> b!64474 m!58497))

(assert (=> b!64474 m!58497))

(declare-fun m!58961 () Bool)

(assert (=> b!64474 m!58961))

(assert (=> b!64476 m!58497))

(assert (=> b!64476 m!58497))

(assert (=> b!64476 m!58513))

(assert (=> bm!5197 m!58497))

(declare-fun m!58963 () Bool)

(assert (=> bm!5197 m!58963))

(assert (=> b!64150 d!13447))

(declare-fun d!13449 () Bool)

(assert (=> d!13449 (= (+!84 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) (tuple2!2079 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) lt!27018 (zeroValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27320 () Unit!1755)

(declare-fun choose!360 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 V!2875 Int) Unit!1755)

(assert (=> d!13449 (= lt!27320 (choose!360 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) lt!27018 (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2109 newMap!16)))))

(assert (=> d!13449 (validMask!0 (mask!6025 newMap!16))))

(assert (=> d!13449 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) lt!27018 (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2109 newMap!16)) lt!27320)))

(declare-fun bs!2800 () Bool)

(assert (= bs!2800 d!13449))

(assert (=> bs!2800 m!58315))

(assert (=> bs!2800 m!58209))

(declare-fun m!58965 () Bool)

(assert (=> bs!2800 m!58965))

(assert (=> bs!2800 m!58315))

(declare-fun m!58967 () Bool)

(assert (=> bs!2800 m!58967))

(assert (=> bs!2800 m!58529))

(assert (=> bs!2800 m!58209))

(declare-fun m!58969 () Bool)

(assert (=> bs!2800 m!58969))

(assert (=> b!64030 d!13449))

(declare-fun d!13451 () Bool)

(assert (=> d!13451 (= (validKeyInArray!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!64141 d!13451))

(declare-fun b!64512 () Bool)

(declare-fun res!35157 () Bool)

(declare-fun e!42282 () Bool)

(assert (=> b!64512 (=> (not res!35157) (not e!42282))))

(declare-fun lt!27397 () tuple2!2076)

(assert (=> b!64512 (= res!35157 (valid!266 (_2!1048 lt!27397)))))

(declare-fun call!5212 () SeekEntryResult!240)

(declare-fun bm!5206 () Bool)

(assert (=> bm!5206 (= call!5212 (seekEntryOrOpen!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (_keys!3745 newMap!16) (mask!6025 newMap!16)))))

(declare-fun b!64513 () Bool)

(declare-fun e!42275 () Bool)

(declare-fun lt!27408 () SeekEntryResult!240)

(assert (=> b!64513 (= e!42275 ((_ is Undefined!240) lt!27408))))

(declare-fun b!64514 () Bool)

(declare-fun res!35160 () Bool)

(assert (=> b!64514 (= res!35160 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3089 lt!27408)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!42277 () Bool)

(assert (=> b!64514 (=> (not res!35160) (not e!42277))))

(declare-fun bm!5207 () Bool)

(declare-fun call!5210 () Bool)

(assert (=> bm!5207 (= call!5210 (arrayContainsKey!0 (_keys!3745 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!64515 () Bool)

(assert (=> b!64515 (= e!42277 (not call!5210))))

(declare-fun b!64516 () Bool)

(declare-fun res!35161 () Bool)

(assert (=> b!64516 (=> (not res!35161) (not e!42282))))

(assert (=> b!64516 (= res!35161 (contains!704 (map!1123 (_2!1048 lt!27397)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun b!64517 () Bool)

(declare-fun res!35158 () Bool)

(declare-fun e!42280 () Bool)

(assert (=> b!64517 (=> (not res!35158) (not e!42280))))

(assert (=> b!64517 (= res!35158 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3086 lt!27408)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!64518 () Bool)

(assert (=> b!64518 (= e!42275 e!42277)))

(declare-fun res!35162 () Bool)

(declare-fun call!5209 () Bool)

(assert (=> b!64518 (= res!35162 call!5209)))

(assert (=> b!64518 (=> (not res!35162) (not e!42277))))

(declare-fun b!64519 () Bool)

(declare-fun e!42279 () Unit!1755)

(declare-fun Unit!1777 () Unit!1755)

(assert (=> b!64519 (= e!42279 Unit!1777)))

(declare-fun lt!27388 () Unit!1755)

(declare-fun lemmaArrayContainsKeyThenInListMap!8 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 64) (_ BitVec 32) Int) Unit!1755)

(assert (=> b!64519 (= lt!27388 (lemmaArrayContainsKeyThenInListMap!8 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(assert (=> b!64519 (contains!704 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355))))

(declare-fun lt!27392 () Unit!1755)

(assert (=> b!64519 (= lt!27392 lt!27388)))

(assert (=> b!64519 false))

(declare-fun b!64520 () Bool)

(declare-fun e!42278 () Unit!1755)

(declare-fun lt!27385 () Unit!1755)

(assert (=> b!64520 (= e!42278 lt!27385)))

(assert (=> b!64520 (= lt!27385 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (defaultEntry!2109 newMap!16)))))

(assert (=> b!64520 (= lt!27408 call!5212)))

(declare-fun c!8839 () Bool)

(assert (=> b!64520 (= c!8839 ((_ is MissingZero!240) lt!27408))))

(declare-fun e!42281 () Bool)

(assert (=> b!64520 e!42281))

(declare-fun b!64521 () Bool)

(declare-fun c!8840 () Bool)

(assert (=> b!64521 (= c!8840 ((_ is MissingVacant!240) lt!27408))))

(assert (=> b!64521 (= e!42281 e!42275)))

(declare-fun b!64522 () Bool)

(assert (=> b!64522 (= e!42280 (not call!5210))))

(declare-fun d!13453 () Bool)

(assert (=> d!13453 e!42282))

(declare-fun res!35163 () Bool)

(assert (=> d!13453 (=> (not res!35163) (not e!42282))))

(assert (=> d!13453 (= res!35163 (_1!1048 lt!27397))))

(assert (=> d!13453 (= lt!27397 (tuple2!2077 true (LongMapFixedSize!643 (defaultEntry!2109 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (bvadd (_size!370 newMap!16) #b00000000000000000000000000000001) (array!3775 (store (arr!1804 (_keys!3745 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) (size!2037 (_keys!3745 newMap!16))) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16))) (_vacant!370 newMap!16))))))

(declare-fun lt!27403 () Unit!1755)

(declare-fun lt!27402 () Unit!1755)

(assert (=> d!13453 (= lt!27403 lt!27402)))

(declare-fun lt!27409 () array!3776)

(declare-fun lt!27410 () array!3774)

(assert (=> d!13453 (contains!704 (getCurrentListMap!409 lt!27410 lt!27409 (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) (select (store (arr!1804 (_keys!3745 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001))))))

(assert (=> d!13453 (= lt!27402 (lemmaValidKeyInArrayIsInListMap!76 lt!27410 lt!27409 (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (defaultEntry!2109 newMap!16)))))

(assert (=> d!13453 (= lt!27409 (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16))))))

(assert (=> d!13453 (= lt!27410 (array!3775 (store (arr!1804 (_keys!3745 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) (size!2037 (_keys!3745 newMap!16))))))

(declare-fun lt!27381 () Unit!1755)

(declare-fun lt!27398 () Unit!1755)

(assert (=> d!13453 (= lt!27381 lt!27398)))

(declare-fun lt!27391 () array!3774)

(assert (=> d!13453 (= (arrayCountValidKeys!0 lt!27391 (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (bvadd (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!3774 (_ BitVec 32)) Unit!1755)

(assert (=> d!13453 (= lt!27398 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!27391 (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001))))))

(assert (=> d!13453 (= lt!27391 (array!3775 (store (arr!1804 (_keys!3745 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) (size!2037 (_keys!3745 newMap!16))))))

(declare-fun lt!27389 () Unit!1755)

(declare-fun lt!27390 () Unit!1755)

(assert (=> d!13453 (= lt!27389 lt!27390)))

(declare-fun lt!27396 () array!3774)

(assert (=> d!13453 (arrayContainsKey!0 lt!27396 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!13453 (= lt!27390 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!27396 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001))))))

(assert (=> d!13453 (= lt!27396 (array!3775 (store (arr!1804 (_keys!3745 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) (size!2037 (_keys!3745 newMap!16))))))

(declare-fun lt!27407 () Unit!1755)

(declare-fun lt!27384 () Unit!1755)

(assert (=> d!13453 (= lt!27407 lt!27384)))

(assert (=> d!13453 (= (+!84 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!409 (array!3775 (store (arr!1804 (_keys!3745 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) (size!2037 (_keys!3745 newMap!16))) (array!3777 (store (arr!1805 (_values!2092 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (ValueCellFull!867 (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2038 (_values!2092 newMap!16))) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!8 (array!3774 array!3776 (_ BitVec 32) (_ BitVec 32) V!2875 V!2875 (_ BitVec 32) (_ BitVec 64) V!2875 Int) Unit!1755)

(assert (=> d!13453 (= lt!27384 (lemmaAddValidKeyToArrayThenAddPairToListMap!8 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2109 newMap!16)))))

(declare-fun lt!27387 () Unit!1755)

(declare-fun lt!27383 () Unit!1755)

(assert (=> d!13453 (= lt!27387 lt!27383)))

(assert (=> d!13453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!3775 (store (arr!1804 (_keys!3745 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) (size!2037 (_keys!3745 newMap!16))) (mask!6025 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!3774 (_ BitVec 32) (_ BitVec 32)) Unit!1755)

(assert (=> d!13453 (= lt!27383 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (_keys!3745 newMap!16) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (mask!6025 newMap!16)))))

(declare-fun lt!27382 () Unit!1755)

(declare-fun lt!27399 () Unit!1755)

(assert (=> d!13453 (= lt!27382 lt!27399)))

(assert (=> d!13453 (= (arrayCountValidKeys!0 (array!3775 (store (arr!1804 (_keys!3745 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) (size!2037 (_keys!3745 newMap!16))) #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!3745 newMap!16) #b00000000000000000000000000000000 (size!2037 (_keys!3745 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!3774 (_ BitVec 32) (_ BitVec 64)) Unit!1755)

(assert (=> d!13453 (= lt!27399 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!3745 newMap!16) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun lt!27394 () Unit!1755)

(declare-fun lt!27386 () Unit!1755)

(assert (=> d!13453 (= lt!27394 lt!27386)))

(declare-fun lt!27395 () (_ BitVec 32))

(declare-fun lt!27393 () List!1470)

(assert (=> d!13453 (arrayNoDuplicates!0 (array!3775 (store (arr!1804 (_keys!3745 newMap!16)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) (size!2037 (_keys!3745 newMap!16))) lt!27395 lt!27393)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!3774 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1470) Unit!1755)

(assert (=> d!13453 (= lt!27386 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!3745 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001)) lt!27395 lt!27393))))

(assert (=> d!13453 (= lt!27393 Nil!1467)))

(assert (=> d!13453 (= lt!27395 #b00000000000000000000000000000000)))

(declare-fun lt!27406 () Unit!1755)

(assert (=> d!13453 (= lt!27406 e!42279)))

(declare-fun c!8841 () Bool)

(assert (=> d!13453 (= c!8841 (arrayContainsKey!0 (_keys!3745 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!27400 () Unit!1755)

(assert (=> d!13453 (= lt!27400 e!42278)))

(declare-fun c!8842 () Bool)

(assert (=> d!13453 (= c!8842 (contains!704 (getCurrentListMap!409 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2109 newMap!16)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (=> d!13453 (valid!266 newMap!16)))

(assert (=> d!13453 (= (updateHelperNewKey!18 newMap!16 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!8723 (index!3089 lt!27001) (index!3086 lt!27001))) lt!27397)))

(declare-fun bm!5208 () Bool)

(declare-fun call!5211 () Bool)

(assert (=> bm!5208 (= call!5209 call!5211)))

(declare-fun bm!5209 () Bool)

(declare-fun lt!27404 () SeekEntryResult!240)

(assert (=> bm!5209 (= call!5211 (inRange!0 (ite c!8842 (index!3087 lt!27404) (ite c!8839 (index!3086 lt!27408) (index!3089 lt!27408))) (mask!6025 newMap!16)))))

(declare-fun b!64523 () Bool)

(assert (=> b!64523 (= e!42282 (= (map!1123 (_2!1048 lt!27397)) (+!84 (map!1123 newMap!16) (tuple2!2079 (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (get!1103 (select (arr!1805 (_values!2092 (v!2435 (underlying!237 thiss!992)))) from!355) (dynLambda!318 (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!42276 () Bool)

(declare-fun b!64524 () Bool)

(assert (=> b!64524 (= e!42276 (= (select (arr!1804 (_keys!3745 newMap!16)) (index!3087 lt!27404)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(declare-fun b!64525 () Bool)

(declare-fun res!35164 () Bool)

(assert (=> b!64525 (=> (not res!35164) (not e!42280))))

(assert (=> b!64525 (= res!35164 call!5209)))

(assert (=> b!64525 (= e!42281 e!42280)))

(declare-fun b!64526 () Bool)

(declare-fun Unit!1778 () Unit!1755)

(assert (=> b!64526 (= e!42279 Unit!1778)))

(declare-fun b!64527 () Bool)

(declare-fun res!35165 () Bool)

(assert (=> b!64527 (= res!35165 call!5211)))

(assert (=> b!64527 (=> (not res!35165) (not e!42276))))

(declare-fun b!64528 () Bool)

(declare-fun Unit!1779 () Unit!1755)

(assert (=> b!64528 (= e!42278 Unit!1779)))

(declare-fun lt!27401 () Unit!1755)

(assert (=> b!64528 (= lt!27401 (lemmaInListMapThenSeekEntryOrOpenFindsIt!18 (_keys!3745 newMap!16) (_values!2092 newMap!16) (mask!6025 newMap!16) (extraKeys!1984 newMap!16) (zeroValue!2019 newMap!16) (minValue!2019 newMap!16) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355) (defaultEntry!2109 newMap!16)))))

(assert (=> b!64528 (= lt!27404 call!5212)))

(declare-fun res!35159 () Bool)

(assert (=> b!64528 (= res!35159 ((_ is Found!240) lt!27404))))

(assert (=> b!64528 (=> (not res!35159) (not e!42276))))

(assert (=> b!64528 e!42276))

(declare-fun lt!27405 () Unit!1755)

(assert (=> b!64528 (= lt!27405 lt!27401)))

(assert (=> b!64528 false))

(assert (= (and d!13453 c!8842) b!64528))

(assert (= (and d!13453 (not c!8842)) b!64520))

(assert (= (and b!64528 res!35159) b!64527))

(assert (= (and b!64527 res!35165) b!64524))

(assert (= (and b!64520 c!8839) b!64525))

(assert (= (and b!64520 (not c!8839)) b!64521))

(assert (= (and b!64525 res!35164) b!64517))

(assert (= (and b!64517 res!35158) b!64522))

(assert (= (and b!64521 c!8840) b!64518))

(assert (= (and b!64521 (not c!8840)) b!64513))

(assert (= (and b!64518 res!35162) b!64514))

(assert (= (and b!64514 res!35160) b!64515))

(assert (= (or b!64525 b!64518) bm!5208))

(assert (= (or b!64522 b!64515) bm!5207))

(assert (= (or b!64527 bm!5208) bm!5209))

(assert (= (or b!64528 b!64520) bm!5206))

(assert (= (and d!13453 c!8841) b!64519))

(assert (= (and d!13453 (not c!8841)) b!64526))

(assert (= (and d!13453 res!35163) b!64512))

(assert (= (and b!64512 res!35157) b!64516))

(assert (= (and b!64516 res!35161) b!64523))

(assert (=> bm!5206 m!58191))

(assert (=> bm!5206 m!58309))

(assert (=> b!64519 m!58191))

(declare-fun m!58971 () Bool)

(assert (=> b!64519 m!58971))

(assert (=> b!64519 m!58315))

(assert (=> b!64519 m!58315))

(assert (=> b!64519 m!58191))

(assert (=> b!64519 m!58317))

(assert (=> b!64528 m!58191))

(assert (=> b!64528 m!58331))

(declare-fun m!58973 () Bool)

(assert (=> b!64516 m!58973))

(assert (=> b!64516 m!58973))

(assert (=> b!64516 m!58191))

(declare-fun m!58975 () Bool)

(assert (=> b!64516 m!58975))

(declare-fun m!58977 () Bool)

(assert (=> b!64517 m!58977))

(assert (=> b!64523 m!58973))

(assert (=> b!64523 m!58223))

(assert (=> b!64523 m!58223))

(declare-fun m!58979 () Bool)

(assert (=> b!64523 m!58979))

(declare-fun m!58981 () Bool)

(assert (=> b!64512 m!58981))

(declare-fun m!58983 () Bool)

(assert (=> bm!5209 m!58983))

(assert (=> b!64520 m!58191))

(assert (=> b!64520 m!58335))

(assert (=> bm!5207 m!58191))

(assert (=> bm!5207 m!58307))

(declare-fun m!58985 () Bool)

(assert (=> d!13453 m!58985))

(assert (=> d!13453 m!58191))

(assert (=> d!13453 m!58209))

(declare-fun m!58987 () Bool)

(assert (=> d!13453 m!58987))

(assert (=> d!13453 m!58191))

(declare-fun m!58989 () Bool)

(assert (=> d!13453 m!58989))

(assert (=> d!13453 m!58191))

(declare-fun m!58991 () Bool)

(assert (=> d!13453 m!58991))

(declare-fun m!58993 () Bool)

(assert (=> d!13453 m!58993))

(declare-fun m!58995 () Bool)

(assert (=> d!13453 m!58995))

(declare-fun m!58997 () Bool)

(assert (=> d!13453 m!58997))

(declare-fun m!58999 () Bool)

(assert (=> d!13453 m!58999))

(declare-fun m!59001 () Bool)

(assert (=> d!13453 m!59001))

(assert (=> d!13453 m!58191))

(declare-fun m!59003 () Bool)

(assert (=> d!13453 m!59003))

(assert (=> d!13453 m!58191))

(declare-fun m!59005 () Bool)

(assert (=> d!13453 m!59005))

(assert (=> d!13453 m!58997))

(assert (=> d!13453 m!58315))

(assert (=> d!13453 m!58687))

(assert (=> d!13453 m!58191))

(declare-fun m!59007 () Bool)

(assert (=> d!13453 m!59007))

(declare-fun m!59009 () Bool)

(assert (=> d!13453 m!59009))

(assert (=> d!13453 m!58999))

(declare-fun m!59011 () Bool)

(assert (=> d!13453 m!59011))

(assert (=> d!13453 m!58419))

(assert (=> d!13453 m!58191))

(assert (=> d!13453 m!58307))

(assert (=> d!13453 m!58315))

(declare-fun m!59013 () Bool)

(assert (=> d!13453 m!59013))

(declare-fun m!59015 () Bool)

(assert (=> d!13453 m!59015))

(declare-fun m!59017 () Bool)

(assert (=> d!13453 m!59017))

(assert (=> d!13453 m!58217))

(assert (=> d!13453 m!58315))

(assert (=> d!13453 m!58191))

(assert (=> d!13453 m!58317))

(declare-fun m!59019 () Bool)

(assert (=> d!13453 m!59019))

(declare-fun m!59021 () Bool)

(assert (=> b!64514 m!59021))

(declare-fun m!59023 () Bool)

(assert (=> b!64524 m!59023))

(assert (=> bm!5124 d!13453))

(assert (=> bm!5153 d!13383))

(declare-fun d!13455 () Bool)

(declare-fun res!35170 () Bool)

(declare-fun e!42287 () Bool)

(assert (=> d!13455 (=> res!35170 e!42287)))

(assert (=> d!13455 (= res!35170 (and ((_ is Cons!1465) (toList!713 lt!26901)) (= (_1!1049 (h!2049 (toList!713 lt!26901))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355))))))

(assert (=> d!13455 (= (containsKey!130 (toList!713 lt!26901) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)) e!42287)))

(declare-fun b!64533 () Bool)

(declare-fun e!42288 () Bool)

(assert (=> b!64533 (= e!42287 e!42288)))

(declare-fun res!35171 () Bool)

(assert (=> b!64533 (=> (not res!35171) (not e!42288))))

(assert (=> b!64533 (= res!35171 (and (or (not ((_ is Cons!1465) (toList!713 lt!26901))) (bvsle (_1!1049 (h!2049 (toList!713 lt!26901))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355))) ((_ is Cons!1465) (toList!713 lt!26901)) (bvslt (_1!1049 (h!2049 (toList!713 lt!26901))) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355))))))

(declare-fun b!64534 () Bool)

(assert (=> b!64534 (= e!42288 (containsKey!130 (t!4887 (toList!713 lt!26901)) (select (arr!1804 (_keys!3745 (v!2435 (underlying!237 thiss!992)))) from!355)))))

(assert (= (and d!13455 (not res!35170)) b!64533))

(assert (= (and b!64533 res!35171) b!64534))

(assert (=> b!64534 m!58191))

(declare-fun m!59025 () Bool)

(assert (=> b!64534 m!59025))

(assert (=> d!13283 d!13455))

(declare-fun mapIsEmpty!2981 () Bool)

(declare-fun mapRes!2981 () Bool)

(assert (=> mapIsEmpty!2981 mapRes!2981))

(declare-fun condMapEmpty!2981 () Bool)

(declare-fun mapDefault!2981 () ValueCell!867)

(assert (=> mapNonEmpty!2980 (= condMapEmpty!2981 (= mapRest!2980 ((as const (Array (_ BitVec 32) ValueCell!867)) mapDefault!2981)))))

(declare-fun e!42289 () Bool)

(assert (=> mapNonEmpty!2980 (= tp!8182 (and e!42289 mapRes!2981))))

(declare-fun mapNonEmpty!2981 () Bool)

(declare-fun tp!8183 () Bool)

(declare-fun e!42290 () Bool)

(assert (=> mapNonEmpty!2981 (= mapRes!2981 (and tp!8183 e!42290))))

(declare-fun mapKey!2981 () (_ BitVec 32))

(declare-fun mapValue!2981 () ValueCell!867)

(declare-fun mapRest!2981 () (Array (_ BitVec 32) ValueCell!867))

(assert (=> mapNonEmpty!2981 (= mapRest!2980 (store mapRest!2981 mapKey!2981 mapValue!2981))))

(declare-fun b!64535 () Bool)

(assert (=> b!64535 (= e!42290 tp_is_empty!2421)))

(declare-fun b!64536 () Bool)

(assert (=> b!64536 (= e!42289 tp_is_empty!2421)))

(assert (= (and mapNonEmpty!2980 condMapEmpty!2981) mapIsEmpty!2981))

(assert (= (and mapNonEmpty!2980 (not condMapEmpty!2981)) mapNonEmpty!2981))

(assert (= (and mapNonEmpty!2981 ((_ is ValueCellFull!867) mapValue!2981)) b!64535))

(assert (= (and mapNonEmpty!2980 ((_ is ValueCellFull!867) mapDefault!2981)) b!64536))

(declare-fun m!59027 () Bool)

(assert (=> mapNonEmpty!2981 m!59027))

(declare-fun mapIsEmpty!2982 () Bool)

(declare-fun mapRes!2982 () Bool)

(assert (=> mapIsEmpty!2982 mapRes!2982))

(declare-fun condMapEmpty!2982 () Bool)

(declare-fun mapDefault!2982 () ValueCell!867)

(assert (=> mapNonEmpty!2979 (= condMapEmpty!2982 (= mapRest!2979 ((as const (Array (_ BitVec 32) ValueCell!867)) mapDefault!2982)))))

(declare-fun e!42291 () Bool)

(assert (=> mapNonEmpty!2979 (= tp!8181 (and e!42291 mapRes!2982))))

(declare-fun mapNonEmpty!2982 () Bool)

(declare-fun tp!8184 () Bool)

(declare-fun e!42292 () Bool)

(assert (=> mapNonEmpty!2982 (= mapRes!2982 (and tp!8184 e!42292))))

(declare-fun mapValue!2982 () ValueCell!867)

(declare-fun mapKey!2982 () (_ BitVec 32))

(declare-fun mapRest!2982 () (Array (_ BitVec 32) ValueCell!867))

(assert (=> mapNonEmpty!2982 (= mapRest!2979 (store mapRest!2982 mapKey!2982 mapValue!2982))))

(declare-fun b!64537 () Bool)

(assert (=> b!64537 (= e!42292 tp_is_empty!2421)))

(declare-fun b!64538 () Bool)

(assert (=> b!64538 (= e!42291 tp_is_empty!2421)))

(assert (= (and mapNonEmpty!2979 condMapEmpty!2982) mapIsEmpty!2982))

(assert (= (and mapNonEmpty!2979 (not condMapEmpty!2982)) mapNonEmpty!2982))

(assert (= (and mapNonEmpty!2982 ((_ is ValueCellFull!867) mapValue!2982)) b!64537))

(assert (= (and mapNonEmpty!2979 ((_ is ValueCellFull!867) mapDefault!2982)) b!64538))

(declare-fun m!59029 () Bool)

(assert (=> mapNonEmpty!2982 m!59029))

(declare-fun b_lambda!2897 () Bool)

(assert (= b_lambda!2889 (or (and b!63859 b_free!2009 (= (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) (defaultEntry!2109 newMap!16))) (and b!63854 b_free!2011) b_lambda!2897)))

(declare-fun b_lambda!2899 () Bool)

(assert (= b_lambda!2893 (or (and b!63859 b_free!2009) (and b!63854 b_free!2011 (= (defaultEntry!2109 newMap!16) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))))) b_lambda!2899)))

(declare-fun b_lambda!2901 () Bool)

(assert (= b_lambda!2887 (or (and b!63859 b_free!2009 (= (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) (defaultEntry!2109 newMap!16))) (and b!63854 b_free!2011) b_lambda!2901)))

(declare-fun b_lambda!2903 () Bool)

(assert (= b_lambda!2895 (or (and b!63859 b_free!2009 (= (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))) (defaultEntry!2109 newMap!16))) (and b!63854 b_free!2011) b_lambda!2903)))

(declare-fun b_lambda!2905 () Bool)

(assert (= b_lambda!2891 (or (and b!63859 b_free!2009) (and b!63854 b_free!2011 (= (defaultEntry!2109 newMap!16) (defaultEntry!2109 (v!2435 (underlying!237 thiss!992))))) b_lambda!2905)))

(check-sat (not b_lambda!2899) (not b!64416) (not bm!5195) (not b!64189) (not d!13377) (not d!13387) (not d!13375) (not b_lambda!2903) (not b!64519) (not b!64286) (not b!64241) (not b!64430) (not bm!5169) (not d!13383) (not b!64200) (not bm!5166) (not b!64328) (not d!13401) (not d!13449) (not d!13385) (not d!13319) (not d!13413) (not b!64444) (not b!64197) (not b!64432) (not b!64201) (not b!64222) (not b!64425) (not d!13399) (not d!13323) (not b!64246) (not d!13327) (not b!64188) (not d!13373) (not bm!5173) (not b!64214) (not b!64190) (not d!13435) (not b!64274) (not d!13381) (not b!64528) b_and!3947 (not b!64383) (not d!13409) (not b!64304) (not b!64281) (not b!64375) (not b!64417) (not d!13391) (not b!64361) tp_is_empty!2421 (not b!64303) (not b!64302) (not b!64226) (not b_lambda!2905) (not b!64311) (not b!64431) (not d!13395) (not b!64221) (not d!13321) (not bm!5164) (not b!64207) (not d!13415) (not d!13329) (not b!64447) (not bm!5170) (not d!13367) (not b!64385) (not b!64364) (not b!64423) (not b!64415) (not b!64324) (not b_next!2011) (not d!13351) (not b!64407) (not d!13417) (not b!64305) (not b!64359) (not d!13397) (not d!13357) (not bm!5196) (not bm!5209) (not b!64424) (not b!64473) (not d!13339) (not bm!5190) (not b!64285) (not d!13393) (not b!64323) (not b!64319) (not bm!5207) (not mapNonEmpty!2982) (not bm!5182) (not b!64368) (not b!64331) (not bm!5161) (not b_lambda!2881) (not b!64223) (not b!64275) (not b!64413) (not d!13431) (not d!13389) (not b!64389) (not b!64365) (not b!64263) (not bm!5180) (not b!64403) (not b!64321) (not b!64206) (not d!13405) (not b!64195) (not d!13349) (not bm!5197) (not b!64395) (not bm!5206) (not b!64334) (not b_next!2009) (not b!64306) (not bm!5172) (not bm!5168) (not b!64297) (not b!64387) (not b!64405) (not b!64476) (not d!13445) (not d!13453) (not bm!5163) (not b!64248) (not b!64448) (not b!64390) (not d!13337) (not b!64427) (not d!13369) (not b!64384) (not b!64388) (not b!64291) (not b!64362) (not b!64474) (not b_lambda!2885) (not d!13427) (not b!64218) (not b!64252) (not d!13345) (not b!64199) (not b!64428) (not d!13423) (not b!64396) (not bm!5185) (not d!13425) (not bm!5189) (not b!64312) (not b!64412) (not b!64523) (not b!64512) (not b!64534) (not b_lambda!2897) (not b!64216) (not b!64369) (not mapNonEmpty!2981) (not b!64408) b_and!3945 (not b!64332) (not d!13379) (not d!13437) (not b!64294) (not b!64245) (not b!64224) (not d!13335) (not b!64360) (not b!64520) (not bm!5183) (not b!64380) (not d!13419) (not d!13365) (not d!13343) (not d!13421) (not d!13361) (not b!64219) (not d!13411) (not b!64377) (not d!13407) (not b!64410) (not b!64382) (not bm!5175) (not b!64196) (not b!64516) (not bm!5179) (not b_lambda!2901) (not d!13403) (not b!64381))
(check-sat b_and!3945 b_and!3947 (not b_next!2009) (not b_next!2011))
