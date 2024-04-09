; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73910 () Bool)

(assert start!73910)

(declare-fun b_free!14797 () Bool)

(declare-fun b_next!14797 () Bool)

(assert (=> start!73910 (= b_free!14797 (not b_next!14797))))

(declare-fun tp!51896 () Bool)

(declare-fun b_and!24567 () Bool)

(assert (=> start!73910 (= tp!51896 b_and!24567)))

(declare-fun b!867849 () Bool)

(declare-fun res!589787 () Bool)

(declare-fun e!483418 () Bool)

(assert (=> b!867849 (=> (not res!589787) (not e!483418))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867849 (= res!589787 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26999 () Bool)

(declare-fun mapRes!26999 () Bool)

(declare-fun tp!51895 () Bool)

(declare-fun e!483422 () Bool)

(assert (=> mapNonEmpty!26999 (= mapRes!26999 (and tp!51895 e!483422))))

(declare-datatypes ((V!27625 0))(
  ( (V!27626 (val!8514 Int)) )
))
(declare-datatypes ((ValueCell!8027 0))(
  ( (ValueCellFull!8027 (v!10935 V!27625)) (EmptyCell!8027) )
))
(declare-fun mapRest!26999 () (Array (_ BitVec 32) ValueCell!8027))

(declare-fun mapKey!26999 () (_ BitVec 32))

(declare-fun mapValue!26999 () ValueCell!8027)

(declare-datatypes ((array!50004 0))(
  ( (array!50005 (arr!24029 (Array (_ BitVec 32) ValueCell!8027)) (size!24470 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50004)

(assert (=> mapNonEmpty!26999 (= (arr!24029 _values!688) (store mapRest!26999 mapKey!26999 mapValue!26999))))

(declare-fun b!867850 () Bool)

(declare-fun res!589786 () Bool)

(assert (=> b!867850 (=> (not res!589786) (not e!483418))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50006 0))(
  ( (array!50007 (arr!24030 (Array (_ BitVec 32) (_ BitVec 64))) (size!24471 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50006)

(assert (=> b!867850 (= res!589786 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24471 _keys!868))))))

(declare-fun b!867851 () Bool)

(declare-fun res!589793 () Bool)

(assert (=> b!867851 (=> (not res!589793) (not e!483418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50006 (_ BitVec 32)) Bool)

(assert (=> b!867851 (= res!589793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867852 () Bool)

(declare-fun res!589792 () Bool)

(assert (=> b!867852 (=> (not res!589792) (not e!483418))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867852 (= res!589792 (validKeyInArray!0 k!854))))

(declare-fun res!589791 () Bool)

(assert (=> start!73910 (=> (not res!589791) (not e!483418))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73910 (= res!589791 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24471 _keys!868))))))

(assert (=> start!73910 e!483418))

(declare-fun tp_is_empty!16933 () Bool)

(assert (=> start!73910 tp_is_empty!16933))

(assert (=> start!73910 true))

(assert (=> start!73910 tp!51896))

(declare-fun array_inv!18964 (array!50006) Bool)

(assert (=> start!73910 (array_inv!18964 _keys!868)))

(declare-fun e!483423 () Bool)

(declare-fun array_inv!18965 (array!50004) Bool)

(assert (=> start!73910 (and (array_inv!18965 _values!688) e!483423)))

(declare-fun b!867853 () Bool)

(declare-fun e!483419 () Bool)

(assert (=> b!867853 (= e!483423 (and e!483419 mapRes!26999))))

(declare-fun condMapEmpty!26999 () Bool)

(declare-fun mapDefault!26999 () ValueCell!8027)

