; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94808 () Bool)

(assert start!94808)

(declare-fun b_free!22025 () Bool)

(declare-fun b_next!22025 () Bool)

(assert (=> start!94808 (= b_free!22025 (not b_next!22025))))

(declare-fun tp!77535 () Bool)

(declare-fun b_and!34873 () Bool)

(assert (=> start!94808 (= tp!77535 b_and!34873)))

(declare-fun b!1071592 () Bool)

(declare-fun e!611969 () Bool)

(declare-fun e!611968 () Bool)

(declare-fun mapRes!40459 () Bool)

(assert (=> b!1071592 (= e!611969 (and e!611968 mapRes!40459))))

(declare-fun condMapEmpty!40459 () Bool)

(declare-datatypes ((V!39581 0))(
  ( (V!39582 (val!12968 Int)) )
))
(declare-datatypes ((ValueCell!12214 0))(
  ( (ValueCellFull!12214 (v!15585 V!39581)) (EmptyCell!12214) )
))
(declare-datatypes ((array!68600 0))(
  ( (array!68601 (arr!32992 (Array (_ BitVec 32) ValueCell!12214)) (size!33529 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68600)

(declare-fun mapDefault!40459 () ValueCell!12214)

