; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107094 () Bool)

(assert start!107094)

(declare-fun b_free!27563 () Bool)

(declare-fun b_next!27563 () Bool)

(assert (=> start!107094 (= b_free!27563 (not b_next!27563))))

(declare-fun tp!96916 () Bool)

(declare-fun b_and!45605 () Bool)

(assert (=> start!107094 (= tp!96916 b_and!45605)))

(declare-fun b!1269193 () Bool)

(declare-fun e!723411 () Bool)

(declare-fun tp_is_empty!32747 () Bool)

(assert (=> b!1269193 (= e!723411 tp_is_empty!32747)))

(declare-fun b!1269194 () Bool)

(declare-fun e!723413 () Bool)

(declare-fun mapRes!50701 () Bool)

(assert (=> b!1269194 (= e!723413 (and e!723411 mapRes!50701))))

(declare-fun condMapEmpty!50701 () Bool)

(declare-datatypes ((V!48855 0))(
  ( (V!48856 (val!16448 Int)) )
))
(declare-datatypes ((ValueCell!15520 0))(
  ( (ValueCellFull!15520 (v!19083 V!48855)) (EmptyCell!15520) )
))
(declare-datatypes ((array!82737 0))(
  ( (array!82738 (arr!39901 (Array (_ BitVec 32) ValueCell!15520)) (size!40438 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82737)

(declare-fun mapDefault!50701 () ValueCell!15520)

