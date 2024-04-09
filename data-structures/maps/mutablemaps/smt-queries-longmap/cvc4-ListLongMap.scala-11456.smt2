; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133570 () Bool)

(assert start!133570)

(declare-fun b_free!31955 () Bool)

(declare-fun b_next!31955 () Bool)

(assert (=> start!133570 (= b_free!31955 (not b_next!31955))))

(declare-fun tp!112990 () Bool)

(declare-fun b_and!51431 () Bool)

(assert (=> start!133570 (= tp!112990 b_and!51431)))

(declare-fun b!1560996 () Bool)

(declare-fun res!1067442 () Bool)

(declare-fun e!869942 () Bool)

(assert (=> b!1560996 (=> (not res!1067442) (not e!869942))))

(declare-datatypes ((array!103913 0))(
  ( (array!103914 (arr!50144 (Array (_ BitVec 32) (_ BitVec 64))) (size!50695 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103913)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1560996 (= res!1067442 (validKeyInArray!0 (select (arr!50144 _keys!637) from!782)))))

(declare-fun mapIsEmpty!59307 () Bool)

(declare-fun mapRes!59307 () Bool)

(assert (=> mapIsEmpty!59307 mapRes!59307))

(declare-fun b!1560997 () Bool)

(assert (=> b!1560997 (= e!869942 (not true))))

(declare-datatypes ((V!59701 0))(
  ( (V!59702 (val!19394 Int)) )
))
(declare-fun lt!671037 () V!59701)

(declare-datatypes ((tuple2!25194 0))(
  ( (tuple2!25195 (_1!12607 (_ BitVec 64)) (_2!12607 V!59701)) )
))
(declare-datatypes ((List!36572 0))(
  ( (Nil!36569) (Cons!36568 (h!38015 tuple2!25194) (t!51324 List!36572)) )
))
(declare-datatypes ((ListLongMap!22641 0))(
  ( (ListLongMap!22642 (toList!11336 List!36572)) )
))
(declare-fun lt!671035 () ListLongMap!22641)

(declare-fun contains!10256 (ListLongMap!22641 (_ BitVec 64)) Bool)

(declare-fun +!4991 (ListLongMap!22641 tuple2!25194) ListLongMap!22641)

(assert (=> b!1560997 (not (contains!10256 (+!4991 lt!671035 (tuple2!25195 (select (arr!50144 _keys!637) from!782) lt!671037)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51846 0))(
  ( (Unit!51847) )
))
(declare-fun lt!671036 () Unit!51846)

(declare-fun addStillNotContains!527 (ListLongMap!22641 (_ BitVec 64) V!59701 (_ BitVec 64)) Unit!51846)

(assert (=> b!1560997 (= lt!671036 (addStillNotContains!527 lt!671035 (select (arr!50144 _keys!637) from!782) lt!671037 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18280 0))(
  ( (ValueCellFull!18280 (v!22143 V!59701)) (EmptyCell!18280) )
))
(declare-datatypes ((array!103915 0))(
  ( (array!103916 (arr!50145 (Array (_ BitVec 32) ValueCell!18280)) (size!50696 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103915)

(declare-fun get!26215 (ValueCell!18280 V!59701) V!59701)

(declare-fun dynLambda!3880 (Int (_ BitVec 64)) V!59701)

(assert (=> b!1560997 (= lt!671037 (get!26215 (select (arr!50145 _values!487) from!782) (dynLambda!3880 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59701)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59701)

(declare-fun getCurrentListMapNoExtraKeys!6697 (array!103913 array!103915 (_ BitVec 32) (_ BitVec 32) V!59701 V!59701 (_ BitVec 32) Int) ListLongMap!22641)

(assert (=> b!1560997 (= lt!671035 (getCurrentListMapNoExtraKeys!6697 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1560998 () Bool)

(declare-fun res!1067441 () Bool)

(assert (=> b!1560998 (=> (not res!1067441) (not e!869942))))

(declare-datatypes ((List!36573 0))(
  ( (Nil!36570) (Cons!36569 (h!38016 (_ BitVec 64)) (t!51325 List!36573)) )
))
(declare-fun arrayNoDuplicates!0 (array!103913 (_ BitVec 32) List!36573) Bool)

(assert (=> b!1560998 (= res!1067441 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36570))))

(declare-fun b!1560999 () Bool)

(declare-fun res!1067440 () Bool)

(assert (=> b!1560999 (=> (not res!1067440) (not e!869942))))

(assert (=> b!1560999 (= res!1067440 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50695 _keys!637)) (bvslt from!782 (size!50695 _keys!637))))))

(declare-fun b!1561000 () Bool)

(declare-fun e!869940 () Bool)

(declare-fun tp_is_empty!38621 () Bool)

(assert (=> b!1561000 (= e!869940 tp_is_empty!38621)))

(declare-fun b!1561001 () Bool)

(declare-fun res!1067444 () Bool)

(assert (=> b!1561001 (=> (not res!1067444) (not e!869942))))

(assert (=> b!1561001 (= res!1067444 (and (= (size!50696 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50695 _keys!637) (size!50696 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1067443 () Bool)

(assert (=> start!133570 (=> (not res!1067443) (not e!869942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133570 (= res!1067443 (validMask!0 mask!947))))

(assert (=> start!133570 e!869942))

(assert (=> start!133570 tp!112990))

(assert (=> start!133570 tp_is_empty!38621))

(assert (=> start!133570 true))

(declare-fun array_inv!38907 (array!103913) Bool)

(assert (=> start!133570 (array_inv!38907 _keys!637)))

(declare-fun e!869939 () Bool)

(declare-fun array_inv!38908 (array!103915) Bool)

(assert (=> start!133570 (and (array_inv!38908 _values!487) e!869939)))

(declare-fun b!1561002 () Bool)

(declare-fun res!1067439 () Bool)

(assert (=> b!1561002 (=> (not res!1067439) (not e!869942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103913 (_ BitVec 32)) Bool)

(assert (=> b!1561002 (= res!1067439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561003 () Bool)

(declare-fun e!869938 () Bool)

(assert (=> b!1561003 (= e!869939 (and e!869938 mapRes!59307))))

(declare-fun condMapEmpty!59307 () Bool)

(declare-fun mapDefault!59307 () ValueCell!18280)

