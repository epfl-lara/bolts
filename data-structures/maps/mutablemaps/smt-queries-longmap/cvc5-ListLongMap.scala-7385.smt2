; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94108 () Bool)

(assert start!94108)

(declare-fun b_free!21487 () Bool)

(declare-fun b_next!21487 () Bool)

(assert (=> start!94108 (= b_free!21487 (not b_next!21487))))

(declare-fun tp!75893 () Bool)

(declare-fun b_and!34247 () Bool)

(assert (=> start!94108 (= tp!75893 b_and!34247)))

(declare-fun b!1063858 () Bool)

(declare-fun e!606288 () Bool)

(declare-fun tp_is_empty!25297 () Bool)

(assert (=> b!1063858 (= e!606288 tp_is_empty!25297)))

(declare-fun b!1063859 () Bool)

(declare-fun e!606290 () Bool)

(declare-fun e!606286 () Bool)

(declare-fun mapRes!39625 () Bool)

(assert (=> b!1063859 (= e!606290 (and e!606286 mapRes!39625))))

(declare-fun condMapEmpty!39625 () Bool)

(declare-datatypes ((V!38865 0))(
  ( (V!38866 (val!12699 Int)) )
))
(declare-datatypes ((ValueCell!11945 0))(
  ( (ValueCellFull!11945 (v!15312 V!38865)) (EmptyCell!11945) )
))
(declare-datatypes ((array!67566 0))(
  ( (array!67567 (arr!32484 (Array (_ BitVec 32) ValueCell!11945)) (size!33021 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67566)

(declare-fun mapDefault!39625 () ValueCell!11945)

