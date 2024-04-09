; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104670 () Bool)

(assert start!104670)

(declare-fun b!1247549 () Bool)

(declare-fun e!707813 () Bool)

(declare-fun tp_is_empty!31363 () Bool)

(assert (=> b!1247549 (= e!707813 tp_is_empty!31363)))

(declare-fun b!1247550 () Bool)

(declare-fun e!707816 () Bool)

(declare-fun mapRes!48799 () Bool)

(assert (=> b!1247550 (= e!707816 (and e!707813 mapRes!48799))))

(declare-fun condMapEmpty!48799 () Bool)

(declare-datatypes ((V!47183 0))(
  ( (V!47184 (val!15744 Int)) )
))
(declare-datatypes ((ValueCell!14918 0))(
  ( (ValueCellFull!14918 (v!18440 V!47183)) (EmptyCell!14918) )
))
(declare-datatypes ((array!80401 0))(
  ( (array!80402 (arr!38765 (Array (_ BitVec 32) ValueCell!14918)) (size!39302 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80401)

(declare-fun mapDefault!48799 () ValueCell!14918)

