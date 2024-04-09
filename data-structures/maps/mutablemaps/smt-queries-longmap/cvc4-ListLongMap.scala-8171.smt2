; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99932 () Bool)

(assert start!99932)

(declare-fun b_free!25475 () Bool)

(declare-fun b_next!25475 () Bool)

(assert (=> start!99932 (= b_free!25475 (not b_next!25475))))

(declare-fun tp!89139 () Bool)

(declare-fun b_and!41831 () Bool)

(assert (=> start!99932 (= tp!89139 b_and!41831)))

(declare-fun res!790536 () Bool)

(declare-fun e!675946 () Bool)

(assert (=> start!99932 (=> (not res!790536) (not e!675946))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76778 0))(
  ( (array!76779 (arr!37035 (Array (_ BitVec 32) (_ BitVec 64))) (size!37572 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76778)

(assert (=> start!99932 (= res!790536 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37572 _keys!1208))))))

(assert (=> start!99932 e!675946))

(declare-fun tp_is_empty!30005 () Bool)

(assert (=> start!99932 tp_is_empty!30005))

(declare-fun array_inv!28144 (array!76778) Bool)

(assert (=> start!99932 (array_inv!28144 _keys!1208)))

(assert (=> start!99932 true))

(assert (=> start!99932 tp!89139))

(declare-datatypes ((V!45133 0))(
  ( (V!45134 (val!15059 Int)) )
))
(declare-datatypes ((ValueCell!14293 0))(
  ( (ValueCellFull!14293 (v!17698 V!45133)) (EmptyCell!14293) )
))
(declare-datatypes ((array!76780 0))(
  ( (array!76781 (arr!37036 (Array (_ BitVec 32) ValueCell!14293)) (size!37573 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76780)

(declare-fun e!675944 () Bool)

(declare-fun array_inv!28145 (array!76780) Bool)

(assert (=> start!99932 (and (array_inv!28145 _values!996) e!675944)))

(declare-fun b!1188772 () Bool)

(declare-fun res!790534 () Bool)

(assert (=> b!1188772 (=> (not res!790534) (not e!675946))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1188772 (= res!790534 (= (select (arr!37035 _keys!1208) i!673) k!934))))

(declare-fun b!1188773 () Bool)

(declare-fun res!790533 () Bool)

(assert (=> b!1188773 (=> (not res!790533) (not e!675946))))

(declare-datatypes ((List!26228 0))(
  ( (Nil!26225) (Cons!26224 (h!27433 (_ BitVec 64)) (t!38702 List!26228)) )
))
(declare-fun arrayNoDuplicates!0 (array!76778 (_ BitVec 32) List!26228) Bool)

(assert (=> b!1188773 (= res!790533 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26225))))

(declare-fun b!1188774 () Bool)

(declare-fun e!675947 () Bool)

(assert (=> b!1188774 (= e!675947 tp_is_empty!30005)))

(declare-fun b!1188775 () Bool)

(declare-fun res!790532 () Bool)

(declare-fun e!675942 () Bool)

(assert (=> b!1188775 (=> (not res!790532) (not e!675942))))

(declare-fun lt!540783 () array!76778)

(assert (=> b!1188775 (= res!790532 (arrayNoDuplicates!0 lt!540783 #b00000000000000000000000000000000 Nil!26225))))

(declare-fun b!1188776 () Bool)

(declare-fun res!790530 () Bool)

(assert (=> b!1188776 (=> (not res!790530) (not e!675946))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76778 (_ BitVec 32)) Bool)

(assert (=> b!1188776 (= res!790530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188777 () Bool)

(declare-fun res!790539 () Bool)

(assert (=> b!1188777 (=> (not res!790539) (not e!675946))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1188777 (= res!790539 (and (= (size!37573 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37572 _keys!1208) (size!37573 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1188778 () Bool)

(declare-fun res!790540 () Bool)

(assert (=> b!1188778 (=> (not res!790540) (not e!675946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188778 (= res!790540 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!46835 () Bool)

(declare-fun mapRes!46835 () Bool)

(declare-fun tp!89140 () Bool)

(declare-fun e!675948 () Bool)

(assert (=> mapNonEmpty!46835 (= mapRes!46835 (and tp!89140 e!675948))))

(declare-fun mapKey!46835 () (_ BitVec 32))

(declare-fun mapValue!46835 () ValueCell!14293)

(declare-fun mapRest!46835 () (Array (_ BitVec 32) ValueCell!14293))

(assert (=> mapNonEmpty!46835 (= (arr!37036 _values!996) (store mapRest!46835 mapKey!46835 mapValue!46835))))

(declare-fun b!1188779 () Bool)

(assert (=> b!1188779 (= e!675948 tp_is_empty!30005)))

(declare-fun b!1188780 () Bool)

(assert (=> b!1188780 (= e!675946 e!675942)))

(declare-fun res!790538 () Bool)

(assert (=> b!1188780 (=> (not res!790538) (not e!675942))))

(assert (=> b!1188780 (= res!790538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540783 mask!1564))))

(assert (=> b!1188780 (= lt!540783 (array!76779 (store (arr!37035 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37572 _keys!1208)))))

(declare-fun b!1188781 () Bool)

(declare-fun e!675949 () Bool)

(assert (=> b!1188781 (= e!675949 true)))

(declare-fun zeroValue!944 () V!45133)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!540786 () array!76780)

(declare-fun minValue!944 () V!45133)

(declare-datatypes ((tuple2!19468 0))(
  ( (tuple2!19469 (_1!9744 (_ BitVec 64)) (_2!9744 V!45133)) )
))
(declare-datatypes ((List!26229 0))(
  ( (Nil!26226) (Cons!26225 (h!27434 tuple2!19468) (t!38703 List!26229)) )
))
(declare-datatypes ((ListLongMap!17449 0))(
  ( (ListLongMap!17450 (toList!8740 List!26229)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5154 (array!76778 array!76780 (_ BitVec 32) (_ BitVec 32) V!45133 V!45133 (_ BitVec 32) Int) ListLongMap!17449)

(declare-fun -!1724 (ListLongMap!17449 (_ BitVec 64)) ListLongMap!17449)

(assert (=> b!1188781 (= (getCurrentListMapNoExtraKeys!5154 lt!540783 lt!540786 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1724 (getCurrentListMapNoExtraKeys!5154 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39372 0))(
  ( (Unit!39373) )
))
(declare-fun lt!540782 () Unit!39372)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!930 (array!76778 array!76780 (_ BitVec 32) (_ BitVec 32) V!45133 V!45133 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39372)

(assert (=> b!1188781 (= lt!540782 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!930 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1188782 () Bool)

(declare-fun res!790537 () Bool)

(assert (=> b!1188782 (=> (not res!790537) (not e!675946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188782 (= res!790537 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!46835 () Bool)

(assert (=> mapIsEmpty!46835 mapRes!46835))

(declare-fun b!1188783 () Bool)

(declare-fun e!675943 () Bool)

(assert (=> b!1188783 (= e!675943 e!675949)))

(declare-fun res!790529 () Bool)

(assert (=> b!1188783 (=> res!790529 e!675949)))

(assert (=> b!1188783 (= res!790529 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!540781 () ListLongMap!17449)

(assert (=> b!1188783 (= lt!540781 (getCurrentListMapNoExtraKeys!5154 lt!540783 lt!540786 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3108 (Int (_ BitVec 64)) V!45133)

(assert (=> b!1188783 (= lt!540786 (array!76781 (store (arr!37036 _values!996) i!673 (ValueCellFull!14293 (dynLambda!3108 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37573 _values!996)))))

(declare-fun lt!540785 () ListLongMap!17449)

(assert (=> b!1188783 (= lt!540785 (getCurrentListMapNoExtraKeys!5154 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1188784 () Bool)

(declare-fun res!790535 () Bool)

(assert (=> b!1188784 (=> (not res!790535) (not e!675946))))

(assert (=> b!1188784 (= res!790535 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37572 _keys!1208))))))

(declare-fun b!1188785 () Bool)

(assert (=> b!1188785 (= e!675944 (and e!675947 mapRes!46835))))

(declare-fun condMapEmpty!46835 () Bool)

(declare-fun mapDefault!46835 () ValueCell!14293)

