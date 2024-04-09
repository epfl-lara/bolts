; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101290 () Bool)

(assert start!101290)

(declare-fun b_free!26177 () Bool)

(declare-fun b_next!26177 () Bool)

(assert (=> start!101290 (= b_free!26177 (not b_next!26177))))

(declare-fun tp!91554 () Bool)

(declare-fun b_and!43481 () Bool)

(assert (=> start!101290 (= tp!91554 b_and!43481)))

(declare-fun b!1216092 () Bool)

(declare-fun res!807595 () Bool)

(declare-fun e!690491 () Bool)

(assert (=> b!1216092 (=> (not res!807595) (not e!690491))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78512 0))(
  ( (array!78513 (arr!37887 (Array (_ BitVec 32) (_ BitVec 64))) (size!38424 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78512)

(assert (=> b!1216092 (= res!807595 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38424 _keys!1208))))))

(declare-fun mapNonEmpty!48196 () Bool)

(declare-fun mapRes!48196 () Bool)

(declare-fun tp!91553 () Bool)

(declare-fun e!690487 () Bool)

(assert (=> mapNonEmpty!48196 (= mapRes!48196 (and tp!91553 e!690487))))

(declare-datatypes ((V!46301 0))(
  ( (V!46302 (val!15497 Int)) )
))
(declare-datatypes ((ValueCell!14731 0))(
  ( (ValueCellFull!14731 (v!18151 V!46301)) (EmptyCell!14731) )
))
(declare-fun mapRest!48196 () (Array (_ BitVec 32) ValueCell!14731))

(declare-datatypes ((array!78514 0))(
  ( (array!78515 (arr!37888 (Array (_ BitVec 32) ValueCell!14731)) (size!38425 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78514)

(declare-fun mapKey!48196 () (_ BitVec 32))

(declare-fun mapValue!48196 () ValueCell!14731)

(assert (=> mapNonEmpty!48196 (= (arr!37888 _values!996) (store mapRest!48196 mapKey!48196 mapValue!48196))))

(declare-fun b!1216093 () Bool)

(declare-fun res!807597 () Bool)

(assert (=> b!1216093 (=> (not res!807597) (not e!690491))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78512 (_ BitVec 32)) Bool)

(assert (=> b!1216093 (= res!807597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1216094 () Bool)

(declare-fun res!807599 () Bool)

(declare-fun e!690492 () Bool)

(assert (=> b!1216094 (=> (not res!807599) (not e!690492))))

(declare-fun lt!552755 () array!78512)

(declare-datatypes ((List!26883 0))(
  ( (Nil!26880) (Cons!26879 (h!28088 (_ BitVec 64)) (t!40047 List!26883)) )
))
(declare-fun arrayNoDuplicates!0 (array!78512 (_ BitVec 32) List!26883) Bool)

(assert (=> b!1216094 (= res!807599 (arrayNoDuplicates!0 lt!552755 #b00000000000000000000000000000000 Nil!26880))))

(declare-fun b!1216095 () Bool)

(declare-fun res!807596 () Bool)

(assert (=> b!1216095 (=> (not res!807596) (not e!690491))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1216095 (= res!807596 (and (= (size!38425 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38424 _keys!1208) (size!38425 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!807598 () Bool)

(assert (=> start!101290 (=> (not res!807598) (not e!690491))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101290 (= res!807598 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38424 _keys!1208))))))

(assert (=> start!101290 e!690491))

(declare-fun tp_is_empty!30881 () Bool)

(assert (=> start!101290 tp_is_empty!30881))

(declare-fun array_inv!28748 (array!78512) Bool)

(assert (=> start!101290 (array_inv!28748 _keys!1208)))

(assert (=> start!101290 true))

(assert (=> start!101290 tp!91554))

(declare-fun e!690488 () Bool)

(declare-fun array_inv!28749 (array!78514) Bool)

(assert (=> start!101290 (and (array_inv!28749 _values!996) e!690488)))

(declare-fun b!1216096 () Bool)

(declare-fun res!807592 () Bool)

(assert (=> b!1216096 (=> (not res!807592) (not e!690491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1216096 (= res!807592 (validMask!0 mask!1564))))

(declare-fun b!1216097 () Bool)

(declare-fun res!807601 () Bool)

(assert (=> b!1216097 (=> (not res!807601) (not e!690491))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1216097 (= res!807601 (validKeyInArray!0 k!934))))

(declare-fun b!1216098 () Bool)

(declare-fun e!690489 () Bool)

(assert (=> b!1216098 (= e!690488 (and e!690489 mapRes!48196))))

(declare-fun condMapEmpty!48196 () Bool)

(declare-fun mapDefault!48196 () ValueCell!14731)

