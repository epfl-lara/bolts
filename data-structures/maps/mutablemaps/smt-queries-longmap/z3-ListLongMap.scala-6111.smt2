; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78804 () Bool)

(assert start!78804)

(declare-fun b_free!16989 () Bool)

(declare-fun b_next!16989 () Bool)

(assert (=> start!78804 (= b_free!16989 (not b_next!16989))))

(declare-fun tp!59408 () Bool)

(declare-fun b_and!27733 () Bool)

(assert (=> start!78804 (= tp!59408 b_and!27733)))

(declare-fun b!919204 () Bool)

(declare-fun res!619913 () Bool)

(declare-fun e!515996 () Bool)

(assert (=> b!919204 (=> (not res!619913) (not e!515996))))

(declare-datatypes ((array!54986 0))(
  ( (array!54987 (arr!26434 (Array (_ BitVec 32) (_ BitVec 64))) (size!26894 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54986)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30961 0))(
  ( (V!30962 (val!9799 Int)) )
))
(declare-datatypes ((ValueCell!9267 0))(
  ( (ValueCellFull!9267 (v!12317 V!30961)) (EmptyCell!9267) )
))
(declare-datatypes ((array!54988 0))(
  ( (array!54989 (arr!26435 (Array (_ BitVec 32) ValueCell!9267)) (size!26895 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54988)

(assert (=> b!919204 (= res!619913 (and (= (size!26895 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26894 _keys!1487) (size!26895 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!919205 () Bool)

(declare-fun e!515995 () Bool)

(declare-fun e!515997 () Bool)

(assert (=> b!919205 (= e!515995 e!515997)))

(declare-fun res!619915 () Bool)

(assert (=> b!919205 (=> (not res!619915) (not e!515997))))

(declare-fun lt!412606 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!919205 (= res!619915 (validKeyInArray!0 lt!412606))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!919205 (= lt!412606 (select (arr!26434 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!919206 () Bool)

(declare-fun res!619922 () Bool)

(assert (=> b!919206 (=> (not res!619922) (not e!515995))))

(declare-fun k0!1099 () (_ BitVec 64))

(assert (=> b!919206 (= res!619922 (validKeyInArray!0 k0!1099))))

(declare-fun mapNonEmpty!31002 () Bool)

(declare-fun mapRes!31002 () Bool)

(declare-fun tp!59409 () Bool)

(declare-fun e!515992 () Bool)

(assert (=> mapNonEmpty!31002 (= mapRes!31002 (and tp!59409 e!515992))))

(declare-fun mapRest!31002 () (Array (_ BitVec 32) ValueCell!9267))

(declare-fun mapValue!31002 () ValueCell!9267)

(declare-fun mapKey!31002 () (_ BitVec 32))

(assert (=> mapNonEmpty!31002 (= (arr!26435 _values!1231) (store mapRest!31002 mapKey!31002 mapValue!31002))))

(declare-fun b!919207 () Bool)

(declare-fun res!619918 () Bool)

(assert (=> b!919207 (=> (not res!619918) (not e!515996))))

(assert (=> b!919207 (= res!619918 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26894 _keys!1487))))))

(declare-fun b!919208 () Bool)

(declare-fun e!515994 () Bool)

(declare-fun e!515991 () Bool)

(assert (=> b!919208 (= e!515994 (and e!515991 mapRes!31002))))

(declare-fun condMapEmpty!31002 () Bool)

(declare-fun mapDefault!31002 () ValueCell!9267)

(assert (=> b!919208 (= condMapEmpty!31002 (= (arr!26435 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9267)) mapDefault!31002)))))

(declare-fun b!919209 () Bool)

(assert (=> b!919209 (= e!515996 e!515995)))

(declare-fun res!619920 () Bool)

(assert (=> b!919209 (=> (not res!619920) (not e!515995))))

(declare-datatypes ((tuple2!12820 0))(
  ( (tuple2!12821 (_1!6420 (_ BitVec 64)) (_2!6420 V!30961)) )
))
(declare-datatypes ((List!18662 0))(
  ( (Nil!18659) (Cons!18658 (h!19804 tuple2!12820) (t!26389 List!18662)) )
))
(declare-datatypes ((ListLongMap!11531 0))(
  ( (ListLongMap!11532 (toList!5781 List!18662)) )
))
(declare-fun lt!412605 () ListLongMap!11531)

(declare-fun contains!4792 (ListLongMap!11531 (_ BitVec 64)) Bool)

(assert (=> b!919209 (= res!619920 (contains!4792 lt!412605 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30961)

(declare-fun minValue!1173 () V!30961)

(declare-fun getCurrentListMap!3004 (array!54986 array!54988 (_ BitVec 32) (_ BitVec 32) V!30961 V!30961 (_ BitVec 32) Int) ListLongMap!11531)

(assert (=> b!919209 (= lt!412605 (getCurrentListMap!3004 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!619916 () Bool)

(assert (=> start!78804 (=> (not res!619916) (not e!515996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78804 (= res!619916 (validMask!0 mask!1881))))

(assert (=> start!78804 e!515996))

(assert (=> start!78804 true))

(declare-fun tp_is_empty!19497 () Bool)

(assert (=> start!78804 tp_is_empty!19497))

(declare-fun array_inv!20594 (array!54988) Bool)

(assert (=> start!78804 (and (array_inv!20594 _values!1231) e!515994)))

(assert (=> start!78804 tp!59408))

(declare-fun array_inv!20595 (array!54986) Bool)

(assert (=> start!78804 (array_inv!20595 _keys!1487)))

(declare-fun mapIsEmpty!31002 () Bool)

(assert (=> mapIsEmpty!31002 mapRes!31002))

(declare-fun b!919210 () Bool)

(declare-fun res!619917 () Bool)

(assert (=> b!919210 (=> (not res!619917) (not e!515995))))

(assert (=> b!919210 (= res!619917 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!919211 () Bool)

(assert (=> b!919211 (= e!515992 tp_is_empty!19497)))

(declare-fun b!919212 () Bool)

(assert (=> b!919212 (= e!515991 tp_is_empty!19497)))

(declare-fun b!919213 () Bool)

(declare-fun res!619914 () Bool)

(assert (=> b!919213 (=> (not res!619914) (not e!515996))))

(declare-datatypes ((List!18663 0))(
  ( (Nil!18660) (Cons!18659 (h!19805 (_ BitVec 64)) (t!26390 List!18663)) )
))
(declare-fun arrayNoDuplicates!0 (array!54986 (_ BitVec 32) List!18663) Bool)

(assert (=> b!919213 (= res!619914 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18660))))

(declare-fun b!919214 () Bool)

(declare-fun res!619919 () Bool)

(assert (=> b!919214 (=> (not res!619919) (not e!515996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54986 (_ BitVec 32)) Bool)

(assert (=> b!919214 (= res!619919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!919215 () Bool)

(assert (=> b!919215 (= e!515997 (not true))))

(assert (=> b!919215 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18660)))

(declare-datatypes ((Unit!31019 0))(
  ( (Unit!31020) )
))
(declare-fun lt!412607 () Unit!31019)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!54986 (_ BitVec 32) (_ BitVec 32)) Unit!31019)

(assert (=> b!919215 (= lt!412607 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!412611 () tuple2!12820)

(declare-fun +!2606 (ListLongMap!11531 tuple2!12820) ListLongMap!11531)

(assert (=> b!919215 (contains!4792 (+!2606 lt!412605 lt!412611) k0!1099)))

(declare-fun lt!412609 () Unit!31019)

(declare-fun lt!412608 () V!30961)

(declare-fun addStillContains!368 (ListLongMap!11531 (_ BitVec 64) V!30961 (_ BitVec 64)) Unit!31019)

(assert (=> b!919215 (= lt!412609 (addStillContains!368 lt!412605 lt!412606 lt!412608 k0!1099))))

(assert (=> b!919215 (= (getCurrentListMap!3004 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2606 (getCurrentListMap!3004 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412611))))

(assert (=> b!919215 (= lt!412611 (tuple2!12821 lt!412606 lt!412608))))

(declare-fun get!13881 (ValueCell!9267 V!30961) V!30961)

(declare-fun dynLambda!1445 (Int (_ BitVec 64)) V!30961)

(assert (=> b!919215 (= lt!412608 (get!13881 (select (arr!26435 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1445 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412610 () Unit!31019)

(declare-fun lemmaListMapRecursiveValidKeyArray!41 (array!54986 array!54988 (_ BitVec 32) (_ BitVec 32) V!30961 V!30961 (_ BitVec 32) Int) Unit!31019)

(assert (=> b!919215 (= lt!412610 (lemmaListMapRecursiveValidKeyArray!41 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!919216 () Bool)

(declare-fun res!619921 () Bool)

(assert (=> b!919216 (=> (not res!619921) (not e!515995))))

(declare-fun v!791 () V!30961)

(declare-fun apply!596 (ListLongMap!11531 (_ BitVec 64)) V!30961)

(assert (=> b!919216 (= res!619921 (= (apply!596 lt!412605 k0!1099) v!791))))

(assert (= (and start!78804 res!619916) b!919204))

(assert (= (and b!919204 res!619913) b!919214))

(assert (= (and b!919214 res!619919) b!919213))

(assert (= (and b!919213 res!619914) b!919207))

(assert (= (and b!919207 res!619918) b!919209))

(assert (= (and b!919209 res!619920) b!919216))

(assert (= (and b!919216 res!619921) b!919210))

(assert (= (and b!919210 res!619917) b!919206))

(assert (= (and b!919206 res!619922) b!919205))

(assert (= (and b!919205 res!619915) b!919215))

(assert (= (and b!919208 condMapEmpty!31002) mapIsEmpty!31002))

(assert (= (and b!919208 (not condMapEmpty!31002)) mapNonEmpty!31002))

(get-info :version)

(assert (= (and mapNonEmpty!31002 ((_ is ValueCellFull!9267) mapValue!31002)) b!919211))

(assert (= (and b!919208 ((_ is ValueCellFull!9267) mapDefault!31002)) b!919212))

(assert (= start!78804 b!919208))

(declare-fun b_lambda!13521 () Bool)

(assert (=> (not b_lambda!13521) (not b!919215)))

(declare-fun t!26388 () Bool)

(declare-fun tb!5577 () Bool)

(assert (=> (and start!78804 (= defaultEntry!1235 defaultEntry!1235) t!26388) tb!5577))

(declare-fun result!10969 () Bool)

(assert (=> tb!5577 (= result!10969 tp_is_empty!19497)))

(assert (=> b!919215 t!26388))

(declare-fun b_and!27735 () Bool)

(assert (= b_and!27733 (and (=> t!26388 result!10969) b_and!27735)))

(declare-fun m!853075 () Bool)

(assert (=> b!919216 m!853075))

(declare-fun m!853077 () Bool)

(assert (=> b!919213 m!853077))

(declare-fun m!853079 () Bool)

(assert (=> b!919206 m!853079))

(declare-fun m!853081 () Bool)

(assert (=> b!919215 m!853081))

(declare-fun m!853083 () Bool)

(assert (=> b!919215 m!853083))

(declare-fun m!853085 () Bool)

(assert (=> b!919215 m!853085))

(declare-fun m!853087 () Bool)

(assert (=> b!919215 m!853087))

(assert (=> b!919215 m!853081))

(declare-fun m!853089 () Bool)

(assert (=> b!919215 m!853089))

(assert (=> b!919215 m!853085))

(assert (=> b!919215 m!853087))

(declare-fun m!853091 () Bool)

(assert (=> b!919215 m!853091))

(declare-fun m!853093 () Bool)

(assert (=> b!919215 m!853093))

(declare-fun m!853095 () Bool)

(assert (=> b!919215 m!853095))

(declare-fun m!853097 () Bool)

(assert (=> b!919215 m!853097))

(declare-fun m!853099 () Bool)

(assert (=> b!919215 m!853099))

(declare-fun m!853101 () Bool)

(assert (=> b!919215 m!853101))

(assert (=> b!919215 m!853097))

(declare-fun m!853103 () Bool)

(assert (=> b!919215 m!853103))

(declare-fun m!853105 () Bool)

(assert (=> b!919205 m!853105))

(declare-fun m!853107 () Bool)

(assert (=> b!919205 m!853107))

(declare-fun m!853109 () Bool)

(assert (=> mapNonEmpty!31002 m!853109))

(declare-fun m!853111 () Bool)

(assert (=> b!919214 m!853111))

(declare-fun m!853113 () Bool)

(assert (=> start!78804 m!853113))

(declare-fun m!853115 () Bool)

(assert (=> start!78804 m!853115))

(declare-fun m!853117 () Bool)

(assert (=> start!78804 m!853117))

(declare-fun m!853119 () Bool)

(assert (=> b!919209 m!853119))

(declare-fun m!853121 () Bool)

(assert (=> b!919209 m!853121))

(check-sat (not b!919213) b_and!27735 (not start!78804) (not b!919206) (not b!919209) (not b!919214) tp_is_empty!19497 (not b_lambda!13521) (not b!919216) (not b!919215) (not b_next!16989) (not mapNonEmpty!31002) (not b!919205))
(check-sat b_and!27735 (not b_next!16989))
