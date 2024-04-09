; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101800 () Bool)

(assert start!101800)

(declare-fun b_free!26453 () Bool)

(declare-fun b_next!26453 () Bool)

(assert (=> start!101800 (= b_free!26453 (not b_next!26453))))

(declare-fun tp!92405 () Bool)

(declare-fun b_and!44177 () Bool)

(assert (=> start!101800 (= tp!92405 b_and!44177)))

(declare-fun b!1225429 () Bool)

(declare-fun res!814448 () Bool)

(declare-fun e!696046 () Bool)

(assert (=> b!1225429 (=> (not res!814448) (not e!696046))))

(declare-datatypes ((array!79072 0))(
  ( (array!79073 (arr!38159 (Array (_ BitVec 32) (_ BitVec 64))) (size!38696 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79072)

(declare-datatypes ((List!27116 0))(
  ( (Nil!27113) (Cons!27112 (h!28321 (_ BitVec 64)) (t!40556 List!27116)) )
))
(declare-fun arrayNoDuplicates!0 (array!79072 (_ BitVec 32) List!27116) Bool)

(assert (=> b!1225429 (= res!814448 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27113))))

(declare-fun b!1225430 () Bool)

(declare-fun e!696041 () Bool)

(assert (=> b!1225430 (= e!696046 e!696041)))

(declare-fun res!814445 () Bool)

(assert (=> b!1225430 (=> (not res!814445) (not e!696041))))

(declare-fun lt!558409 () array!79072)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79072 (_ BitVec 32)) Bool)

(assert (=> b!1225430 (= res!814445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558409 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1225430 (= lt!558409 (array!79073 (store (arr!38159 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38696 _keys!1208)))))

(declare-fun b!1225431 () Bool)

(declare-fun res!814452 () Bool)

(assert (=> b!1225431 (=> (not res!814452) (not e!696046))))

(assert (=> b!1225431 (= res!814452 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38696 _keys!1208))))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1225432 () Bool)

(declare-fun e!696045 () Bool)

(declare-fun arrayContainsKey!0 (array!79072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225432 (= e!696045 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1225433 () Bool)

(declare-fun res!814455 () Bool)

(assert (=> b!1225433 (=> (not res!814455) (not e!696046))))

(assert (=> b!1225433 (= res!814455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!48634 () Bool)

(declare-fun mapRes!48634 () Bool)

(declare-fun tp!92406 () Bool)

(declare-fun e!696043 () Bool)

(assert (=> mapNonEmpty!48634 (= mapRes!48634 (and tp!92406 e!696043))))

(declare-datatypes ((V!46669 0))(
  ( (V!46670 (val!15635 Int)) )
))
(declare-datatypes ((ValueCell!14869 0))(
  ( (ValueCellFull!14869 (v!18298 V!46669)) (EmptyCell!14869) )
))
(declare-fun mapRest!48634 () (Array (_ BitVec 32) ValueCell!14869))

(declare-fun mapKey!48634 () (_ BitVec 32))

(declare-datatypes ((array!79074 0))(
  ( (array!79075 (arr!38160 (Array (_ BitVec 32) ValueCell!14869)) (size!38697 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79074)

(declare-fun mapValue!48634 () ValueCell!14869)

(assert (=> mapNonEmpty!48634 (= (arr!38160 _values!996) (store mapRest!48634 mapKey!48634 mapValue!48634))))

(declare-fun b!1225434 () Bool)

(declare-fun res!814444 () Bool)

(assert (=> b!1225434 (=> (not res!814444) (not e!696046))))

(assert (=> b!1225434 (= res!814444 (= (select (arr!38159 _keys!1208) i!673) k!934))))

(declare-fun b!1225435 () Bool)

(declare-datatypes ((Unit!40559 0))(
  ( (Unit!40560) )
))
(declare-fun e!696037 () Unit!40559)

(declare-fun Unit!40561 () Unit!40559)

(assert (=> b!1225435 (= e!696037 Unit!40561)))

(declare-fun b!1225436 () Bool)

(declare-fun e!696044 () Bool)

(declare-fun e!696038 () Bool)

(assert (=> b!1225436 (= e!696044 (and e!696038 mapRes!48634))))

(declare-fun condMapEmpty!48634 () Bool)

(declare-fun mapDefault!48634 () ValueCell!14869)

