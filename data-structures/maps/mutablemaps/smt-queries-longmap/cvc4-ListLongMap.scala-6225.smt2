; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79654 () Bool)

(assert start!79654)

(declare-fun b_free!17675 () Bool)

(declare-fun b_next!17675 () Bool)

(assert (=> start!79654 (= b_free!17675 (not b_next!17675))))

(declare-fun tp!61482 () Bool)

(declare-fun b_and!28959 () Bool)

(assert (=> start!79654 (= tp!61482 b_and!28959)))

(declare-fun b!935713 () Bool)

(declare-fun e!525456 () Bool)

(declare-fun e!525455 () Bool)

(assert (=> b!935713 (= e!525456 (not e!525455))))

(declare-fun res!630207 () Bool)

(assert (=> b!935713 (=> res!630207 e!525455)))

(declare-datatypes ((array!56330 0))(
  ( (array!56331 (arr!27101 (Array (_ BitVec 32) (_ BitVec 64))) (size!27561 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56330)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!935713 (= res!630207 (or (bvsge (size!27561 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27561 _keys!1487))))))

(declare-fun e!525457 () Bool)

(assert (=> b!935713 e!525457))

(declare-fun c!97262 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!935713 (= c!97262 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((Unit!31562 0))(
  ( (Unit!31563) )
))
(declare-fun lt!421811 () Unit!31562)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31875 0))(
  ( (V!31876 (val!10142 Int)) )
))
(declare-datatypes ((ValueCell!9610 0))(
  ( (ValueCellFull!9610 (v!12667 V!31875)) (EmptyCell!9610) )
))
(declare-datatypes ((array!56332 0))(
  ( (array!56333 (arr!27102 (Array (_ BitVec 32) ValueCell!9610)) (size!27562 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56332)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31875)

(declare-fun minValue!1173 () V!31875)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!290 (array!56330 array!56332 (_ BitVec 32) (_ BitVec 32) V!31875 V!31875 (_ BitVec 64) (_ BitVec 32) Int) Unit!31562)

(assert (=> b!935713 (= lt!421811 (lemmaListMapContainsThenArrayContainsFrom!290 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!19223 0))(
  ( (Nil!19220) (Cons!19219 (h!20365 (_ BitVec 64)) (t!27450 List!19223)) )
))
(declare-fun arrayNoDuplicates!0 (array!56330 (_ BitVec 32) List!19223) Bool)

(assert (=> b!935713 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19220)))

(declare-fun lt!421817 () Unit!31562)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56330 (_ BitVec 32) (_ BitVec 32)) Unit!31562)

(assert (=> b!935713 (= lt!421817 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13416 0))(
  ( (tuple2!13417 (_1!6718 (_ BitVec 64)) (_2!6718 V!31875)) )
))
(declare-datatypes ((List!19224 0))(
  ( (Nil!19221) (Cons!19220 (h!20366 tuple2!13416) (t!27451 List!19224)) )
))
(declare-datatypes ((ListLongMap!12127 0))(
  ( (ListLongMap!12128 (toList!6079 List!19224)) )
))
(declare-fun lt!421819 () ListLongMap!12127)

(declare-fun lt!421815 () tuple2!13416)

(declare-fun contains!5090 (ListLongMap!12127 (_ BitVec 64)) Bool)

(declare-fun +!2777 (ListLongMap!12127 tuple2!13416) ListLongMap!12127)

(assert (=> b!935713 (contains!5090 (+!2777 lt!421819 lt!421815) k!1099)))

(declare-fun lt!421814 () Unit!31562)

(declare-fun lt!421818 () (_ BitVec 64))

(declare-fun lt!421812 () V!31875)

(declare-fun addStillContains!533 (ListLongMap!12127 (_ BitVec 64) V!31875 (_ BitVec 64)) Unit!31562)

(assert (=> b!935713 (= lt!421814 (addStillContains!533 lt!421819 lt!421818 lt!421812 k!1099))))

(declare-fun getCurrentListMap!3270 (array!56330 array!56332 (_ BitVec 32) (_ BitVec 32) V!31875 V!31875 (_ BitVec 32) Int) ListLongMap!12127)

(assert (=> b!935713 (= (getCurrentListMap!3270 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2777 (getCurrentListMap!3270 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421815))))

(assert (=> b!935713 (= lt!421815 (tuple2!13417 lt!421818 lt!421812))))

(declare-fun get!14295 (ValueCell!9610 V!31875) V!31875)

(declare-fun dynLambda!1616 (Int (_ BitVec 64)) V!31875)

(assert (=> b!935713 (= lt!421812 (get!14295 (select (arr!27102 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1616 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421813 () Unit!31562)

(declare-fun lemmaListMapRecursiveValidKeyArray!212 (array!56330 array!56332 (_ BitVec 32) (_ BitVec 32) V!31875 V!31875 (_ BitVec 32) Int) Unit!31562)

(assert (=> b!935713 (= lt!421813 (lemmaListMapRecursiveValidKeyArray!212 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!935714 () Bool)

(declare-fun e!525451 () Bool)

(declare-fun e!525450 () Bool)

(assert (=> b!935714 (= e!525451 e!525450)))

(declare-fun res!630212 () Bool)

(assert (=> b!935714 (=> (not res!630212) (not e!525450))))

(assert (=> b!935714 (= res!630212 (contains!5090 lt!421819 k!1099))))

(assert (=> b!935714 (= lt!421819 (getCurrentListMap!3270 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!935716 () Bool)

(declare-fun e!525453 () Bool)

(declare-fun tp_is_empty!20183 () Bool)

(assert (=> b!935716 (= e!525453 tp_is_empty!20183)))

(declare-fun b!935717 () Bool)

(declare-fun res!630217 () Bool)

(assert (=> b!935717 (=> res!630217 e!525455)))

(declare-fun noDuplicate!1361 (List!19223) Bool)

(assert (=> b!935717 (= res!630217 (not (noDuplicate!1361 Nil!19220)))))

(declare-fun b!935718 () Bool)

(declare-fun arrayContainsKey!0 (array!56330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!935718 (= e!525457 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!935719 () Bool)

(declare-fun res!630214 () Bool)

(assert (=> b!935719 (=> (not res!630214) (not e!525450))))

(assert (=> b!935719 (= res!630214 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!935720 () Bool)

(declare-fun res!630215 () Bool)

(assert (=> b!935720 (=> (not res!630215) (not e!525451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56330 (_ BitVec 32)) Bool)

(assert (=> b!935720 (= res!630215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!32046 () Bool)

(declare-fun mapRes!32046 () Bool)

(declare-fun tp!61481 () Bool)

(declare-fun e!525458 () Bool)

(assert (=> mapNonEmpty!32046 (= mapRes!32046 (and tp!61481 e!525458))))

(declare-fun mapRest!32046 () (Array (_ BitVec 32) ValueCell!9610))

(declare-fun mapValue!32046 () ValueCell!9610)

(declare-fun mapKey!32046 () (_ BitVec 32))

(assert (=> mapNonEmpty!32046 (= (arr!27102 _values!1231) (store mapRest!32046 mapKey!32046 mapValue!32046))))

(declare-fun b!935721 () Bool)

(declare-fun res!630216 () Bool)

(assert (=> b!935721 (=> (not res!630216) (not e!525451))))

(assert (=> b!935721 (= res!630216 (and (= (size!27562 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27561 _keys!1487) (size!27562 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!935722 () Bool)

(declare-fun res!630210 () Bool)

(assert (=> b!935722 (=> (not res!630210) (not e!525450))))

(declare-fun v!791 () V!31875)

(declare-fun apply!858 (ListLongMap!12127 (_ BitVec 64)) V!31875)

(assert (=> b!935722 (= res!630210 (= (apply!858 lt!421819 k!1099) v!791))))

(declare-fun b!935723 () Bool)

(declare-fun res!630209 () Bool)

(assert (=> b!935723 (=> (not res!630209) (not e!525451))))

(assert (=> b!935723 (= res!630209 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27561 _keys!1487))))))

(declare-fun mapIsEmpty!32046 () Bool)

(assert (=> mapIsEmpty!32046 mapRes!32046))

(declare-fun b!935715 () Bool)

(declare-fun res!630206 () Bool)

(assert (=> b!935715 (=> res!630206 e!525455)))

(declare-fun contains!5091 (List!19223 (_ BitVec 64)) Bool)

(assert (=> b!935715 (= res!630206 (contains!5091 Nil!19220 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!630218 () Bool)

(assert (=> start!79654 (=> (not res!630218) (not e!525451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79654 (= res!630218 (validMask!0 mask!1881))))

(assert (=> start!79654 e!525451))

(assert (=> start!79654 true))

(assert (=> start!79654 tp_is_empty!20183))

(declare-fun e!525452 () Bool)

(declare-fun array_inv!21044 (array!56332) Bool)

(assert (=> start!79654 (and (array_inv!21044 _values!1231) e!525452)))

(assert (=> start!79654 tp!61482))

(declare-fun array_inv!21045 (array!56330) Bool)

(assert (=> start!79654 (array_inv!21045 _keys!1487)))

(declare-fun b!935724 () Bool)

(assert (=> b!935724 (= e!525452 (and e!525453 mapRes!32046))))

(declare-fun condMapEmpty!32046 () Bool)

(declare-fun mapDefault!32046 () ValueCell!9610)

