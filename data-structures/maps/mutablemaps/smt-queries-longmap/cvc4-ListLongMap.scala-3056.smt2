; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43178 () Bool)

(assert start!43178)

(declare-fun b!478392 () Bool)

(declare-fun e!281297 () Bool)

(declare-fun e!281295 () Bool)

(assert (=> b!478392 (= e!281297 e!281295)))

(declare-fun res!285493 () Bool)

(assert (=> b!478392 (=> res!285493 e!281295)))

(declare-datatypes ((List!9093 0))(
  ( (Nil!9090) (Cons!9089 (h!9945 (_ BitVec 64)) (t!15307 List!9093)) )
))
(declare-fun contains!2585 (List!9093 (_ BitVec 64)) Bool)

(assert (=> b!478392 (= res!285493 (contains!2585 Nil!9090 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!478394 () Bool)

(declare-fun res!285495 () Bool)

(assert (=> b!478394 (=> (not res!285495) (not e!281297))))

(declare-datatypes ((array!30787 0))(
  ( (array!30788 (arr!14799 (Array (_ BitVec 32) (_ BitVec 64))) (size!15157 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30787)

(assert (=> b!478394 (= res!285495 (and (bvsle #b00000000000000000000000000000000 (size!15157 _keys!1874)) (bvslt (size!15157 _keys!1874) #b01111111111111111111111111111111)))))

(declare-fun b!478395 () Bool)

(declare-fun res!285494 () Bool)

(assert (=> b!478395 (=> (not res!285494) (not e!281297))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19165 0))(
  ( (V!19166 (val!6833 Int)) )
))
(declare-datatypes ((ValueCell!6424 0))(
  ( (ValueCellFull!6424 (v!9117 V!19165)) (EmptyCell!6424) )
))
(declare-datatypes ((array!30789 0))(
  ( (array!30790 (arr!14800 (Array (_ BitVec 32) ValueCell!6424)) (size!15158 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30789)

(assert (=> b!478395 (= res!285494 (and (= (size!15158 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15157 _keys!1874) (size!15158 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478396 () Bool)

(declare-fun e!281293 () Bool)

(declare-fun tp_is_empty!13571 () Bool)

(assert (=> b!478396 (= e!281293 tp_is_empty!13571)))

(declare-fun b!478397 () Bool)

(assert (=> b!478397 (= e!281295 (contains!2585 Nil!9090 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!478398 () Bool)

(declare-fun res!285492 () Bool)

(assert (=> b!478398 (=> (not res!285492) (not e!281297))))

(declare-fun noDuplicate!207 (List!9093) Bool)

(assert (=> b!478398 (= res!285492 (noDuplicate!207 Nil!9090))))

(declare-fun mapNonEmpty!22048 () Bool)

(declare-fun mapRes!22048 () Bool)

(declare-fun tp!42523 () Bool)

(declare-fun e!281296 () Bool)

(assert (=> mapNonEmpty!22048 (= mapRes!22048 (and tp!42523 e!281296))))

(declare-fun mapValue!22048 () ValueCell!6424)

(declare-fun mapKey!22048 () (_ BitVec 32))

(declare-fun mapRest!22048 () (Array (_ BitVec 32) ValueCell!6424))

(assert (=> mapNonEmpty!22048 (= (arr!14800 _values!1516) (store mapRest!22048 mapKey!22048 mapValue!22048))))

(declare-fun b!478399 () Bool)

(declare-fun e!281294 () Bool)

(assert (=> b!478399 (= e!281294 (and e!281293 mapRes!22048))))

(declare-fun condMapEmpty!22048 () Bool)

(declare-fun mapDefault!22048 () ValueCell!6424)

