; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98034 () Bool)

(assert start!98034)

(declare-fun b_free!23699 () Bool)

(declare-fun b_next!23699 () Bool)

(assert (=> start!98034 (= b_free!23699 (not b_next!23699))))

(declare-fun tp!83802 () Bool)

(declare-fun b_and!38203 () Bool)

(assert (=> start!98034 (= tp!83802 b_and!38203)))

(declare-fun b!1123990 () Bool)

(declare-fun e!639905 () Bool)

(declare-fun e!639907 () Bool)

(assert (=> b!1123990 (= e!639905 e!639907)))

(declare-fun res!751057 () Bool)

(assert (=> b!1123990 (=> (not res!751057) (not e!639907))))

(declare-datatypes ((array!73284 0))(
  ( (array!73285 (arr!35291 (Array (_ BitVec 32) (_ BitVec 64))) (size!35828 (_ BitVec 32))) )
))
(declare-fun lt!499280 () array!73284)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73284 (_ BitVec 32)) Bool)

(assert (=> b!1123990 (= res!751057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499280 mask!1564))))

(declare-fun _keys!1208 () array!73284)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1123990 (= lt!499280 (array!73285 (store (arr!35291 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35828 _keys!1208)))))

(declare-fun mapNonEmpty!44161 () Bool)

(declare-fun mapRes!44161 () Bool)

(declare-fun tp!83801 () Bool)

(declare-fun e!639908 () Bool)

(assert (=> mapNonEmpty!44161 (= mapRes!44161 (and tp!83801 e!639908))))

(declare-datatypes ((V!42765 0))(
  ( (V!42766 (val!14171 Int)) )
))
(declare-datatypes ((ValueCell!13405 0))(
  ( (ValueCellFull!13405 (v!16805 V!42765)) (EmptyCell!13405) )
))
(declare-fun mapRest!44161 () (Array (_ BitVec 32) ValueCell!13405))

(declare-fun mapValue!44161 () ValueCell!13405)

(declare-datatypes ((array!73286 0))(
  ( (array!73287 (arr!35292 (Array (_ BitVec 32) ValueCell!13405)) (size!35829 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73286)

(declare-fun mapKey!44161 () (_ BitVec 32))

(assert (=> mapNonEmpty!44161 (= (arr!35292 _values!996) (store mapRest!44161 mapKey!44161 mapValue!44161))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47377 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42765)

(declare-fun zeroValue!944 () V!42765)

(declare-datatypes ((tuple2!17878 0))(
  ( (tuple2!17879 (_1!8949 (_ BitVec 64)) (_2!8949 V!42765)) )
))
(declare-datatypes ((List!24712 0))(
  ( (Nil!24709) (Cons!24708 (h!25917 tuple2!17878) (t!35410 List!24712)) )
))
(declare-datatypes ((ListLongMap!15859 0))(
  ( (ListLongMap!15860 (toList!7945 List!24712)) )
))
(declare-fun call!47381 () ListLongMap!15859)

(declare-fun getCurrentListMapNoExtraKeys!4404 (array!73284 array!73286 (_ BitVec 32) (_ BitVec 32) V!42765 V!42765 (_ BitVec 32) Int) ListLongMap!15859)

(assert (=> bm!47377 (= call!47381 (getCurrentListMapNoExtraKeys!4404 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123992 () Bool)

(declare-fun e!639910 () Bool)

(declare-fun e!639909 () Bool)

(assert (=> b!1123992 (= e!639910 (and e!639909 mapRes!44161))))

(declare-fun condMapEmpty!44161 () Bool)

(declare-fun mapDefault!44161 () ValueCell!13405)

