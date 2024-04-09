; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97178 () Bool)

(assert start!97178)

(declare-fun b!1104995 () Bool)

(declare-fun e!630732 () Bool)

(declare-datatypes ((array!71652 0))(
  ( (array!71653 (arr!34476 (Array (_ BitVec 32) (_ BitVec 64))) (size!35013 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71652)

(assert (=> b!1104995 (= e!630732 (not (bvslt #b00000000000000000000000000000000 (size!35013 _keys!1208))))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1104995 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36195 0))(
  ( (Unit!36196) )
))
(declare-fun lt!495215 () Unit!36195)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71652 (_ BitVec 64) (_ BitVec 32)) Unit!36195)

(assert (=> b!1104995 (= lt!495215 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1104996 () Bool)

(declare-fun res!737362 () Bool)

(declare-fun e!630730 () Bool)

(assert (=> b!1104996 (=> (not res!737362) (not e!630730))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104996 (= res!737362 (validMask!0 mask!1564))))

(declare-fun b!1104997 () Bool)

(declare-fun e!630728 () Bool)

(declare-fun tp_is_empty!27389 () Bool)

(assert (=> b!1104997 (= e!630728 tp_is_empty!27389)))

(declare-fun b!1104998 () Bool)

(declare-fun res!737364 () Bool)

(assert (=> b!1104998 (=> (not res!737364) (not e!630730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71652 (_ BitVec 32)) Bool)

(assert (=> b!1104998 (= res!737364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104999 () Bool)

(declare-fun res!737366 () Bool)

(assert (=> b!1104999 (=> (not res!737366) (not e!630730))))

(assert (=> b!1104999 (= res!737366 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35013 _keys!1208))))))

(declare-fun b!1105000 () Bool)

(declare-fun e!630733 () Bool)

(assert (=> b!1105000 (= e!630733 tp_is_empty!27389)))

(declare-fun mapIsEmpty!42898 () Bool)

(declare-fun mapRes!42898 () Bool)

(assert (=> mapIsEmpty!42898 mapRes!42898))

(declare-fun b!1105001 () Bool)

(declare-fun e!630729 () Bool)

(assert (=> b!1105001 (= e!630729 (and e!630728 mapRes!42898))))

(declare-fun condMapEmpty!42898 () Bool)

(declare-datatypes ((V!41645 0))(
  ( (V!41646 (val!13751 Int)) )
))
(declare-datatypes ((ValueCell!12985 0))(
  ( (ValueCellFull!12985 (v!16385 V!41645)) (EmptyCell!12985) )
))
(declare-datatypes ((array!71654 0))(
  ( (array!71655 (arr!34477 (Array (_ BitVec 32) ValueCell!12985)) (size!35014 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71654)

(declare-fun mapDefault!42898 () ValueCell!12985)

