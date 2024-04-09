; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105312 () Bool)

(assert start!105312)

(declare-fun b_free!26971 () Bool)

(declare-fun b_next!26971 () Bool)

(assert (=> start!105312 (= b_free!26971 (not b_next!26971))))

(declare-fun tp!94421 () Bool)

(declare-fun b_and!44807 () Bool)

(assert (=> start!105312 (= tp!94421 b_and!44807)))

(declare-fun mapIsEmpty!49588 () Bool)

(declare-fun mapRes!49588 () Bool)

(assert (=> mapIsEmpty!49588 mapRes!49588))

(declare-fun b!1254363 () Bool)

(declare-fun e!712796 () Bool)

(declare-fun e!712799 () Bool)

(assert (=> b!1254363 (= e!712796 (and e!712799 mapRes!49588))))

(declare-fun condMapEmpty!49588 () Bool)

(declare-datatypes ((V!47863 0))(
  ( (V!47864 (val!15999 Int)) )
))
(declare-datatypes ((ValueCell!15173 0))(
  ( (ValueCellFull!15173 (v!18698 V!47863)) (EmptyCell!15173) )
))
(declare-datatypes ((array!81381 0))(
  ( (array!81382 (arr!39247 (Array (_ BitVec 32) ValueCell!15173)) (size!39784 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81381)

(declare-fun mapDefault!49588 () ValueCell!15173)

