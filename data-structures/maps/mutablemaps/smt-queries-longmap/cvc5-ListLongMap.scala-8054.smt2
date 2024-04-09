; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99200 () Bool)

(assert start!99200)

(declare-fun b_free!24769 () Bool)

(declare-fun b_next!24769 () Bool)

(assert (=> start!99200 (= b_free!24769 (not b_next!24769))))

(declare-fun tp!87018 () Bool)

(declare-fun b_and!40401 () Bool)

(assert (=> start!99200 (= tp!87018 b_and!40401)))

(declare-fun b!1167061 () Bool)

(declare-fun e!663392 () Bool)

(declare-fun tp_is_empty!29299 () Bool)

(assert (=> b!1167061 (= e!663392 tp_is_empty!29299)))

(declare-fun b!1167062 () Bool)

(declare-fun e!663390 () Bool)

(assert (=> b!1167062 (= e!663390 tp_is_empty!29299)))

(declare-fun b!1167063 () Bool)

(declare-fun res!774270 () Bool)

(declare-fun e!663393 () Bool)

(assert (=> b!1167063 (=> (not res!774270) (not e!663393))))

(declare-datatypes ((array!75376 0))(
  ( (array!75377 (arr!36335 (Array (_ BitVec 32) (_ BitVec 64))) (size!36872 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75376)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44193 0))(
  ( (V!44194 (val!14706 Int)) )
))
(declare-datatypes ((ValueCell!13940 0))(
  ( (ValueCellFull!13940 (v!17344 V!44193)) (EmptyCell!13940) )
))
(declare-datatypes ((array!75378 0))(
  ( (array!75379 (arr!36336 (Array (_ BitVec 32) ValueCell!13940)) (size!36873 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75378)

(assert (=> b!1167063 (= res!774270 (and (= (size!36873 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36872 _keys!1208) (size!36873 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167064 () Bool)

(declare-fun res!774268 () Bool)

(assert (=> b!1167064 (=> (not res!774268) (not e!663393))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167064 (= res!774268 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36872 _keys!1208))))))

(declare-fun mapIsEmpty!45773 () Bool)

(declare-fun mapRes!45773 () Bool)

(assert (=> mapIsEmpty!45773 mapRes!45773))

(declare-fun b!1167065 () Bool)

(declare-fun res!774263 () Bool)

(declare-fun e!663394 () Bool)

(assert (=> b!1167065 (=> (not res!774263) (not e!663394))))

(declare-fun lt!525463 () array!75376)

(declare-datatypes ((List!25616 0))(
  ( (Nil!25613) (Cons!25612 (h!26821 (_ BitVec 64)) (t!37384 List!25616)) )
))
(declare-fun arrayNoDuplicates!0 (array!75376 (_ BitVec 32) List!25616) Bool)

(assert (=> b!1167065 (= res!774263 (arrayNoDuplicates!0 lt!525463 #b00000000000000000000000000000000 Nil!25613))))

(declare-fun b!1167066 () Bool)

(declare-fun e!663389 () Bool)

(assert (=> b!1167066 (= e!663389 (and e!663392 mapRes!45773))))

(declare-fun condMapEmpty!45773 () Bool)

(declare-fun mapDefault!45773 () ValueCell!13940)

