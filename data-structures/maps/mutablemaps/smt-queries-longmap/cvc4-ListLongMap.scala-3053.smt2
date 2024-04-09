; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43134 () Bool)

(assert start!43134)

(declare-fun mapIsEmpty!22012 () Bool)

(declare-fun mapRes!22012 () Bool)

(assert (=> mapIsEmpty!22012 mapRes!22012))

(declare-fun b!478131 () Bool)

(declare-fun e!281101 () Bool)

(declare-fun tp_is_empty!13553 () Bool)

(assert (=> b!478131 (= e!281101 tp_is_empty!13553)))

(declare-fun res!285354 () Bool)

(declare-fun e!281102 () Bool)

(assert (=> start!43134 (=> (not res!285354) (not e!281102))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43134 (= res!285354 (validMask!0 mask!2352))))

(assert (=> start!43134 e!281102))

(assert (=> start!43134 true))

(declare-datatypes ((V!19141 0))(
  ( (V!19142 (val!6824 Int)) )
))
(declare-datatypes ((ValueCell!6415 0))(
  ( (ValueCellFull!6415 (v!9108 V!19141)) (EmptyCell!6415) )
))
(declare-datatypes ((array!30745 0))(
  ( (array!30746 (arr!14781 (Array (_ BitVec 32) ValueCell!6415)) (size!15139 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30745)

(declare-fun e!281100 () Bool)

(declare-fun array_inv!10654 (array!30745) Bool)

(assert (=> start!43134 (and (array_inv!10654 _values!1516) e!281100)))

(declare-datatypes ((array!30747 0))(
  ( (array!30748 (arr!14782 (Array (_ BitVec 32) (_ BitVec 64))) (size!15140 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30747)

(declare-fun array_inv!10655 (array!30747) Bool)

(assert (=> start!43134 (array_inv!10655 _keys!1874)))

(declare-fun mapNonEmpty!22012 () Bool)

(declare-fun tp!42487 () Bool)

(assert (=> mapNonEmpty!22012 (= mapRes!22012 (and tp!42487 e!281101))))

(declare-fun mapRest!22012 () (Array (_ BitVec 32) ValueCell!6415))

(declare-fun mapKey!22012 () (_ BitVec 32))

(declare-fun mapValue!22012 () ValueCell!6415)

(assert (=> mapNonEmpty!22012 (= (arr!14781 _values!1516) (store mapRest!22012 mapKey!22012 mapValue!22012))))

(declare-fun b!478132 () Bool)

(declare-fun res!285355 () Bool)

(assert (=> b!478132 (=> (not res!285355) (not e!281102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30747 (_ BitVec 32)) Bool)

(assert (=> b!478132 (= res!285355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478133 () Bool)

(assert (=> b!478133 (= e!281102 (bvsgt #b00000000000000000000000000000000 (size!15140 _keys!1874)))))

(declare-fun b!478134 () Bool)

(declare-fun e!281099 () Bool)

(assert (=> b!478134 (= e!281099 tp_is_empty!13553)))

(declare-fun b!478135 () Bool)

(declare-fun res!285353 () Bool)

(assert (=> b!478135 (=> (not res!285353) (not e!281102))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478135 (= res!285353 (and (= (size!15139 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15140 _keys!1874) (size!15139 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478136 () Bool)

(assert (=> b!478136 (= e!281100 (and e!281099 mapRes!22012))))

(declare-fun condMapEmpty!22012 () Bool)

(declare-fun mapDefault!22012 () ValueCell!6415)

