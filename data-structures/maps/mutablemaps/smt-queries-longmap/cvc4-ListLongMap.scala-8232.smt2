; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100340 () Bool)

(assert start!100340)

(declare-fun b_free!25691 () Bool)

(declare-fun b_next!25691 () Bool)

(assert (=> start!100340 (= b_free!25691 (not b_next!25691))))

(declare-fun tp!90022 () Bool)

(declare-fun b_and!42263 () Bool)

(assert (=> start!100340 (= tp!90022 b_and!42263)))

(declare-fun b!1196799 () Bool)

(declare-fun res!796576 () Bool)

(declare-fun e!679974 () Bool)

(assert (=> b!1196799 (=> (not res!796576) (not e!679974))))

(declare-datatypes ((array!77502 0))(
  ( (array!77503 (arr!37394 (Array (_ BitVec 32) (_ BitVec 64))) (size!37931 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77502)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77502 (_ BitVec 32)) Bool)

(assert (=> b!1196799 (= res!796576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!47393 () Bool)

(declare-fun mapRes!47393 () Bool)

(declare-fun tp!90021 () Bool)

(declare-fun e!679972 () Bool)

(assert (=> mapNonEmpty!47393 (= mapRes!47393 (and tp!90021 e!679972))))

(declare-fun mapKey!47393 () (_ BitVec 32))

(declare-datatypes ((V!45621 0))(
  ( (V!45622 (val!15242 Int)) )
))
(declare-datatypes ((ValueCell!14476 0))(
  ( (ValueCellFull!14476 (v!17881 V!45621)) (EmptyCell!14476) )
))
(declare-fun mapRest!47393 () (Array (_ BitVec 32) ValueCell!14476))

(declare-datatypes ((array!77504 0))(
  ( (array!77505 (arr!37395 (Array (_ BitVec 32) ValueCell!14476)) (size!37932 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77504)

(declare-fun mapValue!47393 () ValueCell!14476)

(assert (=> mapNonEmpty!47393 (= (arr!37395 _values!996) (store mapRest!47393 mapKey!47393 mapValue!47393))))

(declare-fun b!1196800 () Bool)

(declare-fun res!796573 () Bool)

(assert (=> b!1196800 (=> (not res!796573) (not e!679974))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1196800 (= res!796573 (and (= (size!37932 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37931 _keys!1208) (size!37932 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47393 () Bool)

(assert (=> mapIsEmpty!47393 mapRes!47393))

(declare-fun b!1196801 () Bool)

(declare-fun res!796574 () Bool)

(assert (=> b!1196801 (=> (not res!796574) (not e!679974))))

(declare-datatypes ((List!26473 0))(
  ( (Nil!26470) (Cons!26469 (h!27678 (_ BitVec 64)) (t!39163 List!26473)) )
))
(declare-fun arrayNoDuplicates!0 (array!77502 (_ BitVec 32) List!26473) Bool)

(assert (=> b!1196801 (= res!796574 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26470))))

(declare-fun b!1196802 () Bool)

(declare-fun res!796570 () Bool)

(assert (=> b!1196802 (=> (not res!796570) (not e!679974))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196802 (= res!796570 (validKeyInArray!0 k!934))))

(declare-fun b!1196803 () Bool)

(declare-fun e!679973 () Bool)

(declare-fun e!679977 () Bool)

(assert (=> b!1196803 (= e!679973 (and e!679977 mapRes!47393))))

(declare-fun condMapEmpty!47393 () Bool)

(declare-fun mapDefault!47393 () ValueCell!14476)

