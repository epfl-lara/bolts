; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84436 () Bool)

(assert start!84436)

(declare-fun b_free!19979 () Bool)

(declare-fun b_next!19979 () Bool)

(assert (=> start!84436 (= b_free!19979 (not b_next!19979))))

(declare-fun tp!69715 () Bool)

(declare-fun b_and!32039 () Bool)

(assert (=> start!84436 (= tp!69715 b_and!32039)))

(declare-fun b!987128 () Bool)

(declare-fun e!556675 () Bool)

(declare-fun tp_is_empty!23195 () Bool)

(assert (=> b!987128 (= e!556675 tp_is_empty!23195)))

(declare-fun b!987129 () Bool)

(declare-fun e!556672 () Bool)

(declare-fun mapRes!36824 () Bool)

(assert (=> b!987129 (= e!556672 (and e!556675 mapRes!36824))))

(declare-fun condMapEmpty!36824 () Bool)

(declare-datatypes ((V!35909 0))(
  ( (V!35910 (val!11648 Int)) )
))
(declare-datatypes ((ValueCell!11116 0))(
  ( (ValueCellFull!11116 (v!14211 V!35909)) (EmptyCell!11116) )
))
(declare-datatypes ((array!62339 0))(
  ( (array!62340 (arr!30022 (Array (_ BitVec 32) ValueCell!11116)) (size!30502 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62339)

(declare-fun mapDefault!36824 () ValueCell!11116)

