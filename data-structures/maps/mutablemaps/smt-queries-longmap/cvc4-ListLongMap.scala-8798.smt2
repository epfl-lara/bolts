; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107052 () Bool)

(assert start!107052)

(declare-fun b!1268745 () Bool)

(declare-fun e!723094 () Bool)

(declare-fun e!723098 () Bool)

(declare-fun mapRes!50638 () Bool)

(assert (=> b!1268745 (= e!723094 (and e!723098 mapRes!50638))))

(declare-fun condMapEmpty!50638 () Bool)

(declare-datatypes ((V!48799 0))(
  ( (V!48800 (val!16427 Int)) )
))
(declare-datatypes ((ValueCell!15499 0))(
  ( (ValueCellFull!15499 (v!19062 V!48799)) (EmptyCell!15499) )
))
(declare-datatypes ((array!82655 0))(
  ( (array!82656 (arr!39860 (Array (_ BitVec 32) ValueCell!15499)) (size!40397 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82655)

(declare-fun mapDefault!50638 () ValueCell!15499)

