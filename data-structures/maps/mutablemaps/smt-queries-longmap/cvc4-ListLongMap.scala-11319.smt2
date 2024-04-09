; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131854 () Bool)

(assert start!131854)

(declare-fun b!1543226 () Bool)

(declare-fun res!1058963 () Bool)

(declare-fun e!858846 () Bool)

(assert (=> b!1543226 (=> (not res!1058963) (not e!858846))))

(declare-datatypes ((array!102801 0))(
  ( (array!102802 (arr!49598 (Array (_ BitVec 32) (_ BitVec 64))) (size!50149 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102801)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58857 0))(
  ( (V!58858 (val!18983 Int)) )
))
(declare-datatypes ((ValueCell!17995 0))(
  ( (ValueCellFull!17995 (v!21781 V!58857)) (EmptyCell!17995) )
))
(declare-datatypes ((array!102803 0))(
  ( (array!102804 (arr!49599 (Array (_ BitVec 32) ValueCell!17995)) (size!50150 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102803)

(assert (=> b!1543226 (= res!1058963 (and (= (size!50150 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50149 _keys!618) (size!50150 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1543227 () Bool)

(declare-fun e!858845 () Bool)

(declare-fun tp_is_empty!37811 () Bool)

(assert (=> b!1543227 (= e!858845 tp_is_empty!37811)))

(declare-fun res!1058961 () Bool)

(assert (=> start!131854 (=> (not res!1058961) (not e!858846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131854 (= res!1058961 (validMask!0 mask!926))))

(assert (=> start!131854 e!858846))

(assert (=> start!131854 true))

(declare-fun e!858844 () Bool)

(declare-fun array_inv!38511 (array!102803) Bool)

(assert (=> start!131854 (and (array_inv!38511 _values!470) e!858844)))

(declare-fun array_inv!38512 (array!102801) Bool)

(assert (=> start!131854 (array_inv!38512 _keys!618)))

(declare-fun mapIsEmpty!58420 () Bool)

(declare-fun mapRes!58420 () Bool)

(assert (=> mapIsEmpty!58420 mapRes!58420))

(declare-fun b!1543228 () Bool)

(assert (=> b!1543228 (= e!858846 false)))

(declare-fun lt!665891 () Bool)

(declare-datatypes ((List!36062 0))(
  ( (Nil!36059) (Cons!36058 (h!37504 (_ BitVec 64)) (t!50763 List!36062)) )
))
(declare-fun arrayNoDuplicates!0 (array!102801 (_ BitVec 32) List!36062) Bool)

(assert (=> b!1543228 (= lt!665891 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36059))))

(declare-fun b!1543229 () Bool)

(declare-fun e!858847 () Bool)

(assert (=> b!1543229 (= e!858847 tp_is_empty!37811)))

(declare-fun b!1543230 () Bool)

(declare-fun res!1058962 () Bool)

(assert (=> b!1543230 (=> (not res!1058962) (not e!858846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102801 (_ BitVec 32)) Bool)

(assert (=> b!1543230 (= res!1058962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1543231 () Bool)

(assert (=> b!1543231 (= e!858844 (and e!858847 mapRes!58420))))

(declare-fun condMapEmpty!58420 () Bool)

(declare-fun mapDefault!58420 () ValueCell!17995)

