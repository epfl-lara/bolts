; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94438 () Bool)

(assert start!94438)

(declare-fun b_free!21743 () Bool)

(declare-fun b_next!21743 () Bool)

(assert (=> start!94438 (= b_free!21743 (not b_next!21743))))

(declare-fun tp!76673 () Bool)

(declare-fun b_and!34545 () Bool)

(assert (=> start!94438 (= tp!76673 b_and!34545)))

(declare-fun b!1067407 () Bool)

(declare-fun e!608857 () Bool)

(declare-fun e!608858 () Bool)

(declare-fun mapRes!40021 () Bool)

(assert (=> b!1067407 (= e!608857 (and e!608858 mapRes!40021))))

(declare-fun condMapEmpty!40021 () Bool)

(declare-datatypes ((V!39205 0))(
  ( (V!39206 (val!12827 Int)) )
))
(declare-datatypes ((ValueCell!12073 0))(
  ( (ValueCellFull!12073 (v!15442 V!39205)) (EmptyCell!12073) )
))
(declare-datatypes ((array!68060 0))(
  ( (array!68061 (arr!32727 (Array (_ BitVec 32) ValueCell!12073)) (size!33264 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68060)

(declare-fun mapDefault!40021 () ValueCell!12073)

