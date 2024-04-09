; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100496 () Bool)

(assert start!100496)

(declare-fun b_free!25783 () Bool)

(declare-fun b_next!25783 () Bool)

(assert (=> start!100496 (= b_free!25783 (not b_next!25783))))

(declare-fun tp!90339 () Bool)

(declare-fun b_and!42467 () Bool)

(assert (=> start!100496 (= tp!90339 b_and!42467)))

(declare-fun b!1199564 () Bool)

(declare-fun e!681343 () Bool)

(declare-fun e!681338 () Bool)

(assert (=> b!1199564 (= e!681343 e!681338)))

(declare-fun res!798545 () Bool)

(assert (=> b!1199564 (=> (not res!798545) (not e!681338))))

(declare-datatypes ((array!77730 0))(
  ( (array!77731 (arr!37506 (Array (_ BitVec 32) (_ BitVec 64))) (size!38043 (_ BitVec 32))) )
))
(declare-fun lt!543769 () array!77730)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77730 (_ BitVec 32)) Bool)

(assert (=> b!1199564 (= res!798545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543769 mask!1564))))

(declare-fun _keys!1208 () array!77730)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1199564 (= lt!543769 (array!77731 (store (arr!37506 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38043 _keys!1208)))))

(declare-fun b!1199565 () Bool)

(declare-fun e!681339 () Bool)

(declare-fun tp_is_empty!30487 () Bool)

(assert (=> b!1199565 (= e!681339 tp_is_empty!30487)))

(declare-fun b!1199566 () Bool)

(declare-fun res!798548 () Bool)

(assert (=> b!1199566 (=> (not res!798548) (not e!681343))))

(declare-datatypes ((List!26556 0))(
  ( (Nil!26553) (Cons!26552 (h!27761 (_ BitVec 64)) (t!39326 List!26556)) )
))
(declare-fun arrayNoDuplicates!0 (array!77730 (_ BitVec 32) List!26556) Bool)

(assert (=> b!1199566 (= res!798548 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26553))))

(declare-fun b!1199567 () Bool)

(declare-fun e!681337 () Bool)

(assert (=> b!1199567 (= e!681337 tp_is_empty!30487)))

(declare-fun b!1199568 () Bool)

(declare-fun res!798552 () Bool)

(assert (=> b!1199568 (=> (not res!798552) (not e!681343))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199568 (= res!798552 (validKeyInArray!0 k!934))))

(declare-fun b!1199569 () Bool)

(declare-fun res!798549 () Bool)

(assert (=> b!1199569 (=> (not res!798549) (not e!681343))))

(assert (=> b!1199569 (= res!798549 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38043 _keys!1208))))))

(declare-fun b!1199570 () Bool)

(declare-fun res!798544 () Bool)

(assert (=> b!1199570 (=> (not res!798544) (not e!681343))))

(assert (=> b!1199570 (= res!798544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1199571 () Bool)

(declare-fun res!798550 () Bool)

(assert (=> b!1199571 (=> (not res!798550) (not e!681343))))

(assert (=> b!1199571 (= res!798550 (= (select (arr!37506 _keys!1208) i!673) k!934))))

(declare-fun res!798547 () Bool)

(assert (=> start!100496 (=> (not res!798547) (not e!681343))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100496 (= res!798547 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38043 _keys!1208))))))

(assert (=> start!100496 e!681343))

(assert (=> start!100496 tp_is_empty!30487))

(declare-fun array_inv!28486 (array!77730) Bool)

(assert (=> start!100496 (array_inv!28486 _keys!1208)))

(assert (=> start!100496 true))

(assert (=> start!100496 tp!90339))

(declare-datatypes ((V!45777 0))(
  ( (V!45778 (val!15300 Int)) )
))
(declare-datatypes ((ValueCell!14534 0))(
  ( (ValueCellFull!14534 (v!17939 V!45777)) (EmptyCell!14534) )
))
(declare-datatypes ((array!77732 0))(
  ( (array!77733 (arr!37507 (Array (_ BitVec 32) ValueCell!14534)) (size!38044 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77732)

(declare-fun e!681341 () Bool)

(declare-fun array_inv!28487 (array!77732) Bool)

(assert (=> start!100496 (and (array_inv!28487 _values!996) e!681341)))

(declare-fun b!1199572 () Bool)

(declare-fun res!798542 () Bool)

(assert (=> b!1199572 (=> (not res!798542) (not e!681343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199572 (= res!798542 (validMask!0 mask!1564))))

(declare-fun b!1199573 () Bool)

(declare-fun res!798546 () Bool)

(assert (=> b!1199573 (=> (not res!798546) (not e!681338))))

(assert (=> b!1199573 (= res!798546 (arrayNoDuplicates!0 lt!543769 #b00000000000000000000000000000000 Nil!26553))))

(declare-fun b!1199574 () Bool)

(declare-fun e!681342 () Bool)

(assert (=> b!1199574 (= e!681342 true)))

(declare-fun zeroValue!944 () V!45777)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19724 0))(
  ( (tuple2!19725 (_1!9872 (_ BitVec 64)) (_2!9872 V!45777)) )
))
(declare-datatypes ((List!26557 0))(
  ( (Nil!26554) (Cons!26553 (h!27762 tuple2!19724) (t!39327 List!26557)) )
))
(declare-datatypes ((ListLongMap!17705 0))(
  ( (ListLongMap!17706 (toList!8868 List!26557)) )
))
(declare-fun lt!543768 () ListLongMap!17705)

(declare-fun minValue!944 () V!45777)

(declare-fun getCurrentListMapNoExtraKeys!5281 (array!77730 array!77732 (_ BitVec 32) (_ BitVec 32) V!45777 V!45777 (_ BitVec 32) Int) ListLongMap!17705)

(declare-fun dynLambda!3212 (Int (_ BitVec 64)) V!45777)

(assert (=> b!1199574 (= lt!543768 (getCurrentListMapNoExtraKeys!5281 lt!543769 (array!77733 (store (arr!37507 _values!996) i!673 (ValueCellFull!14534 (dynLambda!3212 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38044 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543766 () ListLongMap!17705)

(assert (=> b!1199574 (= lt!543766 (getCurrentListMapNoExtraKeys!5281 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1199575 () Bool)

(declare-fun mapRes!47573 () Bool)

(assert (=> b!1199575 (= e!681341 (and e!681337 mapRes!47573))))

(declare-fun condMapEmpty!47573 () Bool)

(declare-fun mapDefault!47573 () ValueCell!14534)

