; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101212 () Bool)

(assert start!101212)

(declare-fun b_free!26099 () Bool)

(declare-fun b_next!26099 () Bool)

(assert (=> start!101212 (= b_free!26099 (not b_next!26099))))

(declare-fun tp!91319 () Bool)

(declare-fun b_and!43325 () Bool)

(assert (=> start!101212 (= tp!91319 b_and!43325)))

(declare-fun b!1214376 () Bool)

(declare-fun res!806314 () Bool)

(declare-fun e!689673 () Bool)

(assert (=> b!1214376 (=> (not res!806314) (not e!689673))))

(declare-datatypes ((array!78366 0))(
  ( (array!78367 (arr!37814 (Array (_ BitVec 32) (_ BitVec 64))) (size!38351 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78366)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78366 (_ BitVec 32)) Bool)

(assert (=> b!1214376 (= res!806314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1214377 () Bool)

(declare-fun res!806313 () Bool)

(assert (=> b!1214377 (=> (not res!806313) (not e!689673))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1214377 (= res!806313 (= (select (arr!37814 _keys!1208) i!673) k!934))))

(declare-fun b!1214378 () Bool)

(declare-fun e!689670 () Bool)

(declare-fun tp_is_empty!30803 () Bool)

(assert (=> b!1214378 (= e!689670 tp_is_empty!30803)))

(declare-fun b!1214379 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!689669 () Bool)

(assert (=> b!1214379 (= e!689669 (or (= from!1455 i!673) (bvsge from!1455 i!673) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38351 _keys!1208)))))))

(declare-datatypes ((V!46197 0))(
  ( (V!46198 (val!15458 Int)) )
))
(declare-fun zeroValue!944 () V!46197)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!20010 0))(
  ( (tuple2!20011 (_1!10015 (_ BitVec 64)) (_2!10015 V!46197)) )
))
(declare-datatypes ((List!26828 0))(
  ( (Nil!26825) (Cons!26824 (h!28033 tuple2!20010) (t!39914 List!26828)) )
))
(declare-datatypes ((ListLongMap!17991 0))(
  ( (ListLongMap!17992 (toList!9011 List!26828)) )
))
(declare-fun lt!552287 () ListLongMap!17991)

(declare-datatypes ((ValueCell!14692 0))(
  ( (ValueCellFull!14692 (v!18112 V!46197)) (EmptyCell!14692) )
))
(declare-datatypes ((array!78368 0))(
  ( (array!78369 (arr!37815 (Array (_ BitVec 32) ValueCell!14692)) (size!38352 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78368)

(declare-fun minValue!944 () V!46197)

(declare-fun lt!552284 () array!78366)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5416 (array!78366 array!78368 (_ BitVec 32) (_ BitVec 32) V!46197 V!46197 (_ BitVec 32) Int) ListLongMap!17991)

(declare-fun dynLambda!3325 (Int (_ BitVec 64)) V!46197)

(assert (=> b!1214379 (= lt!552287 (getCurrentListMapNoExtraKeys!5416 lt!552284 (array!78369 (store (arr!37815 _values!996) i!673 (ValueCellFull!14692 (dynLambda!3325 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38352 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552286 () ListLongMap!17991)

(assert (=> b!1214379 (= lt!552286 (getCurrentListMapNoExtraKeys!5416 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!48079 () Bool)

(declare-fun mapRes!48079 () Bool)

(assert (=> mapIsEmpty!48079 mapRes!48079))

(declare-fun b!1214380 () Bool)

(declare-fun res!806310 () Bool)

(assert (=> b!1214380 (=> (not res!806310) (not e!689673))))

(declare-datatypes ((List!26829 0))(
  ( (Nil!26826) (Cons!26825 (h!28034 (_ BitVec 64)) (t!39915 List!26829)) )
))
(declare-fun arrayNoDuplicates!0 (array!78366 (_ BitVec 32) List!26829) Bool)

(assert (=> b!1214380 (= res!806310 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26826))))

(declare-fun mapNonEmpty!48079 () Bool)

(declare-fun tp!91320 () Bool)

(declare-fun e!689668 () Bool)

(assert (=> mapNonEmpty!48079 (= mapRes!48079 (and tp!91320 e!689668))))

(declare-fun mapRest!48079 () (Array (_ BitVec 32) ValueCell!14692))

(declare-fun mapKey!48079 () (_ BitVec 32))

(declare-fun mapValue!48079 () ValueCell!14692)

(assert (=> mapNonEmpty!48079 (= (arr!37815 _values!996) (store mapRest!48079 mapKey!48079 mapValue!48079))))

(declare-fun b!1214381 () Bool)

(declare-fun res!806306 () Bool)

(assert (=> b!1214381 (=> (not res!806306) (not e!689673))))

(assert (=> b!1214381 (= res!806306 (and (= (size!38352 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38351 _keys!1208) (size!38352 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1214382 () Bool)

(assert (=> b!1214382 (= e!689668 tp_is_empty!30803)))

(declare-fun b!1214383 () Bool)

(declare-fun e!689672 () Bool)

(assert (=> b!1214383 (= e!689673 e!689672)))

(declare-fun res!806312 () Bool)

(assert (=> b!1214383 (=> (not res!806312) (not e!689672))))

(assert (=> b!1214383 (= res!806312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552284 mask!1564))))

(assert (=> b!1214383 (= lt!552284 (array!78367 (store (arr!37814 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38351 _keys!1208)))))

(declare-fun res!806305 () Bool)

(assert (=> start!101212 (=> (not res!806305) (not e!689673))))

(assert (=> start!101212 (= res!806305 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38351 _keys!1208))))))

(assert (=> start!101212 e!689673))

(assert (=> start!101212 tp_is_empty!30803))

(declare-fun array_inv!28702 (array!78366) Bool)

(assert (=> start!101212 (array_inv!28702 _keys!1208)))

(assert (=> start!101212 true))

(assert (=> start!101212 tp!91319))

(declare-fun e!689667 () Bool)

(declare-fun array_inv!28703 (array!78368) Bool)

(assert (=> start!101212 (and (array_inv!28703 _values!996) e!689667)))

(declare-fun b!1214384 () Bool)

(declare-fun res!806309 () Bool)

(assert (=> b!1214384 (=> (not res!806309) (not e!689673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214384 (= res!806309 (validMask!0 mask!1564))))

(declare-fun b!1214385 () Bool)

(assert (=> b!1214385 (= e!689667 (and e!689670 mapRes!48079))))

(declare-fun condMapEmpty!48079 () Bool)

(declare-fun mapDefault!48079 () ValueCell!14692)

