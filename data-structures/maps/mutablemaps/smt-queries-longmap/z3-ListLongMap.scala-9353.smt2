; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111592 () Bool)

(assert start!111592)

(declare-fun b_free!30213 () Bool)

(declare-fun b_next!30213 () Bool)

(assert (=> start!111592 (= b_free!30213 (not b_next!30213))))

(declare-fun tp!106116 () Bool)

(declare-fun b_and!48595 () Bool)

(assert (=> start!111592 (= tp!106116 b_and!48595)))

(declare-fun res!876759 () Bool)

(declare-fun e!753410 () Bool)

(assert (=> start!111592 (=> (not res!876759) (not e!753410))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111592 (= res!876759 (validMask!0 mask!2019))))

(assert (=> start!111592 e!753410))

(declare-datatypes ((array!88959 0))(
  ( (array!88960 (arr!42949 (Array (_ BitVec 32) (_ BitVec 64))) (size!43500 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88959)

(declare-fun array_inv!32381 (array!88959) Bool)

(assert (=> start!111592 (array_inv!32381 _keys!1609)))

(assert (=> start!111592 true))

(declare-fun tp_is_empty!36033 () Bool)

(assert (=> start!111592 tp_is_empty!36033))

(declare-datatypes ((V!53147 0))(
  ( (V!53148 (val!18091 Int)) )
))
(declare-datatypes ((ValueCell!17118 0))(
  ( (ValueCellFull!17118 (v!20719 V!53147)) (EmptyCell!17118) )
))
(declare-datatypes ((array!88961 0))(
  ( (array!88962 (arr!42950 (Array (_ BitVec 32) ValueCell!17118)) (size!43501 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88961)

(declare-fun e!753409 () Bool)

(declare-fun array_inv!32382 (array!88961) Bool)

(assert (=> start!111592 (and (array_inv!32382 _values!1337) e!753409)))

(assert (=> start!111592 tp!106116))

(declare-fun b!1320844 () Bool)

(declare-fun res!876757 () Bool)

(assert (=> b!1320844 (=> (not res!876757) (not e!753410))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88959 (_ BitVec 32)) Bool)

(assert (=> b!1320844 (= res!876757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320845 () Bool)

(declare-fun res!876760 () Bool)

(assert (=> b!1320845 (=> (not res!876760) (not e!753410))))

(declare-datatypes ((List!30641 0))(
  ( (Nil!30638) (Cons!30637 (h!31846 (_ BitVec 64)) (t!44410 List!30641)) )
))
(declare-fun arrayNoDuplicates!0 (array!88959 (_ BitVec 32) List!30641) Bool)

(assert (=> b!1320845 (= res!876760 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30638))))

(declare-fun b!1320846 () Bool)

(declare-fun res!876754 () Bool)

(assert (=> b!1320846 (=> (not res!876754) (not e!753410))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53147)

(declare-fun minValue!1279 () V!53147)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23460 0))(
  ( (tuple2!23461 (_1!11740 (_ BitVec 64)) (_2!11740 V!53147)) )
))
(declare-datatypes ((List!30642 0))(
  ( (Nil!30639) (Cons!30638 (h!31847 tuple2!23460) (t!44411 List!30642)) )
))
(declare-datatypes ((ListLongMap!21129 0))(
  ( (ListLongMap!21130 (toList!10580 List!30642)) )
))
(declare-fun contains!8671 (ListLongMap!21129 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5523 (array!88959 array!88961 (_ BitVec 32) (_ BitVec 32) V!53147 V!53147 (_ BitVec 32) Int) ListLongMap!21129)

(assert (=> b!1320846 (= res!876754 (contains!8671 (getCurrentListMap!5523 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1320847 () Bool)

(declare-fun e!753412 () Bool)

(assert (=> b!1320847 (= e!753412 tp_is_empty!36033)))

(declare-fun b!1320848 () Bool)

(declare-fun res!876758 () Bool)

(assert (=> b!1320848 (=> (not res!876758) (not e!753410))))

(assert (=> b!1320848 (= res!876758 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43500 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320849 () Bool)

(assert (=> b!1320849 (= e!753410 (not true))))

(declare-fun lt!587100 () ListLongMap!21129)

(assert (=> b!1320849 (contains!8671 lt!587100 k0!1164)))

(declare-fun lt!587102 () V!53147)

(declare-datatypes ((Unit!43468 0))(
  ( (Unit!43469) )
))
(declare-fun lt!587104 () Unit!43468)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!149 ((_ BitVec 64) (_ BitVec 64) V!53147 ListLongMap!21129) Unit!43468)

(assert (=> b!1320849 (= lt!587104 (lemmaInListMapAfterAddingDiffThenInBefore!149 k0!1164 (select (arr!42949 _keys!1609) from!2000) lt!587102 lt!587100))))

(declare-fun lt!587101 () ListLongMap!21129)

(assert (=> b!1320849 (contains!8671 lt!587101 k0!1164)))

(declare-fun lt!587103 () Unit!43468)

(assert (=> b!1320849 (= lt!587103 (lemmaInListMapAfterAddingDiffThenInBefore!149 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587101))))

(declare-fun lt!587098 () ListLongMap!21129)

(assert (=> b!1320849 (contains!8671 lt!587098 k0!1164)))

(declare-fun lt!587099 () Unit!43468)

(assert (=> b!1320849 (= lt!587099 (lemmaInListMapAfterAddingDiffThenInBefore!149 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587098))))

(declare-fun +!4534 (ListLongMap!21129 tuple2!23460) ListLongMap!21129)

(assert (=> b!1320849 (= lt!587098 (+!4534 lt!587101 (tuple2!23461 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1320849 (= lt!587101 (+!4534 lt!587100 (tuple2!23461 (select (arr!42949 _keys!1609) from!2000) lt!587102)))))

(declare-fun get!21652 (ValueCell!17118 V!53147) V!53147)

(declare-fun dynLambda!3571 (Int (_ BitVec 64)) V!53147)

(assert (=> b!1320849 (= lt!587102 (get!21652 (select (arr!42950 _values!1337) from!2000) (dynLambda!3571 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6249 (array!88959 array!88961 (_ BitVec 32) (_ BitVec 32) V!53147 V!53147 (_ BitVec 32) Int) ListLongMap!21129)

(assert (=> b!1320849 (= lt!587100 (getCurrentListMapNoExtraKeys!6249 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapNonEmpty!55697 () Bool)

(declare-fun mapRes!55697 () Bool)

(declare-fun tp!106115 () Bool)

(declare-fun e!753408 () Bool)

(assert (=> mapNonEmpty!55697 (= mapRes!55697 (and tp!106115 e!753408))))

(declare-fun mapValue!55697 () ValueCell!17118)

(declare-fun mapRest!55697 () (Array (_ BitVec 32) ValueCell!17118))

(declare-fun mapKey!55697 () (_ BitVec 32))

(assert (=> mapNonEmpty!55697 (= (arr!42950 _values!1337) (store mapRest!55697 mapKey!55697 mapValue!55697))))

(declare-fun b!1320850 () Bool)

(declare-fun res!876755 () Bool)

(assert (=> b!1320850 (=> (not res!876755) (not e!753410))))

(assert (=> b!1320850 (= res!876755 (not (= (select (arr!42949 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1320851 () Bool)

(declare-fun res!876756 () Bool)

(assert (=> b!1320851 (=> (not res!876756) (not e!753410))))

(assert (=> b!1320851 (= res!876756 (and (= (size!43501 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43500 _keys!1609) (size!43501 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320852 () Bool)

(assert (=> b!1320852 (= e!753408 tp_is_empty!36033)))

(declare-fun b!1320853 () Bool)

(assert (=> b!1320853 (= e!753409 (and e!753412 mapRes!55697))))

(declare-fun condMapEmpty!55697 () Bool)

(declare-fun mapDefault!55697 () ValueCell!17118)

(assert (=> b!1320853 (= condMapEmpty!55697 (= (arr!42950 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17118)) mapDefault!55697)))))

(declare-fun mapIsEmpty!55697 () Bool)

(assert (=> mapIsEmpty!55697 mapRes!55697))

(declare-fun b!1320854 () Bool)

(declare-fun res!876753 () Bool)

(assert (=> b!1320854 (=> (not res!876753) (not e!753410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320854 (= res!876753 (validKeyInArray!0 (select (arr!42949 _keys!1609) from!2000)))))

(assert (= (and start!111592 res!876759) b!1320851))

(assert (= (and b!1320851 res!876756) b!1320844))

(assert (= (and b!1320844 res!876757) b!1320845))

(assert (= (and b!1320845 res!876760) b!1320848))

(assert (= (and b!1320848 res!876758) b!1320846))

(assert (= (and b!1320846 res!876754) b!1320850))

(assert (= (and b!1320850 res!876755) b!1320854))

(assert (= (and b!1320854 res!876753) b!1320849))

(assert (= (and b!1320853 condMapEmpty!55697) mapIsEmpty!55697))

(assert (= (and b!1320853 (not condMapEmpty!55697)) mapNonEmpty!55697))

(get-info :version)

(assert (= (and mapNonEmpty!55697 ((_ is ValueCellFull!17118) mapValue!55697)) b!1320852))

(assert (= (and b!1320853 ((_ is ValueCellFull!17118) mapDefault!55697)) b!1320847))

(assert (= start!111592 b!1320853))

(declare-fun b_lambda!23549 () Bool)

(assert (=> (not b_lambda!23549) (not b!1320849)))

(declare-fun t!44409 () Bool)

(declare-fun tb!11573 () Bool)

(assert (=> (and start!111592 (= defaultEntry!1340 defaultEntry!1340) t!44409) tb!11573))

(declare-fun result!24193 () Bool)

(assert (=> tb!11573 (= result!24193 tp_is_empty!36033)))

(assert (=> b!1320849 t!44409))

(declare-fun b_and!48597 () Bool)

(assert (= b_and!48595 (and (=> t!44409 result!24193) b_and!48597)))

(declare-fun m!1208687 () Bool)

(assert (=> b!1320854 m!1208687))

(assert (=> b!1320854 m!1208687))

(declare-fun m!1208689 () Bool)

(assert (=> b!1320854 m!1208689))

(declare-fun m!1208691 () Bool)

(assert (=> start!111592 m!1208691))

(declare-fun m!1208693 () Bool)

(assert (=> start!111592 m!1208693))

(declare-fun m!1208695 () Bool)

(assert (=> start!111592 m!1208695))

(assert (=> b!1320850 m!1208687))

(declare-fun m!1208697 () Bool)

(assert (=> b!1320846 m!1208697))

(assert (=> b!1320846 m!1208697))

(declare-fun m!1208699 () Bool)

(assert (=> b!1320846 m!1208699))

(declare-fun m!1208701 () Bool)

(assert (=> b!1320844 m!1208701))

(declare-fun m!1208703 () Bool)

(assert (=> b!1320845 m!1208703))

(declare-fun m!1208705 () Bool)

(assert (=> mapNonEmpty!55697 m!1208705))

(assert (=> b!1320849 m!1208687))

(declare-fun m!1208707 () Bool)

(assert (=> b!1320849 m!1208707))

(declare-fun m!1208709 () Bool)

(assert (=> b!1320849 m!1208709))

(declare-fun m!1208711 () Bool)

(assert (=> b!1320849 m!1208711))

(declare-fun m!1208713 () Bool)

(assert (=> b!1320849 m!1208713))

(declare-fun m!1208715 () Bool)

(assert (=> b!1320849 m!1208715))

(declare-fun m!1208717 () Bool)

(assert (=> b!1320849 m!1208717))

(assert (=> b!1320849 m!1208715))

(assert (=> b!1320849 m!1208711))

(declare-fun m!1208719 () Bool)

(assert (=> b!1320849 m!1208719))

(assert (=> b!1320849 m!1208687))

(declare-fun m!1208721 () Bool)

(assert (=> b!1320849 m!1208721))

(declare-fun m!1208723 () Bool)

(assert (=> b!1320849 m!1208723))

(declare-fun m!1208725 () Bool)

(assert (=> b!1320849 m!1208725))

(declare-fun m!1208727 () Bool)

(assert (=> b!1320849 m!1208727))

(declare-fun m!1208729 () Bool)

(assert (=> b!1320849 m!1208729))

(check-sat (not start!111592) (not mapNonEmpty!55697) (not b_lambda!23549) b_and!48597 (not b!1320845) (not b!1320849) (not b!1320846) tp_is_empty!36033 (not b_next!30213) (not b!1320854) (not b!1320844))
(check-sat b_and!48597 (not b_next!30213))
