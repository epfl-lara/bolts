; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73376 () Bool)

(assert start!73376)

(declare-fun b_free!14263 () Bool)

(declare-fun b_next!14263 () Bool)

(assert (=> start!73376 (= b_free!14263 (not b_next!14263))))

(declare-fun tp!50293 () Bool)

(declare-fun b_and!23637 () Bool)

(assert (=> start!73376 (= tp!50293 b_and!23637)))

(declare-fun b!855715 () Bool)

(declare-fun e!477062 () Bool)

(declare-fun tp_is_empty!16399 () Bool)

(assert (=> b!855715 (= e!477062 tp_is_empty!16399)))

(declare-fun mapIsEmpty!26198 () Bool)

(declare-fun mapRes!26198 () Bool)

(assert (=> mapIsEmpty!26198 mapRes!26198))

(declare-fun mapNonEmpty!26198 () Bool)

(declare-fun tp!50294 () Bool)

(declare-fun e!477066 () Bool)

(assert (=> mapNonEmpty!26198 (= mapRes!26198 (and tp!50294 e!477066))))

(declare-datatypes ((V!26913 0))(
  ( (V!26914 (val!8247 Int)) )
))
(declare-datatypes ((ValueCell!7760 0))(
  ( (ValueCellFull!7760 (v!10668 V!26913)) (EmptyCell!7760) )
))
(declare-fun mapValue!26198 () ValueCell!7760)

(declare-fun mapRest!26198 () (Array (_ BitVec 32) ValueCell!7760))

(declare-fun mapKey!26198 () (_ BitVec 32))

(declare-datatypes ((array!48970 0))(
  ( (array!48971 (arr!23512 (Array (_ BitVec 32) ValueCell!7760)) (size!23953 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48970)

(assert (=> mapNonEmpty!26198 (= (arr!23512 _values!688) (store mapRest!26198 mapKey!26198 mapValue!26198))))

(declare-fun b!855717 () Bool)

(assert (=> b!855717 (= e!477066 tp_is_empty!16399)))

(declare-fun b!855718 () Bool)

(declare-fun res!581283 () Bool)

(declare-fun e!477063 () Bool)

(assert (=> b!855718 (=> (not res!581283) (not e!477063))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855718 (= res!581283 (validKeyInArray!0 k!854))))

(declare-fun b!855719 () Bool)

(declare-fun e!477064 () Bool)

(assert (=> b!855719 (= e!477064 (and e!477062 mapRes!26198))))

(declare-fun condMapEmpty!26198 () Bool)

(declare-fun mapDefault!26198 () ValueCell!7760)

