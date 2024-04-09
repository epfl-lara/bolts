; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73622 () Bool)

(assert start!73622)

(declare-fun b_free!14509 () Bool)

(declare-fun b_next!14509 () Bool)

(assert (=> start!73622 (= b_free!14509 (not b_next!14509))))

(declare-fun tp!51031 () Bool)

(declare-fun b_and!24015 () Bool)

(assert (=> start!73622 (= tp!51031 b_and!24015)))

(declare-fun b!860895 () Bool)

(declare-fun e!479714 () Bool)

(declare-fun e!479720 () Bool)

(declare-fun mapRes!26567 () Bool)

(assert (=> b!860895 (= e!479714 (and e!479720 mapRes!26567))))

(declare-fun condMapEmpty!26567 () Bool)

(declare-datatypes ((V!27241 0))(
  ( (V!27242 (val!8370 Int)) )
))
(declare-datatypes ((ValueCell!7883 0))(
  ( (ValueCellFull!7883 (v!10791 V!27241)) (EmptyCell!7883) )
))
(declare-datatypes ((array!49440 0))(
  ( (array!49441 (arr!23747 (Array (_ BitVec 32) ValueCell!7883)) (size!24188 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49440)

(declare-fun mapDefault!26567 () ValueCell!7883)

