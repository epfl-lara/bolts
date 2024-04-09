; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12856 () Bool)

(assert start!12856)

(declare-fun b!111938 () Bool)

(declare-fun b_free!2573 () Bool)

(declare-fun b_next!2573 () Bool)

(assert (=> b!111938 (= b_free!2573 (not b_next!2573))))

(declare-fun tp!10066 () Bool)

(declare-fun b_and!6893 () Bool)

(assert (=> b!111938 (= tp!10066 b_and!6893)))

(declare-fun b!111932 () Bool)

(declare-fun b_free!2575 () Bool)

(declare-fun b_next!2575 () Bool)

(assert (=> b!111932 (= b_free!2575 (not b_next!2575))))

(declare-fun tp!10068 () Bool)

(declare-fun b_and!6895 () Bool)

(assert (=> b!111932 (= tp!10068 b_and!6895)))

(declare-fun b!111926 () Bool)

(declare-fun res!55240 () Bool)

(declare-fun e!72781 () Bool)

(assert (=> b!111926 (=> res!55240 e!72781)))

(declare-datatypes ((V!3251 0))(
  ( (V!3252 (val!1396 Int)) )
))
(declare-datatypes ((array!4402 0))(
  ( (array!4403 (arr!2086 (Array (_ BitVec 32) (_ BitVec 64))) (size!2344 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1008 0))(
  ( (ValueCellFull!1008 (v!2944 V!3251)) (EmptyCell!1008) )
))
(declare-datatypes ((array!4404 0))(
  ( (array!4405 (arr!2087 (Array (_ BitVec 32) ValueCell!1008)) (size!2345 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!924 0))(
  ( (LongMapFixedSize!925 (defaultEntry!2648 Int) (mask!6826 (_ BitVec 32)) (extraKeys!2441 (_ BitVec 32)) (zeroValue!2517 V!3251) (minValue!2517 V!3251) (_size!511 (_ BitVec 32)) (_keys!4366 array!4402) (_values!2631 array!4404) (_vacant!511 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!724 0))(
  ( (Cell!725 (v!2945 LongMapFixedSize!924)) )
))
(declare-datatypes ((LongMap!724 0))(
  ( (LongMap!725 (underlying!373 Cell!724)) )
))
(declare-fun thiss!992 () LongMap!724)

(assert (=> b!111926 (= res!55240 (or (not (= (size!2345 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6826 (v!2945 (underlying!373 thiss!992)))))) (not (= (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (size!2345 (_values!2631 (v!2945 (underlying!373 thiss!992)))))) (bvslt (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun res!55243 () Bool)

(declare-fun e!72787 () Bool)

(assert (=> start!12856 (=> (not res!55243) (not e!72787))))

(declare-fun valid!422 (LongMap!724) Bool)

(assert (=> start!12856 (= res!55243 (valid!422 thiss!992))))

(assert (=> start!12856 e!72787))

(declare-fun e!72775 () Bool)

(assert (=> start!12856 e!72775))

(assert (=> start!12856 true))

(declare-fun e!72791 () Bool)

(assert (=> start!12856 e!72791))

(declare-fun b!111927 () Bool)

(declare-fun e!72785 () Bool)

(declare-fun e!72777 () Bool)

(assert (=> b!111927 (= e!72785 e!72777)))

(declare-fun res!55242 () Bool)

(assert (=> b!111927 (=> (not res!55242) (not e!72777))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!111927 (= res!55242 (and (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!57797 () V!3251)

(declare-fun get!1362 (ValueCell!1008 V!3251) V!3251)

(declare-fun dynLambda!394 (Int (_ BitVec 64)) V!3251)

(assert (=> b!111927 (= lt!57797 (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) from!355) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!111928 () Bool)

(declare-fun res!55246 () Bool)

(assert (=> b!111928 (=> (not res!55246) (not e!72787))))

(declare-fun newMap!16 () LongMapFixedSize!924)

(assert (=> b!111928 (= res!55246 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6826 newMap!16)) (_size!511 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!111929 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4402 (_ BitVec 32)) Bool)

(assert (=> b!111929 (= e!72781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!111930 () Bool)

(declare-fun e!72783 () Bool)

(declare-fun e!72788 () Bool)

(declare-fun mapRes!4025 () Bool)

(assert (=> b!111930 (= e!72783 (and e!72788 mapRes!4025))))

(declare-fun condMapEmpty!4026 () Bool)

(declare-fun mapDefault!4026 () ValueCell!1008)

(assert (=> b!111930 (= condMapEmpty!4026 (= (arr!2087 (_values!2631 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1008)) mapDefault!4026)))))

(declare-fun b!111931 () Bool)

(declare-fun res!55241 () Bool)

(assert (=> b!111931 (=> (not res!55241) (not e!72787))))

(declare-fun valid!423 (LongMapFixedSize!924) Bool)

(assert (=> b!111931 (= res!55241 (valid!423 newMap!16))))

(declare-fun mapIsEmpty!4025 () Bool)

(declare-fun mapRes!4026 () Bool)

(assert (=> mapIsEmpty!4025 mapRes!4026))

(declare-fun tp_is_empty!2703 () Bool)

(declare-fun array_inv!1255 (array!4402) Bool)

(declare-fun array_inv!1256 (array!4404) Bool)

(assert (=> b!111932 (= e!72791 (and tp!10068 tp_is_empty!2703 (array_inv!1255 (_keys!4366 newMap!16)) (array_inv!1256 (_values!2631 newMap!16)) e!72783))))

(declare-fun b!111933 () Bool)

(declare-datatypes ((Unit!3499 0))(
  ( (Unit!3500) )
))
(declare-fun e!72778 () Unit!3499)

(declare-fun Unit!3501 () Unit!3499)

(assert (=> b!111933 (= e!72778 Unit!3501)))

(declare-fun lt!57799 () Unit!3499)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!119 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 64) (_ BitVec 32) Int) Unit!3499)

(assert (=> b!111933 (= lt!57799 (lemmaListMapContainsThenArrayContainsFrom!119 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!111933 (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!57792 () Unit!3499)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4402 (_ BitVec 32) (_ BitVec 32)) Unit!3499)

(assert (=> b!111933 (= lt!57792 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1656 0))(
  ( (Nil!1653) (Cons!1652 (h!2252 (_ BitVec 64)) (t!5826 List!1656)) )
))
(declare-fun arrayNoDuplicates!0 (array!4402 (_ BitVec 32) List!1656) Bool)

(assert (=> b!111933 (arrayNoDuplicates!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) from!355 Nil!1653)))

(declare-fun lt!57791 () Unit!3499)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4402 (_ BitVec 32) (_ BitVec 64) List!1656) Unit!3499)

(assert (=> b!111933 (= lt!57791 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (Cons!1652 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) Nil!1653)))))

(assert (=> b!111933 false))

(declare-fun b!111934 () Bool)

(declare-fun e!72776 () Bool)

(assert (=> b!111934 (= e!72775 e!72776)))

(declare-fun b!111935 () Bool)

(declare-fun e!72779 () Bool)

(assert (=> b!111935 (= e!72779 tp_is_empty!2703)))

(declare-fun mapNonEmpty!4025 () Bool)

(declare-fun tp!10065 () Bool)

(declare-fun e!72784 () Bool)

(assert (=> mapNonEmpty!4025 (= mapRes!4025 (and tp!10065 e!72784))))

(declare-fun mapRest!4025 () (Array (_ BitVec 32) ValueCell!1008))

(declare-fun mapKey!4026 () (_ BitVec 32))

(declare-fun mapValue!4025 () ValueCell!1008)

(assert (=> mapNonEmpty!4025 (= (arr!2087 (_values!2631 newMap!16)) (store mapRest!4025 mapKey!4026 mapValue!4025))))

(declare-fun b!111936 () Bool)

(declare-fun res!55239 () Bool)

(assert (=> b!111936 (=> (not res!55239) (not e!72787))))

(assert (=> b!111936 (= res!55239 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992)))))))))

(declare-fun b!111937 () Bool)

(assert (=> b!111937 (= e!72788 tp_is_empty!2703)))

(declare-fun e!72792 () Bool)

(declare-fun e!72789 () Bool)

(assert (=> b!111938 (= e!72792 (and tp!10066 tp_is_empty!2703 (array_inv!1255 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (array_inv!1256 (_values!2631 (v!2945 (underlying!373 thiss!992)))) e!72789))))

(declare-fun mapNonEmpty!4026 () Bool)

(declare-fun tp!10067 () Bool)

(assert (=> mapNonEmpty!4026 (= mapRes!4026 (and tp!10067 e!72779))))

(declare-fun mapRest!4026 () (Array (_ BitVec 32) ValueCell!1008))

(declare-fun mapValue!4026 () ValueCell!1008)

(declare-fun mapKey!4025 () (_ BitVec 32))

(assert (=> mapNonEmpty!4026 (= (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (store mapRest!4026 mapKey!4025 mapValue!4026))))

(declare-fun b!111939 () Bool)

(assert (=> b!111939 (= e!72776 e!72792)))

(declare-fun b!111940 () Bool)

(assert (=> b!111940 (= e!72784 tp_is_empty!2703)))

(declare-fun b!111941 () Bool)

(declare-fun e!72780 () Bool)

(assert (=> b!111941 (= e!72780 (not e!72781))))

(declare-fun res!55238 () Bool)

(assert (=> b!111941 (=> res!55238 e!72781)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!111941 (= res!55238 (not (validMask!0 (mask!6826 (v!2945 (underlying!373 thiss!992))))))))

(declare-datatypes ((tuple2!2436 0))(
  ( (tuple2!2437 (_1!1228 (_ BitVec 64)) (_2!1228 V!3251)) )
))
(declare-datatypes ((List!1657 0))(
  ( (Nil!1654) (Cons!1653 (h!2253 tuple2!2436) (t!5827 List!1657)) )
))
(declare-datatypes ((ListLongMap!1599 0))(
  ( (ListLongMap!1600 (toList!815 List!1657)) )
))
(declare-fun lt!57790 () ListLongMap!1599)

(declare-fun lt!57795 () tuple2!2436)

(declare-fun lt!57800 () tuple2!2436)

(declare-fun +!151 (ListLongMap!1599 tuple2!2436) ListLongMap!1599)

(assert (=> b!111941 (= (+!151 (+!151 lt!57790 lt!57795) lt!57800) (+!151 (+!151 lt!57790 lt!57800) lt!57795))))

(assert (=> b!111941 (= lt!57800 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))

(assert (=> b!111941 (= lt!57795 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))

(declare-fun lt!57789 () Unit!3499)

(declare-fun addCommutativeForDiffKeys!63 (ListLongMap!1599 (_ BitVec 64) V!3251 (_ BitVec 64) V!3251) Unit!3499)

(assert (=> b!111941 (= lt!57789 (addCommutativeForDiffKeys!63 lt!57790 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!118 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 32) Int) ListLongMap!1599)

(assert (=> b!111941 (= lt!57790 (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!111942 () Bool)

(assert (=> b!111942 (= e!72777 e!72780)))

(declare-fun res!55244 () Bool)

(assert (=> b!111942 (=> (not res!55244) (not e!72780))))

(declare-datatypes ((tuple2!2438 0))(
  ( (tuple2!2439 (_1!1229 Bool) (_2!1229 LongMapFixedSize!924)) )
))
(declare-fun lt!57794 () tuple2!2438)

(assert (=> b!111942 (= res!55244 (and (_1!1229 lt!57794) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!57793 () Unit!3499)

(assert (=> b!111942 (= lt!57793 e!72778)))

(declare-fun c!19986 () Bool)

(declare-fun lt!57796 () ListLongMap!1599)

(declare-fun contains!841 (ListLongMap!1599 (_ BitVec 64)) Bool)

(assert (=> b!111942 (= c!19986 (contains!841 lt!57796 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun update!164 (LongMapFixedSize!924 (_ BitVec 64) V!3251) tuple2!2438)

(assert (=> b!111942 (= lt!57794 (update!164 newMap!16 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))

(declare-fun mapIsEmpty!4026 () Bool)

(assert (=> mapIsEmpty!4026 mapRes!4025))

(declare-fun b!111943 () Bool)

(assert (=> b!111943 (= e!72787 e!72785)))

(declare-fun res!55245 () Bool)

(assert (=> b!111943 (=> (not res!55245) (not e!72785))))

(declare-fun lt!57798 () ListLongMap!1599)

(assert (=> b!111943 (= res!55245 (= lt!57798 lt!57796))))

(declare-fun map!1298 (LongMapFixedSize!924) ListLongMap!1599)

(assert (=> b!111943 (= lt!57796 (map!1298 newMap!16))))

(declare-fun getCurrentListMap!491 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 32) Int) ListLongMap!1599)

(assert (=> b!111943 (= lt!57798 (getCurrentListMap!491 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!111944 () Bool)

(declare-fun Unit!3502 () Unit!3499)

(assert (=> b!111944 (= e!72778 Unit!3502)))

(declare-fun b!111945 () Bool)

(declare-fun e!72790 () Bool)

(assert (=> b!111945 (= e!72789 (and e!72790 mapRes!4026))))

(declare-fun condMapEmpty!4025 () Bool)

(declare-fun mapDefault!4025 () ValueCell!1008)

(assert (=> b!111945 (= condMapEmpty!4025 (= (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1008)) mapDefault!4025)))))

(declare-fun b!111946 () Bool)

(assert (=> b!111946 (= e!72790 tp_is_empty!2703)))

(assert (= (and start!12856 res!55243) b!111936))

(assert (= (and b!111936 res!55239) b!111931))

(assert (= (and b!111931 res!55241) b!111928))

(assert (= (and b!111928 res!55246) b!111943))

(assert (= (and b!111943 res!55245) b!111927))

(assert (= (and b!111927 res!55242) b!111942))

(assert (= (and b!111942 c!19986) b!111933))

(assert (= (and b!111942 (not c!19986)) b!111944))

(assert (= (and b!111942 res!55244) b!111941))

(assert (= (and b!111941 (not res!55238)) b!111926))

(assert (= (and b!111926 (not res!55240)) b!111929))

(assert (= (and b!111945 condMapEmpty!4025) mapIsEmpty!4025))

(assert (= (and b!111945 (not condMapEmpty!4025)) mapNonEmpty!4026))

(get-info :version)

(assert (= (and mapNonEmpty!4026 ((_ is ValueCellFull!1008) mapValue!4026)) b!111935))

(assert (= (and b!111945 ((_ is ValueCellFull!1008) mapDefault!4025)) b!111946))

(assert (= b!111938 b!111945))

(assert (= b!111939 b!111938))

(assert (= b!111934 b!111939))

(assert (= start!12856 b!111934))

(assert (= (and b!111930 condMapEmpty!4026) mapIsEmpty!4026))

(assert (= (and b!111930 (not condMapEmpty!4026)) mapNonEmpty!4025))

(assert (= (and mapNonEmpty!4025 ((_ is ValueCellFull!1008) mapValue!4025)) b!111940))

(assert (= (and b!111930 ((_ is ValueCellFull!1008) mapDefault!4026)) b!111937))

(assert (= b!111932 b!111930))

(assert (= start!12856 b!111932))

(declare-fun b_lambda!5041 () Bool)

(assert (=> (not b_lambda!5041) (not b!111927)))

(declare-fun t!5823 () Bool)

(declare-fun tb!2133 () Bool)

(assert (=> (and b!111938 (= (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))) t!5823) tb!2133))

(declare-fun result!3563 () Bool)

(assert (=> tb!2133 (= result!3563 tp_is_empty!2703)))

(assert (=> b!111927 t!5823))

(declare-fun b_and!6897 () Bool)

(assert (= b_and!6893 (and (=> t!5823 result!3563) b_and!6897)))

(declare-fun t!5825 () Bool)

(declare-fun tb!2135 () Bool)

(assert (=> (and b!111932 (= (defaultEntry!2648 newMap!16) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))) t!5825) tb!2135))

(declare-fun result!3567 () Bool)

(assert (= result!3567 result!3563))

(assert (=> b!111927 t!5825))

(declare-fun b_and!6899 () Bool)

(assert (= b_and!6895 (and (=> t!5825 result!3567) b_and!6899)))

(declare-fun m!127847 () Bool)

(assert (=> start!12856 m!127847))

(declare-fun m!127849 () Bool)

(assert (=> b!111942 m!127849))

(assert (=> b!111942 m!127849))

(declare-fun m!127851 () Bool)

(assert (=> b!111942 m!127851))

(assert (=> b!111942 m!127849))

(declare-fun m!127853 () Bool)

(assert (=> b!111942 m!127853))

(declare-fun m!127855 () Bool)

(assert (=> b!111932 m!127855))

(declare-fun m!127857 () Bool)

(assert (=> b!111932 m!127857))

(declare-fun m!127859 () Bool)

(assert (=> mapNonEmpty!4026 m!127859))

(declare-fun m!127861 () Bool)

(assert (=> b!111943 m!127861))

(declare-fun m!127863 () Bool)

(assert (=> b!111943 m!127863))

(declare-fun m!127865 () Bool)

(assert (=> b!111931 m!127865))

(declare-fun m!127867 () Bool)

(assert (=> mapNonEmpty!4025 m!127867))

(declare-fun m!127869 () Bool)

(assert (=> b!111929 m!127869))

(declare-fun m!127871 () Bool)

(assert (=> b!111933 m!127871))

(declare-fun m!127873 () Bool)

(assert (=> b!111933 m!127873))

(assert (=> b!111933 m!127849))

(declare-fun m!127875 () Bool)

(assert (=> b!111933 m!127875))

(assert (=> b!111933 m!127849))

(assert (=> b!111933 m!127849))

(declare-fun m!127877 () Bool)

(assert (=> b!111933 m!127877))

(assert (=> b!111933 m!127849))

(declare-fun m!127879 () Bool)

(assert (=> b!111933 m!127879))

(assert (=> b!111927 m!127849))

(declare-fun m!127881 () Bool)

(assert (=> b!111927 m!127881))

(declare-fun m!127883 () Bool)

(assert (=> b!111927 m!127883))

(assert (=> b!111927 m!127881))

(assert (=> b!111927 m!127883))

(declare-fun m!127885 () Bool)

(assert (=> b!111927 m!127885))

(declare-fun m!127887 () Bool)

(assert (=> b!111941 m!127887))

(declare-fun m!127889 () Bool)

(assert (=> b!111941 m!127889))

(assert (=> b!111941 m!127887))

(declare-fun m!127891 () Bool)

(assert (=> b!111941 m!127891))

(declare-fun m!127893 () Bool)

(assert (=> b!111941 m!127893))

(declare-fun m!127895 () Bool)

(assert (=> b!111941 m!127895))

(assert (=> b!111941 m!127849))

(assert (=> b!111941 m!127891))

(assert (=> b!111941 m!127849))

(declare-fun m!127897 () Bool)

(assert (=> b!111941 m!127897))

(declare-fun m!127899 () Bool)

(assert (=> b!111941 m!127899))

(declare-fun m!127901 () Bool)

(assert (=> b!111938 m!127901))

(declare-fun m!127903 () Bool)

(assert (=> b!111938 m!127903))

(check-sat (not start!12856) (not b!111941) (not b!111931) (not b!111938) (not b_next!2575) (not mapNonEmpty!4025) (not b!111942) (not b_lambda!5041) (not mapNonEmpty!4026) (not b!111929) (not b!111933) (not b!111943) b_and!6899 (not b!111932) (not b_next!2573) b_and!6897 tp_is_empty!2703 (not b!111927))
(check-sat b_and!6897 b_and!6899 (not b_next!2573) (not b_next!2575))
(get-model)

(declare-fun b_lambda!5045 () Bool)

(assert (= b_lambda!5041 (or (and b!111938 b_free!2573) (and b!111932 b_free!2575 (= (defaultEntry!2648 newMap!16) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))))) b_lambda!5045)))

(check-sat (not b_lambda!5045) (not start!12856) (not b!111942) (not b!111941) (not b!111931) (not b!111938) (not b_next!2575) (not mapNonEmpty!4025) (not mapNonEmpty!4026) (not b!111929) (not b!111933) (not b!111943) b_and!6899 (not b!111932) (not b_next!2573) b_and!6897 tp_is_empty!2703 (not b!111927))
(check-sat b_and!6897 b_and!6899 (not b_next!2573) (not b_next!2575))
(get-model)

(declare-fun d!31885 () Bool)

(assert (=> d!31885 (= (array_inv!1255 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvsge (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!111938 d!31885))

(declare-fun d!31887 () Bool)

(assert (=> d!31887 (= (array_inv!1256 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvsge (size!2345 (_values!2631 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!111938 d!31887))

(declare-fun b!112039 () Bool)

(declare-fun e!72862 () Bool)

(declare-fun lt!57853 () ListLongMap!1599)

(assert (=> b!112039 (= e!72862 (= lt!57853 (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun b!112040 () Bool)

(declare-fun e!72867 () Bool)

(assert (=> b!112040 (= e!72867 e!72862)))

(declare-fun c!20001 () Bool)

(assert (=> b!112040 (= c!20001 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun b!112041 () Bool)

(assert (=> b!112041 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(assert (=> b!112041 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2345 (_values!2631 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun e!72863 () Bool)

(declare-fun apply!101 (ListLongMap!1599 (_ BitVec 64)) V!3251)

(assert (=> b!112041 (= e!72863 (= (apply!101 lt!57853 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!112042 () Bool)

(declare-fun isEmpty!384 (ListLongMap!1599) Bool)

(assert (=> b!112042 (= e!72862 (isEmpty!384 lt!57853))))

(declare-fun b!112043 () Bool)

(declare-fun e!72864 () ListLongMap!1599)

(declare-fun e!72861 () ListLongMap!1599)

(assert (=> b!112043 (= e!72864 e!72861)))

(declare-fun c!19998 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!112043 (= c!19998 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!112044 () Bool)

(assert (=> b!112044 (= e!72864 (ListLongMap!1600 Nil!1654))))

(declare-fun b!112045 () Bool)

(declare-fun call!11954 () ListLongMap!1599)

(assert (=> b!112045 (= e!72861 call!11954)))

(declare-fun b!112046 () Bool)

(assert (=> b!112046 (= e!72867 e!72863)))

(assert (=> b!112046 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun res!55284 () Bool)

(assert (=> b!112046 (= res!55284 (contains!841 lt!57853 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!112046 (=> (not res!55284) (not e!72863))))

(declare-fun b!112038 () Bool)

(declare-fun res!55285 () Bool)

(declare-fun e!72866 () Bool)

(assert (=> b!112038 (=> (not res!55285) (not e!72866))))

(assert (=> b!112038 (= res!55285 (not (contains!841 lt!57853 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!31889 () Bool)

(assert (=> d!31889 e!72866))

(declare-fun res!55282 () Bool)

(assert (=> d!31889 (=> (not res!55282) (not e!72866))))

(assert (=> d!31889 (= res!55282 (not (contains!841 lt!57853 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!31889 (= lt!57853 e!72864)))

(declare-fun c!19999 () Bool)

(assert (=> d!31889 (= c!19999 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(assert (=> d!31889 (validMask!0 (mask!6826 (v!2945 (underlying!373 thiss!992))))))

(assert (=> d!31889 (= (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))) lt!57853)))

(declare-fun b!112047 () Bool)

(declare-fun lt!57851 () Unit!3499)

(declare-fun lt!57854 () Unit!3499)

(assert (=> b!112047 (= lt!57851 lt!57854)))

(declare-fun lt!57855 () ListLongMap!1599)

(declare-fun lt!57857 () (_ BitVec 64))

(declare-fun lt!57852 () (_ BitVec 64))

(declare-fun lt!57856 () V!3251)

(assert (=> b!112047 (not (contains!841 (+!151 lt!57855 (tuple2!2437 lt!57857 lt!57856)) lt!57852))))

(declare-fun addStillNotContains!51 (ListLongMap!1599 (_ BitVec 64) V!3251 (_ BitVec 64)) Unit!3499)

(assert (=> b!112047 (= lt!57854 (addStillNotContains!51 lt!57855 lt!57857 lt!57856 lt!57852))))

(assert (=> b!112047 (= lt!57852 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!112047 (= lt!57856 (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!112047 (= lt!57857 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!112047 (= lt!57855 call!11954)))

(assert (=> b!112047 (= e!72861 (+!151 call!11954 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!11951 () Bool)

(assert (=> bm!11951 (= call!11954 (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!112048 () Bool)

(declare-fun e!72865 () Bool)

(assert (=> b!112048 (= e!72865 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!112048 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!112049 () Bool)

(assert (=> b!112049 (= e!72866 e!72867)))

(declare-fun c!20000 () Bool)

(assert (=> b!112049 (= c!20000 e!72865)))

(declare-fun res!55283 () Bool)

(assert (=> b!112049 (=> (not res!55283) (not e!72865))))

(assert (=> b!112049 (= res!55283 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(assert (= (and d!31889 c!19999) b!112044))

(assert (= (and d!31889 (not c!19999)) b!112043))

(assert (= (and b!112043 c!19998) b!112047))

(assert (= (and b!112043 (not c!19998)) b!112045))

(assert (= (or b!112047 b!112045) bm!11951))

(assert (= (and d!31889 res!55282) b!112038))

(assert (= (and b!112038 res!55285) b!112049))

(assert (= (and b!112049 res!55283) b!112048))

(assert (= (and b!112049 c!20000) b!112046))

(assert (= (and b!112049 (not c!20000)) b!112040))

(assert (= (and b!112046 res!55284) b!112041))

(assert (= (and b!112040 c!20001) b!112039))

(assert (= (and b!112040 (not c!20001)) b!112042))

(declare-fun b_lambda!5047 () Bool)

(assert (=> (not b_lambda!5047) (not b!112041)))

(assert (=> b!112041 t!5823))

(declare-fun b_and!6909 () Bool)

(assert (= b_and!6897 (and (=> t!5823 result!3563) b_and!6909)))

(assert (=> b!112041 t!5825))

(declare-fun b_and!6911 () Bool)

(assert (= b_and!6899 (and (=> t!5825 result!3567) b_and!6911)))

(declare-fun b_lambda!5049 () Bool)

(assert (=> (not b_lambda!5049) (not b!112047)))

(assert (=> b!112047 t!5823))

(declare-fun b_and!6913 () Bool)

(assert (= b_and!6909 (and (=> t!5823 result!3563) b_and!6913)))

(assert (=> b!112047 t!5825))

(declare-fun b_and!6915 () Bool)

(assert (= b_and!6911 (and (=> t!5825 result!3567) b_and!6915)))

(declare-fun m!127963 () Bool)

(assert (=> b!112042 m!127963))

(assert (=> b!112047 m!127883))

(declare-fun m!127965 () Bool)

(assert (=> b!112047 m!127965))

(assert (=> b!112047 m!127883))

(declare-fun m!127967 () Bool)

(assert (=> b!112047 m!127967))

(declare-fun m!127969 () Bool)

(assert (=> b!112047 m!127969))

(declare-fun m!127971 () Bool)

(assert (=> b!112047 m!127971))

(declare-fun m!127973 () Bool)

(assert (=> b!112047 m!127973))

(assert (=> b!112047 m!127965))

(declare-fun m!127975 () Bool)

(assert (=> b!112047 m!127975))

(assert (=> b!112047 m!127973))

(declare-fun m!127977 () Bool)

(assert (=> b!112047 m!127977))

(declare-fun m!127979 () Bool)

(assert (=> b!112038 m!127979))

(declare-fun m!127981 () Bool)

(assert (=> bm!11951 m!127981))

(assert (=> b!112041 m!127883))

(assert (=> b!112041 m!127965))

(assert (=> b!112041 m!127883))

(assert (=> b!112041 m!127967))

(assert (=> b!112041 m!127975))

(declare-fun m!127983 () Bool)

(assert (=> b!112041 m!127983))

(assert (=> b!112041 m!127965))

(assert (=> b!112041 m!127975))

(assert (=> b!112043 m!127975))

(assert (=> b!112043 m!127975))

(declare-fun m!127985 () Bool)

(assert (=> b!112043 m!127985))

(assert (=> b!112046 m!127975))

(assert (=> b!112046 m!127975))

(declare-fun m!127987 () Bool)

(assert (=> b!112046 m!127987))

(assert (=> b!112039 m!127981))

(declare-fun m!127989 () Bool)

(assert (=> d!31889 m!127989))

(assert (=> d!31889 m!127895))

(assert (=> b!112048 m!127975))

(assert (=> b!112048 m!127975))

(assert (=> b!112048 m!127985))

(assert (=> b!111941 d!31889))

(declare-fun d!31891 () Bool)

(declare-fun e!72870 () Bool)

(assert (=> d!31891 e!72870))

(declare-fun res!55290 () Bool)

(assert (=> d!31891 (=> (not res!55290) (not e!72870))))

(declare-fun lt!57866 () ListLongMap!1599)

(assert (=> d!31891 (= res!55290 (contains!841 lt!57866 (_1!1228 lt!57800)))))

(declare-fun lt!57868 () List!1657)

(assert (=> d!31891 (= lt!57866 (ListLongMap!1600 lt!57868))))

(declare-fun lt!57867 () Unit!3499)

(declare-fun lt!57869 () Unit!3499)

(assert (=> d!31891 (= lt!57867 lt!57869)))

(declare-datatypes ((Option!164 0))(
  ( (Some!163 (v!2949 V!3251)) (None!162) )
))
(declare-fun getValueByKey!158 (List!1657 (_ BitVec 64)) Option!164)

(assert (=> d!31891 (= (getValueByKey!158 lt!57868 (_1!1228 lt!57800)) (Some!163 (_2!1228 lt!57800)))))

(declare-fun lemmaContainsTupThenGetReturnValue!76 (List!1657 (_ BitVec 64) V!3251) Unit!3499)

(assert (=> d!31891 (= lt!57869 (lemmaContainsTupThenGetReturnValue!76 lt!57868 (_1!1228 lt!57800) (_2!1228 lt!57800)))))

(declare-fun insertStrictlySorted!78 (List!1657 (_ BitVec 64) V!3251) List!1657)

(assert (=> d!31891 (= lt!57868 (insertStrictlySorted!78 (toList!815 lt!57790) (_1!1228 lt!57800) (_2!1228 lt!57800)))))

(assert (=> d!31891 (= (+!151 lt!57790 lt!57800) lt!57866)))

(declare-fun b!112054 () Bool)

(declare-fun res!55291 () Bool)

(assert (=> b!112054 (=> (not res!55291) (not e!72870))))

(assert (=> b!112054 (= res!55291 (= (getValueByKey!158 (toList!815 lt!57866) (_1!1228 lt!57800)) (Some!163 (_2!1228 lt!57800))))))

(declare-fun b!112055 () Bool)

(declare-fun contains!842 (List!1657 tuple2!2436) Bool)

(assert (=> b!112055 (= e!72870 (contains!842 (toList!815 lt!57866) lt!57800))))

(assert (= (and d!31891 res!55290) b!112054))

(assert (= (and b!112054 res!55291) b!112055))

(declare-fun m!127991 () Bool)

(assert (=> d!31891 m!127991))

(declare-fun m!127993 () Bool)

(assert (=> d!31891 m!127993))

(declare-fun m!127995 () Bool)

(assert (=> d!31891 m!127995))

(declare-fun m!127997 () Bool)

(assert (=> d!31891 m!127997))

(declare-fun m!127999 () Bool)

(assert (=> b!112054 m!127999))

(declare-fun m!128001 () Bool)

(assert (=> b!112055 m!128001))

(assert (=> b!111941 d!31891))

(declare-fun d!31893 () Bool)

(declare-fun e!72871 () Bool)

(assert (=> d!31893 e!72871))

(declare-fun res!55292 () Bool)

(assert (=> d!31893 (=> (not res!55292) (not e!72871))))

(declare-fun lt!57870 () ListLongMap!1599)

(assert (=> d!31893 (= res!55292 (contains!841 lt!57870 (_1!1228 lt!57800)))))

(declare-fun lt!57872 () List!1657)

(assert (=> d!31893 (= lt!57870 (ListLongMap!1600 lt!57872))))

(declare-fun lt!57871 () Unit!3499)

(declare-fun lt!57873 () Unit!3499)

(assert (=> d!31893 (= lt!57871 lt!57873)))

(assert (=> d!31893 (= (getValueByKey!158 lt!57872 (_1!1228 lt!57800)) (Some!163 (_2!1228 lt!57800)))))

(assert (=> d!31893 (= lt!57873 (lemmaContainsTupThenGetReturnValue!76 lt!57872 (_1!1228 lt!57800) (_2!1228 lt!57800)))))

(assert (=> d!31893 (= lt!57872 (insertStrictlySorted!78 (toList!815 (+!151 lt!57790 lt!57795)) (_1!1228 lt!57800) (_2!1228 lt!57800)))))

(assert (=> d!31893 (= (+!151 (+!151 lt!57790 lt!57795) lt!57800) lt!57870)))

(declare-fun b!112056 () Bool)

(declare-fun res!55293 () Bool)

(assert (=> b!112056 (=> (not res!55293) (not e!72871))))

(assert (=> b!112056 (= res!55293 (= (getValueByKey!158 (toList!815 lt!57870) (_1!1228 lt!57800)) (Some!163 (_2!1228 lt!57800))))))

(declare-fun b!112057 () Bool)

(assert (=> b!112057 (= e!72871 (contains!842 (toList!815 lt!57870) lt!57800))))

(assert (= (and d!31893 res!55292) b!112056))

(assert (= (and b!112056 res!55293) b!112057))

(declare-fun m!128003 () Bool)

(assert (=> d!31893 m!128003))

(declare-fun m!128005 () Bool)

(assert (=> d!31893 m!128005))

(declare-fun m!128007 () Bool)

(assert (=> d!31893 m!128007))

(declare-fun m!128009 () Bool)

(assert (=> d!31893 m!128009))

(declare-fun m!128011 () Bool)

(assert (=> b!112056 m!128011))

(declare-fun m!128013 () Bool)

(assert (=> b!112057 m!128013))

(assert (=> b!111941 d!31893))

(declare-fun d!31895 () Bool)

(assert (=> d!31895 (= (+!151 (+!151 lt!57790 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (+!151 (+!151 lt!57790 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))

(declare-fun lt!57876 () Unit!3499)

(declare-fun choose!705 (ListLongMap!1599 (_ BitVec 64) V!3251 (_ BitVec 64) V!3251) Unit!3499)

(assert (=> d!31895 (= lt!57876 (choose!705 lt!57790 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))

(assert (=> d!31895 (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!31895 (= (addCommutativeForDiffKeys!63 lt!57790 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) lt!57876)))

(declare-fun bs!4616 () Bool)

(assert (= bs!4616 d!31895))

(declare-fun m!128015 () Bool)

(assert (=> bs!4616 m!128015))

(declare-fun m!128017 () Bool)

(assert (=> bs!4616 m!128017))

(declare-fun m!128019 () Bool)

(assert (=> bs!4616 m!128019))

(assert (=> bs!4616 m!127849))

(declare-fun m!128021 () Bool)

(assert (=> bs!4616 m!128021))

(assert (=> bs!4616 m!128017))

(assert (=> bs!4616 m!128015))

(declare-fun m!128023 () Bool)

(assert (=> bs!4616 m!128023))

(assert (=> b!111941 d!31895))

(declare-fun d!31897 () Bool)

(declare-fun e!72872 () Bool)

(assert (=> d!31897 e!72872))

(declare-fun res!55294 () Bool)

(assert (=> d!31897 (=> (not res!55294) (not e!72872))))

(declare-fun lt!57877 () ListLongMap!1599)

(assert (=> d!31897 (= res!55294 (contains!841 lt!57877 (_1!1228 lt!57795)))))

(declare-fun lt!57879 () List!1657)

(assert (=> d!31897 (= lt!57877 (ListLongMap!1600 lt!57879))))

(declare-fun lt!57878 () Unit!3499)

(declare-fun lt!57880 () Unit!3499)

(assert (=> d!31897 (= lt!57878 lt!57880)))

(assert (=> d!31897 (= (getValueByKey!158 lt!57879 (_1!1228 lt!57795)) (Some!163 (_2!1228 lt!57795)))))

(assert (=> d!31897 (= lt!57880 (lemmaContainsTupThenGetReturnValue!76 lt!57879 (_1!1228 lt!57795) (_2!1228 lt!57795)))))

(assert (=> d!31897 (= lt!57879 (insertStrictlySorted!78 (toList!815 lt!57790) (_1!1228 lt!57795) (_2!1228 lt!57795)))))

(assert (=> d!31897 (= (+!151 lt!57790 lt!57795) lt!57877)))

(declare-fun b!112058 () Bool)

(declare-fun res!55295 () Bool)

(assert (=> b!112058 (=> (not res!55295) (not e!72872))))

(assert (=> b!112058 (= res!55295 (= (getValueByKey!158 (toList!815 lt!57877) (_1!1228 lt!57795)) (Some!163 (_2!1228 lt!57795))))))

(declare-fun b!112059 () Bool)

(assert (=> b!112059 (= e!72872 (contains!842 (toList!815 lt!57877) lt!57795))))

(assert (= (and d!31897 res!55294) b!112058))

(assert (= (and b!112058 res!55295) b!112059))

(declare-fun m!128025 () Bool)

(assert (=> d!31897 m!128025))

(declare-fun m!128027 () Bool)

(assert (=> d!31897 m!128027))

(declare-fun m!128029 () Bool)

(assert (=> d!31897 m!128029))

(declare-fun m!128031 () Bool)

(assert (=> d!31897 m!128031))

(declare-fun m!128033 () Bool)

(assert (=> b!112058 m!128033))

(declare-fun m!128035 () Bool)

(assert (=> b!112059 m!128035))

(assert (=> b!111941 d!31897))

(declare-fun d!31899 () Bool)

(declare-fun e!72873 () Bool)

(assert (=> d!31899 e!72873))

(declare-fun res!55296 () Bool)

(assert (=> d!31899 (=> (not res!55296) (not e!72873))))

(declare-fun lt!57881 () ListLongMap!1599)

(assert (=> d!31899 (= res!55296 (contains!841 lt!57881 (_1!1228 lt!57795)))))

(declare-fun lt!57883 () List!1657)

(assert (=> d!31899 (= lt!57881 (ListLongMap!1600 lt!57883))))

(declare-fun lt!57882 () Unit!3499)

(declare-fun lt!57884 () Unit!3499)

(assert (=> d!31899 (= lt!57882 lt!57884)))

(assert (=> d!31899 (= (getValueByKey!158 lt!57883 (_1!1228 lt!57795)) (Some!163 (_2!1228 lt!57795)))))

(assert (=> d!31899 (= lt!57884 (lemmaContainsTupThenGetReturnValue!76 lt!57883 (_1!1228 lt!57795) (_2!1228 lt!57795)))))

(assert (=> d!31899 (= lt!57883 (insertStrictlySorted!78 (toList!815 (+!151 lt!57790 lt!57800)) (_1!1228 lt!57795) (_2!1228 lt!57795)))))

(assert (=> d!31899 (= (+!151 (+!151 lt!57790 lt!57800) lt!57795) lt!57881)))

(declare-fun b!112060 () Bool)

(declare-fun res!55297 () Bool)

(assert (=> b!112060 (=> (not res!55297) (not e!72873))))

(assert (=> b!112060 (= res!55297 (= (getValueByKey!158 (toList!815 lt!57881) (_1!1228 lt!57795)) (Some!163 (_2!1228 lt!57795))))))

(declare-fun b!112061 () Bool)

(assert (=> b!112061 (= e!72873 (contains!842 (toList!815 lt!57881) lt!57795))))

(assert (= (and d!31899 res!55296) b!112060))

(assert (= (and b!112060 res!55297) b!112061))

(declare-fun m!128037 () Bool)

(assert (=> d!31899 m!128037))

(declare-fun m!128039 () Bool)

(assert (=> d!31899 m!128039))

(declare-fun m!128041 () Bool)

(assert (=> d!31899 m!128041))

(declare-fun m!128043 () Bool)

(assert (=> d!31899 m!128043))

(declare-fun m!128045 () Bool)

(assert (=> b!112060 m!128045))

(declare-fun m!128047 () Bool)

(assert (=> b!112061 m!128047))

(assert (=> b!111941 d!31899))

(declare-fun d!31901 () Bool)

(assert (=> d!31901 (= (validMask!0 (mask!6826 (v!2945 (underlying!373 thiss!992)))) (and (or (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000001111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000011111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000001111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000011111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000001111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000011111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000001111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000011111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000000111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000001111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000011111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000000111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000001111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000011111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000000111111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000001111111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000011111111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000000111111111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000001111111111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000011111111111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00000111111111111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00001111111111111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00011111111111111111111111111111) (= (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6826 (v!2945 (underlying!373 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!111941 d!31901))

(declare-fun d!31903 () Bool)

(assert (=> d!31903 (not (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!57887 () Unit!3499)

(declare-fun choose!68 (array!4402 (_ BitVec 32) (_ BitVec 64) List!1656) Unit!3499)

(assert (=> d!31903 (= lt!57887 (choose!68 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (Cons!1652 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) Nil!1653)))))

(assert (=> d!31903 (bvslt (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!31903 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (Cons!1652 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) Nil!1653)) lt!57887)))

(declare-fun bs!4617 () Bool)

(assert (= bs!4617 d!31903))

(assert (=> bs!4617 m!127849))

(assert (=> bs!4617 m!127877))

(assert (=> bs!4617 m!127849))

(declare-fun m!128049 () Bool)

(assert (=> bs!4617 m!128049))

(assert (=> b!111933 d!31903))

(declare-fun d!31905 () Bool)

(assert (=> d!31905 (arrayNoDuplicates!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) from!355 Nil!1653)))

(declare-fun lt!57890 () Unit!3499)

(declare-fun choose!39 (array!4402 (_ BitVec 32) (_ BitVec 32)) Unit!3499)

(assert (=> d!31905 (= lt!57890 (choose!39 (_keys!4366 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!31905 (bvslt (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!31905 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000000 from!355) lt!57890)))

(declare-fun bs!4618 () Bool)

(assert (= bs!4618 d!31905))

(assert (=> bs!4618 m!127873))

(declare-fun m!128051 () Bool)

(assert (=> bs!4618 m!128051))

(assert (=> b!111933 d!31905))

(declare-fun d!31907 () Bool)

(declare-fun res!55302 () Bool)

(declare-fun e!72878 () Bool)

(assert (=> d!31907 (=> res!55302 e!72878)))

(assert (=> d!31907 (= res!55302 (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> d!31907 (= (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!72878)))

(declare-fun b!112066 () Bool)

(declare-fun e!72879 () Bool)

(assert (=> b!112066 (= e!72878 e!72879)))

(declare-fun res!55303 () Bool)

(assert (=> b!112066 (=> (not res!55303) (not e!72879))))

(assert (=> b!112066 (= res!55303 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun b!112067 () Bool)

(assert (=> b!112067 (= e!72879 (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!31907 (not res!55302)) b!112066))

(assert (= (and b!112066 res!55303) b!112067))

(assert (=> d!31907 m!127975))

(assert (=> b!112067 m!127849))

(declare-fun m!128053 () Bool)

(assert (=> b!112067 m!128053))

(assert (=> b!111933 d!31907))

(declare-fun d!31909 () Bool)

(declare-fun e!72882 () Bool)

(assert (=> d!31909 e!72882))

(declare-fun c!20004 () Bool)

(assert (=> d!31909 (= c!20004 (and (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!57893 () Unit!3499)

(declare-fun choose!706 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 64) (_ BitVec 32) Int) Unit!3499)

(assert (=> d!31909 (= lt!57893 (choose!706 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))))))

(assert (=> d!31909 (validMask!0 (mask!6826 (v!2945 (underlying!373 thiss!992))))))

(assert (=> d!31909 (= (lemmaListMapContainsThenArrayContainsFrom!119 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))) lt!57893)))

(declare-fun b!112072 () Bool)

(assert (=> b!112072 (= e!72882 (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!112073 () Bool)

(assert (=> b!112073 (= e!72882 (ite (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!31909 c!20004) b!112072))

(assert (= (and d!31909 (not c!20004)) b!112073))

(assert (=> d!31909 m!127849))

(declare-fun m!128055 () Bool)

(assert (=> d!31909 m!128055))

(assert (=> d!31909 m!127895))

(assert (=> b!112072 m!127849))

(assert (=> b!112072 m!127877))

(assert (=> b!111933 d!31909))

(declare-fun b!112084 () Bool)

(declare-fun e!72893 () Bool)

(declare-fun call!11957 () Bool)

(assert (=> b!112084 (= e!72893 call!11957)))

(declare-fun d!31911 () Bool)

(declare-fun res!55311 () Bool)

(declare-fun e!72891 () Bool)

(assert (=> d!31911 (=> res!55311 e!72891)))

(assert (=> d!31911 (= res!55311 (bvsge from!355 (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(assert (=> d!31911 (= (arrayNoDuplicates!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) from!355 Nil!1653) e!72891)))

(declare-fun c!20007 () Bool)

(declare-fun bm!11954 () Bool)

(assert (=> bm!11954 (= call!11957 (arrayNoDuplicates!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!20007 (Cons!1652 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) Nil!1653) Nil!1653)))))

(declare-fun b!112085 () Bool)

(declare-fun e!72894 () Bool)

(assert (=> b!112085 (= e!72894 e!72893)))

(assert (=> b!112085 (= c!20007 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun b!112086 () Bool)

(declare-fun e!72892 () Bool)

(declare-fun contains!843 (List!1656 (_ BitVec 64)) Bool)

(assert (=> b!112086 (= e!72892 (contains!843 Nil!1653 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun b!112087 () Bool)

(assert (=> b!112087 (= e!72893 call!11957)))

(declare-fun b!112088 () Bool)

(assert (=> b!112088 (= e!72891 e!72894)))

(declare-fun res!55310 () Bool)

(assert (=> b!112088 (=> (not res!55310) (not e!72894))))

(assert (=> b!112088 (= res!55310 (not e!72892))))

(declare-fun res!55312 () Bool)

(assert (=> b!112088 (=> (not res!55312) (not e!72892))))

(assert (=> b!112088 (= res!55312 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (= (and d!31911 (not res!55311)) b!112088))

(assert (= (and b!112088 res!55312) b!112086))

(assert (= (and b!112088 res!55310) b!112085))

(assert (= (and b!112085 c!20007) b!112087))

(assert (= (and b!112085 (not c!20007)) b!112084))

(assert (= (or b!112087 b!112084) bm!11954))

(assert (=> bm!11954 m!127849))

(declare-fun m!128057 () Bool)

(assert (=> bm!11954 m!128057))

(assert (=> b!112085 m!127849))

(assert (=> b!112085 m!127849))

(declare-fun m!128059 () Bool)

(assert (=> b!112085 m!128059))

(assert (=> b!112086 m!127849))

(assert (=> b!112086 m!127849))

(declare-fun m!128061 () Bool)

(assert (=> b!112086 m!128061))

(assert (=> b!112088 m!127849))

(assert (=> b!112088 m!127849))

(assert (=> b!112088 m!128059))

(assert (=> b!111933 d!31911))

(declare-fun b!112097 () Bool)

(declare-fun e!72902 () Bool)

(declare-fun e!72903 () Bool)

(assert (=> b!112097 (= e!72902 e!72903)))

(declare-fun lt!57902 () (_ BitVec 64))

(assert (=> b!112097 (= lt!57902 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!57900 () Unit!3499)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4402 (_ BitVec 64) (_ BitVec 32)) Unit!3499)

(assert (=> b!112097 (= lt!57900 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) lt!57902 #b00000000000000000000000000000000))))

(assert (=> b!112097 (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) lt!57902 #b00000000000000000000000000000000)))

(declare-fun lt!57901 () Unit!3499)

(assert (=> b!112097 (= lt!57901 lt!57900)))

(declare-fun res!55317 () Bool)

(declare-datatypes ((SeekEntryResult!272 0))(
  ( (MissingZero!272 (index!3239 (_ BitVec 32))) (Found!272 (index!3240 (_ BitVec 32))) (Intermediate!272 (undefined!1084 Bool) (index!3241 (_ BitVec 32)) (x!14104 (_ BitVec 32))) (Undefined!272) (MissingVacant!272 (index!3242 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4402 (_ BitVec 32)) SeekEntryResult!272)

(assert (=> b!112097 (= res!55317 (= (seekEntryOrOpen!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000) (_keys!4366 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992)))) (Found!272 #b00000000000000000000000000000000)))))

(assert (=> b!112097 (=> (not res!55317) (not e!72903))))

(declare-fun b!112098 () Bool)

(declare-fun call!11960 () Bool)

(assert (=> b!112098 (= e!72902 call!11960)))

(declare-fun bm!11957 () Bool)

(assert (=> bm!11957 (= call!11960 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4366 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun d!31913 () Bool)

(declare-fun res!55318 () Bool)

(declare-fun e!72901 () Bool)

(assert (=> d!31913 (=> res!55318 e!72901)))

(assert (=> d!31913 (= res!55318 (bvsge #b00000000000000000000000000000000 (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(assert (=> d!31913 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992)))) e!72901)))

(declare-fun b!112099 () Bool)

(assert (=> b!112099 (= e!72901 e!72902)))

(declare-fun c!20010 () Bool)

(assert (=> b!112099 (= c!20010 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!112100 () Bool)

(assert (=> b!112100 (= e!72903 call!11960)))

(assert (= (and d!31913 (not res!55318)) b!112099))

(assert (= (and b!112099 c!20010) b!112097))

(assert (= (and b!112099 (not c!20010)) b!112098))

(assert (= (and b!112097 res!55317) b!112100))

(assert (= (or b!112100 b!112098) bm!11957))

(declare-fun m!128063 () Bool)

(assert (=> b!112097 m!128063))

(declare-fun m!128065 () Bool)

(assert (=> b!112097 m!128065))

(declare-fun m!128067 () Bool)

(assert (=> b!112097 m!128067))

(assert (=> b!112097 m!128063))

(declare-fun m!128069 () Bool)

(assert (=> b!112097 m!128069))

(declare-fun m!128071 () Bool)

(assert (=> bm!11957 m!128071))

(assert (=> b!112099 m!128063))

(assert (=> b!112099 m!128063))

(declare-fun m!128073 () Bool)

(assert (=> b!112099 m!128073))

(assert (=> b!111929 d!31913))

(declare-fun d!31915 () Bool)

(declare-fun e!72909 () Bool)

(assert (=> d!31915 e!72909))

(declare-fun res!55321 () Bool)

(assert (=> d!31915 (=> res!55321 e!72909)))

(declare-fun lt!57911 () Bool)

(assert (=> d!31915 (= res!55321 (not lt!57911))))

(declare-fun lt!57914 () Bool)

(assert (=> d!31915 (= lt!57911 lt!57914)))

(declare-fun lt!57912 () Unit!3499)

(declare-fun e!72908 () Unit!3499)

(assert (=> d!31915 (= lt!57912 e!72908)))

(declare-fun c!20013 () Bool)

(assert (=> d!31915 (= c!20013 lt!57914)))

(declare-fun containsKey!162 (List!1657 (_ BitVec 64)) Bool)

(assert (=> d!31915 (= lt!57914 (containsKey!162 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> d!31915 (= (contains!841 lt!57796 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) lt!57911)))

(declare-fun b!112107 () Bool)

(declare-fun lt!57913 () Unit!3499)

(assert (=> b!112107 (= e!72908 lt!57913)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!111 (List!1657 (_ BitVec 64)) Unit!3499)

(assert (=> b!112107 (= lt!57913 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun isDefined!112 (Option!164) Bool)

(assert (=> b!112107 (isDefined!112 (getValueByKey!158 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun b!112108 () Bool)

(declare-fun Unit!3506 () Unit!3499)

(assert (=> b!112108 (= e!72908 Unit!3506)))

(declare-fun b!112109 () Bool)

(assert (=> b!112109 (= e!72909 (isDefined!112 (getValueByKey!158 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355))))))

(assert (= (and d!31915 c!20013) b!112107))

(assert (= (and d!31915 (not c!20013)) b!112108))

(assert (= (and d!31915 (not res!55321)) b!112109))

(assert (=> d!31915 m!127849))

(declare-fun m!128075 () Bool)

(assert (=> d!31915 m!128075))

(assert (=> b!112107 m!127849))

(declare-fun m!128077 () Bool)

(assert (=> b!112107 m!128077))

(assert (=> b!112107 m!127849))

(declare-fun m!128079 () Bool)

(assert (=> b!112107 m!128079))

(assert (=> b!112107 m!128079))

(declare-fun m!128081 () Bool)

(assert (=> b!112107 m!128081))

(assert (=> b!112109 m!127849))

(assert (=> b!112109 m!128079))

(assert (=> b!112109 m!128079))

(assert (=> b!112109 m!128081))

(assert (=> b!111942 d!31915))

(declare-fun bm!12006 () Bool)

(declare-fun call!12024 () Unit!3499)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!50 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 64) Int) Unit!3499)

(assert (=> bm!12006 (= call!12024 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (defaultEntry!2648 newMap!16)))))

(declare-fun bm!12007 () Bool)

(declare-fun call!12019 () ListLongMap!1599)

(declare-fun call!12027 () ListLongMap!1599)

(assert (=> bm!12007 (= call!12019 call!12027)))

(declare-fun b!112195 () Bool)

(declare-fun e!72958 () ListLongMap!1599)

(assert (=> b!112195 (= e!72958 (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun bm!12008 () Bool)

(declare-fun call!12031 () Bool)

(declare-fun call!12025 () Bool)

(assert (=> bm!12008 (= call!12031 call!12025)))

(declare-fun b!112196 () Bool)

(declare-fun res!55359 () Bool)

(declare-fun lt!57975 () SeekEntryResult!272)

(assert (=> b!112196 (= res!55359 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3242 lt!57975)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!72957 () Bool)

(assert (=> b!112196 (=> (not res!55359) (not e!72957))))

(declare-fun b!112197 () Bool)

(declare-fun res!55355 () Bool)

(declare-fun call!12032 () Bool)

(assert (=> b!112197 (= res!55355 call!12032)))

(declare-fun e!72975 () Bool)

(assert (=> b!112197 (=> (not res!55355) (not e!72975))))

(declare-fun bm!12009 () Bool)

(declare-fun call!12026 () ListLongMap!1599)

(declare-fun call!12018 () ListLongMap!1599)

(assert (=> bm!12009 (= call!12026 call!12018)))

(declare-fun b!112198 () Bool)

(declare-fun res!55352 () Bool)

(declare-fun lt!57976 () SeekEntryResult!272)

(assert (=> b!112198 (= res!55352 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3242 lt!57976)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!72955 () Bool)

(assert (=> b!112198 (=> (not res!55352) (not e!72955))))

(declare-fun bm!12010 () Bool)

(declare-fun call!12021 () ListLongMap!1599)

(assert (=> bm!12010 (= call!12021 (map!1298 newMap!16))))

(declare-fun b!112199 () Bool)

(declare-fun e!72965 () Bool)

(declare-fun call!12017 () ListLongMap!1599)

(assert (=> b!112199 (= e!72965 (= call!12017 call!12021))))

(declare-fun bm!12011 () Bool)

(declare-fun call!12011 () SeekEntryResult!272)

(declare-fun call!12014 () SeekEntryResult!272)

(assert (=> bm!12011 (= call!12011 call!12014)))

(declare-fun bm!12012 () Bool)

(declare-fun c!20045 () Bool)

(declare-fun c!20051 () Bool)

(assert (=> bm!12012 (= c!20045 c!20051)))

(declare-fun call!12029 () Bool)

(assert (=> bm!12012 (= call!12029 (contains!841 e!72958 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun b!112200 () Bool)

(declare-fun e!72969 () tuple2!2438)

(declare-fun e!72954 () tuple2!2438)

(assert (=> b!112200 (= e!72969 e!72954)))

(declare-fun lt!57974 () SeekEntryResult!272)

(assert (=> b!112200 (= lt!57974 (seekEntryOrOpen!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (_keys!4366 newMap!16) (mask!6826 newMap!16)))))

(assert (=> b!112200 (= c!20051 ((_ is Undefined!272) lt!57974))))

(declare-fun bm!12013 () Bool)

(declare-fun call!12012 () Bool)

(declare-fun call!12020 () Bool)

(assert (=> bm!12013 (= call!12012 call!12020)))

(declare-fun c!20052 () Bool)

(declare-fun call!12015 () ListLongMap!1599)

(declare-fun c!20044 () Bool)

(declare-fun e!72964 () ListLongMap!1599)

(declare-fun bm!12014 () Bool)

(assert (=> bm!12014 (= call!12015 (+!151 e!72964 (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(declare-fun c!20048 () Bool)

(assert (=> bm!12014 (= c!20048 c!20052)))

(declare-fun b!112201 () Bool)

(declare-fun e!72970 () Unit!3499)

(declare-fun lt!57982 () Unit!3499)

(assert (=> b!112201 (= e!72970 lt!57982)))

(declare-fun call!12028 () Unit!3499)

(assert (=> b!112201 (= lt!57982 call!12028)))

(declare-fun lt!57977 () SeekEntryResult!272)

(declare-fun call!12010 () SeekEntryResult!272)

(assert (=> b!112201 (= lt!57977 call!12010)))

(declare-fun res!55363 () Bool)

(assert (=> b!112201 (= res!55363 ((_ is Found!272) lt!57977))))

(assert (=> b!112201 (=> (not res!55363) (not e!72975))))

(assert (=> b!112201 e!72975))

(declare-fun b!112202 () Bool)

(declare-fun e!72959 () Bool)

(declare-fun lt!57988 () SeekEntryResult!272)

(assert (=> b!112202 (= e!72959 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!57988)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun b!112203 () Bool)

(declare-fun e!72961 () Bool)

(assert (=> b!112203 (= e!72961 ((_ is Undefined!272) lt!57975))))

(declare-fun b!112204 () Bool)

(declare-fun e!72973 () Unit!3499)

(declare-fun lt!57979 () Unit!3499)

(assert (=> b!112204 (= e!72973 lt!57979)))

(assert (=> b!112204 (= lt!57979 call!12024)))

(assert (=> b!112204 (= lt!57975 call!12011)))

(declare-fun c!20049 () Bool)

(assert (=> b!112204 (= c!20049 ((_ is MissingZero!272) lt!57975))))

(declare-fun e!72972 () Bool)

(assert (=> b!112204 e!72972))

(declare-fun c!20055 () Bool)

(declare-fun c!20053 () Bool)

(declare-fun bm!12015 () Bool)

(declare-fun c!20054 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!12015 (= call!12025 (inRange!0 (ite c!20051 (ite c!20054 (index!3240 lt!57988) (ite c!20049 (index!3239 lt!57975) (index!3242 lt!57975))) (ite c!20055 (index!3240 lt!57977) (ite c!20053 (index!3239 lt!57976) (index!3242 lt!57976)))) (mask!6826 newMap!16)))))

(declare-fun bm!12016 () Bool)

(assert (=> bm!12016 (= call!12032 call!12025)))

(declare-fun b!112205 () Bool)

(declare-fun lt!57994 () Unit!3499)

(declare-fun lt!57969 () Unit!3499)

(assert (=> b!112205 (= lt!57994 lt!57969)))

(declare-fun call!12013 () ListLongMap!1599)

(assert (=> b!112205 (= call!12013 call!12026)))

(declare-fun lt!57995 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!50 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 V!3251 Int) Unit!3499)

(assert (=> b!112205 (= lt!57969 (lemmaChangeLongMinValueKeyThenAddPairToListMap!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) lt!57995 (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) lt!57797 (defaultEntry!2648 newMap!16)))))

(assert (=> b!112205 (= lt!57995 (bvor (extraKeys!2441 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!72966 () tuple2!2438)

(assert (=> b!112205 (= e!72966 (tuple2!2439 true (LongMapFixedSize!925 (defaultEntry!2648 newMap!16) (mask!6826 newMap!16) (bvor (extraKeys!2441 newMap!16) #b00000000000000000000000000000010) (zeroValue!2517 newMap!16) lt!57797 (_size!511 newMap!16) (_keys!4366 newMap!16) (_values!2631 newMap!16) (_vacant!511 newMap!16))))))

(declare-fun bm!12017 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!50 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 64) Int) Unit!3499)

(assert (=> bm!12017 (= call!12028 (lemmaInListMapThenSeekEntryOrOpenFindsIt!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (defaultEntry!2648 newMap!16)))))

(declare-fun b!112206 () Bool)

(declare-fun call!12030 () Bool)

(assert (=> b!112206 (= e!72955 (not call!12030))))

(declare-fun bm!12018 () Bool)

(declare-fun call!12022 () Bool)

(assert (=> bm!12018 (= call!12022 call!12031)))

(declare-fun b!112207 () Bool)

(declare-fun lt!57981 () Unit!3499)

(assert (=> b!112207 (= lt!57981 e!72973)))

(assert (=> b!112207 (= c!20054 call!12029)))

(assert (=> b!112207 (= e!72954 (tuple2!2439 false newMap!16))))

(declare-fun b!112208 () Bool)

(assert (=> b!112208 (= e!72961 e!72957)))

(declare-fun res!55361 () Bool)

(assert (=> b!112208 (= res!55361 call!12022)))

(assert (=> b!112208 (=> (not res!55361) (not e!72957))))

(declare-fun bm!12019 () Bool)

(declare-fun call!12016 () Bool)

(assert (=> bm!12019 (= call!12016 call!12032)))

(declare-fun b!112209 () Bool)

(declare-fun e!72963 () Bool)

(assert (=> b!112209 (= e!72963 (= call!12017 (+!151 call!12021 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(declare-fun b!112210 () Bool)

(declare-fun lt!57980 () Unit!3499)

(declare-fun lt!57978 () Unit!3499)

(assert (=> b!112210 (= lt!57980 lt!57978)))

(assert (=> b!112210 (contains!841 call!12019 (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!57974)))))

(declare-fun lt!57985 () array!4404)

(declare-fun lemmaValidKeyInArrayIsInListMap!108 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 32) Int) Unit!3499)

(assert (=> b!112210 (= lt!57978 (lemmaValidKeyInArrayIsInListMap!108 (_keys!4366 newMap!16) lt!57985 (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (index!3240 lt!57974) (defaultEntry!2648 newMap!16)))))

(assert (=> b!112210 (= lt!57985 (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16))))))

(declare-fun lt!57992 () Unit!3499)

(declare-fun lt!57970 () Unit!3499)

(assert (=> b!112210 (= lt!57992 lt!57970)))

(assert (=> b!112210 (= call!12015 call!12018)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!50 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 32) (_ BitVec 64) V!3251 Int) Unit!3499)

(assert (=> b!112210 (= lt!57970 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (index!3240 lt!57974) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!57984 () Unit!3499)

(assert (=> b!112210 (= lt!57984 e!72970)))

(assert (=> b!112210 (= c!20055 call!12029)))

(declare-fun e!72968 () tuple2!2438)

(assert (=> b!112210 (= e!72968 (tuple2!2439 true (LongMapFixedSize!925 (defaultEntry!2648 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (_size!511 newMap!16) (_keys!4366 newMap!16) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16))) (_vacant!511 newMap!16))))))

(declare-fun b!112211 () Bool)

(assert (=> b!112211 (= e!72965 e!72963)))

(declare-fun res!55350 () Bool)

(assert (=> b!112211 (= res!55350 (contains!841 call!12017 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> b!112211 (=> (not res!55350) (not e!72963))))

(declare-fun bm!12020 () Bool)

(declare-fun lt!57986 () (_ BitVec 32))

(assert (=> bm!12020 (= call!12018 (getCurrentListMap!491 (_keys!4366 newMap!16) (ite c!20052 (_values!2631 newMap!16) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16)))) (mask!6826 newMap!16) (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16)) (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun b!112212 () Bool)

(declare-fun lt!57973 () tuple2!2438)

(declare-fun call!12023 () tuple2!2438)

(assert (=> b!112212 (= lt!57973 call!12023)))

(assert (=> b!112212 (= e!72968 (tuple2!2439 (_1!1229 lt!57973) (_2!1229 lt!57973)))))

(declare-fun b!112213 () Bool)

(assert (=> b!112213 (= e!72964 (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun b!112194 () Bool)

(declare-fun res!55358 () Bool)

(assert (=> b!112194 (= res!55358 call!12031)))

(assert (=> b!112194 (=> (not res!55358) (not e!72959))))

(declare-fun d!31917 () Bool)

(declare-fun e!72967 () Bool)

(assert (=> d!31917 e!72967))

(declare-fun res!55351 () Bool)

(assert (=> d!31917 (=> (not res!55351) (not e!72967))))

(declare-fun lt!57983 () tuple2!2438)

(assert (=> d!31917 (= res!55351 (valid!423 (_2!1229 lt!57983)))))

(assert (=> d!31917 (= lt!57983 e!72969)))

(assert (=> d!31917 (= c!20052 (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvneg (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355))))))

(assert (=> d!31917 (valid!423 newMap!16)))

(assert (=> d!31917 (= (update!164 newMap!16 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797) lt!57983)))

(declare-fun b!112214 () Bool)

(declare-fun res!55360 () Bool)

(declare-fun e!72960 () Bool)

(assert (=> b!112214 (=> (not res!55360) (not e!72960))))

(assert (=> b!112214 (= res!55360 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3239 lt!57976)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12021 () Bool)

(assert (=> bm!12021 (= call!12013 call!12015)))

(declare-fun b!112215 () Bool)

(declare-fun c!20042 () Bool)

(assert (=> b!112215 (= c!20042 ((_ is MissingVacant!272) lt!57975))))

(assert (=> b!112215 (= e!72972 e!72961)))

(declare-fun bm!12022 () Bool)

(assert (=> bm!12022 (= call!12020 (arrayContainsKey!0 (_keys!4366 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!112216 () Bool)

(declare-fun Unit!3507 () Unit!3499)

(assert (=> b!112216 (= e!72973 Unit!3507)))

(declare-fun lt!57991 () Unit!3499)

(assert (=> b!112216 (= lt!57991 call!12028)))

(assert (=> b!112216 (= lt!57988 call!12011)))

(declare-fun res!55353 () Bool)

(assert (=> b!112216 (= res!55353 ((_ is Found!272) lt!57988))))

(assert (=> b!112216 (=> (not res!55353) (not e!72959))))

(assert (=> b!112216 e!72959))

(declare-fun lt!57971 () Unit!3499)

(assert (=> b!112216 (= lt!57971 lt!57991)))

(assert (=> b!112216 false))

(declare-fun b!112217 () Bool)

(declare-fun c!20043 () Bool)

(assert (=> b!112217 (= c!20043 ((_ is MissingVacant!272) lt!57976))))

(declare-fun e!72962 () Bool)

(declare-fun e!72971 () Bool)

(assert (=> b!112217 (= e!72962 e!72971)))

(declare-fun b!112218 () Bool)

(declare-fun res!55362 () Bool)

(declare-fun e!72956 () Bool)

(assert (=> b!112218 (=> (not res!55362) (not e!72956))))

(assert (=> b!112218 (= res!55362 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3239 lt!57975)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!112219 () Bool)

(declare-fun res!55356 () Bool)

(assert (=> b!112219 (=> (not res!55356) (not e!72960))))

(assert (=> b!112219 (= res!55356 call!12016)))

(assert (=> b!112219 (= e!72962 e!72960)))

(declare-fun bm!12023 () Bool)

(assert (=> bm!12023 (= call!12017 (map!1298 (_2!1229 lt!57983)))))

(declare-fun b!112220 () Bool)

(assert (=> b!112220 (= e!72958 call!12019)))

(declare-fun b!112221 () Bool)

(declare-fun lt!57990 () Unit!3499)

(declare-fun lt!57993 () Unit!3499)

(assert (=> b!112221 (= lt!57990 lt!57993)))

(assert (=> b!112221 (= call!12013 call!12026)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!50 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 V!3251 Int) Unit!3499)

(assert (=> b!112221 (= lt!57993 (lemmaChangeZeroKeyThenAddPairToListMap!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) lt!57986 (zeroValue!2517 newMap!16) lt!57797 (minValue!2517 newMap!16) (defaultEntry!2648 newMap!16)))))

(assert (=> b!112221 (= lt!57986 (bvor (extraKeys!2441 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!112221 (= e!72966 (tuple2!2439 true (LongMapFixedSize!925 (defaultEntry!2648 newMap!16) (mask!6826 newMap!16) (bvor (extraKeys!2441 newMap!16) #b00000000000000000000000000000001) lt!57797 (minValue!2517 newMap!16) (_size!511 newMap!16) (_keys!4366 newMap!16) (_values!2631 newMap!16) (_vacant!511 newMap!16))))))

(declare-fun b!112222 () Bool)

(declare-fun res!55354 () Bool)

(assert (=> b!112222 (=> (not res!55354) (not e!72956))))

(assert (=> b!112222 (= res!55354 call!12022)))

(assert (=> b!112222 (= e!72972 e!72956)))

(declare-fun b!112223 () Bool)

(declare-fun Unit!3508 () Unit!3499)

(assert (=> b!112223 (= e!72970 Unit!3508)))

(declare-fun lt!57987 () Unit!3499)

(assert (=> b!112223 (= lt!57987 call!12024)))

(assert (=> b!112223 (= lt!57976 call!12010)))

(assert (=> b!112223 (= c!20053 ((_ is MissingZero!272) lt!57976))))

(assert (=> b!112223 e!72962))

(declare-fun lt!57989 () Unit!3499)

(assert (=> b!112223 (= lt!57989 lt!57987)))

(assert (=> b!112223 false))

(declare-fun b!112224 () Bool)

(assert (=> b!112224 (= e!72957 (not call!12012))))

(declare-fun b!112225 () Bool)

(declare-fun e!72974 () tuple2!2438)

(declare-fun lt!57972 () tuple2!2438)

(assert (=> b!112225 (= e!72974 (tuple2!2439 (_1!1229 lt!57972) (_2!1229 lt!57972)))))

(assert (=> b!112225 (= lt!57972 call!12023)))

(declare-fun b!112226 () Bool)

(assert (=> b!112226 (= e!72969 e!72966)))

(assert (=> b!112226 (= c!20044 (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!112227 () Bool)

(assert (=> b!112227 (= e!72960 (not call!12030))))

(declare-fun c!20046 () Bool)

(declare-fun bm!12024 () Bool)

(declare-fun updateHelperNewKey!50 (LongMapFixedSize!924 (_ BitVec 64) V!3251 (_ BitVec 32)) tuple2!2438)

(assert (=> bm!12024 (= call!12023 (updateHelperNewKey!50 newMap!16 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797 (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974))))))

(declare-fun b!112228 () Bool)

(assert (=> b!112228 (= e!72971 ((_ is Undefined!272) lt!57976))))

(declare-fun bm!12025 () Bool)

(assert (=> bm!12025 (= call!12027 (getCurrentListMap!491 (_keys!4366 newMap!16) (ite (or c!20052 c!20051) (_values!2631 newMap!16) lt!57985) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun b!112229 () Bool)

(declare-fun call!12009 () ListLongMap!1599)

(assert (=> b!112229 (= e!72964 call!12009)))

(declare-fun b!112230 () Bool)

(assert (=> b!112230 (= e!72974 e!72968)))

(declare-fun c!20050 () Bool)

(assert (=> b!112230 (= c!20050 ((_ is MissingZero!272) lt!57974))))

(declare-fun bm!12026 () Bool)

(assert (=> bm!12026 (= call!12009 call!12027)))

(declare-fun bm!12027 () Bool)

(assert (=> bm!12027 (= call!12014 (seekEntryOrOpen!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (_keys!4366 newMap!16) (mask!6826 newMap!16)))))

(declare-fun b!112231 () Bool)

(assert (=> b!112231 (= e!72975 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!57977)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun bm!12028 () Bool)

(assert (=> bm!12028 (= call!12030 call!12020)))

(declare-fun b!112232 () Bool)

(assert (=> b!112232 (= e!72956 (not call!12012))))

(declare-fun b!112233 () Bool)

(assert (=> b!112233 (= e!72967 e!72965)))

(declare-fun c!20047 () Bool)

(assert (=> b!112233 (= c!20047 (_1!1229 lt!57983))))

(declare-fun bm!12029 () Bool)

(assert (=> bm!12029 (= call!12010 call!12014)))

(declare-fun b!112234 () Bool)

(assert (=> b!112234 (= c!20046 ((_ is MissingVacant!272) lt!57974))))

(assert (=> b!112234 (= e!72954 e!72974)))

(declare-fun b!112235 () Bool)

(assert (=> b!112235 (= e!72971 e!72955)))

(declare-fun res!55357 () Bool)

(assert (=> b!112235 (= res!55357 call!12016)))

(assert (=> b!112235 (=> (not res!55357) (not e!72955))))

(assert (= (and d!31917 c!20052) b!112226))

(assert (= (and d!31917 (not c!20052)) b!112200))

(assert (= (and b!112226 c!20044) b!112221))

(assert (= (and b!112226 (not c!20044)) b!112205))

(assert (= (or b!112221 b!112205) bm!12009))

(assert (= (or b!112221 b!112205) bm!12026))

(assert (= (or b!112221 b!112205) bm!12021))

(assert (= (and b!112200 c!20051) b!112207))

(assert (= (and b!112200 (not c!20051)) b!112234))

(assert (= (and b!112207 c!20054) b!112216))

(assert (= (and b!112207 (not c!20054)) b!112204))

(assert (= (and b!112216 res!55353) b!112194))

(assert (= (and b!112194 res!55358) b!112202))

(assert (= (and b!112204 c!20049) b!112222))

(assert (= (and b!112204 (not c!20049)) b!112215))

(assert (= (and b!112222 res!55354) b!112218))

(assert (= (and b!112218 res!55362) b!112232))

(assert (= (and b!112215 c!20042) b!112208))

(assert (= (and b!112215 (not c!20042)) b!112203))

(assert (= (and b!112208 res!55361) b!112196))

(assert (= (and b!112196 res!55359) b!112224))

(assert (= (or b!112222 b!112208) bm!12018))

(assert (= (or b!112232 b!112224) bm!12013))

(assert (= (or b!112194 bm!12018) bm!12008))

(assert (= (or b!112216 b!112204) bm!12011))

(assert (= (and b!112234 c!20046) b!112225))

(assert (= (and b!112234 (not c!20046)) b!112230))

(assert (= (and b!112230 c!20050) b!112212))

(assert (= (and b!112230 (not c!20050)) b!112210))

(assert (= (and b!112210 c!20055) b!112201))

(assert (= (and b!112210 (not c!20055)) b!112223))

(assert (= (and b!112201 res!55363) b!112197))

(assert (= (and b!112197 res!55355) b!112231))

(assert (= (and b!112223 c!20053) b!112219))

(assert (= (and b!112223 (not c!20053)) b!112217))

(assert (= (and b!112219 res!55356) b!112214))

(assert (= (and b!112214 res!55360) b!112227))

(assert (= (and b!112217 c!20043) b!112235))

(assert (= (and b!112217 (not c!20043)) b!112228))

(assert (= (and b!112235 res!55357) b!112198))

(assert (= (and b!112198 res!55352) b!112206))

(assert (= (or b!112219 b!112235) bm!12019))

(assert (= (or b!112227 b!112206) bm!12028))

(assert (= (or b!112197 bm!12019) bm!12016))

(assert (= (or b!112201 b!112223) bm!12029))

(assert (= (or b!112225 b!112212) bm!12024))

(assert (= (or bm!12008 bm!12016) bm!12015))

(assert (= (or b!112207 b!112210) bm!12007))

(assert (= (or bm!12013 bm!12028) bm!12022))

(assert (= (or b!112204 b!112223) bm!12006))

(assert (= (or bm!12011 bm!12029) bm!12027))

(assert (= (or b!112216 b!112201) bm!12017))

(assert (= (or b!112207 b!112210) bm!12012))

(assert (= (and bm!12012 c!20045) b!112220))

(assert (= (and bm!12012 (not c!20045)) b!112195))

(assert (= (or bm!12026 bm!12007) bm!12025))

(assert (= (or bm!12009 b!112210) bm!12020))

(assert (= (or bm!12021 b!112210) bm!12014))

(assert (= (and bm!12014 c!20048) b!112229))

(assert (= (and bm!12014 (not c!20048)) b!112213))

(assert (= (and d!31917 res!55351) b!112233))

(assert (= (and b!112233 c!20047) b!112211))

(assert (= (and b!112233 (not c!20047)) b!112199))

(assert (= (and b!112211 res!55350) b!112209))

(assert (= (or b!112211 b!112209 b!112199) bm!12023))

(assert (= (or b!112209 b!112199) bm!12010))

(assert (=> bm!12012 m!127849))

(declare-fun m!128083 () Bool)

(assert (=> bm!12012 m!128083))

(declare-fun m!128085 () Bool)

(assert (=> bm!12025 m!128085))

(assert (=> bm!12017 m!127849))

(declare-fun m!128087 () Bool)

(assert (=> bm!12017 m!128087))

(declare-fun m!128089 () Bool)

(assert (=> b!112196 m!128089))

(assert (=> bm!12010 m!127861))

(declare-fun m!128091 () Bool)

(assert (=> b!112202 m!128091))

(declare-fun m!128093 () Bool)

(assert (=> b!112210 m!128093))

(declare-fun m!128095 () Bool)

(assert (=> b!112210 m!128095))

(assert (=> b!112210 m!127849))

(declare-fun m!128097 () Bool)

(assert (=> b!112210 m!128097))

(declare-fun m!128099 () Bool)

(assert (=> b!112210 m!128099))

(assert (=> b!112210 m!128093))

(declare-fun m!128101 () Bool)

(assert (=> b!112210 m!128101))

(assert (=> bm!12027 m!127849))

(declare-fun m!128103 () Bool)

(assert (=> bm!12027 m!128103))

(assert (=> b!112200 m!127849))

(assert (=> b!112200 m!128103))

(assert (=> bm!12022 m!127849))

(declare-fun m!128105 () Bool)

(assert (=> bm!12022 m!128105))

(assert (=> bm!12024 m!127849))

(declare-fun m!128107 () Bool)

(assert (=> bm!12024 m!128107))

(declare-fun m!128109 () Bool)

(assert (=> d!31917 m!128109))

(assert (=> d!31917 m!127865))

(declare-fun m!128111 () Bool)

(assert (=> b!112198 m!128111))

(declare-fun m!128113 () Bool)

(assert (=> bm!12014 m!128113))

(assert (=> bm!12006 m!127849))

(declare-fun m!128115 () Bool)

(assert (=> bm!12006 m!128115))

(declare-fun m!128117 () Bool)

(assert (=> b!112195 m!128117))

(assert (=> bm!12020 m!128099))

(declare-fun m!128119 () Bool)

(assert (=> bm!12020 m!128119))

(declare-fun m!128121 () Bool)

(assert (=> b!112231 m!128121))

(declare-fun m!128123 () Bool)

(assert (=> b!112209 m!128123))

(declare-fun m!128125 () Bool)

(assert (=> b!112214 m!128125))

(declare-fun m!128127 () Bool)

(assert (=> b!112205 m!128127))

(declare-fun m!128129 () Bool)

(assert (=> b!112221 m!128129))

(declare-fun m!128131 () Bool)

(assert (=> b!112218 m!128131))

(assert (=> b!112211 m!127849))

(declare-fun m!128133 () Bool)

(assert (=> b!112211 m!128133))

(declare-fun m!128135 () Bool)

(assert (=> bm!12023 m!128135))

(declare-fun m!128137 () Bool)

(assert (=> bm!12015 m!128137))

(assert (=> b!112213 m!128117))

(assert (=> b!111942 d!31917))

(declare-fun d!31919 () Bool)

(assert (=> d!31919 (= (valid!422 thiss!992) (valid!423 (v!2945 (underlying!373 thiss!992))))))

(declare-fun bs!4619 () Bool)

(assert (= bs!4619 d!31919))

(declare-fun m!128139 () Bool)

(assert (=> bs!4619 m!128139))

(assert (=> start!12856 d!31919))

(declare-fun d!31921 () Bool)

(declare-fun c!20058 () Bool)

(assert (=> d!31921 (= c!20058 ((_ is ValueCellFull!1008) (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun e!72978 () V!3251)

(assert (=> d!31921 (= (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) from!355) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!72978)))

(declare-fun b!112240 () Bool)

(declare-fun get!1363 (ValueCell!1008 V!3251) V!3251)

(assert (=> b!112240 (= e!72978 (get!1363 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) from!355) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!112241 () Bool)

(declare-fun get!1364 (ValueCell!1008 V!3251) V!3251)

(assert (=> b!112241 (= e!72978 (get!1364 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) from!355) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!31921 c!20058) b!112240))

(assert (= (and d!31921 (not c!20058)) b!112241))

(assert (=> b!112240 m!127881))

(assert (=> b!112240 m!127883))

(declare-fun m!128141 () Bool)

(assert (=> b!112240 m!128141))

(assert (=> b!112241 m!127881))

(assert (=> b!112241 m!127883))

(declare-fun m!128143 () Bool)

(assert (=> b!112241 m!128143))

(assert (=> b!111927 d!31921))

(declare-fun d!31923 () Bool)

(assert (=> d!31923 (= (array_inv!1255 (_keys!4366 newMap!16)) (bvsge (size!2344 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!111932 d!31923))

(declare-fun d!31925 () Bool)

(assert (=> d!31925 (= (array_inv!1256 (_values!2631 newMap!16)) (bvsge (size!2345 (_values!2631 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!111932 d!31925))

(declare-fun d!31927 () Bool)

(declare-fun res!55370 () Bool)

(declare-fun e!72981 () Bool)

(assert (=> d!31927 (=> (not res!55370) (not e!72981))))

(declare-fun simpleValid!76 (LongMapFixedSize!924) Bool)

(assert (=> d!31927 (= res!55370 (simpleValid!76 newMap!16))))

(assert (=> d!31927 (= (valid!423 newMap!16) e!72981)))

(declare-fun b!112248 () Bool)

(declare-fun res!55371 () Bool)

(assert (=> b!112248 (=> (not res!55371) (not e!72981))))

(declare-fun arrayCountValidKeys!0 (array!4402 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!112248 (= res!55371 (= (arrayCountValidKeys!0 (_keys!4366 newMap!16) #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))) (_size!511 newMap!16)))))

(declare-fun b!112249 () Bool)

(declare-fun res!55372 () Bool)

(assert (=> b!112249 (=> (not res!55372) (not e!72981))))

(assert (=> b!112249 (= res!55372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4366 newMap!16) (mask!6826 newMap!16)))))

(declare-fun b!112250 () Bool)

(assert (=> b!112250 (= e!72981 (arrayNoDuplicates!0 (_keys!4366 newMap!16) #b00000000000000000000000000000000 Nil!1653))))

(assert (= (and d!31927 res!55370) b!112248))

(assert (= (and b!112248 res!55371) b!112249))

(assert (= (and b!112249 res!55372) b!112250))

(declare-fun m!128145 () Bool)

(assert (=> d!31927 m!128145))

(declare-fun m!128147 () Bool)

(assert (=> b!112248 m!128147))

(declare-fun m!128149 () Bool)

(assert (=> b!112249 m!128149))

(declare-fun m!128151 () Bool)

(assert (=> b!112250 m!128151))

(assert (=> b!111931 d!31927))

(declare-fun d!31929 () Bool)

(assert (=> d!31929 (= (map!1298 newMap!16) (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun bs!4620 () Bool)

(assert (= bs!4620 d!31929))

(assert (=> bs!4620 m!128117))

(assert (=> b!111943 d!31929))

(declare-fun b!112293 () Bool)

(declare-fun e!73017 () Bool)

(declare-fun e!73014 () Bool)

(assert (=> b!112293 (= e!73017 e!73014)))

(declare-fun c!20073 () Bool)

(assert (=> b!112293 (= c!20073 (not (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!12044 () Bool)

(declare-fun call!12047 () Bool)

(declare-fun lt!58057 () ListLongMap!1599)

(assert (=> bm!12044 (= call!12047 (contains!841 lt!58057 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12045 () Bool)

(declare-fun call!12049 () Bool)

(assert (=> bm!12045 (= call!12049 (contains!841 lt!58057 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!112294 () Bool)

(declare-fun e!73012 () Bool)

(assert (=> b!112294 (= e!73012 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!12046 () Bool)

(declare-fun call!12050 () ListLongMap!1599)

(assert (=> bm!12046 (= call!12050 (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!112295 () Bool)

(declare-fun e!73018 () ListLongMap!1599)

(declare-fun call!12053 () ListLongMap!1599)

(assert (=> b!112295 (= e!73018 call!12053)))

(declare-fun b!112296 () Bool)

(declare-fun res!55397 () Bool)

(assert (=> b!112296 (=> (not res!55397) (not e!73017))))

(declare-fun e!73019 () Bool)

(assert (=> b!112296 (= res!55397 e!73019)))

(declare-fun res!55391 () Bool)

(assert (=> b!112296 (=> res!55391 e!73019)))

(assert (=> b!112296 (= res!55391 (not e!73012))))

(declare-fun res!55395 () Bool)

(assert (=> b!112296 (=> (not res!55395) (not e!73012))))

(assert (=> b!112296 (= res!55395 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun b!112297 () Bool)

(declare-fun e!73010 () ListLongMap!1599)

(declare-fun call!12048 () ListLongMap!1599)

(assert (=> b!112297 (= e!73010 call!12048)))

(declare-fun call!12051 () ListLongMap!1599)

(declare-fun c!20072 () Bool)

(declare-fun call!12052 () ListLongMap!1599)

(declare-fun bm!12047 () Bool)

(declare-fun c!20074 () Bool)

(assert (=> bm!12047 (= call!12051 (+!151 (ite c!20074 call!12050 (ite c!20072 call!12052 call!12053)) (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(declare-fun b!112298 () Bool)

(declare-fun e!73013 () Bool)

(assert (=> b!112298 (= e!73013 (not call!12049))))

(declare-fun b!112299 () Bool)

(declare-fun e!73015 () Unit!3499)

(declare-fun Unit!3509 () Unit!3499)

(assert (=> b!112299 (= e!73015 Unit!3509)))

(declare-fun b!112300 () Bool)

(assert (=> b!112300 (= e!73018 call!12048)))

(declare-fun b!112301 () Bool)

(declare-fun e!73011 () Bool)

(assert (=> b!112301 (= e!73011 (= (apply!101 lt!58057 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!112302 () Bool)

(declare-fun e!73008 () ListLongMap!1599)

(assert (=> b!112302 (= e!73008 e!73010)))

(assert (=> b!112302 (= c!20072 (and (not (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!112303 () Bool)

(assert (=> b!112303 (= e!73008 (+!151 call!12051 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun bm!12048 () Bool)

(assert (=> bm!12048 (= call!12052 call!12050)))

(declare-fun d!31931 () Bool)

(assert (=> d!31931 e!73017))

(declare-fun res!55392 () Bool)

(assert (=> d!31931 (=> (not res!55392) (not e!73017))))

(assert (=> d!31931 (= res!55392 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))))

(declare-fun lt!58061 () ListLongMap!1599)

(assert (=> d!31931 (= lt!58057 lt!58061)))

(declare-fun lt!58055 () Unit!3499)

(assert (=> d!31931 (= lt!58055 e!73015)))

(declare-fun c!20076 () Bool)

(declare-fun e!73016 () Bool)

(assert (=> d!31931 (= c!20076 e!73016)))

(declare-fun res!55398 () Bool)

(assert (=> d!31931 (=> (not res!55398) (not e!73016))))

(assert (=> d!31931 (= res!55398 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(assert (=> d!31931 (= lt!58061 e!73008)))

(assert (=> d!31931 (= c!20074 (and (not (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!31931 (validMask!0 (mask!6826 (v!2945 (underlying!373 thiss!992))))))

(assert (=> d!31931 (= (getCurrentListMap!491 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))) lt!58057)))

(declare-fun b!112304 () Bool)

(assert (=> b!112304 (= e!73014 (not call!12047))))

(declare-fun b!112305 () Bool)

(declare-fun e!73009 () Bool)

(assert (=> b!112305 (= e!73009 (= (apply!101 lt!58057 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!112305 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2345 (_values!2631 (v!2945 (underlying!373 thiss!992))))))))

(assert (=> b!112305 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun b!112306 () Bool)

(declare-fun lt!58041 () Unit!3499)

(assert (=> b!112306 (= e!73015 lt!58041)))

(declare-fun lt!58043 () ListLongMap!1599)

(assert (=> b!112306 (= lt!58043 (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun lt!58044 () (_ BitVec 64))

(assert (=> b!112306 (= lt!58044 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58050 () (_ BitVec 64))

(assert (=> b!112306 (= lt!58050 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!58040 () Unit!3499)

(declare-fun addStillContains!77 (ListLongMap!1599 (_ BitVec 64) V!3251 (_ BitVec 64)) Unit!3499)

(assert (=> b!112306 (= lt!58040 (addStillContains!77 lt!58043 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58050))))

(assert (=> b!112306 (contains!841 (+!151 lt!58043 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58050)))

(declare-fun lt!58058 () Unit!3499)

(assert (=> b!112306 (= lt!58058 lt!58040)))

(declare-fun lt!58049 () ListLongMap!1599)

(assert (=> b!112306 (= lt!58049 (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun lt!58045 () (_ BitVec 64))

(assert (=> b!112306 (= lt!58045 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58056 () (_ BitVec 64))

(assert (=> b!112306 (= lt!58056 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!58054 () Unit!3499)

(declare-fun addApplyDifferent!77 (ListLongMap!1599 (_ BitVec 64) V!3251 (_ BitVec 64)) Unit!3499)

(assert (=> b!112306 (= lt!58054 (addApplyDifferent!77 lt!58049 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58056))))

(assert (=> b!112306 (= (apply!101 (+!151 lt!58049 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58056) (apply!101 lt!58049 lt!58056))))

(declare-fun lt!58051 () Unit!3499)

(assert (=> b!112306 (= lt!58051 lt!58054)))

(declare-fun lt!58060 () ListLongMap!1599)

(assert (=> b!112306 (= lt!58060 (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun lt!58059 () (_ BitVec 64))

(assert (=> b!112306 (= lt!58059 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58047 () (_ BitVec 64))

(assert (=> b!112306 (= lt!58047 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!58046 () Unit!3499)

(assert (=> b!112306 (= lt!58046 (addApplyDifferent!77 lt!58060 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58047))))

(assert (=> b!112306 (= (apply!101 (+!151 lt!58060 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58047) (apply!101 lt!58060 lt!58047))))

(declare-fun lt!58052 () Unit!3499)

(assert (=> b!112306 (= lt!58052 lt!58046)))

(declare-fun lt!58042 () ListLongMap!1599)

(assert (=> b!112306 (= lt!58042 (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun lt!58053 () (_ BitVec 64))

(assert (=> b!112306 (= lt!58053 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58048 () (_ BitVec 64))

(assert (=> b!112306 (= lt!58048 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!112306 (= lt!58041 (addApplyDifferent!77 lt!58042 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58048))))

(assert (=> b!112306 (= (apply!101 (+!151 lt!58042 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58048) (apply!101 lt!58042 lt!58048))))

(declare-fun b!112307 () Bool)

(assert (=> b!112307 (= e!73019 e!73009)))

(declare-fun res!55394 () Bool)

(assert (=> b!112307 (=> (not res!55394) (not e!73009))))

(assert (=> b!112307 (= res!55394 (contains!841 lt!58057 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!112307 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun bm!12049 () Bool)

(assert (=> bm!12049 (= call!12053 call!12052)))

(declare-fun b!112308 () Bool)

(declare-fun c!20071 () Bool)

(assert (=> b!112308 (= c!20071 (and (not (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!112308 (= e!73010 e!73018)))

(declare-fun b!112309 () Bool)

(declare-fun e!73020 () Bool)

(assert (=> b!112309 (= e!73014 e!73020)))

(declare-fun res!55393 () Bool)

(assert (=> b!112309 (= res!55393 call!12047)))

(assert (=> b!112309 (=> (not res!55393) (not e!73020))))

(declare-fun b!112310 () Bool)

(assert (=> b!112310 (= e!73016 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!112311 () Bool)

(assert (=> b!112311 (= e!73013 e!73011)))

(declare-fun res!55396 () Bool)

(assert (=> b!112311 (= res!55396 call!12049)))

(assert (=> b!112311 (=> (not res!55396) (not e!73011))))

(declare-fun bm!12050 () Bool)

(assert (=> bm!12050 (= call!12048 call!12051)))

(declare-fun b!112312 () Bool)

(assert (=> b!112312 (= e!73020 (= (apply!101 lt!58057 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!112313 () Bool)

(declare-fun res!55399 () Bool)

(assert (=> b!112313 (=> (not res!55399) (not e!73017))))

(assert (=> b!112313 (= res!55399 e!73013)))

(declare-fun c!20075 () Bool)

(assert (=> b!112313 (= c!20075 (not (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!31931 c!20074) b!112303))

(assert (= (and d!31931 (not c!20074)) b!112302))

(assert (= (and b!112302 c!20072) b!112297))

(assert (= (and b!112302 (not c!20072)) b!112308))

(assert (= (and b!112308 c!20071) b!112300))

(assert (= (and b!112308 (not c!20071)) b!112295))

(assert (= (or b!112300 b!112295) bm!12049))

(assert (= (or b!112297 bm!12049) bm!12048))

(assert (= (or b!112297 b!112300) bm!12050))

(assert (= (or b!112303 bm!12048) bm!12046))

(assert (= (or b!112303 bm!12050) bm!12047))

(assert (= (and d!31931 res!55398) b!112310))

(assert (= (and d!31931 c!20076) b!112306))

(assert (= (and d!31931 (not c!20076)) b!112299))

(assert (= (and d!31931 res!55392) b!112296))

(assert (= (and b!112296 res!55395) b!112294))

(assert (= (and b!112296 (not res!55391)) b!112307))

(assert (= (and b!112307 res!55394) b!112305))

(assert (= (and b!112296 res!55397) b!112313))

(assert (= (and b!112313 c!20075) b!112311))

(assert (= (and b!112313 (not c!20075)) b!112298))

(assert (= (and b!112311 res!55396) b!112301))

(assert (= (or b!112311 b!112298) bm!12045))

(assert (= (and b!112313 res!55399) b!112293))

(assert (= (and b!112293 c!20073) b!112309))

(assert (= (and b!112293 (not c!20073)) b!112304))

(assert (= (and b!112309 res!55393) b!112312))

(assert (= (or b!112309 b!112304) bm!12044))

(declare-fun b_lambda!5051 () Bool)

(assert (=> (not b_lambda!5051) (not b!112305)))

(assert (=> b!112305 t!5823))

(declare-fun b_and!6917 () Bool)

(assert (= b_and!6913 (and (=> t!5823 result!3563) b_and!6917)))

(assert (=> b!112305 t!5825))

(declare-fun b_and!6919 () Bool)

(assert (= b_and!6915 (and (=> t!5825 result!3567) b_and!6919)))

(declare-fun m!128153 () Bool)

(assert (=> b!112306 m!128153))

(assert (=> b!112306 m!127975))

(assert (=> b!112306 m!127899))

(declare-fun m!128155 () Bool)

(assert (=> b!112306 m!128155))

(declare-fun m!128157 () Bool)

(assert (=> b!112306 m!128157))

(declare-fun m!128159 () Bool)

(assert (=> b!112306 m!128159))

(declare-fun m!128161 () Bool)

(assert (=> b!112306 m!128161))

(declare-fun m!128163 () Bool)

(assert (=> b!112306 m!128163))

(declare-fun m!128165 () Bool)

(assert (=> b!112306 m!128165))

(declare-fun m!128167 () Bool)

(assert (=> b!112306 m!128167))

(declare-fun m!128169 () Bool)

(assert (=> b!112306 m!128169))

(declare-fun m!128171 () Bool)

(assert (=> b!112306 m!128171))

(assert (=> b!112306 m!128153))

(declare-fun m!128173 () Bool)

(assert (=> b!112306 m!128173))

(assert (=> b!112306 m!128155))

(assert (=> b!112306 m!128169))

(declare-fun m!128175 () Bool)

(assert (=> b!112306 m!128175))

(assert (=> b!112306 m!128161))

(declare-fun m!128177 () Bool)

(assert (=> b!112306 m!128177))

(declare-fun m!128179 () Bool)

(assert (=> b!112306 m!128179))

(declare-fun m!128181 () Bool)

(assert (=> b!112306 m!128181))

(declare-fun m!128183 () Bool)

(assert (=> bm!12047 m!128183))

(declare-fun m!128185 () Bool)

(assert (=> b!112303 m!128185))

(declare-fun m!128187 () Bool)

(assert (=> b!112312 m!128187))

(assert (=> b!112305 m!127883))

(assert (=> b!112305 m!127975))

(assert (=> b!112305 m!127965))

(assert (=> b!112305 m!127975))

(declare-fun m!128189 () Bool)

(assert (=> b!112305 m!128189))

(assert (=> b!112305 m!127965))

(assert (=> b!112305 m!127883))

(assert (=> b!112305 m!127967))

(assert (=> b!112294 m!127975))

(assert (=> b!112294 m!127975))

(assert (=> b!112294 m!127985))

(assert (=> bm!12046 m!127899))

(assert (=> d!31931 m!127895))

(assert (=> b!112310 m!127975))

(assert (=> b!112310 m!127975))

(assert (=> b!112310 m!127985))

(declare-fun m!128191 () Bool)

(assert (=> b!112301 m!128191))

(declare-fun m!128193 () Bool)

(assert (=> bm!12044 m!128193))

(declare-fun m!128195 () Bool)

(assert (=> bm!12045 m!128195))

(assert (=> b!112307 m!127975))

(assert (=> b!112307 m!127975))

(declare-fun m!128197 () Bool)

(assert (=> b!112307 m!128197))

(assert (=> b!111943 d!31931))

(declare-fun b!112321 () Bool)

(declare-fun e!73025 () Bool)

(assert (=> b!112321 (= e!73025 tp_is_empty!2703)))

(declare-fun b!112320 () Bool)

(declare-fun e!73026 () Bool)

(assert (=> b!112320 (= e!73026 tp_is_empty!2703)))

(declare-fun condMapEmpty!4035 () Bool)

(declare-fun mapDefault!4035 () ValueCell!1008)

(assert (=> mapNonEmpty!4026 (= condMapEmpty!4035 (= mapRest!4026 ((as const (Array (_ BitVec 32) ValueCell!1008)) mapDefault!4035)))))

(declare-fun mapRes!4035 () Bool)

(assert (=> mapNonEmpty!4026 (= tp!10067 (and e!73025 mapRes!4035))))

(declare-fun mapNonEmpty!4035 () Bool)

(declare-fun tp!10083 () Bool)

(assert (=> mapNonEmpty!4035 (= mapRes!4035 (and tp!10083 e!73026))))

(declare-fun mapKey!4035 () (_ BitVec 32))

(declare-fun mapValue!4035 () ValueCell!1008)

(declare-fun mapRest!4035 () (Array (_ BitVec 32) ValueCell!1008))

(assert (=> mapNonEmpty!4035 (= mapRest!4026 (store mapRest!4035 mapKey!4035 mapValue!4035))))

(declare-fun mapIsEmpty!4035 () Bool)

(assert (=> mapIsEmpty!4035 mapRes!4035))

(assert (= (and mapNonEmpty!4026 condMapEmpty!4035) mapIsEmpty!4035))

(assert (= (and mapNonEmpty!4026 (not condMapEmpty!4035)) mapNonEmpty!4035))

(assert (= (and mapNonEmpty!4035 ((_ is ValueCellFull!1008) mapValue!4035)) b!112320))

(assert (= (and mapNonEmpty!4026 ((_ is ValueCellFull!1008) mapDefault!4035)) b!112321))

(declare-fun m!128199 () Bool)

(assert (=> mapNonEmpty!4035 m!128199))

(declare-fun b!112323 () Bool)

(declare-fun e!73027 () Bool)

(assert (=> b!112323 (= e!73027 tp_is_empty!2703)))

(declare-fun b!112322 () Bool)

(declare-fun e!73028 () Bool)

(assert (=> b!112322 (= e!73028 tp_is_empty!2703)))

(declare-fun condMapEmpty!4036 () Bool)

(declare-fun mapDefault!4036 () ValueCell!1008)

(assert (=> mapNonEmpty!4025 (= condMapEmpty!4036 (= mapRest!4025 ((as const (Array (_ BitVec 32) ValueCell!1008)) mapDefault!4036)))))

(declare-fun mapRes!4036 () Bool)

(assert (=> mapNonEmpty!4025 (= tp!10065 (and e!73027 mapRes!4036))))

(declare-fun mapNonEmpty!4036 () Bool)

(declare-fun tp!10084 () Bool)

(assert (=> mapNonEmpty!4036 (= mapRes!4036 (and tp!10084 e!73028))))

(declare-fun mapKey!4036 () (_ BitVec 32))

(declare-fun mapValue!4036 () ValueCell!1008)

(declare-fun mapRest!4036 () (Array (_ BitVec 32) ValueCell!1008))

(assert (=> mapNonEmpty!4036 (= mapRest!4025 (store mapRest!4036 mapKey!4036 mapValue!4036))))

(declare-fun mapIsEmpty!4036 () Bool)

(assert (=> mapIsEmpty!4036 mapRes!4036))

(assert (= (and mapNonEmpty!4025 condMapEmpty!4036) mapIsEmpty!4036))

(assert (= (and mapNonEmpty!4025 (not condMapEmpty!4036)) mapNonEmpty!4036))

(assert (= (and mapNonEmpty!4036 ((_ is ValueCellFull!1008) mapValue!4036)) b!112322))

(assert (= (and mapNonEmpty!4025 ((_ is ValueCellFull!1008) mapDefault!4036)) b!112323))

(declare-fun m!128201 () Bool)

(assert (=> mapNonEmpty!4036 m!128201))

(declare-fun b_lambda!5053 () Bool)

(assert (= b_lambda!5051 (or (and b!111938 b_free!2573) (and b!111932 b_free!2575 (= (defaultEntry!2648 newMap!16) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))))) b_lambda!5053)))

(declare-fun b_lambda!5055 () Bool)

(assert (= b_lambda!5047 (or (and b!111938 b_free!2573) (and b!111932 b_free!2575 (= (defaultEntry!2648 newMap!16) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))))) b_lambda!5055)))

(declare-fun b_lambda!5057 () Bool)

(assert (= b_lambda!5049 (or (and b!111938 b_free!2573) (and b!111932 b_free!2575 (= (defaultEntry!2648 newMap!16) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))))) b_lambda!5057)))

(check-sat (not b!112240) (not b!112043) (not d!31905) (not bm!12023) (not b!112097) (not b!112107) (not b!112055) (not b_lambda!5045) (not bm!12012) (not b!112301) (not b!112058) (not d!31915) (not mapNonEmpty!4035) (not b!112310) (not bm!12027) (not b!112241) (not d!31917) (not b!112041) (not b!112306) (not b!112085) (not b!112046) (not b!112059) (not bm!12015) (not b!112209) (not b_lambda!5057) (not bm!12046) (not b!112195) (not b!112060) (not bm!12047) (not b!112086) b_and!6917 (not d!31929) (not bm!11954) (not b!112303) (not b!112039) (not b!112210) (not b!112056) (not d!31927) (not b!112109) (not b!112213) (not d!31931) (not b!112312) (not b!112307) (not bm!12044) (not bm!12010) (not b!112067) (not b!112211) (not d!31903) (not mapNonEmpty!4036) (not d!31897) (not b!112061) (not b!112057) (not bm!12014) (not bm!12024) (not d!31895) (not b!112221) (not b!112205) (not b_next!2573) (not bm!12017) (not b!112042) (not bm!12045) (not b!112249) (not b!112200) (not d!31893) (not b!112088) (not d!31919) (not b!112099) (not d!31891) (not bm!11951) (not bm!12006) (not bm!12022) (not b_next!2575) (not b!112072) (not b!112054) (not b!112048) (not bm!12025) (not b!112250) b_and!6919 (not d!31909) (not bm!11957) (not d!31899) (not b!112047) (not d!31889) (not bm!12020) (not b!112294) (not b!112248) tp_is_empty!2703 (not b!112305) (not b!112038) (not b_lambda!5053) (not b_lambda!5055))
(check-sat b_and!6917 b_and!6919 (not b_next!2573) (not b_next!2575))
(get-model)

(declare-fun e!73030 () Bool)

(declare-fun lt!58064 () ListLongMap!1599)

(declare-fun b!112325 () Bool)

(assert (=> b!112325 (= e!73030 (= lt!58064 (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun b!112326 () Bool)

(declare-fun e!73035 () Bool)

(assert (=> b!112326 (= e!73035 e!73030)))

(declare-fun c!20080 () Bool)

(assert (=> b!112326 (= c!20080 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun b!112327 () Bool)

(assert (=> b!112327 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(assert (=> b!112327 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2345 (_values!2631 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun e!73031 () Bool)

(assert (=> b!112327 (= e!73031 (= (apply!101 lt!58064 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!112328 () Bool)

(assert (=> b!112328 (= e!73030 (isEmpty!384 lt!58064))))

(declare-fun b!112329 () Bool)

(declare-fun e!73032 () ListLongMap!1599)

(declare-fun e!73029 () ListLongMap!1599)

(assert (=> b!112329 (= e!73032 e!73029)))

(declare-fun c!20077 () Bool)

(assert (=> b!112329 (= c!20077 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!112330 () Bool)

(assert (=> b!112330 (= e!73032 (ListLongMap!1600 Nil!1654))))

(declare-fun b!112331 () Bool)

(declare-fun call!12054 () ListLongMap!1599)

(assert (=> b!112331 (= e!73029 call!12054)))

(declare-fun b!112332 () Bool)

(assert (=> b!112332 (= e!73035 e!73031)))

(assert (=> b!112332 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun res!55402 () Bool)

(assert (=> b!112332 (= res!55402 (contains!841 lt!58064 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!112332 (=> (not res!55402) (not e!73031))))

(declare-fun b!112324 () Bool)

(declare-fun res!55403 () Bool)

(declare-fun e!73034 () Bool)

(assert (=> b!112324 (=> (not res!55403) (not e!73034))))

(assert (=> b!112324 (= res!55403 (not (contains!841 lt!58064 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!31933 () Bool)

(assert (=> d!31933 e!73034))

(declare-fun res!55400 () Bool)

(assert (=> d!31933 (=> (not res!55400) (not e!73034))))

(assert (=> d!31933 (= res!55400 (not (contains!841 lt!58064 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!31933 (= lt!58064 e!73032)))

(declare-fun c!20078 () Bool)

(assert (=> d!31933 (= c!20078 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(assert (=> d!31933 (validMask!0 (mask!6826 (v!2945 (underlying!373 thiss!992))))))

(assert (=> d!31933 (= (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))) lt!58064)))

(declare-fun b!112333 () Bool)

(declare-fun lt!58062 () Unit!3499)

(declare-fun lt!58065 () Unit!3499)

(assert (=> b!112333 (= lt!58062 lt!58065)))

(declare-fun lt!58066 () ListLongMap!1599)

(declare-fun lt!58067 () V!3251)

(declare-fun lt!58068 () (_ BitVec 64))

(declare-fun lt!58063 () (_ BitVec 64))

(assert (=> b!112333 (not (contains!841 (+!151 lt!58066 (tuple2!2437 lt!58068 lt!58067)) lt!58063))))

(assert (=> b!112333 (= lt!58065 (addStillNotContains!51 lt!58066 lt!58068 lt!58067 lt!58063))))

(assert (=> b!112333 (= lt!58063 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!112333 (= lt!58067 (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!112333 (= lt!58068 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (=> b!112333 (= lt!58066 call!12054)))

(assert (=> b!112333 (= e!73029 (+!151 call!12054 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!12051 () Bool)

(assert (=> bm!12051 (= call!12054 (getCurrentListMapNoExtraKeys!118 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!112334 () Bool)

(declare-fun e!73033 () Bool)

(assert (=> b!112334 (= e!73033 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!112334 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!112335 () Bool)

(assert (=> b!112335 (= e!73034 e!73035)))

(declare-fun c!20079 () Bool)

(assert (=> b!112335 (= c!20079 e!73033)))

(declare-fun res!55401 () Bool)

(assert (=> b!112335 (=> (not res!55401) (not e!73033))))

(assert (=> b!112335 (= res!55401 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(assert (= (and d!31933 c!20078) b!112330))

(assert (= (and d!31933 (not c!20078)) b!112329))

(assert (= (and b!112329 c!20077) b!112333))

(assert (= (and b!112329 (not c!20077)) b!112331))

(assert (= (or b!112333 b!112331) bm!12051))

(assert (= (and d!31933 res!55400) b!112324))

(assert (= (and b!112324 res!55403) b!112335))

(assert (= (and b!112335 res!55401) b!112334))

(assert (= (and b!112335 c!20079) b!112332))

(assert (= (and b!112335 (not c!20079)) b!112326))

(assert (= (and b!112332 res!55402) b!112327))

(assert (= (and b!112326 c!20080) b!112325))

(assert (= (and b!112326 (not c!20080)) b!112328))

(declare-fun b_lambda!5059 () Bool)

(assert (=> (not b_lambda!5059) (not b!112327)))

(assert (=> b!112327 t!5823))

(declare-fun b_and!6921 () Bool)

(assert (= b_and!6917 (and (=> t!5823 result!3563) b_and!6921)))

(assert (=> b!112327 t!5825))

(declare-fun b_and!6923 () Bool)

(assert (= b_and!6919 (and (=> t!5825 result!3567) b_and!6923)))

(declare-fun b_lambda!5061 () Bool)

(assert (=> (not b_lambda!5061) (not b!112333)))

(assert (=> b!112333 t!5823))

(declare-fun b_and!6925 () Bool)

(assert (= b_and!6921 (and (=> t!5823 result!3563) b_and!6925)))

(assert (=> b!112333 t!5825))

(declare-fun b_and!6927 () Bool)

(assert (= b_and!6923 (and (=> t!5825 result!3567) b_and!6927)))

(declare-fun m!128203 () Bool)

(assert (=> b!112328 m!128203))

(assert (=> b!112333 m!127883))

(declare-fun m!128205 () Bool)

(assert (=> b!112333 m!128205))

(assert (=> b!112333 m!127883))

(declare-fun m!128207 () Bool)

(assert (=> b!112333 m!128207))

(declare-fun m!128209 () Bool)

(assert (=> b!112333 m!128209))

(declare-fun m!128211 () Bool)

(assert (=> b!112333 m!128211))

(declare-fun m!128213 () Bool)

(assert (=> b!112333 m!128213))

(assert (=> b!112333 m!128205))

(declare-fun m!128215 () Bool)

(assert (=> b!112333 m!128215))

(assert (=> b!112333 m!128213))

(declare-fun m!128217 () Bool)

(assert (=> b!112333 m!128217))

(declare-fun m!128219 () Bool)

(assert (=> b!112324 m!128219))

(declare-fun m!128221 () Bool)

(assert (=> bm!12051 m!128221))

(assert (=> b!112327 m!127883))

(assert (=> b!112327 m!128205))

(assert (=> b!112327 m!127883))

(assert (=> b!112327 m!128207))

(assert (=> b!112327 m!128215))

(declare-fun m!128223 () Bool)

(assert (=> b!112327 m!128223))

(assert (=> b!112327 m!128205))

(assert (=> b!112327 m!128215))

(assert (=> b!112329 m!128215))

(assert (=> b!112329 m!128215))

(declare-fun m!128225 () Bool)

(assert (=> b!112329 m!128225))

(assert (=> b!112332 m!128215))

(assert (=> b!112332 m!128215))

(declare-fun m!128227 () Bool)

(assert (=> b!112332 m!128227))

(assert (=> b!112325 m!128221))

(declare-fun m!128229 () Bool)

(assert (=> d!31933 m!128229))

(assert (=> d!31933 m!127895))

(assert (=> b!112334 m!128215))

(assert (=> b!112334 m!128215))

(assert (=> b!112334 m!128225))

(assert (=> bm!11951 d!31933))

(declare-fun d!31935 () Bool)

(declare-fun res!55404 () Bool)

(declare-fun e!73036 () Bool)

(assert (=> d!31935 (=> (not res!55404) (not e!73036))))

(assert (=> d!31935 (= res!55404 (simpleValid!76 (v!2945 (underlying!373 thiss!992))))))

(assert (=> d!31935 (= (valid!423 (v!2945 (underlying!373 thiss!992))) e!73036)))

(declare-fun b!112336 () Bool)

(declare-fun res!55405 () Bool)

(assert (=> b!112336 (=> (not res!55405) (not e!73036))))

(assert (=> b!112336 (= res!55405 (= (arrayCountValidKeys!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000000 (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))) (_size!511 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!112337 () Bool)

(declare-fun res!55406 () Bool)

(assert (=> b!112337 (=> (not res!55406) (not e!73036))))

(assert (=> b!112337 (= res!55406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!112338 () Bool)

(assert (=> b!112338 (= e!73036 (arrayNoDuplicates!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000000 Nil!1653))))

(assert (= (and d!31935 res!55404) b!112336))

(assert (= (and b!112336 res!55405) b!112337))

(assert (= (and b!112337 res!55406) b!112338))

(declare-fun m!128231 () Bool)

(assert (=> d!31935 m!128231))

(declare-fun m!128233 () Bool)

(assert (=> b!112336 m!128233))

(assert (=> b!112337 m!127869))

(declare-fun m!128235 () Bool)

(assert (=> b!112338 m!128235))

(assert (=> d!31919 d!31935))

(declare-fun b!112351 () Bool)

(declare-fun e!73044 () SeekEntryResult!272)

(declare-fun lt!58076 () SeekEntryResult!272)

(assert (=> b!112351 (= e!73044 (Found!272 (index!3241 lt!58076)))))

(declare-fun b!112352 () Bool)

(declare-fun e!73045 () SeekEntryResult!272)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4402 (_ BitVec 32)) SeekEntryResult!272)

(assert (=> b!112352 (= e!73045 (seekKeyOrZeroReturnVacant!0 (x!14104 lt!58076) (index!3241 lt!58076) (index!3241 lt!58076) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (_keys!4366 newMap!16) (mask!6826 newMap!16)))))

(declare-fun b!112353 () Bool)

(declare-fun e!73043 () SeekEntryResult!272)

(assert (=> b!112353 (= e!73043 e!73044)))

(declare-fun lt!58075 () (_ BitVec 64))

(assert (=> b!112353 (= lt!58075 (select (arr!2086 (_keys!4366 newMap!16)) (index!3241 lt!58076)))))

(declare-fun c!20088 () Bool)

(assert (=> b!112353 (= c!20088 (= lt!58075 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun b!112354 () Bool)

(assert (=> b!112354 (= e!73043 Undefined!272)))

(declare-fun b!112355 () Bool)

(declare-fun c!20087 () Bool)

(assert (=> b!112355 (= c!20087 (= lt!58075 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!112355 (= e!73044 e!73045)))

(declare-fun b!112356 () Bool)

(assert (=> b!112356 (= e!73045 (MissingZero!272 (index!3241 lt!58076)))))

(declare-fun lt!58077 () SeekEntryResult!272)

(declare-fun d!31937 () Bool)

(assert (=> d!31937 (and (or ((_ is Undefined!272) lt!58077) (not ((_ is Found!272) lt!58077)) (and (bvsge (index!3240 lt!58077) #b00000000000000000000000000000000) (bvslt (index!3240 lt!58077) (size!2344 (_keys!4366 newMap!16))))) (or ((_ is Undefined!272) lt!58077) ((_ is Found!272) lt!58077) (not ((_ is MissingZero!272) lt!58077)) (and (bvsge (index!3239 lt!58077) #b00000000000000000000000000000000) (bvslt (index!3239 lt!58077) (size!2344 (_keys!4366 newMap!16))))) (or ((_ is Undefined!272) lt!58077) ((_ is Found!272) lt!58077) ((_ is MissingZero!272) lt!58077) (not ((_ is MissingVacant!272) lt!58077)) (and (bvsge (index!3242 lt!58077) #b00000000000000000000000000000000) (bvslt (index!3242 lt!58077) (size!2344 (_keys!4366 newMap!16))))) (or ((_ is Undefined!272) lt!58077) (ite ((_ is Found!272) lt!58077) (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!58077)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) (ite ((_ is MissingZero!272) lt!58077) (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3239 lt!58077)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!272) lt!58077) (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3242 lt!58077)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!31937 (= lt!58077 e!73043)))

(declare-fun c!20089 () Bool)

(assert (=> d!31937 (= c!20089 (and ((_ is Intermediate!272) lt!58076) (undefined!1084 lt!58076)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4402 (_ BitVec 32)) SeekEntryResult!272)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!31937 (= lt!58076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (mask!6826 newMap!16)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (_keys!4366 newMap!16) (mask!6826 newMap!16)))))

(assert (=> d!31937 (validMask!0 (mask!6826 newMap!16))))

(assert (=> d!31937 (= (seekEntryOrOpen!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (_keys!4366 newMap!16) (mask!6826 newMap!16)) lt!58077)))

(assert (= (and d!31937 c!20089) b!112354))

(assert (= (and d!31937 (not c!20089)) b!112353))

(assert (= (and b!112353 c!20088) b!112351))

(assert (= (and b!112353 (not c!20088)) b!112355))

(assert (= (and b!112355 c!20087) b!112356))

(assert (= (and b!112355 (not c!20087)) b!112352))

(assert (=> b!112352 m!127849))

(declare-fun m!128237 () Bool)

(assert (=> b!112352 m!128237))

(declare-fun m!128239 () Bool)

(assert (=> b!112353 m!128239))

(declare-fun m!128241 () Bool)

(assert (=> d!31937 m!128241))

(declare-fun m!128243 () Bool)

(assert (=> d!31937 m!128243))

(assert (=> d!31937 m!127849))

(declare-fun m!128245 () Bool)

(assert (=> d!31937 m!128245))

(declare-fun m!128247 () Bool)

(assert (=> d!31937 m!128247))

(assert (=> d!31937 m!127849))

(assert (=> d!31937 m!128243))

(declare-fun m!128249 () Bool)

(assert (=> d!31937 m!128249))

(declare-fun m!128251 () Bool)

(assert (=> d!31937 m!128251))

(assert (=> bm!12027 d!31937))

(declare-fun d!31939 () Bool)

(declare-fun e!73047 () Bool)

(assert (=> d!31939 e!73047))

(declare-fun res!55407 () Bool)

(assert (=> d!31939 (=> res!55407 e!73047)))

(declare-fun lt!58078 () Bool)

(assert (=> d!31939 (= res!55407 (not lt!58078))))

(declare-fun lt!58081 () Bool)

(assert (=> d!31939 (= lt!58078 lt!58081)))

(declare-fun lt!58079 () Unit!3499)

(declare-fun e!73046 () Unit!3499)

(assert (=> d!31939 (= lt!58079 e!73046)))

(declare-fun c!20090 () Bool)

(assert (=> d!31939 (= c!20090 lt!58081)))

(assert (=> d!31939 (= lt!58081 (containsKey!162 (toList!815 lt!57866) (_1!1228 lt!57800)))))

(assert (=> d!31939 (= (contains!841 lt!57866 (_1!1228 lt!57800)) lt!58078)))

(declare-fun b!112357 () Bool)

(declare-fun lt!58080 () Unit!3499)

(assert (=> b!112357 (= e!73046 lt!58080)))

(assert (=> b!112357 (= lt!58080 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!57866) (_1!1228 lt!57800)))))

(assert (=> b!112357 (isDefined!112 (getValueByKey!158 (toList!815 lt!57866) (_1!1228 lt!57800)))))

(declare-fun b!112358 () Bool)

(declare-fun Unit!3510 () Unit!3499)

(assert (=> b!112358 (= e!73046 Unit!3510)))

(declare-fun b!112359 () Bool)

(assert (=> b!112359 (= e!73047 (isDefined!112 (getValueByKey!158 (toList!815 lt!57866) (_1!1228 lt!57800))))))

(assert (= (and d!31939 c!20090) b!112357))

(assert (= (and d!31939 (not c!20090)) b!112358))

(assert (= (and d!31939 (not res!55407)) b!112359))

(declare-fun m!128253 () Bool)

(assert (=> d!31939 m!128253))

(declare-fun m!128255 () Bool)

(assert (=> b!112357 m!128255))

(assert (=> b!112357 m!127999))

(assert (=> b!112357 m!127999))

(declare-fun m!128257 () Bool)

(assert (=> b!112357 m!128257))

(assert (=> b!112359 m!127999))

(assert (=> b!112359 m!127999))

(assert (=> b!112359 m!128257))

(assert (=> d!31891 d!31939))

(declare-fun b!112368 () Bool)

(declare-fun e!73052 () Option!164)

(assert (=> b!112368 (= e!73052 (Some!163 (_2!1228 (h!2253 lt!57868))))))

(declare-fun b!112371 () Bool)

(declare-fun e!73053 () Option!164)

(assert (=> b!112371 (= e!73053 None!162)))

(declare-fun d!31941 () Bool)

(declare-fun c!20095 () Bool)

(assert (=> d!31941 (= c!20095 (and ((_ is Cons!1653) lt!57868) (= (_1!1228 (h!2253 lt!57868)) (_1!1228 lt!57800))))))

(assert (=> d!31941 (= (getValueByKey!158 lt!57868 (_1!1228 lt!57800)) e!73052)))

(declare-fun b!112369 () Bool)

(assert (=> b!112369 (= e!73052 e!73053)))

(declare-fun c!20096 () Bool)

(assert (=> b!112369 (= c!20096 (and ((_ is Cons!1653) lt!57868) (not (= (_1!1228 (h!2253 lt!57868)) (_1!1228 lt!57800)))))))

(declare-fun b!112370 () Bool)

(assert (=> b!112370 (= e!73053 (getValueByKey!158 (t!5827 lt!57868) (_1!1228 lt!57800)))))

(assert (= (and d!31941 c!20095) b!112368))

(assert (= (and d!31941 (not c!20095)) b!112369))

(assert (= (and b!112369 c!20096) b!112370))

(assert (= (and b!112369 (not c!20096)) b!112371))

(declare-fun m!128259 () Bool)

(assert (=> b!112370 m!128259))

(assert (=> d!31891 d!31941))

(declare-fun d!31943 () Bool)

(assert (=> d!31943 (= (getValueByKey!158 lt!57868 (_1!1228 lt!57800)) (Some!163 (_2!1228 lt!57800)))))

(declare-fun lt!58084 () Unit!3499)

(declare-fun choose!707 (List!1657 (_ BitVec 64) V!3251) Unit!3499)

(assert (=> d!31943 (= lt!58084 (choose!707 lt!57868 (_1!1228 lt!57800) (_2!1228 lt!57800)))))

(declare-fun e!73056 () Bool)

(assert (=> d!31943 e!73056))

(declare-fun res!55412 () Bool)

(assert (=> d!31943 (=> (not res!55412) (not e!73056))))

(declare-fun isStrictlySorted!307 (List!1657) Bool)

(assert (=> d!31943 (= res!55412 (isStrictlySorted!307 lt!57868))))

(assert (=> d!31943 (= (lemmaContainsTupThenGetReturnValue!76 lt!57868 (_1!1228 lt!57800) (_2!1228 lt!57800)) lt!58084)))

(declare-fun b!112376 () Bool)

(declare-fun res!55413 () Bool)

(assert (=> b!112376 (=> (not res!55413) (not e!73056))))

(assert (=> b!112376 (= res!55413 (containsKey!162 lt!57868 (_1!1228 lt!57800)))))

(declare-fun b!112377 () Bool)

(assert (=> b!112377 (= e!73056 (contains!842 lt!57868 (tuple2!2437 (_1!1228 lt!57800) (_2!1228 lt!57800))))))

(assert (= (and d!31943 res!55412) b!112376))

(assert (= (and b!112376 res!55413) b!112377))

(assert (=> d!31943 m!127993))

(declare-fun m!128261 () Bool)

(assert (=> d!31943 m!128261))

(declare-fun m!128263 () Bool)

(assert (=> d!31943 m!128263))

(declare-fun m!128265 () Bool)

(assert (=> b!112376 m!128265))

(declare-fun m!128267 () Bool)

(assert (=> b!112377 m!128267))

(assert (=> d!31891 d!31943))

(declare-fun bm!12058 () Bool)

(declare-fun call!12063 () List!1657)

(declare-fun call!12062 () List!1657)

(assert (=> bm!12058 (= call!12063 call!12062)))

(declare-fun e!73067 () List!1657)

(declare-fun c!20106 () Bool)

(declare-fun bm!12059 () Bool)

(declare-fun $colon$colon!83 (List!1657 tuple2!2436) List!1657)

(assert (=> bm!12059 (= call!12062 ($colon$colon!83 e!73067 (ite c!20106 (h!2253 (toList!815 lt!57790)) (tuple2!2437 (_1!1228 lt!57800) (_2!1228 lt!57800)))))))

(declare-fun c!20108 () Bool)

(assert (=> bm!12059 (= c!20108 c!20106)))

(declare-fun b!112398 () Bool)

(declare-fun c!20107 () Bool)

(assert (=> b!112398 (= c!20107 (and ((_ is Cons!1653) (toList!815 lt!57790)) (bvsgt (_1!1228 (h!2253 (toList!815 lt!57790))) (_1!1228 lt!57800))))))

(declare-fun e!73071 () List!1657)

(declare-fun e!73068 () List!1657)

(assert (=> b!112398 (= e!73071 e!73068)))

(declare-fun b!112399 () Bool)

(declare-fun call!12061 () List!1657)

(assert (=> b!112399 (= e!73068 call!12061)))

(declare-fun d!31945 () Bool)

(declare-fun e!73070 () Bool)

(assert (=> d!31945 e!73070))

(declare-fun res!55418 () Bool)

(assert (=> d!31945 (=> (not res!55418) (not e!73070))))

(declare-fun lt!58087 () List!1657)

(assert (=> d!31945 (= res!55418 (isStrictlySorted!307 lt!58087))))

(declare-fun e!73069 () List!1657)

(assert (=> d!31945 (= lt!58087 e!73069)))

(assert (=> d!31945 (= c!20106 (and ((_ is Cons!1653) (toList!815 lt!57790)) (bvslt (_1!1228 (h!2253 (toList!815 lt!57790))) (_1!1228 lt!57800))))))

(assert (=> d!31945 (isStrictlySorted!307 (toList!815 lt!57790))))

(assert (=> d!31945 (= (insertStrictlySorted!78 (toList!815 lt!57790) (_1!1228 lt!57800) (_2!1228 lt!57800)) lt!58087)))

(declare-fun b!112400 () Bool)

(assert (=> b!112400 (= e!73068 call!12061)))

(declare-fun b!112401 () Bool)

(assert (=> b!112401 (= e!73069 call!12062)))

(declare-fun b!112402 () Bool)

(assert (=> b!112402 (= e!73070 (contains!842 lt!58087 (tuple2!2437 (_1!1228 lt!57800) (_2!1228 lt!57800))))))

(declare-fun bm!12060 () Bool)

(assert (=> bm!12060 (= call!12061 call!12063)))

(declare-fun b!112403 () Bool)

(assert (=> b!112403 (= e!73069 e!73071)))

(declare-fun c!20105 () Bool)

(assert (=> b!112403 (= c!20105 (and ((_ is Cons!1653) (toList!815 lt!57790)) (= (_1!1228 (h!2253 (toList!815 lt!57790))) (_1!1228 lt!57800))))))

(declare-fun b!112404 () Bool)

(assert (=> b!112404 (= e!73067 (insertStrictlySorted!78 (t!5827 (toList!815 lt!57790)) (_1!1228 lt!57800) (_2!1228 lt!57800)))))

(declare-fun b!112405 () Bool)

(declare-fun res!55419 () Bool)

(assert (=> b!112405 (=> (not res!55419) (not e!73070))))

(assert (=> b!112405 (= res!55419 (containsKey!162 lt!58087 (_1!1228 lt!57800)))))

(declare-fun b!112406 () Bool)

(assert (=> b!112406 (= e!73067 (ite c!20105 (t!5827 (toList!815 lt!57790)) (ite c!20107 (Cons!1653 (h!2253 (toList!815 lt!57790)) (t!5827 (toList!815 lt!57790))) Nil!1654)))))

(declare-fun b!112407 () Bool)

(assert (=> b!112407 (= e!73071 call!12063)))

(assert (= (and d!31945 c!20106) b!112401))

(assert (= (and d!31945 (not c!20106)) b!112403))

(assert (= (and b!112403 c!20105) b!112407))

(assert (= (and b!112403 (not c!20105)) b!112398))

(assert (= (and b!112398 c!20107) b!112399))

(assert (= (and b!112398 (not c!20107)) b!112400))

(assert (= (or b!112399 b!112400) bm!12060))

(assert (= (or b!112407 bm!12060) bm!12058))

(assert (= (or b!112401 bm!12058) bm!12059))

(assert (= (and bm!12059 c!20108) b!112404))

(assert (= (and bm!12059 (not c!20108)) b!112406))

(assert (= (and d!31945 res!55418) b!112405))

(assert (= (and b!112405 res!55419) b!112402))

(declare-fun m!128269 () Bool)

(assert (=> bm!12059 m!128269))

(declare-fun m!128271 () Bool)

(assert (=> b!112405 m!128271))

(declare-fun m!128273 () Bool)

(assert (=> b!112402 m!128273))

(declare-fun m!128275 () Bool)

(assert (=> d!31945 m!128275))

(declare-fun m!128277 () Bool)

(assert (=> d!31945 m!128277))

(declare-fun m!128279 () Bool)

(assert (=> b!112404 m!128279))

(assert (=> d!31891 d!31945))

(declare-fun d!31947 () Bool)

(assert (=> d!31947 (= (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) (and (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!112085 d!31947))

(declare-fun d!31949 () Bool)

(declare-fun get!1365 (Option!164) V!3251)

(assert (=> d!31949 (= (apply!101 lt!58057 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1365 (getValueByKey!158 (toList!815 lt!58057) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4621 () Bool)

(assert (= bs!4621 d!31949))

(declare-fun m!128281 () Bool)

(assert (=> bs!4621 m!128281))

(assert (=> bs!4621 m!128281))

(declare-fun m!128283 () Bool)

(assert (=> bs!4621 m!128283))

(assert (=> b!112312 d!31949))

(declare-fun d!31951 () Bool)

(declare-fun e!73073 () Bool)

(assert (=> d!31951 e!73073))

(declare-fun res!55420 () Bool)

(assert (=> d!31951 (=> res!55420 e!73073)))

(declare-fun lt!58088 () Bool)

(assert (=> d!31951 (= res!55420 (not lt!58088))))

(declare-fun lt!58091 () Bool)

(assert (=> d!31951 (= lt!58088 lt!58091)))

(declare-fun lt!58089 () Unit!3499)

(declare-fun e!73072 () Unit!3499)

(assert (=> d!31951 (= lt!58089 e!73072)))

(declare-fun c!20109 () Bool)

(assert (=> d!31951 (= c!20109 lt!58091)))

(assert (=> d!31951 (= lt!58091 (containsKey!162 (toList!815 lt!57853) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!31951 (= (contains!841 lt!57853 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!58088)))

(declare-fun b!112408 () Bool)

(declare-fun lt!58090 () Unit!3499)

(assert (=> b!112408 (= e!73072 lt!58090)))

(assert (=> b!112408 (= lt!58090 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!57853) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!112408 (isDefined!112 (getValueByKey!158 (toList!815 lt!57853) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!112409 () Bool)

(declare-fun Unit!3511 () Unit!3499)

(assert (=> b!112409 (= e!73072 Unit!3511)))

(declare-fun b!112410 () Bool)

(assert (=> b!112410 (= e!73073 (isDefined!112 (getValueByKey!158 (toList!815 lt!57853) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!31951 c!20109) b!112408))

(assert (= (and d!31951 (not c!20109)) b!112409))

(assert (= (and d!31951 (not res!55420)) b!112410))

(assert (=> d!31951 m!127975))

(declare-fun m!128285 () Bool)

(assert (=> d!31951 m!128285))

(assert (=> b!112408 m!127975))

(declare-fun m!128287 () Bool)

(assert (=> b!112408 m!128287))

(assert (=> b!112408 m!127975))

(declare-fun m!128289 () Bool)

(assert (=> b!112408 m!128289))

(assert (=> b!112408 m!128289))

(declare-fun m!128291 () Bool)

(assert (=> b!112408 m!128291))

(assert (=> b!112410 m!127975))

(assert (=> b!112410 m!128289))

(assert (=> b!112410 m!128289))

(assert (=> b!112410 m!128291))

(assert (=> b!112046 d!31951))

(declare-fun d!31953 () Bool)

(assert (=> d!31953 (= (map!1298 (_2!1229 lt!57983)) (getCurrentListMap!491 (_keys!4366 (_2!1229 lt!57983)) (_values!2631 (_2!1229 lt!57983)) (mask!6826 (_2!1229 lt!57983)) (extraKeys!2441 (_2!1229 lt!57983)) (zeroValue!2517 (_2!1229 lt!57983)) (minValue!2517 (_2!1229 lt!57983)) #b00000000000000000000000000000000 (defaultEntry!2648 (_2!1229 lt!57983))))))

(declare-fun bs!4622 () Bool)

(assert (= bs!4622 d!31953))

(declare-fun m!128293 () Bool)

(assert (=> bs!4622 m!128293))

(assert (=> bm!12023 d!31953))

(declare-fun d!31955 () Bool)

(assert (=> d!31955 (= (+!151 (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) lt!57995 (zeroValue!2517 newMap!16) lt!57797 #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58094 () Unit!3499)

(declare-fun choose!708 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 V!3251 Int) Unit!3499)

(assert (=> d!31955 (= lt!58094 (choose!708 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) lt!57995 (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) lt!57797 (defaultEntry!2648 newMap!16)))))

(assert (=> d!31955 (validMask!0 (mask!6826 newMap!16))))

(assert (=> d!31955 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) lt!57995 (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) lt!57797 (defaultEntry!2648 newMap!16)) lt!58094)))

(declare-fun bs!4623 () Bool)

(assert (= bs!4623 d!31955))

(assert (=> bs!4623 m!128117))

(declare-fun m!128295 () Bool)

(assert (=> bs!4623 m!128295))

(assert (=> bs!4623 m!128241))

(assert (=> bs!4623 m!128117))

(declare-fun m!128297 () Bool)

(assert (=> bs!4623 m!128297))

(declare-fun m!128299 () Bool)

(assert (=> bs!4623 m!128299))

(assert (=> b!112205 d!31955))

(declare-fun d!31957 () Bool)

(assert (=> d!31957 (= (get!1363 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) from!355) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!2944 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> b!112240 d!31957))

(declare-fun d!31959 () Bool)

(assert (=> d!31959 (= (inRange!0 (ite c!20051 (ite c!20054 (index!3240 lt!57988) (ite c!20049 (index!3239 lt!57975) (index!3242 lt!57975))) (ite c!20055 (index!3240 lt!57977) (ite c!20053 (index!3239 lt!57976) (index!3242 lt!57976)))) (mask!6826 newMap!16)) (and (bvsge (ite c!20051 (ite c!20054 (index!3240 lt!57988) (ite c!20049 (index!3239 lt!57975) (index!3242 lt!57975))) (ite c!20055 (index!3240 lt!57977) (ite c!20053 (index!3239 lt!57976) (index!3242 lt!57976)))) #b00000000000000000000000000000000) (bvslt (ite c!20051 (ite c!20054 (index!3240 lt!57988) (ite c!20049 (index!3239 lt!57975) (index!3242 lt!57975))) (ite c!20055 (index!3240 lt!57977) (ite c!20053 (index!3239 lt!57976) (index!3242 lt!57976)))) (bvadd (mask!6826 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!12015 d!31959))

(declare-fun d!31961 () Bool)

(declare-fun lt!58097 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!114 (List!1657) (InoxSet tuple2!2436))

(assert (=> d!31961 (= lt!58097 (select (content!114 (toList!815 lt!57866)) lt!57800))))

(declare-fun e!73078 () Bool)

(assert (=> d!31961 (= lt!58097 e!73078)))

(declare-fun res!55426 () Bool)

(assert (=> d!31961 (=> (not res!55426) (not e!73078))))

(assert (=> d!31961 (= res!55426 ((_ is Cons!1653) (toList!815 lt!57866)))))

(assert (=> d!31961 (= (contains!842 (toList!815 lt!57866) lt!57800) lt!58097)))

(declare-fun b!112415 () Bool)

(declare-fun e!73079 () Bool)

(assert (=> b!112415 (= e!73078 e!73079)))

(declare-fun res!55425 () Bool)

(assert (=> b!112415 (=> res!55425 e!73079)))

(assert (=> b!112415 (= res!55425 (= (h!2253 (toList!815 lt!57866)) lt!57800))))

(declare-fun b!112416 () Bool)

(assert (=> b!112416 (= e!73079 (contains!842 (t!5827 (toList!815 lt!57866)) lt!57800))))

(assert (= (and d!31961 res!55426) b!112415))

(assert (= (and b!112415 (not res!55425)) b!112416))

(declare-fun m!128301 () Bool)

(assert (=> d!31961 m!128301))

(declare-fun m!128303 () Bool)

(assert (=> d!31961 m!128303))

(declare-fun m!128305 () Bool)

(assert (=> b!112416 m!128305))

(assert (=> b!112055 d!31961))

(assert (=> b!112039 d!31933))

(declare-fun d!31963 () Bool)

(declare-fun e!73081 () Bool)

(assert (=> d!31963 e!73081))

(declare-fun res!55427 () Bool)

(assert (=> d!31963 (=> res!55427 e!73081)))

(declare-fun lt!58098 () Bool)

(assert (=> d!31963 (= res!55427 (not lt!58098))))

(declare-fun lt!58101 () Bool)

(assert (=> d!31963 (= lt!58098 lt!58101)))

(declare-fun lt!58099 () Unit!3499)

(declare-fun e!73080 () Unit!3499)

(assert (=> d!31963 (= lt!58099 e!73080)))

(declare-fun c!20110 () Bool)

(assert (=> d!31963 (= c!20110 lt!58101)))

(assert (=> d!31963 (= lt!58101 (containsKey!162 (toList!815 lt!58057) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!31963 (= (contains!841 lt!58057 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!58098)))

(declare-fun b!112417 () Bool)

(declare-fun lt!58100 () Unit!3499)

(assert (=> b!112417 (= e!73080 lt!58100)))

(assert (=> b!112417 (= lt!58100 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!58057) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!112417 (isDefined!112 (getValueByKey!158 (toList!815 lt!58057) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!112418 () Bool)

(declare-fun Unit!3512 () Unit!3499)

(assert (=> b!112418 (= e!73080 Unit!3512)))

(declare-fun b!112419 () Bool)

(assert (=> b!112419 (= e!73081 (isDefined!112 (getValueByKey!158 (toList!815 lt!58057) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!31963 c!20110) b!112417))

(assert (= (and d!31963 (not c!20110)) b!112418))

(assert (= (and d!31963 (not res!55427)) b!112419))

(assert (=> d!31963 m!127975))

(declare-fun m!128307 () Bool)

(assert (=> d!31963 m!128307))

(assert (=> b!112417 m!127975))

(declare-fun m!128309 () Bool)

(assert (=> b!112417 m!128309))

(assert (=> b!112417 m!127975))

(declare-fun m!128311 () Bool)

(assert (=> b!112417 m!128311))

(assert (=> b!112417 m!128311))

(declare-fun m!128313 () Bool)

(assert (=> b!112417 m!128313))

(assert (=> b!112419 m!127975))

(assert (=> b!112419 m!128311))

(assert (=> b!112419 m!128311))

(assert (=> b!112419 m!128313))

(assert (=> b!112307 d!31963))

(declare-fun d!31965 () Bool)

(declare-fun res!55432 () Bool)

(declare-fun e!73086 () Bool)

(assert (=> d!31965 (=> res!55432 e!73086)))

(assert (=> d!31965 (= res!55432 (and ((_ is Cons!1653) (toList!815 lt!57796)) (= (_1!1228 (h!2253 (toList!815 lt!57796))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355))))))

(assert (=> d!31965 (= (containsKey!162 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) e!73086)))

(declare-fun b!112424 () Bool)

(declare-fun e!73087 () Bool)

(assert (=> b!112424 (= e!73086 e!73087)))

(declare-fun res!55433 () Bool)

(assert (=> b!112424 (=> (not res!55433) (not e!73087))))

(assert (=> b!112424 (= res!55433 (and (or (not ((_ is Cons!1653) (toList!815 lt!57796))) (bvsle (_1!1228 (h!2253 (toList!815 lt!57796))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355))) ((_ is Cons!1653) (toList!815 lt!57796)) (bvslt (_1!1228 (h!2253 (toList!815 lt!57796))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355))))))

(declare-fun b!112425 () Bool)

(assert (=> b!112425 (= e!73087 (containsKey!162 (t!5827 (toList!815 lt!57796)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (= (and d!31965 (not res!55432)) b!112424))

(assert (= (and b!112424 res!55433) b!112425))

(assert (=> b!112425 m!127849))

(declare-fun m!128315 () Bool)

(assert (=> b!112425 m!128315))

(assert (=> d!31915 d!31965))

(declare-fun b!112426 () Bool)

(declare-fun e!73097 () Bool)

(declare-fun e!73094 () Bool)

(assert (=> b!112426 (= e!73097 e!73094)))

(declare-fun c!20113 () Bool)

(assert (=> b!112426 (= c!20113 (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!12061 () Bool)

(declare-fun call!12064 () Bool)

(declare-fun lt!58119 () ListLongMap!1599)

(assert (=> bm!12061 (= call!12064 (contains!841 lt!58119 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12062 () Bool)

(declare-fun call!12066 () Bool)

(assert (=> bm!12062 (= call!12066 (contains!841 lt!58119 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!112427 () Bool)

(declare-fun e!73092 () Bool)

(assert (=> b!112427 (= e!73092 (validKeyInArray!0 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!12063 () Bool)

(declare-fun call!12067 () ListLongMap!1599)

(assert (=> bm!12063 (= call!12067 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun b!112428 () Bool)

(declare-fun e!73098 () ListLongMap!1599)

(declare-fun call!12070 () ListLongMap!1599)

(assert (=> b!112428 (= e!73098 call!12070)))

(declare-fun b!112429 () Bool)

(declare-fun res!55440 () Bool)

(assert (=> b!112429 (=> (not res!55440) (not e!73097))))

(declare-fun e!73099 () Bool)

(assert (=> b!112429 (= res!55440 e!73099)))

(declare-fun res!55434 () Bool)

(assert (=> b!112429 (=> res!55434 e!73099)))

(assert (=> b!112429 (= res!55434 (not e!73092))))

(declare-fun res!55438 () Bool)

(assert (=> b!112429 (=> (not res!55438) (not e!73092))))

(assert (=> b!112429 (= res!55438 (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(declare-fun b!112430 () Bool)

(declare-fun e!73090 () ListLongMap!1599)

(declare-fun call!12065 () ListLongMap!1599)

(assert (=> b!112430 (= e!73090 call!12065)))

(declare-fun c!20112 () Bool)

(declare-fun bm!12064 () Bool)

(declare-fun c!20114 () Bool)

(declare-fun call!12069 () ListLongMap!1599)

(declare-fun call!12068 () ListLongMap!1599)

(assert (=> bm!12064 (= call!12068 (+!151 (ite c!20114 call!12067 (ite c!20112 call!12069 call!12070)) (ite (or c!20114 c!20112) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 newMap!16)) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 newMap!16)))))))

(declare-fun b!112431 () Bool)

(declare-fun e!73093 () Bool)

(assert (=> b!112431 (= e!73093 (not call!12066))))

(declare-fun b!112432 () Bool)

(declare-fun e!73095 () Unit!3499)

(declare-fun Unit!3513 () Unit!3499)

(assert (=> b!112432 (= e!73095 Unit!3513)))

(declare-fun b!112433 () Bool)

(assert (=> b!112433 (= e!73098 call!12065)))

(declare-fun b!112434 () Bool)

(declare-fun e!73091 () Bool)

(assert (=> b!112434 (= e!73091 (= (apply!101 lt!58119 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2517 newMap!16)))))

(declare-fun b!112435 () Bool)

(declare-fun e!73088 () ListLongMap!1599)

(assert (=> b!112435 (= e!73088 e!73090)))

(assert (=> b!112435 (= c!20112 (and (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!112436 () Bool)

(assert (=> b!112436 (= e!73088 (+!151 call!12068 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 newMap!16))))))

(declare-fun bm!12065 () Bool)

(assert (=> bm!12065 (= call!12069 call!12067)))

(declare-fun d!31967 () Bool)

(assert (=> d!31967 e!73097))

(declare-fun res!55435 () Bool)

(assert (=> d!31967 (=> (not res!55435) (not e!73097))))

(assert (=> d!31967 (= res!55435 (or (bvsge #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))))

(declare-fun lt!58123 () ListLongMap!1599)

(assert (=> d!31967 (= lt!58119 lt!58123)))

(declare-fun lt!58117 () Unit!3499)

(assert (=> d!31967 (= lt!58117 e!73095)))

(declare-fun c!20116 () Bool)

(declare-fun e!73096 () Bool)

(assert (=> d!31967 (= c!20116 e!73096)))

(declare-fun res!55441 () Bool)

(assert (=> d!31967 (=> (not res!55441) (not e!73096))))

(assert (=> d!31967 (= res!55441 (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(assert (=> d!31967 (= lt!58123 e!73088)))

(assert (=> d!31967 (= c!20114 (and (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!31967 (validMask!0 (mask!6826 newMap!16))))

(assert (=> d!31967 (= (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)) lt!58119)))

(declare-fun b!112437 () Bool)

(assert (=> b!112437 (= e!73094 (not call!12064))))

(declare-fun b!112438 () Bool)

(declare-fun e!73089 () Bool)

(assert (=> b!112438 (= e!73089 (= (apply!101 lt!58119 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)) (get!1362 (select (arr!2087 (_values!2631 newMap!16)) #b00000000000000000000000000000000) (dynLambda!394 (defaultEntry!2648 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!112438 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2345 (_values!2631 newMap!16))))))

(assert (=> b!112438 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(declare-fun b!112439 () Bool)

(declare-fun lt!58103 () Unit!3499)

(assert (=> b!112439 (= e!73095 lt!58103)))

(declare-fun lt!58105 () ListLongMap!1599)

(assert (=> b!112439 (= lt!58105 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58106 () (_ BitVec 64))

(assert (=> b!112439 (= lt!58106 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58112 () (_ BitVec 64))

(assert (=> b!112439 (= lt!58112 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58102 () Unit!3499)

(assert (=> b!112439 (= lt!58102 (addStillContains!77 lt!58105 lt!58106 (zeroValue!2517 newMap!16) lt!58112))))

(assert (=> b!112439 (contains!841 (+!151 lt!58105 (tuple2!2437 lt!58106 (zeroValue!2517 newMap!16))) lt!58112)))

(declare-fun lt!58120 () Unit!3499)

(assert (=> b!112439 (= lt!58120 lt!58102)))

(declare-fun lt!58111 () ListLongMap!1599)

(assert (=> b!112439 (= lt!58111 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58107 () (_ BitVec 64))

(assert (=> b!112439 (= lt!58107 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58118 () (_ BitVec 64))

(assert (=> b!112439 (= lt!58118 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58116 () Unit!3499)

(assert (=> b!112439 (= lt!58116 (addApplyDifferent!77 lt!58111 lt!58107 (minValue!2517 newMap!16) lt!58118))))

(assert (=> b!112439 (= (apply!101 (+!151 lt!58111 (tuple2!2437 lt!58107 (minValue!2517 newMap!16))) lt!58118) (apply!101 lt!58111 lt!58118))))

(declare-fun lt!58113 () Unit!3499)

(assert (=> b!112439 (= lt!58113 lt!58116)))

(declare-fun lt!58122 () ListLongMap!1599)

(assert (=> b!112439 (= lt!58122 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58121 () (_ BitVec 64))

(assert (=> b!112439 (= lt!58121 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58109 () (_ BitVec 64))

(assert (=> b!112439 (= lt!58109 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58108 () Unit!3499)

(assert (=> b!112439 (= lt!58108 (addApplyDifferent!77 lt!58122 lt!58121 (zeroValue!2517 newMap!16) lt!58109))))

(assert (=> b!112439 (= (apply!101 (+!151 lt!58122 (tuple2!2437 lt!58121 (zeroValue!2517 newMap!16))) lt!58109) (apply!101 lt!58122 lt!58109))))

(declare-fun lt!58114 () Unit!3499)

(assert (=> b!112439 (= lt!58114 lt!58108)))

(declare-fun lt!58104 () ListLongMap!1599)

(assert (=> b!112439 (= lt!58104 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58115 () (_ BitVec 64))

(assert (=> b!112439 (= lt!58115 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58110 () (_ BitVec 64))

(assert (=> b!112439 (= lt!58110 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!112439 (= lt!58103 (addApplyDifferent!77 lt!58104 lt!58115 (minValue!2517 newMap!16) lt!58110))))

(assert (=> b!112439 (= (apply!101 (+!151 lt!58104 (tuple2!2437 lt!58115 (minValue!2517 newMap!16))) lt!58110) (apply!101 lt!58104 lt!58110))))

(declare-fun b!112440 () Bool)

(assert (=> b!112440 (= e!73099 e!73089)))

(declare-fun res!55437 () Bool)

(assert (=> b!112440 (=> (not res!55437) (not e!73089))))

(assert (=> b!112440 (= res!55437 (contains!841 lt!58119 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!112440 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(declare-fun bm!12066 () Bool)

(assert (=> bm!12066 (= call!12070 call!12069)))

(declare-fun b!112441 () Bool)

(declare-fun c!20111 () Bool)

(assert (=> b!112441 (= c!20111 (and (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!112441 (= e!73090 e!73098)))

(declare-fun b!112442 () Bool)

(declare-fun e!73100 () Bool)

(assert (=> b!112442 (= e!73094 e!73100)))

(declare-fun res!55436 () Bool)

(assert (=> b!112442 (= res!55436 call!12064)))

(assert (=> b!112442 (=> (not res!55436) (not e!73100))))

(declare-fun b!112443 () Bool)

(assert (=> b!112443 (= e!73096 (validKeyInArray!0 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!112444 () Bool)

(assert (=> b!112444 (= e!73093 e!73091)))

(declare-fun res!55439 () Bool)

(assert (=> b!112444 (= res!55439 call!12066)))

(assert (=> b!112444 (=> (not res!55439) (not e!73091))))

(declare-fun bm!12067 () Bool)

(assert (=> bm!12067 (= call!12065 call!12068)))

(declare-fun b!112445 () Bool)

(assert (=> b!112445 (= e!73100 (= (apply!101 lt!58119 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2517 newMap!16)))))

(declare-fun b!112446 () Bool)

(declare-fun res!55442 () Bool)

(assert (=> b!112446 (=> (not res!55442) (not e!73097))))

(assert (=> b!112446 (= res!55442 e!73093)))

(declare-fun c!20115 () Bool)

(assert (=> b!112446 (= c!20115 (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!31967 c!20114) b!112436))

(assert (= (and d!31967 (not c!20114)) b!112435))

(assert (= (and b!112435 c!20112) b!112430))

(assert (= (and b!112435 (not c!20112)) b!112441))

(assert (= (and b!112441 c!20111) b!112433))

(assert (= (and b!112441 (not c!20111)) b!112428))

(assert (= (or b!112433 b!112428) bm!12066))

(assert (= (or b!112430 bm!12066) bm!12065))

(assert (= (or b!112430 b!112433) bm!12067))

(assert (= (or b!112436 bm!12065) bm!12063))

(assert (= (or b!112436 bm!12067) bm!12064))

(assert (= (and d!31967 res!55441) b!112443))

(assert (= (and d!31967 c!20116) b!112439))

(assert (= (and d!31967 (not c!20116)) b!112432))

(assert (= (and d!31967 res!55435) b!112429))

(assert (= (and b!112429 res!55438) b!112427))

(assert (= (and b!112429 (not res!55434)) b!112440))

(assert (= (and b!112440 res!55437) b!112438))

(assert (= (and b!112429 res!55440) b!112446))

(assert (= (and b!112446 c!20115) b!112444))

(assert (= (and b!112446 (not c!20115)) b!112431))

(assert (= (and b!112444 res!55439) b!112434))

(assert (= (or b!112444 b!112431) bm!12062))

(assert (= (and b!112446 res!55442) b!112426))

(assert (= (and b!112426 c!20113) b!112442))

(assert (= (and b!112426 (not c!20113)) b!112437))

(assert (= (and b!112442 res!55436) b!112445))

(assert (= (or b!112442 b!112437) bm!12061))

(declare-fun b_lambda!5063 () Bool)

(assert (=> (not b_lambda!5063) (not b!112438)))

(declare-fun t!5834 () Bool)

(declare-fun tb!2141 () Bool)

(assert (=> (and b!111938 (= (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) (defaultEntry!2648 newMap!16)) t!5834) tb!2141))

(declare-fun result!3577 () Bool)

(assert (=> tb!2141 (= result!3577 tp_is_empty!2703)))

(assert (=> b!112438 t!5834))

(declare-fun b_and!6929 () Bool)

(assert (= b_and!6925 (and (=> t!5834 result!3577) b_and!6929)))

(declare-fun t!5836 () Bool)

(declare-fun tb!2143 () Bool)

(assert (=> (and b!111932 (= (defaultEntry!2648 newMap!16) (defaultEntry!2648 newMap!16)) t!5836) tb!2143))

(declare-fun result!3579 () Bool)

(assert (= result!3579 result!3577))

(assert (=> b!112438 t!5836))

(declare-fun b_and!6931 () Bool)

(assert (= b_and!6927 (and (=> t!5836 result!3579) b_and!6931)))

(declare-fun m!128317 () Bool)

(assert (=> b!112439 m!128317))

(declare-fun m!128319 () Bool)

(assert (=> b!112439 m!128319))

(declare-fun m!128321 () Bool)

(assert (=> b!112439 m!128321))

(declare-fun m!128323 () Bool)

(assert (=> b!112439 m!128323))

(declare-fun m!128325 () Bool)

(assert (=> b!112439 m!128325))

(declare-fun m!128327 () Bool)

(assert (=> b!112439 m!128327))

(declare-fun m!128329 () Bool)

(assert (=> b!112439 m!128329))

(declare-fun m!128331 () Bool)

(assert (=> b!112439 m!128331))

(declare-fun m!128333 () Bool)

(assert (=> b!112439 m!128333))

(declare-fun m!128335 () Bool)

(assert (=> b!112439 m!128335))

(declare-fun m!128337 () Bool)

(assert (=> b!112439 m!128337))

(declare-fun m!128339 () Bool)

(assert (=> b!112439 m!128339))

(assert (=> b!112439 m!128317))

(declare-fun m!128341 () Bool)

(assert (=> b!112439 m!128341))

(assert (=> b!112439 m!128323))

(assert (=> b!112439 m!128337))

(declare-fun m!128343 () Bool)

(assert (=> b!112439 m!128343))

(assert (=> b!112439 m!128329))

(declare-fun m!128345 () Bool)

(assert (=> b!112439 m!128345))

(declare-fun m!128347 () Bool)

(assert (=> b!112439 m!128347))

(declare-fun m!128349 () Bool)

(assert (=> b!112439 m!128349))

(declare-fun m!128351 () Bool)

(assert (=> bm!12064 m!128351))

(declare-fun m!128353 () Bool)

(assert (=> b!112436 m!128353))

(declare-fun m!128355 () Bool)

(assert (=> b!112445 m!128355))

(declare-fun m!128357 () Bool)

(assert (=> b!112438 m!128357))

(assert (=> b!112438 m!128319))

(declare-fun m!128359 () Bool)

(assert (=> b!112438 m!128359))

(assert (=> b!112438 m!128319))

(declare-fun m!128361 () Bool)

(assert (=> b!112438 m!128361))

(assert (=> b!112438 m!128359))

(assert (=> b!112438 m!128357))

(declare-fun m!128363 () Bool)

(assert (=> b!112438 m!128363))

(assert (=> b!112427 m!128319))

(assert (=> b!112427 m!128319))

(declare-fun m!128365 () Bool)

(assert (=> b!112427 m!128365))

(assert (=> bm!12063 m!128321))

(assert (=> d!31967 m!128241))

(assert (=> b!112443 m!128319))

(assert (=> b!112443 m!128319))

(assert (=> b!112443 m!128365))

(declare-fun m!128367 () Bool)

(assert (=> b!112434 m!128367))

(declare-fun m!128369 () Bool)

(assert (=> bm!12061 m!128369))

(declare-fun m!128371 () Bool)

(assert (=> bm!12062 m!128371))

(assert (=> b!112440 m!128319))

(assert (=> b!112440 m!128319))

(declare-fun m!128373 () Bool)

(assert (=> b!112440 m!128373))

(assert (=> b!112195 d!31967))

(declare-fun d!31969 () Bool)

(assert (=> d!31969 (= (+!151 (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) lt!57986 lt!57797 (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58126 () Unit!3499)

(declare-fun choose!709 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 V!3251 Int) Unit!3499)

(assert (=> d!31969 (= lt!58126 (choose!709 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) lt!57986 (zeroValue!2517 newMap!16) lt!57797 (minValue!2517 newMap!16) (defaultEntry!2648 newMap!16)))))

(assert (=> d!31969 (validMask!0 (mask!6826 newMap!16))))

(assert (=> d!31969 (= (lemmaChangeZeroKeyThenAddPairToListMap!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) lt!57986 (zeroValue!2517 newMap!16) lt!57797 (minValue!2517 newMap!16) (defaultEntry!2648 newMap!16)) lt!58126)))

(declare-fun bs!4624 () Bool)

(assert (= bs!4624 d!31969))

(assert (=> bs!4624 m!128117))

(declare-fun m!128375 () Bool)

(assert (=> bs!4624 m!128375))

(declare-fun m!128377 () Bool)

(assert (=> bs!4624 m!128377))

(assert (=> bs!4624 m!128241))

(declare-fun m!128379 () Bool)

(assert (=> bs!4624 m!128379))

(assert (=> bs!4624 m!128117))

(assert (=> b!112221 d!31969))

(declare-fun d!31971 () Bool)

(assert (=> d!31971 (= (apply!101 lt!58057 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1365 (getValueByKey!158 (toList!815 lt!58057) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!4625 () Bool)

(assert (= bs!4625 d!31971))

(assert (=> bs!4625 m!127975))

(assert (=> bs!4625 m!128311))

(assert (=> bs!4625 m!128311))

(declare-fun m!128381 () Bool)

(assert (=> bs!4625 m!128381))

(assert (=> b!112305 d!31971))

(declare-fun d!31973 () Bool)

(declare-fun c!20117 () Bool)

(assert (=> d!31973 (= c!20117 ((_ is ValueCellFull!1008) (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!73101 () V!3251)

(assert (=> d!31973 (= (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!73101)))

(declare-fun b!112447 () Bool)

(assert (=> b!112447 (= e!73101 (get!1363 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!112448 () Bool)

(assert (=> b!112448 (= e!73101 (get!1364 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!31973 c!20117) b!112447))

(assert (= (and d!31973 (not c!20117)) b!112448))

(assert (=> b!112447 m!127965))

(assert (=> b!112447 m!127883))

(declare-fun m!128383 () Bool)

(assert (=> b!112447 m!128383))

(assert (=> b!112448 m!127965))

(assert (=> b!112448 m!127883))

(declare-fun m!128385 () Bool)

(assert (=> b!112448 m!128385))

(assert (=> b!112305 d!31973))

(declare-fun d!31975 () Bool)

(assert (=> d!31975 (= (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!112043 d!31975))

(declare-fun b!112449 () Bool)

(declare-fun e!73111 () Bool)

(declare-fun e!73108 () Bool)

(assert (=> b!112449 (= e!73111 e!73108)))

(declare-fun c!20120 () Bool)

(assert (=> b!112449 (= c!20120 (not (= (bvand (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!12068 () Bool)

(declare-fun call!12071 () Bool)

(declare-fun lt!58144 () ListLongMap!1599)

(assert (=> bm!12068 (= call!12071 (contains!841 lt!58144 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12069 () Bool)

(declare-fun call!12073 () Bool)

(assert (=> bm!12069 (= call!12073 (contains!841 lt!58144 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!112450 () Bool)

(declare-fun e!73106 () Bool)

(assert (=> b!112450 (= e!73106 (validKeyInArray!0 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun call!12074 () ListLongMap!1599)

(declare-fun bm!12070 () Bool)

(assert (=> bm!12070 (= call!12074 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (ite c!20052 (_values!2631 newMap!16) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16)))) (mask!6826 newMap!16) (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16)) (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun b!112451 () Bool)

(declare-fun e!73112 () ListLongMap!1599)

(declare-fun call!12077 () ListLongMap!1599)

(assert (=> b!112451 (= e!73112 call!12077)))

(declare-fun b!112452 () Bool)

(declare-fun res!55449 () Bool)

(assert (=> b!112452 (=> (not res!55449) (not e!73111))))

(declare-fun e!73113 () Bool)

(assert (=> b!112452 (= res!55449 e!73113)))

(declare-fun res!55443 () Bool)

(assert (=> b!112452 (=> res!55443 e!73113)))

(assert (=> b!112452 (= res!55443 (not e!73106))))

(declare-fun res!55447 () Bool)

(assert (=> b!112452 (=> (not res!55447) (not e!73106))))

(assert (=> b!112452 (= res!55447 (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(declare-fun b!112453 () Bool)

(declare-fun e!73104 () ListLongMap!1599)

(declare-fun call!12072 () ListLongMap!1599)

(assert (=> b!112453 (= e!73104 call!12072)))

(declare-fun call!12075 () ListLongMap!1599)

(declare-fun c!20119 () Bool)

(declare-fun bm!12071 () Bool)

(declare-fun call!12076 () ListLongMap!1599)

(declare-fun c!20121 () Bool)

(assert (=> bm!12071 (= call!12075 (+!151 (ite c!20121 call!12074 (ite c!20119 call!12076 call!12077)) (ite (or c!20121 c!20119) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16))))))))

(declare-fun b!112454 () Bool)

(declare-fun e!73107 () Bool)

(assert (=> b!112454 (= e!73107 (not call!12073))))

(declare-fun b!112455 () Bool)

(declare-fun e!73109 () Unit!3499)

(declare-fun Unit!3514 () Unit!3499)

(assert (=> b!112455 (= e!73109 Unit!3514)))

(declare-fun b!112456 () Bool)

(assert (=> b!112456 (= e!73112 call!12072)))

(declare-fun e!73105 () Bool)

(declare-fun b!112457 () Bool)

(assert (=> b!112457 (= e!73105 (= (apply!101 lt!58144 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16))))))

(declare-fun b!112458 () Bool)

(declare-fun e!73102 () ListLongMap!1599)

(assert (=> b!112458 (= e!73102 e!73104)))

(assert (=> b!112458 (= c!20119 (and (not (= (bvand (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!112459 () Bool)

(assert (=> b!112459 (= e!73102 (+!151 call!12075 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)))))))

(declare-fun bm!12072 () Bool)

(assert (=> bm!12072 (= call!12076 call!12074)))

(declare-fun d!31977 () Bool)

(assert (=> d!31977 e!73111))

(declare-fun res!55444 () Bool)

(assert (=> d!31977 (=> (not res!55444) (not e!73111))))

(assert (=> d!31977 (= res!55444 (or (bvsge #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))))

(declare-fun lt!58148 () ListLongMap!1599)

(assert (=> d!31977 (= lt!58144 lt!58148)))

(declare-fun lt!58142 () Unit!3499)

(assert (=> d!31977 (= lt!58142 e!73109)))

(declare-fun c!20123 () Bool)

(declare-fun e!73110 () Bool)

(assert (=> d!31977 (= c!20123 e!73110)))

(declare-fun res!55450 () Bool)

(assert (=> d!31977 (=> (not res!55450) (not e!73110))))

(assert (=> d!31977 (= res!55450 (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(assert (=> d!31977 (= lt!58148 e!73102)))

(assert (=> d!31977 (= c!20121 (and (not (= (bvand (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!31977 (validMask!0 (mask!6826 newMap!16))))

(assert (=> d!31977 (= (getCurrentListMap!491 (_keys!4366 newMap!16) (ite c!20052 (_values!2631 newMap!16) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16)))) (mask!6826 newMap!16) (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16)) (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)) lt!58144)))

(declare-fun b!112460 () Bool)

(assert (=> b!112460 (= e!73108 (not call!12071))))

(declare-fun b!112461 () Bool)

(declare-fun e!73103 () Bool)

(assert (=> b!112461 (= e!73103 (= (apply!101 lt!58144 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)) (get!1362 (select (arr!2087 (ite c!20052 (_values!2631 newMap!16) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!394 (defaultEntry!2648 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!112461 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2345 (ite c!20052 (_values!2631 newMap!16) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16)))))))))

(assert (=> b!112461 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(declare-fun b!112462 () Bool)

(declare-fun lt!58128 () Unit!3499)

(assert (=> b!112462 (= e!73109 lt!58128)))

(declare-fun lt!58130 () ListLongMap!1599)

(assert (=> b!112462 (= lt!58130 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (ite c!20052 (_values!2631 newMap!16) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16)))) (mask!6826 newMap!16) (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16)) (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58131 () (_ BitVec 64))

(assert (=> b!112462 (= lt!58131 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58137 () (_ BitVec 64))

(assert (=> b!112462 (= lt!58137 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58127 () Unit!3499)

(assert (=> b!112462 (= lt!58127 (addStillContains!77 lt!58130 lt!58131 (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16)) lt!58137))))

(assert (=> b!112462 (contains!841 (+!151 lt!58130 (tuple2!2437 lt!58131 (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16)))) lt!58137)))

(declare-fun lt!58145 () Unit!3499)

(assert (=> b!112462 (= lt!58145 lt!58127)))

(declare-fun lt!58136 () ListLongMap!1599)

(assert (=> b!112462 (= lt!58136 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (ite c!20052 (_values!2631 newMap!16) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16)))) (mask!6826 newMap!16) (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16)) (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58132 () (_ BitVec 64))

(assert (=> b!112462 (= lt!58132 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58143 () (_ BitVec 64))

(assert (=> b!112462 (= lt!58143 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58141 () Unit!3499)

(assert (=> b!112462 (= lt!58141 (addApplyDifferent!77 lt!58136 lt!58132 (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)) lt!58143))))

(assert (=> b!112462 (= (apply!101 (+!151 lt!58136 (tuple2!2437 lt!58132 (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)))) lt!58143) (apply!101 lt!58136 lt!58143))))

(declare-fun lt!58138 () Unit!3499)

(assert (=> b!112462 (= lt!58138 lt!58141)))

(declare-fun lt!58147 () ListLongMap!1599)

(assert (=> b!112462 (= lt!58147 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (ite c!20052 (_values!2631 newMap!16) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16)))) (mask!6826 newMap!16) (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16)) (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58146 () (_ BitVec 64))

(assert (=> b!112462 (= lt!58146 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58134 () (_ BitVec 64))

(assert (=> b!112462 (= lt!58134 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58133 () Unit!3499)

(assert (=> b!112462 (= lt!58133 (addApplyDifferent!77 lt!58147 lt!58146 (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16)) lt!58134))))

(assert (=> b!112462 (= (apply!101 (+!151 lt!58147 (tuple2!2437 lt!58146 (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16)))) lt!58134) (apply!101 lt!58147 lt!58134))))

(declare-fun lt!58139 () Unit!3499)

(assert (=> b!112462 (= lt!58139 lt!58133)))

(declare-fun lt!58129 () ListLongMap!1599)

(assert (=> b!112462 (= lt!58129 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (ite c!20052 (_values!2631 newMap!16) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16)))) (mask!6826 newMap!16) (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) (ite (and c!20052 c!20044) lt!57797 (zeroValue!2517 newMap!16)) (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58140 () (_ BitVec 64))

(assert (=> b!112462 (= lt!58140 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58135 () (_ BitVec 64))

(assert (=> b!112462 (= lt!58135 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!112462 (= lt!58128 (addApplyDifferent!77 lt!58129 lt!58140 (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)) lt!58135))))

(assert (=> b!112462 (= (apply!101 (+!151 lt!58129 (tuple2!2437 lt!58140 (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16)))) lt!58135) (apply!101 lt!58129 lt!58135))))

(declare-fun b!112463 () Bool)

(assert (=> b!112463 (= e!73113 e!73103)))

(declare-fun res!55446 () Bool)

(assert (=> b!112463 (=> (not res!55446) (not e!73103))))

(assert (=> b!112463 (= res!55446 (contains!841 lt!58144 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!112463 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(declare-fun bm!12073 () Bool)

(assert (=> bm!12073 (= call!12077 call!12076)))

(declare-fun c!20118 () Bool)

(declare-fun b!112464 () Bool)

(assert (=> b!112464 (= c!20118 (and (not (= (bvand (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!112464 (= e!73104 e!73112)))

(declare-fun b!112465 () Bool)

(declare-fun e!73114 () Bool)

(assert (=> b!112465 (= e!73108 e!73114)))

(declare-fun res!55445 () Bool)

(assert (=> b!112465 (= res!55445 call!12071)))

(assert (=> b!112465 (=> (not res!55445) (not e!73114))))

(declare-fun b!112466 () Bool)

(assert (=> b!112466 (= e!73110 (validKeyInArray!0 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!112467 () Bool)

(assert (=> b!112467 (= e!73107 e!73105)))

(declare-fun res!55448 () Bool)

(assert (=> b!112467 (= res!55448 call!12073)))

(assert (=> b!112467 (=> (not res!55448) (not e!73105))))

(declare-fun bm!12074 () Bool)

(assert (=> bm!12074 (= call!12072 call!12075)))

(declare-fun b!112468 () Bool)

(assert (=> b!112468 (= e!73114 (= (apply!101 lt!58144 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!20052 (ite c!20044 (minValue!2517 newMap!16) lt!57797) (minValue!2517 newMap!16))))))

(declare-fun b!112469 () Bool)

(declare-fun res!55451 () Bool)

(assert (=> b!112469 (=> (not res!55451) (not e!73111))))

(assert (=> b!112469 (= res!55451 e!73107)))

(declare-fun c!20122 () Bool)

(assert (=> b!112469 (= c!20122 (not (= (bvand (ite c!20052 (ite c!20044 lt!57986 lt!57995) (extraKeys!2441 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!31977 c!20121) b!112459))

(assert (= (and d!31977 (not c!20121)) b!112458))

(assert (= (and b!112458 c!20119) b!112453))

(assert (= (and b!112458 (not c!20119)) b!112464))

(assert (= (and b!112464 c!20118) b!112456))

(assert (= (and b!112464 (not c!20118)) b!112451))

(assert (= (or b!112456 b!112451) bm!12073))

(assert (= (or b!112453 bm!12073) bm!12072))

(assert (= (or b!112453 b!112456) bm!12074))

(assert (= (or b!112459 bm!12072) bm!12070))

(assert (= (or b!112459 bm!12074) bm!12071))

(assert (= (and d!31977 res!55450) b!112466))

(assert (= (and d!31977 c!20123) b!112462))

(assert (= (and d!31977 (not c!20123)) b!112455))

(assert (= (and d!31977 res!55444) b!112452))

(assert (= (and b!112452 res!55447) b!112450))

(assert (= (and b!112452 (not res!55443)) b!112463))

(assert (= (and b!112463 res!55446) b!112461))

(assert (= (and b!112452 res!55449) b!112469))

(assert (= (and b!112469 c!20122) b!112467))

(assert (= (and b!112469 (not c!20122)) b!112454))

(assert (= (and b!112467 res!55448) b!112457))

(assert (= (or b!112467 b!112454) bm!12069))

(assert (= (and b!112469 res!55451) b!112449))

(assert (= (and b!112449 c!20120) b!112465))

(assert (= (and b!112449 (not c!20120)) b!112460))

(assert (= (and b!112465 res!55445) b!112468))

(assert (= (or b!112465 b!112460) bm!12068))

(declare-fun b_lambda!5065 () Bool)

(assert (=> (not b_lambda!5065) (not b!112461)))

(assert (=> b!112461 t!5834))

(declare-fun b_and!6933 () Bool)

(assert (= b_and!6929 (and (=> t!5834 result!3577) b_and!6933)))

(assert (=> b!112461 t!5836))

(declare-fun b_and!6935 () Bool)

(assert (= b_and!6931 (and (=> t!5836 result!3579) b_and!6935)))

(declare-fun m!128387 () Bool)

(assert (=> b!112462 m!128387))

(assert (=> b!112462 m!128319))

(declare-fun m!128389 () Bool)

(assert (=> b!112462 m!128389))

(declare-fun m!128391 () Bool)

(assert (=> b!112462 m!128391))

(declare-fun m!128393 () Bool)

(assert (=> b!112462 m!128393))

(declare-fun m!128395 () Bool)

(assert (=> b!112462 m!128395))

(declare-fun m!128397 () Bool)

(assert (=> b!112462 m!128397))

(declare-fun m!128399 () Bool)

(assert (=> b!112462 m!128399))

(declare-fun m!128401 () Bool)

(assert (=> b!112462 m!128401))

(declare-fun m!128403 () Bool)

(assert (=> b!112462 m!128403))

(declare-fun m!128405 () Bool)

(assert (=> b!112462 m!128405))

(declare-fun m!128407 () Bool)

(assert (=> b!112462 m!128407))

(assert (=> b!112462 m!128387))

(declare-fun m!128409 () Bool)

(assert (=> b!112462 m!128409))

(assert (=> b!112462 m!128391))

(assert (=> b!112462 m!128405))

(declare-fun m!128411 () Bool)

(assert (=> b!112462 m!128411))

(assert (=> b!112462 m!128397))

(declare-fun m!128413 () Bool)

(assert (=> b!112462 m!128413))

(declare-fun m!128415 () Bool)

(assert (=> b!112462 m!128415))

(declare-fun m!128417 () Bool)

(assert (=> b!112462 m!128417))

(declare-fun m!128419 () Bool)

(assert (=> bm!12071 m!128419))

(declare-fun m!128421 () Bool)

(assert (=> b!112459 m!128421))

(declare-fun m!128423 () Bool)

(assert (=> b!112468 m!128423))

(assert (=> b!112461 m!128357))

(assert (=> b!112461 m!128319))

(declare-fun m!128425 () Bool)

(assert (=> b!112461 m!128425))

(assert (=> b!112461 m!128319))

(declare-fun m!128427 () Bool)

(assert (=> b!112461 m!128427))

(assert (=> b!112461 m!128425))

(assert (=> b!112461 m!128357))

(declare-fun m!128429 () Bool)

(assert (=> b!112461 m!128429))

(assert (=> b!112450 m!128319))

(assert (=> b!112450 m!128319))

(assert (=> b!112450 m!128365))

(assert (=> bm!12070 m!128389))

(assert (=> d!31977 m!128241))

(assert (=> b!112466 m!128319))

(assert (=> b!112466 m!128319))

(assert (=> b!112466 m!128365))

(declare-fun m!128431 () Bool)

(assert (=> b!112457 m!128431))

(declare-fun m!128433 () Bool)

(assert (=> bm!12068 m!128433))

(declare-fun m!128435 () Bool)

(assert (=> bm!12069 m!128435))

(assert (=> b!112463 m!128319))

(assert (=> b!112463 m!128319))

(declare-fun m!128437 () Bool)

(assert (=> b!112463 m!128437))

(assert (=> bm!12020 d!31977))

(declare-fun d!31979 () Bool)

(declare-fun lt!58149 () Bool)

(assert (=> d!31979 (= lt!58149 (select (content!114 (toList!815 lt!57877)) lt!57795))))

(declare-fun e!73115 () Bool)

(assert (=> d!31979 (= lt!58149 e!73115)))

(declare-fun res!55453 () Bool)

(assert (=> d!31979 (=> (not res!55453) (not e!73115))))

(assert (=> d!31979 (= res!55453 ((_ is Cons!1653) (toList!815 lt!57877)))))

(assert (=> d!31979 (= (contains!842 (toList!815 lt!57877) lt!57795) lt!58149)))

(declare-fun b!112470 () Bool)

(declare-fun e!73116 () Bool)

(assert (=> b!112470 (= e!73115 e!73116)))

(declare-fun res!55452 () Bool)

(assert (=> b!112470 (=> res!55452 e!73116)))

(assert (=> b!112470 (= res!55452 (= (h!2253 (toList!815 lt!57877)) lt!57795))))

(declare-fun b!112471 () Bool)

(assert (=> b!112471 (= e!73116 (contains!842 (t!5827 (toList!815 lt!57877)) lt!57795))))

(assert (= (and d!31979 res!55453) b!112470))

(assert (= (and b!112470 (not res!55452)) b!112471))

(declare-fun m!128439 () Bool)

(assert (=> d!31979 m!128439))

(declare-fun m!128441 () Bool)

(assert (=> d!31979 m!128441))

(declare-fun m!128443 () Bool)

(assert (=> b!112471 m!128443))

(assert (=> b!112059 d!31979))

(assert (=> b!112310 d!31975))

(assert (=> d!31903 d!31907))

(declare-fun d!31981 () Bool)

(assert (=> d!31981 (not (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> d!31981 true))

(declare-fun _$68!115 () Unit!3499)

(assert (=> d!31981 (= (choose!68 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (Cons!1652 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) Nil!1653)) _$68!115)))

(declare-fun bs!4626 () Bool)

(assert (= bs!4626 d!31981))

(assert (=> bs!4626 m!127849))

(assert (=> bs!4626 m!127877))

(assert (=> d!31903 d!31981))

(declare-fun d!31983 () Bool)

(declare-fun e!73118 () Bool)

(assert (=> d!31983 e!73118))

(declare-fun res!55454 () Bool)

(assert (=> d!31983 (=> res!55454 e!73118)))

(declare-fun lt!58150 () Bool)

(assert (=> d!31983 (= res!55454 (not lt!58150))))

(declare-fun lt!58153 () Bool)

(assert (=> d!31983 (= lt!58150 lt!58153)))

(declare-fun lt!58151 () Unit!3499)

(declare-fun e!73117 () Unit!3499)

(assert (=> d!31983 (= lt!58151 e!73117)))

(declare-fun c!20124 () Bool)

(assert (=> d!31983 (= c!20124 lt!58153)))

(assert (=> d!31983 (= lt!58153 (containsKey!162 (toList!815 lt!58057) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!31983 (= (contains!841 lt!58057 #b0000000000000000000000000000000000000000000000000000000000000000) lt!58150)))

(declare-fun b!112472 () Bool)

(declare-fun lt!58152 () Unit!3499)

(assert (=> b!112472 (= e!73117 lt!58152)))

(assert (=> b!112472 (= lt!58152 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!58057) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!112472 (isDefined!112 (getValueByKey!158 (toList!815 lt!58057) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!112473 () Bool)

(declare-fun Unit!3515 () Unit!3499)

(assert (=> b!112473 (= e!73117 Unit!3515)))

(declare-fun b!112474 () Bool)

(assert (=> b!112474 (= e!73118 (isDefined!112 (getValueByKey!158 (toList!815 lt!58057) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!31983 c!20124) b!112472))

(assert (= (and d!31983 (not c!20124)) b!112473))

(assert (= (and d!31983 (not res!55454)) b!112474))

(declare-fun m!128445 () Bool)

(assert (=> d!31983 m!128445))

(declare-fun m!128447 () Bool)

(assert (=> b!112472 m!128447))

(declare-fun m!128449 () Bool)

(assert (=> b!112472 m!128449))

(assert (=> b!112472 m!128449))

(declare-fun m!128451 () Bool)

(assert (=> b!112472 m!128451))

(assert (=> b!112474 m!128449))

(assert (=> b!112474 m!128449))

(assert (=> b!112474 m!128451))

(assert (=> bm!12045 d!31983))

(declare-fun b!112475 () Bool)

(declare-fun e!73121 () Bool)

(declare-fun call!12078 () Bool)

(assert (=> b!112475 (= e!73121 call!12078)))

(declare-fun d!31985 () Bool)

(declare-fun res!55456 () Bool)

(declare-fun e!73119 () Bool)

(assert (=> d!31985 (=> res!55456 e!73119)))

(assert (=> d!31985 (= res!55456 (bvsge #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(assert (=> d!31985 (= (arrayNoDuplicates!0 (_keys!4366 newMap!16) #b00000000000000000000000000000000 Nil!1653) e!73119)))

(declare-fun bm!12075 () Bool)

(declare-fun c!20125 () Bool)

(assert (=> bm!12075 (= call!12078 (arrayNoDuplicates!0 (_keys!4366 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!20125 (Cons!1652 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000) Nil!1653) Nil!1653)))))

(declare-fun b!112476 () Bool)

(declare-fun e!73122 () Bool)

(assert (=> b!112476 (= e!73122 e!73121)))

(assert (=> b!112476 (= c!20125 (validKeyInArray!0 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!112477 () Bool)

(declare-fun e!73120 () Bool)

(assert (=> b!112477 (= e!73120 (contains!843 Nil!1653 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!112478 () Bool)

(assert (=> b!112478 (= e!73121 call!12078)))

(declare-fun b!112479 () Bool)

(assert (=> b!112479 (= e!73119 e!73122)))

(declare-fun res!55455 () Bool)

(assert (=> b!112479 (=> (not res!55455) (not e!73122))))

(assert (=> b!112479 (= res!55455 (not e!73120))))

(declare-fun res!55457 () Bool)

(assert (=> b!112479 (=> (not res!55457) (not e!73120))))

(assert (=> b!112479 (= res!55457 (validKeyInArray!0 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!31985 (not res!55456)) b!112479))

(assert (= (and b!112479 res!55457) b!112477))

(assert (= (and b!112479 res!55455) b!112476))

(assert (= (and b!112476 c!20125) b!112478))

(assert (= (and b!112476 (not c!20125)) b!112475))

(assert (= (or b!112478 b!112475) bm!12075))

(assert (=> bm!12075 m!128319))

(declare-fun m!128453 () Bool)

(assert (=> bm!12075 m!128453))

(assert (=> b!112476 m!128319))

(assert (=> b!112476 m!128319))

(assert (=> b!112476 m!128365))

(assert (=> b!112477 m!128319))

(assert (=> b!112477 m!128319))

(declare-fun m!128455 () Bool)

(assert (=> b!112477 m!128455))

(assert (=> b!112479 m!128319))

(assert (=> b!112479 m!128319))

(assert (=> b!112479 m!128365))

(assert (=> b!112250 d!31985))

(declare-fun d!31987 () Bool)

(declare-fun lt!58154 () Bool)

(assert (=> d!31987 (= lt!58154 (select (content!114 (toList!815 lt!57881)) lt!57795))))

(declare-fun e!73123 () Bool)

(assert (=> d!31987 (= lt!58154 e!73123)))

(declare-fun res!55459 () Bool)

(assert (=> d!31987 (=> (not res!55459) (not e!73123))))

(assert (=> d!31987 (= res!55459 ((_ is Cons!1653) (toList!815 lt!57881)))))

(assert (=> d!31987 (= (contains!842 (toList!815 lt!57881) lt!57795) lt!58154)))

(declare-fun b!112480 () Bool)

(declare-fun e!73124 () Bool)

(assert (=> b!112480 (= e!73123 e!73124)))

(declare-fun res!55458 () Bool)

(assert (=> b!112480 (=> res!55458 e!73124)))

(assert (=> b!112480 (= res!55458 (= (h!2253 (toList!815 lt!57881)) lt!57795))))

(declare-fun b!112481 () Bool)

(assert (=> b!112481 (= e!73124 (contains!842 (t!5827 (toList!815 lt!57881)) lt!57795))))

(assert (= (and d!31987 res!55459) b!112480))

(assert (= (and b!112480 (not res!55458)) b!112481))

(declare-fun m!128457 () Bool)

(assert (=> d!31987 m!128457))

(declare-fun m!128459 () Bool)

(assert (=> d!31987 m!128459))

(declare-fun m!128461 () Bool)

(assert (=> b!112481 m!128461))

(assert (=> b!112061 d!31987))

(declare-fun b!112482 () Bool)

(declare-fun e!73127 () Bool)

(declare-fun call!12079 () Bool)

(assert (=> b!112482 (= e!73127 call!12079)))

(declare-fun d!31989 () Bool)

(declare-fun res!55461 () Bool)

(declare-fun e!73125 () Bool)

(assert (=> d!31989 (=> res!55461 e!73125)))

(assert (=> d!31989 (= res!55461 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(assert (=> d!31989 (= (arrayNoDuplicates!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!20007 (Cons!1652 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) Nil!1653) Nil!1653)) e!73125)))

(declare-fun c!20126 () Bool)

(declare-fun bm!12076 () Bool)

(assert (=> bm!12076 (= call!12079 (arrayNoDuplicates!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!20126 (Cons!1652 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!20007 (Cons!1652 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) Nil!1653) Nil!1653)) (ite c!20007 (Cons!1652 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) Nil!1653) Nil!1653))))))

(declare-fun b!112483 () Bool)

(declare-fun e!73128 () Bool)

(assert (=> b!112483 (= e!73128 e!73127)))

(assert (=> b!112483 (= c!20126 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!112484 () Bool)

(declare-fun e!73126 () Bool)

(assert (=> b!112484 (= e!73126 (contains!843 (ite c!20007 (Cons!1652 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) Nil!1653) Nil!1653) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!112485 () Bool)

(assert (=> b!112485 (= e!73127 call!12079)))

(declare-fun b!112486 () Bool)

(assert (=> b!112486 (= e!73125 e!73128)))

(declare-fun res!55460 () Bool)

(assert (=> b!112486 (=> (not res!55460) (not e!73128))))

(assert (=> b!112486 (= res!55460 (not e!73126))))

(declare-fun res!55462 () Bool)

(assert (=> b!112486 (=> (not res!55462) (not e!73126))))

(assert (=> b!112486 (= res!55462 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(assert (= (and d!31989 (not res!55461)) b!112486))

(assert (= (and b!112486 res!55462) b!112484))

(assert (= (and b!112486 res!55460) b!112483))

(assert (= (and b!112483 c!20126) b!112485))

(assert (= (and b!112483 (not c!20126)) b!112482))

(assert (= (or b!112485 b!112482) bm!12076))

(declare-fun m!128463 () Bool)

(assert (=> bm!12076 m!128463))

(declare-fun m!128465 () Bool)

(assert (=> bm!12076 m!128465))

(assert (=> b!112483 m!128463))

(assert (=> b!112483 m!128463))

(declare-fun m!128467 () Bool)

(assert (=> b!112483 m!128467))

(assert (=> b!112484 m!128463))

(assert (=> b!112484 m!128463))

(declare-fun m!128469 () Bool)

(assert (=> b!112484 m!128469))

(assert (=> b!112486 m!128463))

(assert (=> b!112486 m!128463))

(assert (=> b!112486 m!128467))

(assert (=> bm!11954 d!31989))

(assert (=> bm!12046 d!31889))

(declare-fun b!112495 () Bool)

(declare-fun e!73133 () (_ BitVec 32))

(declare-fun call!12082 () (_ BitVec 32))

(assert (=> b!112495 (= e!73133 call!12082)))

(declare-fun d!31991 () Bool)

(declare-fun lt!58157 () (_ BitVec 32))

(assert (=> d!31991 (and (bvsge lt!58157 #b00000000000000000000000000000000) (bvsle lt!58157 (bvsub (size!2344 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!73134 () (_ BitVec 32))

(assert (=> d!31991 (= lt!58157 e!73134)))

(declare-fun c!20131 () Bool)

(assert (=> d!31991 (= c!20131 (bvsge #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(assert (=> d!31991 (and (bvsle #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2344 (_keys!4366 newMap!16)) (size!2344 (_keys!4366 newMap!16))))))

(assert (=> d!31991 (= (arrayCountValidKeys!0 (_keys!4366 newMap!16) #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))) lt!58157)))

(declare-fun b!112496 () Bool)

(assert (=> b!112496 (= e!73134 #b00000000000000000000000000000000)))

(declare-fun b!112497 () Bool)

(assert (=> b!112497 (= e!73134 e!73133)))

(declare-fun c!20132 () Bool)

(assert (=> b!112497 (= c!20132 (validKeyInArray!0 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!12079 () Bool)

(assert (=> bm!12079 (= call!12082 (arrayCountValidKeys!0 (_keys!4366 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2344 (_keys!4366 newMap!16))))))

(declare-fun b!112498 () Bool)

(assert (=> b!112498 (= e!73133 (bvadd #b00000000000000000000000000000001 call!12082))))

(assert (= (and d!31991 c!20131) b!112496))

(assert (= (and d!31991 (not c!20131)) b!112497))

(assert (= (and b!112497 c!20132) b!112498))

(assert (= (and b!112497 (not c!20132)) b!112495))

(assert (= (or b!112498 b!112495) bm!12079))

(assert (=> b!112497 m!128319))

(assert (=> b!112497 m!128319))

(assert (=> b!112497 m!128365))

(declare-fun m!128471 () Bool)

(assert (=> bm!12079 m!128471))

(assert (=> b!112248 d!31991))

(declare-fun d!31993 () Bool)

(declare-fun lt!58158 () Bool)

(assert (=> d!31993 (= lt!58158 (select (content!114 (toList!815 lt!57870)) lt!57800))))

(declare-fun e!73135 () Bool)

(assert (=> d!31993 (= lt!58158 e!73135)))

(declare-fun res!55464 () Bool)

(assert (=> d!31993 (=> (not res!55464) (not e!73135))))

(assert (=> d!31993 (= res!55464 ((_ is Cons!1653) (toList!815 lt!57870)))))

(assert (=> d!31993 (= (contains!842 (toList!815 lt!57870) lt!57800) lt!58158)))

(declare-fun b!112499 () Bool)

(declare-fun e!73136 () Bool)

(assert (=> b!112499 (= e!73135 e!73136)))

(declare-fun res!55463 () Bool)

(assert (=> b!112499 (=> res!55463 e!73136)))

(assert (=> b!112499 (= res!55463 (= (h!2253 (toList!815 lt!57870)) lt!57800))))

(declare-fun b!112500 () Bool)

(assert (=> b!112500 (= e!73136 (contains!842 (t!5827 (toList!815 lt!57870)) lt!57800))))

(assert (= (and d!31993 res!55464) b!112499))

(assert (= (and b!112499 (not res!55463)) b!112500))

(declare-fun m!128473 () Bool)

(assert (=> d!31993 m!128473))

(declare-fun m!128475 () Bool)

(assert (=> d!31993 m!128475))

(declare-fun m!128477 () Bool)

(assert (=> b!112500 m!128477))

(assert (=> b!112057 d!31993))

(declare-fun d!31995 () Bool)

(assert (=> d!31995 (= (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!112099 d!31995))

(declare-fun d!31997 () Bool)

(assert (=> d!31997 (= (apply!101 lt!57853 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1365 (getValueByKey!158 (toList!815 lt!57853) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!4627 () Bool)

(assert (= bs!4627 d!31997))

(assert (=> bs!4627 m!127975))

(assert (=> bs!4627 m!128289))

(assert (=> bs!4627 m!128289))

(declare-fun m!128479 () Bool)

(assert (=> bs!4627 m!128479))

(assert (=> b!112041 d!31997))

(assert (=> b!112041 d!31973))

(declare-fun d!31999 () Bool)

(declare-fun e!73138 () Bool)

(assert (=> d!31999 e!73138))

(declare-fun res!55465 () Bool)

(assert (=> d!31999 (=> res!55465 e!73138)))

(declare-fun lt!58159 () Bool)

(assert (=> d!31999 (= res!55465 (not lt!58159))))

(declare-fun lt!58162 () Bool)

(assert (=> d!31999 (= lt!58159 lt!58162)))

(declare-fun lt!58160 () Unit!3499)

(declare-fun e!73137 () Unit!3499)

(assert (=> d!31999 (= lt!58160 e!73137)))

(declare-fun c!20133 () Bool)

(assert (=> d!31999 (= c!20133 lt!58162)))

(assert (=> d!31999 (= lt!58162 (containsKey!162 (toList!815 call!12019) (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!57974))))))

(assert (=> d!31999 (= (contains!841 call!12019 (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!57974))) lt!58159)))

(declare-fun b!112501 () Bool)

(declare-fun lt!58161 () Unit!3499)

(assert (=> b!112501 (= e!73137 lt!58161)))

(assert (=> b!112501 (= lt!58161 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 call!12019) (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!57974))))))

(assert (=> b!112501 (isDefined!112 (getValueByKey!158 (toList!815 call!12019) (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!57974))))))

(declare-fun b!112502 () Bool)

(declare-fun Unit!3516 () Unit!3499)

(assert (=> b!112502 (= e!73137 Unit!3516)))

(declare-fun b!112503 () Bool)

(assert (=> b!112503 (= e!73138 (isDefined!112 (getValueByKey!158 (toList!815 call!12019) (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!57974)))))))

(assert (= (and d!31999 c!20133) b!112501))

(assert (= (and d!31999 (not c!20133)) b!112502))

(assert (= (and d!31999 (not res!55465)) b!112503))

(assert (=> d!31999 m!128093))

(declare-fun m!128481 () Bool)

(assert (=> d!31999 m!128481))

(assert (=> b!112501 m!128093))

(declare-fun m!128483 () Bool)

(assert (=> b!112501 m!128483))

(assert (=> b!112501 m!128093))

(declare-fun m!128485 () Bool)

(assert (=> b!112501 m!128485))

(assert (=> b!112501 m!128485))

(declare-fun m!128487 () Bool)

(assert (=> b!112501 m!128487))

(assert (=> b!112503 m!128093))

(assert (=> b!112503 m!128485))

(assert (=> b!112503 m!128485))

(assert (=> b!112503 m!128487))

(assert (=> b!112210 d!31999))

(declare-fun d!32001 () Bool)

(declare-fun e!73141 () Bool)

(assert (=> d!32001 e!73141))

(declare-fun res!55468 () Bool)

(assert (=> d!32001 (=> (not res!55468) (not e!73141))))

(assert (=> d!32001 (= res!55468 (and (bvsge (index!3240 lt!57974) #b00000000000000000000000000000000) (bvslt (index!3240 lt!57974) (size!2344 (_keys!4366 newMap!16)))))))

(declare-fun lt!58165 () Unit!3499)

(declare-fun choose!710 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 32) Int) Unit!3499)

(assert (=> d!32001 (= lt!58165 (choose!710 (_keys!4366 newMap!16) lt!57985 (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (index!3240 lt!57974) (defaultEntry!2648 newMap!16)))))

(assert (=> d!32001 (validMask!0 (mask!6826 newMap!16))))

(assert (=> d!32001 (= (lemmaValidKeyInArrayIsInListMap!108 (_keys!4366 newMap!16) lt!57985 (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (index!3240 lt!57974) (defaultEntry!2648 newMap!16)) lt!58165)))

(declare-fun b!112506 () Bool)

(assert (=> b!112506 (= e!73141 (contains!841 (getCurrentListMap!491 (_keys!4366 newMap!16) lt!57985 (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)) (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!57974))))))

(assert (= (and d!32001 res!55468) b!112506))

(declare-fun m!128489 () Bool)

(assert (=> d!32001 m!128489))

(assert (=> d!32001 m!128241))

(declare-fun m!128491 () Bool)

(assert (=> b!112506 m!128491))

(assert (=> b!112506 m!128093))

(assert (=> b!112506 m!128491))

(assert (=> b!112506 m!128093))

(declare-fun m!128493 () Bool)

(assert (=> b!112506 m!128493))

(assert (=> b!112210 d!32001))

(declare-fun d!32003 () Bool)

(declare-fun e!73144 () Bool)

(assert (=> d!32003 e!73144))

(declare-fun res!55471 () Bool)

(assert (=> d!32003 (=> (not res!55471) (not e!73144))))

(assert (=> d!32003 (= res!55471 (and (bvsge (index!3240 lt!57974) #b00000000000000000000000000000000) (bvslt (index!3240 lt!57974) (size!2345 (_values!2631 newMap!16)))))))

(declare-fun lt!58168 () Unit!3499)

(declare-fun choose!711 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 32) (_ BitVec 64) V!3251 Int) Unit!3499)

(assert (=> d!32003 (= lt!58168 (choose!711 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (index!3240 lt!57974) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797 (defaultEntry!2648 newMap!16)))))

(assert (=> d!32003 (validMask!0 (mask!6826 newMap!16))))

(assert (=> d!32003 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (index!3240 lt!57974) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797 (defaultEntry!2648 newMap!16)) lt!58168)))

(declare-fun b!112509 () Bool)

(assert (=> b!112509 (= e!73144 (= (+!151 (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) (getCurrentListMap!491 (_keys!4366 newMap!16) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (index!3240 lt!57974) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16))) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16))))))

(assert (= (and d!32003 res!55471) b!112509))

(assert (=> d!32003 m!127849))

(declare-fun m!128495 () Bool)

(assert (=> d!32003 m!128495))

(assert (=> d!32003 m!128241))

(assert (=> b!112509 m!128117))

(assert (=> b!112509 m!128117))

(declare-fun m!128497 () Bool)

(assert (=> b!112509 m!128497))

(assert (=> b!112509 m!128099))

(declare-fun m!128499 () Bool)

(assert (=> b!112509 m!128499))

(assert (=> b!112210 d!32003))

(assert (=> bm!12010 d!31929))

(declare-fun d!32005 () Bool)

(assert (=> d!32005 (isDefined!112 (getValueByKey!158 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun lt!58171 () Unit!3499)

(declare-fun choose!712 (List!1657 (_ BitVec 64)) Unit!3499)

(assert (=> d!32005 (= lt!58171 (choose!712 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun e!73147 () Bool)

(assert (=> d!32005 e!73147))

(declare-fun res!55474 () Bool)

(assert (=> d!32005 (=> (not res!55474) (not e!73147))))

(assert (=> d!32005 (= res!55474 (isStrictlySorted!307 (toList!815 lt!57796)))))

(assert (=> d!32005 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) lt!58171)))

(declare-fun b!112512 () Bool)

(assert (=> b!112512 (= e!73147 (containsKey!162 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (= (and d!32005 res!55474) b!112512))

(assert (=> d!32005 m!127849))

(assert (=> d!32005 m!128079))

(assert (=> d!32005 m!128079))

(assert (=> d!32005 m!128081))

(assert (=> d!32005 m!127849))

(declare-fun m!128501 () Bool)

(assert (=> d!32005 m!128501))

(declare-fun m!128503 () Bool)

(assert (=> d!32005 m!128503))

(assert (=> b!112512 m!127849))

(assert (=> b!112512 m!128075))

(assert (=> b!112107 d!32005))

(declare-fun d!32007 () Bool)

(declare-fun isEmpty!385 (Option!164) Bool)

(assert (=> d!32007 (= (isDefined!112 (getValueByKey!158 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355))) (not (isEmpty!385 (getValueByKey!158 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))))

(declare-fun bs!4628 () Bool)

(assert (= bs!4628 d!32007))

(assert (=> bs!4628 m!128079))

(declare-fun m!128505 () Bool)

(assert (=> bs!4628 m!128505))

(assert (=> b!112107 d!32007))

(declare-fun b!112513 () Bool)

(declare-fun e!73148 () Option!164)

(assert (=> b!112513 (= e!73148 (Some!163 (_2!1228 (h!2253 (toList!815 lt!57796)))))))

(declare-fun b!112516 () Bool)

(declare-fun e!73149 () Option!164)

(assert (=> b!112516 (= e!73149 None!162)))

(declare-fun d!32009 () Bool)

(declare-fun c!20134 () Bool)

(assert (=> d!32009 (= c!20134 (and ((_ is Cons!1653) (toList!815 lt!57796)) (= (_1!1228 (h!2253 (toList!815 lt!57796))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355))))))

(assert (=> d!32009 (= (getValueByKey!158 (toList!815 lt!57796) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) e!73148)))

(declare-fun b!112514 () Bool)

(assert (=> b!112514 (= e!73148 e!73149)))

(declare-fun c!20135 () Bool)

(assert (=> b!112514 (= c!20135 (and ((_ is Cons!1653) (toList!815 lt!57796)) (not (= (_1!1228 (h!2253 (toList!815 lt!57796))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))))

(declare-fun b!112515 () Bool)

(assert (=> b!112515 (= e!73149 (getValueByKey!158 (t!5827 (toList!815 lt!57796)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (= (and d!32009 c!20134) b!112513))

(assert (= (and d!32009 (not c!20134)) b!112514))

(assert (= (and b!112514 c!20135) b!112515))

(assert (= (and b!112514 (not c!20135)) b!112516))

(assert (=> b!112515 m!127849))

(declare-fun m!128507 () Bool)

(assert (=> b!112515 m!128507))

(assert (=> b!112107 d!32009))

(assert (=> b!112088 d!31947))

(declare-fun d!32011 () Bool)

(declare-fun e!73150 () Bool)

(assert (=> d!32011 e!73150))

(declare-fun res!55475 () Bool)

(assert (=> d!32011 (=> (not res!55475) (not e!73150))))

(declare-fun lt!58172 () ListLongMap!1599)

(assert (=> d!32011 (= res!55475 (contains!841 lt!58172 (_1!1228 (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))))))

(declare-fun lt!58174 () List!1657)

(assert (=> d!32011 (= lt!58172 (ListLongMap!1600 lt!58174))))

(declare-fun lt!58173 () Unit!3499)

(declare-fun lt!58175 () Unit!3499)

(assert (=> d!32011 (= lt!58173 lt!58175)))

(assert (=> d!32011 (= (getValueByKey!158 lt!58174 (_1!1228 (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))) (Some!163 (_2!1228 (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))))))

(assert (=> d!32011 (= lt!58175 (lemmaContainsTupThenGetReturnValue!76 lt!58174 (_1!1228 (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))) (_2!1228 (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))))))

(assert (=> d!32011 (= lt!58174 (insertStrictlySorted!78 (toList!815 (ite c!20074 call!12050 (ite c!20072 call!12052 call!12053))) (_1!1228 (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))) (_2!1228 (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))))))

(assert (=> d!32011 (= (+!151 (ite c!20074 call!12050 (ite c!20072 call!12052 call!12053)) (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))) lt!58172)))

(declare-fun b!112517 () Bool)

(declare-fun res!55476 () Bool)

(assert (=> b!112517 (=> (not res!55476) (not e!73150))))

(assert (=> b!112517 (= res!55476 (= (getValueByKey!158 (toList!815 lt!58172) (_1!1228 (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))) (Some!163 (_2!1228 (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))))

(declare-fun b!112518 () Bool)

(assert (=> b!112518 (= e!73150 (contains!842 (toList!815 lt!58172) (ite (or c!20074 c!20072) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (= (and d!32011 res!55475) b!112517))

(assert (= (and b!112517 res!55476) b!112518))

(declare-fun m!128509 () Bool)

(assert (=> d!32011 m!128509))

(declare-fun m!128511 () Bool)

(assert (=> d!32011 m!128511))

(declare-fun m!128513 () Bool)

(assert (=> d!32011 m!128513))

(declare-fun m!128515 () Bool)

(assert (=> d!32011 m!128515))

(declare-fun m!128517 () Bool)

(assert (=> b!112517 m!128517))

(declare-fun m!128519 () Bool)

(assert (=> b!112518 m!128519))

(assert (=> bm!12047 d!32011))

(declare-fun d!32013 () Bool)

(declare-fun res!55477 () Bool)

(declare-fun e!73151 () Bool)

(assert (=> d!32013 (=> res!55477 e!73151)))

(assert (=> d!32013 (= res!55477 (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> d!32013 (= (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!73151)))

(declare-fun b!112519 () Bool)

(declare-fun e!73152 () Bool)

(assert (=> b!112519 (= e!73151 e!73152)))

(declare-fun res!55478 () Bool)

(assert (=> b!112519 (=> (not res!55478) (not e!73152))))

(assert (=> b!112519 (= res!55478 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun b!112520 () Bool)

(assert (=> b!112520 (= e!73152 (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!32013 (not res!55477)) b!112519))

(assert (= (and b!112519 res!55478) b!112520))

(assert (=> d!32013 m!128215))

(assert (=> b!112520 m!127849))

(declare-fun m!128521 () Bool)

(assert (=> b!112520 m!128521))

(assert (=> b!112067 d!32013))

(assert (=> b!112048 d!31975))

(declare-fun d!32015 () Bool)

(declare-fun res!55479 () Bool)

(declare-fun e!73153 () Bool)

(assert (=> d!32015 (=> res!55479 e!73153)))

(assert (=> d!32015 (= res!55479 (= (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> d!32015 (= (arrayContainsKey!0 (_keys!4366 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b00000000000000000000000000000000) e!73153)))

(declare-fun b!112521 () Bool)

(declare-fun e!73154 () Bool)

(assert (=> b!112521 (= e!73153 e!73154)))

(declare-fun res!55480 () Bool)

(assert (=> b!112521 (=> (not res!55480) (not e!73154))))

(assert (=> b!112521 (= res!55480 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2344 (_keys!4366 newMap!16))))))

(declare-fun b!112522 () Bool)

(assert (=> b!112522 (= e!73154 (arrayContainsKey!0 (_keys!4366 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!32015 (not res!55479)) b!112521))

(assert (= (and b!112521 res!55480) b!112522))

(assert (=> d!32015 m!128319))

(assert (=> b!112522 m!127849))

(declare-fun m!128523 () Bool)

(assert (=> b!112522 m!128523))

(assert (=> bm!12022 d!32015))

(assert (=> b!112213 d!31967))

(assert (=> b!112200 d!31937))

(assert (=> b!112047 d!31973))

(declare-fun d!32017 () Bool)

(declare-fun e!73156 () Bool)

(assert (=> d!32017 e!73156))

(declare-fun res!55481 () Bool)

(assert (=> d!32017 (=> res!55481 e!73156)))

(declare-fun lt!58176 () Bool)

(assert (=> d!32017 (= res!55481 (not lt!58176))))

(declare-fun lt!58179 () Bool)

(assert (=> d!32017 (= lt!58176 lt!58179)))

(declare-fun lt!58177 () Unit!3499)

(declare-fun e!73155 () Unit!3499)

(assert (=> d!32017 (= lt!58177 e!73155)))

(declare-fun c!20136 () Bool)

(assert (=> d!32017 (= c!20136 lt!58179)))

(assert (=> d!32017 (= lt!58179 (containsKey!162 (toList!815 (+!151 lt!57855 (tuple2!2437 lt!57857 lt!57856))) lt!57852))))

(assert (=> d!32017 (= (contains!841 (+!151 lt!57855 (tuple2!2437 lt!57857 lt!57856)) lt!57852) lt!58176)))

(declare-fun b!112523 () Bool)

(declare-fun lt!58178 () Unit!3499)

(assert (=> b!112523 (= e!73155 lt!58178)))

(assert (=> b!112523 (= lt!58178 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 (+!151 lt!57855 (tuple2!2437 lt!57857 lt!57856))) lt!57852))))

(assert (=> b!112523 (isDefined!112 (getValueByKey!158 (toList!815 (+!151 lt!57855 (tuple2!2437 lt!57857 lt!57856))) lt!57852))))

(declare-fun b!112524 () Bool)

(declare-fun Unit!3517 () Unit!3499)

(assert (=> b!112524 (= e!73155 Unit!3517)))

(declare-fun b!112525 () Bool)

(assert (=> b!112525 (= e!73156 (isDefined!112 (getValueByKey!158 (toList!815 (+!151 lt!57855 (tuple2!2437 lt!57857 lt!57856))) lt!57852)))))

(assert (= (and d!32017 c!20136) b!112523))

(assert (= (and d!32017 (not c!20136)) b!112524))

(assert (= (and d!32017 (not res!55481)) b!112525))

(declare-fun m!128525 () Bool)

(assert (=> d!32017 m!128525))

(declare-fun m!128527 () Bool)

(assert (=> b!112523 m!128527))

(declare-fun m!128529 () Bool)

(assert (=> b!112523 m!128529))

(assert (=> b!112523 m!128529))

(declare-fun m!128531 () Bool)

(assert (=> b!112523 m!128531))

(assert (=> b!112525 m!128529))

(assert (=> b!112525 m!128529))

(assert (=> b!112525 m!128531))

(assert (=> b!112047 d!32017))

(declare-fun d!32019 () Bool)

(assert (=> d!32019 (not (contains!841 (+!151 lt!57855 (tuple2!2437 lt!57857 lt!57856)) lt!57852))))

(declare-fun lt!58182 () Unit!3499)

(declare-fun choose!713 (ListLongMap!1599 (_ BitVec 64) V!3251 (_ BitVec 64)) Unit!3499)

(assert (=> d!32019 (= lt!58182 (choose!713 lt!57855 lt!57857 lt!57856 lt!57852))))

(declare-fun e!73159 () Bool)

(assert (=> d!32019 e!73159))

(declare-fun res!55484 () Bool)

(assert (=> d!32019 (=> (not res!55484) (not e!73159))))

(assert (=> d!32019 (= res!55484 (not (contains!841 lt!57855 lt!57852)))))

(assert (=> d!32019 (= (addStillNotContains!51 lt!57855 lt!57857 lt!57856 lt!57852) lt!58182)))

(declare-fun b!112529 () Bool)

(assert (=> b!112529 (= e!73159 (not (= lt!57857 lt!57852)))))

(assert (= (and d!32019 res!55484) b!112529))

(assert (=> d!32019 m!127973))

(assert (=> d!32019 m!127973))

(assert (=> d!32019 m!127977))

(declare-fun m!128533 () Bool)

(assert (=> d!32019 m!128533))

(declare-fun m!128535 () Bool)

(assert (=> d!32019 m!128535))

(assert (=> b!112047 d!32019))

(declare-fun d!32021 () Bool)

(declare-fun e!73160 () Bool)

(assert (=> d!32021 e!73160))

(declare-fun res!55485 () Bool)

(assert (=> d!32021 (=> (not res!55485) (not e!73160))))

(declare-fun lt!58183 () ListLongMap!1599)

(assert (=> d!32021 (= res!55485 (contains!841 lt!58183 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!58185 () List!1657)

(assert (=> d!32021 (= lt!58183 (ListLongMap!1600 lt!58185))))

(declare-fun lt!58184 () Unit!3499)

(declare-fun lt!58186 () Unit!3499)

(assert (=> d!32021 (= lt!58184 lt!58186)))

(assert (=> d!32021 (= (getValueByKey!158 lt!58185 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!163 (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!32021 (= lt!58186 (lemmaContainsTupThenGetReturnValue!76 lt!58185 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!32021 (= lt!58185 (insertStrictlySorted!78 (toList!815 call!11954) (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!32021 (= (+!151 call!11954 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!58183)))

(declare-fun b!112530 () Bool)

(declare-fun res!55486 () Bool)

(assert (=> b!112530 (=> (not res!55486) (not e!73160))))

(assert (=> b!112530 (= res!55486 (= (getValueByKey!158 (toList!815 lt!58183) (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!163 (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!112531 () Bool)

(assert (=> b!112531 (= e!73160 (contains!842 (toList!815 lt!58183) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1362 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!32021 res!55485) b!112530))

(assert (= (and b!112530 res!55486) b!112531))

(declare-fun m!128537 () Bool)

(assert (=> d!32021 m!128537))

(declare-fun m!128539 () Bool)

(assert (=> d!32021 m!128539))

(declare-fun m!128541 () Bool)

(assert (=> d!32021 m!128541))

(declare-fun m!128543 () Bool)

(assert (=> d!32021 m!128543))

(declare-fun m!128545 () Bool)

(assert (=> b!112530 m!128545))

(declare-fun m!128547 () Bool)

(assert (=> b!112531 m!128547))

(assert (=> b!112047 d!32021))

(declare-fun d!32023 () Bool)

(declare-fun e!73161 () Bool)

(assert (=> d!32023 e!73161))

(declare-fun res!55487 () Bool)

(assert (=> d!32023 (=> (not res!55487) (not e!73161))))

(declare-fun lt!58187 () ListLongMap!1599)

(assert (=> d!32023 (= res!55487 (contains!841 lt!58187 (_1!1228 (tuple2!2437 lt!57857 lt!57856))))))

(declare-fun lt!58189 () List!1657)

(assert (=> d!32023 (= lt!58187 (ListLongMap!1600 lt!58189))))

(declare-fun lt!58188 () Unit!3499)

(declare-fun lt!58190 () Unit!3499)

(assert (=> d!32023 (= lt!58188 lt!58190)))

(assert (=> d!32023 (= (getValueByKey!158 lt!58189 (_1!1228 (tuple2!2437 lt!57857 lt!57856))) (Some!163 (_2!1228 (tuple2!2437 lt!57857 lt!57856))))))

(assert (=> d!32023 (= lt!58190 (lemmaContainsTupThenGetReturnValue!76 lt!58189 (_1!1228 (tuple2!2437 lt!57857 lt!57856)) (_2!1228 (tuple2!2437 lt!57857 lt!57856))))))

(assert (=> d!32023 (= lt!58189 (insertStrictlySorted!78 (toList!815 lt!57855) (_1!1228 (tuple2!2437 lt!57857 lt!57856)) (_2!1228 (tuple2!2437 lt!57857 lt!57856))))))

(assert (=> d!32023 (= (+!151 lt!57855 (tuple2!2437 lt!57857 lt!57856)) lt!58187)))

(declare-fun b!112532 () Bool)

(declare-fun res!55488 () Bool)

(assert (=> b!112532 (=> (not res!55488) (not e!73161))))

(assert (=> b!112532 (= res!55488 (= (getValueByKey!158 (toList!815 lt!58187) (_1!1228 (tuple2!2437 lt!57857 lt!57856))) (Some!163 (_2!1228 (tuple2!2437 lt!57857 lt!57856)))))))

(declare-fun b!112533 () Bool)

(assert (=> b!112533 (= e!73161 (contains!842 (toList!815 lt!58187) (tuple2!2437 lt!57857 lt!57856)))))

(assert (= (and d!32023 res!55487) b!112532))

(assert (= (and b!112532 res!55488) b!112533))

(declare-fun m!128549 () Bool)

(assert (=> d!32023 m!128549))

(declare-fun m!128551 () Bool)

(assert (=> d!32023 m!128551))

(declare-fun m!128553 () Bool)

(assert (=> d!32023 m!128553))

(declare-fun m!128555 () Bool)

(assert (=> d!32023 m!128555))

(declare-fun m!128557 () Bool)

(assert (=> b!112532 m!128557))

(declare-fun m!128559 () Bool)

(assert (=> b!112533 m!128559))

(assert (=> b!112047 d!32023))

(declare-fun d!32025 () Bool)

(declare-fun e!73162 () Bool)

(assert (=> d!32025 e!73162))

(declare-fun res!55489 () Bool)

(assert (=> d!32025 (=> (not res!55489) (not e!73162))))

(declare-fun lt!58191 () ListLongMap!1599)

(assert (=> d!32025 (= res!55489 (contains!841 lt!58191 (_1!1228 (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))))

(declare-fun lt!58193 () List!1657)

(assert (=> d!32025 (= lt!58191 (ListLongMap!1600 lt!58193))))

(declare-fun lt!58192 () Unit!3499)

(declare-fun lt!58194 () Unit!3499)

(assert (=> d!32025 (= lt!58192 lt!58194)))

(assert (=> d!32025 (= (getValueByKey!158 lt!58193 (_1!1228 (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))) (Some!163 (_2!1228 (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))))

(assert (=> d!32025 (= lt!58194 (lemmaContainsTupThenGetReturnValue!76 lt!58193 (_1!1228 (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))) (_2!1228 (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))))

(assert (=> d!32025 (= lt!58193 (insertStrictlySorted!78 (toList!815 e!72964) (_1!1228 (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))) (_2!1228 (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))))

(assert (=> d!32025 (= (+!151 e!72964 (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))) lt!58191)))

(declare-fun b!112534 () Bool)

(declare-fun res!55490 () Bool)

(assert (=> b!112534 (=> (not res!55490) (not e!73162))))

(assert (=> b!112534 (= res!55490 (= (getValueByKey!158 (toList!815 lt!58191) (_1!1228 (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))) (Some!163 (_2!1228 (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))))

(declare-fun b!112535 () Bool)

(assert (=> b!112535 (= e!73162 (contains!842 (toList!815 lt!58191) (ite c!20052 (ite c!20044 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 lt!57797) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 lt!57797)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(assert (= (and d!32025 res!55489) b!112534))

(assert (= (and b!112534 res!55490) b!112535))

(declare-fun m!128561 () Bool)

(assert (=> d!32025 m!128561))

(declare-fun m!128563 () Bool)

(assert (=> d!32025 m!128563))

(declare-fun m!128565 () Bool)

(assert (=> d!32025 m!128565))

(declare-fun m!128567 () Bool)

(assert (=> d!32025 m!128567))

(declare-fun m!128569 () Bool)

(assert (=> b!112534 m!128569))

(declare-fun m!128571 () Bool)

(assert (=> b!112535 m!128571))

(assert (=> bm!12014 d!32025))

(declare-fun d!32027 () Bool)

(declare-fun lt!58197 () Bool)

(declare-fun content!115 (List!1656) (InoxSet (_ BitVec 64)))

(assert (=> d!32027 (= lt!58197 (select (content!115 Nil!1653) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun e!73168 () Bool)

(assert (=> d!32027 (= lt!58197 e!73168)))

(declare-fun res!55496 () Bool)

(assert (=> d!32027 (=> (not res!55496) (not e!73168))))

(assert (=> d!32027 (= res!55496 ((_ is Cons!1652) Nil!1653))))

(assert (=> d!32027 (= (contains!843 Nil!1653 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) lt!58197)))

(declare-fun b!112540 () Bool)

(declare-fun e!73167 () Bool)

(assert (=> b!112540 (= e!73168 e!73167)))

(declare-fun res!55495 () Bool)

(assert (=> b!112540 (=> res!55495 e!73167)))

(assert (=> b!112540 (= res!55495 (= (h!2252 Nil!1653) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun b!112541 () Bool)

(assert (=> b!112541 (= e!73167 (contains!843 (t!5826 Nil!1653) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (= (and d!32027 res!55496) b!112540))

(assert (= (and b!112540 (not res!55495)) b!112541))

(declare-fun m!128573 () Bool)

(assert (=> d!32027 m!128573))

(assert (=> d!32027 m!127849))

(declare-fun m!128575 () Bool)

(assert (=> d!32027 m!128575))

(assert (=> b!112541 m!127849))

(declare-fun m!128577 () Bool)

(assert (=> b!112541 m!128577))

(assert (=> b!112086 d!32027))

(declare-fun b!112558 () Bool)

(declare-fun lt!58203 () SeekEntryResult!272)

(assert (=> b!112558 (and (bvsge (index!3239 lt!58203) #b00000000000000000000000000000000) (bvslt (index!3239 lt!58203) (size!2344 (_keys!4366 newMap!16))))))

(declare-fun res!55505 () Bool)

(assert (=> b!112558 (= res!55505 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3239 lt!58203)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!73180 () Bool)

(assert (=> b!112558 (=> (not res!55505) (not e!73180))))

(declare-fun b!112559 () Bool)

(declare-fun e!73177 () Bool)

(declare-fun e!73178 () Bool)

(assert (=> b!112559 (= e!73177 e!73178)))

(declare-fun c!20141 () Bool)

(assert (=> b!112559 (= c!20141 ((_ is MissingVacant!272) lt!58203))))

(declare-fun call!12088 () Bool)

(declare-fun bm!12084 () Bool)

(assert (=> bm!12084 (= call!12088 (arrayContainsKey!0 (_keys!4366 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!112560 () Bool)

(declare-fun e!73179 () Bool)

(assert (=> b!112560 (= e!73179 (not call!12088))))

(declare-fun b!112561 () Bool)

(assert (=> b!112561 (= e!73178 ((_ is Undefined!272) lt!58203))))

(declare-fun b!112562 () Bool)

(assert (=> b!112562 (= e!73177 e!73180)))

(declare-fun res!55507 () Bool)

(declare-fun call!12087 () Bool)

(assert (=> b!112562 (= res!55507 call!12087)))

(assert (=> b!112562 (=> (not res!55507) (not e!73180))))

(declare-fun d!32029 () Bool)

(assert (=> d!32029 e!73177))

(declare-fun c!20142 () Bool)

(assert (=> d!32029 (= c!20142 ((_ is MissingZero!272) lt!58203))))

(assert (=> d!32029 (= lt!58203 (seekEntryOrOpen!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (_keys!4366 newMap!16) (mask!6826 newMap!16)))))

(declare-fun lt!58202 () Unit!3499)

(declare-fun choose!714 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 64) Int) Unit!3499)

(assert (=> d!32029 (= lt!58202 (choose!714 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (defaultEntry!2648 newMap!16)))))

(assert (=> d!32029 (validMask!0 (mask!6826 newMap!16))))

(assert (=> d!32029 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (defaultEntry!2648 newMap!16)) lt!58202)))

(declare-fun b!112563 () Bool)

(declare-fun res!55506 () Bool)

(assert (=> b!112563 (=> (not res!55506) (not e!73179))))

(assert (=> b!112563 (= res!55506 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3242 lt!58203)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!112563 (and (bvsge (index!3242 lt!58203) #b00000000000000000000000000000000) (bvslt (index!3242 lt!58203) (size!2344 (_keys!4366 newMap!16))))))

(declare-fun bm!12085 () Bool)

(assert (=> bm!12085 (= call!12087 (inRange!0 (ite c!20142 (index!3239 lt!58203) (index!3242 lt!58203)) (mask!6826 newMap!16)))))

(declare-fun b!112564 () Bool)

(assert (=> b!112564 (= e!73180 (not call!12088))))

(declare-fun b!112565 () Bool)

(declare-fun res!55508 () Bool)

(assert (=> b!112565 (=> (not res!55508) (not e!73179))))

(assert (=> b!112565 (= res!55508 call!12087)))

(assert (=> b!112565 (= e!73178 e!73179)))

(assert (= (and d!32029 c!20142) b!112562))

(assert (= (and d!32029 (not c!20142)) b!112559))

(assert (= (and b!112562 res!55507) b!112558))

(assert (= (and b!112558 res!55505) b!112564))

(assert (= (and b!112559 c!20141) b!112565))

(assert (= (and b!112559 (not c!20141)) b!112561))

(assert (= (and b!112565 res!55508) b!112563))

(assert (= (and b!112563 res!55506) b!112560))

(assert (= (or b!112562 b!112565) bm!12085))

(assert (= (or b!112564 b!112560) bm!12084))

(declare-fun m!128579 () Bool)

(assert (=> bm!12085 m!128579))

(assert (=> d!32029 m!127849))

(assert (=> d!32029 m!128103))

(assert (=> d!32029 m!127849))

(declare-fun m!128581 () Bool)

(assert (=> d!32029 m!128581))

(assert (=> d!32029 m!128241))

(declare-fun m!128583 () Bool)

(assert (=> b!112558 m!128583))

(assert (=> bm!12084 m!127849))

(assert (=> bm!12084 m!128105))

(declare-fun m!128585 () Bool)

(assert (=> b!112563 m!128585))

(assert (=> bm!12006 d!32029))

(declare-fun d!32031 () Bool)

(declare-fun e!73183 () Bool)

(assert (=> d!32031 e!73183))

(declare-fun c!20145 () Bool)

(assert (=> d!32031 (= c!20145 (and (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!32031 true))

(declare-fun _$29!150 () Unit!3499)

(assert (=> d!32031 (= (choose!706 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (_values!2631 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992))) (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) (minValue!2517 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992)))) _$29!150)))

(declare-fun b!112570 () Bool)

(assert (=> b!112570 (= e!73183 (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!112571 () Bool)

(assert (=> b!112571 (= e!73183 (ite (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2441 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!32031 c!20145) b!112570))

(assert (= (and d!32031 (not c!20145)) b!112571))

(assert (=> b!112570 m!127849))

(assert (=> b!112570 m!127877))

(assert (=> d!31909 d!32031))

(assert (=> d!31909 d!31901))

(declare-fun d!32033 () Bool)

(assert (=> d!32033 (= (+!151 (+!151 lt!57790 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (+!151 (+!151 lt!57790 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))

(assert (=> d!32033 true))

(declare-fun _$28!170 () Unit!3499)

(assert (=> d!32033 (= (choose!705 lt!57790 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))) _$28!170)))

(declare-fun bs!4629 () Bool)

(assert (= bs!4629 d!32033))

(assert (=> bs!4629 m!128017))

(assert (=> bs!4629 m!128017))

(assert (=> bs!4629 m!128019))

(assert (=> bs!4629 m!128015))

(assert (=> bs!4629 m!128015))

(assert (=> bs!4629 m!128023))

(assert (=> d!31895 d!32033))

(declare-fun d!32035 () Bool)

(declare-fun e!73184 () Bool)

(assert (=> d!32035 e!73184))

(declare-fun res!55509 () Bool)

(assert (=> d!32035 (=> (not res!55509) (not e!73184))))

(declare-fun lt!58204 () ListLongMap!1599)

(assert (=> d!32035 (= res!55509 (contains!841 lt!58204 (_1!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(declare-fun lt!58206 () List!1657)

(assert (=> d!32035 (= lt!58204 (ListLongMap!1600 lt!58206))))

(declare-fun lt!58205 () Unit!3499)

(declare-fun lt!58207 () Unit!3499)

(assert (=> d!32035 (= lt!58205 lt!58207)))

(assert (=> d!32035 (= (getValueByKey!158 lt!58206 (_1!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32035 (= lt!58207 (lemmaContainsTupThenGetReturnValue!76 lt!58206 (_1!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32035 (= lt!58206 (insertStrictlySorted!78 (toList!815 (+!151 lt!57790 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))) (_1!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32035 (= (+!151 (+!151 lt!57790 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58204)))

(declare-fun b!112572 () Bool)

(declare-fun res!55510 () Bool)

(assert (=> b!112572 (=> (not res!55510) (not e!73184))))

(assert (=> b!112572 (= res!55510 (= (getValueByKey!158 (toList!815 lt!58204) (_1!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))))))))

(declare-fun b!112573 () Bool)

(assert (=> b!112573 (= e!73184 (contains!842 (toList!815 lt!58204) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))))))

(assert (= (and d!32035 res!55509) b!112572))

(assert (= (and b!112572 res!55510) b!112573))

(declare-fun m!128587 () Bool)

(assert (=> d!32035 m!128587))

(declare-fun m!128589 () Bool)

(assert (=> d!32035 m!128589))

(declare-fun m!128591 () Bool)

(assert (=> d!32035 m!128591))

(declare-fun m!128593 () Bool)

(assert (=> d!32035 m!128593))

(declare-fun m!128595 () Bool)

(assert (=> b!112572 m!128595))

(declare-fun m!128597 () Bool)

(assert (=> b!112573 m!128597))

(assert (=> d!31895 d!32035))

(declare-fun d!32037 () Bool)

(declare-fun e!73185 () Bool)

(assert (=> d!32037 e!73185))

(declare-fun res!55511 () Bool)

(assert (=> d!32037 (=> (not res!55511) (not e!73185))))

(declare-fun lt!58208 () ListLongMap!1599)

(assert (=> d!32037 (= res!55511 (contains!841 lt!58208 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(declare-fun lt!58210 () List!1657)

(assert (=> d!32037 (= lt!58208 (ListLongMap!1600 lt!58210))))

(declare-fun lt!58209 () Unit!3499)

(declare-fun lt!58211 () Unit!3499)

(assert (=> d!32037 (= lt!58209 lt!58211)))

(assert (=> d!32037 (= (getValueByKey!158 lt!58210 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))) (Some!163 (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(assert (=> d!32037 (= lt!58211 (lemmaContainsTupThenGetReturnValue!76 lt!58210 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(assert (=> d!32037 (= lt!58210 (insertStrictlySorted!78 (toList!815 (+!151 lt!57790 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(assert (=> d!32037 (= (+!151 (+!151 lt!57790 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) lt!58208)))

(declare-fun b!112574 () Bool)

(declare-fun res!55512 () Bool)

(assert (=> b!112574 (=> (not res!55512) (not e!73185))))

(assert (=> b!112574 (= res!55512 (= (getValueByKey!158 (toList!815 lt!58208) (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))) (Some!163 (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))))

(declare-fun b!112575 () Bool)

(assert (=> b!112575 (= e!73185 (contains!842 (toList!815 lt!58208) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))

(assert (= (and d!32037 res!55511) b!112574))

(assert (= (and b!112574 res!55512) b!112575))

(declare-fun m!128599 () Bool)

(assert (=> d!32037 m!128599))

(declare-fun m!128601 () Bool)

(assert (=> d!32037 m!128601))

(declare-fun m!128603 () Bool)

(assert (=> d!32037 m!128603))

(declare-fun m!128605 () Bool)

(assert (=> d!32037 m!128605))

(declare-fun m!128607 () Bool)

(assert (=> b!112574 m!128607))

(declare-fun m!128609 () Bool)

(assert (=> b!112575 m!128609))

(assert (=> d!31895 d!32037))

(declare-fun d!32039 () Bool)

(declare-fun e!73186 () Bool)

(assert (=> d!32039 e!73186))

(declare-fun res!55513 () Bool)

(assert (=> d!32039 (=> (not res!55513) (not e!73186))))

(declare-fun lt!58212 () ListLongMap!1599)

(assert (=> d!32039 (= res!55513 (contains!841 lt!58212 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(declare-fun lt!58214 () List!1657)

(assert (=> d!32039 (= lt!58212 (ListLongMap!1600 lt!58214))))

(declare-fun lt!58213 () Unit!3499)

(declare-fun lt!58215 () Unit!3499)

(assert (=> d!32039 (= lt!58213 lt!58215)))

(assert (=> d!32039 (= (getValueByKey!158 lt!58214 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))) (Some!163 (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(assert (=> d!32039 (= lt!58215 (lemmaContainsTupThenGetReturnValue!76 lt!58214 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(assert (=> d!32039 (= lt!58214 (insertStrictlySorted!78 (toList!815 lt!57790) (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(assert (=> d!32039 (= (+!151 lt!57790 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) lt!58212)))

(declare-fun b!112576 () Bool)

(declare-fun res!55514 () Bool)

(assert (=> b!112576 (=> (not res!55514) (not e!73186))))

(assert (=> b!112576 (= res!55514 (= (getValueByKey!158 (toList!815 lt!58212) (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))) (Some!163 (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))))

(declare-fun b!112577 () Bool)

(assert (=> b!112577 (= e!73186 (contains!842 (toList!815 lt!58212) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))

(assert (= (and d!32039 res!55513) b!112576))

(assert (= (and b!112576 res!55514) b!112577))

(declare-fun m!128611 () Bool)

(assert (=> d!32039 m!128611))

(declare-fun m!128613 () Bool)

(assert (=> d!32039 m!128613))

(declare-fun m!128615 () Bool)

(assert (=> d!32039 m!128615))

(declare-fun m!128617 () Bool)

(assert (=> d!32039 m!128617))

(declare-fun m!128619 () Bool)

(assert (=> b!112576 m!128619))

(declare-fun m!128621 () Bool)

(assert (=> b!112577 m!128621))

(assert (=> d!31895 d!32039))

(declare-fun d!32041 () Bool)

(declare-fun e!73187 () Bool)

(assert (=> d!32041 e!73187))

(declare-fun res!55515 () Bool)

(assert (=> d!32041 (=> (not res!55515) (not e!73187))))

(declare-fun lt!58216 () ListLongMap!1599)

(assert (=> d!32041 (= res!55515 (contains!841 lt!58216 (_1!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(declare-fun lt!58218 () List!1657)

(assert (=> d!32041 (= lt!58216 (ListLongMap!1600 lt!58218))))

(declare-fun lt!58217 () Unit!3499)

(declare-fun lt!58219 () Unit!3499)

(assert (=> d!32041 (= lt!58217 lt!58219)))

(assert (=> d!32041 (= (getValueByKey!158 lt!58218 (_1!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32041 (= lt!58219 (lemmaContainsTupThenGetReturnValue!76 lt!58218 (_1!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32041 (= lt!58218 (insertStrictlySorted!78 (toList!815 lt!57790) (_1!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32041 (= (+!151 lt!57790 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58216)))

(declare-fun b!112578 () Bool)

(declare-fun res!55516 () Bool)

(assert (=> b!112578 (=> (not res!55516) (not e!73187))))

(assert (=> b!112578 (= res!55516 (= (getValueByKey!158 (toList!815 lt!58216) (_1!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))))))))

(declare-fun b!112579 () Bool)

(assert (=> b!112579 (= e!73187 (contains!842 (toList!815 lt!58216) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))))))

(assert (= (and d!32041 res!55515) b!112578))

(assert (= (and b!112578 res!55516) b!112579))

(declare-fun m!128623 () Bool)

(assert (=> d!32041 m!128623))

(declare-fun m!128625 () Bool)

(assert (=> d!32041 m!128625))

(declare-fun m!128627 () Bool)

(assert (=> d!32041 m!128627))

(declare-fun m!128629 () Bool)

(assert (=> d!32041 m!128629))

(declare-fun m!128631 () Bool)

(assert (=> b!112578 m!128631))

(declare-fun m!128633 () Bool)

(assert (=> b!112579 m!128633))

(assert (=> d!31895 d!32041))

(declare-fun d!32043 () Bool)

(declare-fun e!73189 () Bool)

(assert (=> d!32043 e!73189))

(declare-fun res!55517 () Bool)

(assert (=> d!32043 (=> res!55517 e!73189)))

(declare-fun lt!58220 () Bool)

(assert (=> d!32043 (= res!55517 (not lt!58220))))

(declare-fun lt!58223 () Bool)

(assert (=> d!32043 (= lt!58220 lt!58223)))

(declare-fun lt!58221 () Unit!3499)

(declare-fun e!73188 () Unit!3499)

(assert (=> d!32043 (= lt!58221 e!73188)))

(declare-fun c!20146 () Bool)

(assert (=> d!32043 (= c!20146 lt!58223)))

(assert (=> d!32043 (= lt!58223 (containsKey!162 (toList!815 lt!57877) (_1!1228 lt!57795)))))

(assert (=> d!32043 (= (contains!841 lt!57877 (_1!1228 lt!57795)) lt!58220)))

(declare-fun b!112580 () Bool)

(declare-fun lt!58222 () Unit!3499)

(assert (=> b!112580 (= e!73188 lt!58222)))

(assert (=> b!112580 (= lt!58222 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!57877) (_1!1228 lt!57795)))))

(assert (=> b!112580 (isDefined!112 (getValueByKey!158 (toList!815 lt!57877) (_1!1228 lt!57795)))))

(declare-fun b!112581 () Bool)

(declare-fun Unit!3518 () Unit!3499)

(assert (=> b!112581 (= e!73188 Unit!3518)))

(declare-fun b!112582 () Bool)

(assert (=> b!112582 (= e!73189 (isDefined!112 (getValueByKey!158 (toList!815 lt!57877) (_1!1228 lt!57795))))))

(assert (= (and d!32043 c!20146) b!112580))

(assert (= (and d!32043 (not c!20146)) b!112581))

(assert (= (and d!32043 (not res!55517)) b!112582))

(declare-fun m!128635 () Bool)

(assert (=> d!32043 m!128635))

(declare-fun m!128637 () Bool)

(assert (=> b!112580 m!128637))

(assert (=> b!112580 m!128033))

(assert (=> b!112580 m!128033))

(declare-fun m!128639 () Bool)

(assert (=> b!112580 m!128639))

(assert (=> b!112582 m!128033))

(assert (=> b!112582 m!128033))

(assert (=> b!112582 m!128639))

(assert (=> d!31897 d!32043))

(declare-fun b!112583 () Bool)

(declare-fun e!73190 () Option!164)

(assert (=> b!112583 (= e!73190 (Some!163 (_2!1228 (h!2253 lt!57879))))))

(declare-fun b!112586 () Bool)

(declare-fun e!73191 () Option!164)

(assert (=> b!112586 (= e!73191 None!162)))

(declare-fun d!32045 () Bool)

(declare-fun c!20147 () Bool)

(assert (=> d!32045 (= c!20147 (and ((_ is Cons!1653) lt!57879) (= (_1!1228 (h!2253 lt!57879)) (_1!1228 lt!57795))))))

(assert (=> d!32045 (= (getValueByKey!158 lt!57879 (_1!1228 lt!57795)) e!73190)))

(declare-fun b!112584 () Bool)

(assert (=> b!112584 (= e!73190 e!73191)))

(declare-fun c!20148 () Bool)

(assert (=> b!112584 (= c!20148 (and ((_ is Cons!1653) lt!57879) (not (= (_1!1228 (h!2253 lt!57879)) (_1!1228 lt!57795)))))))

(declare-fun b!112585 () Bool)

(assert (=> b!112585 (= e!73191 (getValueByKey!158 (t!5827 lt!57879) (_1!1228 lt!57795)))))

(assert (= (and d!32045 c!20147) b!112583))

(assert (= (and d!32045 (not c!20147)) b!112584))

(assert (= (and b!112584 c!20148) b!112585))

(assert (= (and b!112584 (not c!20148)) b!112586))

(declare-fun m!128641 () Bool)

(assert (=> b!112585 m!128641))

(assert (=> d!31897 d!32045))

(declare-fun d!32047 () Bool)

(assert (=> d!32047 (= (getValueByKey!158 lt!57879 (_1!1228 lt!57795)) (Some!163 (_2!1228 lt!57795)))))

(declare-fun lt!58224 () Unit!3499)

(assert (=> d!32047 (= lt!58224 (choose!707 lt!57879 (_1!1228 lt!57795) (_2!1228 lt!57795)))))

(declare-fun e!73192 () Bool)

(assert (=> d!32047 e!73192))

(declare-fun res!55518 () Bool)

(assert (=> d!32047 (=> (not res!55518) (not e!73192))))

(assert (=> d!32047 (= res!55518 (isStrictlySorted!307 lt!57879))))

(assert (=> d!32047 (= (lemmaContainsTupThenGetReturnValue!76 lt!57879 (_1!1228 lt!57795) (_2!1228 lt!57795)) lt!58224)))

(declare-fun b!112587 () Bool)

(declare-fun res!55519 () Bool)

(assert (=> b!112587 (=> (not res!55519) (not e!73192))))

(assert (=> b!112587 (= res!55519 (containsKey!162 lt!57879 (_1!1228 lt!57795)))))

(declare-fun b!112588 () Bool)

(assert (=> b!112588 (= e!73192 (contains!842 lt!57879 (tuple2!2437 (_1!1228 lt!57795) (_2!1228 lt!57795))))))

(assert (= (and d!32047 res!55518) b!112587))

(assert (= (and b!112587 res!55519) b!112588))

(assert (=> d!32047 m!128027))

(declare-fun m!128643 () Bool)

(assert (=> d!32047 m!128643))

(declare-fun m!128645 () Bool)

(assert (=> d!32047 m!128645))

(declare-fun m!128647 () Bool)

(assert (=> b!112587 m!128647))

(declare-fun m!128649 () Bool)

(assert (=> b!112588 m!128649))

(assert (=> d!31897 d!32047))

(declare-fun bm!12086 () Bool)

(declare-fun call!12091 () List!1657)

(declare-fun call!12090 () List!1657)

(assert (=> bm!12086 (= call!12091 call!12090)))

(declare-fun e!73193 () List!1657)

(declare-fun c!20150 () Bool)

(declare-fun bm!12087 () Bool)

(assert (=> bm!12087 (= call!12090 ($colon$colon!83 e!73193 (ite c!20150 (h!2253 (toList!815 lt!57790)) (tuple2!2437 (_1!1228 lt!57795) (_2!1228 lt!57795)))))))

(declare-fun c!20152 () Bool)

(assert (=> bm!12087 (= c!20152 c!20150)))

(declare-fun b!112589 () Bool)

(declare-fun c!20151 () Bool)

(assert (=> b!112589 (= c!20151 (and ((_ is Cons!1653) (toList!815 lt!57790)) (bvsgt (_1!1228 (h!2253 (toList!815 lt!57790))) (_1!1228 lt!57795))))))

(declare-fun e!73197 () List!1657)

(declare-fun e!73194 () List!1657)

(assert (=> b!112589 (= e!73197 e!73194)))

(declare-fun b!112590 () Bool)

(declare-fun call!12089 () List!1657)

(assert (=> b!112590 (= e!73194 call!12089)))

(declare-fun d!32049 () Bool)

(declare-fun e!73196 () Bool)

(assert (=> d!32049 e!73196))

(declare-fun res!55520 () Bool)

(assert (=> d!32049 (=> (not res!55520) (not e!73196))))

(declare-fun lt!58225 () List!1657)

(assert (=> d!32049 (= res!55520 (isStrictlySorted!307 lt!58225))))

(declare-fun e!73195 () List!1657)

(assert (=> d!32049 (= lt!58225 e!73195)))

(assert (=> d!32049 (= c!20150 (and ((_ is Cons!1653) (toList!815 lt!57790)) (bvslt (_1!1228 (h!2253 (toList!815 lt!57790))) (_1!1228 lt!57795))))))

(assert (=> d!32049 (isStrictlySorted!307 (toList!815 lt!57790))))

(assert (=> d!32049 (= (insertStrictlySorted!78 (toList!815 lt!57790) (_1!1228 lt!57795) (_2!1228 lt!57795)) lt!58225)))

(declare-fun b!112591 () Bool)

(assert (=> b!112591 (= e!73194 call!12089)))

(declare-fun b!112592 () Bool)

(assert (=> b!112592 (= e!73195 call!12090)))

(declare-fun b!112593 () Bool)

(assert (=> b!112593 (= e!73196 (contains!842 lt!58225 (tuple2!2437 (_1!1228 lt!57795) (_2!1228 lt!57795))))))

(declare-fun bm!12088 () Bool)

(assert (=> bm!12088 (= call!12089 call!12091)))

(declare-fun b!112594 () Bool)

(assert (=> b!112594 (= e!73195 e!73197)))

(declare-fun c!20149 () Bool)

(assert (=> b!112594 (= c!20149 (and ((_ is Cons!1653) (toList!815 lt!57790)) (= (_1!1228 (h!2253 (toList!815 lt!57790))) (_1!1228 lt!57795))))))

(declare-fun b!112595 () Bool)

(assert (=> b!112595 (= e!73193 (insertStrictlySorted!78 (t!5827 (toList!815 lt!57790)) (_1!1228 lt!57795) (_2!1228 lt!57795)))))

(declare-fun b!112596 () Bool)

(declare-fun res!55521 () Bool)

(assert (=> b!112596 (=> (not res!55521) (not e!73196))))

(assert (=> b!112596 (= res!55521 (containsKey!162 lt!58225 (_1!1228 lt!57795)))))

(declare-fun b!112597 () Bool)

(assert (=> b!112597 (= e!73193 (ite c!20149 (t!5827 (toList!815 lt!57790)) (ite c!20151 (Cons!1653 (h!2253 (toList!815 lt!57790)) (t!5827 (toList!815 lt!57790))) Nil!1654)))))

(declare-fun b!112598 () Bool)

(assert (=> b!112598 (= e!73197 call!12091)))

(assert (= (and d!32049 c!20150) b!112592))

(assert (= (and d!32049 (not c!20150)) b!112594))

(assert (= (and b!112594 c!20149) b!112598))

(assert (= (and b!112594 (not c!20149)) b!112589))

(assert (= (and b!112589 c!20151) b!112590))

(assert (= (and b!112589 (not c!20151)) b!112591))

(assert (= (or b!112590 b!112591) bm!12088))

(assert (= (or b!112598 bm!12088) bm!12086))

(assert (= (or b!112592 bm!12086) bm!12087))

(assert (= (and bm!12087 c!20152) b!112595))

(assert (= (and bm!12087 (not c!20152)) b!112597))

(assert (= (and d!32049 res!55520) b!112596))

(assert (= (and b!112596 res!55521) b!112593))

(declare-fun m!128651 () Bool)

(assert (=> bm!12087 m!128651))

(declare-fun m!128653 () Bool)

(assert (=> b!112596 m!128653))

(declare-fun m!128655 () Bool)

(assert (=> b!112593 m!128655))

(declare-fun m!128657 () Bool)

(assert (=> d!32049 m!128657))

(assert (=> d!32049 m!128277))

(declare-fun m!128659 () Bool)

(assert (=> b!112595 m!128659))

(assert (=> d!31897 d!32049))

(declare-fun d!32051 () Bool)

(declare-fun e!73200 () Bool)

(assert (=> d!32051 e!73200))

(declare-fun res!55526 () Bool)

(assert (=> d!32051 (=> (not res!55526) (not e!73200))))

(declare-fun lt!58231 () SeekEntryResult!272)

(assert (=> d!32051 (= res!55526 ((_ is Found!272) lt!58231))))

(assert (=> d!32051 (= lt!58231 (seekEntryOrOpen!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (_keys!4366 newMap!16) (mask!6826 newMap!16)))))

(declare-fun lt!58230 () Unit!3499)

(declare-fun choose!715 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 64) Int) Unit!3499)

(assert (=> d!32051 (= lt!58230 (choose!715 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (defaultEntry!2648 newMap!16)))))

(assert (=> d!32051 (validMask!0 (mask!6826 newMap!16))))

(assert (=> d!32051 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (defaultEntry!2648 newMap!16)) lt!58230)))

(declare-fun b!112603 () Bool)

(declare-fun res!55527 () Bool)

(assert (=> b!112603 (=> (not res!55527) (not e!73200))))

(assert (=> b!112603 (= res!55527 (inRange!0 (index!3240 lt!58231) (mask!6826 newMap!16)))))

(declare-fun b!112604 () Bool)

(assert (=> b!112604 (= e!73200 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!58231)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> b!112604 (and (bvsge (index!3240 lt!58231) #b00000000000000000000000000000000) (bvslt (index!3240 lt!58231) (size!2344 (_keys!4366 newMap!16))))))

(assert (= (and d!32051 res!55526) b!112603))

(assert (= (and b!112603 res!55527) b!112604))

(assert (=> d!32051 m!127849))

(assert (=> d!32051 m!128103))

(assert (=> d!32051 m!127849))

(declare-fun m!128661 () Bool)

(assert (=> d!32051 m!128661))

(assert (=> d!32051 m!128241))

(declare-fun m!128663 () Bool)

(assert (=> b!112603 m!128663))

(declare-fun m!128665 () Bool)

(assert (=> b!112604 m!128665))

(assert (=> bm!12017 d!32051))

(declare-fun d!32053 () Bool)

(declare-fun e!73201 () Bool)

(assert (=> d!32053 e!73201))

(declare-fun res!55528 () Bool)

(assert (=> d!32053 (=> (not res!55528) (not e!73201))))

(declare-fun lt!58232 () ListLongMap!1599)

(assert (=> d!32053 (= res!55528 (contains!841 lt!58232 (_1!1228 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(declare-fun lt!58234 () List!1657)

(assert (=> d!32053 (= lt!58232 (ListLongMap!1600 lt!58234))))

(declare-fun lt!58233 () Unit!3499)

(declare-fun lt!58235 () Unit!3499)

(assert (=> d!32053 (= lt!58233 lt!58235)))

(assert (=> d!32053 (= (getValueByKey!158 lt!58234 (_1!1228 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32053 (= lt!58235 (lemmaContainsTupThenGetReturnValue!76 lt!58234 (_1!1228 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32053 (= lt!58234 (insertStrictlySorted!78 (toList!815 call!12051) (_1!1228 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32053 (= (+!151 call!12051 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58232)))

(declare-fun b!112605 () Bool)

(declare-fun res!55529 () Bool)

(assert (=> b!112605 (=> (not res!55529) (not e!73201))))

(assert (=> b!112605 (= res!55529 (= (getValueByKey!158 (toList!815 lt!58232) (_1!1228 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))))))

(declare-fun b!112606 () Bool)

(assert (=> b!112606 (= e!73201 (contains!842 (toList!815 lt!58232) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))))

(assert (= (and d!32053 res!55528) b!112605))

(assert (= (and b!112605 res!55529) b!112606))

(declare-fun m!128667 () Bool)

(assert (=> d!32053 m!128667))

(declare-fun m!128669 () Bool)

(assert (=> d!32053 m!128669))

(declare-fun m!128671 () Bool)

(assert (=> d!32053 m!128671))

(declare-fun m!128673 () Bool)

(assert (=> d!32053 m!128673))

(declare-fun m!128675 () Bool)

(assert (=> b!112605 m!128675))

(declare-fun m!128677 () Bool)

(assert (=> b!112606 m!128677))

(assert (=> b!112303 d!32053))

(declare-fun d!32055 () Bool)

(assert (=> d!32055 (= (get!1364 (select (arr!2087 (_values!2631 (v!2945 (underlying!373 thiss!992)))) from!355) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!394 (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!112241 d!32055))

(assert (=> b!112109 d!32007))

(assert (=> b!112109 d!32009))

(declare-fun d!32057 () Bool)

(assert (=> d!32057 (= (apply!101 lt!58057 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1365 (getValueByKey!158 (toList!815 lt!58057) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!4630 () Bool)

(assert (= bs!4630 d!32057))

(assert (=> bs!4630 m!128449))

(assert (=> bs!4630 m!128449))

(declare-fun m!128679 () Bool)

(assert (=> bs!4630 m!128679))

(assert (=> b!112301 d!32057))

(assert (=> d!31929 d!31967))

(declare-fun d!32059 () Bool)

(declare-fun e!73203 () Bool)

(assert (=> d!32059 e!73203))

(declare-fun res!55530 () Bool)

(assert (=> d!32059 (=> res!55530 e!73203)))

(declare-fun lt!58236 () Bool)

(assert (=> d!32059 (= res!55530 (not lt!58236))))

(declare-fun lt!58239 () Bool)

(assert (=> d!32059 (= lt!58236 lt!58239)))

(declare-fun lt!58237 () Unit!3499)

(declare-fun e!73202 () Unit!3499)

(assert (=> d!32059 (= lt!58237 e!73202)))

(declare-fun c!20153 () Bool)

(assert (=> d!32059 (= c!20153 lt!58239)))

(assert (=> d!32059 (= lt!58239 (containsKey!162 (toList!815 lt!57870) (_1!1228 lt!57800)))))

(assert (=> d!32059 (= (contains!841 lt!57870 (_1!1228 lt!57800)) lt!58236)))

(declare-fun b!112607 () Bool)

(declare-fun lt!58238 () Unit!3499)

(assert (=> b!112607 (= e!73202 lt!58238)))

(assert (=> b!112607 (= lt!58238 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!57870) (_1!1228 lt!57800)))))

(assert (=> b!112607 (isDefined!112 (getValueByKey!158 (toList!815 lt!57870) (_1!1228 lt!57800)))))

(declare-fun b!112608 () Bool)

(declare-fun Unit!3519 () Unit!3499)

(assert (=> b!112608 (= e!73202 Unit!3519)))

(declare-fun b!112609 () Bool)

(assert (=> b!112609 (= e!73203 (isDefined!112 (getValueByKey!158 (toList!815 lt!57870) (_1!1228 lt!57800))))))

(assert (= (and d!32059 c!20153) b!112607))

(assert (= (and d!32059 (not c!20153)) b!112608))

(assert (= (and d!32059 (not res!55530)) b!112609))

(declare-fun m!128681 () Bool)

(assert (=> d!32059 m!128681))

(declare-fun m!128683 () Bool)

(assert (=> b!112607 m!128683))

(assert (=> b!112607 m!128011))

(assert (=> b!112607 m!128011))

(declare-fun m!128685 () Bool)

(assert (=> b!112607 m!128685))

(assert (=> b!112609 m!128011))

(assert (=> b!112609 m!128011))

(assert (=> b!112609 m!128685))

(assert (=> d!31893 d!32059))

(declare-fun b!112610 () Bool)

(declare-fun e!73204 () Option!164)

(assert (=> b!112610 (= e!73204 (Some!163 (_2!1228 (h!2253 lt!57872))))))

(declare-fun b!112613 () Bool)

(declare-fun e!73205 () Option!164)

(assert (=> b!112613 (= e!73205 None!162)))

(declare-fun d!32061 () Bool)

(declare-fun c!20154 () Bool)

(assert (=> d!32061 (= c!20154 (and ((_ is Cons!1653) lt!57872) (= (_1!1228 (h!2253 lt!57872)) (_1!1228 lt!57800))))))

(assert (=> d!32061 (= (getValueByKey!158 lt!57872 (_1!1228 lt!57800)) e!73204)))

(declare-fun b!112611 () Bool)

(assert (=> b!112611 (= e!73204 e!73205)))

(declare-fun c!20155 () Bool)

(assert (=> b!112611 (= c!20155 (and ((_ is Cons!1653) lt!57872) (not (= (_1!1228 (h!2253 lt!57872)) (_1!1228 lt!57800)))))))

(declare-fun b!112612 () Bool)

(assert (=> b!112612 (= e!73205 (getValueByKey!158 (t!5827 lt!57872) (_1!1228 lt!57800)))))

(assert (= (and d!32061 c!20154) b!112610))

(assert (= (and d!32061 (not c!20154)) b!112611))

(assert (= (and b!112611 c!20155) b!112612))

(assert (= (and b!112611 (not c!20155)) b!112613))

(declare-fun m!128687 () Bool)

(assert (=> b!112612 m!128687))

(assert (=> d!31893 d!32061))

(declare-fun d!32063 () Bool)

(assert (=> d!32063 (= (getValueByKey!158 lt!57872 (_1!1228 lt!57800)) (Some!163 (_2!1228 lt!57800)))))

(declare-fun lt!58240 () Unit!3499)

(assert (=> d!32063 (= lt!58240 (choose!707 lt!57872 (_1!1228 lt!57800) (_2!1228 lt!57800)))))

(declare-fun e!73206 () Bool)

(assert (=> d!32063 e!73206))

(declare-fun res!55531 () Bool)

(assert (=> d!32063 (=> (not res!55531) (not e!73206))))

(assert (=> d!32063 (= res!55531 (isStrictlySorted!307 lt!57872))))

(assert (=> d!32063 (= (lemmaContainsTupThenGetReturnValue!76 lt!57872 (_1!1228 lt!57800) (_2!1228 lt!57800)) lt!58240)))

(declare-fun b!112614 () Bool)

(declare-fun res!55532 () Bool)

(assert (=> b!112614 (=> (not res!55532) (not e!73206))))

(assert (=> b!112614 (= res!55532 (containsKey!162 lt!57872 (_1!1228 lt!57800)))))

(declare-fun b!112615 () Bool)

(assert (=> b!112615 (= e!73206 (contains!842 lt!57872 (tuple2!2437 (_1!1228 lt!57800) (_2!1228 lt!57800))))))

(assert (= (and d!32063 res!55531) b!112614))

(assert (= (and b!112614 res!55532) b!112615))

(assert (=> d!32063 m!128005))

(declare-fun m!128689 () Bool)

(assert (=> d!32063 m!128689))

(declare-fun m!128691 () Bool)

(assert (=> d!32063 m!128691))

(declare-fun m!128693 () Bool)

(assert (=> b!112614 m!128693))

(declare-fun m!128695 () Bool)

(assert (=> b!112615 m!128695))

(assert (=> d!31893 d!32063))

(declare-fun bm!12089 () Bool)

(declare-fun call!12094 () List!1657)

(declare-fun call!12093 () List!1657)

(assert (=> bm!12089 (= call!12094 call!12093)))

(declare-fun e!73207 () List!1657)

(declare-fun bm!12090 () Bool)

(declare-fun c!20157 () Bool)

(assert (=> bm!12090 (= call!12093 ($colon$colon!83 e!73207 (ite c!20157 (h!2253 (toList!815 (+!151 lt!57790 lt!57795))) (tuple2!2437 (_1!1228 lt!57800) (_2!1228 lt!57800)))))))

(declare-fun c!20159 () Bool)

(assert (=> bm!12090 (= c!20159 c!20157)))

(declare-fun b!112616 () Bool)

(declare-fun c!20158 () Bool)

(assert (=> b!112616 (= c!20158 (and ((_ is Cons!1653) (toList!815 (+!151 lt!57790 lt!57795))) (bvsgt (_1!1228 (h!2253 (toList!815 (+!151 lt!57790 lt!57795)))) (_1!1228 lt!57800))))))

(declare-fun e!73211 () List!1657)

(declare-fun e!73208 () List!1657)

(assert (=> b!112616 (= e!73211 e!73208)))

(declare-fun b!112617 () Bool)

(declare-fun call!12092 () List!1657)

(assert (=> b!112617 (= e!73208 call!12092)))

(declare-fun d!32065 () Bool)

(declare-fun e!73210 () Bool)

(assert (=> d!32065 e!73210))

(declare-fun res!55533 () Bool)

(assert (=> d!32065 (=> (not res!55533) (not e!73210))))

(declare-fun lt!58241 () List!1657)

(assert (=> d!32065 (= res!55533 (isStrictlySorted!307 lt!58241))))

(declare-fun e!73209 () List!1657)

(assert (=> d!32065 (= lt!58241 e!73209)))

(assert (=> d!32065 (= c!20157 (and ((_ is Cons!1653) (toList!815 (+!151 lt!57790 lt!57795))) (bvslt (_1!1228 (h!2253 (toList!815 (+!151 lt!57790 lt!57795)))) (_1!1228 lt!57800))))))

(assert (=> d!32065 (isStrictlySorted!307 (toList!815 (+!151 lt!57790 lt!57795)))))

(assert (=> d!32065 (= (insertStrictlySorted!78 (toList!815 (+!151 lt!57790 lt!57795)) (_1!1228 lt!57800) (_2!1228 lt!57800)) lt!58241)))

(declare-fun b!112618 () Bool)

(assert (=> b!112618 (= e!73208 call!12092)))

(declare-fun b!112619 () Bool)

(assert (=> b!112619 (= e!73209 call!12093)))

(declare-fun b!112620 () Bool)

(assert (=> b!112620 (= e!73210 (contains!842 lt!58241 (tuple2!2437 (_1!1228 lt!57800) (_2!1228 lt!57800))))))

(declare-fun bm!12091 () Bool)

(assert (=> bm!12091 (= call!12092 call!12094)))

(declare-fun b!112621 () Bool)

(assert (=> b!112621 (= e!73209 e!73211)))

(declare-fun c!20156 () Bool)

(assert (=> b!112621 (= c!20156 (and ((_ is Cons!1653) (toList!815 (+!151 lt!57790 lt!57795))) (= (_1!1228 (h!2253 (toList!815 (+!151 lt!57790 lt!57795)))) (_1!1228 lt!57800))))))

(declare-fun b!112622 () Bool)

(assert (=> b!112622 (= e!73207 (insertStrictlySorted!78 (t!5827 (toList!815 (+!151 lt!57790 lt!57795))) (_1!1228 lt!57800) (_2!1228 lt!57800)))))

(declare-fun b!112623 () Bool)

(declare-fun res!55534 () Bool)

(assert (=> b!112623 (=> (not res!55534) (not e!73210))))

(assert (=> b!112623 (= res!55534 (containsKey!162 lt!58241 (_1!1228 lt!57800)))))

(declare-fun b!112624 () Bool)

(assert (=> b!112624 (= e!73207 (ite c!20156 (t!5827 (toList!815 (+!151 lt!57790 lt!57795))) (ite c!20158 (Cons!1653 (h!2253 (toList!815 (+!151 lt!57790 lt!57795))) (t!5827 (toList!815 (+!151 lt!57790 lt!57795)))) Nil!1654)))))

(declare-fun b!112625 () Bool)

(assert (=> b!112625 (= e!73211 call!12094)))

(assert (= (and d!32065 c!20157) b!112619))

(assert (= (and d!32065 (not c!20157)) b!112621))

(assert (= (and b!112621 c!20156) b!112625))

(assert (= (and b!112621 (not c!20156)) b!112616))

(assert (= (and b!112616 c!20158) b!112617))

(assert (= (and b!112616 (not c!20158)) b!112618))

(assert (= (or b!112617 b!112618) bm!12091))

(assert (= (or b!112625 bm!12091) bm!12089))

(assert (= (or b!112619 bm!12089) bm!12090))

(assert (= (and bm!12090 c!20159) b!112622))

(assert (= (and bm!12090 (not c!20159)) b!112624))

(assert (= (and d!32065 res!55533) b!112623))

(assert (= (and b!112623 res!55534) b!112620))

(declare-fun m!128697 () Bool)

(assert (=> bm!12090 m!128697))

(declare-fun m!128699 () Bool)

(assert (=> b!112623 m!128699))

(declare-fun m!128701 () Bool)

(assert (=> b!112620 m!128701))

(declare-fun m!128703 () Bool)

(assert (=> d!32065 m!128703))

(declare-fun m!128705 () Bool)

(assert (=> d!32065 m!128705))

(declare-fun m!128707 () Bool)

(assert (=> b!112622 m!128707))

(assert (=> d!31893 d!32065))

(declare-fun d!32067 () Bool)

(declare-fun e!73213 () Bool)

(assert (=> d!32067 e!73213))

(declare-fun res!55535 () Bool)

(assert (=> d!32067 (=> res!55535 e!73213)))

(declare-fun lt!58242 () Bool)

(assert (=> d!32067 (= res!55535 (not lt!58242))))

(declare-fun lt!58245 () Bool)

(assert (=> d!32067 (= lt!58242 lt!58245)))

(declare-fun lt!58243 () Unit!3499)

(declare-fun e!73212 () Unit!3499)

(assert (=> d!32067 (= lt!58243 e!73212)))

(declare-fun c!20160 () Bool)

(assert (=> d!32067 (= c!20160 lt!58245)))

(assert (=> d!32067 (= lt!58245 (containsKey!162 (toList!815 lt!57853) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32067 (= (contains!841 lt!57853 #b0000000000000000000000000000000000000000000000000000000000000000) lt!58242)))

(declare-fun b!112626 () Bool)

(declare-fun lt!58244 () Unit!3499)

(assert (=> b!112626 (= e!73212 lt!58244)))

(assert (=> b!112626 (= lt!58244 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!57853) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!112626 (isDefined!112 (getValueByKey!158 (toList!815 lt!57853) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!112627 () Bool)

(declare-fun Unit!3520 () Unit!3499)

(assert (=> b!112627 (= e!73212 Unit!3520)))

(declare-fun b!112628 () Bool)

(assert (=> b!112628 (= e!73213 (isDefined!112 (getValueByKey!158 (toList!815 lt!57853) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32067 c!20160) b!112626))

(assert (= (and d!32067 (not c!20160)) b!112627))

(assert (= (and d!32067 (not res!55535)) b!112628))

(declare-fun m!128709 () Bool)

(assert (=> d!32067 m!128709))

(declare-fun m!128711 () Bool)

(assert (=> b!112626 m!128711))

(declare-fun m!128713 () Bool)

(assert (=> b!112626 m!128713))

(assert (=> b!112626 m!128713))

(declare-fun m!128715 () Bool)

(assert (=> b!112626 m!128715))

(assert (=> b!112628 m!128713))

(assert (=> b!112628 m!128713))

(assert (=> b!112628 m!128715))

(assert (=> d!31889 d!32067))

(assert (=> d!31889 d!31901))

(declare-fun b!112629 () Bool)

(declare-fun e!73214 () Option!164)

(assert (=> b!112629 (= e!73214 (Some!163 (_2!1228 (h!2253 (toList!815 lt!57866)))))))

(declare-fun b!112632 () Bool)

(declare-fun e!73215 () Option!164)

(assert (=> b!112632 (= e!73215 None!162)))

(declare-fun d!32069 () Bool)

(declare-fun c!20161 () Bool)

(assert (=> d!32069 (= c!20161 (and ((_ is Cons!1653) (toList!815 lt!57866)) (= (_1!1228 (h!2253 (toList!815 lt!57866))) (_1!1228 lt!57800))))))

(assert (=> d!32069 (= (getValueByKey!158 (toList!815 lt!57866) (_1!1228 lt!57800)) e!73214)))

(declare-fun b!112630 () Bool)

(assert (=> b!112630 (= e!73214 e!73215)))

(declare-fun c!20162 () Bool)

(assert (=> b!112630 (= c!20162 (and ((_ is Cons!1653) (toList!815 lt!57866)) (not (= (_1!1228 (h!2253 (toList!815 lt!57866))) (_1!1228 lt!57800)))))))

(declare-fun b!112631 () Bool)

(assert (=> b!112631 (= e!73215 (getValueByKey!158 (t!5827 (toList!815 lt!57866)) (_1!1228 lt!57800)))))

(assert (= (and d!32069 c!20161) b!112629))

(assert (= (and d!32069 (not c!20161)) b!112630))

(assert (= (and b!112630 c!20162) b!112631))

(assert (= (and b!112630 (not c!20162)) b!112632))

(declare-fun m!128717 () Bool)

(assert (=> b!112631 m!128717))

(assert (=> b!112054 d!32069))

(declare-fun d!32071 () Bool)

(declare-fun e!73216 () Bool)

(assert (=> d!32071 e!73216))

(declare-fun res!55536 () Bool)

(assert (=> d!32071 (=> (not res!55536) (not e!73216))))

(declare-fun lt!58246 () ListLongMap!1599)

(assert (=> d!32071 (= res!55536 (contains!841 lt!58246 (_1!1228 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(declare-fun lt!58248 () List!1657)

(assert (=> d!32071 (= lt!58246 (ListLongMap!1600 lt!58248))))

(declare-fun lt!58247 () Unit!3499)

(declare-fun lt!58249 () Unit!3499)

(assert (=> d!32071 (= lt!58247 lt!58249)))

(assert (=> d!32071 (= (getValueByKey!158 lt!58248 (_1!1228 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32071 (= lt!58249 (lemmaContainsTupThenGetReturnValue!76 lt!58248 (_1!1228 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32071 (= lt!58248 (insertStrictlySorted!78 (toList!815 lt!58060) (_1!1228 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32071 (= (+!151 lt!58060 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58246)))

(declare-fun b!112633 () Bool)

(declare-fun res!55537 () Bool)

(assert (=> b!112633 (=> (not res!55537) (not e!73216))))

(assert (=> b!112633 (= res!55537 (= (getValueByKey!158 (toList!815 lt!58246) (_1!1228 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))))))))

(declare-fun b!112634 () Bool)

(assert (=> b!112634 (= e!73216 (contains!842 (toList!815 lt!58246) (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))))))

(assert (= (and d!32071 res!55536) b!112633))

(assert (= (and b!112633 res!55537) b!112634))

(declare-fun m!128719 () Bool)

(assert (=> d!32071 m!128719))

(declare-fun m!128721 () Bool)

(assert (=> d!32071 m!128721))

(declare-fun m!128723 () Bool)

(assert (=> d!32071 m!128723))

(declare-fun m!128725 () Bool)

(assert (=> d!32071 m!128725))

(declare-fun m!128727 () Bool)

(assert (=> b!112633 m!128727))

(declare-fun m!128729 () Bool)

(assert (=> b!112634 m!128729))

(assert (=> b!112306 d!32071))

(declare-fun d!32073 () Bool)

(declare-fun e!73217 () Bool)

(assert (=> d!32073 e!73217))

(declare-fun res!55538 () Bool)

(assert (=> d!32073 (=> (not res!55538) (not e!73217))))

(declare-fun lt!58250 () ListLongMap!1599)

(assert (=> d!32073 (= res!55538 (contains!841 lt!58250 (_1!1228 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(declare-fun lt!58252 () List!1657)

(assert (=> d!32073 (= lt!58250 (ListLongMap!1600 lt!58252))))

(declare-fun lt!58251 () Unit!3499)

(declare-fun lt!58253 () Unit!3499)

(assert (=> d!32073 (= lt!58251 lt!58253)))

(assert (=> d!32073 (= (getValueByKey!158 lt!58252 (_1!1228 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32073 (= lt!58253 (lemmaContainsTupThenGetReturnValue!76 lt!58252 (_1!1228 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32073 (= lt!58252 (insertStrictlySorted!78 (toList!815 lt!58042) (_1!1228 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32073 (= (+!151 lt!58042 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58250)))

(declare-fun b!112635 () Bool)

(declare-fun res!55539 () Bool)

(assert (=> b!112635 (=> (not res!55539) (not e!73217))))

(assert (=> b!112635 (= res!55539 (= (getValueByKey!158 (toList!815 lt!58250) (_1!1228 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))))))

(declare-fun b!112636 () Bool)

(assert (=> b!112636 (= e!73217 (contains!842 (toList!815 lt!58250) (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))))

(assert (= (and d!32073 res!55538) b!112635))

(assert (= (and b!112635 res!55539) b!112636))

(declare-fun m!128731 () Bool)

(assert (=> d!32073 m!128731))

(declare-fun m!128733 () Bool)

(assert (=> d!32073 m!128733))

(declare-fun m!128735 () Bool)

(assert (=> d!32073 m!128735))

(declare-fun m!128737 () Bool)

(assert (=> d!32073 m!128737))

(declare-fun m!128739 () Bool)

(assert (=> b!112635 m!128739))

(declare-fun m!128741 () Bool)

(assert (=> b!112636 m!128741))

(assert (=> b!112306 d!32073))

(declare-fun d!32075 () Bool)

(assert (=> d!32075 (= (apply!101 (+!151 lt!58042 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58048) (get!1365 (getValueByKey!158 (toList!815 (+!151 lt!58042 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))) lt!58048)))))

(declare-fun bs!4631 () Bool)

(assert (= bs!4631 d!32075))

(declare-fun m!128743 () Bool)

(assert (=> bs!4631 m!128743))

(assert (=> bs!4631 m!128743))

(declare-fun m!128745 () Bool)

(assert (=> bs!4631 m!128745))

(assert (=> b!112306 d!32075))

(assert (=> b!112306 d!31889))

(declare-fun d!32077 () Bool)

(assert (=> d!32077 (= (apply!101 lt!58042 lt!58048) (get!1365 (getValueByKey!158 (toList!815 lt!58042) lt!58048)))))

(declare-fun bs!4632 () Bool)

(assert (= bs!4632 d!32077))

(declare-fun m!128747 () Bool)

(assert (=> bs!4632 m!128747))

(assert (=> bs!4632 m!128747))

(declare-fun m!128749 () Bool)

(assert (=> bs!4632 m!128749))

(assert (=> b!112306 d!32077))

(declare-fun d!32079 () Bool)

(declare-fun e!73218 () Bool)

(assert (=> d!32079 e!73218))

(declare-fun res!55540 () Bool)

(assert (=> d!32079 (=> (not res!55540) (not e!73218))))

(declare-fun lt!58254 () ListLongMap!1599)

(assert (=> d!32079 (= res!55540 (contains!841 lt!58254 (_1!1228 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(declare-fun lt!58256 () List!1657)

(assert (=> d!32079 (= lt!58254 (ListLongMap!1600 lt!58256))))

(declare-fun lt!58255 () Unit!3499)

(declare-fun lt!58257 () Unit!3499)

(assert (=> d!32079 (= lt!58255 lt!58257)))

(assert (=> d!32079 (= (getValueByKey!158 lt!58256 (_1!1228 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32079 (= lt!58257 (lemmaContainsTupThenGetReturnValue!76 lt!58256 (_1!1228 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32079 (= lt!58256 (insertStrictlySorted!78 (toList!815 lt!58043) (_1!1228 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32079 (= (+!151 lt!58043 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58254)))

(declare-fun b!112637 () Bool)

(declare-fun res!55541 () Bool)

(assert (=> b!112637 (=> (not res!55541) (not e!73218))))

(assert (=> b!112637 (= res!55541 (= (getValueByKey!158 (toList!815 lt!58254) (_1!1228 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))))))))

(declare-fun b!112638 () Bool)

(assert (=> b!112638 (= e!73218 (contains!842 (toList!815 lt!58254) (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))))))

(assert (= (and d!32079 res!55540) b!112637))

(assert (= (and b!112637 res!55541) b!112638))

(declare-fun m!128751 () Bool)

(assert (=> d!32079 m!128751))

(declare-fun m!128753 () Bool)

(assert (=> d!32079 m!128753))

(declare-fun m!128755 () Bool)

(assert (=> d!32079 m!128755))

(declare-fun m!128757 () Bool)

(assert (=> d!32079 m!128757))

(declare-fun m!128759 () Bool)

(assert (=> b!112637 m!128759))

(declare-fun m!128761 () Bool)

(assert (=> b!112638 m!128761))

(assert (=> b!112306 d!32079))

(declare-fun d!32081 () Bool)

(assert (=> d!32081 (= (apply!101 (+!151 lt!58049 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58056) (apply!101 lt!58049 lt!58056))))

(declare-fun lt!58260 () Unit!3499)

(declare-fun choose!716 (ListLongMap!1599 (_ BitVec 64) V!3251 (_ BitVec 64)) Unit!3499)

(assert (=> d!32081 (= lt!58260 (choose!716 lt!58049 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58056))))

(declare-fun e!73221 () Bool)

(assert (=> d!32081 e!73221))

(declare-fun res!55544 () Bool)

(assert (=> d!32081 (=> (not res!55544) (not e!73221))))

(assert (=> d!32081 (= res!55544 (contains!841 lt!58049 lt!58056))))

(assert (=> d!32081 (= (addApplyDifferent!77 lt!58049 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58056) lt!58260)))

(declare-fun b!112642 () Bool)

(assert (=> b!112642 (= e!73221 (not (= lt!58056 lt!58045)))))

(assert (= (and d!32081 res!55544) b!112642))

(declare-fun m!128763 () Bool)

(assert (=> d!32081 m!128763))

(assert (=> d!32081 m!128163))

(assert (=> d!32081 m!128169))

(assert (=> d!32081 m!128171))

(assert (=> d!32081 m!128169))

(declare-fun m!128765 () Bool)

(assert (=> d!32081 m!128765))

(assert (=> b!112306 d!32081))

(declare-fun d!32083 () Bool)

(assert (=> d!32083 (= (apply!101 lt!58060 lt!58047) (get!1365 (getValueByKey!158 (toList!815 lt!58060) lt!58047)))))

(declare-fun bs!4633 () Bool)

(assert (= bs!4633 d!32083))

(declare-fun m!128767 () Bool)

(assert (=> bs!4633 m!128767))

(assert (=> bs!4633 m!128767))

(declare-fun m!128769 () Bool)

(assert (=> bs!4633 m!128769))

(assert (=> b!112306 d!32083))

(declare-fun d!32085 () Bool)

(assert (=> d!32085 (= (apply!101 (+!151 lt!58060 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58047) (get!1365 (getValueByKey!158 (toList!815 (+!151 lt!58060 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) lt!58047)))))

(declare-fun bs!4634 () Bool)

(assert (= bs!4634 d!32085))

(declare-fun m!128771 () Bool)

(assert (=> bs!4634 m!128771))

(assert (=> bs!4634 m!128771))

(declare-fun m!128773 () Bool)

(assert (=> bs!4634 m!128773))

(assert (=> b!112306 d!32085))

(declare-fun d!32087 () Bool)

(declare-fun e!73223 () Bool)

(assert (=> d!32087 e!73223))

(declare-fun res!55545 () Bool)

(assert (=> d!32087 (=> res!55545 e!73223)))

(declare-fun lt!58261 () Bool)

(assert (=> d!32087 (= res!55545 (not lt!58261))))

(declare-fun lt!58264 () Bool)

(assert (=> d!32087 (= lt!58261 lt!58264)))

(declare-fun lt!58262 () Unit!3499)

(declare-fun e!73222 () Unit!3499)

(assert (=> d!32087 (= lt!58262 e!73222)))

(declare-fun c!20163 () Bool)

(assert (=> d!32087 (= c!20163 lt!58264)))

(assert (=> d!32087 (= lt!58264 (containsKey!162 (toList!815 (+!151 lt!58043 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) lt!58050))))

(assert (=> d!32087 (= (contains!841 (+!151 lt!58043 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58050) lt!58261)))

(declare-fun b!112643 () Bool)

(declare-fun lt!58263 () Unit!3499)

(assert (=> b!112643 (= e!73222 lt!58263)))

(assert (=> b!112643 (= lt!58263 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 (+!151 lt!58043 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) lt!58050))))

(assert (=> b!112643 (isDefined!112 (getValueByKey!158 (toList!815 (+!151 lt!58043 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) lt!58050))))

(declare-fun b!112644 () Bool)

(declare-fun Unit!3521 () Unit!3499)

(assert (=> b!112644 (= e!73222 Unit!3521)))

(declare-fun b!112645 () Bool)

(assert (=> b!112645 (= e!73223 (isDefined!112 (getValueByKey!158 (toList!815 (+!151 lt!58043 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992)))))) lt!58050)))))

(assert (= (and d!32087 c!20163) b!112643))

(assert (= (and d!32087 (not c!20163)) b!112644))

(assert (= (and d!32087 (not res!55545)) b!112645))

(declare-fun m!128775 () Bool)

(assert (=> d!32087 m!128775))

(declare-fun m!128777 () Bool)

(assert (=> b!112643 m!128777))

(declare-fun m!128779 () Bool)

(assert (=> b!112643 m!128779))

(assert (=> b!112643 m!128779))

(declare-fun m!128781 () Bool)

(assert (=> b!112643 m!128781))

(assert (=> b!112645 m!128779))

(assert (=> b!112645 m!128779))

(assert (=> b!112645 m!128781))

(assert (=> b!112306 d!32087))

(declare-fun d!32089 () Bool)

(assert (=> d!32089 (contains!841 (+!151 lt!58043 (tuple2!2437 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58050)))

(declare-fun lt!58267 () Unit!3499)

(declare-fun choose!717 (ListLongMap!1599 (_ BitVec 64) V!3251 (_ BitVec 64)) Unit!3499)

(assert (=> d!32089 (= lt!58267 (choose!717 lt!58043 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58050))))

(assert (=> d!32089 (contains!841 lt!58043 lt!58050)))

(assert (=> d!32089 (= (addStillContains!77 lt!58043 lt!58044 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58050) lt!58267)))

(declare-fun bs!4635 () Bool)

(assert (= bs!4635 d!32089))

(assert (=> bs!4635 m!128155))

(assert (=> bs!4635 m!128155))

(assert (=> bs!4635 m!128157))

(declare-fun m!128783 () Bool)

(assert (=> bs!4635 m!128783))

(declare-fun m!128785 () Bool)

(assert (=> bs!4635 m!128785))

(assert (=> b!112306 d!32089))

(declare-fun d!32091 () Bool)

(assert (=> d!32091 (= (apply!101 lt!58049 lt!58056) (get!1365 (getValueByKey!158 (toList!815 lt!58049) lt!58056)))))

(declare-fun bs!4636 () Bool)

(assert (= bs!4636 d!32091))

(declare-fun m!128787 () Bool)

(assert (=> bs!4636 m!128787))

(assert (=> bs!4636 m!128787))

(declare-fun m!128789 () Bool)

(assert (=> bs!4636 m!128789))

(assert (=> b!112306 d!32091))

(declare-fun d!32093 () Bool)

(assert (=> d!32093 (= (apply!101 (+!151 lt!58060 (tuple2!2437 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58047) (apply!101 lt!58060 lt!58047))))

(declare-fun lt!58268 () Unit!3499)

(assert (=> d!32093 (= lt!58268 (choose!716 lt!58060 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58047))))

(declare-fun e!73224 () Bool)

(assert (=> d!32093 e!73224))

(declare-fun res!55546 () Bool)

(assert (=> d!32093 (=> (not res!55546) (not e!73224))))

(assert (=> d!32093 (= res!55546 (contains!841 lt!58060 lt!58047))))

(assert (=> d!32093 (= (addApplyDifferent!77 lt!58060 lt!58059 (zeroValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58047) lt!58268)))

(declare-fun b!112647 () Bool)

(assert (=> b!112647 (= e!73224 (not (= lt!58047 lt!58059)))))

(assert (= (and d!32093 res!55546) b!112647))

(declare-fun m!128791 () Bool)

(assert (=> d!32093 m!128791))

(assert (=> d!32093 m!128175))

(assert (=> d!32093 m!128153))

(assert (=> d!32093 m!128173))

(assert (=> d!32093 m!128153))

(declare-fun m!128793 () Bool)

(assert (=> d!32093 m!128793))

(assert (=> b!112306 d!32093))

(declare-fun d!32095 () Bool)

(assert (=> d!32095 (= (apply!101 (+!151 lt!58049 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58056) (get!1365 (getValueByKey!158 (toList!815 (+!151 lt!58049 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))) lt!58056)))))

(declare-fun bs!4637 () Bool)

(assert (= bs!4637 d!32095))

(declare-fun m!128795 () Bool)

(assert (=> bs!4637 m!128795))

(assert (=> bs!4637 m!128795))

(declare-fun m!128797 () Bool)

(assert (=> bs!4637 m!128797))

(assert (=> b!112306 d!32095))

(declare-fun d!32097 () Bool)

(assert (=> d!32097 (= (apply!101 (+!151 lt!58042 (tuple2!2437 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58048) (apply!101 lt!58042 lt!58048))))

(declare-fun lt!58269 () Unit!3499)

(assert (=> d!32097 (= lt!58269 (choose!716 lt!58042 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58048))))

(declare-fun e!73225 () Bool)

(assert (=> d!32097 e!73225))

(declare-fun res!55547 () Bool)

(assert (=> d!32097 (=> (not res!55547) (not e!73225))))

(assert (=> d!32097 (= res!55547 (contains!841 lt!58042 lt!58048))))

(assert (=> d!32097 (= (addApplyDifferent!77 lt!58042 lt!58053 (minValue!2517 (v!2945 (underlying!373 thiss!992))) lt!58048) lt!58269)))

(declare-fun b!112648 () Bool)

(assert (=> b!112648 (= e!73225 (not (= lt!58048 lt!58053)))))

(assert (= (and d!32097 res!55547) b!112648))

(declare-fun m!128799 () Bool)

(assert (=> d!32097 m!128799))

(assert (=> d!32097 m!128159))

(assert (=> d!32097 m!128161))

(assert (=> d!32097 m!128177))

(assert (=> d!32097 m!128161))

(declare-fun m!128801 () Bool)

(assert (=> d!32097 m!128801))

(assert (=> b!112306 d!32097))

(declare-fun d!32099 () Bool)

(declare-fun e!73226 () Bool)

(assert (=> d!32099 e!73226))

(declare-fun res!55548 () Bool)

(assert (=> d!32099 (=> (not res!55548) (not e!73226))))

(declare-fun lt!58270 () ListLongMap!1599)

(assert (=> d!32099 (= res!55548 (contains!841 lt!58270 (_1!1228 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(declare-fun lt!58272 () List!1657)

(assert (=> d!32099 (= lt!58270 (ListLongMap!1600 lt!58272))))

(declare-fun lt!58271 () Unit!3499)

(declare-fun lt!58273 () Unit!3499)

(assert (=> d!32099 (= lt!58271 lt!58273)))

(assert (=> d!32099 (= (getValueByKey!158 lt!58272 (_1!1228 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32099 (= lt!58273 (lemmaContainsTupThenGetReturnValue!76 lt!58272 (_1!1228 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32099 (= lt!58272 (insertStrictlySorted!78 (toList!815 lt!58049) (_1!1228 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) (_2!1228 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))))))

(assert (=> d!32099 (= (+!151 lt!58049 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992))))) lt!58270)))

(declare-fun b!112649 () Bool)

(declare-fun res!55549 () Bool)

(assert (=> b!112649 (=> (not res!55549) (not e!73226))))

(assert (=> b!112649 (= res!55549 (= (getValueByKey!158 (toList!815 lt!58270) (_1!1228 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992)))))) (Some!163 (_2!1228 (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))))))

(declare-fun b!112650 () Bool)

(assert (=> b!112650 (= e!73226 (contains!842 (toList!815 lt!58270) (tuple2!2437 lt!58045 (minValue!2517 (v!2945 (underlying!373 thiss!992))))))))

(assert (= (and d!32099 res!55548) b!112649))

(assert (= (and b!112649 res!55549) b!112650))

(declare-fun m!128803 () Bool)

(assert (=> d!32099 m!128803))

(declare-fun m!128805 () Bool)

(assert (=> d!32099 m!128805))

(declare-fun m!128807 () Bool)

(assert (=> d!32099 m!128807))

(declare-fun m!128809 () Bool)

(assert (=> d!32099 m!128809))

(declare-fun m!128811 () Bool)

(assert (=> b!112649 m!128811))

(declare-fun m!128813 () Bool)

(assert (=> b!112650 m!128813))

(assert (=> b!112306 d!32099))

(assert (=> d!31931 d!31901))

(declare-fun d!32101 () Bool)

(declare-fun res!55550 () Bool)

(declare-fun e!73227 () Bool)

(assert (=> d!32101 (=> (not res!55550) (not e!73227))))

(assert (=> d!32101 (= res!55550 (simpleValid!76 (_2!1229 lt!57983)))))

(assert (=> d!32101 (= (valid!423 (_2!1229 lt!57983)) e!73227)))

(declare-fun b!112651 () Bool)

(declare-fun res!55551 () Bool)

(assert (=> b!112651 (=> (not res!55551) (not e!73227))))

(assert (=> b!112651 (= res!55551 (= (arrayCountValidKeys!0 (_keys!4366 (_2!1229 lt!57983)) #b00000000000000000000000000000000 (size!2344 (_keys!4366 (_2!1229 lt!57983)))) (_size!511 (_2!1229 lt!57983))))))

(declare-fun b!112652 () Bool)

(declare-fun res!55552 () Bool)

(assert (=> b!112652 (=> (not res!55552) (not e!73227))))

(assert (=> b!112652 (= res!55552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4366 (_2!1229 lt!57983)) (mask!6826 (_2!1229 lt!57983))))))

(declare-fun b!112653 () Bool)

(assert (=> b!112653 (= e!73227 (arrayNoDuplicates!0 (_keys!4366 (_2!1229 lt!57983)) #b00000000000000000000000000000000 Nil!1653))))

(assert (= (and d!32101 res!55550) b!112651))

(assert (= (and b!112651 res!55551) b!112652))

(assert (= (and b!112652 res!55552) b!112653))

(declare-fun m!128815 () Bool)

(assert (=> d!32101 m!128815))

(declare-fun m!128817 () Bool)

(assert (=> b!112651 m!128817))

(declare-fun m!128819 () Bool)

(assert (=> b!112652 m!128819))

(declare-fun m!128821 () Bool)

(assert (=> b!112653 m!128821))

(assert (=> d!31917 d!32101))

(assert (=> d!31917 d!31927))

(declare-fun b!112654 () Bool)

(declare-fun e!73228 () Option!164)

(assert (=> b!112654 (= e!73228 (Some!163 (_2!1228 (h!2253 (toList!815 lt!57870)))))))

(declare-fun b!112657 () Bool)

(declare-fun e!73229 () Option!164)

(assert (=> b!112657 (= e!73229 None!162)))

(declare-fun d!32103 () Bool)

(declare-fun c!20164 () Bool)

(assert (=> d!32103 (= c!20164 (and ((_ is Cons!1653) (toList!815 lt!57870)) (= (_1!1228 (h!2253 (toList!815 lt!57870))) (_1!1228 lt!57800))))))

(assert (=> d!32103 (= (getValueByKey!158 (toList!815 lt!57870) (_1!1228 lt!57800)) e!73228)))

(declare-fun b!112655 () Bool)

(assert (=> b!112655 (= e!73228 e!73229)))

(declare-fun c!20165 () Bool)

(assert (=> b!112655 (= c!20165 (and ((_ is Cons!1653) (toList!815 lt!57870)) (not (= (_1!1228 (h!2253 (toList!815 lt!57870))) (_1!1228 lt!57800)))))))

(declare-fun b!112656 () Bool)

(assert (=> b!112656 (= e!73229 (getValueByKey!158 (t!5827 (toList!815 lt!57870)) (_1!1228 lt!57800)))))

(assert (= (and d!32103 c!20164) b!112654))

(assert (= (and d!32103 (not c!20164)) b!112655))

(assert (= (and b!112655 c!20165) b!112656))

(assert (= (and b!112655 (not c!20165)) b!112657))

(declare-fun m!128823 () Bool)

(assert (=> b!112656 m!128823))

(assert (=> b!112056 d!32103))

(declare-fun d!32105 () Bool)

(assert (=> d!32105 (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) lt!57902 #b00000000000000000000000000000000)))

(declare-fun lt!58276 () Unit!3499)

(declare-fun choose!13 (array!4402 (_ BitVec 64) (_ BitVec 32)) Unit!3499)

(assert (=> d!32105 (= lt!58276 (choose!13 (_keys!4366 (v!2945 (underlying!373 thiss!992))) lt!57902 #b00000000000000000000000000000000))))

(assert (=> d!32105 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!32105 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) lt!57902 #b00000000000000000000000000000000) lt!58276)))

(declare-fun bs!4638 () Bool)

(assert (= bs!4638 d!32105))

(assert (=> bs!4638 m!128067))

(declare-fun m!128825 () Bool)

(assert (=> bs!4638 m!128825))

(assert (=> b!112097 d!32105))

(declare-fun d!32107 () Bool)

(declare-fun res!55553 () Bool)

(declare-fun e!73230 () Bool)

(assert (=> d!32107 (=> res!55553 e!73230)))

(assert (=> d!32107 (= res!55553 (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000) lt!57902))))

(assert (=> d!32107 (= (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) lt!57902 #b00000000000000000000000000000000) e!73230)))

(declare-fun b!112658 () Bool)

(declare-fun e!73231 () Bool)

(assert (=> b!112658 (= e!73230 e!73231)))

(declare-fun res!55554 () Bool)

(assert (=> b!112658 (=> (not res!55554) (not e!73231))))

(assert (=> b!112658 (= res!55554 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(declare-fun b!112659 () Bool)

(assert (=> b!112659 (= e!73231 (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) lt!57902 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!32107 (not res!55553)) b!112658))

(assert (= (and b!112658 res!55554) b!112659))

(assert (=> d!32107 m!128063))

(declare-fun m!128827 () Bool)

(assert (=> b!112659 m!128827))

(assert (=> b!112097 d!32107))

(declare-fun b!112660 () Bool)

(declare-fun e!73233 () SeekEntryResult!272)

(declare-fun lt!58278 () SeekEntryResult!272)

(assert (=> b!112660 (= e!73233 (Found!272 (index!3241 lt!58278)))))

(declare-fun b!112661 () Bool)

(declare-fun e!73234 () SeekEntryResult!272)

(assert (=> b!112661 (= e!73234 (seekKeyOrZeroReturnVacant!0 (x!14104 lt!58278) (index!3241 lt!58278) (index!3241 lt!58278) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000) (_keys!4366 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun b!112662 () Bool)

(declare-fun e!73232 () SeekEntryResult!272)

(assert (=> b!112662 (= e!73232 e!73233)))

(declare-fun lt!58277 () (_ BitVec 64))

(assert (=> b!112662 (= lt!58277 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (index!3241 lt!58278)))))

(declare-fun c!20167 () Bool)

(assert (=> b!112662 (= c!20167 (= lt!58277 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!112663 () Bool)

(assert (=> b!112663 (= e!73232 Undefined!272)))

(declare-fun b!112664 () Bool)

(declare-fun c!20166 () Bool)

(assert (=> b!112664 (= c!20166 (= lt!58277 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!112664 (= e!73233 e!73234)))

(declare-fun b!112665 () Bool)

(assert (=> b!112665 (= e!73234 (MissingZero!272 (index!3241 lt!58278)))))

(declare-fun d!32109 () Bool)

(declare-fun lt!58279 () SeekEntryResult!272)

(assert (=> d!32109 (and (or ((_ is Undefined!272) lt!58279) (not ((_ is Found!272) lt!58279)) (and (bvsge (index!3240 lt!58279) #b00000000000000000000000000000000) (bvslt (index!3240 lt!58279) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))) (or ((_ is Undefined!272) lt!58279) ((_ is Found!272) lt!58279) (not ((_ is MissingZero!272) lt!58279)) (and (bvsge (index!3239 lt!58279) #b00000000000000000000000000000000) (bvslt (index!3239 lt!58279) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))) (or ((_ is Undefined!272) lt!58279) ((_ is Found!272) lt!58279) ((_ is MissingZero!272) lt!58279) (not ((_ is MissingVacant!272) lt!58279)) (and (bvsge (index!3242 lt!58279) #b00000000000000000000000000000000) (bvslt (index!3242 lt!58279) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))) (or ((_ is Undefined!272) lt!58279) (ite ((_ is Found!272) lt!58279) (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (index!3240 lt!58279)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!272) lt!58279) (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (index!3239 lt!58279)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!272) lt!58279) (= (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (index!3242 lt!58279)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!32109 (= lt!58279 e!73232)))

(declare-fun c!20168 () Bool)

(assert (=> d!32109 (= c!20168 (and ((_ is Intermediate!272) lt!58278) (undefined!1084 lt!58278)))))

(assert (=> d!32109 (= lt!58278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000) (mask!6826 (v!2945 (underlying!373 thiss!992)))) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000) (_keys!4366 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992)))))))

(assert (=> d!32109 (validMask!0 (mask!6826 (v!2945 (underlying!373 thiss!992))))))

(assert (=> d!32109 (= (seekEntryOrOpen!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) #b00000000000000000000000000000000) (_keys!4366 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992)))) lt!58279)))

(assert (= (and d!32109 c!20168) b!112663))

(assert (= (and d!32109 (not c!20168)) b!112662))

(assert (= (and b!112662 c!20167) b!112660))

(assert (= (and b!112662 (not c!20167)) b!112664))

(assert (= (and b!112664 c!20166) b!112665))

(assert (= (and b!112664 (not c!20166)) b!112661))

(assert (=> b!112661 m!128063))

(declare-fun m!128829 () Bool)

(assert (=> b!112661 m!128829))

(declare-fun m!128831 () Bool)

(assert (=> b!112662 m!128831))

(assert (=> d!32109 m!127895))

(declare-fun m!128833 () Bool)

(assert (=> d!32109 m!128833))

(assert (=> d!32109 m!128063))

(declare-fun m!128835 () Bool)

(assert (=> d!32109 m!128835))

(declare-fun m!128837 () Bool)

(assert (=> d!32109 m!128837))

(assert (=> d!32109 m!128063))

(assert (=> d!32109 m!128833))

(declare-fun m!128839 () Bool)

(assert (=> d!32109 m!128839))

(declare-fun m!128841 () Bool)

(assert (=> d!32109 m!128841))

(assert (=> b!112097 d!32109))

(declare-fun d!32111 () Bool)

(declare-fun e!73236 () Bool)

(assert (=> d!32111 e!73236))

(declare-fun res!55555 () Bool)

(assert (=> d!32111 (=> res!55555 e!73236)))

(declare-fun lt!58280 () Bool)

(assert (=> d!32111 (= res!55555 (not lt!58280))))

(declare-fun lt!58283 () Bool)

(assert (=> d!32111 (= lt!58280 lt!58283)))

(declare-fun lt!58281 () Unit!3499)

(declare-fun e!73235 () Unit!3499)

(assert (=> d!32111 (= lt!58281 e!73235)))

(declare-fun c!20169 () Bool)

(assert (=> d!32111 (= c!20169 lt!58283)))

(assert (=> d!32111 (= lt!58283 (containsKey!162 (toList!815 lt!57853) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32111 (= (contains!841 lt!57853 #b1000000000000000000000000000000000000000000000000000000000000000) lt!58280)))

(declare-fun b!112666 () Bool)

(declare-fun lt!58282 () Unit!3499)

(assert (=> b!112666 (= e!73235 lt!58282)))

(assert (=> b!112666 (= lt!58282 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!57853) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!112666 (isDefined!112 (getValueByKey!158 (toList!815 lt!57853) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!112667 () Bool)

(declare-fun Unit!3522 () Unit!3499)

(assert (=> b!112667 (= e!73235 Unit!3522)))

(declare-fun b!112668 () Bool)

(assert (=> b!112668 (= e!73236 (isDefined!112 (getValueByKey!158 (toList!815 lt!57853) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32111 c!20169) b!112666))

(assert (= (and d!32111 (not c!20169)) b!112667))

(assert (= (and d!32111 (not res!55555)) b!112668))

(declare-fun m!128843 () Bool)

(assert (=> d!32111 m!128843))

(declare-fun m!128845 () Bool)

(assert (=> b!112666 m!128845))

(declare-fun m!128847 () Bool)

(assert (=> b!112666 m!128847))

(assert (=> b!112666 m!128847))

(declare-fun m!128849 () Bool)

(assert (=> b!112666 m!128849))

(assert (=> b!112668 m!128847))

(assert (=> b!112668 m!128847))

(assert (=> b!112668 m!128849))

(assert (=> b!112038 d!32111))

(assert (=> d!31905 d!31911))

(declare-fun d!32113 () Bool)

(assert (=> d!32113 (arrayNoDuplicates!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) from!355 Nil!1653)))

(assert (=> d!32113 true))

(declare-fun _$71!156 () Unit!3499)

(assert (=> d!32113 (= (choose!39 (_keys!4366 (v!2945 (underlying!373 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!156)))

(declare-fun bs!4639 () Bool)

(assert (= bs!4639 d!32113))

(assert (=> bs!4639 m!127873))

(assert (=> d!31905 d!32113))

(assert (=> b!112072 d!31907))

(declare-fun d!32115 () Bool)

(declare-fun e!73238 () Bool)

(assert (=> d!32115 e!73238))

(declare-fun res!55556 () Bool)

(assert (=> d!32115 (=> res!55556 e!73238)))

(declare-fun lt!58284 () Bool)

(assert (=> d!32115 (= res!55556 (not lt!58284))))

(declare-fun lt!58287 () Bool)

(assert (=> d!32115 (= lt!58284 lt!58287)))

(declare-fun lt!58285 () Unit!3499)

(declare-fun e!73237 () Unit!3499)

(assert (=> d!32115 (= lt!58285 e!73237)))

(declare-fun c!20170 () Bool)

(assert (=> d!32115 (= c!20170 lt!58287)))

(assert (=> d!32115 (= lt!58287 (containsKey!162 (toList!815 lt!57881) (_1!1228 lt!57795)))))

(assert (=> d!32115 (= (contains!841 lt!57881 (_1!1228 lt!57795)) lt!58284)))

(declare-fun b!112669 () Bool)

(declare-fun lt!58286 () Unit!3499)

(assert (=> b!112669 (= e!73237 lt!58286)))

(assert (=> b!112669 (= lt!58286 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!57881) (_1!1228 lt!57795)))))

(assert (=> b!112669 (isDefined!112 (getValueByKey!158 (toList!815 lt!57881) (_1!1228 lt!57795)))))

(declare-fun b!112670 () Bool)

(declare-fun Unit!3523 () Unit!3499)

(assert (=> b!112670 (= e!73237 Unit!3523)))

(declare-fun b!112671 () Bool)

(assert (=> b!112671 (= e!73238 (isDefined!112 (getValueByKey!158 (toList!815 lt!57881) (_1!1228 lt!57795))))))

(assert (= (and d!32115 c!20170) b!112669))

(assert (= (and d!32115 (not c!20170)) b!112670))

(assert (= (and d!32115 (not res!55556)) b!112671))

(declare-fun m!128851 () Bool)

(assert (=> d!32115 m!128851))

(declare-fun m!128853 () Bool)

(assert (=> b!112669 m!128853))

(assert (=> b!112669 m!128045))

(assert (=> b!112669 m!128045))

(declare-fun m!128855 () Bool)

(assert (=> b!112669 m!128855))

(assert (=> b!112671 m!128045))

(assert (=> b!112671 m!128045))

(assert (=> b!112671 m!128855))

(assert (=> d!31899 d!32115))

(declare-fun b!112672 () Bool)

(declare-fun e!73239 () Option!164)

(assert (=> b!112672 (= e!73239 (Some!163 (_2!1228 (h!2253 lt!57883))))))

(declare-fun b!112675 () Bool)

(declare-fun e!73240 () Option!164)

(assert (=> b!112675 (= e!73240 None!162)))

(declare-fun d!32117 () Bool)

(declare-fun c!20171 () Bool)

(assert (=> d!32117 (= c!20171 (and ((_ is Cons!1653) lt!57883) (= (_1!1228 (h!2253 lt!57883)) (_1!1228 lt!57795))))))

(assert (=> d!32117 (= (getValueByKey!158 lt!57883 (_1!1228 lt!57795)) e!73239)))

(declare-fun b!112673 () Bool)

(assert (=> b!112673 (= e!73239 e!73240)))

(declare-fun c!20172 () Bool)

(assert (=> b!112673 (= c!20172 (and ((_ is Cons!1653) lt!57883) (not (= (_1!1228 (h!2253 lt!57883)) (_1!1228 lt!57795)))))))

(declare-fun b!112674 () Bool)

(assert (=> b!112674 (= e!73240 (getValueByKey!158 (t!5827 lt!57883) (_1!1228 lt!57795)))))

(assert (= (and d!32117 c!20171) b!112672))

(assert (= (and d!32117 (not c!20171)) b!112673))

(assert (= (and b!112673 c!20172) b!112674))

(assert (= (and b!112673 (not c!20172)) b!112675))

(declare-fun m!128857 () Bool)

(assert (=> b!112674 m!128857))

(assert (=> d!31899 d!32117))

(declare-fun d!32119 () Bool)

(assert (=> d!32119 (= (getValueByKey!158 lt!57883 (_1!1228 lt!57795)) (Some!163 (_2!1228 lt!57795)))))

(declare-fun lt!58288 () Unit!3499)

(assert (=> d!32119 (= lt!58288 (choose!707 lt!57883 (_1!1228 lt!57795) (_2!1228 lt!57795)))))

(declare-fun e!73241 () Bool)

(assert (=> d!32119 e!73241))

(declare-fun res!55557 () Bool)

(assert (=> d!32119 (=> (not res!55557) (not e!73241))))

(assert (=> d!32119 (= res!55557 (isStrictlySorted!307 lt!57883))))

(assert (=> d!32119 (= (lemmaContainsTupThenGetReturnValue!76 lt!57883 (_1!1228 lt!57795) (_2!1228 lt!57795)) lt!58288)))

(declare-fun b!112676 () Bool)

(declare-fun res!55558 () Bool)

(assert (=> b!112676 (=> (not res!55558) (not e!73241))))

(assert (=> b!112676 (= res!55558 (containsKey!162 lt!57883 (_1!1228 lt!57795)))))

(declare-fun b!112677 () Bool)

(assert (=> b!112677 (= e!73241 (contains!842 lt!57883 (tuple2!2437 (_1!1228 lt!57795) (_2!1228 lt!57795))))))

(assert (= (and d!32119 res!55557) b!112676))

(assert (= (and b!112676 res!55558) b!112677))

(assert (=> d!32119 m!128039))

(declare-fun m!128859 () Bool)

(assert (=> d!32119 m!128859))

(declare-fun m!128861 () Bool)

(assert (=> d!32119 m!128861))

(declare-fun m!128863 () Bool)

(assert (=> b!112676 m!128863))

(declare-fun m!128865 () Bool)

(assert (=> b!112677 m!128865))

(assert (=> d!31899 d!32119))

(declare-fun bm!12092 () Bool)

(declare-fun call!12097 () List!1657)

(declare-fun call!12096 () List!1657)

(assert (=> bm!12092 (= call!12097 call!12096)))

(declare-fun c!20174 () Bool)

(declare-fun e!73242 () List!1657)

(declare-fun bm!12093 () Bool)

(assert (=> bm!12093 (= call!12096 ($colon$colon!83 e!73242 (ite c!20174 (h!2253 (toList!815 (+!151 lt!57790 lt!57800))) (tuple2!2437 (_1!1228 lt!57795) (_2!1228 lt!57795)))))))

(declare-fun c!20176 () Bool)

(assert (=> bm!12093 (= c!20176 c!20174)))

(declare-fun c!20175 () Bool)

(declare-fun b!112678 () Bool)

(assert (=> b!112678 (= c!20175 (and ((_ is Cons!1653) (toList!815 (+!151 lt!57790 lt!57800))) (bvsgt (_1!1228 (h!2253 (toList!815 (+!151 lt!57790 lt!57800)))) (_1!1228 lt!57795))))))

(declare-fun e!73246 () List!1657)

(declare-fun e!73243 () List!1657)

(assert (=> b!112678 (= e!73246 e!73243)))

(declare-fun b!112679 () Bool)

(declare-fun call!12095 () List!1657)

(assert (=> b!112679 (= e!73243 call!12095)))

(declare-fun d!32121 () Bool)

(declare-fun e!73245 () Bool)

(assert (=> d!32121 e!73245))

(declare-fun res!55559 () Bool)

(assert (=> d!32121 (=> (not res!55559) (not e!73245))))

(declare-fun lt!58289 () List!1657)

(assert (=> d!32121 (= res!55559 (isStrictlySorted!307 lt!58289))))

(declare-fun e!73244 () List!1657)

(assert (=> d!32121 (= lt!58289 e!73244)))

(assert (=> d!32121 (= c!20174 (and ((_ is Cons!1653) (toList!815 (+!151 lt!57790 lt!57800))) (bvslt (_1!1228 (h!2253 (toList!815 (+!151 lt!57790 lt!57800)))) (_1!1228 lt!57795))))))

(assert (=> d!32121 (isStrictlySorted!307 (toList!815 (+!151 lt!57790 lt!57800)))))

(assert (=> d!32121 (= (insertStrictlySorted!78 (toList!815 (+!151 lt!57790 lt!57800)) (_1!1228 lt!57795) (_2!1228 lt!57795)) lt!58289)))

(declare-fun b!112680 () Bool)

(assert (=> b!112680 (= e!73243 call!12095)))

(declare-fun b!112681 () Bool)

(assert (=> b!112681 (= e!73244 call!12096)))

(declare-fun b!112682 () Bool)

(assert (=> b!112682 (= e!73245 (contains!842 lt!58289 (tuple2!2437 (_1!1228 lt!57795) (_2!1228 lt!57795))))))

(declare-fun bm!12094 () Bool)

(assert (=> bm!12094 (= call!12095 call!12097)))

(declare-fun b!112683 () Bool)

(assert (=> b!112683 (= e!73244 e!73246)))

(declare-fun c!20173 () Bool)

(assert (=> b!112683 (= c!20173 (and ((_ is Cons!1653) (toList!815 (+!151 lt!57790 lt!57800))) (= (_1!1228 (h!2253 (toList!815 (+!151 lt!57790 lt!57800)))) (_1!1228 lt!57795))))))

(declare-fun b!112684 () Bool)

(assert (=> b!112684 (= e!73242 (insertStrictlySorted!78 (t!5827 (toList!815 (+!151 lt!57790 lt!57800))) (_1!1228 lt!57795) (_2!1228 lt!57795)))))

(declare-fun b!112685 () Bool)

(declare-fun res!55560 () Bool)

(assert (=> b!112685 (=> (not res!55560) (not e!73245))))

(assert (=> b!112685 (= res!55560 (containsKey!162 lt!58289 (_1!1228 lt!57795)))))

(declare-fun b!112686 () Bool)

(assert (=> b!112686 (= e!73242 (ite c!20173 (t!5827 (toList!815 (+!151 lt!57790 lt!57800))) (ite c!20175 (Cons!1653 (h!2253 (toList!815 (+!151 lt!57790 lt!57800))) (t!5827 (toList!815 (+!151 lt!57790 lt!57800)))) Nil!1654)))))

(declare-fun b!112687 () Bool)

(assert (=> b!112687 (= e!73246 call!12097)))

(assert (= (and d!32121 c!20174) b!112681))

(assert (= (and d!32121 (not c!20174)) b!112683))

(assert (= (and b!112683 c!20173) b!112687))

(assert (= (and b!112683 (not c!20173)) b!112678))

(assert (= (and b!112678 c!20175) b!112679))

(assert (= (and b!112678 (not c!20175)) b!112680))

(assert (= (or b!112679 b!112680) bm!12094))

(assert (= (or b!112687 bm!12094) bm!12092))

(assert (= (or b!112681 bm!12092) bm!12093))

(assert (= (and bm!12093 c!20176) b!112684))

(assert (= (and bm!12093 (not c!20176)) b!112686))

(assert (= (and d!32121 res!55559) b!112685))

(assert (= (and b!112685 res!55560) b!112682))

(declare-fun m!128867 () Bool)

(assert (=> bm!12093 m!128867))

(declare-fun m!128869 () Bool)

(assert (=> b!112685 m!128869))

(declare-fun m!128871 () Bool)

(assert (=> b!112682 m!128871))

(declare-fun m!128873 () Bool)

(assert (=> d!32121 m!128873))

(declare-fun m!128875 () Bool)

(assert (=> d!32121 m!128875))

(declare-fun m!128877 () Bool)

(assert (=> b!112684 m!128877))

(assert (=> d!31899 d!32121))

(declare-fun d!32123 () Bool)

(declare-fun isEmpty!386 (List!1657) Bool)

(assert (=> d!32123 (= (isEmpty!384 lt!57853) (isEmpty!386 (toList!815 lt!57853)))))

(declare-fun bs!4640 () Bool)

(assert (= bs!4640 d!32123))

(declare-fun m!128879 () Bool)

(assert (=> bs!4640 m!128879))

(assert (=> b!112042 d!32123))

(declare-fun d!32125 () Bool)

(declare-fun e!73248 () Bool)

(assert (=> d!32125 e!73248))

(declare-fun res!55561 () Bool)

(assert (=> d!32125 (=> res!55561 e!73248)))

(declare-fun lt!58290 () Bool)

(assert (=> d!32125 (= res!55561 (not lt!58290))))

(declare-fun lt!58293 () Bool)

(assert (=> d!32125 (= lt!58290 lt!58293)))

(declare-fun lt!58291 () Unit!3499)

(declare-fun e!73247 () Unit!3499)

(assert (=> d!32125 (= lt!58291 e!73247)))

(declare-fun c!20177 () Bool)

(assert (=> d!32125 (= c!20177 lt!58293)))

(assert (=> d!32125 (= lt!58293 (containsKey!162 (toList!815 e!72958) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> d!32125 (= (contains!841 e!72958 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) lt!58290)))

(declare-fun b!112688 () Bool)

(declare-fun lt!58292 () Unit!3499)

(assert (=> b!112688 (= e!73247 lt!58292)))

(assert (=> b!112688 (= lt!58292 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 e!72958) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> b!112688 (isDefined!112 (getValueByKey!158 (toList!815 e!72958) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun b!112689 () Bool)

(declare-fun Unit!3524 () Unit!3499)

(assert (=> b!112689 (= e!73247 Unit!3524)))

(declare-fun b!112690 () Bool)

(assert (=> b!112690 (= e!73248 (isDefined!112 (getValueByKey!158 (toList!815 e!72958) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355))))))

(assert (= (and d!32125 c!20177) b!112688))

(assert (= (and d!32125 (not c!20177)) b!112689))

(assert (= (and d!32125 (not res!55561)) b!112690))

(assert (=> d!32125 m!127849))

(declare-fun m!128881 () Bool)

(assert (=> d!32125 m!128881))

(assert (=> b!112688 m!127849))

(declare-fun m!128883 () Bool)

(assert (=> b!112688 m!128883))

(assert (=> b!112688 m!127849))

(declare-fun m!128885 () Bool)

(assert (=> b!112688 m!128885))

(assert (=> b!112688 m!128885))

(declare-fun m!128887 () Bool)

(assert (=> b!112688 m!128887))

(assert (=> b!112690 m!127849))

(assert (=> b!112690 m!128885))

(assert (=> b!112690 m!128885))

(assert (=> b!112690 m!128887))

(assert (=> bm!12012 d!32125))

(assert (=> b!112294 d!31975))

(declare-fun b!112691 () Bool)

(declare-fun e!73258 () Bool)

(declare-fun e!73255 () Bool)

(assert (=> b!112691 (= e!73258 e!73255)))

(declare-fun c!20180 () Bool)

(assert (=> b!112691 (= c!20180 (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!12095 () Bool)

(declare-fun call!12098 () Bool)

(declare-fun lt!58311 () ListLongMap!1599)

(assert (=> bm!12095 (= call!12098 (contains!841 lt!58311 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12096 () Bool)

(declare-fun call!12100 () Bool)

(assert (=> bm!12096 (= call!12100 (contains!841 lt!58311 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!112692 () Bool)

(declare-fun e!73253 () Bool)

(assert (=> b!112692 (= e!73253 (validKeyInArray!0 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun call!12101 () ListLongMap!1599)

(declare-fun bm!12097 () Bool)

(assert (=> bm!12097 (= call!12101 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (ite (or c!20052 c!20051) (_values!2631 newMap!16) lt!57985) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun b!112693 () Bool)

(declare-fun e!73259 () ListLongMap!1599)

(declare-fun call!12104 () ListLongMap!1599)

(assert (=> b!112693 (= e!73259 call!12104)))

(declare-fun b!112694 () Bool)

(declare-fun res!55568 () Bool)

(assert (=> b!112694 (=> (not res!55568) (not e!73258))))

(declare-fun e!73260 () Bool)

(assert (=> b!112694 (= res!55568 e!73260)))

(declare-fun res!55562 () Bool)

(assert (=> b!112694 (=> res!55562 e!73260)))

(assert (=> b!112694 (= res!55562 (not e!73253))))

(declare-fun res!55566 () Bool)

(assert (=> b!112694 (=> (not res!55566) (not e!73253))))

(assert (=> b!112694 (= res!55566 (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(declare-fun b!112695 () Bool)

(declare-fun e!73251 () ListLongMap!1599)

(declare-fun call!12099 () ListLongMap!1599)

(assert (=> b!112695 (= e!73251 call!12099)))

(declare-fun bm!12098 () Bool)

(declare-fun call!12102 () ListLongMap!1599)

(declare-fun c!20181 () Bool)

(declare-fun call!12103 () ListLongMap!1599)

(declare-fun c!20179 () Bool)

(assert (=> bm!12098 (= call!12102 (+!151 (ite c!20181 call!12101 (ite c!20179 call!12103 call!12104)) (ite (or c!20181 c!20179) (tuple2!2437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2517 newMap!16)) (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 newMap!16)))))))

(declare-fun b!112696 () Bool)

(declare-fun e!73254 () Bool)

(assert (=> b!112696 (= e!73254 (not call!12100))))

(declare-fun b!112697 () Bool)

(declare-fun e!73256 () Unit!3499)

(declare-fun Unit!3525 () Unit!3499)

(assert (=> b!112697 (= e!73256 Unit!3525)))

(declare-fun b!112698 () Bool)

(assert (=> b!112698 (= e!73259 call!12099)))

(declare-fun b!112699 () Bool)

(declare-fun e!73252 () Bool)

(assert (=> b!112699 (= e!73252 (= (apply!101 lt!58311 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2517 newMap!16)))))

(declare-fun b!112700 () Bool)

(declare-fun e!73249 () ListLongMap!1599)

(assert (=> b!112700 (= e!73249 e!73251)))

(assert (=> b!112700 (= c!20179 (and (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!112701 () Bool)

(assert (=> b!112701 (= e!73249 (+!151 call!12102 (tuple2!2437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2517 newMap!16))))))

(declare-fun bm!12099 () Bool)

(assert (=> bm!12099 (= call!12103 call!12101)))

(declare-fun d!32127 () Bool)

(assert (=> d!32127 e!73258))

(declare-fun res!55563 () Bool)

(assert (=> d!32127 (=> (not res!55563) (not e!73258))))

(assert (=> d!32127 (= res!55563 (or (bvsge #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))))

(declare-fun lt!58315 () ListLongMap!1599)

(assert (=> d!32127 (= lt!58311 lt!58315)))

(declare-fun lt!58309 () Unit!3499)

(assert (=> d!32127 (= lt!58309 e!73256)))

(declare-fun c!20183 () Bool)

(declare-fun e!73257 () Bool)

(assert (=> d!32127 (= c!20183 e!73257)))

(declare-fun res!55569 () Bool)

(assert (=> d!32127 (=> (not res!55569) (not e!73257))))

(assert (=> d!32127 (= res!55569 (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(assert (=> d!32127 (= lt!58315 e!73249)))

(assert (=> d!32127 (= c!20181 (and (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!32127 (validMask!0 (mask!6826 newMap!16))))

(assert (=> d!32127 (= (getCurrentListMap!491 (_keys!4366 newMap!16) (ite (or c!20052 c!20051) (_values!2631 newMap!16) lt!57985) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)) lt!58311)))

(declare-fun b!112702 () Bool)

(assert (=> b!112702 (= e!73255 (not call!12098))))

(declare-fun b!112703 () Bool)

(declare-fun e!73250 () Bool)

(assert (=> b!112703 (= e!73250 (= (apply!101 lt!58311 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)) (get!1362 (select (arr!2087 (ite (or c!20052 c!20051) (_values!2631 newMap!16) lt!57985)) #b00000000000000000000000000000000) (dynLambda!394 (defaultEntry!2648 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!112703 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2345 (ite (or c!20052 c!20051) (_values!2631 newMap!16) lt!57985))))))

(assert (=> b!112703 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(declare-fun b!112704 () Bool)

(declare-fun lt!58295 () Unit!3499)

(assert (=> b!112704 (= e!73256 lt!58295)))

(declare-fun lt!58297 () ListLongMap!1599)

(assert (=> b!112704 (= lt!58297 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (ite (or c!20052 c!20051) (_values!2631 newMap!16) lt!57985) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58298 () (_ BitVec 64))

(assert (=> b!112704 (= lt!58298 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58304 () (_ BitVec 64))

(assert (=> b!112704 (= lt!58304 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58294 () Unit!3499)

(assert (=> b!112704 (= lt!58294 (addStillContains!77 lt!58297 lt!58298 (zeroValue!2517 newMap!16) lt!58304))))

(assert (=> b!112704 (contains!841 (+!151 lt!58297 (tuple2!2437 lt!58298 (zeroValue!2517 newMap!16))) lt!58304)))

(declare-fun lt!58312 () Unit!3499)

(assert (=> b!112704 (= lt!58312 lt!58294)))

(declare-fun lt!58303 () ListLongMap!1599)

(assert (=> b!112704 (= lt!58303 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (ite (or c!20052 c!20051) (_values!2631 newMap!16) lt!57985) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58299 () (_ BitVec 64))

(assert (=> b!112704 (= lt!58299 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58310 () (_ BitVec 64))

(assert (=> b!112704 (= lt!58310 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58308 () Unit!3499)

(assert (=> b!112704 (= lt!58308 (addApplyDifferent!77 lt!58303 lt!58299 (minValue!2517 newMap!16) lt!58310))))

(assert (=> b!112704 (= (apply!101 (+!151 lt!58303 (tuple2!2437 lt!58299 (minValue!2517 newMap!16))) lt!58310) (apply!101 lt!58303 lt!58310))))

(declare-fun lt!58305 () Unit!3499)

(assert (=> b!112704 (= lt!58305 lt!58308)))

(declare-fun lt!58314 () ListLongMap!1599)

(assert (=> b!112704 (= lt!58314 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (ite (or c!20052 c!20051) (_values!2631 newMap!16) lt!57985) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58313 () (_ BitVec 64))

(assert (=> b!112704 (= lt!58313 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58301 () (_ BitVec 64))

(assert (=> b!112704 (= lt!58301 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58300 () Unit!3499)

(assert (=> b!112704 (= lt!58300 (addApplyDifferent!77 lt!58314 lt!58313 (zeroValue!2517 newMap!16) lt!58301))))

(assert (=> b!112704 (= (apply!101 (+!151 lt!58314 (tuple2!2437 lt!58313 (zeroValue!2517 newMap!16))) lt!58301) (apply!101 lt!58314 lt!58301))))

(declare-fun lt!58306 () Unit!3499)

(assert (=> b!112704 (= lt!58306 lt!58300)))

(declare-fun lt!58296 () ListLongMap!1599)

(assert (=> b!112704 (= lt!58296 (getCurrentListMapNoExtraKeys!118 (_keys!4366 newMap!16) (ite (or c!20052 c!20051) (_values!2631 newMap!16) lt!57985) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58307 () (_ BitVec 64))

(assert (=> b!112704 (= lt!58307 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!58302 () (_ BitVec 64))

(assert (=> b!112704 (= lt!58302 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!112704 (= lt!58295 (addApplyDifferent!77 lt!58296 lt!58307 (minValue!2517 newMap!16) lt!58302))))

(assert (=> b!112704 (= (apply!101 (+!151 lt!58296 (tuple2!2437 lt!58307 (minValue!2517 newMap!16))) lt!58302) (apply!101 lt!58296 lt!58302))))

(declare-fun b!112705 () Bool)

(assert (=> b!112705 (= e!73260 e!73250)))

(declare-fun res!55565 () Bool)

(assert (=> b!112705 (=> (not res!55565) (not e!73250))))

(assert (=> b!112705 (= res!55565 (contains!841 lt!58311 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!112705 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(declare-fun bm!12100 () Bool)

(assert (=> bm!12100 (= call!12104 call!12103)))

(declare-fun b!112706 () Bool)

(declare-fun c!20178 () Bool)

(assert (=> b!112706 (= c!20178 (and (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!112706 (= e!73251 e!73259)))

(declare-fun b!112707 () Bool)

(declare-fun e!73261 () Bool)

(assert (=> b!112707 (= e!73255 e!73261)))

(declare-fun res!55564 () Bool)

(assert (=> b!112707 (= res!55564 call!12098)))

(assert (=> b!112707 (=> (not res!55564) (not e!73261))))

(declare-fun b!112708 () Bool)

(assert (=> b!112708 (= e!73257 (validKeyInArray!0 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!112709 () Bool)

(assert (=> b!112709 (= e!73254 e!73252)))

(declare-fun res!55567 () Bool)

(assert (=> b!112709 (= res!55567 call!12100)))

(assert (=> b!112709 (=> (not res!55567) (not e!73252))))

(declare-fun bm!12101 () Bool)

(assert (=> bm!12101 (= call!12099 call!12102)))

(declare-fun b!112710 () Bool)

(assert (=> b!112710 (= e!73261 (= (apply!101 lt!58311 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2517 newMap!16)))))

(declare-fun b!112711 () Bool)

(declare-fun res!55570 () Bool)

(assert (=> b!112711 (=> (not res!55570) (not e!73258))))

(assert (=> b!112711 (= res!55570 e!73254)))

(declare-fun c!20182 () Bool)

(assert (=> b!112711 (= c!20182 (not (= (bvand (extraKeys!2441 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!32127 c!20181) b!112701))

(assert (= (and d!32127 (not c!20181)) b!112700))

(assert (= (and b!112700 c!20179) b!112695))

(assert (= (and b!112700 (not c!20179)) b!112706))

(assert (= (and b!112706 c!20178) b!112698))

(assert (= (and b!112706 (not c!20178)) b!112693))

(assert (= (or b!112698 b!112693) bm!12100))

(assert (= (or b!112695 bm!12100) bm!12099))

(assert (= (or b!112695 b!112698) bm!12101))

(assert (= (or b!112701 bm!12099) bm!12097))

(assert (= (or b!112701 bm!12101) bm!12098))

(assert (= (and d!32127 res!55569) b!112708))

(assert (= (and d!32127 c!20183) b!112704))

(assert (= (and d!32127 (not c!20183)) b!112697))

(assert (= (and d!32127 res!55563) b!112694))

(assert (= (and b!112694 res!55566) b!112692))

(assert (= (and b!112694 (not res!55562)) b!112705))

(assert (= (and b!112705 res!55565) b!112703))

(assert (= (and b!112694 res!55568) b!112711))

(assert (= (and b!112711 c!20182) b!112709))

(assert (= (and b!112711 (not c!20182)) b!112696))

(assert (= (and b!112709 res!55567) b!112699))

(assert (= (or b!112709 b!112696) bm!12096))

(assert (= (and b!112711 res!55570) b!112691))

(assert (= (and b!112691 c!20180) b!112707))

(assert (= (and b!112691 (not c!20180)) b!112702))

(assert (= (and b!112707 res!55564) b!112710))

(assert (= (or b!112707 b!112702) bm!12095))

(declare-fun b_lambda!5067 () Bool)

(assert (=> (not b_lambda!5067) (not b!112703)))

(assert (=> b!112703 t!5834))

(declare-fun b_and!6937 () Bool)

(assert (= b_and!6933 (and (=> t!5834 result!3577) b_and!6937)))

(assert (=> b!112703 t!5836))

(declare-fun b_and!6939 () Bool)

(assert (= b_and!6935 (and (=> t!5836 result!3579) b_and!6939)))

(declare-fun m!128889 () Bool)

(assert (=> b!112704 m!128889))

(assert (=> b!112704 m!128319))

(declare-fun m!128891 () Bool)

(assert (=> b!112704 m!128891))

(declare-fun m!128893 () Bool)

(assert (=> b!112704 m!128893))

(declare-fun m!128895 () Bool)

(assert (=> b!112704 m!128895))

(declare-fun m!128897 () Bool)

(assert (=> b!112704 m!128897))

(declare-fun m!128899 () Bool)

(assert (=> b!112704 m!128899))

(declare-fun m!128901 () Bool)

(assert (=> b!112704 m!128901))

(declare-fun m!128903 () Bool)

(assert (=> b!112704 m!128903))

(declare-fun m!128905 () Bool)

(assert (=> b!112704 m!128905))

(declare-fun m!128907 () Bool)

(assert (=> b!112704 m!128907))

(declare-fun m!128909 () Bool)

(assert (=> b!112704 m!128909))

(assert (=> b!112704 m!128889))

(declare-fun m!128911 () Bool)

(assert (=> b!112704 m!128911))

(assert (=> b!112704 m!128893))

(assert (=> b!112704 m!128907))

(declare-fun m!128913 () Bool)

(assert (=> b!112704 m!128913))

(assert (=> b!112704 m!128899))

(declare-fun m!128915 () Bool)

(assert (=> b!112704 m!128915))

(declare-fun m!128917 () Bool)

(assert (=> b!112704 m!128917))

(declare-fun m!128919 () Bool)

(assert (=> b!112704 m!128919))

(declare-fun m!128921 () Bool)

(assert (=> bm!12098 m!128921))

(declare-fun m!128923 () Bool)

(assert (=> b!112701 m!128923))

(declare-fun m!128925 () Bool)

(assert (=> b!112710 m!128925))

(assert (=> b!112703 m!128357))

(assert (=> b!112703 m!128319))

(declare-fun m!128927 () Bool)

(assert (=> b!112703 m!128927))

(assert (=> b!112703 m!128319))

(declare-fun m!128929 () Bool)

(assert (=> b!112703 m!128929))

(assert (=> b!112703 m!128927))

(assert (=> b!112703 m!128357))

(declare-fun m!128931 () Bool)

(assert (=> b!112703 m!128931))

(assert (=> b!112692 m!128319))

(assert (=> b!112692 m!128319))

(assert (=> b!112692 m!128365))

(assert (=> bm!12097 m!128891))

(assert (=> d!32127 m!128241))

(assert (=> b!112708 m!128319))

(assert (=> b!112708 m!128319))

(assert (=> b!112708 m!128365))

(declare-fun m!128933 () Bool)

(assert (=> b!112699 m!128933))

(declare-fun m!128935 () Bool)

(assert (=> bm!12095 m!128935))

(declare-fun m!128937 () Bool)

(assert (=> bm!12096 m!128937))

(assert (=> b!112705 m!128319))

(assert (=> b!112705 m!128319))

(declare-fun m!128939 () Bool)

(assert (=> b!112705 m!128939))

(assert (=> bm!12025 d!32127))

(declare-fun b!112712 () Bool)

(declare-fun e!73262 () Option!164)

(assert (=> b!112712 (= e!73262 (Some!163 (_2!1228 (h!2253 (toList!815 lt!57881)))))))

(declare-fun b!112715 () Bool)

(declare-fun e!73263 () Option!164)

(assert (=> b!112715 (= e!73263 None!162)))

(declare-fun d!32129 () Bool)

(declare-fun c!20184 () Bool)

(assert (=> d!32129 (= c!20184 (and ((_ is Cons!1653) (toList!815 lt!57881)) (= (_1!1228 (h!2253 (toList!815 lt!57881))) (_1!1228 lt!57795))))))

(assert (=> d!32129 (= (getValueByKey!158 (toList!815 lt!57881) (_1!1228 lt!57795)) e!73262)))

(declare-fun b!112713 () Bool)

(assert (=> b!112713 (= e!73262 e!73263)))

(declare-fun c!20185 () Bool)

(assert (=> b!112713 (= c!20185 (and ((_ is Cons!1653) (toList!815 lt!57881)) (not (= (_1!1228 (h!2253 (toList!815 lt!57881))) (_1!1228 lt!57795)))))))

(declare-fun b!112714 () Bool)

(assert (=> b!112714 (= e!73263 (getValueByKey!158 (t!5827 (toList!815 lt!57881)) (_1!1228 lt!57795)))))

(assert (= (and d!32129 c!20184) b!112712))

(assert (= (and d!32129 (not c!20184)) b!112713))

(assert (= (and b!112713 c!20185) b!112714))

(assert (= (and b!112713 (not c!20185)) b!112715))

(declare-fun m!128941 () Bool)

(assert (=> b!112714 m!128941))

(assert (=> b!112060 d!32129))

(declare-fun b!112716 () Bool)

(declare-fun e!73265 () Bool)

(declare-fun e!73266 () Bool)

(assert (=> b!112716 (= e!73265 e!73266)))

(declare-fun lt!58318 () (_ BitVec 64))

(assert (=> b!112716 (= lt!58318 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!58316 () Unit!3499)

(assert (=> b!112716 (= lt!58316 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) lt!58318 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!112716 (arrayContainsKey!0 (_keys!4366 (v!2945 (underlying!373 thiss!992))) lt!58318 #b00000000000000000000000000000000)))

(declare-fun lt!58317 () Unit!3499)

(assert (=> b!112716 (= lt!58317 lt!58316)))

(declare-fun res!55571 () Bool)

(assert (=> b!112716 (= res!55571 (= (seekEntryOrOpen!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4366 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992)))) (Found!272 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!112716 (=> (not res!55571) (not e!73266))))

(declare-fun b!112717 () Bool)

(declare-fun call!12105 () Bool)

(assert (=> b!112717 (= e!73265 call!12105)))

(declare-fun bm!12102 () Bool)

(assert (=> bm!12102 (= call!12105 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4366 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992)))))))

(declare-fun d!32131 () Bool)

(declare-fun res!55572 () Bool)

(declare-fun e!73264 () Bool)

(assert (=> d!32131 (=> res!55572 e!73264)))

(assert (=> d!32131 (= res!55572 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2344 (_keys!4366 (v!2945 (underlying!373 thiss!992))))))))

(assert (=> d!32131 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4366 (v!2945 (underlying!373 thiss!992))) (mask!6826 (v!2945 (underlying!373 thiss!992)))) e!73264)))

(declare-fun b!112718 () Bool)

(assert (=> b!112718 (= e!73264 e!73265)))

(declare-fun c!20186 () Bool)

(assert (=> b!112718 (= c!20186 (validKeyInArray!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!112719 () Bool)

(assert (=> b!112719 (= e!73266 call!12105)))

(assert (= (and d!32131 (not res!55572)) b!112718))

(assert (= (and b!112718 c!20186) b!112716))

(assert (= (and b!112718 (not c!20186)) b!112717))

(assert (= (and b!112716 res!55571) b!112719))

(assert (= (or b!112719 b!112717) bm!12102))

(declare-fun m!128943 () Bool)

(assert (=> b!112716 m!128943))

(declare-fun m!128945 () Bool)

(assert (=> b!112716 m!128945))

(declare-fun m!128947 () Bool)

(assert (=> b!112716 m!128947))

(assert (=> b!112716 m!128943))

(declare-fun m!128949 () Bool)

(assert (=> b!112716 m!128949))

(declare-fun m!128951 () Bool)

(assert (=> bm!12102 m!128951))

(assert (=> b!112718 m!128943))

(assert (=> b!112718 m!128943))

(declare-fun m!128953 () Bool)

(assert (=> b!112718 m!128953))

(assert (=> bm!11957 d!32131))

(declare-fun d!32133 () Bool)

(declare-fun res!55584 () Bool)

(declare-fun e!73269 () Bool)

(assert (=> d!32133 (=> (not res!55584) (not e!73269))))

(assert (=> d!32133 (= res!55584 (validMask!0 (mask!6826 newMap!16)))))

(assert (=> d!32133 (= (simpleValid!76 newMap!16) e!73269)))

(declare-fun b!112731 () Bool)

(assert (=> b!112731 (= e!73269 (and (bvsge (extraKeys!2441 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2441 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!511 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!112730 () Bool)

(declare-fun res!55583 () Bool)

(assert (=> b!112730 (=> (not res!55583) (not e!73269))))

(declare-fun size!2348 (LongMapFixedSize!924) (_ BitVec 32))

(assert (=> b!112730 (= res!55583 (= (size!2348 newMap!16) (bvadd (_size!511 newMap!16) (bvsdiv (bvadd (extraKeys!2441 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!112728 () Bool)

(declare-fun res!55582 () Bool)

(assert (=> b!112728 (=> (not res!55582) (not e!73269))))

(assert (=> b!112728 (= res!55582 (and (= (size!2345 (_values!2631 newMap!16)) (bvadd (mask!6826 newMap!16) #b00000000000000000000000000000001)) (= (size!2344 (_keys!4366 newMap!16)) (size!2345 (_values!2631 newMap!16))) (bvsge (_size!511 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!511 newMap!16) (bvadd (mask!6826 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!112729 () Bool)

(declare-fun res!55581 () Bool)

(assert (=> b!112729 (=> (not res!55581) (not e!73269))))

(assert (=> b!112729 (= res!55581 (bvsge (size!2348 newMap!16) (_size!511 newMap!16)))))

(assert (= (and d!32133 res!55584) b!112728))

(assert (= (and b!112728 res!55582) b!112729))

(assert (= (and b!112729 res!55581) b!112730))

(assert (= (and b!112730 res!55583) b!112731))

(assert (=> d!32133 m!128241))

(declare-fun m!128955 () Bool)

(assert (=> b!112730 m!128955))

(assert (=> b!112729 m!128955))

(assert (=> d!31927 d!32133))

(declare-fun d!32135 () Bool)

(declare-fun e!73270 () Bool)

(assert (=> d!32135 e!73270))

(declare-fun res!55585 () Bool)

(assert (=> d!32135 (=> (not res!55585) (not e!73270))))

(declare-fun lt!58319 () ListLongMap!1599)

(assert (=> d!32135 (= res!55585 (contains!841 lt!58319 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(declare-fun lt!58321 () List!1657)

(assert (=> d!32135 (= lt!58319 (ListLongMap!1600 lt!58321))))

(declare-fun lt!58320 () Unit!3499)

(declare-fun lt!58322 () Unit!3499)

(assert (=> d!32135 (= lt!58320 lt!58322)))

(assert (=> d!32135 (= (getValueByKey!158 lt!58321 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))) (Some!163 (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(assert (=> d!32135 (= lt!58322 (lemmaContainsTupThenGetReturnValue!76 lt!58321 (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(assert (=> d!32135 (= lt!58321 (insertStrictlySorted!78 (toList!815 call!12021) (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(assert (=> d!32135 (= (+!151 call!12021 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) lt!58319)))

(declare-fun b!112732 () Bool)

(declare-fun res!55586 () Bool)

(assert (=> b!112732 (=> (not res!55586) (not e!73270))))

(assert (=> b!112732 (= res!55586 (= (getValueByKey!158 (toList!815 lt!58319) (_1!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))) (Some!163 (_2!1228 (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))))

(declare-fun b!112733 () Bool)

(assert (=> b!112733 (= e!73270 (contains!842 (toList!815 lt!58319) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)))))

(assert (= (and d!32135 res!55585) b!112732))

(assert (= (and b!112732 res!55586) b!112733))

(declare-fun m!128957 () Bool)

(assert (=> d!32135 m!128957))

(declare-fun m!128959 () Bool)

(assert (=> d!32135 m!128959))

(declare-fun m!128961 () Bool)

(assert (=> d!32135 m!128961))

(declare-fun m!128963 () Bool)

(assert (=> d!32135 m!128963))

(declare-fun m!128965 () Bool)

(assert (=> b!112732 m!128965))

(declare-fun m!128967 () Bool)

(assert (=> b!112733 m!128967))

(assert (=> b!112209 d!32135))

(declare-fun b!112734 () Bool)

(declare-fun e!73271 () Option!164)

(assert (=> b!112734 (= e!73271 (Some!163 (_2!1228 (h!2253 (toList!815 lt!57877)))))))

(declare-fun b!112737 () Bool)

(declare-fun e!73272 () Option!164)

(assert (=> b!112737 (= e!73272 None!162)))

(declare-fun d!32137 () Bool)

(declare-fun c!20187 () Bool)

(assert (=> d!32137 (= c!20187 (and ((_ is Cons!1653) (toList!815 lt!57877)) (= (_1!1228 (h!2253 (toList!815 lt!57877))) (_1!1228 lt!57795))))))

(assert (=> d!32137 (= (getValueByKey!158 (toList!815 lt!57877) (_1!1228 lt!57795)) e!73271)))

(declare-fun b!112735 () Bool)

(assert (=> b!112735 (= e!73271 e!73272)))

(declare-fun c!20188 () Bool)

(assert (=> b!112735 (= c!20188 (and ((_ is Cons!1653) (toList!815 lt!57877)) (not (= (_1!1228 (h!2253 (toList!815 lt!57877))) (_1!1228 lt!57795)))))))

(declare-fun b!112736 () Bool)

(assert (=> b!112736 (= e!73272 (getValueByKey!158 (t!5827 (toList!815 lt!57877)) (_1!1228 lt!57795)))))

(assert (= (and d!32137 c!20187) b!112734))

(assert (= (and d!32137 (not c!20187)) b!112735))

(assert (= (and b!112735 c!20188) b!112736))

(assert (= (and b!112735 (not c!20188)) b!112737))

(declare-fun m!128969 () Bool)

(assert (=> b!112736 m!128969))

(assert (=> b!112058 d!32137))

(declare-fun d!32139 () Bool)

(declare-fun e!73274 () Bool)

(assert (=> d!32139 e!73274))

(declare-fun res!55587 () Bool)

(assert (=> d!32139 (=> res!55587 e!73274)))

(declare-fun lt!58323 () Bool)

(assert (=> d!32139 (= res!55587 (not lt!58323))))

(declare-fun lt!58326 () Bool)

(assert (=> d!32139 (= lt!58323 lt!58326)))

(declare-fun lt!58324 () Unit!3499)

(declare-fun e!73273 () Unit!3499)

(assert (=> d!32139 (= lt!58324 e!73273)))

(declare-fun c!20189 () Bool)

(assert (=> d!32139 (= c!20189 lt!58326)))

(assert (=> d!32139 (= lt!58326 (containsKey!162 (toList!815 lt!58057) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32139 (= (contains!841 lt!58057 #b1000000000000000000000000000000000000000000000000000000000000000) lt!58323)))

(declare-fun b!112738 () Bool)

(declare-fun lt!58325 () Unit!3499)

(assert (=> b!112738 (= e!73273 lt!58325)))

(assert (=> b!112738 (= lt!58325 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 lt!58057) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!112738 (isDefined!112 (getValueByKey!158 (toList!815 lt!58057) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!112739 () Bool)

(declare-fun Unit!3526 () Unit!3499)

(assert (=> b!112739 (= e!73273 Unit!3526)))

(declare-fun b!112740 () Bool)

(assert (=> b!112740 (= e!73274 (isDefined!112 (getValueByKey!158 (toList!815 lt!58057) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32139 c!20189) b!112738))

(assert (= (and d!32139 (not c!20189)) b!112739))

(assert (= (and d!32139 (not res!55587)) b!112740))

(declare-fun m!128971 () Bool)

(assert (=> d!32139 m!128971))

(declare-fun m!128973 () Bool)

(assert (=> b!112738 m!128973))

(assert (=> b!112738 m!128281))

(assert (=> b!112738 m!128281))

(declare-fun m!128975 () Bool)

(assert (=> b!112738 m!128975))

(assert (=> b!112740 m!128281))

(assert (=> b!112740 m!128281))

(assert (=> b!112740 m!128975))

(assert (=> bm!12044 d!32139))

(declare-fun b!112741 () Bool)

(declare-fun e!73276 () Bool)

(declare-fun e!73277 () Bool)

(assert (=> b!112741 (= e!73276 e!73277)))

(declare-fun lt!58329 () (_ BitVec 64))

(assert (=> b!112741 (= lt!58329 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!58327 () Unit!3499)

(assert (=> b!112741 (= lt!58327 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4366 newMap!16) lt!58329 #b00000000000000000000000000000000))))

(assert (=> b!112741 (arrayContainsKey!0 (_keys!4366 newMap!16) lt!58329 #b00000000000000000000000000000000)))

(declare-fun lt!58328 () Unit!3499)

(assert (=> b!112741 (= lt!58328 lt!58327)))

(declare-fun res!55588 () Bool)

(assert (=> b!112741 (= res!55588 (= (seekEntryOrOpen!0 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000) (_keys!4366 newMap!16) (mask!6826 newMap!16)) (Found!272 #b00000000000000000000000000000000)))))

(assert (=> b!112741 (=> (not res!55588) (not e!73277))))

(declare-fun b!112742 () Bool)

(declare-fun call!12106 () Bool)

(assert (=> b!112742 (= e!73276 call!12106)))

(declare-fun bm!12103 () Bool)

(assert (=> bm!12103 (= call!12106 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4366 newMap!16) (mask!6826 newMap!16)))))

(declare-fun d!32141 () Bool)

(declare-fun res!55589 () Bool)

(declare-fun e!73275 () Bool)

(assert (=> d!32141 (=> res!55589 e!73275)))

(assert (=> d!32141 (= res!55589 (bvsge #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))))))

(assert (=> d!32141 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4366 newMap!16) (mask!6826 newMap!16)) e!73275)))

(declare-fun b!112743 () Bool)

(assert (=> b!112743 (= e!73275 e!73276)))

(declare-fun c!20190 () Bool)

(assert (=> b!112743 (= c!20190 (validKeyInArray!0 (select (arr!2086 (_keys!4366 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!112744 () Bool)

(assert (=> b!112744 (= e!73277 call!12106)))

(assert (= (and d!32141 (not res!55589)) b!112743))

(assert (= (and b!112743 c!20190) b!112741))

(assert (= (and b!112743 (not c!20190)) b!112742))

(assert (= (and b!112741 res!55588) b!112744))

(assert (= (or b!112744 b!112742) bm!12103))

(assert (=> b!112741 m!128319))

(declare-fun m!128977 () Bool)

(assert (=> b!112741 m!128977))

(declare-fun m!128979 () Bool)

(assert (=> b!112741 m!128979))

(assert (=> b!112741 m!128319))

(declare-fun m!128981 () Bool)

(assert (=> b!112741 m!128981))

(declare-fun m!128983 () Bool)

(assert (=> bm!12103 m!128983))

(assert (=> b!112743 m!128319))

(assert (=> b!112743 m!128319))

(assert (=> b!112743 m!128365))

(assert (=> b!112249 d!32141))

(declare-fun d!32143 () Bool)

(declare-fun e!73294 () Bool)

(assert (=> d!32143 e!73294))

(declare-fun res!55616 () Bool)

(assert (=> d!32143 (=> (not res!55616) (not e!73294))))

(declare-fun lt!58390 () tuple2!2438)

(assert (=> d!32143 (= res!55616 (_1!1229 lt!58390))))

(assert (=> d!32143 (= lt!58390 (tuple2!2439 true (LongMapFixedSize!925 (defaultEntry!2648 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (bvadd (_size!511 newMap!16) #b00000000000000000000000000000001) (array!4403 (store (arr!2086 (_keys!4366 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) (size!2344 (_keys!4366 newMap!16))) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16))) (_vacant!511 newMap!16))))))

(declare-fun lt!58406 () Unit!3499)

(declare-fun lt!58399 () Unit!3499)

(assert (=> d!32143 (= lt!58406 lt!58399)))

(declare-fun lt!58409 () array!4402)

(declare-fun lt!58405 () array!4404)

(assert (=> d!32143 (contains!841 (getCurrentListMap!491 lt!58409 lt!58405 (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)) (select (store (arr!2086 (_keys!4366 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974))))))

(assert (=> d!32143 (= lt!58399 (lemmaValidKeyInArrayIsInListMap!108 lt!58409 lt!58405 (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (defaultEntry!2648 newMap!16)))))

(assert (=> d!32143 (= lt!58405 (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16))))))

(assert (=> d!32143 (= lt!58409 (array!4403 (store (arr!2086 (_keys!4366 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) (size!2344 (_keys!4366 newMap!16))))))

(declare-fun lt!58416 () Unit!3499)

(declare-fun lt!58393 () Unit!3499)

(assert (=> d!32143 (= lt!58416 lt!58393)))

(declare-fun lt!58395 () array!4402)

(assert (=> d!32143 (= (arrayCountValidKeys!0 lt!58395 (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (bvadd (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4402 (_ BitVec 32)) Unit!3499)

(assert (=> d!32143 (= lt!58393 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!58395 (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974))))))

(assert (=> d!32143 (= lt!58395 (array!4403 (store (arr!2086 (_keys!4366 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) (size!2344 (_keys!4366 newMap!16))))))

(declare-fun lt!58412 () Unit!3499)

(declare-fun lt!58417 () Unit!3499)

(assert (=> d!32143 (= lt!58412 lt!58417)))

(declare-fun lt!58415 () array!4402)

(assert (=> d!32143 (arrayContainsKey!0 lt!58415 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!32143 (= lt!58417 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!58415 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974))))))

(assert (=> d!32143 (= lt!58415 (array!4403 (store (arr!2086 (_keys!4366 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) (size!2344 (_keys!4366 newMap!16))))))

(declare-fun lt!58400 () Unit!3499)

(declare-fun lt!58413 () Unit!3499)

(assert (=> d!32143 (= lt!58400 lt!58413)))

(assert (=> d!32143 (= (+!151 (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797)) (getCurrentListMap!491 (array!4403 (store (arr!2086 (_keys!4366 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) (size!2344 (_keys!4366 newMap!16))) (array!4405 (store (arr!2087 (_values!2631 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (ValueCellFull!1008 lt!57797)) (size!2345 (_values!2631 newMap!16))) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!33 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 32) (_ BitVec 64) V!3251 Int) Unit!3499)

(assert (=> d!32143 (= lt!58413 (lemmaAddValidKeyToArrayThenAddPairToListMap!33 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797 (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58394 () Unit!3499)

(declare-fun lt!58408 () Unit!3499)

(assert (=> d!32143 (= lt!58394 lt!58408)))

(assert (=> d!32143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4403 (store (arr!2086 (_keys!4366 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) (size!2344 (_keys!4366 newMap!16))) (mask!6826 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4402 (_ BitVec 32) (_ BitVec 32)) Unit!3499)

(assert (=> d!32143 (= lt!58408 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (_keys!4366 newMap!16) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (mask!6826 newMap!16)))))

(declare-fun lt!58396 () Unit!3499)

(declare-fun lt!58403 () Unit!3499)

(assert (=> d!32143 (= lt!58396 lt!58403)))

(assert (=> d!32143 (= (arrayCountValidKeys!0 (array!4403 (store (arr!2086 (_keys!4366 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) (size!2344 (_keys!4366 newMap!16))) #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4366 newMap!16) #b00000000000000000000000000000000 (size!2344 (_keys!4366 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4402 (_ BitVec 32) (_ BitVec 64)) Unit!3499)

(assert (=> d!32143 (= lt!58403 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4366 newMap!16) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun lt!58397 () Unit!3499)

(declare-fun lt!58418 () Unit!3499)

(assert (=> d!32143 (= lt!58397 lt!58418)))

(declare-fun lt!58391 () List!1656)

(declare-fun lt!58407 () (_ BitVec 32))

(assert (=> d!32143 (arrayNoDuplicates!0 (array!4403 (store (arr!2086 (_keys!4366 newMap!16)) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) (size!2344 (_keys!4366 newMap!16))) lt!58407 lt!58391)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4402 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1656) Unit!3499)

(assert (=> d!32143 (= lt!58418 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4366 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974)) lt!58407 lt!58391))))

(assert (=> d!32143 (= lt!58391 Nil!1653)))

(assert (=> d!32143 (= lt!58407 #b00000000000000000000000000000000)))

(declare-fun lt!58411 () Unit!3499)

(declare-fun e!73296 () Unit!3499)

(assert (=> d!32143 (= lt!58411 e!73296)))

(declare-fun c!20200 () Bool)

(assert (=> d!32143 (= c!20200 (arrayContainsKey!0 (_keys!4366 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!58401 () Unit!3499)

(declare-fun e!73297 () Unit!3499)

(assert (=> d!32143 (= lt!58401 e!73297)))

(declare-fun c!20199 () Bool)

(assert (=> d!32143 (= c!20199 (contains!841 (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> d!32143 (valid!423 newMap!16)))

(assert (=> d!32143 (= (updateHelperNewKey!50 newMap!16 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797 (ite c!20046 (index!3242 lt!57974) (index!3239 lt!57974))) lt!58390)))

(declare-fun e!73301 () Bool)

(declare-fun lt!58410 () SeekEntryResult!272)

(declare-fun b!112779 () Bool)

(assert (=> b!112779 (= e!73301 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3240 lt!58410)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun b!112780 () Bool)

(declare-fun lt!58414 () Unit!3499)

(assert (=> b!112780 (= e!73297 lt!58414)))

(assert (=> b!112780 (= lt!58414 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (defaultEntry!2648 newMap!16)))))

(declare-fun lt!58419 () SeekEntryResult!272)

(declare-fun call!12117 () SeekEntryResult!272)

(assert (=> b!112780 (= lt!58419 call!12117)))

(declare-fun c!20201 () Bool)

(assert (=> b!112780 (= c!20201 ((_ is MissingZero!272) lt!58419))))

(declare-fun e!73299 () Bool)

(assert (=> b!112780 e!73299))

(declare-fun b!112781 () Bool)

(declare-fun res!55615 () Bool)

(assert (=> b!112781 (=> (not res!55615) (not e!73294))))

(assert (=> b!112781 (= res!55615 (contains!841 (map!1298 (_2!1229 lt!58390)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun b!112782 () Bool)

(assert (=> b!112782 (= e!73294 (= (map!1298 (_2!1229 lt!58390)) (+!151 (map!1298 newMap!16) (tuple2!2437 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) lt!57797))))))

(declare-fun bm!12112 () Bool)

(declare-fun call!12116 () Bool)

(declare-fun call!12118 () Bool)

(assert (=> bm!12112 (= call!12116 call!12118)))

(declare-fun b!112783 () Bool)

(declare-fun Unit!3527 () Unit!3499)

(assert (=> b!112783 (= e!73297 Unit!3527)))

(declare-fun lt!58392 () Unit!3499)

(assert (=> b!112783 (= lt!58392 (lemmaInListMapThenSeekEntryOrOpenFindsIt!50 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (defaultEntry!2648 newMap!16)))))

(assert (=> b!112783 (= lt!58410 call!12117)))

(declare-fun res!55608 () Bool)

(assert (=> b!112783 (= res!55608 ((_ is Found!272) lt!58410))))

(assert (=> b!112783 (=> (not res!55608) (not e!73301))))

(assert (=> b!112783 e!73301))

(declare-fun lt!58398 () Unit!3499)

(assert (=> b!112783 (= lt!58398 lt!58392)))

(assert (=> b!112783 false))

(declare-fun b!112784 () Bool)

(declare-fun res!55614 () Bool)

(declare-fun e!73300 () Bool)

(assert (=> b!112784 (=> (not res!55614) (not e!73300))))

(assert (=> b!112784 (= res!55614 call!12116)))

(assert (=> b!112784 (= e!73299 e!73300)))

(declare-fun b!112785 () Bool)

(declare-fun e!73295 () Bool)

(declare-fun e!73298 () Bool)

(assert (=> b!112785 (= e!73295 e!73298)))

(declare-fun res!55609 () Bool)

(assert (=> b!112785 (= res!55609 call!12116)))

(assert (=> b!112785 (=> (not res!55609) (not e!73298))))

(declare-fun b!112786 () Bool)

(declare-fun res!55613 () Bool)

(assert (=> b!112786 (= res!55613 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3242 lt!58419)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!112786 (=> (not res!55613) (not e!73298))))

(declare-fun bm!12113 () Bool)

(assert (=> bm!12113 (= call!12117 (seekEntryOrOpen!0 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) (_keys!4366 newMap!16) (mask!6826 newMap!16)))))

(declare-fun call!12115 () Bool)

(declare-fun bm!12114 () Bool)

(assert (=> bm!12114 (= call!12115 (arrayContainsKey!0 (_keys!4366 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!112787 () Bool)

(declare-fun res!55610 () Bool)

(assert (=> b!112787 (=> (not res!55610) (not e!73300))))

(assert (=> b!112787 (= res!55610 (= (select (arr!2086 (_keys!4366 newMap!16)) (index!3239 lt!58419)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!112788 () Bool)

(assert (=> b!112788 (= e!73298 (not call!12115))))

(declare-fun b!112789 () Bool)

(declare-fun c!20202 () Bool)

(assert (=> b!112789 (= c!20202 ((_ is MissingVacant!272) lt!58419))))

(assert (=> b!112789 (= e!73299 e!73295)))

(declare-fun b!112790 () Bool)

(declare-fun Unit!3528 () Unit!3499)

(assert (=> b!112790 (= e!73296 Unit!3528)))

(declare-fun lt!58402 () Unit!3499)

(declare-fun lemmaArrayContainsKeyThenInListMap!33 (array!4402 array!4404 (_ BitVec 32) (_ BitVec 32) V!3251 V!3251 (_ BitVec 64) (_ BitVec 32) Int) Unit!3499)

(assert (=> b!112790 (= lt!58402 (lemmaArrayContainsKeyThenInListMap!33 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)))))

(assert (=> b!112790 (contains!841 (getCurrentListMap!491 (_keys!4366 newMap!16) (_values!2631 newMap!16) (mask!6826 newMap!16) (extraKeys!2441 newMap!16) (zeroValue!2517 newMap!16) (minValue!2517 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2648 newMap!16)) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355))))

(declare-fun lt!58404 () Unit!3499)

(assert (=> b!112790 (= lt!58404 lt!58402)))

(assert (=> b!112790 false))

(declare-fun b!112791 () Bool)

(declare-fun Unit!3529 () Unit!3499)

(assert (=> b!112791 (= e!73296 Unit!3529)))

(declare-fun b!112792 () Bool)

(assert (=> b!112792 (= e!73300 (not call!12115))))

(declare-fun b!112793 () Bool)

(assert (=> b!112793 (= e!73295 ((_ is Undefined!272) lt!58419))))

(declare-fun bm!12115 () Bool)

(assert (=> bm!12115 (= call!12118 (inRange!0 (ite c!20199 (index!3240 lt!58410) (ite c!20201 (index!3239 lt!58419) (index!3242 lt!58419))) (mask!6826 newMap!16)))))

(declare-fun b!112794 () Bool)

(declare-fun res!55612 () Bool)

(assert (=> b!112794 (= res!55612 call!12118)))

(assert (=> b!112794 (=> (not res!55612) (not e!73301))))

(declare-fun b!112795 () Bool)

(declare-fun res!55611 () Bool)

(assert (=> b!112795 (=> (not res!55611) (not e!73294))))

(assert (=> b!112795 (= res!55611 (valid!423 (_2!1229 lt!58390)))))

(assert (= (and d!32143 c!20199) b!112783))

(assert (= (and d!32143 (not c!20199)) b!112780))

(assert (= (and b!112783 res!55608) b!112794))

(assert (= (and b!112794 res!55612) b!112779))

(assert (= (and b!112780 c!20201) b!112784))

(assert (= (and b!112780 (not c!20201)) b!112789))

(assert (= (and b!112784 res!55614) b!112787))

(assert (= (and b!112787 res!55610) b!112792))

(assert (= (and b!112789 c!20202) b!112785))

(assert (= (and b!112789 (not c!20202)) b!112793))

(assert (= (and b!112785 res!55609) b!112786))

(assert (= (and b!112786 res!55613) b!112788))

(assert (= (or b!112784 b!112785) bm!12112))

(assert (= (or b!112792 b!112788) bm!12114))

(assert (= (or b!112794 bm!12112) bm!12115))

(assert (= (or b!112783 b!112780) bm!12113))

(assert (= (and d!32143 c!20200) b!112790))

(assert (= (and d!32143 (not c!20200)) b!112791))

(assert (= (and d!32143 res!55616) b!112795))

(assert (= (and b!112795 res!55611) b!112781))

(assert (= (and b!112781 res!55615) b!112782))

(declare-fun m!128985 () Bool)

(assert (=> b!112787 m!128985))

(declare-fun m!128987 () Bool)

(assert (=> b!112786 m!128987))

(assert (=> b!112783 m!127849))

(assert (=> b!112783 m!128087))

(declare-fun m!128989 () Bool)

(assert (=> b!112795 m!128989))

(assert (=> b!112790 m!127849))

(declare-fun m!128991 () Bool)

(assert (=> b!112790 m!128991))

(assert (=> b!112790 m!128117))

(assert (=> b!112790 m!128117))

(assert (=> b!112790 m!127849))

(declare-fun m!128993 () Bool)

(assert (=> b!112790 m!128993))

(assert (=> bm!12114 m!127849))

(assert (=> bm!12114 m!128105))

(declare-fun m!128995 () Bool)

(assert (=> b!112781 m!128995))

(assert (=> b!112781 m!128995))

(assert (=> b!112781 m!127849))

(declare-fun m!128997 () Bool)

(assert (=> b!112781 m!128997))

(assert (=> bm!12113 m!127849))

(assert (=> bm!12113 m!128103))

(assert (=> b!112782 m!128995))

(assert (=> b!112782 m!127861))

(assert (=> b!112782 m!127861))

(declare-fun m!128999 () Bool)

(assert (=> b!112782 m!128999))

(declare-fun m!129001 () Bool)

(assert (=> bm!12115 m!129001))

(declare-fun m!129003 () Bool)

(assert (=> b!112779 m!129003))

(assert (=> b!112780 m!127849))

(assert (=> b!112780 m!128115))

(assert (=> d!32143 m!127849))

(declare-fun m!129005 () Bool)

(assert (=> d!32143 m!129005))

(declare-fun m!129007 () Bool)

(assert (=> d!32143 m!129007))

(assert (=> d!32143 m!128117))

(assert (=> d!32143 m!128147))

(assert (=> d!32143 m!127865))

(declare-fun m!129009 () Bool)

(assert (=> d!32143 m!129009))

(declare-fun m!129011 () Bool)

(assert (=> d!32143 m!129011))

(declare-fun m!129013 () Bool)

(assert (=> d!32143 m!129013))

(declare-fun m!129015 () Bool)

(assert (=> d!32143 m!129015))

(assert (=> d!32143 m!127849))

(declare-fun m!129017 () Bool)

(assert (=> d!32143 m!129017))

(assert (=> d!32143 m!128117))

(assert (=> d!32143 m!127849))

(assert (=> d!32143 m!128993))

(assert (=> d!32143 m!127849))

(declare-fun m!129019 () Bool)

(assert (=> d!32143 m!129019))

(assert (=> d!32143 m!127849))

(declare-fun m!129021 () Bool)

(assert (=> d!32143 m!129021))

(assert (=> d!32143 m!127849))

(declare-fun m!129023 () Bool)

(assert (=> d!32143 m!129023))

(assert (=> d!32143 m!128117))

(assert (=> d!32143 m!128497))

(declare-fun m!129025 () Bool)

(assert (=> d!32143 m!129025))

(declare-fun m!129027 () Bool)

(assert (=> d!32143 m!129027))

(assert (=> d!32143 m!129011))

(declare-fun m!129029 () Bool)

(assert (=> d!32143 m!129029))

(declare-fun m!129031 () Bool)

(assert (=> d!32143 m!129031))

(assert (=> d!32143 m!129009))

(declare-fun m!129033 () Bool)

(assert (=> d!32143 m!129033))

(declare-fun m!129035 () Bool)

(assert (=> d!32143 m!129035))

(declare-fun m!129037 () Bool)

(assert (=> d!32143 m!129037))

(assert (=> d!32143 m!127849))

(declare-fun m!129039 () Bool)

(assert (=> d!32143 m!129039))

(assert (=> d!32143 m!127849))

(assert (=> d!32143 m!128105))

(assert (=> bm!12024 d!32143))

(declare-fun d!32145 () Bool)

(declare-fun e!73303 () Bool)

(assert (=> d!32145 e!73303))

(declare-fun res!55617 () Bool)

(assert (=> d!32145 (=> res!55617 e!73303)))

(declare-fun lt!58420 () Bool)

(assert (=> d!32145 (= res!55617 (not lt!58420))))

(declare-fun lt!58423 () Bool)

(assert (=> d!32145 (= lt!58420 lt!58423)))

(declare-fun lt!58421 () Unit!3499)

(declare-fun e!73302 () Unit!3499)

(assert (=> d!32145 (= lt!58421 e!73302)))

(declare-fun c!20203 () Bool)

(assert (=> d!32145 (= c!20203 lt!58423)))

(assert (=> d!32145 (= lt!58423 (containsKey!162 (toList!815 call!12017) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> d!32145 (= (contains!841 call!12017 (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)) lt!58420)))

(declare-fun b!112796 () Bool)

(declare-fun lt!58422 () Unit!3499)

(assert (=> b!112796 (= e!73302 lt!58422)))

(assert (=> b!112796 (= lt!58422 (lemmaContainsKeyImpliesGetValueByKeyDefined!111 (toList!815 call!12017) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(assert (=> b!112796 (isDefined!112 (getValueByKey!158 (toList!815 call!12017) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355)))))

(declare-fun b!112797 () Bool)

(declare-fun Unit!3530 () Unit!3499)

(assert (=> b!112797 (= e!73302 Unit!3530)))

(declare-fun b!112798 () Bool)

(assert (=> b!112798 (= e!73303 (isDefined!112 (getValueByKey!158 (toList!815 call!12017) (select (arr!2086 (_keys!4366 (v!2945 (underlying!373 thiss!992)))) from!355))))))

(assert (= (and d!32145 c!20203) b!112796))

(assert (= (and d!32145 (not c!20203)) b!112797))

(assert (= (and d!32145 (not res!55617)) b!112798))

(assert (=> d!32145 m!127849))

(declare-fun m!129041 () Bool)

(assert (=> d!32145 m!129041))

(assert (=> b!112796 m!127849))

(declare-fun m!129043 () Bool)

(assert (=> b!112796 m!129043))

(assert (=> b!112796 m!127849))

(declare-fun m!129045 () Bool)

(assert (=> b!112796 m!129045))

(assert (=> b!112796 m!129045))

(declare-fun m!129047 () Bool)

(assert (=> b!112796 m!129047))

(assert (=> b!112798 m!127849))

(assert (=> b!112798 m!129045))

(assert (=> b!112798 m!129045))

(assert (=> b!112798 m!129047))

(assert (=> b!112211 d!32145))

(declare-fun b!112800 () Bool)

(declare-fun e!73304 () Bool)

(assert (=> b!112800 (= e!73304 tp_is_empty!2703)))

(declare-fun b!112799 () Bool)

(declare-fun e!73305 () Bool)

(assert (=> b!112799 (= e!73305 tp_is_empty!2703)))

(declare-fun condMapEmpty!4037 () Bool)

(declare-fun mapDefault!4037 () ValueCell!1008)

(assert (=> mapNonEmpty!4036 (= condMapEmpty!4037 (= mapRest!4036 ((as const (Array (_ BitVec 32) ValueCell!1008)) mapDefault!4037)))))

(declare-fun mapRes!4037 () Bool)

(assert (=> mapNonEmpty!4036 (= tp!10084 (and e!73304 mapRes!4037))))

(declare-fun mapNonEmpty!4037 () Bool)

(declare-fun tp!10085 () Bool)

(assert (=> mapNonEmpty!4037 (= mapRes!4037 (and tp!10085 e!73305))))

(declare-fun mapKey!4037 () (_ BitVec 32))

(declare-fun mapValue!4037 () ValueCell!1008)

(declare-fun mapRest!4037 () (Array (_ BitVec 32) ValueCell!1008))

(assert (=> mapNonEmpty!4037 (= mapRest!4036 (store mapRest!4037 mapKey!4037 mapValue!4037))))

(declare-fun mapIsEmpty!4037 () Bool)

(assert (=> mapIsEmpty!4037 mapRes!4037))

(assert (= (and mapNonEmpty!4036 condMapEmpty!4037) mapIsEmpty!4037))

(assert (= (and mapNonEmpty!4036 (not condMapEmpty!4037)) mapNonEmpty!4037))

(assert (= (and mapNonEmpty!4037 ((_ is ValueCellFull!1008) mapValue!4037)) b!112799))

(assert (= (and mapNonEmpty!4036 ((_ is ValueCellFull!1008) mapDefault!4037)) b!112800))

(declare-fun m!129049 () Bool)

(assert (=> mapNonEmpty!4037 m!129049))

(declare-fun b!112802 () Bool)

(declare-fun e!73306 () Bool)

(assert (=> b!112802 (= e!73306 tp_is_empty!2703)))

(declare-fun b!112801 () Bool)

(declare-fun e!73307 () Bool)

(assert (=> b!112801 (= e!73307 tp_is_empty!2703)))

(declare-fun condMapEmpty!4038 () Bool)

(declare-fun mapDefault!4038 () ValueCell!1008)

(assert (=> mapNonEmpty!4035 (= condMapEmpty!4038 (= mapRest!4035 ((as const (Array (_ BitVec 32) ValueCell!1008)) mapDefault!4038)))))

(declare-fun mapRes!4038 () Bool)

(assert (=> mapNonEmpty!4035 (= tp!10083 (and e!73306 mapRes!4038))))

(declare-fun mapNonEmpty!4038 () Bool)

(declare-fun tp!10086 () Bool)

(assert (=> mapNonEmpty!4038 (= mapRes!4038 (and tp!10086 e!73307))))

(declare-fun mapKey!4038 () (_ BitVec 32))

(declare-fun mapRest!4038 () (Array (_ BitVec 32) ValueCell!1008))

(declare-fun mapValue!4038 () ValueCell!1008)

(assert (=> mapNonEmpty!4038 (= mapRest!4035 (store mapRest!4038 mapKey!4038 mapValue!4038))))

(declare-fun mapIsEmpty!4038 () Bool)

(assert (=> mapIsEmpty!4038 mapRes!4038))

(assert (= (and mapNonEmpty!4035 condMapEmpty!4038) mapIsEmpty!4038))

(assert (= (and mapNonEmpty!4035 (not condMapEmpty!4038)) mapNonEmpty!4038))

(assert (= (and mapNonEmpty!4038 ((_ is ValueCellFull!1008) mapValue!4038)) b!112801))

(assert (= (and mapNonEmpty!4035 ((_ is ValueCellFull!1008) mapDefault!4038)) b!112802))

(declare-fun m!129051 () Bool)

(assert (=> mapNonEmpty!4038 m!129051))

(declare-fun b_lambda!5069 () Bool)

(assert (= b_lambda!5059 (or (and b!111938 b_free!2573) (and b!111932 b_free!2575 (= (defaultEntry!2648 newMap!16) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))))) b_lambda!5069)))

(declare-fun b_lambda!5071 () Bool)

(assert (= b_lambda!5063 (or (and b!111938 b_free!2573 (= (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) (defaultEntry!2648 newMap!16))) (and b!111932 b_free!2575) b_lambda!5071)))

(declare-fun b_lambda!5073 () Bool)

(assert (= b_lambda!5067 (or (and b!111938 b_free!2573 (= (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) (defaultEntry!2648 newMap!16))) (and b!111932 b_free!2575) b_lambda!5073)))

(declare-fun b_lambda!5075 () Bool)

(assert (= b_lambda!5065 (or (and b!111938 b_free!2573 (= (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))) (defaultEntry!2648 newMap!16))) (and b!111932 b_free!2575) b_lambda!5075)))

(declare-fun b_lambda!5077 () Bool)

(assert (= b_lambda!5061 (or (and b!111938 b_free!2573) (and b!111932 b_free!2575 (= (defaultEntry!2648 newMap!16) (defaultEntry!2648 (v!2945 (underlying!373 thiss!992))))) b_lambda!5077)))

(check-sat (not b!112652) (not b!112359) (not b!112614) (not d!32073) (not b!112795) (not d!31933) (not bm!12064) (not b!112637) (not b_lambda!5045) (not b!112439) (not b!112580) (not d!32021) (not d!32105) (not d!31983) (not b!112736) (not b!112377) (not bm!12068) (not d!32113) (not b!112572) (not d!32057) (not b!112650) (not d!31997) (not b!112576) (not b!112459) (not b!112468) (not b!112531) (not d!31961) (not d!31967) (not d!32095) (not bm!12102) (not b!112579) (not b!112596) (not b!112588) (not b!112497) (not b!112668) (not b!112476) (not bm!12059) (not b!112404) (not b!112352) (not b!112462) (not d!32075) (not b!112674) (not b!112730) (not b!112483) (not d!32027) (not b!112474) (not b!112633) (not b!112733) (not bm!12114) (not b!112656) (not b!112677) (not b!112690) (not b!112684) (not bm!12095) (not d!31999) (not b!112509) (not b!112438) (not bm!12079) (not b!112461) (not b!112626) (not b!112582) (not d!32063) (not d!32089) (not b!112783) (not b!112501) (not d!32121) (not d!31969) (not d!32091) (not d!32003) (not d!32049) (not b!112410) (not b!112503) (not b!112334) (not d!31939) (not d!32025) (not b!112743) (not b_lambda!5057) (not b!112741) (not b!112688) (not bm!12076) (not b!112522) (not b!112704) (not bm!12070) (not d!31993) (not d!32085) (not b_lambda!5077) (not b!112578) (not b!112623) (not b!112518) (not d!31955) (not b_lambda!5073) (not b!112535) (not d!32077) (not b!112479) (not b!112484) (not b!112515) (not b!112607) (not b!112448) (not b!112471) (not b!112534) (not b!112328) (not d!32019) (not bm!12087) (not d!32115) (not b!112666) (not d!32101) (not b!112780) (not b!112517) (not b!112703) (not b!112692) (not b!112643) (not d!32081) (not d!31937) (not d!31981) (not b!112481) (not b!112525) (not d!31951) (not bm!12113) (not b!112541) (not d!32011) (not d!32043) b_and!6939 (not b!112653) (not d!32023) (not b!112635) (not bm!12084) (not bm!12075) (not b!112593) (not b!112337) (not bm!12090) (not b!112671) (not d!32127) (not b!112740) (not d!32007) (not b!112376) (not d!32135) (not b!112443) (not b!112466) (not b!112523) (not b!112638) (not bm!12098) (not b!112628) (not d!31987) (not d!31935) (not bm!12062) (not b!112615) (not b!112620) (not b!112512) (not d!32017) (not b_lambda!5075) (not b!112718) (not b_lambda!5069) (not b!112708) (not b!112329) (not d!32071) (not d!32099) (not b!112634) (not b_next!2573) (not d!32145) (not b!112434) (not b!112333) (not b!112716) (not d!32097) (not b!112714) (not d!32143) (not b!112416) (not b!112440) (not bm!12097) (not b!112477) (not b!112357) (not b!112405) (not d!32059) (not b!112661) (not b!112732) (not b!112631) (not b!112595) (not d!31949) (not bm!12069) (not b!112790) (not b!112738) (not b!112585) (not d!32083) (not b!112622) (not bm!12051) (not d!32041) (not d!32005) (not b!112472) (not b!112530) (not bm!12103) (not d!32119) (not b!112500) (not b_next!2575) (not b!112645) (not d!32087) (not d!32037) (not d!32053) (not b!112436) (not bm!12096) (not b!112729) (not d!32065) (not b!112605) (not d!31963) (not b_lambda!5071) (not b!112636) (not b!112781) (not d!32029) (not bm!12093) (not mapNonEmpty!4038) (not b!112402) (not d!32079) (not d!32109) (not b!112336) (not b!112463) (not b!112419) (not d!31945) (not b!112782) (not d!32033) b_and!6937 (not b!112425) (not bm!12115) (not mapNonEmpty!4037) (not b!112710) (not b!112573) (not b!112457) (not b!112587) (not b!112427) (not b!112705) (not b!112327) (not b!112450) (not b!112445) (not b!112533) (not b!112570) (not b!112532) (not d!32001) (not d!32067) (not b!112701) (not b!112447) (not d!31953) (not d!31977) (not b!112332) (not b!112370) (not b!112338) (not d!32139) (not b!112796) (not b!112649) (not d!32133) (not b!112682) (not b!112574) (not d!32047) (not d!32123) (not b!112676) (not d!32051) (not bm!12061) (not b!112325) (not d!31979) (not b!112612) (not b!112603) (not b!112520) (not d!32093) (not b!112651) (not b!112798) (not b!112609) (not d!32039) (not bm!12063) tp_is_empty!2703 (not b!112685) (not b!112408) (not d!31943) (not b!112606) (not b!112506) (not d!32111) (not b!112659) (not d!32125) (not b!112324) (not bm!12071) (not b!112417) (not d!32035) (not b!112577) (not b!112669) (not b_lambda!5053) (not b_lambda!5055) (not d!31971) (not bm!12085) (not b!112575) (not b!112486) (not b!112699))
(check-sat b_and!6937 b_and!6939 (not b_next!2573) (not b_next!2575))
