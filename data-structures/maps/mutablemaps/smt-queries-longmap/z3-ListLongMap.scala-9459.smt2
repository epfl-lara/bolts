; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112400 () Bool)

(assert start!112400)

(declare-fun b_free!30759 () Bool)

(declare-fun b_next!30759 () Bool)

(assert (=> start!112400 (= b_free!30759 (not b_next!30759))))

(declare-fun tp!107915 () Bool)

(declare-fun b_and!49583 () Bool)

(assert (=> start!112400 (= tp!107915 b_and!49583)))

(declare-fun mapNonEmpty!56677 () Bool)

(declare-fun mapRes!56677 () Bool)

(declare-fun tp!107914 () Bool)

(declare-fun e!758868 () Bool)

(assert (=> mapNonEmpty!56677 (= mapRes!56677 (and tp!107914 e!758868))))

(declare-datatypes ((V!53995 0))(
  ( (V!53996 (val!18409 Int)) )
))
(declare-datatypes ((ValueCell!17436 0))(
  ( (ValueCellFull!17436 (v!21044 V!53995)) (EmptyCell!17436) )
))
(declare-datatypes ((array!90187 0))(
  ( (array!90188 (arr!43555 (Array (_ BitVec 32) ValueCell!17436)) (size!44106 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90187)

(declare-fun mapValue!56677 () ValueCell!17436)

(declare-fun mapRest!56677 () (Array (_ BitVec 32) ValueCell!17436))

(declare-fun mapKey!56677 () (_ BitVec 32))

(assert (=> mapNonEmpty!56677 (= (arr!43555 _values!1320) (store mapRest!56677 mapKey!56677 mapValue!56677))))

(declare-fun b!1331882 () Bool)

(declare-fun e!758869 () Bool)

(declare-fun tp_is_empty!36669 () Bool)

(assert (=> b!1331882 (= e!758869 tp_is_empty!36669)))

(declare-fun b!1331883 () Bool)

(declare-fun res!883923 () Bool)

(declare-fun e!758867 () Bool)

(assert (=> b!1331883 (=> (not res!883923) (not e!758867))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90189 0))(
  ( (array!90190 (arr!43556 (Array (_ BitVec 32) (_ BitVec 64))) (size!44107 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90189)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1331883 (= res!883923 (not (= (select (arr!43556 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1331884 () Bool)

(declare-fun res!883924 () Bool)

(assert (=> b!1331884 (=> (not res!883924) (not e!758867))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1331884 (= res!883924 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44107 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331885 () Bool)

(assert (=> b!1331885 (= e!758867 (not true))))

(declare-datatypes ((tuple2!23868 0))(
  ( (tuple2!23869 (_1!11944 (_ BitVec 64)) (_2!11944 V!53995)) )
))
(declare-datatypes ((List!31049 0))(
  ( (Nil!31046) (Cons!31045 (h!32254 tuple2!23868) (t!45228 List!31049)) )
))
(declare-datatypes ((ListLongMap!21537 0))(
  ( (ListLongMap!21538 (toList!10784 List!31049)) )
))
(declare-fun lt!591724 () ListLongMap!21537)

(declare-fun minValue!1262 () V!53995)

(declare-fun contains!8884 (ListLongMap!21537 (_ BitVec 64)) Bool)

(declare-fun +!4672 (ListLongMap!21537 tuple2!23868) ListLongMap!21537)

(assert (=> b!1331885 (contains!8884 (+!4672 lt!591724 (tuple2!23869 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(declare-datatypes ((Unit!43771 0))(
  ( (Unit!43772) )
))
(declare-fun lt!591728 () Unit!43771)

(declare-fun addStillContains!1182 (ListLongMap!21537 (_ BitVec 64) V!53995 (_ BitVec 64)) Unit!43771)

(assert (=> b!1331885 (= lt!591728 (addStillContains!1182 lt!591724 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153))))

(assert (=> b!1331885 (contains!8884 lt!591724 k0!1153)))

(declare-fun lt!591725 () Unit!43771)

(declare-fun lt!591723 () V!53995)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!277 ((_ BitVec 64) (_ BitVec 64) V!53995 ListLongMap!21537) Unit!43771)

(assert (=> b!1331885 (= lt!591725 (lemmaInListMapAfterAddingDiffThenInBefore!277 k0!1153 (select (arr!43556 _keys!1590) from!1980) lt!591723 lt!591724))))

(declare-fun lt!591727 () ListLongMap!21537)

(assert (=> b!1331885 (contains!8884 lt!591727 k0!1153)))

(declare-fun lt!591726 () Unit!43771)

(assert (=> b!1331885 (= lt!591726 (lemmaInListMapAfterAddingDiffThenInBefore!277 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591727))))

(assert (=> b!1331885 (= lt!591727 (+!4672 lt!591724 (tuple2!23869 (select (arr!43556 _keys!1590) from!1980) lt!591723)))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!22010 (ValueCell!17436 V!53995) V!53995)

(declare-fun dynLambda!3709 (Int (_ BitVec 64)) V!53995)

(assert (=> b!1331885 (= lt!591723 (get!22010 (select (arr!43555 _values!1320) from!1980) (dynLambda!3709 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1262 () V!53995)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6390 (array!90189 array!90187 (_ BitVec 32) (_ BitVec 32) V!53995 V!53995 (_ BitVec 32) Int) ListLongMap!21537)

(assert (=> b!1331885 (= lt!591724 (getCurrentListMapNoExtraKeys!6390 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331886 () Bool)

(declare-fun e!758865 () Bool)

(assert (=> b!1331886 (= e!758865 (and e!758869 mapRes!56677))))

(declare-fun condMapEmpty!56677 () Bool)

(declare-fun mapDefault!56677 () ValueCell!17436)

(assert (=> b!1331886 (= condMapEmpty!56677 (= (arr!43555 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17436)) mapDefault!56677)))))

(declare-fun b!1331887 () Bool)

(declare-fun res!883927 () Bool)

(assert (=> b!1331887 (=> (not res!883927) (not e!758867))))

(declare-datatypes ((List!31050 0))(
  ( (Nil!31047) (Cons!31046 (h!32255 (_ BitVec 64)) (t!45229 List!31050)) )
))
(declare-fun arrayNoDuplicates!0 (array!90189 (_ BitVec 32) List!31050) Bool)

(assert (=> b!1331887 (= res!883927 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31047))))

(declare-fun b!1331889 () Bool)

(declare-fun res!883928 () Bool)

(assert (=> b!1331889 (=> (not res!883928) (not e!758867))))

(declare-fun getCurrentListMap!5707 (array!90189 array!90187 (_ BitVec 32) (_ BitVec 32) V!53995 V!53995 (_ BitVec 32) Int) ListLongMap!21537)

(assert (=> b!1331889 (= res!883928 (contains!8884 (getCurrentListMap!5707 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1331890 () Bool)

(declare-fun res!883925 () Bool)

(assert (=> b!1331890 (=> (not res!883925) (not e!758867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90189 (_ BitVec 32)) Bool)

(assert (=> b!1331890 (= res!883925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331891 () Bool)

(assert (=> b!1331891 (= e!758868 tp_is_empty!36669)))

(declare-fun mapIsEmpty!56677 () Bool)

(assert (=> mapIsEmpty!56677 mapRes!56677))

(declare-fun b!1331892 () Bool)

(declare-fun res!883930 () Bool)

(assert (=> b!1331892 (=> (not res!883930) (not e!758867))))

(assert (=> b!1331892 (= res!883930 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331893 () Bool)

(declare-fun res!883929 () Bool)

(assert (=> b!1331893 (=> (not res!883929) (not e!758867))))

(assert (=> b!1331893 (= res!883929 (and (= (size!44106 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44107 _keys!1590) (size!44106 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!883931 () Bool)

(assert (=> start!112400 (=> (not res!883931) (not e!758867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112400 (= res!883931 (validMask!0 mask!1998))))

(assert (=> start!112400 e!758867))

(declare-fun array_inv!32805 (array!90187) Bool)

(assert (=> start!112400 (and (array_inv!32805 _values!1320) e!758865)))

(assert (=> start!112400 true))

(declare-fun array_inv!32806 (array!90189) Bool)

(assert (=> start!112400 (array_inv!32806 _keys!1590)))

(assert (=> start!112400 tp!107915))

(assert (=> start!112400 tp_is_empty!36669))

(declare-fun b!1331888 () Bool)

(declare-fun res!883926 () Bool)

(assert (=> b!1331888 (=> (not res!883926) (not e!758867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331888 (= res!883926 (validKeyInArray!0 (select (arr!43556 _keys!1590) from!1980)))))

(assert (= (and start!112400 res!883931) b!1331893))

(assert (= (and b!1331893 res!883929) b!1331890))

(assert (= (and b!1331890 res!883925) b!1331887))

(assert (= (and b!1331887 res!883927) b!1331884))

(assert (= (and b!1331884 res!883924) b!1331889))

(assert (= (and b!1331889 res!883928) b!1331883))

(assert (= (and b!1331883 res!883923) b!1331888))

(assert (= (and b!1331888 res!883926) b!1331892))

(assert (= (and b!1331892 res!883930) b!1331885))

(assert (= (and b!1331886 condMapEmpty!56677) mapIsEmpty!56677))

(assert (= (and b!1331886 (not condMapEmpty!56677)) mapNonEmpty!56677))

(get-info :version)

(assert (= (and mapNonEmpty!56677 ((_ is ValueCellFull!17436) mapValue!56677)) b!1331891))

(assert (= (and b!1331886 ((_ is ValueCellFull!17436) mapDefault!56677)) b!1331882))

(assert (= start!112400 b!1331886))

(declare-fun b_lambda!24029 () Bool)

(assert (=> (not b_lambda!24029) (not b!1331885)))

(declare-fun t!45227 () Bool)

(declare-fun tb!11983 () Bool)

(assert (=> (and start!112400 (= defaultEntry!1323 defaultEntry!1323) t!45227) tb!11983))

(declare-fun result!25029 () Bool)

(assert (=> tb!11983 (= result!25029 tp_is_empty!36669)))

(assert (=> b!1331885 t!45227))

(declare-fun b_and!49585 () Bool)

(assert (= b_and!49583 (and (=> t!45227 result!25029) b_and!49585)))

(declare-fun m!1220663 () Bool)

(assert (=> b!1331888 m!1220663))

(assert (=> b!1331888 m!1220663))

(declare-fun m!1220665 () Bool)

(assert (=> b!1331888 m!1220665))

(declare-fun m!1220667 () Bool)

(assert (=> b!1331890 m!1220667))

(declare-fun m!1220669 () Bool)

(assert (=> b!1331885 m!1220669))

(declare-fun m!1220671 () Bool)

(assert (=> b!1331885 m!1220671))

(declare-fun m!1220673 () Bool)

(assert (=> b!1331885 m!1220673))

(declare-fun m!1220675 () Bool)

(assert (=> b!1331885 m!1220675))

(assert (=> b!1331885 m!1220671))

(declare-fun m!1220677 () Bool)

(assert (=> b!1331885 m!1220677))

(assert (=> b!1331885 m!1220663))

(declare-fun m!1220679 () Bool)

(assert (=> b!1331885 m!1220679))

(declare-fun m!1220681 () Bool)

(assert (=> b!1331885 m!1220681))

(assert (=> b!1331885 m!1220675))

(declare-fun m!1220683 () Bool)

(assert (=> b!1331885 m!1220683))

(declare-fun m!1220685 () Bool)

(assert (=> b!1331885 m!1220685))

(declare-fun m!1220687 () Bool)

(assert (=> b!1331885 m!1220687))

(declare-fun m!1220689 () Bool)

(assert (=> b!1331885 m!1220689))

(assert (=> b!1331885 m!1220683))

(declare-fun m!1220691 () Bool)

(assert (=> b!1331885 m!1220691))

(assert (=> b!1331885 m!1220663))

(declare-fun m!1220693 () Bool)

(assert (=> b!1331887 m!1220693))

(declare-fun m!1220695 () Bool)

(assert (=> mapNonEmpty!56677 m!1220695))

(assert (=> b!1331883 m!1220663))

(declare-fun m!1220697 () Bool)

(assert (=> b!1331889 m!1220697))

(assert (=> b!1331889 m!1220697))

(declare-fun m!1220699 () Bool)

(assert (=> b!1331889 m!1220699))

(declare-fun m!1220701 () Bool)

(assert (=> start!112400 m!1220701))

(declare-fun m!1220703 () Bool)

(assert (=> start!112400 m!1220703))

(declare-fun m!1220705 () Bool)

(assert (=> start!112400 m!1220705))

(check-sat b_and!49585 (not b!1331887) (not b_next!30759) (not b!1331889) (not b!1331885) (not b!1331888) tp_is_empty!36669 (not b_lambda!24029) (not b!1331890) (not start!112400) (not mapNonEmpty!56677))
(check-sat b_and!49585 (not b_next!30759))
