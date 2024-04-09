; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133572 () Bool)

(assert start!133572)

(declare-fun b_free!31957 () Bool)

(declare-fun b_next!31957 () Bool)

(assert (=> start!133572 (= b_free!31957 (not b_next!31957))))

(declare-fun tp!112996 () Bool)

(declare-fun b_and!51435 () Bool)

(assert (=> start!133572 (= tp!112996 b_and!51435)))

(declare-fun b!1561025 () Bool)

(declare-fun e!869957 () Bool)

(assert (=> b!1561025 (= e!869957 (not true))))

(declare-datatypes ((V!59705 0))(
  ( (V!59706 (val!19395 Int)) )
))
(declare-fun lt!671046 () V!59705)

(declare-datatypes ((array!103917 0))(
  ( (array!103918 (arr!50146 (Array (_ BitVec 32) (_ BitVec 64))) (size!50697 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103917)

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((tuple2!25196 0))(
  ( (tuple2!25197 (_1!12608 (_ BitVec 64)) (_2!12608 V!59705)) )
))
(declare-datatypes ((List!36574 0))(
  ( (Nil!36571) (Cons!36570 (h!38017 tuple2!25196) (t!51328 List!36574)) )
))
(declare-datatypes ((ListLongMap!22643 0))(
  ( (ListLongMap!22644 (toList!11337 List!36574)) )
))
(declare-fun lt!671044 () ListLongMap!22643)

(declare-fun contains!10257 (ListLongMap!22643 (_ BitVec 64)) Bool)

(declare-fun +!4992 (ListLongMap!22643 tuple2!25196) ListLongMap!22643)

(assert (=> b!1561025 (not (contains!10257 (+!4992 lt!671044 (tuple2!25197 (select (arr!50146 _keys!637) from!782) lt!671046)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51848 0))(
  ( (Unit!51849) )
))
(declare-fun lt!671045 () Unit!51848)

(declare-fun addStillNotContains!528 (ListLongMap!22643 (_ BitVec 64) V!59705 (_ BitVec 64)) Unit!51848)

(assert (=> b!1561025 (= lt!671045 (addStillNotContains!528 lt!671044 (select (arr!50146 _keys!637) from!782) lt!671046 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18281 0))(
  ( (ValueCellFull!18281 (v!22144 V!59705)) (EmptyCell!18281) )
))
(declare-datatypes ((array!103919 0))(
  ( (array!103920 (arr!50147 (Array (_ BitVec 32) ValueCell!18281)) (size!50698 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103919)

(declare-fun get!26218 (ValueCell!18281 V!59705) V!59705)

(declare-fun dynLambda!3881 (Int (_ BitVec 64)) V!59705)

(assert (=> b!1561025 (= lt!671046 (get!26218 (select (arr!50147 _values!487) from!782) (dynLambda!3881 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59705)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59705)

(declare-fun getCurrentListMapNoExtraKeys!6698 (array!103917 array!103919 (_ BitVec 32) (_ BitVec 32) V!59705 V!59705 (_ BitVec 32) Int) ListLongMap!22643)

(assert (=> b!1561025 (= lt!671044 (getCurrentListMapNoExtraKeys!6698 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1067462 () Bool)

(assert (=> start!133572 (=> (not res!1067462) (not e!869957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133572 (= res!1067462 (validMask!0 mask!947))))

(assert (=> start!133572 e!869957))

(assert (=> start!133572 tp!112996))

(declare-fun tp_is_empty!38623 () Bool)

(assert (=> start!133572 tp_is_empty!38623))

(assert (=> start!133572 true))

(declare-fun array_inv!38909 (array!103917) Bool)

(assert (=> start!133572 (array_inv!38909 _keys!637)))

(declare-fun e!869956 () Bool)

(declare-fun array_inv!38910 (array!103919) Bool)

(assert (=> start!133572 (and (array_inv!38910 _values!487) e!869956)))

(declare-fun b!1561026 () Bool)

(declare-fun e!869953 () Bool)

(assert (=> b!1561026 (= e!869953 tp_is_empty!38623)))

(declare-fun mapIsEmpty!59310 () Bool)

(declare-fun mapRes!59310 () Bool)

(assert (=> mapIsEmpty!59310 mapRes!59310))

(declare-fun b!1561027 () Bool)

(declare-fun res!1067457 () Bool)

(assert (=> b!1561027 (=> (not res!1067457) (not e!869957))))

(declare-datatypes ((List!36575 0))(
  ( (Nil!36572) (Cons!36571 (h!38018 (_ BitVec 64)) (t!51329 List!36575)) )
))
(declare-fun arrayNoDuplicates!0 (array!103917 (_ BitVec 32) List!36575) Bool)

(assert (=> b!1561027 (= res!1067457 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36572))))

(declare-fun b!1561028 () Bool)

(declare-fun res!1067461 () Bool)

(assert (=> b!1561028 (=> (not res!1067461) (not e!869957))))

(assert (=> b!1561028 (= res!1067461 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50697 _keys!637)) (bvslt from!782 (size!50697 _keys!637))))))

(declare-fun b!1561029 () Bool)

(declare-fun res!1067460 () Bool)

(assert (=> b!1561029 (=> (not res!1067460) (not e!869957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103917 (_ BitVec 32)) Bool)

(assert (=> b!1561029 (= res!1067460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561030 () Bool)

(assert (=> b!1561030 (= e!869956 (and e!869953 mapRes!59310))))

(declare-fun condMapEmpty!59310 () Bool)

(declare-fun mapDefault!59310 () ValueCell!18281)

