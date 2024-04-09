; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73460 () Bool)

(assert start!73460)

(declare-fun b_free!14347 () Bool)

(declare-fun b_next!14347 () Bool)

(assert (=> start!73460 (= b_free!14347 (not b_next!14347))))

(declare-fun tp!50545 () Bool)

(declare-fun b_and!23721 () Bool)

(assert (=> start!73460 (= tp!50545 b_and!23721)))

(declare-fun b!857220 () Bool)

(declare-fun res!582407 () Bool)

(declare-fun e!477816 () Bool)

(assert (=> b!857220 (=> (not res!582407) (not e!477816))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49130 0))(
  ( (array!49131 (arr!23592 (Array (_ BitVec 32) (_ BitVec 64))) (size!24033 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49130)

(declare-datatypes ((V!27025 0))(
  ( (V!27026 (val!8289 Int)) )
))
(declare-datatypes ((ValueCell!7802 0))(
  ( (ValueCellFull!7802 (v!10710 V!27025)) (EmptyCell!7802) )
))
(declare-datatypes ((array!49132 0))(
  ( (array!49133 (arr!23593 (Array (_ BitVec 32) ValueCell!7802)) (size!24034 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49132)

(assert (=> b!857220 (= res!582407 (and (= (size!24034 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24033 _keys!868) (size!24034 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857221 () Bool)

(declare-fun res!582406 () Bool)

(assert (=> b!857221 (=> (not res!582406) (not e!477816))))

(declare-datatypes ((List!16793 0))(
  ( (Nil!16790) (Cons!16789 (h!17920 (_ BitVec 64)) (t!23442 List!16793)) )
))
(declare-fun arrayNoDuplicates!0 (array!49130 (_ BitVec 32) List!16793) Bool)

(assert (=> b!857221 (= res!582406 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16790))))

(declare-fun res!582409 () Bool)

(assert (=> start!73460 (=> (not res!582409) (not e!477816))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73460 (= res!582409 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24033 _keys!868))))))

(assert (=> start!73460 e!477816))

(declare-fun tp_is_empty!16483 () Bool)

(assert (=> start!73460 tp_is_empty!16483))

(assert (=> start!73460 true))

(assert (=> start!73460 tp!50545))

(declare-fun array_inv!18672 (array!49130) Bool)

(assert (=> start!73460 (array_inv!18672 _keys!868)))

(declare-fun e!477815 () Bool)

(declare-fun array_inv!18673 (array!49132) Bool)

(assert (=> start!73460 (and (array_inv!18673 _values!688) e!477815)))

(declare-fun mapNonEmpty!26324 () Bool)

(declare-fun mapRes!26324 () Bool)

(declare-fun tp!50546 () Bool)

(declare-fun e!477811 () Bool)

(assert (=> mapNonEmpty!26324 (= mapRes!26324 (and tp!50546 e!477811))))

(declare-fun mapKey!26324 () (_ BitVec 32))

(declare-fun mapValue!26324 () ValueCell!7802)

(declare-fun mapRest!26324 () (Array (_ BitVec 32) ValueCell!7802))

(assert (=> mapNonEmpty!26324 (= (arr!23593 _values!688) (store mapRest!26324 mapKey!26324 mapValue!26324))))

(declare-fun b!857222 () Bool)

(declare-fun res!582408 () Bool)

(assert (=> b!857222 (=> (not res!582408) (not e!477816))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!857222 (= res!582408 (and (= (select (arr!23592 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!857223 () Bool)

(declare-fun res!582413 () Bool)

(assert (=> b!857223 (=> (not res!582413) (not e!477816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857223 (= res!582413 (validMask!0 mask!1196))))

(declare-fun b!857224 () Bool)

(declare-fun res!582411 () Bool)

(assert (=> b!857224 (=> (not res!582411) (not e!477816))))

(assert (=> b!857224 (= res!582411 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24033 _keys!868))))))

(declare-fun b!857225 () Bool)

(declare-fun res!582412 () Bool)

(assert (=> b!857225 (=> (not res!582412) (not e!477816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49130 (_ BitVec 32)) Bool)

(assert (=> b!857225 (= res!582412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857226 () Bool)

(declare-fun e!477814 () Bool)

(assert (=> b!857226 (= e!477815 (and e!477814 mapRes!26324))))

(declare-fun condMapEmpty!26324 () Bool)

(declare-fun mapDefault!26324 () ValueCell!7802)

