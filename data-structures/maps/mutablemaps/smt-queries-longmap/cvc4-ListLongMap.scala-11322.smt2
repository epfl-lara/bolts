; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131872 () Bool)

(assert start!131872)

(declare-fun b!1543388 () Bool)

(declare-fun res!1059044 () Bool)

(declare-fun e!858982 () Bool)

(assert (=> b!1543388 (=> (not res!1059044) (not e!858982))))

(declare-datatypes ((array!102835 0))(
  ( (array!102836 (arr!49615 (Array (_ BitVec 32) (_ BitVec 64))) (size!50166 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102835)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102835 (_ BitVec 32)) Bool)

(assert (=> b!1543388 (= res!1059044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapNonEmpty!58447 () Bool)

(declare-fun mapRes!58447 () Bool)

(declare-fun tp!110975 () Bool)

(declare-fun e!858979 () Bool)

(assert (=> mapNonEmpty!58447 (= mapRes!58447 (and tp!110975 e!858979))))

(declare-datatypes ((V!58881 0))(
  ( (V!58882 (val!18992 Int)) )
))
(declare-datatypes ((ValueCell!18004 0))(
  ( (ValueCellFull!18004 (v!21790 V!58881)) (EmptyCell!18004) )
))
(declare-fun mapValue!58447 () ValueCell!18004)

(declare-datatypes ((array!102837 0))(
  ( (array!102838 (arr!49616 (Array (_ BitVec 32) ValueCell!18004)) (size!50167 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102837)

(declare-fun mapRest!58447 () (Array (_ BitVec 32) ValueCell!18004))

(declare-fun mapKey!58447 () (_ BitVec 32))

(assert (=> mapNonEmpty!58447 (= (arr!49616 _values!470) (store mapRest!58447 mapKey!58447 mapValue!58447))))

(declare-fun b!1543389 () Bool)

(declare-fun e!858980 () Bool)

(declare-fun tp_is_empty!37829 () Bool)

(assert (=> b!1543389 (= e!858980 tp_is_empty!37829)))

(declare-fun b!1543390 () Bool)

(assert (=> b!1543390 (= e!858979 tp_is_empty!37829)))

(declare-fun b!1543391 () Bool)

(declare-fun e!858978 () Bool)

(assert (=> b!1543391 (= e!858978 (and e!858980 mapRes!58447))))

(declare-fun condMapEmpty!58447 () Bool)

(declare-fun mapDefault!58447 () ValueCell!18004)

