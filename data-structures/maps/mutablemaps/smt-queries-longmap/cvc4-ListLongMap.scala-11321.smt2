; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131866 () Bool)

(assert start!131866)

(declare-fun mapIsEmpty!58438 () Bool)

(declare-fun mapRes!58438 () Bool)

(assert (=> mapIsEmpty!58438 mapRes!58438))

(declare-fun b!1543334 () Bool)

(declare-fun e!858935 () Bool)

(declare-fun tp_is_empty!37823 () Bool)

(assert (=> b!1543334 (= e!858935 tp_is_empty!37823)))

(declare-fun b!1543335 () Bool)

(declare-fun res!1059017 () Bool)

(declare-fun e!858933 () Bool)

(assert (=> b!1543335 (=> (not res!1059017) (not e!858933))))

(declare-datatypes ((array!102825 0))(
  ( (array!102826 (arr!49610 (Array (_ BitVec 32) (_ BitVec 64))) (size!50161 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102825)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102825 (_ BitVec 32)) Bool)

(assert (=> b!1543335 (= res!1059017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543336 () Bool)

(declare-fun res!1059015 () Bool)

(assert (=> b!1543336 (=> (not res!1059015) (not e!858933))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-datatypes ((V!58873 0))(
  ( (V!58874 (val!18989 Int)) )
))
(declare-datatypes ((ValueCell!18001 0))(
  ( (ValueCellFull!18001 (v!21787 V!58873)) (EmptyCell!18001) )
))
(declare-datatypes ((array!102827 0))(
  ( (array!102828 (arr!49611 (Array (_ BitVec 32) ValueCell!18001)) (size!50162 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102827)

(assert (=> b!1543336 (= res!1059015 (and (= (size!50162 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50161 _keys!618) (size!50162 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543337 () Bool)

(assert (=> b!1543337 (= e!858933 false)))

(declare-fun lt!665909 () Bool)

(declare-datatypes ((List!36068 0))(
  ( (Nil!36065) (Cons!36064 (h!37510 (_ BitVec 64)) (t!50769 List!36068)) )
))
(declare-fun arrayNoDuplicates!0 (array!102825 (_ BitVec 32) List!36068) Bool)

(assert (=> b!1543337 (= lt!665909 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36065))))

(declare-fun b!1543338 () Bool)

(declare-fun e!858936 () Bool)

(assert (=> b!1543338 (= e!858936 tp_is_empty!37823)))

(declare-fun b!1543339 () Bool)

(declare-fun e!858934 () Bool)

(assert (=> b!1543339 (= e!858934 (and e!858936 mapRes!58438))))

(declare-fun condMapEmpty!58438 () Bool)

(declare-fun mapDefault!58438 () ValueCell!18001)

