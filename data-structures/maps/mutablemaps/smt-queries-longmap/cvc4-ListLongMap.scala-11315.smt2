; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131830 () Bool)

(assert start!131830)

(declare-fun res!1058855 () Bool)

(declare-fun e!858663 () Bool)

(assert (=> start!131830 (=> (not res!1058855) (not e!858663))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131830 (= res!1058855 (validMask!0 mask!926))))

(assert (=> start!131830 e!858663))

(assert (=> start!131830 true))

(declare-datatypes ((V!58825 0))(
  ( (V!58826 (val!18971 Int)) )
))
(declare-datatypes ((ValueCell!17983 0))(
  ( (ValueCellFull!17983 (v!21769 V!58825)) (EmptyCell!17983) )
))
(declare-datatypes ((array!102759 0))(
  ( (array!102760 (arr!49577 (Array (_ BitVec 32) ValueCell!17983)) (size!50128 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102759)

(declare-fun e!858667 () Bool)

(declare-fun array_inv!38495 (array!102759) Bool)

(assert (=> start!131830 (and (array_inv!38495 _values!470) e!858667)))

(declare-datatypes ((array!102761 0))(
  ( (array!102762 (arr!49578 (Array (_ BitVec 32) (_ BitVec 64))) (size!50129 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102761)

(declare-fun array_inv!38496 (array!102761) Bool)

(assert (=> start!131830 (array_inv!38496 _keys!618)))

(declare-fun mapIsEmpty!58384 () Bool)

(declare-fun mapRes!58384 () Bool)

(assert (=> mapIsEmpty!58384 mapRes!58384))

(declare-fun b!1543010 () Bool)

(assert (=> b!1543010 (= e!858663 false)))

(declare-fun lt!665855 () Bool)

(declare-datatypes ((List!36056 0))(
  ( (Nil!36053) (Cons!36052 (h!37498 (_ BitVec 64)) (t!50757 List!36056)) )
))
(declare-fun arrayNoDuplicates!0 (array!102761 (_ BitVec 32) List!36056) Bool)

(assert (=> b!1543010 (= lt!665855 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36053))))

(declare-fun b!1543011 () Bool)

(declare-fun res!1058854 () Bool)

(assert (=> b!1543011 (=> (not res!1058854) (not e!858663))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102761 (_ BitVec 32)) Bool)

(assert (=> b!1543011 (= res!1058854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543012 () Bool)

(declare-fun e!858666 () Bool)

(declare-fun tp_is_empty!37787 () Bool)

(assert (=> b!1543012 (= e!858666 tp_is_empty!37787)))

(declare-fun b!1543013 () Bool)

(assert (=> b!1543013 (= e!858667 (and e!858666 mapRes!58384))))

(declare-fun condMapEmpty!58384 () Bool)

(declare-fun mapDefault!58384 () ValueCell!17983)

