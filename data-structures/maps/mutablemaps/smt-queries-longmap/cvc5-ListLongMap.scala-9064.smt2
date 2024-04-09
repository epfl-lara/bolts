; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109204 () Bool)

(assert start!109204)

(declare-fun b_free!28657 () Bool)

(declare-fun b_next!28657 () Bool)

(assert (=> start!109204 (= b_free!28657 (not b_next!28657))))

(declare-fun tp!101091 () Bool)

(declare-fun b_and!46757 () Bool)

(assert (=> start!109204 (= tp!101091 b_and!46757)))

(declare-fun res!857796 () Bool)

(declare-fun e!737024 () Bool)

(assert (=> start!109204 (=> (not res!857796) (not e!737024))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109204 (= res!857796 (validMask!0 mask!2175))))

(assert (=> start!109204 e!737024))

(declare-fun tp_is_empty!34297 () Bool)

(assert (=> start!109204 tp_is_empty!34297))

(assert (=> start!109204 true))

(declare-datatypes ((V!50833 0))(
  ( (V!50834 (val!17223 Int)) )
))
(declare-datatypes ((ValueCell!16250 0))(
  ( (ValueCellFull!16250 (v!19824 V!50833)) (EmptyCell!16250) )
))
(declare-datatypes ((array!85589 0))(
  ( (array!85590 (arr!41291 (Array (_ BitVec 32) ValueCell!16250)) (size!41842 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85589)

(declare-fun e!737025 () Bool)

(declare-fun array_inv!31265 (array!85589) Bool)

(assert (=> start!109204 (and (array_inv!31265 _values!1445) e!737025)))

(declare-datatypes ((array!85591 0))(
  ( (array!85592 (arr!41292 (Array (_ BitVec 32) (_ BitVec 64))) (size!41843 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85591)

(declare-fun array_inv!31266 (array!85591) Bool)

(assert (=> start!109204 (array_inv!31266 _keys!1741)))

(assert (=> start!109204 tp!101091))

(declare-fun b!1291011 () Bool)

(declare-fun e!737026 () Bool)

(declare-fun mapRes!53006 () Bool)

(assert (=> b!1291011 (= e!737025 (and e!737026 mapRes!53006))))

(declare-fun condMapEmpty!53006 () Bool)

(declare-fun mapDefault!53006 () ValueCell!16250)

