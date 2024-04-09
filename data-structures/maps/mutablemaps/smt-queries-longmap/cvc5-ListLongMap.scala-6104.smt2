; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78760 () Bool)

(assert start!78760)

(declare-fun b_free!16945 () Bool)

(declare-fun b_next!16945 () Bool)

(assert (=> start!78760 (= b_free!16945 (not b_next!16945))))

(declare-fun tp!59276 () Bool)

(declare-fun b_and!27645 () Bool)

(assert (=> start!78760 (= tp!59276 b_and!27645)))

(declare-fun b!918302 () Bool)

(declare-fun e!515529 () Bool)

(declare-fun e!515533 () Bool)

(assert (=> b!918302 (= e!515529 e!515533)))

(declare-fun res!619260 () Bool)

(assert (=> b!918302 (=> (not res!619260) (not e!515533))))

(declare-datatypes ((V!30903 0))(
  ( (V!30904 (val!9777 Int)) )
))
(declare-datatypes ((tuple2!12780 0))(
  ( (tuple2!12781 (_1!6400 (_ BitVec 64)) (_2!6400 V!30903)) )
))
(declare-datatypes ((List!18624 0))(
  ( (Nil!18621) (Cons!18620 (h!19766 tuple2!12780) (t!26307 List!18624)) )
))
(declare-datatypes ((ListLongMap!11491 0))(
  ( (ListLongMap!11492 (toList!5761 List!18624)) )
))
(declare-fun lt!412187 () ListLongMap!11491)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4775 (ListLongMap!11491 (_ BitVec 64)) Bool)

(assert (=> b!918302 (= res!619260 (contains!4775 lt!412187 k!1099))))

(declare-datatypes ((array!54898 0))(
  ( (array!54899 (arr!26390 (Array (_ BitVec 32) (_ BitVec 64))) (size!26850 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54898)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9245 0))(
  ( (ValueCellFull!9245 (v!12295 V!30903)) (EmptyCell!9245) )
))
(declare-datatypes ((array!54900 0))(
  ( (array!54901 (arr!26391 (Array (_ BitVec 32) ValueCell!9245)) (size!26851 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54900)

(declare-fun defaultEntry!1235 () Int)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30903)

(declare-fun minValue!1173 () V!30903)

(declare-fun getCurrentListMap!2987 (array!54898 array!54900 (_ BitVec 32) (_ BitVec 32) V!30903 V!30903 (_ BitVec 32) Int) ListLongMap!11491)

(assert (=> b!918302 (= lt!412187 (getCurrentListMap!2987 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918303 () Bool)

(declare-fun res!619255 () Bool)

(assert (=> b!918303 (=> (not res!619255) (not e!515529))))

(assert (=> b!918303 (= res!619255 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26850 _keys!1487))))))

(declare-fun b!918304 () Bool)

(declare-fun res!619259 () Bool)

(assert (=> b!918304 (=> (not res!619259) (not e!515533))))

(declare-fun v!791 () V!30903)

(declare-fun apply!581 (ListLongMap!11491 (_ BitVec 64)) V!30903)

(assert (=> b!918304 (= res!619259 (= (apply!581 lt!412187 k!1099) v!791))))

(declare-fun b!918305 () Bool)

(declare-fun e!515535 () Bool)

(assert (=> b!918305 (= e!515535 (not true))))

(declare-fun lt!412189 () tuple2!12780)

(declare-fun +!2590 (ListLongMap!11491 tuple2!12780) ListLongMap!11491)

(assert (=> b!918305 (contains!4775 (+!2590 lt!412187 lt!412189) k!1099)))

(declare-datatypes ((Unit!30987 0))(
  ( (Unit!30988) )
))
(declare-fun lt!412188 () Unit!30987)

(declare-fun lt!412186 () V!30903)

(declare-fun lt!412190 () (_ BitVec 64))

(declare-fun addStillContains!352 (ListLongMap!11491 (_ BitVec 64) V!30903 (_ BitVec 64)) Unit!30987)

(assert (=> b!918305 (= lt!412188 (addStillContains!352 lt!412187 lt!412190 lt!412186 k!1099))))

(assert (=> b!918305 (= (getCurrentListMap!2987 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2590 (getCurrentListMap!2987 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412189))))

(assert (=> b!918305 (= lt!412189 (tuple2!12781 lt!412190 lt!412186))))

(declare-fun get!13851 (ValueCell!9245 V!30903) V!30903)

(declare-fun dynLambda!1429 (Int (_ BitVec 64)) V!30903)

(assert (=> b!918305 (= lt!412186 (get!13851 (select (arr!26391 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1429 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412191 () Unit!30987)

(declare-fun lemmaListMapRecursiveValidKeyArray!25 (array!54898 array!54900 (_ BitVec 32) (_ BitVec 32) V!30903 V!30903 (_ BitVec 32) Int) Unit!30987)

(assert (=> b!918305 (= lt!412191 (lemmaListMapRecursiveValidKeyArray!25 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918307 () Bool)

(declare-fun res!619256 () Bool)

(assert (=> b!918307 (=> (not res!619256) (not e!515529))))

(declare-datatypes ((List!18625 0))(
  ( (Nil!18622) (Cons!18621 (h!19767 (_ BitVec 64)) (t!26308 List!18625)) )
))
(declare-fun arrayNoDuplicates!0 (array!54898 (_ BitVec 32) List!18625) Bool)

(assert (=> b!918307 (= res!619256 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18622))))

(declare-fun b!918308 () Bool)

(declare-fun e!515530 () Bool)

(declare-fun tp_is_empty!19453 () Bool)

(assert (=> b!918308 (= e!515530 tp_is_empty!19453)))

(declare-fun b!918309 () Bool)

(declare-fun e!515534 () Bool)

(assert (=> b!918309 (= e!515534 tp_is_empty!19453)))

(declare-fun b!918306 () Bool)

(declare-fun res!619254 () Bool)

(assert (=> b!918306 (=> (not res!619254) (not e!515529))))

(assert (=> b!918306 (= res!619254 (and (= (size!26851 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26850 _keys!1487) (size!26851 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!619257 () Bool)

(assert (=> start!78760 (=> (not res!619257) (not e!515529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78760 (= res!619257 (validMask!0 mask!1881))))

(assert (=> start!78760 e!515529))

(assert (=> start!78760 true))

(assert (=> start!78760 tp_is_empty!19453))

(declare-fun e!515531 () Bool)

(declare-fun array_inv!20564 (array!54900) Bool)

(assert (=> start!78760 (and (array_inv!20564 _values!1231) e!515531)))

(assert (=> start!78760 tp!59276))

(declare-fun array_inv!20565 (array!54898) Bool)

(assert (=> start!78760 (array_inv!20565 _keys!1487)))

(declare-fun b!918310 () Bool)

(declare-fun res!619253 () Bool)

(assert (=> b!918310 (=> (not res!619253) (not e!515529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54898 (_ BitVec 32)) Bool)

(assert (=> b!918310 (= res!619253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918311 () Bool)

(declare-fun res!619262 () Bool)

(assert (=> b!918311 (=> (not res!619262) (not e!515533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918311 (= res!619262 (validKeyInArray!0 k!1099))))

(declare-fun b!918312 () Bool)

(declare-fun mapRes!30936 () Bool)

(assert (=> b!918312 (= e!515531 (and e!515530 mapRes!30936))))

(declare-fun condMapEmpty!30936 () Bool)

(declare-fun mapDefault!30936 () ValueCell!9245)

