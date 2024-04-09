; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108474 () Bool)

(assert start!108474)

(declare-fun b_free!27985 () Bool)

(declare-fun b_next!27985 () Bool)

(assert (=> start!108474 (= b_free!27985 (not b_next!27985))))

(declare-fun tp!99066 () Bool)

(declare-fun b_and!46055 () Bool)

(assert (=> start!108474 (= tp!99066 b_and!46055)))

(declare-fun b!1279735 () Bool)

(declare-fun e!731226 () Bool)

(declare-fun e!731228 () Bool)

(declare-fun mapRes!51989 () Bool)

(assert (=> b!1279735 (= e!731226 (and e!731228 mapRes!51989))))

(declare-fun condMapEmpty!51989 () Bool)

(declare-datatypes ((V!49937 0))(
  ( (V!49938 (val!16887 Int)) )
))
(declare-datatypes ((ValueCell!15914 0))(
  ( (ValueCellFull!15914 (v!19485 V!49937)) (EmptyCell!15914) )
))
(declare-datatypes ((array!84285 0))(
  ( (array!84286 (arr!40642 (Array (_ BitVec 32) ValueCell!15914)) (size!41193 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84285)

(declare-fun mapDefault!51989 () ValueCell!15914)

