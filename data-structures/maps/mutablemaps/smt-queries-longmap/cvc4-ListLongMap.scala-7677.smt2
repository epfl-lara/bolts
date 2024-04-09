; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96448 () Bool)

(assert start!96448)

(declare-fun b_free!22991 () Bool)

(declare-fun b_next!22991 () Bool)

(assert (=> start!96448 (= b_free!22991 (not b_next!22991))))

(declare-fun tp!80900 () Bool)

(declare-fun b_and!36663 () Bool)

(assert (=> start!96448 (= tp!80900 b_and!36663)))

(declare-fun b!1095864 () Bool)

(declare-fun res!731459 () Bool)

(declare-fun e!625629 () Bool)

(assert (=> b!1095864 (=> (not res!731459) (not e!625629))))

(declare-datatypes ((array!70948 0))(
  ( (array!70949 (arr!34142 (Array (_ BitVec 32) (_ BitVec 64))) (size!34679 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70948)

(declare-datatypes ((List!23979 0))(
  ( (Nil!23976) (Cons!23975 (h!25184 (_ BitVec 64)) (t!34023 List!23979)) )
))
(declare-fun arrayNoDuplicates!0 (array!70948 (_ BitVec 32) List!23979) Bool)

(assert (=> b!1095864 (= res!731459 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23976))))

(declare-fun b!1095865 () Bool)

(declare-fun e!625627 () Bool)

(declare-fun tp_is_empty!27041 () Bool)

(assert (=> b!1095865 (= e!625627 tp_is_empty!27041)))

(declare-fun b!1095866 () Bool)

(declare-fun e!625624 () Bool)

(assert (=> b!1095866 (= e!625624 tp_is_empty!27041)))

(declare-fun res!731463 () Bool)

(assert (=> start!96448 (=> (not res!731463) (not e!625629))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96448 (= res!731463 (validMask!0 mask!1414))))

(assert (=> start!96448 e!625629))

(assert (=> start!96448 tp!80900))

(assert (=> start!96448 true))

(assert (=> start!96448 tp_is_empty!27041))

(declare-fun array_inv!26162 (array!70948) Bool)

(assert (=> start!96448 (array_inv!26162 _keys!1070)))

(declare-datatypes ((V!41181 0))(
  ( (V!41182 (val!13577 Int)) )
))
(declare-datatypes ((ValueCell!12811 0))(
  ( (ValueCellFull!12811 (v!16199 V!41181)) (EmptyCell!12811) )
))
(declare-datatypes ((array!70950 0))(
  ( (array!70951 (arr!34143 (Array (_ BitVec 32) ValueCell!12811)) (size!34680 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70950)

(declare-fun e!625625 () Bool)

(declare-fun array_inv!26163 (array!70950) Bool)

(assert (=> start!96448 (and (array_inv!26163 _values!874) e!625625)))

(declare-fun b!1095867 () Bool)

(declare-fun res!731458 () Bool)

(assert (=> b!1095867 (=> (not res!731458) (not e!625629))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1095867 (= res!731458 (and (= (size!34680 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34679 _keys!1070) (size!34680 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1095868 () Bool)

(declare-fun mapRes!42322 () Bool)

(assert (=> b!1095868 (= e!625625 (and e!625624 mapRes!42322))))

(declare-fun condMapEmpty!42322 () Bool)

(declare-fun mapDefault!42322 () ValueCell!12811)

