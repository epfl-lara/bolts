; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100592 () Bool)

(assert start!100592)

(declare-fun b_free!25879 () Bool)

(declare-fun b_next!25879 () Bool)

(assert (=> start!100592 (= b_free!25879 (not b_next!25879))))

(declare-fun tp!90627 () Bool)

(declare-fun b_and!42659 () Bool)

(assert (=> start!100592 (= tp!90627 b_and!42659)))

(declare-fun bm!57744 () Bool)

(declare-fun call!57748 () Bool)

(declare-fun call!57750 () Bool)

(assert (=> bm!57744 (= call!57748 call!57750)))

(declare-fun b!1202382 () Bool)

(declare-fun e!682817 () Bool)

(declare-datatypes ((V!45905 0))(
  ( (V!45906 (val!15348 Int)) )
))
(declare-datatypes ((tuple2!19804 0))(
  ( (tuple2!19805 (_1!9912 (_ BitVec 64)) (_2!9912 V!45905)) )
))
(declare-datatypes ((List!26633 0))(
  ( (Nil!26630) (Cons!26629 (h!27838 tuple2!19804) (t!39499 List!26633)) )
))
(declare-datatypes ((ListLongMap!17785 0))(
  ( (ListLongMap!17786 (toList!8908 List!26633)) )
))
(declare-fun call!57752 () ListLongMap!17785)

(declare-fun call!57747 () ListLongMap!17785)

(assert (=> b!1202382 (= e!682817 (= call!57752 call!57747))))

(declare-fun b!1202383 () Bool)

(declare-fun res!800376 () Bool)

(declare-fun e!682818 () Bool)

(assert (=> b!1202383 (=> (not res!800376) (not e!682818))))

(declare-datatypes ((array!77916 0))(
  ( (array!77917 (arr!37599 (Array (_ BitVec 32) (_ BitVec 64))) (size!38136 (_ BitVec 32))) )
))
(declare-fun lt!544957 () array!77916)

(declare-datatypes ((List!26634 0))(
  ( (Nil!26631) (Cons!26630 (h!27839 (_ BitVec 64)) (t!39500 List!26634)) )
))
(declare-fun arrayNoDuplicates!0 (array!77916 (_ BitVec 32) List!26634) Bool)

(assert (=> b!1202383 (= res!800376 (arrayNoDuplicates!0 lt!544957 #b00000000000000000000000000000000 Nil!26631))))

(declare-fun b!1202384 () Bool)

(declare-fun e!682819 () Bool)

(declare-fun tp_is_empty!30583 () Bool)

(assert (=> b!1202384 (= e!682819 tp_is_empty!30583)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1202385 () Bool)

(declare-fun -!1825 (ListLongMap!17785 (_ BitVec 64)) ListLongMap!17785)

(assert (=> b!1202385 (= e!682817 (= call!57752 (-!1825 call!57747 k!934)))))

(declare-fun b!1202386 () Bool)

(declare-fun res!800373 () Bool)

(declare-fun e!682821 () Bool)

(assert (=> b!1202386 (=> (not res!800373) (not e!682821))))

(declare-fun _keys!1208 () array!77916)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1202386 (= res!800373 (= (select (arr!37599 _keys!1208) i!673) k!934))))

(declare-fun b!1202387 () Bool)

(declare-datatypes ((Unit!39785 0))(
  ( (Unit!39786) )
))
(declare-fun e!682820 () Unit!39785)

(declare-fun Unit!39787 () Unit!39785)

(assert (=> b!1202387 (= e!682820 Unit!39787)))

(declare-fun zeroValue!944 () V!45905)

(declare-fun call!57753 () Unit!39785)

(declare-fun bm!57745 () Bool)

(declare-fun lt!544960 () ListLongMap!17785)

(declare-fun minValue!944 () V!45905)

(declare-fun lt!544947 () ListLongMap!17785)

(declare-fun c!117621 () Bool)

(declare-fun c!117619 () Bool)

(declare-fun addStillContains!1008 (ListLongMap!17785 (_ BitVec 64) V!45905 (_ BitVec 64)) Unit!39785)

(assert (=> bm!57745 (= call!57753 (addStillContains!1008 (ite c!117621 lt!544947 lt!544960) (ite c!117621 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!117619 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!117621 minValue!944 (ite c!117619 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1202388 () Bool)

(declare-fun e!682822 () Bool)

(declare-fun e!682816 () Bool)

(assert (=> b!1202388 (= e!682822 e!682816)))

(declare-fun res!800370 () Bool)

(assert (=> b!1202388 (=> res!800370 e!682816)))

(declare-fun contains!6908 (ListLongMap!17785 (_ BitVec 64)) Bool)

(assert (=> b!1202388 (= res!800370 (not (contains!6908 lt!544960 k!934)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14582 0))(
  ( (ValueCellFull!14582 (v!17987 V!45905)) (EmptyCell!14582) )
))
(declare-datatypes ((array!77918 0))(
  ( (array!77919 (arr!37600 (Array (_ BitVec 32) ValueCell!14582)) (size!38137 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77918)

(declare-fun getCurrentListMapNoExtraKeys!5319 (array!77916 array!77918 (_ BitVec 32) (_ BitVec 32) V!45905 V!45905 (_ BitVec 32) Int) ListLongMap!17785)

(assert (=> b!1202388 (= lt!544960 (getCurrentListMapNoExtraKeys!5319 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!800378 () Bool)

(assert (=> start!100592 (=> (not res!800378) (not e!682821))))

(assert (=> start!100592 (= res!800378 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38136 _keys!1208))))))

(assert (=> start!100592 e!682821))

(assert (=> start!100592 tp_is_empty!30583))

(declare-fun array_inv!28542 (array!77916) Bool)

(assert (=> start!100592 (array_inv!28542 _keys!1208)))

(assert (=> start!100592 true))

(assert (=> start!100592 tp!90627))

(declare-fun e!682813 () Bool)

(declare-fun array_inv!28543 (array!77918) Bool)

(assert (=> start!100592 (and (array_inv!28543 _values!996) e!682813)))

(declare-fun bm!57746 () Bool)

(declare-fun call!57751 () Unit!39785)

(assert (=> bm!57746 (= call!57751 call!57753)))

(declare-fun b!1202389 () Bool)

(declare-fun res!800366 () Bool)

(assert (=> b!1202389 (=> (not res!800366) (not e!682821))))

(assert (=> b!1202389 (= res!800366 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26631))))

(declare-fun b!1202390 () Bool)

(declare-fun mapRes!47717 () Bool)

(assert (=> b!1202390 (= e!682813 (and e!682819 mapRes!47717))))

(declare-fun condMapEmpty!47717 () Bool)

(declare-fun mapDefault!47717 () ValueCell!14582)

