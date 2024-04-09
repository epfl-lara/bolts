; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105394 () Bool)

(assert start!105394)

(declare-fun b_free!27031 () Bool)

(declare-fun b_next!27031 () Bool)

(assert (=> start!105394 (= b_free!27031 (not b_next!27031))))

(declare-fun tp!94605 () Bool)

(declare-fun b_and!44879 () Bool)

(assert (=> start!105394 (= tp!94605 b_and!44879)))

(declare-fun b!1255211 () Bool)

(declare-fun e!713402 () Bool)

(declare-fun e!713400 () Bool)

(declare-fun mapRes!49681 () Bool)

(assert (=> b!1255211 (= e!713402 (and e!713400 mapRes!49681))))

(declare-fun condMapEmpty!49681 () Bool)

(declare-datatypes ((V!47943 0))(
  ( (V!47944 (val!16029 Int)) )
))
(declare-datatypes ((ValueCell!15203 0))(
  ( (ValueCellFull!15203 (v!18729 V!47943)) (EmptyCell!15203) )
))
(declare-datatypes ((array!81501 0))(
  ( (array!81502 (arr!39306 (Array (_ BitVec 32) ValueCell!15203)) (size!39843 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81501)

(declare-fun mapDefault!49681 () ValueCell!15203)

