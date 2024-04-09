; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99320 () Bool)

(assert start!99320)

(declare-fun b_free!24863 () Bool)

(declare-fun b_next!24863 () Bool)

(assert (=> start!99320 (= b_free!24863 (not b_next!24863))))

(declare-fun tp!87303 () Bool)

(declare-fun b_and!40607 () Bool)

(assert (=> start!99320 (= tp!87303 b_and!40607)))

(declare-fun mapNonEmpty!45917 () Bool)

(declare-fun mapRes!45917 () Bool)

(declare-fun tp!87304 () Bool)

(declare-fun e!664758 () Bool)

(assert (=> mapNonEmpty!45917 (= mapRes!45917 (and tp!87304 e!664758))))

(declare-fun mapKey!45917 () (_ BitVec 32))

(declare-datatypes ((V!44317 0))(
  ( (V!44318 (val!14753 Int)) )
))
(declare-datatypes ((ValueCell!13987 0))(
  ( (ValueCellFull!13987 (v!17392 V!44317)) (EmptyCell!13987) )
))
(declare-fun mapValue!45917 () ValueCell!13987)

(declare-fun mapRest!45917 () (Array (_ BitVec 32) ValueCell!13987))

(declare-datatypes ((array!75562 0))(
  ( (array!75563 (arr!36427 (Array (_ BitVec 32) ValueCell!13987)) (size!36964 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75562)

(assert (=> mapNonEmpty!45917 (= (arr!36427 _values!996) (store mapRest!45917 mapKey!45917 mapValue!45917))))

(declare-fun b!1169554 () Bool)

(declare-fun res!776167 () Bool)

(declare-fun e!664757 () Bool)

(assert (=> b!1169554 (=> (not res!776167) (not e!664757))))

(declare-datatypes ((array!75564 0))(
  ( (array!75565 (arr!36428 (Array (_ BitVec 32) (_ BitVec 64))) (size!36965 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75564)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1169554 (= res!776167 (and (= (size!36964 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36965 _keys!1208) (size!36964 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169555 () Bool)

(declare-fun res!776160 () Bool)

(declare-fun e!664756 () Bool)

(assert (=> b!1169555 (=> (not res!776160) (not e!664756))))

(declare-fun lt!526634 () array!75564)

(declare-datatypes ((List!25695 0))(
  ( (Nil!25692) (Cons!25691 (h!26900 (_ BitVec 64)) (t!37557 List!25695)) )
))
(declare-fun arrayNoDuplicates!0 (array!75564 (_ BitVec 32) List!25695) Bool)

(assert (=> b!1169555 (= res!776160 (arrayNoDuplicates!0 lt!526634 #b00000000000000000000000000000000 Nil!25692))))

(declare-fun b!1169556 () Bool)

(declare-fun res!776165 () Bool)

(assert (=> b!1169556 (=> (not res!776165) (not e!664757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75564 (_ BitVec 32)) Bool)

(assert (=> b!1169556 (= res!776165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169557 () Bool)

(declare-fun e!664761 () Bool)

(declare-fun tp_is_empty!29393 () Bool)

(assert (=> b!1169557 (= e!664761 tp_is_empty!29393)))

(declare-fun res!776158 () Bool)

(assert (=> start!99320 (=> (not res!776158) (not e!664757))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99320 (= res!776158 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36965 _keys!1208))))))

(assert (=> start!99320 e!664757))

(assert (=> start!99320 tp_is_empty!29393))

(declare-fun array_inv!27724 (array!75564) Bool)

(assert (=> start!99320 (array_inv!27724 _keys!1208)))

(assert (=> start!99320 true))

(assert (=> start!99320 tp!87303))

(declare-fun e!664759 () Bool)

(declare-fun array_inv!27725 (array!75562) Bool)

(assert (=> start!99320 (and (array_inv!27725 _values!996) e!664759)))

(declare-fun b!1169558 () Bool)

(assert (=> b!1169558 (= e!664759 (and e!664761 mapRes!45917))))

(declare-fun condMapEmpty!45917 () Bool)

(declare-fun mapDefault!45917 () ValueCell!13987)

