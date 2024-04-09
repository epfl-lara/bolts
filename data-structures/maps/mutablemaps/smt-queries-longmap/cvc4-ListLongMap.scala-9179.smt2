; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110440 () Bool)

(assert start!110440)

(declare-fun b!1306255 () Bool)

(declare-fun res!867273 () Bool)

(declare-fun e!745232 () Bool)

(assert (=> b!1306255 (=> (not res!867273) (not e!745232))))

(declare-datatypes ((array!86969 0))(
  ( (array!86970 (arr!41962 (Array (_ BitVec 32) (_ BitVec 64))) (size!42513 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86969)

(assert (=> b!1306255 (= res!867273 (and (bvsle #b00000000000000000000000000000000 (size!42513 _keys!1628)) (bvslt (size!42513 _keys!1628) #b01111111111111111111111111111111)))))

(declare-fun b!1306256 () Bool)

(declare-fun e!745236 () Bool)

(declare-fun tp_is_empty!34991 () Bool)

(assert (=> b!1306256 (= e!745236 tp_is_empty!34991)))

(declare-fun b!1306257 () Bool)

(declare-datatypes ((List!29974 0))(
  ( (Nil!29971) (Cons!29970 (h!31179 (_ BitVec 64)) (t!43587 List!29974)) )
))
(declare-fun noDuplicate!2092 (List!29974) Bool)

(assert (=> b!1306257 (= e!745232 (not (noDuplicate!2092 Nil!29971)))))

(declare-fun res!867275 () Bool)

(assert (=> start!110440 (=> (not res!867275) (not e!745232))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110440 (= res!867275 (validMask!0 mask!2040))))

(assert (=> start!110440 e!745232))

(assert (=> start!110440 true))

(declare-datatypes ((V!51757 0))(
  ( (V!51758 (val!17570 Int)) )
))
(declare-datatypes ((ValueCell!16597 0))(
  ( (ValueCellFull!16597 (v!20194 V!51757)) (EmptyCell!16597) )
))
(declare-datatypes ((array!86971 0))(
  ( (array!86972 (arr!41963 (Array (_ BitVec 32) ValueCell!16597)) (size!42514 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86971)

(declare-fun e!745233 () Bool)

(declare-fun array_inv!31729 (array!86971) Bool)

(assert (=> start!110440 (and (array_inv!31729 _values!1354) e!745233)))

(declare-fun array_inv!31730 (array!86969) Bool)

(assert (=> start!110440 (array_inv!31730 _keys!1628)))

(declare-fun b!1306258 () Bool)

(declare-fun e!745235 () Bool)

(assert (=> b!1306258 (= e!745235 tp_is_empty!34991)))

(declare-fun b!1306259 () Bool)

(declare-fun mapRes!54109 () Bool)

(assert (=> b!1306259 (= e!745233 (and e!745235 mapRes!54109))))

(declare-fun condMapEmpty!54109 () Bool)

(declare-fun mapDefault!54109 () ValueCell!16597)

