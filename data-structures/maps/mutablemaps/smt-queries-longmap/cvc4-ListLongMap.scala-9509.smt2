; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112844 () Bool)

(assert start!112844)

(declare-fun b_free!31061 () Bool)

(declare-fun b_next!31061 () Bool)

(assert (=> start!112844 (= b_free!31061 (not b_next!31061))))

(declare-fun tp!108831 () Bool)

(declare-fun b_and!50079 () Bool)

(assert (=> start!112844 (= tp!108831 b_and!50079)))

(declare-fun b!1337884 () Bool)

(declare-fun res!887877 () Bool)

(declare-fun e!761813 () Bool)

(assert (=> b!1337884 (=> (not res!887877) (not e!761813))))

(declare-datatypes ((array!90775 0))(
  ( (array!90776 (arr!43846 (Array (_ BitVec 32) (_ BitVec 64))) (size!44397 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90775)

(declare-datatypes ((List!31256 0))(
  ( (Nil!31253) (Cons!31252 (h!32461 (_ BitVec 64)) (t!45593 List!31256)) )
))
(declare-fun arrayNoDuplicates!0 (array!90775 (_ BitVec 32) List!31256) Bool)

(assert (=> b!1337884 (= res!887877 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31253))))

(declare-fun b!1337885 () Bool)

(declare-fun res!887867 () Bool)

(assert (=> b!1337885 (=> (not res!887867) (not e!761813))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1337885 (= res!887867 (validKeyInArray!0 (select (arr!43846 _keys!1590) from!1980)))))

(declare-fun b!1337886 () Bool)

(declare-fun res!887876 () Bool)

(assert (=> b!1337886 (=> (not res!887876) (not e!761813))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90775 (_ BitVec 32)) Bool)

(assert (=> b!1337886 (= res!887876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1337887 () Bool)

(declare-fun res!887875 () Bool)

(assert (=> b!1337887 (=> (not res!887875) (not e!761813))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1337887 (= res!887875 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44397 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!887869 () Bool)

(assert (=> start!112844 (=> (not res!887869) (not e!761813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112844 (= res!887869 (validMask!0 mask!1998))))

(assert (=> start!112844 e!761813))

(declare-datatypes ((V!54397 0))(
  ( (V!54398 (val!18560 Int)) )
))
(declare-datatypes ((ValueCell!17587 0))(
  ( (ValueCellFull!17587 (v!21202 V!54397)) (EmptyCell!17587) )
))
(declare-datatypes ((array!90777 0))(
  ( (array!90778 (arr!43847 (Array (_ BitVec 32) ValueCell!17587)) (size!44398 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90777)

(declare-fun e!761812 () Bool)

(declare-fun array_inv!32993 (array!90777) Bool)

(assert (=> start!112844 (and (array_inv!32993 _values!1320) e!761812)))

(assert (=> start!112844 true))

(declare-fun array_inv!32994 (array!90775) Bool)

(assert (=> start!112844 (array_inv!32994 _keys!1590)))

(assert (=> start!112844 tp!108831))

(declare-fun tp_is_empty!36971 () Bool)

(assert (=> start!112844 tp_is_empty!36971))

(declare-fun b!1337888 () Bool)

(declare-fun res!887870 () Bool)

(assert (=> b!1337888 (=> (not res!887870) (not e!761813))))

(assert (=> b!1337888 (= res!887870 (not (= (select (arr!43846 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1337889 () Bool)

(declare-fun res!887868 () Bool)

(assert (=> b!1337889 (=> (not res!887868) (not e!761813))))

(assert (=> b!1337889 (= res!887868 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!57141 () Bool)

(declare-fun mapRes!57141 () Bool)

(assert (=> mapIsEmpty!57141 mapRes!57141))

(declare-fun b!1337890 () Bool)

(declare-fun e!761816 () Bool)

(assert (=> b!1337890 (= e!761816 tp_is_empty!36971)))

(declare-fun b!1337891 () Bool)

(declare-fun e!761815 () Bool)

(assert (=> b!1337891 (= e!761813 e!761815)))

(declare-fun res!887871 () Bool)

(assert (=> b!1337891 (=> (not res!887871) (not e!761815))))

(declare-fun lt!593295 () V!54397)

(declare-datatypes ((tuple2!24090 0))(
  ( (tuple2!24091 (_1!12055 (_ BitVec 64)) (_2!12055 V!54397)) )
))
(declare-datatypes ((List!31257 0))(
  ( (Nil!31254) (Cons!31253 (h!32462 tuple2!24090) (t!45594 List!31257)) )
))
(declare-datatypes ((ListLongMap!21759 0))(
  ( (ListLongMap!21760 (toList!10895 List!31257)) )
))
(declare-fun lt!593293 () ListLongMap!21759)

(declare-fun contains!9000 (ListLongMap!21759 (_ BitVec 64)) Bool)

(declare-fun +!4724 (ListLongMap!21759 tuple2!24090) ListLongMap!21759)

(assert (=> b!1337891 (= res!887871 (contains!9000 (+!4724 lt!593293 (tuple2!24091 (select (arr!43846 _keys!1590) from!1980) lt!593295)) k!1153))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54397)

(declare-fun zeroValue!1262 () V!54397)

(declare-fun getCurrentListMapNoExtraKeys!6447 (array!90775 array!90777 (_ BitVec 32) (_ BitVec 32) V!54397 V!54397 (_ BitVec 32) Int) ListLongMap!21759)

(assert (=> b!1337891 (= lt!593293 (getCurrentListMapNoExtraKeys!6447 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22170 (ValueCell!17587 V!54397) V!54397)

(declare-fun dynLambda!3761 (Int (_ BitVec 64)) V!54397)

(assert (=> b!1337891 (= lt!593295 (get!22170 (select (arr!43847 _values!1320) from!1980) (dynLambda!3761 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1337892 () Bool)

(declare-fun res!887874 () Bool)

(assert (=> b!1337892 (=> (not res!887874) (not e!761815))))

(assert (=> b!1337892 (= res!887874 (not (= k!1153 (select (arr!43846 _keys!1590) from!1980))))))

(declare-fun b!1337893 () Bool)

(declare-fun getCurrentListMap!5799 (array!90775 array!90777 (_ BitVec 32) (_ BitVec 32) V!54397 V!54397 (_ BitVec 32) Int) ListLongMap!21759)

(assert (=> b!1337893 (= e!761815 (not (contains!9000 (getCurrentListMap!5799 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) k!1153)))))

(assert (=> b!1337893 (contains!9000 lt!593293 k!1153)))

(declare-datatypes ((Unit!43891 0))(
  ( (Unit!43892) )
))
(declare-fun lt!593294 () Unit!43891)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!319 ((_ BitVec 64) (_ BitVec 64) V!54397 ListLongMap!21759) Unit!43891)

(assert (=> b!1337893 (= lt!593294 (lemmaInListMapAfterAddingDiffThenInBefore!319 k!1153 (select (arr!43846 _keys!1590) from!1980) lt!593295 lt!593293))))

(declare-fun b!1337894 () Bool)

(declare-fun res!887873 () Bool)

(assert (=> b!1337894 (=> (not res!887873) (not e!761813))))

(assert (=> b!1337894 (= res!887873 (contains!9000 (getCurrentListMap!5799 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1337895 () Bool)

(declare-fun e!761811 () Bool)

(assert (=> b!1337895 (= e!761812 (and e!761811 mapRes!57141))))

(declare-fun condMapEmpty!57141 () Bool)

(declare-fun mapDefault!57141 () ValueCell!17587)

