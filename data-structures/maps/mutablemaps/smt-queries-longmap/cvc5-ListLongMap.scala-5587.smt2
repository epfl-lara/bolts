; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73334 () Bool)

(assert start!73334)

(declare-fun b_free!14221 () Bool)

(declare-fun b_next!14221 () Bool)

(assert (=> start!73334 (= b_free!14221 (not b_next!14221))))

(declare-fun tp!50167 () Bool)

(declare-fun b_and!23595 () Bool)

(assert (=> start!73334 (= tp!50167 b_and!23595)))

(declare-fun b!855022 () Bool)

(declare-fun e!476747 () Bool)

(declare-fun tp_is_empty!16357 () Bool)

(assert (=> b!855022 (= e!476747 tp_is_empty!16357)))

(declare-fun b!855023 () Bool)

(declare-fun res!580780 () Bool)

(declare-fun e!476748 () Bool)

(assert (=> b!855023 (=> (not res!580780) (not e!476748))))

(declare-datatypes ((array!48890 0))(
  ( (array!48891 (arr!23472 (Array (_ BitVec 32) (_ BitVec 64))) (size!23913 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48890)

(declare-datatypes ((List!16704 0))(
  ( (Nil!16701) (Cons!16700 (h!17831 (_ BitVec 64)) (t!23353 List!16704)) )
))
(declare-fun arrayNoDuplicates!0 (array!48890 (_ BitVec 32) List!16704) Bool)

(assert (=> b!855023 (= res!580780 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16701))))

(declare-fun b!855024 () Bool)

(declare-fun res!580775 () Bool)

(assert (=> b!855024 (=> (not res!580775) (not e!476748))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!855024 (= res!580775 (and (= (select (arr!23472 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26135 () Bool)

(declare-fun mapRes!26135 () Bool)

(declare-fun tp!50168 () Bool)

(declare-fun e!476750 () Bool)

(assert (=> mapNonEmpty!26135 (= mapRes!26135 (and tp!50168 e!476750))))

(declare-fun mapKey!26135 () (_ BitVec 32))

(declare-datatypes ((V!26857 0))(
  ( (V!26858 (val!8226 Int)) )
))
(declare-datatypes ((ValueCell!7739 0))(
  ( (ValueCellFull!7739 (v!10647 V!26857)) (EmptyCell!7739) )
))
(declare-fun mapValue!26135 () ValueCell!7739)

(declare-datatypes ((array!48892 0))(
  ( (array!48893 (arr!23473 (Array (_ BitVec 32) ValueCell!7739)) (size!23914 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48892)

(declare-fun mapRest!26135 () (Array (_ BitVec 32) ValueCell!7739))

(assert (=> mapNonEmpty!26135 (= (arr!23473 _values!688) (store mapRest!26135 mapKey!26135 mapValue!26135))))

(declare-fun b!855025 () Bool)

(declare-fun res!580778 () Bool)

(assert (=> b!855025 (=> (not res!580778) (not e!476748))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!855025 (= res!580778 (and (= (size!23914 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23913 _keys!868) (size!23914 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855026 () Bool)

(declare-fun res!580776 () Bool)

(assert (=> b!855026 (=> (not res!580776) (not e!476748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48890 (_ BitVec 32)) Bool)

(assert (=> b!855026 (= res!580776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855027 () Bool)

(declare-fun res!580782 () Bool)

(assert (=> b!855027 (=> (not res!580782) (not e!476748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855027 (= res!580782 (validKeyInArray!0 k!854))))

(declare-fun res!580781 () Bool)

(assert (=> start!73334 (=> (not res!580781) (not e!476748))))

(assert (=> start!73334 (= res!580781 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23913 _keys!868))))))

(assert (=> start!73334 e!476748))

(assert (=> start!73334 tp_is_empty!16357))

(assert (=> start!73334 true))

(assert (=> start!73334 tp!50167))

(declare-fun array_inv!18584 (array!48890) Bool)

(assert (=> start!73334 (array_inv!18584 _keys!868)))

(declare-fun e!476751 () Bool)

(declare-fun array_inv!18585 (array!48892) Bool)

(assert (=> start!73334 (and (array_inv!18585 _values!688) e!476751)))

(declare-fun b!855028 () Bool)

(assert (=> b!855028 (= e!476751 (and e!476747 mapRes!26135))))

(declare-fun condMapEmpty!26135 () Bool)

(declare-fun mapDefault!26135 () ValueCell!7739)

