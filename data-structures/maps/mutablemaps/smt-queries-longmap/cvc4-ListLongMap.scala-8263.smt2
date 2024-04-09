; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100566 () Bool)

(assert start!100566)

(declare-fun b_free!25853 () Bool)

(declare-fun b_next!25853 () Bool)

(assert (=> start!100566 (= b_free!25853 (not b_next!25853))))

(declare-fun tp!90550 () Bool)

(declare-fun b_and!42607 () Bool)

(assert (=> start!100566 (= tp!90550 b_and!42607)))

(declare-fun b!1201381 () Bool)

(declare-fun e!682263 () Bool)

(declare-datatypes ((V!45869 0))(
  ( (V!45870 (val!15335 Int)) )
))
(declare-datatypes ((tuple2!19780 0))(
  ( (tuple2!19781 (_1!9900 (_ BitVec 64)) (_2!9900 V!45869)) )
))
(declare-datatypes ((List!26612 0))(
  ( (Nil!26609) (Cons!26608 (h!27817 tuple2!19780) (t!39452 List!26612)) )
))
(declare-datatypes ((ListLongMap!17761 0))(
  ( (ListLongMap!17762 (toList!8896 List!26612)) )
))
(declare-fun call!57441 () ListLongMap!17761)

(declare-fun call!57440 () ListLongMap!17761)

(assert (=> b!1201381 (= e!682263 (= call!57441 call!57440))))

(declare-fun b!1201382 () Bool)

(declare-fun res!799828 () Bool)

(declare-fun e!682276 () Bool)

(assert (=> b!1201382 (=> (not res!799828) (not e!682276))))

(declare-datatypes ((array!77866 0))(
  ( (array!77867 (arr!37574 (Array (_ BitVec 32) (_ BitVec 64))) (size!38111 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77866)

(declare-datatypes ((List!26613 0))(
  ( (Nil!26610) (Cons!26609 (h!27818 (_ BitVec 64)) (t!39453 List!26613)) )
))
(declare-fun arrayNoDuplicates!0 (array!77866 (_ BitVec 32) List!26613) Bool)

(assert (=> b!1201382 (= res!799828 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26610))))

(declare-fun b!1201383 () Bool)

(declare-fun res!799820 () Bool)

(assert (=> b!1201383 (=> (not res!799820) (not e!682276))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77866 (_ BitVec 32)) Bool)

(assert (=> b!1201383 (= res!799820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun lt!544413 () ListLongMap!17761)

(declare-fun c!117466 () Bool)

(declare-fun minValue!944 () V!45869)

(declare-fun zeroValue!944 () V!45869)

(declare-fun bm!57432 () Bool)

(declare-fun c!117465 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((Unit!39753 0))(
  ( (Unit!39754) )
))
(declare-fun call!57438 () Unit!39753)

(declare-fun addStillContains!997 (ListLongMap!17761 (_ BitVec 64) V!45869 (_ BitVec 64)) Unit!39753)

(assert (=> bm!57432 (= call!57438 (addStillContains!997 lt!544413 (ite (or c!117465 c!117466) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117465 c!117466) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1201384 () Bool)

(declare-fun e!682274 () Bool)

(declare-fun e!682272 () Bool)

(assert (=> b!1201384 (= e!682274 e!682272)))

(declare-fun res!799830 () Bool)

(assert (=> b!1201384 (=> res!799830 e!682272)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1201384 (= res!799830 (not (= from!1455 i!673)))))

(declare-fun lt!544408 () array!77866)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14569 0))(
  ( (ValueCellFull!14569 (v!17974 V!45869)) (EmptyCell!14569) )
))
(declare-datatypes ((array!77868 0))(
  ( (array!77869 (arr!37575 (Array (_ BitVec 32) ValueCell!14569)) (size!38112 (_ BitVec 32))) )
))
(declare-fun lt!544412 () array!77868)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!544402 () ListLongMap!17761)

(declare-fun getCurrentListMapNoExtraKeys!5308 (array!77866 array!77868 (_ BitVec 32) (_ BitVec 32) V!45869 V!45869 (_ BitVec 32) Int) ListLongMap!17761)

(assert (=> b!1201384 (= lt!544402 (getCurrentListMapNoExtraKeys!5308 lt!544408 lt!544412 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!77868)

(declare-fun dynLambda!3236 (Int (_ BitVec 64)) V!45869)

(assert (=> b!1201384 (= lt!544412 (array!77869 (store (arr!37575 _values!996) i!673 (ValueCellFull!14569 (dynLambda!3236 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38112 _values!996)))))

(declare-fun lt!544409 () ListLongMap!17761)

(assert (=> b!1201384 (= lt!544409 (getCurrentListMapNoExtraKeys!5308 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1201385 () Bool)

(declare-fun res!799832 () Bool)

(assert (=> b!1201385 (=> (not res!799832) (not e!682276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1201385 (= res!799832 (validKeyInArray!0 k!934))))

(declare-fun bm!57433 () Bool)

(declare-fun call!57439 () ListLongMap!17761)

(declare-fun call!57435 () ListLongMap!17761)

(assert (=> bm!57433 (= call!57439 call!57435)))

(declare-fun bm!57434 () Bool)

(declare-fun +!3937 (ListLongMap!17761 tuple2!19780) ListLongMap!17761)

(assert (=> bm!57434 (= call!57435 (+!3937 lt!544413 (ite (or c!117465 c!117466) (tuple2!19781 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19781 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1201386 () Bool)

(declare-fun res!799823 () Bool)

(assert (=> b!1201386 (=> (not res!799823) (not e!682276))))

(assert (=> b!1201386 (= res!799823 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38111 _keys!1208))))))

(declare-fun b!1201387 () Bool)

(declare-fun res!799833 () Bool)

(assert (=> b!1201387 (=> (not res!799833) (not e!682276))))

(assert (=> b!1201387 (= res!799833 (= (select (arr!37574 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!47678 () Bool)

(declare-fun mapRes!47678 () Bool)

(assert (=> mapIsEmpty!47678 mapRes!47678))

(declare-fun b!1201388 () Bool)

(declare-fun res!799821 () Bool)

(declare-fun e!682270 () Bool)

(assert (=> b!1201388 (=> (not res!799821) (not e!682270))))

(assert (=> b!1201388 (= res!799821 (arrayNoDuplicates!0 lt!544408 #b00000000000000000000000000000000 Nil!26610))))

(declare-fun b!1201389 () Bool)

(declare-fun e!682267 () Unit!39753)

(declare-fun e!682265 () Unit!39753)

(assert (=> b!1201389 (= e!682267 e!682265)))

(declare-fun lt!544410 () Bool)

(assert (=> b!1201389 (= c!117466 (and (not lt!544410) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1201390 () Bool)

(declare-fun res!799825 () Bool)

(assert (=> b!1201390 (=> (not res!799825) (not e!682276))))

(assert (=> b!1201390 (= res!799825 (and (= (size!38112 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38111 _keys!1208) (size!38112 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1201391 () Bool)

(declare-fun res!799826 () Bool)

(assert (=> b!1201391 (=> (not res!799826) (not e!682276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1201391 (= res!799826 (validMask!0 mask!1564))))

(declare-fun bm!57435 () Bool)

(assert (=> bm!57435 (= call!57440 (getCurrentListMapNoExtraKeys!5308 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57436 () Bool)

(declare-fun call!57437 () Bool)

(declare-fun call!57442 () Bool)

(assert (=> bm!57436 (= call!57437 call!57442)))

(declare-fun b!1201392 () Bool)

(declare-fun e!682271 () Bool)

(declare-fun e!682273 () Bool)

(assert (=> b!1201392 (= e!682271 e!682273)))

(declare-fun res!799822 () Bool)

(assert (=> b!1201392 (=> res!799822 e!682273)))

(declare-fun contains!6897 (ListLongMap!17761 (_ BitVec 64)) Bool)

(assert (=> b!1201392 (= res!799822 (not (contains!6897 lt!544413 k!934)))))

(assert (=> b!1201392 (= lt!544413 (getCurrentListMapNoExtraKeys!5308 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201393 () Bool)

(declare-fun c!117463 () Bool)

(assert (=> b!1201393 (= c!117463 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544410))))

(declare-fun e!682269 () Unit!39753)

(assert (=> b!1201393 (= e!682265 e!682269)))

(declare-fun b!1201394 () Bool)

(declare-fun e!682275 () Bool)

(declare-fun e!682264 () Bool)

(assert (=> b!1201394 (= e!682275 (and e!682264 mapRes!47678))))

(declare-fun condMapEmpty!47678 () Bool)

(declare-fun mapDefault!47678 () ValueCell!14569)

