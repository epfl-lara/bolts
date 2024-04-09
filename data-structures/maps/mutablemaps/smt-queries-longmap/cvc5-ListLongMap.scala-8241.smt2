; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100430 () Bool)

(assert start!100430)

(declare-fun b_free!25717 () Bool)

(declare-fun b_next!25717 () Bool)

(assert (=> start!100430 (= b_free!25717 (not b_next!25717))))

(declare-fun tp!90141 () Bool)

(declare-fun b_and!42347 () Bool)

(assert (=> start!100430 (= tp!90141 b_and!42347)))

(declare-fun b!1198124 () Bool)

(declare-fun res!797456 () Bool)

(declare-fun e!680647 () Bool)

(assert (=> b!1198124 (=> (not res!797456) (not e!680647))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77604 0))(
  ( (array!77605 (arr!37443 (Array (_ BitVec 32) (_ BitVec 64))) (size!37980 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77604)

(assert (=> b!1198124 (= res!797456 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37980 _keys!1208))))))

(declare-fun b!1198125 () Bool)

(declare-fun e!680645 () Bool)

(assert (=> b!1198125 (= e!680645 true)))

(declare-datatypes ((V!45689 0))(
  ( (V!45690 (val!15267 Int)) )
))
(declare-fun zeroValue!944 () V!45689)

(declare-datatypes ((tuple2!19678 0))(
  ( (tuple2!19679 (_1!9849 (_ BitVec 64)) (_2!9849 V!45689)) )
))
(declare-datatypes ((List!26504 0))(
  ( (Nil!26501) (Cons!26500 (h!27709 tuple2!19678) (t!39218 List!26504)) )
))
(declare-datatypes ((ListLongMap!17659 0))(
  ( (ListLongMap!17660 (toList!8845 List!26504)) )
))
(declare-fun lt!543388 () ListLongMap!17659)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14501 0))(
  ( (ValueCellFull!14501 (v!17906 V!45689)) (EmptyCell!14501) )
))
(declare-datatypes ((array!77606 0))(
  ( (array!77607 (arr!37444 (Array (_ BitVec 32) ValueCell!14501)) (size!37981 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77606)

(declare-fun minValue!944 () V!45689)

(declare-fun getCurrentListMapNoExtraKeys!5258 (array!77604 array!77606 (_ BitVec 32) (_ BitVec 32) V!45689 V!45689 (_ BitVec 32) Int) ListLongMap!17659)

(assert (=> b!1198125 (= lt!543388 (getCurrentListMapNoExtraKeys!5258 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198126 () Bool)

(declare-fun res!797455 () Bool)

(assert (=> b!1198126 (=> (not res!797455) (not e!680647))))

(declare-datatypes ((List!26505 0))(
  ( (Nil!26502) (Cons!26501 (h!27710 (_ BitVec 64)) (t!39219 List!26505)) )
))
(declare-fun arrayNoDuplicates!0 (array!77604 (_ BitVec 32) List!26505) Bool)

(assert (=> b!1198126 (= res!797455 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26502))))

(declare-fun b!1198127 () Bool)

(declare-fun e!680646 () Bool)

(declare-fun e!680644 () Bool)

(declare-fun mapRes!47474 () Bool)

(assert (=> b!1198127 (= e!680646 (and e!680644 mapRes!47474))))

(declare-fun condMapEmpty!47474 () Bool)

(declare-fun mapDefault!47474 () ValueCell!14501)

