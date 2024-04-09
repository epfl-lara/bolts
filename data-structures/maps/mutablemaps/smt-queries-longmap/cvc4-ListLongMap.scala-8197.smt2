; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100088 () Bool)

(assert start!100088)

(declare-fun b_free!25631 () Bool)

(declare-fun b_next!25631 () Bool)

(assert (=> start!100088 (= b_free!25631 (not b_next!25631))))

(declare-fun tp!89608 () Bool)

(declare-fun b_and!42143 () Bool)

(assert (=> start!100088 (= tp!89608 b_and!42143)))

(declare-fun b!1192438 () Bool)

(declare-fun res!793343 () Bool)

(declare-fun e!677817 () Bool)

(assert (=> b!1192438 (=> (not res!793343) (not e!677817))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192438 (= res!793343 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47069 () Bool)

(declare-fun mapRes!47069 () Bool)

(assert (=> mapIsEmpty!47069 mapRes!47069))

(declare-fun b!1192439 () Bool)

(declare-fun e!677814 () Bool)

(declare-fun e!677821 () Bool)

(assert (=> b!1192439 (= e!677814 e!677821)))

(declare-fun res!793348 () Bool)

(assert (=> b!1192439 (=> res!793348 e!677821)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1192439 (= res!793348 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45341 0))(
  ( (V!45342 (val!15137 Int)) )
))
(declare-fun zeroValue!944 () V!45341)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!77086 0))(
  ( (array!77087 (arr!37189 (Array (_ BitVec 32) (_ BitVec 64))) (size!37726 (_ BitVec 32))) )
))
(declare-fun lt!542187 () array!77086)

(declare-fun minValue!944 () V!45341)

(declare-datatypes ((ValueCell!14371 0))(
  ( (ValueCellFull!14371 (v!17776 V!45341)) (EmptyCell!14371) )
))
(declare-datatypes ((array!77088 0))(
  ( (array!77089 (arr!37190 (Array (_ BitVec 32) ValueCell!14371)) (size!37727 (_ BitVec 32))) )
))
(declare-fun lt!542186 () array!77088)

(declare-datatypes ((tuple2!19600 0))(
  ( (tuple2!19601 (_1!9810 (_ BitVec 64)) (_2!9810 V!45341)) )
))
(declare-datatypes ((List!26363 0))(
  ( (Nil!26360) (Cons!26359 (h!27568 tuple2!19600) (t!38993 List!26363)) )
))
(declare-datatypes ((ListLongMap!17581 0))(
  ( (ListLongMap!17582 (toList!8806 List!26363)) )
))
(declare-fun lt!542190 () ListLongMap!17581)

(declare-fun getCurrentListMapNoExtraKeys!5220 (array!77086 array!77088 (_ BitVec 32) (_ BitVec 32) V!45341 V!45341 (_ BitVec 32) Int) ListLongMap!17581)

(assert (=> b!1192439 (= lt!542190 (getCurrentListMapNoExtraKeys!5220 lt!542187 lt!542186 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!77088)

(declare-fun dynLambda!3162 (Int (_ BitVec 64)) V!45341)

(assert (=> b!1192439 (= lt!542186 (array!77089 (store (arr!37190 _values!996) i!673 (ValueCellFull!14371 (dynLambda!3162 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37727 _values!996)))))

(declare-fun _keys!1208 () array!77086)

(declare-fun lt!542185 () ListLongMap!17581)

(assert (=> b!1192439 (= lt!542185 (getCurrentListMapNoExtraKeys!5220 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192440 () Bool)

(declare-fun e!677816 () Bool)

(declare-fun e!677818 () Bool)

(assert (=> b!1192440 (= e!677816 (and e!677818 mapRes!47069))))

(declare-fun condMapEmpty!47069 () Bool)

(declare-fun mapDefault!47069 () ValueCell!14371)

