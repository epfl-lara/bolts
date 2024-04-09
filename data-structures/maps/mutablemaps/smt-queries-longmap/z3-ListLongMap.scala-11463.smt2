; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133610 () Bool)

(assert start!133610)

(declare-fun b_free!31995 () Bool)

(declare-fun b_next!31995 () Bool)

(assert (=> start!133610 (= b_free!31995 (not b_next!31995))))

(declare-fun tp!113109 () Bool)

(declare-fun b_and!51511 () Bool)

(assert (=> start!133610 (= tp!113109 b_and!51511)))

(declare-fun mapIsEmpty!59367 () Bool)

(declare-fun mapRes!59367 () Bool)

(assert (=> mapIsEmpty!59367 mapRes!59367))

(declare-fun b!1561576 () Bool)

(declare-fun e!870242 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1561576 (= e!870242 (not (bvsge (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!59755 0))(
  ( (V!59756 (val!19414 Int)) )
))
(declare-datatypes ((tuple2!25228 0))(
  ( (tuple2!25229 (_1!12624 (_ BitVec 64)) (_2!12624 V!59755)) )
))
(declare-datatypes ((List!36605 0))(
  ( (Nil!36602) (Cons!36601 (h!38048 tuple2!25228) (t!51397 List!36605)) )
))
(declare-datatypes ((ListLongMap!22675 0))(
  ( (ListLongMap!22676 (toList!11353 List!36605)) )
))
(declare-fun lt!671215 () ListLongMap!22675)

(declare-fun lt!671216 () V!59755)

(declare-datatypes ((array!103993 0))(
  ( (array!103994 (arr!50184 (Array (_ BitVec 32) (_ BitVec 64))) (size!50735 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103993)

(declare-fun contains!10273 (ListLongMap!22675 (_ BitVec 64)) Bool)

(declare-fun +!5008 (ListLongMap!22675 tuple2!25228) ListLongMap!22675)

(assert (=> b!1561576 (not (contains!10273 (+!5008 lt!671215 (tuple2!25229 (select (arr!50184 _keys!637) from!782) lt!671216)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51880 0))(
  ( (Unit!51881) )
))
(declare-fun lt!671217 () Unit!51880)

(declare-fun addStillNotContains!544 (ListLongMap!22675 (_ BitVec 64) V!59755 (_ BitVec 64)) Unit!51880)

(assert (=> b!1561576 (= lt!671217 (addStillNotContains!544 lt!671215 (select (arr!50184 _keys!637) from!782) lt!671216 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18300 0))(
  ( (ValueCellFull!18300 (v!22163 V!59755)) (EmptyCell!18300) )
))
(declare-datatypes ((array!103995 0))(
  ( (array!103996 (arr!50185 (Array (_ BitVec 32) ValueCell!18300)) (size!50736 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103995)

(declare-fun get!26246 (ValueCell!18300 V!59755) V!59755)

(declare-fun dynLambda!3897 (Int (_ BitVec 64)) V!59755)

(assert (=> b!1561576 (= lt!671216 (get!26246 (select (arr!50185 _values!487) from!782) (dynLambda!3897 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59755)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59755)

(declare-fun getCurrentListMapNoExtraKeys!6714 (array!103993 array!103995 (_ BitVec 32) (_ BitVec 32) V!59755 V!59755 (_ BitVec 32) Int) ListLongMap!22675)

(assert (=> b!1561576 (= lt!671215 (getCurrentListMapNoExtraKeys!6714 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561577 () Bool)

(declare-fun res!1067803 () Bool)

(assert (=> b!1561577 (=> (not res!1067803) (not e!870242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561577 (= res!1067803 (validKeyInArray!0 (select (arr!50184 _keys!637) from!782)))))

(declare-fun b!1561578 () Bool)

(declare-fun res!1067804 () Bool)

(assert (=> b!1561578 (=> (not res!1067804) (not e!870242))))

(assert (=> b!1561578 (= res!1067804 (and (= (size!50736 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50735 _keys!637) (size!50736 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561579 () Bool)

(declare-fun e!870239 () Bool)

(declare-fun e!870241 () Bool)

(assert (=> b!1561579 (= e!870239 (and e!870241 mapRes!59367))))

(declare-fun condMapEmpty!59367 () Bool)

(declare-fun mapDefault!59367 () ValueCell!18300)

(assert (=> b!1561579 (= condMapEmpty!59367 (= (arr!50185 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18300)) mapDefault!59367)))))

(declare-fun b!1561580 () Bool)

(declare-fun tp_is_empty!38661 () Bool)

(assert (=> b!1561580 (= e!870241 tp_is_empty!38661)))

(declare-fun res!1067802 () Bool)

(assert (=> start!133610 (=> (not res!1067802) (not e!870242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133610 (= res!1067802 (validMask!0 mask!947))))

(assert (=> start!133610 e!870242))

(assert (=> start!133610 tp!113109))

(assert (=> start!133610 tp_is_empty!38661))

(assert (=> start!133610 true))

(declare-fun array_inv!38935 (array!103993) Bool)

(assert (=> start!133610 (array_inv!38935 _keys!637)))

(declare-fun array_inv!38936 (array!103995) Bool)

(assert (=> start!133610 (and (array_inv!38936 _values!487) e!870239)))

(declare-fun b!1561581 () Bool)

(declare-fun res!1067800 () Bool)

(assert (=> b!1561581 (=> (not res!1067800) (not e!870242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103993 (_ BitVec 32)) Bool)

(assert (=> b!1561581 (= res!1067800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561582 () Bool)

(declare-fun e!870240 () Bool)

(assert (=> b!1561582 (= e!870240 tp_is_empty!38661)))

(declare-fun mapNonEmpty!59367 () Bool)

(declare-fun tp!113110 () Bool)

(assert (=> mapNonEmpty!59367 (= mapRes!59367 (and tp!113110 e!870240))))

(declare-fun mapKey!59367 () (_ BitVec 32))

(declare-fun mapValue!59367 () ValueCell!18300)

(declare-fun mapRest!59367 () (Array (_ BitVec 32) ValueCell!18300))

(assert (=> mapNonEmpty!59367 (= (arr!50185 _values!487) (store mapRest!59367 mapKey!59367 mapValue!59367))))

(declare-fun b!1561583 () Bool)

(declare-fun res!1067801 () Bool)

(assert (=> b!1561583 (=> (not res!1067801) (not e!870242))))

(declare-datatypes ((List!36606 0))(
  ( (Nil!36603) (Cons!36602 (h!38049 (_ BitVec 64)) (t!51398 List!36606)) )
))
(declare-fun arrayNoDuplicates!0 (array!103993 (_ BitVec 32) List!36606) Bool)

(assert (=> b!1561583 (= res!1067801 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36603))))

(declare-fun b!1561584 () Bool)

(declare-fun res!1067799 () Bool)

(assert (=> b!1561584 (=> (not res!1067799) (not e!870242))))

(assert (=> b!1561584 (= res!1067799 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50735 _keys!637)) (bvslt from!782 (size!50735 _keys!637))))))

(assert (= (and start!133610 res!1067802) b!1561578))

(assert (= (and b!1561578 res!1067804) b!1561581))

(assert (= (and b!1561581 res!1067800) b!1561583))

(assert (= (and b!1561583 res!1067801) b!1561584))

(assert (= (and b!1561584 res!1067799) b!1561577))

(assert (= (and b!1561577 res!1067803) b!1561576))

(assert (= (and b!1561579 condMapEmpty!59367) mapIsEmpty!59367))

(assert (= (and b!1561579 (not condMapEmpty!59367)) mapNonEmpty!59367))

(get-info :version)

(assert (= (and mapNonEmpty!59367 ((_ is ValueCellFull!18300) mapValue!59367)) b!1561582))

(assert (= (and b!1561579 ((_ is ValueCellFull!18300) mapDefault!59367)) b!1561580))

(assert (= start!133610 b!1561579))

(declare-fun b_lambda!24879 () Bool)

(assert (=> (not b_lambda!24879) (not b!1561576)))

(declare-fun t!51396 () Bool)

(declare-fun tb!12547 () Bool)

(assert (=> (and start!133610 (= defaultEntry!495 defaultEntry!495) t!51396) tb!12547))

(declare-fun result!26367 () Bool)

(assert (=> tb!12547 (= result!26367 tp_is_empty!38661)))

(assert (=> b!1561576 t!51396))

(declare-fun b_and!51513 () Bool)

(assert (= b_and!51511 (and (=> t!51396 result!26367) b_and!51513)))

(declare-fun m!1437313 () Bool)

(assert (=> b!1561577 m!1437313))

(assert (=> b!1561577 m!1437313))

(declare-fun m!1437315 () Bool)

(assert (=> b!1561577 m!1437315))

(declare-fun m!1437317 () Bool)

(assert (=> b!1561576 m!1437317))

(declare-fun m!1437319 () Bool)

(assert (=> b!1561576 m!1437319))

(declare-fun m!1437321 () Bool)

(assert (=> b!1561576 m!1437321))

(assert (=> b!1561576 m!1437313))

(declare-fun m!1437323 () Bool)

(assert (=> b!1561576 m!1437323))

(assert (=> b!1561576 m!1437317))

(declare-fun m!1437325 () Bool)

(assert (=> b!1561576 m!1437325))

(assert (=> b!1561576 m!1437313))

(assert (=> b!1561576 m!1437325))

(declare-fun m!1437327 () Bool)

(assert (=> b!1561576 m!1437327))

(assert (=> b!1561576 m!1437319))

(declare-fun m!1437329 () Bool)

(assert (=> b!1561576 m!1437329))

(declare-fun m!1437331 () Bool)

(assert (=> b!1561583 m!1437331))

(declare-fun m!1437333 () Bool)

(assert (=> b!1561581 m!1437333))

(declare-fun m!1437335 () Bool)

(assert (=> start!133610 m!1437335))

(declare-fun m!1437337 () Bool)

(assert (=> start!133610 m!1437337))

(declare-fun m!1437339 () Bool)

(assert (=> start!133610 m!1437339))

(declare-fun m!1437341 () Bool)

(assert (=> mapNonEmpty!59367 m!1437341))

(check-sat (not b!1561581) (not mapNonEmpty!59367) b_and!51513 (not b!1561576) (not b!1561583) (not b_next!31995) tp_is_empty!38661 (not b!1561577) (not start!133610) (not b_lambda!24879))
(check-sat b_and!51513 (not b_next!31995))
