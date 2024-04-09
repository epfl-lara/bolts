; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78714 () Bool)

(assert start!78714)

(declare-fun b_free!16899 () Bool)

(declare-fun b_next!16899 () Bool)

(assert (=> start!78714 (= b_free!16899 (not b_next!16899))))

(declare-fun tp!59139 () Bool)

(declare-fun b_and!27553 () Bool)

(assert (=> start!78714 (= tp!59139 b_and!27553)))

(declare-fun b!917360 () Bool)

(declare-fun res!618571 () Bool)

(declare-fun e!515046 () Bool)

(assert (=> b!917360 (=> (not res!618571) (not e!515046))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54806 0))(
  ( (array!54807 (arr!26344 (Array (_ BitVec 32) (_ BitVec 64))) (size!26804 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54806)

(assert (=> b!917360 (= res!618571 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26804 _keys!1487))))))

(declare-fun b!917361 () Bool)

(declare-fun e!515052 () Bool)

(declare-fun e!515050 () Bool)

(assert (=> b!917361 (= e!515052 e!515050)))

(declare-fun res!618564 () Bool)

(assert (=> b!917361 (=> (not res!618564) (not e!515050))))

(declare-fun lt!411973 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917361 (= res!618564 (validKeyInArray!0 lt!411973))))

(assert (=> b!917361 (= lt!411973 (select (arr!26344 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917362 () Bool)

(declare-fun e!515051 () Bool)

(declare-fun tp_is_empty!19407 () Bool)

(assert (=> b!917362 (= e!515051 tp_is_empty!19407)))

(declare-fun b!917363 () Bool)

(assert (=> b!917363 (= e!515046 e!515052)))

(declare-fun res!618563 () Bool)

(assert (=> b!917363 (=> (not res!618563) (not e!515052))))

(declare-datatypes ((V!30841 0))(
  ( (V!30842 (val!9754 Int)) )
))
(declare-datatypes ((tuple2!12738 0))(
  ( (tuple2!12739 (_1!6379 (_ BitVec 64)) (_2!6379 V!30841)) )
))
(declare-datatypes ((List!18589 0))(
  ( (Nil!18586) (Cons!18585 (h!19731 tuple2!12738) (t!26226 List!18589)) )
))
(declare-datatypes ((ListLongMap!11449 0))(
  ( (ListLongMap!11450 (toList!5740 List!18589)) )
))
(declare-fun lt!411975 () ListLongMap!11449)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4756 (ListLongMap!11449 (_ BitVec 64)) Bool)

(assert (=> b!917363 (= res!618563 (contains!4756 lt!411975 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9222 0))(
  ( (ValueCellFull!9222 (v!12272 V!30841)) (EmptyCell!9222) )
))
(declare-datatypes ((array!54808 0))(
  ( (array!54809 (arr!26345 (Array (_ BitVec 32) ValueCell!9222)) (size!26805 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54808)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30841)

(declare-fun minValue!1173 () V!30841)

(declare-fun getCurrentListMap!2966 (array!54806 array!54808 (_ BitVec 32) (_ BitVec 32) V!30841 V!30841 (_ BitVec 32) Int) ListLongMap!11449)

(assert (=> b!917363 (= lt!411975 (getCurrentListMap!2966 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!917364 () Bool)

(declare-fun res!618566 () Bool)

(assert (=> b!917364 (=> (not res!618566) (not e!515052))))

(assert (=> b!917364 (= res!618566 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917365 () Bool)

(declare-fun res!618569 () Bool)

(assert (=> b!917365 (=> (not res!618569) (not e!515046))))

(assert (=> b!917365 (= res!618569 (and (= (size!26805 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26804 _keys!1487) (size!26805 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917366 () Bool)

(declare-fun e!515049 () Bool)

(assert (=> b!917366 (= e!515049 tp_is_empty!19407)))

(declare-fun mapNonEmpty!30867 () Bool)

(declare-fun mapRes!30867 () Bool)

(declare-fun tp!59138 () Bool)

(assert (=> mapNonEmpty!30867 (= mapRes!30867 (and tp!59138 e!515049))))

(declare-fun mapRest!30867 () (Array (_ BitVec 32) ValueCell!9222))

(declare-fun mapKey!30867 () (_ BitVec 32))

(declare-fun mapValue!30867 () ValueCell!9222)

(assert (=> mapNonEmpty!30867 (= (arr!26345 _values!1231) (store mapRest!30867 mapKey!30867 mapValue!30867))))

(declare-fun b!917367 () Bool)

(declare-fun res!618572 () Bool)

(assert (=> b!917367 (=> (not res!618572) (not e!515052))))

(declare-fun v!791 () V!30841)

(declare-fun apply!565 (ListLongMap!11449 (_ BitVec 64)) V!30841)

(assert (=> b!917367 (= res!618572 (= (apply!565 lt!411975 k0!1099) v!791))))

(declare-fun b!917368 () Bool)

(declare-fun e!515047 () Bool)

(assert (=> b!917368 (= e!515047 (and e!515051 mapRes!30867))))

(declare-fun condMapEmpty!30867 () Bool)

(declare-fun mapDefault!30867 () ValueCell!9222)

(assert (=> b!917368 (= condMapEmpty!30867 (= (arr!26345 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9222)) mapDefault!30867)))))

(declare-fun b!917359 () Bool)

(declare-fun res!618565 () Bool)

(assert (=> b!917359 (=> (not res!618565) (not e!515046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54806 (_ BitVec 32)) Bool)

(assert (=> b!917359 (= res!618565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!618568 () Bool)

(assert (=> start!78714 (=> (not res!618568) (not e!515046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78714 (= res!618568 (validMask!0 mask!1881))))

(assert (=> start!78714 e!515046))

(assert (=> start!78714 true))

(assert (=> start!78714 tp_is_empty!19407))

(declare-fun array_inv!20532 (array!54808) Bool)

(assert (=> start!78714 (and (array_inv!20532 _values!1231) e!515047)))

(assert (=> start!78714 tp!59139))

(declare-fun array_inv!20533 (array!54806) Bool)

(assert (=> start!78714 (array_inv!20533 _keys!1487)))

(declare-fun b!917369 () Bool)

(assert (=> b!917369 (= e!515050 (not true))))

(declare-fun +!2572 (ListLongMap!11449 tuple2!12738) ListLongMap!11449)

(declare-fun get!13817 (ValueCell!9222 V!30841) V!30841)

(declare-fun dynLambda!1411 (Int (_ BitVec 64)) V!30841)

(assert (=> b!917369 (= (getCurrentListMap!2966 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2572 (getCurrentListMap!2966 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12739 lt!411973 (get!13817 (select (arr!26345 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1411 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30951 0))(
  ( (Unit!30952) )
))
(declare-fun lt!411974 () Unit!30951)

(declare-fun lemmaListMapRecursiveValidKeyArray!7 (array!54806 array!54808 (_ BitVec 32) (_ BitVec 32) V!30841 V!30841 (_ BitVec 32) Int) Unit!30951)

(assert (=> b!917369 (= lt!411974 (lemmaListMapRecursiveValidKeyArray!7 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!917370 () Bool)

(declare-fun res!618567 () Bool)

(assert (=> b!917370 (=> (not res!618567) (not e!515046))))

(declare-datatypes ((List!18590 0))(
  ( (Nil!18587) (Cons!18586 (h!19732 (_ BitVec 64)) (t!26227 List!18590)) )
))
(declare-fun arrayNoDuplicates!0 (array!54806 (_ BitVec 32) List!18590) Bool)

(assert (=> b!917370 (= res!618567 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18587))))

(declare-fun mapIsEmpty!30867 () Bool)

(assert (=> mapIsEmpty!30867 mapRes!30867))

(declare-fun b!917371 () Bool)

(declare-fun res!618570 () Bool)

(assert (=> b!917371 (=> (not res!618570) (not e!515052))))

(assert (=> b!917371 (= res!618570 (validKeyInArray!0 k0!1099))))

(assert (= (and start!78714 res!618568) b!917365))

(assert (= (and b!917365 res!618569) b!917359))

(assert (= (and b!917359 res!618565) b!917370))

(assert (= (and b!917370 res!618567) b!917360))

(assert (= (and b!917360 res!618571) b!917363))

(assert (= (and b!917363 res!618563) b!917367))

(assert (= (and b!917367 res!618572) b!917364))

(assert (= (and b!917364 res!618566) b!917371))

(assert (= (and b!917371 res!618570) b!917361))

(assert (= (and b!917361 res!618564) b!917369))

(assert (= (and b!917368 condMapEmpty!30867) mapIsEmpty!30867))

(assert (= (and b!917368 (not condMapEmpty!30867)) mapNonEmpty!30867))

(get-info :version)

(assert (= (and mapNonEmpty!30867 ((_ is ValueCellFull!9222) mapValue!30867)) b!917366))

(assert (= (and b!917368 ((_ is ValueCellFull!9222) mapDefault!30867)) b!917362))

(assert (= start!78714 b!917368))

(declare-fun b_lambda!13431 () Bool)

(assert (=> (not b_lambda!13431) (not b!917369)))

(declare-fun t!26225 () Bool)

(declare-fun tb!5487 () Bool)

(assert (=> (and start!78714 (= defaultEntry!1235 defaultEntry!1235) t!26225) tb!5487))

(declare-fun result!10789 () Bool)

(assert (=> tb!5487 (= result!10789 tp_is_empty!19407)))

(assert (=> b!917369 t!26225))

(declare-fun b_and!27555 () Bool)

(assert (= b_and!27553 (and (=> t!26225 result!10789) b_and!27555)))

(declare-fun m!851205 () Bool)

(assert (=> b!917363 m!851205))

(declare-fun m!851207 () Bool)

(assert (=> b!917363 m!851207))

(declare-fun m!851209 () Bool)

(assert (=> start!78714 m!851209))

(declare-fun m!851211 () Bool)

(assert (=> start!78714 m!851211))

(declare-fun m!851213 () Bool)

(assert (=> start!78714 m!851213))

(declare-fun m!851215 () Bool)

(assert (=> b!917359 m!851215))

(declare-fun m!851217 () Bool)

(assert (=> b!917371 m!851217))

(declare-fun m!851219 () Bool)

(assert (=> b!917370 m!851219))

(declare-fun m!851221 () Bool)

(assert (=> mapNonEmpty!30867 m!851221))

(declare-fun m!851223 () Bool)

(assert (=> b!917369 m!851223))

(declare-fun m!851225 () Bool)

(assert (=> b!917369 m!851225))

(declare-fun m!851227 () Bool)

(assert (=> b!917369 m!851227))

(declare-fun m!851229 () Bool)

(assert (=> b!917369 m!851229))

(declare-fun m!851231 () Bool)

(assert (=> b!917369 m!851231))

(assert (=> b!917369 m!851223))

(assert (=> b!917369 m!851225))

(declare-fun m!851233 () Bool)

(assert (=> b!917369 m!851233))

(assert (=> b!917369 m!851229))

(declare-fun m!851235 () Bool)

(assert (=> b!917369 m!851235))

(declare-fun m!851237 () Bool)

(assert (=> b!917361 m!851237))

(declare-fun m!851239 () Bool)

(assert (=> b!917361 m!851239))

(declare-fun m!851241 () Bool)

(assert (=> b!917367 m!851241))

(check-sat (not b!917370) (not b_next!16899) (not b!917371) (not b!917367) (not b!917359) (not start!78714) tp_is_empty!19407 b_and!27555 (not b_lambda!13431) (not b!917369) (not b!917361) (not mapNonEmpty!30867) (not b!917363))
(check-sat b_and!27555 (not b_next!16899))
