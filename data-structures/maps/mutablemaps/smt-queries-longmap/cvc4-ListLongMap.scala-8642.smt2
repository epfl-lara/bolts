; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105210 () Bool)

(assert start!105210)

(declare-fun b_free!26891 () Bool)

(declare-fun b_next!26891 () Bool)

(assert (=> start!105210 (= b_free!26891 (not b_next!26891))))

(declare-fun tp!94178 () Bool)

(declare-fun b_and!44715 () Bool)

(assert (=> start!105210 (= tp!94178 b_and!44715)))

(declare-fun b!1253219 () Bool)

(declare-fun res!835772 () Bool)

(declare-fun e!711958 () Bool)

(assert (=> b!1253219 (=> (not res!835772) (not e!711958))))

(declare-datatypes ((array!81227 0))(
  ( (array!81228 (arr!39171 (Array (_ BitVec 32) (_ BitVec 64))) (size!39708 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81227)

(declare-datatypes ((List!27987 0))(
  ( (Nil!27984) (Cons!27983 (h!29192 (_ BitVec 64)) (t!41475 List!27987)) )
))
(declare-fun arrayNoDuplicates!0 (array!81227 (_ BitVec 32) List!27987) Bool)

(assert (=> b!1253219 (= res!835772 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27984))))

(declare-fun b!1253220 () Bool)

(declare-fun e!711962 () Bool)

(declare-fun tp_is_empty!31793 () Bool)

(assert (=> b!1253220 (= e!711962 tp_is_empty!31793)))

(declare-fun b!1253221 () Bool)

(declare-fun e!711959 () Bool)

(assert (=> b!1253221 (= e!711959 tp_is_empty!31793)))

(declare-fun b!1253222 () Bool)

(declare-fun res!835775 () Bool)

(assert (=> b!1253222 (=> (not res!835775) (not e!711958))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81227 (_ BitVec 32)) Bool)

(assert (=> b!1253222 (= res!835775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253223 () Bool)

(declare-fun e!711960 () Bool)

(declare-fun mapRes!49465 () Bool)

(assert (=> b!1253223 (= e!711960 (and e!711962 mapRes!49465))))

(declare-fun condMapEmpty!49465 () Bool)

(declare-datatypes ((V!47755 0))(
  ( (V!47756 (val!15959 Int)) )
))
(declare-datatypes ((ValueCell!15133 0))(
  ( (ValueCellFull!15133 (v!18657 V!47755)) (EmptyCell!15133) )
))
(declare-datatypes ((array!81229 0))(
  ( (array!81230 (arr!39172 (Array (_ BitVec 32) ValueCell!15133)) (size!39709 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81229)

(declare-fun mapDefault!49465 () ValueCell!15133)

