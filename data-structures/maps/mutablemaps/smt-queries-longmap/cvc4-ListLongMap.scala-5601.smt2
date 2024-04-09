; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73422 () Bool)

(assert start!73422)

(declare-fun b_free!14309 () Bool)

(declare-fun b_next!14309 () Bool)

(assert (=> start!73422 (= b_free!14309 (not b_next!14309))))

(declare-fun tp!50432 () Bool)

(declare-fun b_and!23683 () Bool)

(assert (=> start!73422 (= tp!50432 b_and!23683)))

(declare-fun b!856536 () Bool)

(declare-fun res!581901 () Bool)

(declare-fun e!477472 () Bool)

(assert (=> b!856536 (=> (not res!581901) (not e!477472))))

(declare-datatypes ((array!49058 0))(
  ( (array!49059 (arr!23556 (Array (_ BitVec 32) (_ BitVec 64))) (size!23997 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49058)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49058 (_ BitVec 32)) Bool)

(assert (=> b!856536 (= res!581901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!581893 () Bool)

(assert (=> start!73422 (=> (not res!581893) (not e!477472))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73422 (= res!581893 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23997 _keys!868))))))

(assert (=> start!73422 e!477472))

(declare-fun tp_is_empty!16445 () Bool)

(assert (=> start!73422 tp_is_empty!16445))

(assert (=> start!73422 true))

(assert (=> start!73422 tp!50432))

(declare-fun array_inv!18646 (array!49058) Bool)

(assert (=> start!73422 (array_inv!18646 _keys!868)))

(declare-datatypes ((V!26973 0))(
  ( (V!26974 (val!8270 Int)) )
))
(declare-datatypes ((ValueCell!7783 0))(
  ( (ValueCellFull!7783 (v!10691 V!26973)) (EmptyCell!7783) )
))
(declare-datatypes ((array!49060 0))(
  ( (array!49061 (arr!23557 (Array (_ BitVec 32) ValueCell!7783)) (size!23998 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49060)

(declare-fun e!477474 () Bool)

(declare-fun array_inv!18647 (array!49060) Bool)

(assert (=> start!73422 (and (array_inv!18647 _values!688) e!477474)))

(declare-fun b!856537 () Bool)

(declare-fun res!581897 () Bool)

(assert (=> b!856537 (=> (not res!581897) (not e!477472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856537 (= res!581897 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26267 () Bool)

(declare-fun mapRes!26267 () Bool)

(declare-fun tp!50431 () Bool)

(declare-fun e!477471 () Bool)

(assert (=> mapNonEmpty!26267 (= mapRes!26267 (and tp!50431 e!477471))))

(declare-fun mapKey!26267 () (_ BitVec 32))

(declare-fun mapValue!26267 () ValueCell!7783)

(declare-fun mapRest!26267 () (Array (_ BitVec 32) ValueCell!7783))

(assert (=> mapNonEmpty!26267 (= (arr!23557 _values!688) (store mapRest!26267 mapKey!26267 mapValue!26267))))

(declare-fun b!856538 () Bool)

(declare-fun e!477473 () Bool)

(assert (=> b!856538 (= e!477473 tp_is_empty!16445)))

(declare-fun b!856539 () Bool)

(assert (=> b!856539 (= e!477474 (and e!477473 mapRes!26267))))

(declare-fun condMapEmpty!26267 () Bool)

(declare-fun mapDefault!26267 () ValueCell!7783)

