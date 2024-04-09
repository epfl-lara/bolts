; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101224 () Bool)

(assert start!101224)

(declare-fun b_free!26111 () Bool)

(declare-fun b_next!26111 () Bool)

(assert (=> start!101224 (= b_free!26111 (not b_next!26111))))

(declare-fun tp!91356 () Bool)

(declare-fun b_and!43349 () Bool)

(assert (=> start!101224 (= tp!91356 b_and!43349)))

(declare-fun b!1214640 () Bool)

(declare-fun e!689799 () Bool)

(declare-fun e!689797 () Bool)

(assert (=> b!1214640 (= e!689799 e!689797)))

(declare-fun res!806511 () Bool)

(assert (=> b!1214640 (=> (not res!806511) (not e!689797))))

(declare-datatypes ((array!78388 0))(
  ( (array!78389 (arr!37825 (Array (_ BitVec 32) (_ BitVec 64))) (size!38362 (_ BitVec 32))) )
))
(declare-fun lt!552359 () array!78388)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78388 (_ BitVec 32)) Bool)

(assert (=> b!1214640 (= res!806511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552359 mask!1564))))

(declare-fun _keys!1208 () array!78388)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1214640 (= lt!552359 (array!78389 (store (arr!37825 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38362 _keys!1208)))))

(declare-fun b!1214641 () Bool)

(declare-fun e!689795 () Bool)

(declare-fun tp_is_empty!30815 () Bool)

(assert (=> b!1214641 (= e!689795 tp_is_empty!30815)))

(declare-fun b!1214642 () Bool)

(declare-fun res!806506 () Bool)

(assert (=> b!1214642 (=> (not res!806506) (not e!689799))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214642 (= res!806506 (validKeyInArray!0 k!934))))

(declare-fun b!1214643 () Bool)

(declare-fun e!689798 () Bool)

(assert (=> b!1214643 (= e!689798 true)))

(declare-datatypes ((V!46213 0))(
  ( (V!46214 (val!15464 Int)) )
))
(declare-fun zeroValue!944 () V!46213)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!20018 0))(
  ( (tuple2!20019 (_1!10019 (_ BitVec 64)) (_2!10019 V!46213)) )
))
(declare-datatypes ((List!26837 0))(
  ( (Nil!26834) (Cons!26833 (h!28042 tuple2!20018) (t!39935 List!26837)) )
))
(declare-datatypes ((ListLongMap!17999 0))(
  ( (ListLongMap!18000 (toList!9015 List!26837)) )
))
(declare-fun lt!552357 () ListLongMap!17999)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14698 0))(
  ( (ValueCellFull!14698 (v!18118 V!46213)) (EmptyCell!14698) )
))
(declare-datatypes ((array!78390 0))(
  ( (array!78391 (arr!37826 (Array (_ BitVec 32) ValueCell!14698)) (size!38363 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78390)

(declare-fun minValue!944 () V!46213)

(declare-fun getCurrentListMapNoExtraKeys!5420 (array!78388 array!78390 (_ BitVec 32) (_ BitVec 32) V!46213 V!46213 (_ BitVec 32) Int) ListLongMap!17999)

(declare-fun dynLambda!3329 (Int (_ BitVec 64)) V!46213)

(assert (=> b!1214643 (= lt!552357 (getCurrentListMapNoExtraKeys!5420 lt!552359 (array!78391 (store (arr!37826 _values!996) i!673 (ValueCellFull!14698 (dynLambda!3329 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38363 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552358 () ListLongMap!17999)

(assert (=> b!1214643 (= lt!552358 (getCurrentListMapNoExtraKeys!5420 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!48097 () Bool)

(declare-fun mapRes!48097 () Bool)

(declare-fun tp!91355 () Bool)

(assert (=> mapNonEmpty!48097 (= mapRes!48097 (and tp!91355 e!689795))))

(declare-fun mapValue!48097 () ValueCell!14698)

(declare-fun mapKey!48097 () (_ BitVec 32))

(declare-fun mapRest!48097 () (Array (_ BitVec 32) ValueCell!14698))

(assert (=> mapNonEmpty!48097 (= (arr!37826 _values!996) (store mapRest!48097 mapKey!48097 mapValue!48097))))

(declare-fun b!1214644 () Bool)

(declare-fun res!806510 () Bool)

(assert (=> b!1214644 (=> (not res!806510) (not e!689799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214644 (= res!806510 (validMask!0 mask!1564))))

(declare-fun b!1214645 () Bool)

(declare-fun e!689793 () Bool)

(declare-fun e!689796 () Bool)

(assert (=> b!1214645 (= e!689793 (and e!689796 mapRes!48097))))

(declare-fun condMapEmpty!48097 () Bool)

(declare-fun mapDefault!48097 () ValueCell!14698)

