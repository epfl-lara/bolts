; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79064 () Bool)

(assert start!79064)

(declare-fun b_free!17249 () Bool)

(declare-fun b_next!17249 () Bool)

(assert (=> start!79064 (= b_free!17249 (not b_next!17249))))

(declare-fun tp!60189 () Bool)

(declare-fun b_and!28253 () Bool)

(assert (=> start!79064 (= tp!60189 b_and!28253)))

(declare-fun b!925985 () Bool)

(declare-fun res!624010 () Bool)

(declare-fun e!519792 () Bool)

(assert (=> b!925985 (=> (not res!624010) (not e!519792))))

(declare-datatypes ((array!55494 0))(
  ( (array!55495 (arr!26688 (Array (_ BitVec 32) (_ BitVec 64))) (size!27148 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55494)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55494 (_ BitVec 32)) Bool)

(assert (=> b!925985 (= res!624010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31307 0))(
  ( (V!31308 (val!9929 Int)) )
))
(declare-fun v!791 () V!31307)

(declare-fun e!519786 () Bool)

(declare-fun b!925986 () Bool)

(declare-datatypes ((tuple2!13054 0))(
  ( (tuple2!13055 (_1!6537 (_ BitVec 64)) (_2!6537 V!31307)) )
))
(declare-datatypes ((List!18887 0))(
  ( (Nil!18884) (Cons!18883 (h!20029 tuple2!13054) (t!26874 List!18887)) )
))
(declare-datatypes ((ListLongMap!11765 0))(
  ( (ListLongMap!11766 (toList!5898 List!18887)) )
))
(declare-fun lt!416954 () ListLongMap!11765)

(declare-fun apply!698 (ListLongMap!11765 (_ BitVec 64)) V!31307)

(assert (=> b!925986 (= e!519786 (= (apply!698 lt!416954 k!1099) v!791))))

(declare-fun b!925987 () Bool)

(declare-fun res!624014 () Bool)

(assert (=> b!925987 (=> (not res!624014) (not e!519792))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9397 0))(
  ( (ValueCellFull!9397 (v!12447 V!31307)) (EmptyCell!9397) )
))
(declare-datatypes ((array!55496 0))(
  ( (array!55497 (arr!26689 (Array (_ BitVec 32) ValueCell!9397)) (size!27149 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55496)

(assert (=> b!925987 (= res!624014 (and (= (size!27149 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27148 _keys!1487) (size!27149 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!925988 () Bool)

(declare-fun res!624011 () Bool)

(assert (=> b!925988 (=> (not res!624011) (not e!519792))))

(declare-datatypes ((List!18888 0))(
  ( (Nil!18885) (Cons!18884 (h!20030 (_ BitVec 64)) (t!26875 List!18888)) )
))
(declare-fun arrayNoDuplicates!0 (array!55494 (_ BitVec 32) List!18888) Bool)

(assert (=> b!925988 (= res!624011 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18885))))

(declare-fun mapIsEmpty!31392 () Bool)

(declare-fun mapRes!31392 () Bool)

(assert (=> mapIsEmpty!31392 mapRes!31392))

(declare-fun b!925989 () Bool)

(declare-fun e!519796 () Bool)

(declare-fun e!519791 () Bool)

(assert (=> b!925989 (= e!519796 e!519791)))

(declare-fun res!624020 () Bool)

(assert (=> b!925989 (=> (not res!624020) (not e!519791))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!925989 (= res!624020 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27148 _keys!1487)))))

(declare-datatypes ((Unit!31303 0))(
  ( (Unit!31304) )
))
(declare-fun lt!416947 () Unit!31303)

(declare-fun e!519787 () Unit!31303)

(assert (=> b!925989 (= lt!416947 e!519787)))

(declare-fun c!96597 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925989 (= c!96597 (validKeyInArray!0 k!1099))))

(declare-fun b!925990 () Bool)

(declare-fun e!519794 () Bool)

(assert (=> b!925990 (= e!519792 e!519794)))

(declare-fun res!624012 () Bool)

(assert (=> b!925990 (=> (not res!624012) (not e!519794))))

(declare-fun lt!416952 () ListLongMap!11765)

(declare-fun contains!4920 (ListLongMap!11765 (_ BitVec 64)) Bool)

(assert (=> b!925990 (= res!624012 (contains!4920 lt!416952 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31307)

(declare-fun minValue!1173 () V!31307)

(declare-fun getCurrentListMap!3114 (array!55494 array!55496 (_ BitVec 32) (_ BitVec 32) V!31307 V!31307 (_ BitVec 32) Int) ListLongMap!11765)

(assert (=> b!925990 (= lt!416952 (getCurrentListMap!3114 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!925991 () Bool)

(declare-fun e!519788 () Bool)

(declare-fun tp_is_empty!19757 () Bool)

(assert (=> b!925991 (= e!519788 tp_is_empty!19757)))

(declare-fun b!925992 () Bool)

(assert (=> b!925992 (= e!519794 e!519796)))

(declare-fun res!624015 () Bool)

(assert (=> b!925992 (=> (not res!624015) (not e!519796))))

(declare-fun lt!416953 () V!31307)

(assert (=> b!925992 (= res!624015 (and (= lt!416953 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!925992 (= lt!416953 (apply!698 lt!416952 k!1099))))

(declare-fun b!925993 () Bool)

(declare-fun res!624017 () Bool)

(declare-fun e!519793 () Bool)

(assert (=> b!925993 (=> (not res!624017) (not e!519793))))

(declare-fun lt!416950 () ListLongMap!11765)

(assert (=> b!925993 (= res!624017 (= (apply!698 lt!416950 k!1099) v!791))))

(declare-fun res!624013 () Bool)

(assert (=> start!79064 (=> (not res!624013) (not e!519792))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79064 (= res!624013 (validMask!0 mask!1881))))

(assert (=> start!79064 e!519792))

(assert (=> start!79064 true))

(assert (=> start!79064 tp_is_empty!19757))

(declare-fun e!519789 () Bool)

(declare-fun array_inv!20776 (array!55496) Bool)

(assert (=> start!79064 (and (array_inv!20776 _values!1231) e!519789)))

(assert (=> start!79064 tp!60189))

(declare-fun array_inv!20777 (array!55494) Bool)

(assert (=> start!79064 (array_inv!20777 _keys!1487)))

(declare-fun b!925994 () Bool)

(assert (=> b!925994 (= e!519791 e!519793)))

(declare-fun res!624018 () Bool)

(assert (=> b!925994 (=> (not res!624018) (not e!519793))))

(assert (=> b!925994 (= res!624018 (contains!4920 lt!416950 k!1099))))

(assert (=> b!925994 (= lt!416950 (getCurrentListMap!3114 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!519795 () Bool)

(declare-fun b!925995 () Bool)

(declare-fun arrayContainsKey!0 (array!55494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!925995 (= e!519795 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!925996 () Bool)

(assert (=> b!925996 (= e!519795 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!925997 () Bool)

(assert (=> b!925997 (= e!519793 (not true))))

(assert (=> b!925997 e!519786))

(declare-fun res!624016 () Bool)

(assert (=> b!925997 (=> (not res!624016) (not e!519786))))

(assert (=> b!925997 (= res!624016 (contains!4920 lt!416954 k!1099))))

(assert (=> b!925997 (= lt!416954 (getCurrentListMap!3114 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!416946 () Unit!31303)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!80 (array!55494 array!55496 (_ BitVec 32) (_ BitVec 32) V!31307 V!31307 (_ BitVec 64) V!31307 (_ BitVec 32) Int) Unit!31303)

(assert (=> b!925997 (= lt!416946 (lemmaListMapApplyFromThenApplyFromZero!80 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!925998 () Bool)

(declare-fun e!519798 () Bool)

(assert (=> b!925998 (= e!519798 tp_is_empty!19757)))

(declare-fun b!925999 () Bool)

(declare-fun res!624019 () Bool)

(assert (=> b!925999 (=> (not res!624019) (not e!519792))))

(assert (=> b!925999 (= res!624019 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27148 _keys!1487))))))

(declare-fun b!926000 () Bool)

(declare-fun e!519790 () Unit!31303)

(assert (=> b!926000 (= e!519787 e!519790)))

(declare-fun lt!416959 () (_ BitVec 64))

(assert (=> b!926000 (= lt!416959 (select (arr!26688 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96599 () Bool)

(assert (=> b!926000 (= c!96599 (validKeyInArray!0 lt!416959))))

(declare-fun mapNonEmpty!31392 () Bool)

(declare-fun tp!60188 () Bool)

(assert (=> mapNonEmpty!31392 (= mapRes!31392 (and tp!60188 e!519788))))

(declare-fun mapKey!31392 () (_ BitVec 32))

(declare-fun mapValue!31392 () ValueCell!9397)

(declare-fun mapRest!31392 () (Array (_ BitVec 32) ValueCell!9397))

(assert (=> mapNonEmpty!31392 (= (arr!26689 _values!1231) (store mapRest!31392 mapKey!31392 mapValue!31392))))

(declare-fun b!926001 () Bool)

(assert (=> b!926001 (= e!519789 (and e!519798 mapRes!31392))))

(declare-fun condMapEmpty!31392 () Bool)

(declare-fun mapDefault!31392 () ValueCell!9397)

