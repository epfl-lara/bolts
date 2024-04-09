; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78776 () Bool)

(assert start!78776)

(declare-fun b_free!16961 () Bool)

(declare-fun b_next!16961 () Bool)

(assert (=> start!78776 (= b_free!16961 (not b_next!16961))))

(declare-fun tp!59325 () Bool)

(declare-fun b_and!27677 () Bool)

(assert (=> start!78776 (= tp!59325 b_and!27677)))

(declare-fun b!918630 () Bool)

(declare-fun res!619496 () Bool)

(declare-fun e!515698 () Bool)

(assert (=> b!918630 (=> (not res!619496) (not e!515698))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!30923 0))(
  ( (V!30924 (val!9785 Int)) )
))
(declare-fun v!791 () V!30923)

(declare-datatypes ((tuple2!12796 0))(
  ( (tuple2!12797 (_1!6408 (_ BitVec 64)) (_2!6408 V!30923)) )
))
(declare-datatypes ((List!18638 0))(
  ( (Nil!18635) (Cons!18634 (h!19780 tuple2!12796) (t!26337 List!18638)) )
))
(declare-datatypes ((ListLongMap!11507 0))(
  ( (ListLongMap!11508 (toList!5769 List!18638)) )
))
(declare-fun lt!412332 () ListLongMap!11507)

(declare-fun apply!588 (ListLongMap!11507 (_ BitVec 64)) V!30923)

(assert (=> b!918630 (= res!619496 (= (apply!588 lt!412332 k!1099) v!791))))

(declare-fun b!918631 () Bool)

(declare-fun res!619499 () Bool)

(declare-fun e!515699 () Bool)

(assert (=> b!918631 (=> (not res!619499) (not e!515699))))

(declare-datatypes ((array!54930 0))(
  ( (array!54931 (arr!26406 (Array (_ BitVec 32) (_ BitVec 64))) (size!26866 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54930)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9253 0))(
  ( (ValueCellFull!9253 (v!12303 V!30923)) (EmptyCell!9253) )
))
(declare-datatypes ((array!54932 0))(
  ( (array!54933 (arr!26407 (Array (_ BitVec 32) ValueCell!9253)) (size!26867 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54932)

(assert (=> b!918631 (= res!619499 (and (= (size!26867 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26866 _keys!1487) (size!26867 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918632 () Bool)

(declare-fun res!619501 () Bool)

(assert (=> b!918632 (=> (not res!619501) (not e!515699))))

(declare-datatypes ((List!18639 0))(
  ( (Nil!18636) (Cons!18635 (h!19781 (_ BitVec 64)) (t!26338 List!18639)) )
))
(declare-fun arrayNoDuplicates!0 (array!54930 (_ BitVec 32) List!18639) Bool)

(assert (=> b!918632 (= res!619501 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18636))))

(declare-fun b!918633 () Bool)

(declare-fun e!515697 () Bool)

(assert (=> b!918633 (= e!515698 e!515697)))

(declare-fun res!619498 () Bool)

(assert (=> b!918633 (=> (not res!619498) (not e!515697))))

(declare-fun lt!412330 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918633 (= res!619498 (validKeyInArray!0 lt!412330))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918633 (= lt!412330 (select (arr!26406 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918634 () Bool)

(declare-fun res!619502 () Bool)

(assert (=> b!918634 (=> (not res!619502) (not e!515699))))

(assert (=> b!918634 (= res!619502 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26866 _keys!1487))))))

(declare-fun b!918635 () Bool)

(assert (=> b!918635 (= e!515697 (not true))))

(declare-fun lt!412335 () tuple2!12796)

(declare-fun contains!4782 (ListLongMap!11507 (_ BitVec 64)) Bool)

(declare-fun +!2597 (ListLongMap!11507 tuple2!12796) ListLongMap!11507)

(assert (=> b!918635 (contains!4782 (+!2597 lt!412332 lt!412335) k!1099)))

(declare-fun lt!412334 () V!30923)

(declare-datatypes ((Unit!31001 0))(
  ( (Unit!31002) )
))
(declare-fun lt!412333 () Unit!31001)

(declare-fun addStillContains!359 (ListLongMap!11507 (_ BitVec 64) V!30923 (_ BitVec 64)) Unit!31001)

(assert (=> b!918635 (= lt!412333 (addStillContains!359 lt!412332 lt!412330 lt!412334 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30923)

(declare-fun minValue!1173 () V!30923)

(declare-fun getCurrentListMap!2994 (array!54930 array!54932 (_ BitVec 32) (_ BitVec 32) V!30923 V!30923 (_ BitVec 32) Int) ListLongMap!11507)

(assert (=> b!918635 (= (getCurrentListMap!2994 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2597 (getCurrentListMap!2994 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!412335))))

(assert (=> b!918635 (= lt!412335 (tuple2!12797 lt!412330 lt!412334))))

(declare-fun get!13862 (ValueCell!9253 V!30923) V!30923)

(declare-fun dynLambda!1436 (Int (_ BitVec 64)) V!30923)

(assert (=> b!918635 (= lt!412334 (get!13862 (select (arr!26407 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1436 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!412331 () Unit!31001)

(declare-fun lemmaListMapRecursiveValidKeyArray!32 (array!54930 array!54932 (_ BitVec 32) (_ BitVec 32) V!30923 V!30923 (_ BitVec 32) Int) Unit!31001)

(assert (=> b!918635 (= lt!412331 (lemmaListMapRecursiveValidKeyArray!32 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918636 () Bool)

(declare-fun e!515702 () Bool)

(declare-fun tp_is_empty!19469 () Bool)

(assert (=> b!918636 (= e!515702 tp_is_empty!19469)))

(declare-fun b!918637 () Bool)

(declare-fun res!619500 () Bool)

(assert (=> b!918637 (=> (not res!619500) (not e!515699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54930 (_ BitVec 32)) Bool)

(assert (=> b!918637 (= res!619500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918638 () Bool)

(declare-fun res!619495 () Bool)

(assert (=> b!918638 (=> (not res!619495) (not e!515698))))

(assert (=> b!918638 (= res!619495 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!30960 () Bool)

(declare-fun mapRes!30960 () Bool)

(declare-fun tp!59324 () Bool)

(declare-fun e!515701 () Bool)

(assert (=> mapNonEmpty!30960 (= mapRes!30960 (and tp!59324 e!515701))))

(declare-fun mapKey!30960 () (_ BitVec 32))

(declare-fun mapValue!30960 () ValueCell!9253)

(declare-fun mapRest!30960 () (Array (_ BitVec 32) ValueCell!9253))

(assert (=> mapNonEmpty!30960 (= (arr!26407 _values!1231) (store mapRest!30960 mapKey!30960 mapValue!30960))))

(declare-fun b!918639 () Bool)

(assert (=> b!918639 (= e!515701 tp_is_empty!19469)))

(declare-fun b!918640 () Bool)

(declare-fun res!619493 () Bool)

(assert (=> b!918640 (=> (not res!619493) (not e!515698))))

(assert (=> b!918640 (= res!619493 (validKeyInArray!0 k!1099))))

(declare-fun mapIsEmpty!30960 () Bool)

(assert (=> mapIsEmpty!30960 mapRes!30960))

(declare-fun b!918641 () Bool)

(declare-fun e!515703 () Bool)

(assert (=> b!918641 (= e!515703 (and e!515702 mapRes!30960))))

(declare-fun condMapEmpty!30960 () Bool)

(declare-fun mapDefault!30960 () ValueCell!9253)

