; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100494 () Bool)

(assert start!100494)

(declare-fun b_free!25781 () Bool)

(declare-fun b_next!25781 () Bool)

(assert (=> start!100494 (= b_free!25781 (not b_next!25781))))

(declare-fun tp!90334 () Bool)

(declare-fun b_and!42463 () Bool)

(assert (=> start!100494 (= tp!90334 b_and!42463)))

(declare-fun b!1199520 () Bool)

(declare-fun res!798511 () Bool)

(declare-fun e!681321 () Bool)

(assert (=> b!1199520 (=> (not res!798511) (not e!681321))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199520 (= res!798511 (validMask!0 mask!1564))))

(declare-fun b!1199521 () Bool)

(declare-fun res!798512 () Bool)

(assert (=> b!1199521 (=> (not res!798512) (not e!681321))))

(declare-datatypes ((array!77726 0))(
  ( (array!77727 (arr!37504 (Array (_ BitVec 32) (_ BitVec 64))) (size!38041 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77726)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77726 (_ BitVec 32)) Bool)

(assert (=> b!1199521 (= res!798512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1199522 () Bool)

(declare-fun e!681317 () Bool)

(assert (=> b!1199522 (= e!681317 true)))

(declare-datatypes ((V!45773 0))(
  ( (V!45774 (val!15299 Int)) )
))
(declare-fun zeroValue!944 () V!45773)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((tuple2!19722 0))(
  ( (tuple2!19723 (_1!9871 (_ BitVec 64)) (_2!9871 V!45773)) )
))
(declare-datatypes ((List!26554 0))(
  ( (Nil!26551) (Cons!26550 (h!27759 tuple2!19722) (t!39322 List!26554)) )
))
(declare-datatypes ((ListLongMap!17703 0))(
  ( (ListLongMap!17704 (toList!8867 List!26554)) )
))
(declare-fun lt!543757 () ListLongMap!17703)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14533 0))(
  ( (ValueCellFull!14533 (v!17938 V!45773)) (EmptyCell!14533) )
))
(declare-datatypes ((array!77728 0))(
  ( (array!77729 (arr!37505 (Array (_ BitVec 32) ValueCell!14533)) (size!38042 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77728)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!543756 () array!77726)

(declare-fun minValue!944 () V!45773)

(declare-fun getCurrentListMapNoExtraKeys!5280 (array!77726 array!77728 (_ BitVec 32) (_ BitVec 32) V!45773 V!45773 (_ BitVec 32) Int) ListLongMap!17703)

(declare-fun dynLambda!3211 (Int (_ BitVec 64)) V!45773)

(assert (=> b!1199522 (= lt!543757 (getCurrentListMapNoExtraKeys!5280 lt!543756 (array!77729 (store (arr!37505 _values!996) i!673 (ValueCellFull!14533 (dynLambda!3211 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38042 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543755 () ListLongMap!17703)

(assert (=> b!1199522 (= lt!543755 (getCurrentListMapNoExtraKeys!5280 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1199523 () Bool)

(declare-fun res!798516 () Bool)

(assert (=> b!1199523 (=> (not res!798516) (not e!681321))))

(declare-datatypes ((List!26555 0))(
  ( (Nil!26552) (Cons!26551 (h!27760 (_ BitVec 64)) (t!39323 List!26555)) )
))
(declare-fun arrayNoDuplicates!0 (array!77726 (_ BitVec 32) List!26555) Bool)

(assert (=> b!1199523 (= res!798516 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26552))))

(declare-fun res!798514 () Bool)

(assert (=> start!100494 (=> (not res!798514) (not e!681321))))

(assert (=> start!100494 (= res!798514 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38041 _keys!1208))))))

(assert (=> start!100494 e!681321))

(declare-fun tp_is_empty!30485 () Bool)

(assert (=> start!100494 tp_is_empty!30485))

(declare-fun array_inv!28484 (array!77726) Bool)

(assert (=> start!100494 (array_inv!28484 _keys!1208)))

(assert (=> start!100494 true))

(assert (=> start!100494 tp!90334))

(declare-fun e!681320 () Bool)

(declare-fun array_inv!28485 (array!77728) Bool)

(assert (=> start!100494 (and (array_inv!28485 _values!996) e!681320)))

(declare-fun b!1199524 () Bool)

(declare-fun res!798515 () Bool)

(assert (=> b!1199524 (=> (not res!798515) (not e!681321))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1199524 (= res!798515 (= (select (arr!37504 _keys!1208) i!673) k!934))))

(declare-fun b!1199525 () Bool)

(declare-fun e!681318 () Bool)

(assert (=> b!1199525 (= e!681321 e!681318)))

(declare-fun res!798519 () Bool)

(assert (=> b!1199525 (=> (not res!798519) (not e!681318))))

(assert (=> b!1199525 (= res!798519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543756 mask!1564))))

(assert (=> b!1199525 (= lt!543756 (array!77727 (store (arr!37504 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38041 _keys!1208)))))

(declare-fun b!1199526 () Bool)

(declare-fun res!798509 () Bool)

(assert (=> b!1199526 (=> (not res!798509) (not e!681318))))

(assert (=> b!1199526 (= res!798509 (arrayNoDuplicates!0 lt!543756 #b00000000000000000000000000000000 Nil!26552))))

(declare-fun b!1199527 () Bool)

(declare-fun e!681316 () Bool)

(assert (=> b!1199527 (= e!681316 tp_is_empty!30485)))

(declare-fun b!1199528 () Bool)

(declare-fun res!798517 () Bool)

(assert (=> b!1199528 (=> (not res!798517) (not e!681321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199528 (= res!798517 (validKeyInArray!0 k!934))))

(declare-fun b!1199529 () Bool)

(declare-fun res!798513 () Bool)

(assert (=> b!1199529 (=> (not res!798513) (not e!681321))))

(assert (=> b!1199529 (= res!798513 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38041 _keys!1208))))))

(declare-fun b!1199530 () Bool)

(assert (=> b!1199530 (= e!681318 (not e!681317))))

(declare-fun res!798510 () Bool)

(assert (=> b!1199530 (=> res!798510 e!681317)))

(assert (=> b!1199530 (= res!798510 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199530 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39704 0))(
  ( (Unit!39705) )
))
(declare-fun lt!543754 () Unit!39704)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77726 (_ BitVec 64) (_ BitVec 32)) Unit!39704)

(assert (=> b!1199530 (= lt!543754 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!47570 () Bool)

(declare-fun mapRes!47570 () Bool)

(assert (=> mapIsEmpty!47570 mapRes!47570))

(declare-fun b!1199531 () Bool)

(declare-fun res!798518 () Bool)

(assert (=> b!1199531 (=> (not res!798518) (not e!681321))))

(assert (=> b!1199531 (= res!798518 (and (= (size!38042 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38041 _keys!1208) (size!38042 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1199532 () Bool)

(declare-fun e!681322 () Bool)

(assert (=> b!1199532 (= e!681322 tp_is_empty!30485)))

(declare-fun b!1199533 () Bool)

(assert (=> b!1199533 (= e!681320 (and e!681316 mapRes!47570))))

(declare-fun condMapEmpty!47570 () Bool)

(declare-fun mapDefault!47570 () ValueCell!14533)

