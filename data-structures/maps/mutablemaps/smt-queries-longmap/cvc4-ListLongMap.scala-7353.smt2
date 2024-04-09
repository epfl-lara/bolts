; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93862 () Bool)

(assert start!93862)

(declare-fun b_free!21299 () Bool)

(declare-fun b_next!21299 () Bool)

(assert (=> start!93862 (= b_free!21299 (not b_next!21299))))

(declare-fun tp!75320 () Bool)

(declare-fun b_and!34031 () Bool)

(assert (=> start!93862 (= tp!75320 b_and!34031)))

(declare-fun b!1061151 () Bool)

(declare-fun e!604288 () Bool)

(declare-fun tp_is_empty!25109 () Bool)

(assert (=> b!1061151 (= e!604288 tp_is_empty!25109)))

(declare-fun b!1061152 () Bool)

(declare-fun e!604292 () Bool)

(declare-fun mapRes!39334 () Bool)

(assert (=> b!1061152 (= e!604292 (and e!604288 mapRes!39334))))

(declare-fun condMapEmpty!39334 () Bool)

(declare-datatypes ((V!38613 0))(
  ( (V!38614 (val!12605 Int)) )
))
(declare-datatypes ((ValueCell!11851 0))(
  ( (ValueCellFull!11851 (v!15216 V!38613)) (EmptyCell!11851) )
))
(declare-datatypes ((array!67206 0))(
  ( (array!67207 (arr!32307 (Array (_ BitVec 32) ValueCell!11851)) (size!32844 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67206)

(declare-fun mapDefault!39334 () ValueCell!11851)

