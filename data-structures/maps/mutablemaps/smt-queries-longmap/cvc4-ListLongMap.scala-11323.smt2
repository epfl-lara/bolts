; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131878 () Bool)

(assert start!131878)

(declare-fun b!1543442 () Bool)

(declare-fun e!859026 () Bool)

(declare-fun tp_is_empty!37835 () Bool)

(assert (=> b!1543442 (= e!859026 tp_is_empty!37835)))

(declare-fun b!1543443 () Bool)

(declare-fun e!859025 () Bool)

(assert (=> b!1543443 (= e!859025 false)))

(declare-fun lt!665927 () Bool)

(declare-datatypes ((array!102847 0))(
  ( (array!102848 (arr!49621 (Array (_ BitVec 32) (_ BitVec 64))) (size!50172 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102847)

(declare-datatypes ((List!36071 0))(
  ( (Nil!36068) (Cons!36067 (h!37513 (_ BitVec 64)) (t!50772 List!36071)) )
))
(declare-fun arrayNoDuplicates!0 (array!102847 (_ BitVec 32) List!36071) Bool)

(assert (=> b!1543443 (= lt!665927 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36068))))

(declare-fun b!1543444 () Bool)

(declare-fun e!859024 () Bool)

(assert (=> b!1543444 (= e!859024 tp_is_empty!37835)))

(declare-fun b!1543445 () Bool)

(declare-fun e!859027 () Bool)

(declare-fun mapRes!58456 () Bool)

(assert (=> b!1543445 (= e!859027 (and e!859024 mapRes!58456))))

(declare-fun condMapEmpty!58456 () Bool)

(declare-datatypes ((V!58889 0))(
  ( (V!58890 (val!18995 Int)) )
))
(declare-datatypes ((ValueCell!18007 0))(
  ( (ValueCellFull!18007 (v!21793 V!58889)) (EmptyCell!18007) )
))
(declare-datatypes ((array!102849 0))(
  ( (array!102850 (arr!49622 (Array (_ BitVec 32) ValueCell!18007)) (size!50173 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102849)

(declare-fun mapDefault!58456 () ValueCell!18007)

