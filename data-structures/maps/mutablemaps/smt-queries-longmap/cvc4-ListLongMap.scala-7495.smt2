; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94982 () Bool)

(assert start!94982)

(declare-fun b_free!22151 () Bool)

(declare-fun b_next!22151 () Bool)

(assert (=> start!94982 (= b_free!22151 (not b_next!22151))))

(declare-fun tp!77918 () Bool)

(declare-fun b_and!35023 () Bool)

(assert (=> start!94982 (= tp!77918 b_and!35023)))

(declare-fun b!1073481 () Bool)

(declare-fun e!613342 () Bool)

(declare-fun e!613339 () Bool)

(declare-fun mapRes!40654 () Bool)

(assert (=> b!1073481 (= e!613342 (and e!613339 mapRes!40654))))

(declare-fun condMapEmpty!40654 () Bool)

(declare-datatypes ((V!39749 0))(
  ( (V!39750 (val!13031 Int)) )
))
(declare-datatypes ((ValueCell!12277 0))(
  ( (ValueCellFull!12277 (v!15650 V!39749)) (EmptyCell!12277) )
))
(declare-datatypes ((array!68846 0))(
  ( (array!68847 (arr!33113 (Array (_ BitVec 32) ValueCell!12277)) (size!33650 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68846)

(declare-fun mapDefault!40654 () ValueCell!12277)

