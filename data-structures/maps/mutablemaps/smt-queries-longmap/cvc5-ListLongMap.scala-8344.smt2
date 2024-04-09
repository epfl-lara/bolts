; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101616 () Bool)

(assert start!101616)

(declare-fun b_free!26335 () Bool)

(declare-fun b_next!26335 () Bool)

(assert (=> start!101616 (= b_free!26335 (not b_next!26335))))

(declare-fun tp!92046 () Bool)

(declare-fun b_and!43905 () Bool)

(assert (=> start!101616 (= tp!92046 b_and!43905)))

(declare-fun mapIsEmpty!48451 () Bool)

(declare-fun mapRes!48451 () Bool)

(assert (=> mapIsEmpty!48451 mapRes!48451))

(declare-fun b!1221329 () Bool)

(declare-fun res!811460 () Bool)

(declare-fun e!693617 () Bool)

(assert (=> b!1221329 (=> res!811460 e!693617)))

(declare-datatypes ((List!27009 0))(
  ( (Nil!27006) (Cons!27005 (h!28214 (_ BitVec 64)) (t!40331 List!27009)) )
))
(declare-fun noDuplicate!1655 (List!27009) Bool)

(assert (=> b!1221329 (= res!811460 (not (noDuplicate!1655 Nil!27006)))))

(declare-fun b!1221330 () Bool)

(declare-fun e!693614 () Bool)

(declare-fun e!693612 () Bool)

(assert (=> b!1221330 (= e!693614 e!693612)))

(declare-fun res!811452 () Bool)

(assert (=> b!1221330 (=> res!811452 e!693612)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1221330 (= res!811452 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46513 0))(
  ( (V!46514 (val!15576 Int)) )
))
(declare-fun zeroValue!944 () V!46513)

(declare-datatypes ((array!78834 0))(
  ( (array!78835 (arr!38042 (Array (_ BitVec 32) (_ BitVec 64))) (size!38579 (_ BitVec 32))) )
))
(declare-fun lt!555510 () array!78834)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14810 0))(
  ( (ValueCellFull!14810 (v!18236 V!46513)) (EmptyCell!14810) )
))
(declare-datatypes ((array!78836 0))(
  ( (array!78837 (arr!38043 (Array (_ BitVec 32) ValueCell!14810)) (size!38580 (_ BitVec 32))) )
))
(declare-fun lt!555509 () array!78836)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20194 0))(
  ( (tuple2!20195 (_1!10107 (_ BitVec 64)) (_2!10107 V!46513)) )
))
(declare-datatypes ((List!27010 0))(
  ( (Nil!27007) (Cons!27006 (h!28215 tuple2!20194) (t!40332 List!27010)) )
))
(declare-datatypes ((ListLongMap!18175 0))(
  ( (ListLongMap!18176 (toList!9103 List!27010)) )
))
(declare-fun lt!555505 () ListLongMap!18175)

(declare-fun minValue!944 () V!46513)

(declare-fun getCurrentListMapNoExtraKeys!5501 (array!78834 array!78836 (_ BitVec 32) (_ BitVec 32) V!46513 V!46513 (_ BitVec 32) Int) ListLongMap!18175)

(assert (=> b!1221330 (= lt!555505 (getCurrentListMapNoExtraKeys!5501 lt!555510 lt!555509 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78836)

(declare-fun lt!555504 () V!46513)

(assert (=> b!1221330 (= lt!555509 (array!78837 (store (arr!38043 _values!996) i!673 (ValueCellFull!14810 lt!555504)) (size!38580 _values!996)))))

(declare-fun dynLambda!3402 (Int (_ BitVec 64)) V!46513)

(assert (=> b!1221330 (= lt!555504 (dynLambda!3402 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78834)

(declare-fun lt!555515 () ListLongMap!18175)

(assert (=> b!1221330 (= lt!555515 (getCurrentListMapNoExtraKeys!5501 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1221331 () Bool)

(declare-fun e!693609 () Bool)

(declare-fun e!693611 () Bool)

(assert (=> b!1221331 (= e!693609 e!693611)))

(declare-fun res!811451 () Bool)

(assert (=> b!1221331 (=> (not res!811451) (not e!693611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78834 (_ BitVec 32)) Bool)

(assert (=> b!1221331 (= res!811451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555510 mask!1564))))

(assert (=> b!1221331 (= lt!555510 (array!78835 (store (arr!38042 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38579 _keys!1208)))))

(declare-fun b!1221332 () Bool)

(declare-fun res!811469 () Bool)

(assert (=> b!1221332 (=> (not res!811469) (not e!693611))))

(declare-fun arrayNoDuplicates!0 (array!78834 (_ BitVec 32) List!27009) Bool)

(assert (=> b!1221332 (= res!811469 (arrayNoDuplicates!0 lt!555510 #b00000000000000000000000000000000 Nil!27006))))

(declare-fun b!1221333 () Bool)

(declare-fun e!693621 () Bool)

(declare-fun tp_is_empty!31039 () Bool)

(assert (=> b!1221333 (= e!693621 tp_is_empty!31039)))

(declare-fun b!1221334 () Bool)

(declare-fun e!693615 () Bool)

(declare-fun e!693608 () Bool)

(assert (=> b!1221334 (= e!693615 e!693608)))

(declare-fun res!811465 () Bool)

(assert (=> b!1221334 (=> res!811465 e!693608)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1221334 (= res!811465 (not (= (select (arr!38042 _keys!1208) from!1455) k!934)))))

(declare-fun b!1221335 () Bool)

(declare-fun e!693610 () Bool)

(declare-fun contains!7041 (List!27009 (_ BitVec 64)) Bool)

(assert (=> b!1221335 (= e!693610 (not (contains!7041 Nil!27006 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1221336 () Bool)

(declare-fun res!811466 () Bool)

(assert (=> b!1221336 (=> (not res!811466) (not e!693609))))

(assert (=> b!1221336 (= res!811466 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38579 _keys!1208))))))

(declare-fun b!1221337 () Bool)

(declare-fun e!693620 () Bool)

(assert (=> b!1221337 (= e!693612 e!693620)))

(declare-fun res!811463 () Bool)

(assert (=> b!1221337 (=> res!811463 e!693620)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1221337 (= res!811463 (not (validKeyInArray!0 (select (arr!38042 _keys!1208) from!1455))))))

(declare-fun lt!555513 () ListLongMap!18175)

(declare-fun lt!555508 () ListLongMap!18175)

(assert (=> b!1221337 (= lt!555513 lt!555508)))

(declare-fun lt!555514 () ListLongMap!18175)

(declare-fun -!1947 (ListLongMap!18175 (_ BitVec 64)) ListLongMap!18175)

(assert (=> b!1221337 (= lt!555508 (-!1947 lt!555514 k!934))))

(assert (=> b!1221337 (= lt!555513 (getCurrentListMapNoExtraKeys!5501 lt!555510 lt!555509 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1221337 (= lt!555514 (getCurrentListMapNoExtraKeys!5501 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40374 0))(
  ( (Unit!40375) )
))
(declare-fun lt!555506 () Unit!40374)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1149 (array!78834 array!78836 (_ BitVec 32) (_ BitVec 32) V!46513 V!46513 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40374)

(assert (=> b!1221337 (= lt!555506 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1149 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!48451 () Bool)

(declare-fun tp!92045 () Bool)

(declare-fun e!693613 () Bool)

(assert (=> mapNonEmpty!48451 (= mapRes!48451 (and tp!92045 e!693613))))

(declare-fun mapKey!48451 () (_ BitVec 32))

(declare-fun mapValue!48451 () ValueCell!14810)

(declare-fun mapRest!48451 () (Array (_ BitVec 32) ValueCell!14810))

(assert (=> mapNonEmpty!48451 (= (arr!38043 _values!996) (store mapRest!48451 mapKey!48451 mapValue!48451))))

(declare-fun b!1221338 () Bool)

(declare-fun res!811468 () Bool)

(assert (=> b!1221338 (=> (not res!811468) (not e!693609))))

(assert (=> b!1221338 (= res!811468 (= (select (arr!38042 _keys!1208) i!673) k!934))))

(declare-fun b!1221339 () Bool)

(declare-fun res!811456 () Bool)

(assert (=> b!1221339 (=> (not res!811456) (not e!693609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1221339 (= res!811456 (validMask!0 mask!1564))))

(declare-fun b!1221340 () Bool)

(declare-fun e!693616 () Bool)

(assert (=> b!1221340 (= e!693616 e!693617)))

(declare-fun res!811458 () Bool)

(assert (=> b!1221340 (=> res!811458 e!693617)))

(assert (=> b!1221340 (= res!811458 (or (bvsge (size!38579 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38579 _keys!1208)) (bvsge from!1455 (size!38579 _keys!1208))))))

(assert (=> b!1221340 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27006)))

(declare-fun lt!555507 () Unit!40374)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78834 (_ BitVec 32) (_ BitVec 32)) Unit!40374)

(assert (=> b!1221340 (= lt!555507 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun arrayContainsKey!0 (array!78834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1221340 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555512 () Unit!40374)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78834 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40374)

(assert (=> b!1221340 (= lt!555512 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1221341 () Bool)

(declare-fun res!811462 () Bool)

(assert (=> b!1221341 (=> (not res!811462) (not e!693609))))

(assert (=> b!1221341 (= res!811462 (and (= (size!38580 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38579 _keys!1208) (size!38580 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1221342 () Bool)

(assert (=> b!1221342 (= e!693611 (not e!693614))))

(declare-fun res!811454 () Bool)

(assert (=> b!1221342 (=> res!811454 e!693614)))

(assert (=> b!1221342 (= res!811454 (bvsgt from!1455 i!673))))

(assert (=> b!1221342 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!555511 () Unit!40374)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78834 (_ BitVec 64) (_ BitVec 32)) Unit!40374)

(assert (=> b!1221342 (= lt!555511 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1221343 () Bool)

(assert (=> b!1221343 (= e!693613 tp_is_empty!31039)))

(declare-fun b!1221344 () Bool)

(assert (=> b!1221344 (= e!693608 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1221345 () Bool)

(assert (=> b!1221345 (= e!693620 e!693616)))

(declare-fun res!811459 () Bool)

(assert (=> b!1221345 (=> res!811459 e!693616)))

(assert (=> b!1221345 (= res!811459 (not (= (select (arr!38042 _keys!1208) from!1455) k!934)))))

(assert (=> b!1221345 e!693615))

(declare-fun res!811464 () Bool)

(assert (=> b!1221345 (=> (not res!811464) (not e!693615))))

(declare-fun +!4074 (ListLongMap!18175 tuple2!20194) ListLongMap!18175)

(declare-fun get!19456 (ValueCell!14810 V!46513) V!46513)

(assert (=> b!1221345 (= res!811464 (= lt!555505 (+!4074 lt!555508 (tuple2!20195 (select (arr!38042 _keys!1208) from!1455) (get!19456 (select (arr!38043 _values!996) from!1455) lt!555504)))))))

(declare-fun b!1221346 () Bool)

(declare-fun e!693619 () Bool)

(assert (=> b!1221346 (= e!693619 (and e!693621 mapRes!48451))))

(declare-fun condMapEmpty!48451 () Bool)

(declare-fun mapDefault!48451 () ValueCell!14810)

