; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101426 () Bool)

(assert start!101426)

(declare-fun b_free!26261 () Bool)

(declare-fun b_next!26261 () Bool)

(assert (=> start!101426 (= b_free!26261 (not b_next!26261))))

(declare-fun tp!91812 () Bool)

(declare-fun b_and!43685 () Bool)

(assert (=> start!101426 (= tp!91812 b_and!43685)))

(declare-fun b!1218539 () Bool)

(declare-fun e!691870 () Bool)

(declare-fun e!691875 () Bool)

(assert (=> b!1218539 (= e!691870 e!691875)))

(declare-fun res!809416 () Bool)

(assert (=> b!1218539 (=> res!809416 e!691875)))

(declare-datatypes ((array!78678 0))(
  ( (array!78679 (arr!37968 (Array (_ BitVec 32) (_ BitVec 64))) (size!38505 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78678)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1218539 (= res!809416 (not (= (select (arr!37968 _keys!1208) from!1455) k!934)))))

(declare-fun b!1218540 () Bool)

(declare-fun res!809420 () Bool)

(declare-fun e!691872 () Bool)

(assert (=> b!1218540 (=> (not res!809420) (not e!691872))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1218540 (= res!809420 (validMask!0 mask!1564))))

(declare-fun b!1218541 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!78678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218541 (= e!691875 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!48328 () Bool)

(declare-fun mapRes!48328 () Bool)

(declare-fun tp!91811 () Bool)

(declare-fun e!691877 () Bool)

(assert (=> mapNonEmpty!48328 (= mapRes!48328 (and tp!91811 e!691877))))

(declare-fun mapKey!48328 () (_ BitVec 32))

(declare-datatypes ((V!46413 0))(
  ( (V!46414 (val!15539 Int)) )
))
(declare-datatypes ((ValueCell!14773 0))(
  ( (ValueCellFull!14773 (v!18195 V!46413)) (EmptyCell!14773) )
))
(declare-fun mapRest!48328 () (Array (_ BitVec 32) ValueCell!14773))

(declare-datatypes ((array!78680 0))(
  ( (array!78681 (arr!37969 (Array (_ BitVec 32) ValueCell!14773)) (size!38506 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78680)

(declare-fun mapValue!48328 () ValueCell!14773)

(assert (=> mapNonEmpty!48328 (= (arr!37969 _values!996) (store mapRest!48328 mapKey!48328 mapValue!48328))))

(declare-fun b!1218542 () Bool)

(declare-fun res!809417 () Bool)

(assert (=> b!1218542 (=> (not res!809417) (not e!691872))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1218542 (= res!809417 (validKeyInArray!0 k!934))))

(declare-fun b!1218543 () Bool)

(declare-fun res!809409 () Bool)

(assert (=> b!1218543 (=> (not res!809409) (not e!691872))))

(assert (=> b!1218543 (= res!809409 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38505 _keys!1208))))))

(declare-fun b!1218544 () Bool)

(declare-fun res!809413 () Bool)

(assert (=> b!1218544 (=> (not res!809413) (not e!691872))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78678 (_ BitVec 32)) Bool)

(assert (=> b!1218544 (= res!809413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1218545 () Bool)

(declare-fun e!691874 () Bool)

(declare-fun e!691869 () Bool)

(assert (=> b!1218545 (= e!691874 (and e!691869 mapRes!48328))))

(declare-fun condMapEmpty!48328 () Bool)

(declare-fun mapDefault!48328 () ValueCell!14773)

