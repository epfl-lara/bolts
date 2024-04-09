; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133744 () Bool)

(assert start!133744)

(declare-fun b_free!32075 () Bool)

(declare-fun b_next!32075 () Bool)

(assert (=> start!133744 (= b_free!32075 (not b_next!32075))))

(declare-fun tp!113431 () Bool)

(declare-fun b_and!51655 () Bool)

(assert (=> start!133744 (= tp!113431 b_and!51655)))

(declare-fun b!1563268 () Bool)

(declare-fun e!871280 () Bool)

(declare-fun tp_is_empty!38795 () Bool)

(assert (=> b!1563268 (= e!871280 tp_is_empty!38795)))

(declare-fun b!1563269 () Bool)

(declare-fun res!1068826 () Bool)

(declare-fun e!871281 () Bool)

(assert (=> b!1563269 (=> (not res!1068826) (not e!871281))))

(declare-datatypes ((array!104251 0))(
  ( (array!104252 (arr!50313 (Array (_ BitVec 32) (_ BitVec 64))) (size!50864 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104251)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563269 (= res!1068826 (not (validKeyInArray!0 (select (arr!50313 _keys!637) from!782))))))

(declare-fun b!1563270 () Bool)

(declare-fun e!871279 () Bool)

(assert (=> b!1563270 (= e!871279 false)))

(declare-fun lt!671802 () Bool)

(declare-datatypes ((V!59933 0))(
  ( (V!59934 (val!19481 Int)) )
))
(declare-datatypes ((tuple2!25290 0))(
  ( (tuple2!25291 (_1!12655 (_ BitVec 64)) (_2!12655 V!59933)) )
))
(declare-datatypes ((List!36679 0))(
  ( (Nil!36676) (Cons!36675 (h!38122 tuple2!25290) (t!51533 List!36679)) )
))
(declare-datatypes ((ListLongMap!22737 0))(
  ( (ListLongMap!22738 (toList!11384 List!36679)) )
))
(declare-fun lt!671801 () ListLongMap!22737)

(declare-fun contains!10304 (ListLongMap!22737 (_ BitVec 64)) Bool)

(assert (=> b!1563270 (= lt!671802 (contains!10304 lt!671801 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563271 () Bool)

(declare-fun res!1068827 () Bool)

(assert (=> b!1563271 (=> (not res!1068827) (not e!871281))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18367 0))(
  ( (ValueCellFull!18367 (v!22230 V!59933)) (EmptyCell!18367) )
))
(declare-datatypes ((array!104253 0))(
  ( (array!104254 (arr!50314 (Array (_ BitVec 32) ValueCell!18367)) (size!50865 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104253)

(assert (=> b!1563271 (= res!1068827 (and (= (size!50865 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50864 _keys!637) (size!50865 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59568 () Bool)

(declare-fun mapRes!59568 () Bool)

(assert (=> mapIsEmpty!59568 mapRes!59568))

(declare-fun mapNonEmpty!59568 () Bool)

(declare-fun tp!113430 () Bool)

(declare-fun e!871282 () Bool)

(assert (=> mapNonEmpty!59568 (= mapRes!59568 (and tp!113430 e!871282))))

(declare-fun mapValue!59568 () ValueCell!18367)

(declare-fun mapRest!59568 () (Array (_ BitVec 32) ValueCell!18367))

(declare-fun mapKey!59568 () (_ BitVec 32))

(assert (=> mapNonEmpty!59568 (= (arr!50314 _values!487) (store mapRest!59568 mapKey!59568 mapValue!59568))))

(declare-fun res!1068830 () Bool)

(assert (=> start!133744 (=> (not res!1068830) (not e!871281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133744 (= res!1068830 (validMask!0 mask!947))))

(assert (=> start!133744 e!871281))

(assert (=> start!133744 tp!113431))

(assert (=> start!133744 tp_is_empty!38795))

(assert (=> start!133744 true))

(declare-fun array_inv!39031 (array!104251) Bool)

(assert (=> start!133744 (array_inv!39031 _keys!637)))

(declare-fun e!871283 () Bool)

(declare-fun array_inv!39032 (array!104253) Bool)

(assert (=> start!133744 (and (array_inv!39032 _values!487) e!871283)))

(declare-fun b!1563272 () Bool)

(declare-fun res!1068824 () Bool)

(assert (=> b!1563272 (=> (not res!1068824) (not e!871281))))

(assert (=> b!1563272 (= res!1068824 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50864 _keys!637)) (bvslt from!782 (size!50864 _keys!637))))))

(declare-fun b!1563273 () Bool)

(assert (=> b!1563273 (= e!871281 e!871279)))

(declare-fun res!1068829 () Bool)

(assert (=> b!1563273 (=> (not res!1068829) (not e!871279))))

(assert (=> b!1563273 (= res!1068829 (not (contains!10304 lt!671801 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59933)

(declare-fun minValue!453 () V!59933)

(declare-fun getCurrentListMapNoExtraKeys!6743 (array!104251 array!104253 (_ BitVec 32) (_ BitVec 32) V!59933 V!59933 (_ BitVec 32) Int) ListLongMap!22737)

(assert (=> b!1563273 (= lt!671801 (getCurrentListMapNoExtraKeys!6743 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1563274 () Bool)

(declare-fun res!1068828 () Bool)

(assert (=> b!1563274 (=> (not res!1068828) (not e!871281))))

(declare-datatypes ((List!36680 0))(
  ( (Nil!36677) (Cons!36676 (h!38123 (_ BitVec 64)) (t!51534 List!36680)) )
))
(declare-fun arrayNoDuplicates!0 (array!104251 (_ BitVec 32) List!36680) Bool)

(assert (=> b!1563274 (= res!1068828 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36677))))

(declare-fun b!1563275 () Bool)

(assert (=> b!1563275 (= e!871283 (and e!871280 mapRes!59568))))

(declare-fun condMapEmpty!59568 () Bool)

(declare-fun mapDefault!59568 () ValueCell!18367)

