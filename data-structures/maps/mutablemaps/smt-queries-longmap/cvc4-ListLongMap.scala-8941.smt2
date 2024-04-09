; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108412 () Bool)

(assert start!108412)

(declare-fun b_free!27923 () Bool)

(declare-fun b_next!27923 () Bool)

(assert (=> start!108412 (= b_free!27923 (not b_next!27923))))

(declare-fun tp!98880 () Bool)

(declare-fun b_and!45993 () Bool)

(assert (=> start!108412 (= tp!98880 b_and!45993)))

(declare-fun b!1278982 () Bool)

(declare-fun e!730765 () Bool)

(declare-fun e!730764 () Bool)

(declare-fun mapRes!51896 () Bool)

(assert (=> b!1278982 (= e!730765 (and e!730764 mapRes!51896))))

(declare-fun condMapEmpty!51896 () Bool)

(declare-datatypes ((V!49853 0))(
  ( (V!49854 (val!16856 Int)) )
))
(declare-datatypes ((ValueCell!15883 0))(
  ( (ValueCellFull!15883 (v!19454 V!49853)) (EmptyCell!15883) )
))
(declare-datatypes ((array!84163 0))(
  ( (array!84164 (arr!40581 (Array (_ BitVec 32) ValueCell!15883)) (size!41132 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84163)

(declare-fun mapDefault!51896 () ValueCell!15883)

