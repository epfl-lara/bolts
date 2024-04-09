; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99518 () Bool)

(assert start!99518)

(declare-fun b_free!25061 () Bool)

(declare-fun b_next!25061 () Bool)

(assert (=> start!99518 (= b_free!25061 (not b_next!25061))))

(declare-fun tp!87897 () Bool)

(declare-fun b_and!41003 () Bool)

(assert (=> start!99518 (= tp!87897 b_and!41003)))

(declare-fun b!1175771 () Bool)

(declare-fun res!780979 () Bool)

(declare-fun e!668384 () Bool)

(assert (=> b!1175771 (=> (not res!780979) (not e!668384))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1175771 (= res!780979 (validMask!0 mask!1564))))

(declare-fun b!1175773 () Bool)

(declare-fun e!668386 () Bool)

(declare-fun e!668381 () Bool)

(assert (=> b!1175773 (= e!668386 e!668381)))

(declare-fun res!780989 () Bool)

(assert (=> b!1175773 (=> res!780989 e!668381)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1175773 (= res!780989 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44581 0))(
  ( (V!44582 (val!14852 Int)) )
))
(declare-fun zeroValue!944 () V!44581)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14086 0))(
  ( (ValueCellFull!14086 (v!17491 V!44581)) (EmptyCell!14086) )
))
(declare-datatypes ((array!75958 0))(
  ( (array!75959 (arr!36625 (Array (_ BitVec 32) ValueCell!14086)) (size!37162 (_ BitVec 32))) )
))
(declare-fun lt!530507 () array!75958)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!75960 0))(
  ( (array!75961 (arr!36626 (Array (_ BitVec 32) (_ BitVec 64))) (size!37163 (_ BitVec 32))) )
))
(declare-fun lt!530499 () array!75960)

(declare-datatypes ((tuple2!19102 0))(
  ( (tuple2!19103 (_1!9561 (_ BitVec 64)) (_2!9561 V!44581)) )
))
(declare-datatypes ((List!25870 0))(
  ( (Nil!25867) (Cons!25866 (h!27075 tuple2!19102) (t!37930 List!25870)) )
))
(declare-datatypes ((ListLongMap!17083 0))(
  ( (ListLongMap!17084 (toList!8557 List!25870)) )
))
(declare-fun lt!530496 () ListLongMap!17083)

(declare-fun minValue!944 () V!44581)

(declare-fun getCurrentListMapNoExtraKeys!4988 (array!75960 array!75958 (_ BitVec 32) (_ BitVec 32) V!44581 V!44581 (_ BitVec 32) Int) ListLongMap!17083)

(assert (=> b!1175773 (= lt!530496 (getCurrentListMapNoExtraKeys!4988 lt!530499 lt!530507 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!530502 () V!44581)

(declare-fun _values!996 () array!75958)

(assert (=> b!1175773 (= lt!530507 (array!75959 (store (arr!36625 _values!996) i!673 (ValueCellFull!14086 lt!530502)) (size!37162 _values!996)))))

(declare-fun dynLambda!2966 (Int (_ BitVec 64)) V!44581)

(assert (=> b!1175773 (= lt!530502 (dynLambda!2966 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75960)

(declare-fun lt!530495 () ListLongMap!17083)

(assert (=> b!1175773 (= lt!530495 (getCurrentListMapNoExtraKeys!4988 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175774 () Bool)

(declare-fun res!780987 () Bool)

(assert (=> b!1175774 (=> (not res!780987) (not e!668384))))

(declare-datatypes ((List!25871 0))(
  ( (Nil!25868) (Cons!25867 (h!27076 (_ BitVec 64)) (t!37931 List!25871)) )
))
(declare-fun arrayNoDuplicates!0 (array!75960 (_ BitVec 32) List!25871) Bool)

(assert (=> b!1175774 (= res!780987 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25868))))

(declare-fun b!1175775 () Bool)

(declare-fun res!780990 () Bool)

(assert (=> b!1175775 (=> (not res!780990) (not e!668384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75960 (_ BitVec 32)) Bool)

(assert (=> b!1175775 (= res!780990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175776 () Bool)

(declare-fun e!668389 () Bool)

(declare-fun tp_is_empty!29591 () Bool)

(assert (=> b!1175776 (= e!668389 tp_is_empty!29591)))

(declare-fun b!1175777 () Bool)

(declare-fun e!668387 () Bool)

(declare-fun mapRes!46214 () Bool)

(assert (=> b!1175777 (= e!668387 (and e!668389 mapRes!46214))))

(declare-fun condMapEmpty!46214 () Bool)

(declare-fun mapDefault!46214 () ValueCell!14086)

