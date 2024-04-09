; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73266 () Bool)

(assert start!73266)

(declare-fun b_free!14153 () Bool)

(declare-fun b_next!14153 () Bool)

(assert (=> start!73266 (= b_free!14153 (not b_next!14153))))

(declare-fun tp!49963 () Bool)

(declare-fun b_and!23483 () Bool)

(assert (=> start!73266 (= tp!49963 b_and!23483)))

(declare-fun b!853600 () Bool)

(declare-fun res!579840 () Bool)

(declare-fun e!476050 () Bool)

(assert (=> b!853600 (=> (not res!579840) (not e!476050))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!48760 0))(
  ( (array!48761 (arr!23407 (Array (_ BitVec 32) (_ BitVec 64))) (size!23848 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48760)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!853600 (= res!579840 (and (= (select (arr!23407 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!853601 () Bool)

(declare-fun res!579839 () Bool)

(assert (=> b!853601 (=> (not res!579839) (not e!476050))))

(assert (=> b!853601 (= res!579839 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23848 _keys!868))))))

(declare-fun b!853602 () Bool)

(declare-fun e!476049 () Bool)

(declare-fun e!476047 () Bool)

(declare-fun mapRes!26033 () Bool)

(assert (=> b!853602 (= e!476049 (and e!476047 mapRes!26033))))

(declare-fun condMapEmpty!26033 () Bool)

(declare-datatypes ((V!26765 0))(
  ( (V!26766 (val!8192 Int)) )
))
(declare-datatypes ((ValueCell!7705 0))(
  ( (ValueCellFull!7705 (v!10613 V!26765)) (EmptyCell!7705) )
))
(declare-datatypes ((array!48762 0))(
  ( (array!48763 (arr!23408 (Array (_ BitVec 32) ValueCell!7705)) (size!23849 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48762)

(declare-fun mapDefault!26033 () ValueCell!7705)

