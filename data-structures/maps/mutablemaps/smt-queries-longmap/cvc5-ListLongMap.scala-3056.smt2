; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43174 () Bool)

(assert start!43174)

(declare-fun b!478338 () Bool)

(declare-fun res!285459 () Bool)

(declare-fun e!281257 () Bool)

(assert (=> b!478338 (=> (not res!285459) (not e!281257))))

(declare-datatypes ((array!30779 0))(
  ( (array!30780 (arr!14795 (Array (_ BitVec 32) (_ BitVec 64))) (size!15153 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30779)

(assert (=> b!478338 (= res!285459 (and (bvsle #b00000000000000000000000000000000 (size!15153 _keys!1874)) (bvslt (size!15153 _keys!1874) #b01111111111111111111111111111111)))))

(declare-fun b!478339 () Bool)

(declare-fun res!285457 () Bool)

(assert (=> b!478339 (=> (not res!285457) (not e!281257))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19161 0))(
  ( (V!19162 (val!6831 Int)) )
))
(declare-datatypes ((ValueCell!6422 0))(
  ( (ValueCellFull!6422 (v!9115 V!19161)) (EmptyCell!6422) )
))
(declare-datatypes ((array!30781 0))(
  ( (array!30782 (arr!14796 (Array (_ BitVec 32) ValueCell!6422)) (size!15154 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30781)

(assert (=> b!478339 (= res!285457 (and (= (size!15154 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15153 _keys!1874) (size!15154 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!22042 () Bool)

(declare-fun mapRes!22042 () Bool)

(assert (=> mapIsEmpty!22042 mapRes!22042))

(declare-fun b!478340 () Bool)

(declare-fun res!285456 () Bool)

(assert (=> b!478340 (=> (not res!285456) (not e!281257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30779 (_ BitVec 32)) Bool)

(assert (=> b!478340 (= res!285456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478341 () Bool)

(declare-fun e!281258 () Bool)

(declare-fun e!281261 () Bool)

(assert (=> b!478341 (= e!281258 (and e!281261 mapRes!22042))))

(declare-fun condMapEmpty!22042 () Bool)

(declare-fun mapDefault!22042 () ValueCell!6422)

