; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110506 () Bool)

(assert start!110506)

(declare-fun b!1306739 () Bool)

(declare-fun e!745623 () Bool)

(declare-fun tp_is_empty!35035 () Bool)

(assert (=> b!1306739 (= e!745623 tp_is_empty!35035)))

(declare-fun mapNonEmpty!54181 () Bool)

(declare-fun mapRes!54181 () Bool)

(declare-fun tp!103262 () Bool)

(assert (=> mapNonEmpty!54181 (= mapRes!54181 (and tp!103262 e!745623))))

(declare-datatypes ((V!51817 0))(
  ( (V!51818 (val!17592 Int)) )
))
(declare-datatypes ((ValueCell!16619 0))(
  ( (ValueCellFull!16619 (v!20217 V!51817)) (EmptyCell!16619) )
))
(declare-fun mapValue!54181 () ValueCell!16619)

(declare-datatypes ((array!87055 0))(
  ( (array!87056 (arr!42003 (Array (_ BitVec 32) ValueCell!16619)) (size!42554 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87055)

(declare-fun mapRest!54181 () (Array (_ BitVec 32) ValueCell!16619))

(declare-fun mapKey!54181 () (_ BitVec 32))

(assert (=> mapNonEmpty!54181 (= (arr!42003 _values!1354) (store mapRest!54181 mapKey!54181 mapValue!54181))))

(declare-fun res!867531 () Bool)

(declare-fun e!745621 () Bool)

(assert (=> start!110506 (=> (not res!867531) (not e!745621))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110506 (= res!867531 (validMask!0 mask!2040))))

(assert (=> start!110506 e!745621))

(assert (=> start!110506 true))

(declare-fun e!745625 () Bool)

(declare-fun array_inv!31755 (array!87055) Bool)

(assert (=> start!110506 (and (array_inv!31755 _values!1354) e!745625)))

(declare-datatypes ((array!87057 0))(
  ( (array!87058 (arr!42004 (Array (_ BitVec 32) (_ BitVec 64))) (size!42555 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87057)

(declare-fun array_inv!31756 (array!87057) Bool)

(assert (=> start!110506 (array_inv!31756 _keys!1628)))

(declare-fun b!1306740 () Bool)

(declare-fun e!745622 () Bool)

(assert (=> b!1306740 (= e!745622 tp_is_empty!35035)))

(declare-fun b!1306741 () Bool)

(assert (=> b!1306741 (= e!745621 false)))

(declare-fun lt!584917 () Bool)

(declare-datatypes ((List!29991 0))(
  ( (Nil!29988) (Cons!29987 (h!31196 (_ BitVec 64)) (t!43604 List!29991)) )
))
(declare-fun arrayNoDuplicates!0 (array!87057 (_ BitVec 32) List!29991) Bool)

(assert (=> b!1306741 (= lt!584917 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29988))))

(declare-fun b!1306742 () Bool)

(assert (=> b!1306742 (= e!745625 (and e!745622 mapRes!54181))))

(declare-fun condMapEmpty!54181 () Bool)

(declare-fun mapDefault!54181 () ValueCell!16619)

