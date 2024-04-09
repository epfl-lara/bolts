; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100142 () Bool)

(assert start!100142)

(declare-fun b_free!25679 () Bool)

(declare-fun b_next!25679 () Bool)

(assert (=> start!100142 (= b_free!25679 (not b_next!25679))))

(declare-fun tp!89760 () Bool)

(declare-fun b_and!42239 () Bool)

(assert (=> start!100142 (= tp!89760 b_and!42239)))

(declare-fun b!1193693 () Bool)

(declare-fun res!794291 () Bool)

(declare-fun e!678446 () Bool)

(assert (=> b!1193693 (=> (not res!794291) (not e!678446))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193693 (= res!794291 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!47150 () Bool)

(declare-fun mapRes!47150 () Bool)

(assert (=> mapIsEmpty!47150 mapRes!47150))

(declare-fun b!1193694 () Bool)

(declare-fun e!678451 () Bool)

(declare-fun tp_is_empty!30215 () Bool)

(assert (=> b!1193694 (= e!678451 tp_is_empty!30215)))

(declare-fun b!1193695 () Bool)

(declare-fun e!678445 () Bool)

(declare-fun e!678448 () Bool)

(assert (=> b!1193695 (= e!678445 (not e!678448))))

(declare-fun res!794288 () Bool)

(assert (=> b!1193695 (=> res!794288 e!678448)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193695 (= res!794288 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!77194 0))(
  ( (array!77195 (arr!37243 (Array (_ BitVec 32) (_ BitVec 64))) (size!37780 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77194)

(declare-fun arrayContainsKey!0 (array!77194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1193695 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39542 0))(
  ( (Unit!39543) )
))
(declare-fun lt!542619 () Unit!39542)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77194 (_ BitVec 64) (_ BitVec 32)) Unit!39542)

(assert (=> b!1193695 (= lt!542619 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1193696 () Bool)

(assert (=> b!1193696 (= e!678446 e!678445)))

(declare-fun res!794286 () Bool)

(assert (=> b!1193696 (=> (not res!794286) (not e!678445))))

(declare-fun lt!542621 () array!77194)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77194 (_ BitVec 32)) Bool)

(assert (=> b!1193696 (= res!794286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542621 mask!1564))))

(assert (=> b!1193696 (= lt!542621 (array!77195 (store (arr!37243 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37780 _keys!1208)))))

(declare-fun b!1193697 () Bool)

(declare-fun res!794284 () Bool)

(assert (=> b!1193697 (=> (not res!794284) (not e!678446))))

(assert (=> b!1193697 (= res!794284 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37780 _keys!1208))))))

(declare-fun b!1193698 () Bool)

(declare-fun res!794293 () Bool)

(assert (=> b!1193698 (=> (not res!794293) (not e!678445))))

(declare-datatypes ((List!26402 0))(
  ( (Nil!26399) (Cons!26398 (h!27607 (_ BitVec 64)) (t!39080 List!26402)) )
))
(declare-fun arrayNoDuplicates!0 (array!77194 (_ BitVec 32) List!26402) Bool)

(assert (=> b!1193698 (= res!794293 (arrayNoDuplicates!0 lt!542621 #b00000000000000000000000000000000 Nil!26399))))

(declare-fun b!1193700 () Bool)

(declare-fun e!678449 () Bool)

(assert (=> b!1193700 (= e!678449 tp_is_empty!30215)))

(declare-fun b!1193701 () Bool)

(declare-fun res!794285 () Bool)

(assert (=> b!1193701 (=> (not res!794285) (not e!678446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193701 (= res!794285 (validMask!0 mask!1564))))

(declare-fun b!1193702 () Bool)

(declare-fun res!794290 () Bool)

(assert (=> b!1193702 (=> (not res!794290) (not e!678446))))

(assert (=> b!1193702 (= res!794290 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26399))))

(declare-fun b!1193703 () Bool)

(assert (=> b!1193703 (= e!678448 (or (= from!1455 i!673) (bvslt from!1455 i!673)))))

(declare-datatypes ((V!45413 0))(
  ( (V!45414 (val!15164 Int)) )
))
(declare-fun zeroValue!944 () V!45413)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19644 0))(
  ( (tuple2!19645 (_1!9832 (_ BitVec 64)) (_2!9832 V!45413)) )
))
(declare-datatypes ((List!26403 0))(
  ( (Nil!26400) (Cons!26399 (h!27608 tuple2!19644) (t!39081 List!26403)) )
))
(declare-datatypes ((ListLongMap!17625 0))(
  ( (ListLongMap!17626 (toList!8828 List!26403)) )
))
(declare-fun lt!542622 () ListLongMap!17625)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45413)

(declare-datatypes ((ValueCell!14398 0))(
  ( (ValueCellFull!14398 (v!17803 V!45413)) (EmptyCell!14398) )
))
(declare-datatypes ((array!77196 0))(
  ( (array!77197 (arr!37244 (Array (_ BitVec 32) ValueCell!14398)) (size!37781 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77196)

(declare-fun getCurrentListMapNoExtraKeys!5242 (array!77194 array!77196 (_ BitVec 32) (_ BitVec 32) V!45413 V!45413 (_ BitVec 32) Int) ListLongMap!17625)

(declare-fun dynLambda!3179 (Int (_ BitVec 64)) V!45413)

(assert (=> b!1193703 (= lt!542622 (getCurrentListMapNoExtraKeys!5242 lt!542621 (array!77197 (store (arr!37244 _values!996) i!673 (ValueCellFull!14398 (dynLambda!3179 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37781 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!542620 () ListLongMap!17625)

(assert (=> b!1193703 (= lt!542620 (getCurrentListMapNoExtraKeys!5242 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1193704 () Bool)

(declare-fun res!794287 () Bool)

(assert (=> b!1193704 (=> (not res!794287) (not e!678446))))

(assert (=> b!1193704 (= res!794287 (= (select (arr!37243 _keys!1208) i!673) k!934))))

(declare-fun b!1193705 () Bool)

(declare-fun e!678447 () Bool)

(assert (=> b!1193705 (= e!678447 (and e!678449 mapRes!47150))))

(declare-fun condMapEmpty!47150 () Bool)

(declare-fun mapDefault!47150 () ValueCell!14398)

