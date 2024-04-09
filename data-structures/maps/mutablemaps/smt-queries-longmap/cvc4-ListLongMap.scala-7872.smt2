; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98016 () Bool)

(assert start!98016)

(declare-fun b_free!23681 () Bool)

(declare-fun b_next!23681 () Bool)

(assert (=> start!98016 (= b_free!23681 (not b_next!23681))))

(declare-fun tp!83748 () Bool)

(declare-fun b_and!38167 () Bool)

(assert (=> start!98016 (= tp!83748 b_and!38167)))

(declare-fun b!1123451 () Bool)

(declare-fun res!750661 () Bool)

(declare-fun e!639615 () Bool)

(assert (=> b!1123451 (=> (not res!750661) (not e!639615))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123451 (= res!750661 (validKeyInArray!0 k!934))))

(declare-fun b!1123452 () Bool)

(declare-fun res!750671 () Bool)

(declare-fun e!639620 () Bool)

(assert (=> b!1123452 (=> (not res!750671) (not e!639620))))

(declare-datatypes ((array!73248 0))(
  ( (array!73249 (arr!35273 (Array (_ BitVec 32) (_ BitVec 64))) (size!35810 (_ BitVec 32))) )
))
(declare-fun lt!499073 () array!73248)

(declare-datatypes ((List!24694 0))(
  ( (Nil!24691) (Cons!24690 (h!25899 (_ BitVec 64)) (t!35374 List!24694)) )
))
(declare-fun arrayNoDuplicates!0 (array!73248 (_ BitVec 32) List!24694) Bool)

(assert (=> b!1123452 (= res!750671 (arrayNoDuplicates!0 lt!499073 #b00000000000000000000000000000000 Nil!24691))))

(declare-fun b!1123453 () Bool)

(declare-fun res!750670 () Bool)

(assert (=> b!1123453 (=> (not res!750670) (not e!639615))))

(declare-fun _keys!1208 () array!73248)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1123453 (= res!750670 (= (select (arr!35273 _keys!1208) i!673) k!934))))

(declare-fun b!1123454 () Bool)

(declare-fun e!639616 () Bool)

(declare-fun e!639621 () Bool)

(assert (=> b!1123454 (= e!639616 e!639621)))

(declare-fun res!750667 () Bool)

(assert (=> b!1123454 (=> res!750667 e!639621)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1123454 (= res!750667 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42741 0))(
  ( (V!42742 (val!14162 Int)) )
))
(declare-fun zeroValue!944 () V!42741)

(declare-datatypes ((tuple2!17860 0))(
  ( (tuple2!17861 (_1!8940 (_ BitVec 64)) (_2!8940 V!42741)) )
))
(declare-datatypes ((List!24695 0))(
  ( (Nil!24692) (Cons!24691 (h!25900 tuple2!17860) (t!35375 List!24695)) )
))
(declare-datatypes ((ListLongMap!15841 0))(
  ( (ListLongMap!15842 (toList!7936 List!24695)) )
))
(declare-fun lt!499071 () ListLongMap!15841)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13396 0))(
  ( (ValueCellFull!13396 (v!16796 V!42741)) (EmptyCell!13396) )
))
(declare-datatypes ((array!73250 0))(
  ( (array!73251 (arr!35274 (Array (_ BitVec 32) ValueCell!13396)) (size!35811 (_ BitVec 32))) )
))
(declare-fun lt!499074 () array!73250)

(declare-fun minValue!944 () V!42741)

(declare-fun getCurrentListMapNoExtraKeys!4396 (array!73248 array!73250 (_ BitVec 32) (_ BitVec 32) V!42741 V!42741 (_ BitVec 32) Int) ListLongMap!15841)

(assert (=> b!1123454 (= lt!499071 (getCurrentListMapNoExtraKeys!4396 lt!499073 lt!499074 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73250)

(declare-fun dynLambda!2488 (Int (_ BitVec 64)) V!42741)

(assert (=> b!1123454 (= lt!499074 (array!73251 (store (arr!35274 _values!996) i!673 (ValueCellFull!13396 (dynLambda!2488 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35811 _values!996)))))

(declare-fun lt!499069 () ListLongMap!15841)

(assert (=> b!1123454 (= lt!499069 (getCurrentListMapNoExtraKeys!4396 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1123455 () Bool)

(declare-fun e!639617 () Bool)

(declare-fun tp_is_empty!28211 () Bool)

(assert (=> b!1123455 (= e!639617 tp_is_empty!28211)))

(declare-fun b!1123456 () Bool)

(declare-fun res!750659 () Bool)

(assert (=> b!1123456 (=> (not res!750659) (not e!639615))))

(assert (=> b!1123456 (= res!750659 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24691))))

(declare-fun call!47326 () ListLongMap!15841)

(declare-fun bm!47323 () Bool)

(assert (=> bm!47323 (= call!47326 (getCurrentListMapNoExtraKeys!4396 lt!499073 lt!499074 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123457 () Bool)

(declare-fun e!639614 () Bool)

(declare-fun mapRes!44134 () Bool)

(assert (=> b!1123457 (= e!639614 (and e!639617 mapRes!44134))))

(declare-fun condMapEmpty!44134 () Bool)

(declare-fun mapDefault!44134 () ValueCell!13396)

