; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94320 () Bool)

(assert start!94320)

(declare-fun b_free!21647 () Bool)

(declare-fun b_next!21647 () Bool)

(assert (=> start!94320 (= b_free!21647 (not b_next!21647))))

(declare-fun tp!76382 () Bool)

(declare-fun b_and!34437 () Bool)

(assert (=> start!94320 (= tp!76382 b_and!34437)))

(declare-fun b!1066151 () Bool)

(declare-fun e!607956 () Bool)

(declare-fun e!607955 () Bool)

(declare-fun mapRes!39874 () Bool)

(assert (=> b!1066151 (= e!607956 (and e!607955 mapRes!39874))))

(declare-fun condMapEmpty!39874 () Bool)

(declare-datatypes ((V!39077 0))(
  ( (V!39078 (val!12779 Int)) )
))
(declare-datatypes ((ValueCell!12025 0))(
  ( (ValueCellFull!12025 (v!15393 V!39077)) (EmptyCell!12025) )
))
(declare-datatypes ((array!67874 0))(
  ( (array!67875 (arr!32635 (Array (_ BitVec 32) ValueCell!12025)) (size!33172 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67874)

(declare-fun mapDefault!39874 () ValueCell!12025)

