; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110436 () Bool)

(assert start!110436)

(declare-fun b!1306213 () Bool)

(declare-fun res!867250 () Bool)

(declare-fun e!745206 () Bool)

(assert (=> b!1306213 (=> (not res!867250) (not e!745206))))

(declare-datatypes ((array!86961 0))(
  ( (array!86962 (arr!41958 (Array (_ BitVec 32) (_ BitVec 64))) (size!42509 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86961)

(assert (=> b!1306213 (= res!867250 (and (bvsle #b00000000000000000000000000000000 (size!42509 _keys!1628)) (bvslt (size!42509 _keys!1628) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!54103 () Bool)

(declare-fun mapRes!54103 () Bool)

(declare-fun tp!103184 () Bool)

(declare-fun e!745203 () Bool)

(assert (=> mapNonEmpty!54103 (= mapRes!54103 (and tp!103184 e!745203))))

(declare-datatypes ((V!51753 0))(
  ( (V!51754 (val!17568 Int)) )
))
(declare-datatypes ((ValueCell!16595 0))(
  ( (ValueCellFull!16595 (v!20192 V!51753)) (EmptyCell!16595) )
))
(declare-fun mapRest!54103 () (Array (_ BitVec 32) ValueCell!16595))

(declare-datatypes ((array!86963 0))(
  ( (array!86964 (arr!41959 (Array (_ BitVec 32) ValueCell!16595)) (size!42510 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86963)

(declare-fun mapKey!54103 () (_ BitVec 32))

(declare-fun mapValue!54103 () ValueCell!16595)

(assert (=> mapNonEmpty!54103 (= (arr!41959 _values!1354) (store mapRest!54103 mapKey!54103 mapValue!54103))))

(declare-fun b!1306214 () Bool)

(declare-fun res!867251 () Bool)

(assert (=> b!1306214 (=> (not res!867251) (not e!745206))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun mask!2040 () (_ BitVec 32))

(assert (=> b!1306214 (= res!867251 (and (= (size!42510 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42509 _keys!1628) (size!42510 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306215 () Bool)

(declare-datatypes ((List!29972 0))(
  ( (Nil!29969) (Cons!29968 (h!31177 (_ BitVec 64)) (t!43585 List!29972)) )
))
(declare-fun noDuplicate!2090 (List!29972) Bool)

(assert (=> b!1306215 (= e!745206 (not (noDuplicate!2090 Nil!29969)))))

(declare-fun b!1306216 () Bool)

(declare-fun res!867249 () Bool)

(assert (=> b!1306216 (=> (not res!867249) (not e!745206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86961 (_ BitVec 32)) Bool)

(assert (=> b!1306216 (= res!867249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306217 () Bool)

(declare-fun tp_is_empty!34987 () Bool)

(assert (=> b!1306217 (= e!745203 tp_is_empty!34987)))

(declare-fun b!1306218 () Bool)

(declare-fun e!745204 () Bool)

(declare-fun e!745205 () Bool)

(assert (=> b!1306218 (= e!745204 (and e!745205 mapRes!54103))))

(declare-fun condMapEmpty!54103 () Bool)

(declare-fun mapDefault!54103 () ValueCell!16595)

