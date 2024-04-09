; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78702 () Bool)

(assert start!78702)

(declare-fun b_free!16887 () Bool)

(declare-fun b_next!16887 () Bool)

(assert (=> start!78702 (= b_free!16887 (not b_next!16887))))

(declare-fun tp!59103 () Bool)

(declare-fun b_and!27529 () Bool)

(assert (=> start!78702 (= tp!59103 b_and!27529)))

(declare-fun b!917113 () Bool)

(declare-fun res!618389 () Bool)

(declare-fun e!514926 () Bool)

(assert (=> b!917113 (=> (not res!618389) (not e!514926))))

(declare-datatypes ((array!54782 0))(
  ( (array!54783 (arr!26332 (Array (_ BitVec 32) (_ BitVec 64))) (size!26792 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54782)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30825 0))(
  ( (V!30826 (val!9748 Int)) )
))
(declare-datatypes ((ValueCell!9216 0))(
  ( (ValueCellFull!9216 (v!12266 V!30825)) (EmptyCell!9216) )
))
(declare-datatypes ((array!54784 0))(
  ( (array!54785 (arr!26333 (Array (_ BitVec 32) ValueCell!9216)) (size!26793 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54784)

(assert (=> b!917113 (= res!618389 (and (= (size!26793 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26792 _keys!1487) (size!26793 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917114 () Bool)

(declare-fun e!514922 () Bool)

(declare-fun tp_is_empty!19395 () Bool)

(assert (=> b!917114 (= e!514922 tp_is_empty!19395)))

(declare-fun res!618388 () Bool)

(assert (=> start!78702 (=> (not res!618388) (not e!514926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78702 (= res!618388 (validMask!0 mask!1881))))

(assert (=> start!78702 e!514926))

(assert (=> start!78702 true))

(assert (=> start!78702 tp_is_empty!19395))

(declare-fun e!514921 () Bool)

(declare-fun array_inv!20526 (array!54784) Bool)

(assert (=> start!78702 (and (array_inv!20526 _values!1231) e!514921)))

(assert (=> start!78702 tp!59103))

(declare-fun array_inv!20527 (array!54782) Bool)

(assert (=> start!78702 (array_inv!20527 _keys!1487)))

(declare-fun b!917115 () Bool)

(declare-fun mapRes!30849 () Bool)

(assert (=> b!917115 (= e!514921 (and e!514922 mapRes!30849))))

(declare-fun condMapEmpty!30849 () Bool)

(declare-fun mapDefault!30849 () ValueCell!9216)

(assert (=> b!917115 (= condMapEmpty!30849 (= (arr!26333 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9216)) mapDefault!30849)))))

(declare-fun b!917116 () Bool)

(declare-fun e!514920 () Bool)

(assert (=> b!917116 (= e!514920 tp_is_empty!19395)))

(declare-fun mapNonEmpty!30849 () Bool)

(declare-fun tp!59102 () Bool)

(assert (=> mapNonEmpty!30849 (= mapRes!30849 (and tp!59102 e!514920))))

(declare-fun mapRest!30849 () (Array (_ BitVec 32) ValueCell!9216))

(declare-fun mapValue!30849 () ValueCell!9216)

(declare-fun mapKey!30849 () (_ BitVec 32))

(assert (=> mapNonEmpty!30849 (= (arr!26333 _values!1231) (store mapRest!30849 mapKey!30849 mapValue!30849))))

(declare-fun b!917117 () Bool)

(declare-fun res!618387 () Bool)

(declare-fun e!514925 () Bool)

(assert (=> b!917117 (=> (not res!618387) (not e!514925))))

(declare-datatypes ((tuple2!12728 0))(
  ( (tuple2!12729 (_1!6374 (_ BitVec 64)) (_2!6374 V!30825)) )
))
(declare-datatypes ((List!18581 0))(
  ( (Nil!18578) (Cons!18577 (h!19723 tuple2!12728) (t!26206 List!18581)) )
))
(declare-datatypes ((ListLongMap!11439 0))(
  ( (ListLongMap!11440 (toList!5735 List!18581)) )
))
(declare-fun lt!411919 () ListLongMap!11439)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!30825)

(declare-fun apply!561 (ListLongMap!11439 (_ BitVec 64)) V!30825)

(assert (=> b!917117 (= res!618387 (= (apply!561 lt!411919 k0!1099) v!791))))

(declare-fun mapIsEmpty!30849 () Bool)

(assert (=> mapIsEmpty!30849 mapRes!30849))

(declare-fun b!917118 () Bool)

(declare-fun res!618386 () Bool)

(assert (=> b!917118 (=> (not res!618386) (not e!514926))))

(declare-datatypes ((List!18582 0))(
  ( (Nil!18579) (Cons!18578 (h!19724 (_ BitVec 64)) (t!26207 List!18582)) )
))
(declare-fun arrayNoDuplicates!0 (array!54782 (_ BitVec 32) List!18582) Bool)

(assert (=> b!917118 (= res!618386 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18579))))

(declare-fun b!917119 () Bool)

(declare-fun res!618385 () Bool)

(assert (=> b!917119 (=> (not res!618385) (not e!514925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917119 (= res!618385 (validKeyInArray!0 k0!1099))))

(declare-fun b!917120 () Bool)

(assert (=> b!917120 (= e!514926 e!514925)))

(declare-fun res!618383 () Bool)

(assert (=> b!917120 (=> (not res!618383) (not e!514925))))

(declare-fun contains!4751 (ListLongMap!11439 (_ BitVec 64)) Bool)

(assert (=> b!917120 (= res!618383 (contains!4751 lt!411919 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30825)

(declare-fun minValue!1173 () V!30825)

(declare-fun getCurrentListMap!2961 (array!54782 array!54784 (_ BitVec 32) (_ BitVec 32) V!30825 V!30825 (_ BitVec 32) Int) ListLongMap!11439)

(assert (=> b!917120 (= lt!411919 (getCurrentListMap!2961 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917121 () Bool)

(declare-fun res!618391 () Bool)

(assert (=> b!917121 (=> (not res!618391) (not e!514926))))

(assert (=> b!917121 (= res!618391 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26792 _keys!1487))))))

(declare-fun b!917122 () Bool)

(declare-fun res!618392 () Bool)

(assert (=> b!917122 (=> (not res!618392) (not e!514925))))

(assert (=> b!917122 (= res!618392 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917123 () Bool)

(declare-fun e!514924 () Bool)

(assert (=> b!917123 (= e!514924 (not true))))

(declare-fun lt!411920 () (_ BitVec 64))

(declare-fun +!2567 (ListLongMap!11439 tuple2!12728) ListLongMap!11439)

(declare-fun get!13808 (ValueCell!9216 V!30825) V!30825)

(declare-fun dynLambda!1406 (Int (_ BitVec 64)) V!30825)

(assert (=> b!917123 (= (getCurrentListMap!2961 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2567 (getCurrentListMap!2961 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12729 lt!411920 (get!13808 (select (arr!26333 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1406 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30941 0))(
  ( (Unit!30942) )
))
(declare-fun lt!411921 () Unit!30941)

(declare-fun lemmaListMapRecursiveValidKeyArray!2 (array!54782 array!54784 (_ BitVec 32) (_ BitVec 32) V!30825 V!30825 (_ BitVec 32) Int) Unit!30941)

(assert (=> b!917123 (= lt!411921 (lemmaListMapRecursiveValidKeyArray!2 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917124 () Bool)

(assert (=> b!917124 (= e!514925 e!514924)))

(declare-fun res!618390 () Bool)

(assert (=> b!917124 (=> (not res!618390) (not e!514924))))

(assert (=> b!917124 (= res!618390 (validKeyInArray!0 lt!411920))))

(assert (=> b!917124 (= lt!411920 (select (arr!26332 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917125 () Bool)

(declare-fun res!618384 () Bool)

(assert (=> b!917125 (=> (not res!618384) (not e!514926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54782 (_ BitVec 32)) Bool)

(assert (=> b!917125 (= res!618384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!78702 res!618388) b!917113))

(assert (= (and b!917113 res!618389) b!917125))

(assert (= (and b!917125 res!618384) b!917118))

(assert (= (and b!917118 res!618386) b!917121))

(assert (= (and b!917121 res!618391) b!917120))

(assert (= (and b!917120 res!618383) b!917117))

(assert (= (and b!917117 res!618387) b!917122))

(assert (= (and b!917122 res!618392) b!917119))

(assert (= (and b!917119 res!618385) b!917124))

(assert (= (and b!917124 res!618390) b!917123))

(assert (= (and b!917115 condMapEmpty!30849) mapIsEmpty!30849))

(assert (= (and b!917115 (not condMapEmpty!30849)) mapNonEmpty!30849))

(get-info :version)

(assert (= (and mapNonEmpty!30849 ((_ is ValueCellFull!9216) mapValue!30849)) b!917116))

(assert (= (and b!917115 ((_ is ValueCellFull!9216) mapDefault!30849)) b!917114))

(assert (= start!78702 b!917115))

(declare-fun b_lambda!13419 () Bool)

(assert (=> (not b_lambda!13419) (not b!917123)))

(declare-fun t!26205 () Bool)

(declare-fun tb!5475 () Bool)

(assert (=> (and start!78702 (= defaultEntry!1235 defaultEntry!1235) t!26205) tb!5475))

(declare-fun result!10765 () Bool)

(assert (=> tb!5475 (= result!10765 tp_is_empty!19395)))

(assert (=> b!917123 t!26205))

(declare-fun b_and!27531 () Bool)

(assert (= b_and!27529 (and (=> t!26205 result!10765) b_and!27531)))

(declare-fun m!850977 () Bool)

(assert (=> b!917119 m!850977))

(declare-fun m!850979 () Bool)

(assert (=> b!917125 m!850979))

(declare-fun m!850981 () Bool)

(assert (=> b!917124 m!850981))

(declare-fun m!850983 () Bool)

(assert (=> b!917124 m!850983))

(declare-fun m!850985 () Bool)

(assert (=> b!917123 m!850985))

(declare-fun m!850987 () Bool)

(assert (=> b!917123 m!850987))

(assert (=> b!917123 m!850985))

(assert (=> b!917123 m!850987))

(declare-fun m!850989 () Bool)

(assert (=> b!917123 m!850989))

(declare-fun m!850991 () Bool)

(assert (=> b!917123 m!850991))

(declare-fun m!850993 () Bool)

(assert (=> b!917123 m!850993))

(declare-fun m!850995 () Bool)

(assert (=> b!917123 m!850995))

(assert (=> b!917123 m!850993))

(declare-fun m!850997 () Bool)

(assert (=> b!917123 m!850997))

(declare-fun m!850999 () Bool)

(assert (=> start!78702 m!850999))

(declare-fun m!851001 () Bool)

(assert (=> start!78702 m!851001))

(declare-fun m!851003 () Bool)

(assert (=> start!78702 m!851003))

(declare-fun m!851005 () Bool)

(assert (=> mapNonEmpty!30849 m!851005))

(declare-fun m!851007 () Bool)

(assert (=> b!917117 m!851007))

(declare-fun m!851009 () Bool)

(assert (=> b!917120 m!851009))

(declare-fun m!851011 () Bool)

(assert (=> b!917120 m!851011))

(declare-fun m!851013 () Bool)

(assert (=> b!917118 m!851013))

(check-sat (not b!917117) (not b!917119) (not start!78702) (not b_next!16887) (not b!917124) b_and!27531 (not b_lambda!13419) (not b!917118) tp_is_empty!19395 (not b!917120) (not mapNonEmpty!30849) (not b!917125) (not b!917123))
(check-sat b_and!27531 (not b_next!16887))
