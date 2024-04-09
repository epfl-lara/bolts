; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100334 () Bool)

(assert start!100334)

(declare-fun b_free!25685 () Bool)

(declare-fun b_next!25685 () Bool)

(assert (=> start!100334 (= b_free!25685 (not b_next!25685))))

(declare-fun tp!90003 () Bool)

(declare-fun b_and!42251 () Bool)

(assert (=> start!100334 (= tp!90003 b_and!42251)))

(declare-datatypes ((V!45613 0))(
  ( (V!45614 (val!15239 Int)) )
))
(declare-datatypes ((tuple2!19650 0))(
  ( (tuple2!19651 (_1!9835 (_ BitVec 64)) (_2!9835 V!45613)) )
))
(declare-datatypes ((List!26467 0))(
  ( (Nil!26464) (Cons!26463 (h!27672 tuple2!19650) (t!39151 List!26467)) )
))
(declare-datatypes ((ListLongMap!17631 0))(
  ( (ListLongMap!17632 (toList!8831 List!26467)) )
))
(declare-fun call!57176 () ListLongMap!17631)

(declare-fun call!57175 () ListLongMap!17631)

(declare-fun b!1196649 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!679904 () Bool)

(declare-fun -!1798 (ListLongMap!17631 (_ BitVec 64)) ListLongMap!17631)

(assert (=> b!1196649 (= e!679904 (= call!57176 (-!1798 call!57175 k!934)))))

(declare-fun mapNonEmpty!47384 () Bool)

(declare-fun mapRes!47384 () Bool)

(declare-fun tp!90004 () Bool)

(declare-fun e!679902 () Bool)

(assert (=> mapNonEmpty!47384 (= mapRes!47384 (and tp!90004 e!679902))))

(declare-datatypes ((ValueCell!14473 0))(
  ( (ValueCellFull!14473 (v!17878 V!45613)) (EmptyCell!14473) )
))
(declare-fun mapRest!47384 () (Array (_ BitVec 32) ValueCell!14473))

(declare-fun mapValue!47384 () ValueCell!14473)

(declare-datatypes ((array!77490 0))(
  ( (array!77491 (arr!37388 (Array (_ BitVec 32) ValueCell!14473)) (size!37925 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77490)

(declare-fun mapKey!47384 () (_ BitVec 32))

(assert (=> mapNonEmpty!47384 (= (arr!37388 _values!996) (store mapRest!47384 mapKey!47384 mapValue!47384))))

(declare-fun b!1196650 () Bool)

(declare-fun res!796476 () Bool)

(declare-fun e!679899 () Bool)

(assert (=> b!1196650 (=> (not res!796476) (not e!679899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196650 (= res!796476 (validKeyInArray!0 k!934))))

(declare-fun b!1196651 () Bool)

(declare-fun tp_is_empty!30365 () Bool)

(assert (=> b!1196651 (= e!679902 tp_is_empty!30365)))

(declare-fun b!1196652 () Bool)

(declare-fun res!796480 () Bool)

(assert (=> b!1196652 (=> (not res!796480) (not e!679899))))

(declare-datatypes ((array!77492 0))(
  ( (array!77493 (arr!37389 (Array (_ BitVec 32) (_ BitVec 64))) (size!37926 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77492)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77492 (_ BitVec 32)) Bool)

(assert (=> b!1196652 (= res!796480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1196653 () Bool)

(declare-fun res!796472 () Bool)

(assert (=> b!1196653 (=> (not res!796472) (not e!679899))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1196653 (= res!796472 (= (select (arr!37389 _keys!1208) i!673) k!934))))

(declare-fun res!796478 () Bool)

(assert (=> start!100334 (=> (not res!796478) (not e!679899))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100334 (= res!796478 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37926 _keys!1208))))))

(assert (=> start!100334 e!679899))

(assert (=> start!100334 tp_is_empty!30365))

(declare-fun array_inv!28398 (array!77492) Bool)

(assert (=> start!100334 (array_inv!28398 _keys!1208)))

(assert (=> start!100334 true))

(assert (=> start!100334 tp!90003))

(declare-fun e!679901 () Bool)

(declare-fun array_inv!28399 (array!77490) Bool)

(assert (=> start!100334 (and (array_inv!28399 _values!996) e!679901)))

(declare-fun b!1196654 () Bool)

(declare-fun e!679900 () Bool)

(assert (=> b!1196654 (= e!679899 e!679900)))

(declare-fun res!796474 () Bool)

(assert (=> b!1196654 (=> (not res!796474) (not e!679900))))

(declare-fun lt!543075 () array!77492)

(assert (=> b!1196654 (= res!796474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543075 mask!1564))))

(assert (=> b!1196654 (= lt!543075 (array!77493 (store (arr!37389 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37926 _keys!1208)))))

(declare-fun b!1196655 () Bool)

(declare-fun res!796477 () Bool)

(assert (=> b!1196655 (=> (not res!796477) (not e!679899))))

(declare-datatypes ((List!26468 0))(
  ( (Nil!26465) (Cons!26464 (h!27673 (_ BitVec 64)) (t!39152 List!26468)) )
))
(declare-fun arrayNoDuplicates!0 (array!77492 (_ BitVec 32) List!26468) Bool)

(assert (=> b!1196655 (= res!796477 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26465))))

(declare-fun b!1196656 () Bool)

(declare-fun e!679905 () Bool)

(assert (=> b!1196656 (= e!679905 true)))

(assert (=> b!1196656 e!679904))

(declare-fun c!117290 () Bool)

(assert (=> b!1196656 (= c!117290 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!45613)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!39622 0))(
  ( (Unit!39623) )
))
(declare-fun lt!543073 () Unit!39622)

(declare-fun minValue!944 () V!45613)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1005 (array!77492 array!77490 (_ BitVec 32) (_ BitVec 32) V!45613 V!45613 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39622)

(assert (=> b!1196656 (= lt!543073 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1005 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196657 () Bool)

(declare-fun e!679906 () Bool)

(assert (=> b!1196657 (= e!679901 (and e!679906 mapRes!47384))))

(declare-fun condMapEmpty!47384 () Bool)

(declare-fun mapDefault!47384 () ValueCell!14473)

