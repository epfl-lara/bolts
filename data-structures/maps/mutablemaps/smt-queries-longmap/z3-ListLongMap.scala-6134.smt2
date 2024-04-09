; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78942 () Bool)

(assert start!78942)

(declare-fun b_free!17127 () Bool)

(declare-fun b_next!17127 () Bool)

(assert (=> start!78942 (= b_free!17127 (not b_next!17127))))

(declare-fun tp!59823 () Bool)

(declare-fun b_and!28009 () Bool)

(assert (=> start!78942 (= tp!59823 b_and!28009)))

(declare-fun mapNonEmpty!31209 () Bool)

(declare-fun mapRes!31209 () Bool)

(declare-fun tp!59822 () Bool)

(declare-fun e!517667 () Bool)

(assert (=> mapNonEmpty!31209 (= mapRes!31209 (and tp!59822 e!517667))))

(declare-fun mapKey!31209 () (_ BitVec 32))

(declare-datatypes ((V!31145 0))(
  ( (V!31146 (val!9868 Int)) )
))
(declare-datatypes ((ValueCell!9336 0))(
  ( (ValueCellFull!9336 (v!12386 V!31145)) (EmptyCell!9336) )
))
(declare-fun mapValue!31209 () ValueCell!9336)

(declare-fun mapRest!31209 () (Array (_ BitVec 32) ValueCell!9336))

(declare-datatypes ((array!55256 0))(
  ( (array!55257 (arr!26569 (Array (_ BitVec 32) ValueCell!9336)) (size!27029 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55256)

(assert (=> mapNonEmpty!31209 (= (arr!26569 _values!1231) (store mapRest!31209 mapKey!31209 mapValue!31209))))

(declare-fun b!922556 () Bool)

(declare-fun e!517668 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!922556 (= e!517668 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!922557 () Bool)

(declare-fun res!622229 () Bool)

(declare-fun e!517666 () Bool)

(assert (=> b!922557 (=> (not res!622229) (not e!517666))))

(declare-datatypes ((array!55258 0))(
  ( (array!55259 (arr!26570 (Array (_ BitVec 32) (_ BitVec 64))) (size!27030 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55258)

(declare-datatypes ((List!18781 0))(
  ( (Nil!18778) (Cons!18777 (h!19923 (_ BitVec 64)) (t!26646 List!18781)) )
))
(declare-fun arrayNoDuplicates!0 (array!55258 (_ BitVec 32) List!18781) Bool)

(assert (=> b!922557 (= res!622229 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18778))))

(declare-fun b!922558 () Bool)

(declare-fun e!517663 () Bool)

(declare-fun e!517664 () Bool)

(assert (=> b!922558 (= e!517663 (and e!517664 mapRes!31209))))

(declare-fun condMapEmpty!31209 () Bool)

(declare-fun mapDefault!31209 () ValueCell!9336)

(assert (=> b!922558 (= condMapEmpty!31209 (= (arr!26569 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9336)) mapDefault!31209)))))

(declare-fun b!922559 () Bool)

(declare-fun e!517662 () Bool)

(assert (=> b!922559 (= e!517666 e!517662)))

(declare-fun res!622227 () Bool)

(assert (=> b!922559 (=> (not res!622227) (not e!517662))))

(declare-datatypes ((tuple2!12944 0))(
  ( (tuple2!12945 (_1!6482 (_ BitVec 64)) (_2!6482 V!31145)) )
))
(declare-datatypes ((List!18782 0))(
  ( (Nil!18779) (Cons!18778 (h!19924 tuple2!12944) (t!26647 List!18782)) )
))
(declare-datatypes ((ListLongMap!11655 0))(
  ( (ListLongMap!11656 (toList!5843 List!18782)) )
))
(declare-fun lt!414335 () ListLongMap!11655)

(declare-fun contains!4868 (ListLongMap!11655 (_ BitVec 64)) Bool)

(assert (=> b!922559 (= res!622227 (contains!4868 lt!414335 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31145)

(declare-fun minValue!1173 () V!31145)

(declare-fun getCurrentListMap!3062 (array!55258 array!55256 (_ BitVec 32) (_ BitVec 32) V!31145 V!31145 (_ BitVec 32) Int) ListLongMap!11655)

(assert (=> b!922559 (= lt!414335 (getCurrentListMap!3062 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922560 () Bool)

(declare-fun tp_is_empty!19635 () Bool)

(assert (=> b!922560 (= e!517667 tp_is_empty!19635)))

(declare-fun b!922561 () Bool)

(declare-fun res!622234 () Bool)

(assert (=> b!922561 (=> (not res!622234) (not e!517662))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922561 (= res!622234 (validKeyInArray!0 k0!1099))))

(declare-fun b!922562 () Bool)

(declare-fun res!622232 () Bool)

(assert (=> b!922562 (=> (not res!622232) (not e!517662))))

(assert (=> b!922562 (= res!622232 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun res!622233 () Bool)

(assert (=> start!78942 (=> (not res!622233) (not e!517666))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78942 (= res!622233 (validMask!0 mask!1881))))

(assert (=> start!78942 e!517666))

(assert (=> start!78942 true))

(assert (=> start!78942 tp_is_empty!19635))

(declare-fun array_inv!20686 (array!55256) Bool)

(assert (=> start!78942 (and (array_inv!20686 _values!1231) e!517663)))

(assert (=> start!78942 tp!59823))

(declare-fun array_inv!20687 (array!55258) Bool)

(assert (=> start!78942 (array_inv!20687 _keys!1487)))

(declare-fun mapIsEmpty!31209 () Bool)

(assert (=> mapIsEmpty!31209 mapRes!31209))

(declare-fun b!922563 () Bool)

(declare-fun res!622235 () Bool)

(assert (=> b!922563 (=> (not res!622235) (not e!517666))))

(assert (=> b!922563 (= res!622235 (and (= (size!27029 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27030 _keys!1487) (size!27029 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922564 () Bool)

(declare-fun e!517661 () Bool)

(assert (=> b!922564 (= e!517662 e!517661)))

(declare-fun res!622231 () Bool)

(assert (=> b!922564 (=> (not res!622231) (not e!517661))))

(declare-fun lt!414341 () (_ BitVec 64))

(assert (=> b!922564 (= res!622231 (validKeyInArray!0 lt!414341))))

(assert (=> b!922564 (= lt!414341 (select (arr!26570 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922565 () Bool)

(assert (=> b!922565 (= e!517664 tp_is_empty!19635)))

(declare-fun b!922566 () Bool)

(declare-fun res!622226 () Bool)

(assert (=> b!922566 (=> (not res!622226) (not e!517666))))

(assert (=> b!922566 (= res!622226 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27030 _keys!1487))))))

(declare-fun b!922567 () Bool)

(declare-fun res!622228 () Bool)

(assert (=> b!922567 (=> (not res!622228) (not e!517662))))

(declare-fun v!791 () V!31145)

(declare-fun apply!648 (ListLongMap!11655 (_ BitVec 64)) V!31145)

(assert (=> b!922567 (= res!622228 (= (apply!648 lt!414335 k0!1099) v!791))))

(declare-fun b!922568 () Bool)

(declare-fun arrayContainsKey!0 (array!55258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922568 (= e!517668 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!922569 () Bool)

(assert (=> b!922569 (= e!517661 (not true))))

(assert (=> b!922569 (not (= lt!414341 k0!1099))))

(declare-datatypes ((Unit!31117 0))(
  ( (Unit!31118) )
))
(declare-fun lt!414339 () Unit!31117)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55258 (_ BitVec 64) (_ BitVec 32) List!18781) Unit!31117)

(assert (=> b!922569 (= lt!414339 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18778))))

(assert (=> b!922569 e!517668))

(declare-fun c!96110 () Bool)

(assert (=> b!922569 (= c!96110 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414334 () Unit!31117)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!201 (array!55258 array!55256 (_ BitVec 32) (_ BitVec 32) V!31145 V!31145 (_ BitVec 64) (_ BitVec 32) Int) Unit!31117)

(assert (=> b!922569 (= lt!414334 (lemmaListMapContainsThenArrayContainsFrom!201 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!922569 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18778)))

(declare-fun lt!414338 () Unit!31117)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55258 (_ BitVec 32) (_ BitVec 32)) Unit!31117)

(assert (=> b!922569 (= lt!414338 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414340 () tuple2!12944)

(declare-fun +!2655 (ListLongMap!11655 tuple2!12944) ListLongMap!11655)

(assert (=> b!922569 (contains!4868 (+!2655 lt!414335 lt!414340) k0!1099)))

(declare-fun lt!414337 () Unit!31117)

(declare-fun lt!414336 () V!31145)

(declare-fun addStillContains!417 (ListLongMap!11655 (_ BitVec 64) V!31145 (_ BitVec 64)) Unit!31117)

(assert (=> b!922569 (= lt!414337 (addStillContains!417 lt!414335 lt!414341 lt!414336 k0!1099))))

(assert (=> b!922569 (= (getCurrentListMap!3062 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2655 (getCurrentListMap!3062 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414340))))

(assert (=> b!922569 (= lt!414340 (tuple2!12945 lt!414341 lt!414336))))

(declare-fun get!13976 (ValueCell!9336 V!31145) V!31145)

(declare-fun dynLambda!1494 (Int (_ BitVec 64)) V!31145)

(assert (=> b!922569 (= lt!414336 (get!13976 (select (arr!26569 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1494 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414342 () Unit!31117)

(declare-fun lemmaListMapRecursiveValidKeyArray!90 (array!55258 array!55256 (_ BitVec 32) (_ BitVec 32) V!31145 V!31145 (_ BitVec 32) Int) Unit!31117)

(assert (=> b!922569 (= lt!414342 (lemmaListMapRecursiveValidKeyArray!90 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922570 () Bool)

(declare-fun res!622230 () Bool)

(assert (=> b!922570 (=> (not res!622230) (not e!517666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55258 (_ BitVec 32)) Bool)

(assert (=> b!922570 (= res!622230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!78942 res!622233) b!922563))

(assert (= (and b!922563 res!622235) b!922570))

(assert (= (and b!922570 res!622230) b!922557))

(assert (= (and b!922557 res!622229) b!922566))

(assert (= (and b!922566 res!622226) b!922559))

(assert (= (and b!922559 res!622227) b!922567))

(assert (= (and b!922567 res!622228) b!922562))

(assert (= (and b!922562 res!622232) b!922561))

(assert (= (and b!922561 res!622234) b!922564))

(assert (= (and b!922564 res!622231) b!922569))

(assert (= (and b!922569 c!96110) b!922568))

(assert (= (and b!922569 (not c!96110)) b!922556))

(assert (= (and b!922558 condMapEmpty!31209) mapIsEmpty!31209))

(assert (= (and b!922558 (not condMapEmpty!31209)) mapNonEmpty!31209))

(get-info :version)

(assert (= (and mapNonEmpty!31209 ((_ is ValueCellFull!9336) mapValue!31209)) b!922560))

(assert (= (and b!922558 ((_ is ValueCellFull!9336) mapDefault!31209)) b!922565))

(assert (= start!78942 b!922558))

(declare-fun b_lambda!13659 () Bool)

(assert (=> (not b_lambda!13659) (not b!922569)))

(declare-fun t!26645 () Bool)

(declare-fun tb!5715 () Bool)

(assert (=> (and start!78942 (= defaultEntry!1235 defaultEntry!1235) t!26645) tb!5715))

(declare-fun result!11245 () Bool)

(assert (=> tb!5715 (= result!11245 tp_is_empty!19635)))

(assert (=> b!922569 t!26645))

(declare-fun b_and!28011 () Bool)

(assert (= b_and!28009 (and (=> t!26645 result!11245) b_and!28011)))

(declare-fun m!856771 () Bool)

(assert (=> b!922569 m!856771))

(declare-fun m!856773 () Bool)

(assert (=> b!922569 m!856773))

(declare-fun m!856775 () Bool)

(assert (=> b!922569 m!856775))

(declare-fun m!856777 () Bool)

(assert (=> b!922569 m!856777))

(assert (=> b!922569 m!856775))

(assert (=> b!922569 m!856777))

(declare-fun m!856779 () Bool)

(assert (=> b!922569 m!856779))

(declare-fun m!856781 () Bool)

(assert (=> b!922569 m!856781))

(declare-fun m!856783 () Bool)

(assert (=> b!922569 m!856783))

(declare-fun m!856785 () Bool)

(assert (=> b!922569 m!856785))

(declare-fun m!856787 () Bool)

(assert (=> b!922569 m!856787))

(declare-fun m!856789 () Bool)

(assert (=> b!922569 m!856789))

(declare-fun m!856791 () Bool)

(assert (=> b!922569 m!856791))

(declare-fun m!856793 () Bool)

(assert (=> b!922569 m!856793))

(declare-fun m!856795 () Bool)

(assert (=> b!922569 m!856795))

(assert (=> b!922569 m!856793))

(declare-fun m!856797 () Bool)

(assert (=> b!922569 m!856797))

(assert (=> b!922569 m!856789))

(declare-fun m!856799 () Bool)

(assert (=> b!922564 m!856799))

(declare-fun m!856801 () Bool)

(assert (=> b!922564 m!856801))

(declare-fun m!856803 () Bool)

(assert (=> b!922559 m!856803))

(declare-fun m!856805 () Bool)

(assert (=> b!922559 m!856805))

(declare-fun m!856807 () Bool)

(assert (=> b!922570 m!856807))

(declare-fun m!856809 () Bool)

(assert (=> b!922561 m!856809))

(declare-fun m!856811 () Bool)

(assert (=> b!922568 m!856811))

(declare-fun m!856813 () Bool)

(assert (=> b!922557 m!856813))

(declare-fun m!856815 () Bool)

(assert (=> start!78942 m!856815))

(declare-fun m!856817 () Bool)

(assert (=> start!78942 m!856817))

(declare-fun m!856819 () Bool)

(assert (=> start!78942 m!856819))

(declare-fun m!856821 () Bool)

(assert (=> b!922567 m!856821))

(declare-fun m!856823 () Bool)

(assert (=> mapNonEmpty!31209 m!856823))

(check-sat (not mapNonEmpty!31209) (not b_next!17127) (not b!922557) (not b!922559) (not b!922561) (not b!922569) (not b!922567) (not b!922568) (not start!78942) (not b_lambda!13659) (not b!922564) tp_is_empty!19635 b_and!28011 (not b!922570))
(check-sat b_and!28011 (not b_next!17127))
