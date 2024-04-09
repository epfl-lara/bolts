; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73404 () Bool)

(assert start!73404)

(declare-fun b_free!14291 () Bool)

(declare-fun b_next!14291 () Bool)

(assert (=> start!73404 (= b_free!14291 (not b_next!14291))))

(declare-fun tp!50378 () Bool)

(declare-fun b_and!23665 () Bool)

(assert (=> start!73404 (= tp!50378 b_and!23665)))

(declare-fun b!856212 () Bool)

(declare-fun res!581657 () Bool)

(declare-fun e!477310 () Bool)

(assert (=> b!856212 (=> (not res!581657) (not e!477310))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49024 0))(
  ( (array!49025 (arr!23539 (Array (_ BitVec 32) (_ BitVec 64))) (size!23980 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49024)

(declare-datatypes ((V!26949 0))(
  ( (V!26950 (val!8261 Int)) )
))
(declare-datatypes ((ValueCell!7774 0))(
  ( (ValueCellFull!7774 (v!10682 V!26949)) (EmptyCell!7774) )
))
(declare-datatypes ((array!49026 0))(
  ( (array!49027 (arr!23540 (Array (_ BitVec 32) ValueCell!7774)) (size!23981 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49026)

(assert (=> b!856212 (= res!581657 (and (= (size!23981 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23980 _keys!868) (size!23981 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856213 () Bool)

(declare-fun res!581655 () Bool)

(assert (=> b!856213 (=> (not res!581655) (not e!477310))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856213 (= res!581655 (and (= (select (arr!23539 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!856215 () Bool)

(declare-fun res!581651 () Bool)

(assert (=> b!856215 (=> (not res!581651) (not e!477310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856215 (= res!581651 (validMask!0 mask!1196))))

(declare-fun b!856216 () Bool)

(declare-fun e!477308 () Bool)

(declare-fun tp_is_empty!16427 () Bool)

(assert (=> b!856216 (= e!477308 tp_is_empty!16427)))

(declare-fun mapNonEmpty!26240 () Bool)

(declare-fun mapRes!26240 () Bool)

(declare-fun tp!50377 () Bool)

(declare-fun e!477307 () Bool)

(assert (=> mapNonEmpty!26240 (= mapRes!26240 (and tp!50377 e!477307))))

(declare-fun mapRest!26240 () (Array (_ BitVec 32) ValueCell!7774))

(declare-fun mapValue!26240 () ValueCell!7774)

(declare-fun mapKey!26240 () (_ BitVec 32))

(assert (=> mapNonEmpty!26240 (= (arr!23540 _values!688) (store mapRest!26240 mapKey!26240 mapValue!26240))))

(declare-fun b!856217 () Bool)

(declare-fun e!477309 () Bool)

(assert (=> b!856217 (= e!477309 (and e!477308 mapRes!26240))))

(declare-fun condMapEmpty!26240 () Bool)

(declare-fun mapDefault!26240 () ValueCell!7774)

