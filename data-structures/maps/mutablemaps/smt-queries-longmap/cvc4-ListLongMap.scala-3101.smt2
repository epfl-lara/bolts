; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43558 () Bool)

(assert start!43558)

(declare-fun b_free!12329 () Bool)

(declare-fun b_next!12329 () Bool)

(assert (=> start!43558 (= b_free!12329 (not b_next!12329))))

(declare-fun tp!43269 () Bool)

(declare-fun b_and!21107 () Bool)

(assert (=> start!43558 (= tp!43269 b_and!21107)))

(declare-fun b!482383 () Bool)

(declare-fun e!283883 () Bool)

(declare-fun e!283884 () Bool)

(declare-fun mapRes!22471 () Bool)

(assert (=> b!482383 (= e!283883 (and e!283884 mapRes!22471))))

(declare-fun condMapEmpty!22471 () Bool)

(declare-datatypes ((V!19525 0))(
  ( (V!19526 (val!6968 Int)) )
))
(declare-datatypes ((ValueCell!6559 0))(
  ( (ValueCellFull!6559 (v!9257 V!19525)) (EmptyCell!6559) )
))
(declare-datatypes ((array!31307 0))(
  ( (array!31308 (arr!15053 (Array (_ BitVec 32) ValueCell!6559)) (size!15411 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31307)

(declare-fun mapDefault!22471 () ValueCell!6559)

