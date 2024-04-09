; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73616 () Bool)

(assert start!73616)

(declare-fun b_free!14503 () Bool)

(declare-fun b_next!14503 () Bool)

(assert (=> start!73616 (= b_free!14503 (not b_next!14503))))

(declare-fun tp!51014 () Bool)

(declare-fun b_and!24003 () Bool)

(assert (=> start!73616 (= tp!51014 b_and!24003)))

(declare-fun b!860754 () Bool)

(declare-fun e!479646 () Bool)

(declare-fun e!479643 () Bool)

(declare-fun mapRes!26558 () Bool)

(assert (=> b!860754 (= e!479646 (and e!479643 mapRes!26558))))

(declare-fun condMapEmpty!26558 () Bool)

(declare-datatypes ((V!27233 0))(
  ( (V!27234 (val!8367 Int)) )
))
(declare-datatypes ((ValueCell!7880 0))(
  ( (ValueCellFull!7880 (v!10788 V!27233)) (EmptyCell!7880) )
))
(declare-datatypes ((array!49430 0))(
  ( (array!49431 (arr!23742 (Array (_ BitVec 32) ValueCell!7880)) (size!24183 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49430)

(declare-fun mapDefault!26558 () ValueCell!7880)

