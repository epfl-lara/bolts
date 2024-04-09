; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105282 () Bool)

(assert start!105282)

(declare-fun b_free!26941 () Bool)

(declare-fun b_next!26941 () Bool)

(assert (=> start!105282 (= b_free!26941 (not b_next!26941))))

(declare-fun tp!94332 () Bool)

(declare-fun b_and!44777 () Bool)

(assert (=> start!105282 (= tp!94332 b_and!44777)))

(declare-fun b!1254003 () Bool)

(declare-fun e!712529 () Bool)

(declare-fun e!712531 () Bool)

(declare-fun mapRes!49543 () Bool)

(assert (=> b!1254003 (= e!712529 (and e!712531 mapRes!49543))))

(declare-fun condMapEmpty!49543 () Bool)

(declare-datatypes ((V!47823 0))(
  ( (V!47824 (val!15984 Int)) )
))
(declare-datatypes ((ValueCell!15158 0))(
  ( (ValueCellFull!15158 (v!18683 V!47823)) (EmptyCell!15158) )
))
(declare-datatypes ((array!81325 0))(
  ( (array!81326 (arr!39219 (Array (_ BitVec 32) ValueCell!15158)) (size!39756 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81325)

(declare-fun mapDefault!49543 () ValueCell!15158)

