; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111646 () Bool)

(assert start!111646)

(declare-fun b_free!30267 () Bool)

(declare-fun b_next!30267 () Bool)

(assert (=> start!111646 (= b_free!30267 (not b_next!30267))))

(declare-fun tp!106277 () Bool)

(declare-fun b_and!48703 () Bool)

(assert (=> start!111646 (= tp!106277 b_and!48703)))

(declare-fun mapIsEmpty!55778 () Bool)

(declare-fun mapRes!55778 () Bool)

(assert (=> mapIsEmpty!55778 mapRes!55778))

(declare-fun b!1321789 () Bool)

(declare-fun res!877405 () Bool)

(declare-fun e!753816 () Bool)

(assert (=> b!1321789 (=> (not res!877405) (not e!753816))))

(declare-datatypes ((array!89057 0))(
  ( (array!89058 (arr!42998 (Array (_ BitVec 32) (_ BitVec 64))) (size!43549 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89057)

(declare-datatypes ((V!53219 0))(
  ( (V!53220 (val!18118 Int)) )
))
(declare-datatypes ((ValueCell!17145 0))(
  ( (ValueCellFull!17145 (v!20746 V!53219)) (EmptyCell!17145) )
))
(declare-datatypes ((array!89059 0))(
  ( (array!89060 (arr!42999 (Array (_ BitVec 32) ValueCell!17145)) (size!43550 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89059)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1321789 (= res!877405 (and (= (size!43550 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43549 _keys!1609) (size!43550 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321790 () Bool)

(declare-fun res!877407 () Bool)

(assert (=> b!1321790 (=> (not res!877407) (not e!753816))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321790 (= res!877407 (validKeyInArray!0 (select (arr!42998 _keys!1609) from!2000)))))

(declare-fun b!1321791 () Bool)

(declare-fun res!877406 () Bool)

(assert (=> b!1321791 (=> (not res!877406) (not e!753816))))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1321791 (= res!877406 (not (= (select (arr!42998 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1321792 () Bool)

(declare-fun res!877403 () Bool)

(assert (=> b!1321792 (=> (not res!877403) (not e!753816))))

(declare-datatypes ((List!30675 0))(
  ( (Nil!30672) (Cons!30671 (h!31880 (_ BitVec 64)) (t!44498 List!30675)) )
))
(declare-fun arrayNoDuplicates!0 (array!89057 (_ BitVec 32) List!30675) Bool)

(assert (=> b!1321792 (= res!877403 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30672))))

(declare-fun b!1321793 () Bool)

(assert (=> b!1321793 (= e!753816 (not true))))

(declare-datatypes ((tuple2!23498 0))(
  ( (tuple2!23499 (_1!11759 (_ BitVec 64)) (_2!11759 V!53219)) )
))
(declare-datatypes ((List!30676 0))(
  ( (Nil!30673) (Cons!30672 (h!31881 tuple2!23498) (t!44499 List!30676)) )
))
(declare-datatypes ((ListLongMap!21167 0))(
  ( (ListLongMap!21168 (toList!10599 List!30676)) )
))
(declare-fun lt!587675 () ListLongMap!21167)

(declare-fun lt!587677 () tuple2!23498)

(declare-fun contains!8690 (ListLongMap!21167 (_ BitVec 64)) Bool)

(declare-fun +!4552 (ListLongMap!21167 tuple2!23498) ListLongMap!21167)

(assert (=> b!1321793 (contains!8690 (+!4552 lt!587675 lt!587677) k0!1164)))

(declare-fun zeroValue!1279 () V!53219)

(declare-datatypes ((Unit!43504 0))(
  ( (Unit!43505) )
))
(declare-fun lt!587676 () Unit!43504)

(declare-fun addStillContains!1133 (ListLongMap!21167 (_ BitVec 64) V!53219 (_ BitVec 64)) Unit!43504)

(assert (=> b!1321793 (= lt!587676 (addStillContains!1133 lt!587675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1321793 (contains!8690 lt!587675 k0!1164)))

(declare-fun lt!587683 () Unit!43504)

(declare-fun lt!587678 () V!53219)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!167 ((_ BitVec 64) (_ BitVec 64) V!53219 ListLongMap!21167) Unit!43504)

(assert (=> b!1321793 (= lt!587683 (lemmaInListMapAfterAddingDiffThenInBefore!167 k0!1164 (select (arr!42998 _keys!1609) from!2000) lt!587678 lt!587675))))

(declare-fun lt!587680 () ListLongMap!21167)

(assert (=> b!1321793 (contains!8690 lt!587680 k0!1164)))

(declare-fun lt!587679 () Unit!43504)

(assert (=> b!1321793 (= lt!587679 (lemmaInListMapAfterAddingDiffThenInBefore!167 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587680))))

(declare-fun lt!587681 () ListLongMap!21167)

(assert (=> b!1321793 (contains!8690 lt!587681 k0!1164)))

(declare-fun lt!587682 () Unit!43504)

(declare-fun minValue!1279 () V!53219)

(assert (=> b!1321793 (= lt!587682 (lemmaInListMapAfterAddingDiffThenInBefore!167 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587681))))

(assert (=> b!1321793 (= lt!587681 (+!4552 lt!587680 lt!587677))))

(assert (=> b!1321793 (= lt!587677 (tuple2!23499 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1321793 (= lt!587680 (+!4552 lt!587675 (tuple2!23499 (select (arr!42998 _keys!1609) from!2000) lt!587678)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21688 (ValueCell!17145 V!53219) V!53219)

(declare-fun dynLambda!3589 (Int (_ BitVec 64)) V!53219)

(assert (=> b!1321793 (= lt!587678 (get!21688 (select (arr!42999 _values!1337) from!2000) (dynLambda!3589 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6267 (array!89057 array!89059 (_ BitVec 32) (_ BitVec 32) V!53219 V!53219 (_ BitVec 32) Int) ListLongMap!21167)

(assert (=> b!1321793 (= lt!587675 (getCurrentListMapNoExtraKeys!6267 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321794 () Bool)

(declare-fun e!753817 () Bool)

(declare-fun e!753814 () Bool)

(assert (=> b!1321794 (= e!753817 (and e!753814 mapRes!55778))))

(declare-fun condMapEmpty!55778 () Bool)

(declare-fun mapDefault!55778 () ValueCell!17145)

(assert (=> b!1321794 (= condMapEmpty!55778 (= (arr!42999 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17145)) mapDefault!55778)))))

(declare-fun b!1321795 () Bool)

(declare-fun tp_is_empty!36087 () Bool)

(assert (=> b!1321795 (= e!753814 tp_is_empty!36087)))

(declare-fun b!1321796 () Bool)

(declare-fun res!877401 () Bool)

(assert (=> b!1321796 (=> (not res!877401) (not e!753816))))

(declare-fun getCurrentListMap!5539 (array!89057 array!89059 (_ BitVec 32) (_ BitVec 32) V!53219 V!53219 (_ BitVec 32) Int) ListLongMap!21167)

(assert (=> b!1321796 (= res!877401 (contains!8690 (getCurrentListMap!5539 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1321797 () Bool)

(declare-fun e!753813 () Bool)

(assert (=> b!1321797 (= e!753813 tp_is_empty!36087)))

(declare-fun res!877404 () Bool)

(assert (=> start!111646 (=> (not res!877404) (not e!753816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111646 (= res!877404 (validMask!0 mask!2019))))

(assert (=> start!111646 e!753816))

(declare-fun array_inv!32417 (array!89057) Bool)

(assert (=> start!111646 (array_inv!32417 _keys!1609)))

(assert (=> start!111646 true))

(assert (=> start!111646 tp_is_empty!36087))

(declare-fun array_inv!32418 (array!89059) Bool)

(assert (=> start!111646 (and (array_inv!32418 _values!1337) e!753817)))

(assert (=> start!111646 tp!106277))

(declare-fun b!1321798 () Bool)

(declare-fun res!877408 () Bool)

(assert (=> b!1321798 (=> (not res!877408) (not e!753816))))

(assert (=> b!1321798 (= res!877408 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43549 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321799 () Bool)

(declare-fun res!877402 () Bool)

(assert (=> b!1321799 (=> (not res!877402) (not e!753816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89057 (_ BitVec 32)) Bool)

(assert (=> b!1321799 (= res!877402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!55778 () Bool)

(declare-fun tp!106278 () Bool)

(assert (=> mapNonEmpty!55778 (= mapRes!55778 (and tp!106278 e!753813))))

(declare-fun mapValue!55778 () ValueCell!17145)

(declare-fun mapRest!55778 () (Array (_ BitVec 32) ValueCell!17145))

(declare-fun mapKey!55778 () (_ BitVec 32))

(assert (=> mapNonEmpty!55778 (= (arr!42999 _values!1337) (store mapRest!55778 mapKey!55778 mapValue!55778))))

(assert (= (and start!111646 res!877404) b!1321789))

(assert (= (and b!1321789 res!877405) b!1321799))

(assert (= (and b!1321799 res!877402) b!1321792))

(assert (= (and b!1321792 res!877403) b!1321798))

(assert (= (and b!1321798 res!877408) b!1321796))

(assert (= (and b!1321796 res!877401) b!1321791))

(assert (= (and b!1321791 res!877406) b!1321790))

(assert (= (and b!1321790 res!877407) b!1321793))

(assert (= (and b!1321794 condMapEmpty!55778) mapIsEmpty!55778))

(assert (= (and b!1321794 (not condMapEmpty!55778)) mapNonEmpty!55778))

(get-info :version)

(assert (= (and mapNonEmpty!55778 ((_ is ValueCellFull!17145) mapValue!55778)) b!1321797))

(assert (= (and b!1321794 ((_ is ValueCellFull!17145) mapDefault!55778)) b!1321795))

(assert (= start!111646 b!1321794))

(declare-fun b_lambda!23603 () Bool)

(assert (=> (not b_lambda!23603) (not b!1321793)))

(declare-fun t!44497 () Bool)

(declare-fun tb!11627 () Bool)

(assert (=> (and start!111646 (= defaultEntry!1340 defaultEntry!1340) t!44497) tb!11627))

(declare-fun result!24301 () Bool)

(assert (=> tb!11627 (= result!24301 tp_is_empty!36087)))

(assert (=> b!1321793 t!44497))

(declare-fun b_and!48705 () Bool)

(assert (= b_and!48703 (and (=> t!44497 result!24301) b_and!48705)))

(declare-fun m!1209881 () Bool)

(assert (=> b!1321790 m!1209881))

(assert (=> b!1321790 m!1209881))

(declare-fun m!1209883 () Bool)

(assert (=> b!1321790 m!1209883))

(declare-fun m!1209885 () Bool)

(assert (=> b!1321799 m!1209885))

(declare-fun m!1209887 () Bool)

(assert (=> mapNonEmpty!55778 m!1209887))

(declare-fun m!1209889 () Bool)

(assert (=> start!111646 m!1209889))

(declare-fun m!1209891 () Bool)

(assert (=> start!111646 m!1209891))

(declare-fun m!1209893 () Bool)

(assert (=> start!111646 m!1209893))

(declare-fun m!1209895 () Bool)

(assert (=> b!1321796 m!1209895))

(assert (=> b!1321796 m!1209895))

(declare-fun m!1209897 () Bool)

(assert (=> b!1321796 m!1209897))

(assert (=> b!1321791 m!1209881))

(declare-fun m!1209899 () Bool)

(assert (=> b!1321793 m!1209899))

(declare-fun m!1209901 () Bool)

(assert (=> b!1321793 m!1209901))

(declare-fun m!1209903 () Bool)

(assert (=> b!1321793 m!1209903))

(declare-fun m!1209905 () Bool)

(assert (=> b!1321793 m!1209905))

(declare-fun m!1209907 () Bool)

(assert (=> b!1321793 m!1209907))

(declare-fun m!1209909 () Bool)

(assert (=> b!1321793 m!1209909))

(assert (=> b!1321793 m!1209881))

(declare-fun m!1209911 () Bool)

(assert (=> b!1321793 m!1209911))

(declare-fun m!1209913 () Bool)

(assert (=> b!1321793 m!1209913))

(declare-fun m!1209915 () Bool)

(assert (=> b!1321793 m!1209915))

(assert (=> b!1321793 m!1209909))

(assert (=> b!1321793 m!1209903))

(declare-fun m!1209917 () Bool)

(assert (=> b!1321793 m!1209917))

(declare-fun m!1209919 () Bool)

(assert (=> b!1321793 m!1209919))

(declare-fun m!1209921 () Bool)

(assert (=> b!1321793 m!1209921))

(assert (=> b!1321793 m!1209881))

(declare-fun m!1209923 () Bool)

(assert (=> b!1321793 m!1209923))

(declare-fun m!1209925 () Bool)

(assert (=> b!1321793 m!1209925))

(declare-fun m!1209927 () Bool)

(assert (=> b!1321793 m!1209927))

(assert (=> b!1321793 m!1209899))

(declare-fun m!1209929 () Bool)

(assert (=> b!1321792 m!1209929))

(check-sat (not b_next!30267) (not b!1321792) (not mapNonEmpty!55778) (not b!1321796) b_and!48705 tp_is_empty!36087 (not b!1321790) (not b!1321799) (not b!1321793) (not b_lambda!23603) (not start!111646))
(check-sat b_and!48705 (not b_next!30267))
