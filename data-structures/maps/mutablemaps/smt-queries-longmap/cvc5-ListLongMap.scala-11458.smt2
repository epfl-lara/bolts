; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133578 () Bool)

(assert start!133578)

(declare-fun b_free!31963 () Bool)

(declare-fun b_next!31963 () Bool)

(assert (=> start!133578 (= b_free!31963 (not b_next!31963))))

(declare-fun tp!113014 () Bool)

(declare-fun b_and!51447 () Bool)

(assert (=> start!133578 (= tp!113014 b_and!51447)))

(declare-fun b!1561112 () Bool)

(declare-fun res!1067511 () Bool)

(declare-fun e!869999 () Bool)

(assert (=> b!1561112 (=> (not res!1067511) (not e!869999))))

(declare-datatypes ((array!103929 0))(
  ( (array!103930 (arr!50152 (Array (_ BitVec 32) (_ BitVec 64))) (size!50703 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103929)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561112 (= res!1067511 (validKeyInArray!0 (select (arr!50152 _keys!637) from!782)))))

(declare-fun b!1561113 () Bool)

(declare-fun e!869998 () Bool)

(declare-fun tp_is_empty!38629 () Bool)

(assert (=> b!1561113 (= e!869998 tp_is_empty!38629)))

(declare-fun b!1561114 () Bool)

(assert (=> b!1561114 (= e!869999 (not true))))

(declare-datatypes ((V!59713 0))(
  ( (V!59714 (val!19398 Int)) )
))
(declare-datatypes ((tuple2!25200 0))(
  ( (tuple2!25201 (_1!12610 (_ BitVec 64)) (_2!12610 V!59713)) )
))
(declare-datatypes ((List!36578 0))(
  ( (Nil!36575) (Cons!36574 (h!38021 tuple2!25200) (t!51338 List!36578)) )
))
(declare-datatypes ((ListLongMap!22647 0))(
  ( (ListLongMap!22648 (toList!11339 List!36578)) )
))
(declare-fun lt!671071 () ListLongMap!22647)

(declare-fun lt!671073 () V!59713)

(declare-fun contains!10259 (ListLongMap!22647 (_ BitVec 64)) Bool)

(declare-fun +!4994 (ListLongMap!22647 tuple2!25200) ListLongMap!22647)

(assert (=> b!1561114 (not (contains!10259 (+!4994 lt!671071 (tuple2!25201 (select (arr!50152 _keys!637) from!782) lt!671073)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51852 0))(
  ( (Unit!51853) )
))
(declare-fun lt!671072 () Unit!51852)

(declare-fun addStillNotContains!530 (ListLongMap!22647 (_ BitVec 64) V!59713 (_ BitVec 64)) Unit!51852)

(assert (=> b!1561114 (= lt!671072 (addStillNotContains!530 lt!671071 (select (arr!50152 _keys!637) from!782) lt!671073 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18284 0))(
  ( (ValueCellFull!18284 (v!22147 V!59713)) (EmptyCell!18284) )
))
(declare-datatypes ((array!103931 0))(
  ( (array!103932 (arr!50153 (Array (_ BitVec 32) ValueCell!18284)) (size!50704 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103931)

(declare-fun get!26222 (ValueCell!18284 V!59713) V!59713)

(declare-fun dynLambda!3883 (Int (_ BitVec 64)) V!59713)

(assert (=> b!1561114 (= lt!671073 (get!26222 (select (arr!50153 _values!487) from!782) (dynLambda!3883 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59713)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun minValue!453 () V!59713)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6700 (array!103929 array!103931 (_ BitVec 32) (_ BitVec 32) V!59713 V!59713 (_ BitVec 32) Int) ListLongMap!22647)

(assert (=> b!1561114 (= lt!671071 (getCurrentListMapNoExtraKeys!6700 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561115 () Bool)

(declare-fun res!1067514 () Bool)

(assert (=> b!1561115 (=> (not res!1067514) (not e!869999))))

(assert (=> b!1561115 (= res!1067514 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50703 _keys!637)) (bvslt from!782 (size!50703 _keys!637))))))

(declare-fun b!1561116 () Bool)

(declare-fun res!1067513 () Bool)

(assert (=> b!1561116 (=> (not res!1067513) (not e!869999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103929 (_ BitVec 32)) Bool)

(assert (=> b!1561116 (= res!1067513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1067512 () Bool)

(assert (=> start!133578 (=> (not res!1067512) (not e!869999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133578 (= res!1067512 (validMask!0 mask!947))))

(assert (=> start!133578 e!869999))

(assert (=> start!133578 tp!113014))

(assert (=> start!133578 tp_is_empty!38629))

(assert (=> start!133578 true))

(declare-fun array_inv!38913 (array!103929) Bool)

(assert (=> start!133578 (array_inv!38913 _keys!637)))

(declare-fun e!870000 () Bool)

(declare-fun array_inv!38914 (array!103931) Bool)

(assert (=> start!133578 (and (array_inv!38914 _values!487) e!870000)))

(declare-fun b!1561117 () Bool)

(declare-fun res!1067515 () Bool)

(assert (=> b!1561117 (=> (not res!1067515) (not e!869999))))

(assert (=> b!1561117 (= res!1067515 (and (= (size!50704 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50703 _keys!637) (size!50704 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59319 () Bool)

(declare-fun mapRes!59319 () Bool)

(assert (=> mapIsEmpty!59319 mapRes!59319))

(declare-fun b!1561118 () Bool)

(assert (=> b!1561118 (= e!870000 (and e!869998 mapRes!59319))))

(declare-fun condMapEmpty!59319 () Bool)

(declare-fun mapDefault!59319 () ValueCell!18284)

