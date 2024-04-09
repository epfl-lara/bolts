; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40484 () Bool)

(assert start!40484)

(declare-fun b_free!10547 () Bool)

(declare-fun b_next!10547 () Bool)

(assert (=> start!40484 (= b_free!10547 (not b_next!10547))))

(declare-fun tp!37418 () Bool)

(declare-fun b_and!18549 () Bool)

(assert (=> start!40484 (= tp!37418 b_and!18549)))

(declare-fun b!445510 () Bool)

(declare-fun e!261831 () Bool)

(declare-fun e!261837 () Bool)

(declare-fun mapRes!19419 () Bool)

(assert (=> b!445510 (= e!261831 (and e!261837 mapRes!19419))))

(declare-fun condMapEmpty!19419 () Bool)

(declare-datatypes ((V!16919 0))(
  ( (V!16920 (val!5975 Int)) )
))
(declare-datatypes ((ValueCell!5587 0))(
  ( (ValueCellFull!5587 (v!8222 V!16919)) (EmptyCell!5587) )
))
(declare-datatypes ((array!27491 0))(
  ( (array!27492 (arr!13190 (Array (_ BitVec 32) ValueCell!5587)) (size!13542 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27491)

(declare-fun mapDefault!19419 () ValueCell!5587)

