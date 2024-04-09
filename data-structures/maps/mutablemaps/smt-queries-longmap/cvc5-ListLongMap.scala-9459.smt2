; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112398 () Bool)

(assert start!112398)

(declare-fun b_free!30757 () Bool)

(declare-fun b_next!30757 () Bool)

(assert (=> start!112398 (= b_free!30757 (not b_next!30757))))

(declare-fun tp!107909 () Bool)

(declare-fun b_and!49579 () Bool)

(assert (=> start!112398 (= tp!107909 b_and!49579)))

(declare-fun b!1331844 () Bool)

(declare-fun res!883902 () Bool)

(declare-fun e!758851 () Bool)

(assert (=> b!1331844 (=> (not res!883902) (not e!758851))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1331844 (= res!883902 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331845 () Bool)

(declare-fun e!758850 () Bool)

(declare-fun tp_is_empty!36667 () Bool)

(assert (=> b!1331845 (= e!758850 tp_is_empty!36667)))

(declare-fun b!1331846 () Bool)

(assert (=> b!1331846 (= e!758851 (not true))))

(declare-datatypes ((V!53993 0))(
  ( (V!53994 (val!18408 Int)) )
))
(declare-datatypes ((tuple2!23866 0))(
  ( (tuple2!23867 (_1!11943 (_ BitVec 64)) (_2!11943 V!53993)) )
))
(declare-datatypes ((List!31047 0))(
  ( (Nil!31044) (Cons!31043 (h!32252 tuple2!23866) (t!45224 List!31047)) )
))
(declare-datatypes ((ListLongMap!21535 0))(
  ( (ListLongMap!21536 (toList!10783 List!31047)) )
))
(declare-fun lt!591709 () ListLongMap!21535)

(declare-fun minValue!1262 () V!53993)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8883 (ListLongMap!21535 (_ BitVec 64)) Bool)

(declare-fun +!4671 (ListLongMap!21535 tuple2!23866) ListLongMap!21535)

(assert (=> b!1331846 (contains!8883 (+!4671 lt!591709 (tuple2!23867 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k!1153)))

(declare-datatypes ((Unit!43769 0))(
  ( (Unit!43770) )
))
(declare-fun lt!591706 () Unit!43769)

(declare-fun addStillContains!1181 (ListLongMap!21535 (_ BitVec 64) V!53993 (_ BitVec 64)) Unit!43769)

(assert (=> b!1331846 (= lt!591706 (addStillContains!1181 lt!591709 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k!1153))))

(assert (=> b!1331846 (contains!8883 lt!591709 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!591710 () Unit!43769)

(declare-fun lt!591707 () V!53993)

(declare-datatypes ((array!90183 0))(
  ( (array!90184 (arr!43553 (Array (_ BitVec 32) (_ BitVec 64))) (size!44104 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90183)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!276 ((_ BitVec 64) (_ BitVec 64) V!53993 ListLongMap!21535) Unit!43769)

(assert (=> b!1331846 (= lt!591710 (lemmaInListMapAfterAddingDiffThenInBefore!276 k!1153 (select (arr!43553 _keys!1590) from!1980) lt!591707 lt!591709))))

(declare-fun lt!591708 () ListLongMap!21535)

(assert (=> b!1331846 (contains!8883 lt!591708 k!1153)))

(declare-fun lt!591705 () Unit!43769)

(assert (=> b!1331846 (= lt!591705 (lemmaInListMapAfterAddingDiffThenInBefore!276 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591708))))

(assert (=> b!1331846 (= lt!591708 (+!4671 lt!591709 (tuple2!23867 (select (arr!43553 _keys!1590) from!1980) lt!591707)))))

(declare-datatypes ((ValueCell!17435 0))(
  ( (ValueCellFull!17435 (v!21043 V!53993)) (EmptyCell!17435) )
))
(declare-datatypes ((array!90185 0))(
  ( (array!90186 (arr!43554 (Array (_ BitVec 32) ValueCell!17435)) (size!44105 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90185)

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!22009 (ValueCell!17435 V!53993) V!53993)

(declare-fun dynLambda!3708 (Int (_ BitVec 64)) V!53993)

(assert (=> b!1331846 (= lt!591707 (get!22009 (select (arr!43554 _values!1320) from!1980) (dynLambda!3708 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!53993)

(declare-fun getCurrentListMapNoExtraKeys!6389 (array!90183 array!90185 (_ BitVec 32) (_ BitVec 32) V!53993 V!53993 (_ BitVec 32) Int) ListLongMap!21535)

(assert (=> b!1331846 (= lt!591709 (getCurrentListMapNoExtraKeys!6389 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331847 () Bool)

(declare-fun res!883896 () Bool)

(assert (=> b!1331847 (=> (not res!883896) (not e!758851))))

(assert (=> b!1331847 (= res!883896 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44104 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56674 () Bool)

(declare-fun mapRes!56674 () Bool)

(declare-fun tp!107908 () Bool)

(assert (=> mapNonEmpty!56674 (= mapRes!56674 (and tp!107908 e!758850))))

(declare-fun mapRest!56674 () (Array (_ BitVec 32) ValueCell!17435))

(declare-fun mapKey!56674 () (_ BitVec 32))

(declare-fun mapValue!56674 () ValueCell!17435)

(assert (=> mapNonEmpty!56674 (= (arr!43554 _values!1320) (store mapRest!56674 mapKey!56674 mapValue!56674))))

(declare-fun b!1331848 () Bool)

(declare-fun res!883900 () Bool)

(assert (=> b!1331848 (=> (not res!883900) (not e!758851))))

(declare-fun getCurrentListMap!5706 (array!90183 array!90185 (_ BitVec 32) (_ BitVec 32) V!53993 V!53993 (_ BitVec 32) Int) ListLongMap!21535)

(assert (=> b!1331848 (= res!883900 (contains!8883 (getCurrentListMap!5706 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1331849 () Bool)

(declare-fun res!883904 () Bool)

(assert (=> b!1331849 (=> (not res!883904) (not e!758851))))

(declare-datatypes ((List!31048 0))(
  ( (Nil!31045) (Cons!31044 (h!32253 (_ BitVec 64)) (t!45225 List!31048)) )
))
(declare-fun arrayNoDuplicates!0 (array!90183 (_ BitVec 32) List!31048) Bool)

(assert (=> b!1331849 (= res!883904 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31045))))

(declare-fun b!1331850 () Bool)

(declare-fun res!883899 () Bool)

(assert (=> b!1331850 (=> (not res!883899) (not e!758851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331850 (= res!883899 (validKeyInArray!0 (select (arr!43553 _keys!1590) from!1980)))))

(declare-fun b!1331851 () Bool)

(declare-fun res!883901 () Bool)

(assert (=> b!1331851 (=> (not res!883901) (not e!758851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90183 (_ BitVec 32)) Bool)

(assert (=> b!1331851 (= res!883901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1331852 () Bool)

(declare-fun e!758852 () Bool)

(assert (=> b!1331852 (= e!758852 tp_is_empty!36667)))

(declare-fun b!1331853 () Bool)

(declare-fun e!758854 () Bool)

(assert (=> b!1331853 (= e!758854 (and e!758852 mapRes!56674))))

(declare-fun condMapEmpty!56674 () Bool)

(declare-fun mapDefault!56674 () ValueCell!17435)

