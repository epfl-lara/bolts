; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94576 () Bool)

(assert start!94576)

(declare-fun b_free!21845 () Bool)

(declare-fun b_next!21845 () Bool)

(assert (=> start!94576 (= b_free!21845 (not b_next!21845))))

(declare-fun tp!76985 () Bool)

(declare-fun b_and!34665 () Bool)

(assert (=> start!94576 (= tp!76985 b_and!34665)))

(declare-fun mapIsEmpty!40180 () Bool)

(declare-fun mapRes!40180 () Bool)

(assert (=> mapIsEmpty!40180 mapRes!40180))

(declare-fun b!1069015 () Bool)

(declare-fun e!610069 () Bool)

(declare-fun e!610072 () Bool)

(assert (=> b!1069015 (= e!610069 (and e!610072 mapRes!40180))))

(declare-fun condMapEmpty!40180 () Bool)

(declare-datatypes ((V!39341 0))(
  ( (V!39342 (val!12878 Int)) )
))
(declare-datatypes ((ValueCell!12124 0))(
  ( (ValueCellFull!12124 (v!15494 V!39341)) (EmptyCell!12124) )
))
(declare-datatypes ((array!68260 0))(
  ( (array!68261 (arr!32825 (Array (_ BitVec 32) ValueCell!12124)) (size!33362 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68260)

(declare-fun mapDefault!40180 () ValueCell!12124)

