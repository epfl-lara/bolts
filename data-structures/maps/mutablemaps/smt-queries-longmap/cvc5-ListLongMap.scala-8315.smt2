; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101274 () Bool)

(assert start!101274)

(declare-fun b_free!26161 () Bool)

(declare-fun b_next!26161 () Bool)

(assert (=> start!101274 (= b_free!26161 (not b_next!26161))))

(declare-fun tp!91506 () Bool)

(declare-fun b_and!43449 () Bool)

(assert (=> start!101274 (= tp!91506 b_and!43449)))

(declare-fun b!1215740 () Bool)

(declare-fun e!690319 () Bool)

(assert (=> b!1215740 (= e!690319 true)))

(declare-datatypes ((V!46281 0))(
  ( (V!46282 (val!15489 Int)) )
))
(declare-fun zeroValue!944 () V!46281)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14723 0))(
  ( (ValueCellFull!14723 (v!18143 V!46281)) (EmptyCell!14723) )
))
(declare-datatypes ((array!78480 0))(
  ( (array!78481 (arr!37871 (Array (_ BitVec 32) ValueCell!14723)) (size!38408 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78480)

(declare-fun minValue!944 () V!46281)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!20052 0))(
  ( (tuple2!20053 (_1!10036 (_ BitVec 64)) (_2!10036 V!46281)) )
))
(declare-datatypes ((List!26871 0))(
  ( (Nil!26868) (Cons!26867 (h!28076 tuple2!20052) (t!40019 List!26871)) )
))
(declare-datatypes ((ListLongMap!18033 0))(
  ( (ListLongMap!18034 (toList!9032 List!26871)) )
))
(declare-fun lt!552657 () ListLongMap!18033)

(declare-datatypes ((array!78482 0))(
  ( (array!78483 (arr!37872 (Array (_ BitVec 32) (_ BitVec 64))) (size!38409 (_ BitVec 32))) )
))
(declare-fun lt!552659 () array!78482)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5437 (array!78482 array!78480 (_ BitVec 32) (_ BitVec 32) V!46281 V!46281 (_ BitVec 32) Int) ListLongMap!18033)

(declare-fun dynLambda!3346 (Int (_ BitVec 64)) V!46281)

(assert (=> b!1215740 (= lt!552657 (getCurrentListMapNoExtraKeys!5437 lt!552659 (array!78481 (store (arr!37871 _values!996) i!673 (ValueCellFull!14723 (dynLambda!3346 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38408 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!78482)

(declare-fun lt!552658 () ListLongMap!18033)

(assert (=> b!1215740 (= lt!552658 (getCurrentListMapNoExtraKeys!5437 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1215741 () Bool)

(declare-fun res!807328 () Bool)

(declare-fun e!690323 () Bool)

(assert (=> b!1215741 (=> (not res!807328) (not e!690323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78482 (_ BitVec 32)) Bool)

(assert (=> b!1215741 (= res!807328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1215742 () Bool)

(declare-fun res!807337 () Bool)

(assert (=> b!1215742 (=> (not res!807337) (not e!690323))))

(declare-datatypes ((List!26872 0))(
  ( (Nil!26869) (Cons!26868 (h!28077 (_ BitVec 64)) (t!40020 List!26872)) )
))
(declare-fun arrayNoDuplicates!0 (array!78482 (_ BitVec 32) List!26872) Bool)

(assert (=> b!1215742 (= res!807337 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26869))))

(declare-fun b!1215743 () Bool)

(declare-fun res!807333 () Bool)

(assert (=> b!1215743 (=> (not res!807333) (not e!690323))))

(assert (=> b!1215743 (= res!807333 (and (= (size!38408 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38409 _keys!1208) (size!38408 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215744 () Bool)

(declare-fun res!807329 () Bool)

(assert (=> b!1215744 (=> (not res!807329) (not e!690323))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1215744 (= res!807329 (= (select (arr!37872 _keys!1208) i!673) k!934))))

(declare-fun b!1215745 () Bool)

(declare-fun res!807327 () Bool)

(assert (=> b!1215745 (=> (not res!807327) (not e!690323))))

(assert (=> b!1215745 (= res!807327 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38409 _keys!1208))))))

(declare-fun b!1215746 () Bool)

(declare-fun e!690322 () Bool)

(declare-fun tp_is_empty!30865 () Bool)

(assert (=> b!1215746 (= e!690322 tp_is_empty!30865)))

(declare-fun b!1215747 () Bool)

(declare-fun e!690320 () Bool)

(assert (=> b!1215747 (= e!690323 e!690320)))

(declare-fun res!807334 () Bool)

(assert (=> b!1215747 (=> (not res!807334) (not e!690320))))

(assert (=> b!1215747 (= res!807334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552659 mask!1564))))

(assert (=> b!1215747 (= lt!552659 (array!78483 (store (arr!37872 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38409 _keys!1208)))))

(declare-fun b!1215748 () Bool)

(declare-fun res!807332 () Bool)

(assert (=> b!1215748 (=> (not res!807332) (not e!690320))))

(assert (=> b!1215748 (= res!807332 (arrayNoDuplicates!0 lt!552659 #b00000000000000000000000000000000 Nil!26869))))

(declare-fun res!807336 () Bool)

(assert (=> start!101274 (=> (not res!807336) (not e!690323))))

(assert (=> start!101274 (= res!807336 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38409 _keys!1208))))))

(assert (=> start!101274 e!690323))

(assert (=> start!101274 tp_is_empty!30865))

(declare-fun array_inv!28738 (array!78482) Bool)

(assert (=> start!101274 (array_inv!28738 _keys!1208)))

(assert (=> start!101274 true))

(assert (=> start!101274 tp!91506))

(declare-fun e!690324 () Bool)

(declare-fun array_inv!28739 (array!78480) Bool)

(assert (=> start!101274 (and (array_inv!28739 _values!996) e!690324)))

(declare-fun b!1215749 () Bool)

(declare-fun res!807331 () Bool)

(assert (=> b!1215749 (=> (not res!807331) (not e!690323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215749 (= res!807331 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!48172 () Bool)

(declare-fun mapRes!48172 () Bool)

(declare-fun tp!91505 () Bool)

(assert (=> mapNonEmpty!48172 (= mapRes!48172 (and tp!91505 e!690322))))

(declare-fun mapKey!48172 () (_ BitVec 32))

(declare-fun mapRest!48172 () (Array (_ BitVec 32) ValueCell!14723))

(declare-fun mapValue!48172 () ValueCell!14723)

(assert (=> mapNonEmpty!48172 (= (arr!37871 _values!996) (store mapRest!48172 mapKey!48172 mapValue!48172))))

(declare-fun b!1215750 () Bool)

(declare-fun e!690318 () Bool)

(assert (=> b!1215750 (= e!690324 (and e!690318 mapRes!48172))))

(declare-fun condMapEmpty!48172 () Bool)

(declare-fun mapDefault!48172 () ValueCell!14723)

