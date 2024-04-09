; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110602 () Bool)

(assert start!110602)

(declare-fun b_free!29401 () Bool)

(declare-fun b_next!29401 () Bool)

(assert (=> start!110602 (= b_free!29401 (not b_next!29401))))

(declare-fun tp!103526 () Bool)

(declare-fun b_and!47619 () Bool)

(assert (=> start!110602 (= tp!103526 b_and!47619)))

(declare-fun res!868259 () Bool)

(declare-fun e!746341 () Bool)

(assert (=> start!110602 (=> (not res!868259) (not e!746341))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110602 (= res!868259 (validMask!0 mask!2040))))

(assert (=> start!110602 e!746341))

(assert (=> start!110602 tp!103526))

(declare-datatypes ((array!87233 0))(
  ( (array!87234 (arr!42092 (Array (_ BitVec 32) (_ BitVec 64))) (size!42643 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87233)

(declare-fun array_inv!31817 (array!87233) Bool)

(assert (=> start!110602 (array_inv!31817 _keys!1628)))

(assert (=> start!110602 true))

(declare-fun tp_is_empty!35131 () Bool)

(assert (=> start!110602 tp_is_empty!35131))

(declare-datatypes ((V!51945 0))(
  ( (V!51946 (val!17640 Int)) )
))
(declare-datatypes ((ValueCell!16667 0))(
  ( (ValueCellFull!16667 (v!20265 V!51945)) (EmptyCell!16667) )
))
(declare-datatypes ((array!87235 0))(
  ( (array!87236 (arr!42093 (Array (_ BitVec 32) ValueCell!16667)) (size!42644 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87235)

(declare-fun e!746343 () Bool)

(declare-fun array_inv!31818 (array!87235) Bool)

(assert (=> start!110602 (and (array_inv!31818 _values!1354) e!746343)))

(declare-fun mapNonEmpty!54325 () Bool)

(declare-fun mapRes!54325 () Bool)

(declare-fun tp!103525 () Bool)

(declare-fun e!746344 () Bool)

(assert (=> mapNonEmpty!54325 (= mapRes!54325 (and tp!103525 e!746344))))

(declare-fun mapKey!54325 () (_ BitVec 32))

(declare-fun mapRest!54325 () (Array (_ BitVec 32) ValueCell!16667))

(declare-fun mapValue!54325 () ValueCell!16667)

(assert (=> mapNonEmpty!54325 (= (arr!42093 _values!1354) (store mapRest!54325 mapKey!54325 mapValue!54325))))

(declare-fun b!1307894 () Bool)

(declare-fun res!868260 () Bool)

(assert (=> b!1307894 (=> (not res!868260) (not e!746341))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1307894 (= res!868260 (validKeyInArray!0 (select (arr!42092 _keys!1628) from!2020)))))

(declare-fun b!1307895 () Bool)

(declare-fun res!868254 () Bool)

(assert (=> b!1307895 (=> (not res!868254) (not e!746341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87233 (_ BitVec 32)) Bool)

(assert (=> b!1307895 (= res!868254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307896 () Bool)

(declare-fun res!868262 () Bool)

(assert (=> b!1307896 (=> (not res!868262) (not e!746341))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307896 (= res!868262 (and (= (size!42644 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42643 _keys!1628) (size!42644 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54325 () Bool)

(assert (=> mapIsEmpty!54325 mapRes!54325))

(declare-fun b!1307897 () Bool)

(assert (=> b!1307897 (= e!746344 tp_is_empty!35131)))

(declare-fun b!1307898 () Bool)

(declare-fun e!746345 () Bool)

(assert (=> b!1307898 (= e!746345 tp_is_empty!35131)))

(declare-fun b!1307899 () Bool)

(declare-fun res!868261 () Bool)

(assert (=> b!1307899 (=> (not res!868261) (not e!746341))))

(assert (=> b!1307899 (= res!868261 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1307900 () Bool)

(assert (=> b!1307900 (= e!746341 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!51945)

(declare-fun zeroValue!1296 () V!51945)

(declare-datatypes ((tuple2!22878 0))(
  ( (tuple2!22879 (_1!11449 (_ BitVec 64)) (_2!11449 V!51945)) )
))
(declare-datatypes ((List!30050 0))(
  ( (Nil!30047) (Cons!30046 (h!31255 tuple2!22878) (t!43663 List!30050)) )
))
(declare-datatypes ((ListLongMap!20547 0))(
  ( (ListLongMap!20548 (toList!10289 List!30050)) )
))
(declare-fun contains!8375 (ListLongMap!20547 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5245 (array!87233 array!87235 (_ BitVec 32) (_ BitVec 32) V!51945 V!51945 (_ BitVec 32) Int) ListLongMap!20547)

(assert (=> b!1307900 (contains!8375 (getCurrentListMap!5245 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43228 0))(
  ( (Unit!43229) )
))
(declare-fun lt!585052 () Unit!43228)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!4 (array!87233 array!87235 (_ BitVec 32) (_ BitVec 32) V!51945 V!51945 (_ BitVec 64) (_ BitVec 32) Int) Unit!43228)

(assert (=> b!1307900 (= lt!585052 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!4 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1307901 () Bool)

(assert (=> b!1307901 (= e!746343 (and e!746345 mapRes!54325))))

(declare-fun condMapEmpty!54325 () Bool)

(declare-fun mapDefault!54325 () ValueCell!16667)

