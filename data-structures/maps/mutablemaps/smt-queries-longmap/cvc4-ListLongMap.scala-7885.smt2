; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98094 () Bool)

(assert start!98094)

(declare-fun b_free!23759 () Bool)

(declare-fun b_next!23759 () Bool)

(assert (=> start!98094 (= b_free!23759 (not b_next!23759))))

(declare-fun tp!83981 () Bool)

(declare-fun b_and!38323 () Bool)

(assert (=> start!98094 (= tp!83981 b_and!38323)))

(declare-fun b!1125816 () Bool)

(declare-fun e!640882 () Bool)

(assert (=> b!1125816 (= e!640882 true)))

(declare-datatypes ((V!42845 0))(
  ( (V!42846 (val!14201 Int)) )
))
(declare-fun zeroValue!944 () V!42845)

(declare-datatypes ((array!73400 0))(
  ( (array!73401 (arr!35349 (Array (_ BitVec 32) (_ BitVec 64))) (size!35886 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73400)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!499982 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13435 0))(
  ( (ValueCellFull!13435 (v!16835 V!42845)) (EmptyCell!13435) )
))
(declare-datatypes ((array!73402 0))(
  ( (array!73403 (arr!35350 (Array (_ BitVec 32) ValueCell!13435)) (size!35887 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73402)

(declare-fun minValue!944 () V!42845)

(declare-datatypes ((tuple2!17934 0))(
  ( (tuple2!17935 (_1!8977 (_ BitVec 64)) (_2!8977 V!42845)) )
))
(declare-datatypes ((List!24761 0))(
  ( (Nil!24758) (Cons!24757 (h!25966 tuple2!17934) (t!35519 List!24761)) )
))
(declare-datatypes ((ListLongMap!15915 0))(
  ( (ListLongMap!15916 (toList!7973 List!24761)) )
))
(declare-fun contains!6482 (ListLongMap!15915 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4432 (array!73400 array!73402 (_ BitVec 32) (_ BitVec 32) V!42845 V!42845 (_ BitVec 32) Int) ListLongMap!15915)

(assert (=> b!1125816 (= lt!499982 (contains!6482 (getCurrentListMapNoExtraKeys!4432 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1125817 () Bool)

(declare-fun res!752368 () Bool)

(declare-fun e!640879 () Bool)

(assert (=> b!1125817 (=> (not res!752368) (not e!640879))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125817 (= res!752368 (= (select (arr!35349 _keys!1208) i!673) k!934))))

(declare-fun b!1125819 () Bool)

(declare-fun res!752372 () Bool)

(declare-fun e!640877 () Bool)

(assert (=> b!1125819 (=> (not res!752372) (not e!640877))))

(declare-fun lt!499978 () array!73400)

(declare-datatypes ((List!24762 0))(
  ( (Nil!24759) (Cons!24758 (h!25967 (_ BitVec 64)) (t!35520 List!24762)) )
))
(declare-fun arrayNoDuplicates!0 (array!73400 (_ BitVec 32) List!24762) Bool)

(assert (=> b!1125819 (= res!752372 (arrayNoDuplicates!0 lt!499978 #b00000000000000000000000000000000 Nil!24759))))

(declare-fun b!1125820 () Bool)

(declare-fun res!752367 () Bool)

(assert (=> b!1125820 (=> (not res!752367) (not e!640879))))

(assert (=> b!1125820 (= res!752367 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24759))))

(declare-fun b!1125821 () Bool)

(declare-fun e!640881 () Bool)

(declare-fun e!640880 () Bool)

(declare-fun mapRes!44251 () Bool)

(assert (=> b!1125821 (= e!640881 (and e!640880 mapRes!44251))))

(declare-fun condMapEmpty!44251 () Bool)

(declare-fun mapDefault!44251 () ValueCell!13435)

