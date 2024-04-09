; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97580 () Bool)

(assert start!97580)

(declare-fun res!743505 () Bool)

(declare-fun e!634923 () Bool)

(assert (=> start!97580 (=> (not res!743505) (not e!634923))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72402 0))(
  ( (array!72403 (arr!34850 (Array (_ BitVec 32) (_ BitVec 64))) (size!35387 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72402)

(assert (=> start!97580 (= res!743505 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35387 _keys!1208))))))

(assert (=> start!97580 e!634923))

(declare-fun array_inv!26660 (array!72402) Bool)

(assert (=> start!97580 (array_inv!26660 _keys!1208)))

(assert (=> start!97580 true))

(declare-datatypes ((V!42161 0))(
  ( (V!42162 (val!13944 Int)) )
))
(declare-datatypes ((ValueCell!13178 0))(
  ( (ValueCellFull!13178 (v!16578 V!42161)) (EmptyCell!13178) )
))
(declare-datatypes ((array!72404 0))(
  ( (array!72405 (arr!34851 (Array (_ BitVec 32) ValueCell!13178)) (size!35388 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72404)

(declare-fun e!634924 () Bool)

(declare-fun array_inv!26661 (array!72404) Bool)

(assert (=> start!97580 (and (array_inv!26661 _values!996) e!634924)))

(declare-fun b!1113820 () Bool)

(declare-fun res!743504 () Bool)

(assert (=> b!1113820 (=> (not res!743504) (not e!634923))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72402 (_ BitVec 32)) Bool)

(assert (=> b!1113820 (= res!743504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113821 () Bool)

(declare-fun res!743506 () Bool)

(assert (=> b!1113821 (=> (not res!743506) (not e!634923))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1113821 (= res!743506 (and (= (size!35388 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35387 _keys!1208) (size!35388 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113822 () Bool)

(declare-fun res!743510 () Bool)

(assert (=> b!1113822 (=> (not res!743510) (not e!634923))))

(declare-datatypes ((List!24425 0))(
  ( (Nil!24422) (Cons!24421 (h!25630 (_ BitVec 64)) (t!34913 List!24425)) )
))
(declare-fun arrayNoDuplicates!0 (array!72402 (_ BitVec 32) List!24425) Bool)

(assert (=> b!1113822 (= res!743510 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24422))))

(declare-fun mapNonEmpty!43480 () Bool)

(declare-fun mapRes!43480 () Bool)

(declare-fun tp!82725 () Bool)

(declare-fun e!634921 () Bool)

(assert (=> mapNonEmpty!43480 (= mapRes!43480 (and tp!82725 e!634921))))

(declare-fun mapRest!43480 () (Array (_ BitVec 32) ValueCell!13178))

(declare-fun mapKey!43480 () (_ BitVec 32))

(declare-fun mapValue!43480 () ValueCell!13178)

(assert (=> mapNonEmpty!43480 (= (arr!34851 _values!996) (store mapRest!43480 mapKey!43480 mapValue!43480))))

(declare-fun mapIsEmpty!43480 () Bool)

(assert (=> mapIsEmpty!43480 mapRes!43480))

(declare-fun b!1113823 () Bool)

(declare-fun tp_is_empty!27775 () Bool)

(assert (=> b!1113823 (= e!634921 tp_is_empty!27775)))

(declare-fun b!1113824 () Bool)

(declare-fun res!743502 () Bool)

(assert (=> b!1113824 (=> (not res!743502) (not e!634923))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113824 (= res!743502 (validKeyInArray!0 k!934))))

(declare-fun b!1113825 () Bool)

(declare-fun e!634920 () Bool)

(assert (=> b!1113825 (= e!634920 tp_is_empty!27775)))

(declare-fun b!1113826 () Bool)

(declare-fun res!743509 () Bool)

(declare-fun e!634922 () Bool)

(assert (=> b!1113826 (=> (not res!743509) (not e!634922))))

(declare-fun lt!496712 () array!72402)

(assert (=> b!1113826 (= res!743509 (arrayNoDuplicates!0 lt!496712 #b00000000000000000000000000000000 Nil!24422))))

(declare-fun b!1113827 () Bool)

(assert (=> b!1113827 (= e!634923 e!634922)))

(declare-fun res!743503 () Bool)

(assert (=> b!1113827 (=> (not res!743503) (not e!634922))))

(assert (=> b!1113827 (= res!743503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496712 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1113827 (= lt!496712 (array!72403 (store (arr!34850 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35387 _keys!1208)))))

(declare-fun b!1113828 () Bool)

(declare-fun res!743507 () Bool)

(assert (=> b!1113828 (=> (not res!743507) (not e!634923))))

(assert (=> b!1113828 (= res!743507 (= (select (arr!34850 _keys!1208) i!673) k!934))))

(declare-fun b!1113829 () Bool)

(declare-fun res!743508 () Bool)

(assert (=> b!1113829 (=> (not res!743508) (not e!634923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113829 (= res!743508 (validMask!0 mask!1564))))

(declare-fun b!1113830 () Bool)

(assert (=> b!1113830 (= e!634922 (not true))))

(declare-fun arrayContainsKey!0 (array!72402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113830 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36463 0))(
  ( (Unit!36464) )
))
(declare-fun lt!496713 () Unit!36463)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72402 (_ BitVec 64) (_ BitVec 32)) Unit!36463)

(assert (=> b!1113830 (= lt!496713 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1113831 () Bool)

(assert (=> b!1113831 (= e!634924 (and e!634920 mapRes!43480))))

(declare-fun condMapEmpty!43480 () Bool)

(declare-fun mapDefault!43480 () ValueCell!13178)

