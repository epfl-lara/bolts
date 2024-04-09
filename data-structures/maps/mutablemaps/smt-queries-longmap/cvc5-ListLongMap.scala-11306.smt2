; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131772 () Bool)

(assert start!131772)

(declare-fun b!1542488 () Bool)

(declare-fun res!1058593 () Bool)

(declare-fun e!858232 () Bool)

(assert (=> b!1542488 (=> (not res!1058593) (not e!858232))))

(declare-datatypes ((array!102653 0))(
  ( (array!102654 (arr!49524 (Array (_ BitVec 32) (_ BitVec 64))) (size!50075 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102653)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102653 (_ BitVec 32)) Bool)

(assert (=> b!1542488 (= res!1058593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1542489 () Bool)

(declare-fun e!858229 () Bool)

(declare-fun tp_is_empty!37729 () Bool)

(assert (=> b!1542489 (= e!858229 tp_is_empty!37729)))

(declare-fun b!1542490 () Bool)

(assert (=> b!1542490 (= e!858232 false)))

(declare-fun lt!665768 () Bool)

(declare-datatypes ((List!36036 0))(
  ( (Nil!36033) (Cons!36032 (h!37478 (_ BitVec 64)) (t!50737 List!36036)) )
))
(declare-fun arrayNoDuplicates!0 (array!102653 (_ BitVec 32) List!36036) Bool)

(assert (=> b!1542490 (= lt!665768 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36033))))

(declare-fun b!1542491 () Bool)

(declare-fun e!858231 () Bool)

(assert (=> b!1542491 (= e!858231 tp_is_empty!37729)))

(declare-fun b!1542492 () Bool)

(declare-fun e!858228 () Bool)

(declare-fun mapRes!58297 () Bool)

(assert (=> b!1542492 (= e!858228 (and e!858229 mapRes!58297))))

(declare-fun condMapEmpty!58297 () Bool)

(declare-datatypes ((V!58749 0))(
  ( (V!58750 (val!18942 Int)) )
))
(declare-datatypes ((ValueCell!17954 0))(
  ( (ValueCellFull!17954 (v!21740 V!58749)) (EmptyCell!17954) )
))
(declare-datatypes ((array!102655 0))(
  ( (array!102656 (arr!49525 (Array (_ BitVec 32) ValueCell!17954)) (size!50076 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102655)

(declare-fun mapDefault!58297 () ValueCell!17954)

