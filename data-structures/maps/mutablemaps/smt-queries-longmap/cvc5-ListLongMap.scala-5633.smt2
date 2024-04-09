; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73610 () Bool)

(assert start!73610)

(declare-fun b_free!14497 () Bool)

(declare-fun b_next!14497 () Bool)

(assert (=> start!73610 (= b_free!14497 (not b_next!14497))))

(declare-fun tp!50996 () Bool)

(declare-fun b_and!23991 () Bool)

(assert (=> start!73610 (= tp!50996 b_and!23991)))

(declare-fun b!860613 () Bool)

(declare-fun e!479576 () Bool)

(declare-fun e!479575 () Bool)

(declare-fun mapRes!26549 () Bool)

(assert (=> b!860613 (= e!479576 (and e!479575 mapRes!26549))))

(declare-fun condMapEmpty!26549 () Bool)

(declare-datatypes ((V!27225 0))(
  ( (V!27226 (val!8364 Int)) )
))
(declare-datatypes ((ValueCell!7877 0))(
  ( (ValueCellFull!7877 (v!10785 V!27225)) (EmptyCell!7877) )
))
(declare-datatypes ((array!49420 0))(
  ( (array!49421 (arr!23737 (Array (_ BitVec 32) ValueCell!7877)) (size!24178 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49420)

(declare-fun mapDefault!26549 () ValueCell!7877)

