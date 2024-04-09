; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100342 () Bool)

(assert start!100342)

(declare-fun b_free!25693 () Bool)

(declare-fun b_next!25693 () Bool)

(assert (=> start!100342 (= b_free!25693 (not b_next!25693))))

(declare-fun tp!90028 () Bool)

(declare-fun b_and!42267 () Bool)

(assert (=> start!100342 (= tp!90028 b_and!42267)))

(declare-fun res!796608 () Bool)

(declare-fun e!679997 () Bool)

(assert (=> start!100342 (=> (not res!796608) (not e!679997))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77506 0))(
  ( (array!77507 (arr!37396 (Array (_ BitVec 32) (_ BitVec 64))) (size!37933 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77506)

(assert (=> start!100342 (= res!796608 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37933 _keys!1208))))))

(assert (=> start!100342 e!679997))

(declare-fun tp_is_empty!30373 () Bool)

(assert (=> start!100342 tp_is_empty!30373))

(declare-fun array_inv!28404 (array!77506) Bool)

(assert (=> start!100342 (array_inv!28404 _keys!1208)))

(assert (=> start!100342 true))

(assert (=> start!100342 tp!90028))

(declare-datatypes ((V!45625 0))(
  ( (V!45626 (val!15243 Int)) )
))
(declare-datatypes ((ValueCell!14477 0))(
  ( (ValueCellFull!14477 (v!17882 V!45625)) (EmptyCell!14477) )
))
(declare-datatypes ((array!77508 0))(
  ( (array!77509 (arr!37397 (Array (_ BitVec 32) ValueCell!14477)) (size!37934 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77508)

(declare-fun e!680001 () Bool)

(declare-fun array_inv!28405 (array!77508) Bool)

(assert (=> start!100342 (and (array_inv!28405 _values!996) e!680001)))

(declare-datatypes ((tuple2!19656 0))(
  ( (tuple2!19657 (_1!9838 (_ BitVec 64)) (_2!9838 V!45625)) )
))
(declare-datatypes ((List!26474 0))(
  ( (Nil!26471) (Cons!26470 (h!27679 tuple2!19656) (t!39166 List!26474)) )
))
(declare-datatypes ((ListLongMap!17637 0))(
  ( (ListLongMap!17638 (toList!8834 List!26474)) )
))
(declare-fun call!57200 () ListLongMap!17637)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!679998 () Bool)

(declare-fun call!57199 () ListLongMap!17637)

(declare-fun b!1196849 () Bool)

(declare-fun -!1801 (ListLongMap!17637 (_ BitVec 64)) ListLongMap!17637)

(assert (=> b!1196849 (= e!679998 (= call!57200 (-!1801 call!57199 k!934)))))

(declare-fun mapIsEmpty!47396 () Bool)

(declare-fun mapRes!47396 () Bool)

(assert (=> mapIsEmpty!47396 mapRes!47396))

(declare-fun b!1196850 () Bool)

(declare-fun res!796606 () Bool)

(assert (=> b!1196850 (=> (not res!796606) (not e!679997))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1196850 (= res!796606 (= (select (arr!37396 _keys!1208) i!673) k!934))))

(declare-fun b!1196851 () Bool)

(declare-fun res!796603 () Bool)

(assert (=> b!1196851 (=> (not res!796603) (not e!679997))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196851 (= res!796603 (validMask!0 mask!1564))))

(declare-fun zeroValue!944 () V!45625)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!543110 () array!77506)

(declare-fun bm!57196 () Bool)

(declare-fun minValue!944 () V!45625)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5247 (array!77506 array!77508 (_ BitVec 32) (_ BitVec 32) V!45625 V!45625 (_ BitVec 32) Int) ListLongMap!17637)

(declare-fun dynLambda!3184 (Int (_ BitVec 64)) V!45625)

(assert (=> bm!57196 (= call!57200 (getCurrentListMapNoExtraKeys!5247 lt!543110 (array!77509 (store (arr!37397 _values!996) i!673 (ValueCellFull!14477 (dynLambda!3184 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37934 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196852 () Bool)

(declare-fun res!796612 () Bool)

(assert (=> b!1196852 (=> (not res!796612) (not e!679997))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196852 (= res!796612 (validKeyInArray!0 k!934))))

(declare-fun b!1196853 () Bool)

(declare-fun e!679996 () Bool)

(assert (=> b!1196853 (= e!679997 e!679996)))

(declare-fun res!796604 () Bool)

(assert (=> b!1196853 (=> (not res!796604) (not e!679996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77506 (_ BitVec 32)) Bool)

(assert (=> b!1196853 (= res!796604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543110 mask!1564))))

(assert (=> b!1196853 (= lt!543110 (array!77507 (store (arr!37396 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37933 _keys!1208)))))

(declare-fun b!1196854 () Bool)

(declare-fun e!679999 () Bool)

(assert (=> b!1196854 (= e!680001 (and e!679999 mapRes!47396))))

(declare-fun condMapEmpty!47396 () Bool)

(declare-fun mapDefault!47396 () ValueCell!14477)

