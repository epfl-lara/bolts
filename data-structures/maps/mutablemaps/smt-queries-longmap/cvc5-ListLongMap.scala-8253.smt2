; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100502 () Bool)

(assert start!100502)

(declare-fun b_free!25789 () Bool)

(declare-fun b_next!25789 () Bool)

(assert (=> start!100502 (= b_free!25789 (not b_next!25789))))

(declare-fun tp!90357 () Bool)

(declare-fun b_and!42479 () Bool)

(assert (=> start!100502 (= tp!90357 b_and!42479)))

(declare-fun b!1199696 () Bool)

(declare-fun res!798647 () Bool)

(declare-fun e!681402 () Bool)

(assert (=> b!1199696 (=> (not res!798647) (not e!681402))))

(declare-datatypes ((array!77742 0))(
  ( (array!77743 (arr!37512 (Array (_ BitVec 32) (_ BitVec 64))) (size!38049 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77742)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1199696 (= res!798647 (= (select (arr!37512 _keys!1208) i!673) k!934))))

(declare-fun b!1199697 () Bool)

(declare-fun res!798643 () Bool)

(declare-fun e!681406 () Bool)

(assert (=> b!1199697 (=> (not res!798643) (not e!681406))))

(declare-fun lt!543804 () array!77742)

(declare-datatypes ((List!26560 0))(
  ( (Nil!26557) (Cons!26556 (h!27765 (_ BitVec 64)) (t!39336 List!26560)) )
))
(declare-fun arrayNoDuplicates!0 (array!77742 (_ BitVec 32) List!26560) Bool)

(assert (=> b!1199697 (= res!798643 (arrayNoDuplicates!0 lt!543804 #b00000000000000000000000000000000 Nil!26557))))

(declare-fun b!1199698 () Bool)

(declare-fun res!798641 () Bool)

(assert (=> b!1199698 (=> (not res!798641) (not e!681402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199698 (= res!798641 (validKeyInArray!0 k!934))))

(declare-fun b!1199699 () Bool)

(assert (=> b!1199699 (= e!681402 e!681406)))

(declare-fun res!798650 () Bool)

(assert (=> b!1199699 (=> (not res!798650) (not e!681406))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77742 (_ BitVec 32)) Bool)

(assert (=> b!1199699 (= res!798650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543804 mask!1564))))

(assert (=> b!1199699 (= lt!543804 (array!77743 (store (arr!37512 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38049 _keys!1208)))))

(declare-fun b!1199700 () Bool)

(declare-fun res!798645 () Bool)

(assert (=> b!1199700 (=> (not res!798645) (not e!681402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199700 (= res!798645 (validMask!0 mask!1564))))

(declare-fun b!1199701 () Bool)

(declare-fun e!681400 () Bool)

(declare-fun tp_is_empty!30493 () Bool)

(assert (=> b!1199701 (= e!681400 tp_is_empty!30493)))

(declare-fun mapIsEmpty!47582 () Bool)

(declare-fun mapRes!47582 () Bool)

(assert (=> mapIsEmpty!47582 mapRes!47582))

(declare-fun b!1199702 () Bool)

(declare-fun e!681403 () Bool)

(declare-fun e!681405 () Bool)

(assert (=> b!1199702 (= e!681403 (and e!681405 mapRes!47582))))

(declare-fun condMapEmpty!47582 () Bool)

(declare-datatypes ((V!45785 0))(
  ( (V!45786 (val!15303 Int)) )
))
(declare-datatypes ((ValueCell!14537 0))(
  ( (ValueCellFull!14537 (v!17942 V!45785)) (EmptyCell!14537) )
))
(declare-datatypes ((array!77744 0))(
  ( (array!77745 (arr!37513 (Array (_ BitVec 32) ValueCell!14537)) (size!38050 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77744)

(declare-fun mapDefault!47582 () ValueCell!14537)

