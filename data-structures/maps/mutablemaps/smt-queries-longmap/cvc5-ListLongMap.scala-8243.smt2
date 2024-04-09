; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100442 () Bool)

(assert start!100442)

(declare-fun b_free!25729 () Bool)

(declare-fun b_next!25729 () Bool)

(assert (=> start!100442 (= b_free!25729 (not b_next!25729))))

(declare-fun tp!90177 () Bool)

(declare-fun b_and!42359 () Bool)

(assert (=> start!100442 (= tp!90177 b_and!42359)))

(declare-fun b!1198376 () Bool)

(declare-fun res!797651 () Bool)

(declare-fun e!680775 () Bool)

(assert (=> b!1198376 (=> (not res!797651) (not e!680775))))

(declare-datatypes ((array!77628 0))(
  ( (array!77629 (arr!37455 (Array (_ BitVec 32) (_ BitVec 64))) (size!37992 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77628)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45705 0))(
  ( (V!45706 (val!15273 Int)) )
))
(declare-datatypes ((ValueCell!14507 0))(
  ( (ValueCellFull!14507 (v!17912 V!45705)) (EmptyCell!14507) )
))
(declare-datatypes ((array!77630 0))(
  ( (array!77631 (arr!37456 (Array (_ BitVec 32) ValueCell!14507)) (size!37993 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77630)

(assert (=> b!1198376 (= res!797651 (and (= (size!37993 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37992 _keys!1208) (size!37993 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47492 () Bool)

(declare-fun mapRes!47492 () Bool)

(declare-fun tp!90178 () Bool)

(declare-fun e!680770 () Bool)

(assert (=> mapNonEmpty!47492 (= mapRes!47492 (and tp!90178 e!680770))))

(declare-fun mapKey!47492 () (_ BitVec 32))

(declare-fun mapRest!47492 () (Array (_ BitVec 32) ValueCell!14507))

(declare-fun mapValue!47492 () ValueCell!14507)

(assert (=> mapNonEmpty!47492 (= (arr!37456 _values!996) (store mapRest!47492 mapKey!47492 mapValue!47492))))

(declare-fun b!1198377 () Bool)

(declare-fun e!680772 () Bool)

(declare-fun e!680774 () Bool)

(assert (=> b!1198377 (= e!680772 (not e!680774))))

(declare-fun res!797657 () Bool)

(assert (=> b!1198377 (=> res!797657 e!680774)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198377 (= res!797657 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198377 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39666 0))(
  ( (Unit!39667) )
))
(declare-fun lt!543443 () Unit!39666)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77628 (_ BitVec 64) (_ BitVec 32)) Unit!39666)

(assert (=> b!1198377 (= lt!543443 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!47492 () Bool)

(assert (=> mapIsEmpty!47492 mapRes!47492))

(declare-fun b!1198378 () Bool)

(declare-fun res!797659 () Bool)

(assert (=> b!1198378 (=> (not res!797659) (not e!680775))))

(assert (=> b!1198378 (= res!797659 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37992 _keys!1208))))))

(declare-fun b!1198380 () Bool)

(assert (=> b!1198380 (= e!680774 (or (not (= from!1455 i!673)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!37992 _keys!1208)))))))

(declare-fun zeroValue!944 () V!45705)

(declare-fun lt!543444 () array!77628)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45705)

(declare-datatypes ((tuple2!19688 0))(
  ( (tuple2!19689 (_1!9854 (_ BitVec 64)) (_2!9854 V!45705)) )
))
(declare-datatypes ((List!26515 0))(
  ( (Nil!26512) (Cons!26511 (h!27720 tuple2!19688) (t!39231 List!26515)) )
))
(declare-datatypes ((ListLongMap!17669 0))(
  ( (ListLongMap!17670 (toList!8850 List!26515)) )
))
(declare-fun lt!543442 () ListLongMap!17669)

(declare-fun getCurrentListMapNoExtraKeys!5263 (array!77628 array!77630 (_ BitVec 32) (_ BitVec 32) V!45705 V!45705 (_ BitVec 32) Int) ListLongMap!17669)

(declare-fun dynLambda!3194 (Int (_ BitVec 64)) V!45705)

(assert (=> b!1198380 (= lt!543442 (getCurrentListMapNoExtraKeys!5263 lt!543444 (array!77631 (store (arr!37456 _values!996) i!673 (ValueCellFull!14507 (dynLambda!3194 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37993 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543445 () ListLongMap!17669)

(assert (=> b!1198380 (= lt!543445 (getCurrentListMapNoExtraKeys!5263 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198381 () Bool)

(assert (=> b!1198381 (= e!680775 e!680772)))

(declare-fun res!797658 () Bool)

(assert (=> b!1198381 (=> (not res!797658) (not e!680772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77628 (_ BitVec 32)) Bool)

(assert (=> b!1198381 (= res!797658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543444 mask!1564))))

(assert (=> b!1198381 (= lt!543444 (array!77629 (store (arr!37455 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37992 _keys!1208)))))

(declare-fun b!1198382 () Bool)

(declare-fun res!797661 () Bool)

(assert (=> b!1198382 (=> (not res!797661) (not e!680775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198382 (= res!797661 (validMask!0 mask!1564))))

(declare-fun b!1198383 () Bool)

(declare-fun e!680771 () Bool)

(declare-fun tp_is_empty!30433 () Bool)

(assert (=> b!1198383 (= e!680771 tp_is_empty!30433)))

(declare-fun b!1198384 () Bool)

(declare-fun res!797654 () Bool)

(assert (=> b!1198384 (=> (not res!797654) (not e!680775))))

(declare-datatypes ((List!26516 0))(
  ( (Nil!26513) (Cons!26512 (h!27721 (_ BitVec 64)) (t!39232 List!26516)) )
))
(declare-fun arrayNoDuplicates!0 (array!77628 (_ BitVec 32) List!26516) Bool)

(assert (=> b!1198384 (= res!797654 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26513))))

(declare-fun b!1198385 () Bool)

(declare-fun e!680776 () Bool)

(assert (=> b!1198385 (= e!680776 (and e!680771 mapRes!47492))))

(declare-fun condMapEmpty!47492 () Bool)

(declare-fun mapDefault!47492 () ValueCell!14507)

