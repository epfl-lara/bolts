; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42162 () Bool)

(assert start!42162)

(declare-fun b_free!11687 () Bool)

(declare-fun b_next!11687 () Bool)

(assert (=> start!42162 (= b_free!11687 (not b_next!11687))))

(declare-fun tp!41082 () Bool)

(declare-fun b_and!20127 () Bool)

(assert (=> start!42162 (= tp!41082 b_and!20127)))

(declare-fun b!470399 () Bool)

(declare-fun e!275601 () Bool)

(declare-fun tp_is_empty!13115 () Bool)

(assert (=> b!470399 (= e!275601 tp_is_empty!13115)))

(declare-fun b!470400 () Bool)

(declare-fun e!275603 () Bool)

(declare-fun mapRes!21373 () Bool)

(assert (=> b!470400 (= e!275603 (and e!275601 mapRes!21373))))

(declare-fun condMapEmpty!21373 () Bool)

(declare-datatypes ((V!18591 0))(
  ( (V!18592 (val!6602 Int)) )
))
(declare-datatypes ((ValueCell!6214 0))(
  ( (ValueCellFull!6214 (v!8889 V!18591)) (EmptyCell!6214) )
))
(declare-datatypes ((array!29961 0))(
  ( (array!29962 (arr!14401 (Array (_ BitVec 32) ValueCell!6214)) (size!14753 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29961)

(declare-fun mapDefault!21373 () ValueCell!6214)

