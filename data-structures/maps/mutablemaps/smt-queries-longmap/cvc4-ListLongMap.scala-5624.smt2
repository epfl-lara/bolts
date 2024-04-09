; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73560 () Bool)

(assert start!73560)

(declare-fun b_free!14447 () Bool)

(declare-fun b_next!14447 () Bool)

(assert (=> start!73560 (= b_free!14447 (not b_next!14447))))

(declare-fun tp!50845 () Bool)

(declare-fun b_and!23891 () Bool)

(assert (=> start!73560 (= tp!50845 b_and!23891)))

(declare-fun b!859292 () Bool)

(declare-fun res!583971 () Bool)

(declare-fun e!478903 () Bool)

(assert (=> b!859292 (=> (not res!583971) (not e!478903))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49324 0))(
  ( (array!49325 (arr!23689 (Array (_ BitVec 32) (_ BitVec 64))) (size!24130 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49324)

(assert (=> b!859292 (= res!583971 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24130 _keys!868))))))

(declare-fun b!859293 () Bool)

(declare-fun res!583959 () Bool)

(assert (=> b!859293 (=> (not res!583959) (not e!478903))))

(declare-datatypes ((List!16874 0))(
  ( (Nil!16871) (Cons!16870 (h!18001 (_ BitVec 64)) (t!23595 List!16874)) )
))
(declare-fun arrayNoDuplicates!0 (array!49324 (_ BitVec 32) List!16874) Bool)

(assert (=> b!859293 (= res!583959 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16871))))

(declare-fun b!859294 () Bool)

(declare-fun res!583963 () Bool)

(assert (=> b!859294 (=> (not res!583963) (not e!478903))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27157 0))(
  ( (V!27158 (val!8339 Int)) )
))
(declare-datatypes ((ValueCell!7852 0))(
  ( (ValueCellFull!7852 (v!10760 V!27157)) (EmptyCell!7852) )
))
(declare-datatypes ((array!49326 0))(
  ( (array!49327 (arr!23690 (Array (_ BitVec 32) ValueCell!7852)) (size!24131 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49326)

(assert (=> b!859294 (= res!583963 (and (= (size!24131 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24130 _keys!868) (size!24131 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859295 () Bool)

(declare-fun res!583969 () Bool)

(declare-fun e!478904 () Bool)

(assert (=> b!859295 (=> res!583969 e!478904)))

(declare-fun noDuplicate!1301 (List!16874) Bool)

(assert (=> b!859295 (= res!583969 (not (noDuplicate!1301 Nil!16871)))))

(declare-fun mapNonEmpty!26474 () Bool)

(declare-fun mapRes!26474 () Bool)

(declare-fun tp!50846 () Bool)

(declare-fun e!478900 () Bool)

(assert (=> mapNonEmpty!26474 (= mapRes!26474 (and tp!50846 e!478900))))

(declare-fun mapKey!26474 () (_ BitVec 32))

(declare-fun mapValue!26474 () ValueCell!7852)

(declare-fun mapRest!26474 () (Array (_ BitVec 32) ValueCell!7852))

(assert (=> mapNonEmpty!26474 (= (arr!23690 _values!688) (store mapRest!26474 mapKey!26474 mapValue!26474))))

(declare-fun b!859296 () Bool)

(assert (=> b!859296 (= e!478904 true)))

(declare-fun lt!387214 () Bool)

(declare-fun contains!4219 (List!16874 (_ BitVec 64)) Bool)

(assert (=> b!859296 (= lt!387214 (contains!4219 Nil!16871 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859297 () Bool)

(declare-fun e!478905 () Bool)

(declare-fun e!478898 () Bool)

(assert (=> b!859297 (= e!478905 (and e!478898 mapRes!26474))))

(declare-fun condMapEmpty!26474 () Bool)

(declare-fun mapDefault!26474 () ValueCell!7852)

