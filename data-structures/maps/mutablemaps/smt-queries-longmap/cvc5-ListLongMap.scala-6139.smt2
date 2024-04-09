; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78970 () Bool)

(assert start!78970)

(declare-fun b_free!17155 () Bool)

(declare-fun b_next!17155 () Bool)

(assert (=> start!78970 (= b_free!17155 (not b_next!17155))))

(declare-fun tp!59907 () Bool)

(declare-fun b_and!28065 () Bool)

(assert (=> start!78970 (= tp!59907 b_and!28065)))

(declare-fun b!923247 () Bool)

(declare-datatypes ((Unit!31146 0))(
  ( (Unit!31147) )
))
(declare-fun e!518049 () Unit!31146)

(declare-fun Unit!31148 () Unit!31146)

(assert (=> b!923247 (= e!518049 Unit!31148)))

(declare-fun b!923248 () Bool)

(declare-fun e!518052 () Bool)

(declare-fun e!518041 () Bool)

(assert (=> b!923248 (= e!518052 e!518041)))

(declare-fun res!622636 () Bool)

(assert (=> b!923248 (=> (not res!622636) (not e!518041))))

(declare-datatypes ((V!31183 0))(
  ( (V!31184 (val!9882 Int)) )
))
(declare-datatypes ((tuple2!12972 0))(
  ( (tuple2!12973 (_1!6496 (_ BitVec 64)) (_2!6496 V!31183)) )
))
(declare-datatypes ((List!18808 0))(
  ( (Nil!18805) (Cons!18804 (h!19950 tuple2!12972) (t!26701 List!18808)) )
))
(declare-datatypes ((ListLongMap!11683 0))(
  ( (ListLongMap!11684 (toList!5857 List!18808)) )
))
(declare-fun lt!414790 () ListLongMap!11683)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4881 (ListLongMap!11683 (_ BitVec 64)) Bool)

(assert (=> b!923248 (= res!622636 (contains!4881 lt!414790 k!1099))))

(declare-datatypes ((array!55312 0))(
  ( (array!55313 (arr!26597 (Array (_ BitVec 32) (_ BitVec 64))) (size!27057 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55312)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9350 0))(
  ( (ValueCellFull!9350 (v!12400 V!31183)) (EmptyCell!9350) )
))
(declare-datatypes ((array!55314 0))(
  ( (array!55315 (arr!26598 (Array (_ BitVec 32) ValueCell!9350)) (size!27058 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55314)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31183)

(declare-fun minValue!1173 () V!31183)

(declare-fun getCurrentListMap!3075 (array!55312 array!55314 (_ BitVec 32) (_ BitVec 32) V!31183 V!31183 (_ BitVec 32) Int) ListLongMap!11683)

(assert (=> b!923248 (= lt!414790 (getCurrentListMap!3075 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31251 () Bool)

(declare-fun mapRes!31251 () Bool)

(assert (=> mapIsEmpty!31251 mapRes!31251))

(declare-fun b!923249 () Bool)

(declare-fun e!518048 () Unit!31146)

(declare-fun Unit!31149 () Unit!31146)

(assert (=> b!923249 (= e!518048 Unit!31149)))

(declare-fun b!923250 () Bool)

(declare-fun res!622642 () Bool)

(assert (=> b!923250 (=> (not res!622642) (not e!518052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55312 (_ BitVec 32)) Bool)

(assert (=> b!923250 (= res!622642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923251 () Bool)

(declare-fun e!518042 () Bool)

(declare-fun tp_is_empty!19663 () Bool)

(assert (=> b!923251 (= e!518042 tp_is_empty!19663)))

(declare-fun mapNonEmpty!31251 () Bool)

(declare-fun tp!59906 () Bool)

(declare-fun e!518043 () Bool)

(assert (=> mapNonEmpty!31251 (= mapRes!31251 (and tp!59906 e!518043))))

(declare-fun mapKey!31251 () (_ BitVec 32))

(declare-fun mapRest!31251 () (Array (_ BitVec 32) ValueCell!9350))

(declare-fun mapValue!31251 () ValueCell!9350)

(assert (=> mapNonEmpty!31251 (= (arr!26598 _values!1231) (store mapRest!31251 mapKey!31251 mapValue!31251))))

(declare-fun b!923252 () Bool)

(declare-fun e!518045 () Bool)

(assert (=> b!923252 (= e!518041 e!518045)))

(declare-fun res!622638 () Bool)

(assert (=> b!923252 (=> (not res!622638) (not e!518045))))

(declare-fun v!791 () V!31183)

(declare-fun lt!414783 () V!31183)

(assert (=> b!923252 (= res!622638 (and (= lt!414783 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun apply!660 (ListLongMap!11683 (_ BitVec 64)) V!31183)

(assert (=> b!923252 (= lt!414783 (apply!660 lt!414790 k!1099))))

(declare-fun b!923253 () Bool)

(declare-fun res!622639 () Bool)

(assert (=> b!923253 (=> (not res!622639) (not e!518052))))

(declare-datatypes ((List!18809 0))(
  ( (Nil!18806) (Cons!18805 (h!19951 (_ BitVec 64)) (t!26702 List!18809)) )
))
(declare-fun arrayNoDuplicates!0 (array!55312 (_ BitVec 32) List!18809) Bool)

(assert (=> b!923253 (= res!622639 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18806))))

(declare-fun b!923254 () Bool)

(assert (=> b!923254 (= e!518048 e!518049)))

(declare-fun lt!414787 () (_ BitVec 64))

(assert (=> b!923254 (= lt!414787 (select (arr!26597 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96174 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923254 (= c!96174 (validKeyInArray!0 lt!414787))))

(declare-fun b!923255 () Bool)

(declare-fun res!622635 () Bool)

(assert (=> b!923255 (=> (not res!622635) (not e!518052))))

(assert (=> b!923255 (= res!622635 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27057 _keys!1487))))))

(declare-fun b!923256 () Bool)

(declare-fun e!518051 () Bool)

(declare-fun e!518050 () Bool)

(assert (=> b!923256 (= e!518051 e!518050)))

(declare-fun res!622641 () Bool)

(assert (=> b!923256 (=> (not res!622641) (not e!518050))))

(declare-fun lt!414792 () ListLongMap!11683)

(assert (=> b!923256 (= res!622641 (contains!4881 lt!414792 k!1099))))

(assert (=> b!923256 (= lt!414792 (getCurrentListMap!3075 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!518046 () Bool)

(declare-fun b!923257 () Bool)

(declare-fun arrayContainsKey!0 (array!55312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923257 (= e!518046 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun res!622640 () Bool)

(assert (=> start!78970 (=> (not res!622640) (not e!518052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78970 (= res!622640 (validMask!0 mask!1881))))

(assert (=> start!78970 e!518052))

(assert (=> start!78970 true))

(assert (=> start!78970 tp_is_empty!19663))

(declare-fun e!518047 () Bool)

(declare-fun array_inv!20706 (array!55314) Bool)

(assert (=> start!78970 (and (array_inv!20706 _values!1231) e!518047)))

(assert (=> start!78970 tp!59907))

(declare-fun array_inv!20707 (array!55312) Bool)

(assert (=> start!78970 (array_inv!20707 _keys!1487)))

(declare-fun b!923258 () Bool)

(declare-fun lt!414778 () ListLongMap!11683)

(assert (=> b!923258 (= (apply!660 lt!414778 k!1099) lt!414783)))

(declare-fun lt!414782 () Unit!31146)

(declare-fun lt!414789 () V!31183)

(declare-fun addApplyDifferent!353 (ListLongMap!11683 (_ BitVec 64) V!31183 (_ BitVec 64)) Unit!31146)

(assert (=> b!923258 (= lt!414782 (addApplyDifferent!353 lt!414790 lt!414787 lt!414789 k!1099))))

(assert (=> b!923258 (not (= lt!414787 k!1099))))

(declare-fun lt!414784 () Unit!31146)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55312 (_ BitVec 64) (_ BitVec 32) List!18809) Unit!31146)

(assert (=> b!923258 (= lt!414784 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18806))))

(assert (=> b!923258 e!518046))

(declare-fun c!96176 () Bool)

(assert (=> b!923258 (= c!96176 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414788 () Unit!31146)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!213 (array!55312 array!55314 (_ BitVec 32) (_ BitVec 32) V!31183 V!31183 (_ BitVec 64) (_ BitVec 32) Int) Unit!31146)

(assert (=> b!923258 (= lt!414788 (lemmaListMapContainsThenArrayContainsFrom!213 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!923258 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18806)))

(declare-fun lt!414785 () Unit!31146)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55312 (_ BitVec 32) (_ BitVec 32)) Unit!31146)

(assert (=> b!923258 (= lt!414785 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!923258 (contains!4881 lt!414778 k!1099)))

(declare-fun lt!414786 () tuple2!12972)

(declare-fun +!2667 (ListLongMap!11683 tuple2!12972) ListLongMap!11683)

(assert (=> b!923258 (= lt!414778 (+!2667 lt!414790 lt!414786))))

(declare-fun lt!414781 () Unit!31146)

(declare-fun addStillContains!429 (ListLongMap!11683 (_ BitVec 64) V!31183 (_ BitVec 64)) Unit!31146)

(assert (=> b!923258 (= lt!414781 (addStillContains!429 lt!414790 lt!414787 lt!414789 k!1099))))

(assert (=> b!923258 (= (getCurrentListMap!3075 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2667 (getCurrentListMap!3075 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414786))))

(assert (=> b!923258 (= lt!414786 (tuple2!12973 lt!414787 lt!414789))))

(declare-fun get!13998 (ValueCell!9350 V!31183) V!31183)

(declare-fun dynLambda!1506 (Int (_ BitVec 64)) V!31183)

(assert (=> b!923258 (= lt!414789 (get!13998 (select (arr!26598 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1506 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414780 () Unit!31146)

(declare-fun lemmaListMapRecursiveValidKeyArray!102 (array!55312 array!55314 (_ BitVec 32) (_ BitVec 32) V!31183 V!31183 (_ BitVec 32) Int) Unit!31146)

(assert (=> b!923258 (= lt!414780 (lemmaListMapRecursiveValidKeyArray!102 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!923258 (= e!518049 lt!414782)))

(declare-fun b!923259 () Bool)

(assert (=> b!923259 (= e!518046 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!923260 () Bool)

(declare-fun res!622643 () Bool)

(assert (=> b!923260 (=> (not res!622643) (not e!518052))))

(assert (=> b!923260 (= res!622643 (and (= (size!27058 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27057 _keys!1487) (size!27058 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!923261 () Bool)

(assert (=> b!923261 (= e!518043 tp_is_empty!19663)))

(declare-fun b!923262 () Bool)

(assert (=> b!923262 (= e!518050 false)))

(declare-fun lt!414791 () V!31183)

(assert (=> b!923262 (= lt!414791 (apply!660 lt!414792 k!1099))))

(declare-fun b!923263 () Bool)

(assert (=> b!923263 (= e!518045 e!518051)))

(declare-fun res!622637 () Bool)

(assert (=> b!923263 (=> (not res!622637) (not e!518051))))

(assert (=> b!923263 (= res!622637 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27057 _keys!1487)))))

(declare-fun lt!414779 () Unit!31146)

(assert (=> b!923263 (= lt!414779 e!518048)))

(declare-fun c!96175 () Bool)

(assert (=> b!923263 (= c!96175 (validKeyInArray!0 k!1099))))

(declare-fun b!923264 () Bool)

(assert (=> b!923264 (= e!518047 (and e!518042 mapRes!31251))))

(declare-fun condMapEmpty!31251 () Bool)

(declare-fun mapDefault!31251 () ValueCell!9350)

