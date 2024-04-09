; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73518 () Bool)

(assert start!73518)

(declare-fun b_free!14405 () Bool)

(declare-fun b_next!14405 () Bool)

(assert (=> start!73518 (= b_free!14405 (not b_next!14405))))

(declare-fun tp!50720 () Bool)

(declare-fun b_and!23807 () Bool)

(assert (=> start!73518 (= tp!50720 b_and!23807)))

(declare-fun res!583242 () Bool)

(declare-fun e!478386 () Bool)

(assert (=> start!73518 (=> (not res!583242) (not e!478386))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49242 0))(
  ( (array!49243 (arr!23648 (Array (_ BitVec 32) (_ BitVec 64))) (size!24089 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49242)

(assert (=> start!73518 (= res!583242 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24089 _keys!868))))))

(assert (=> start!73518 e!478386))

(declare-fun tp_is_empty!16541 () Bool)

(assert (=> start!73518 tp_is_empty!16541))

(assert (=> start!73518 true))

(assert (=> start!73518 tp!50720))

(declare-fun array_inv!18708 (array!49242) Bool)

(assert (=> start!73518 (array_inv!18708 _keys!868)))

(declare-datatypes ((V!27101 0))(
  ( (V!27102 (val!8318 Int)) )
))
(declare-datatypes ((ValueCell!7831 0))(
  ( (ValueCellFull!7831 (v!10739 V!27101)) (EmptyCell!7831) )
))
(declare-datatypes ((array!49244 0))(
  ( (array!49245 (arr!23649 (Array (_ BitVec 32) ValueCell!7831)) (size!24090 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49244)

(declare-fun e!478391 () Bool)

(declare-fun array_inv!18709 (array!49244) Bool)

(assert (=> start!73518 (and (array_inv!18709 _values!688) e!478391)))

(declare-fun mapIsEmpty!26411 () Bool)

(declare-fun mapRes!26411 () Bool)

(assert (=> mapIsEmpty!26411 mapRes!26411))

(declare-fun b!858345 () Bool)

(declare-fun e!478390 () Bool)

(assert (=> b!858345 (= e!478390 tp_is_empty!16541)))

(declare-fun b!858346 () Bool)

(declare-fun res!583246 () Bool)

(assert (=> b!858346 (=> (not res!583246) (not e!478386))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858346 (= res!583246 (validMask!0 mask!1196))))

(declare-fun b!858347 () Bool)

(assert (=> b!858347 (= e!478391 (and e!478390 mapRes!26411))))

(declare-fun condMapEmpty!26411 () Bool)

(declare-fun mapDefault!26411 () ValueCell!7831)

