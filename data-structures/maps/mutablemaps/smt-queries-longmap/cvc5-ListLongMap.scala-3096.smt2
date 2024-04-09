; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43524 () Bool)

(assert start!43524)

(declare-fun b_free!12295 () Bool)

(declare-fun b_next!12295 () Bool)

(assert (=> start!43524 (= b_free!12295 (not b_next!12295))))

(declare-fun tp!43167 () Bool)

(declare-fun b_and!21073 () Bool)

(assert (=> start!43524 (= tp!43167 b_and!21073)))

(declare-fun res!287380 () Bool)

(declare-fun e!283609 () Bool)

(assert (=> start!43524 (=> (not res!287380) (not e!283609))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43524 (= res!287380 (validMask!0 mask!2352))))

(assert (=> start!43524 e!283609))

(assert (=> start!43524 true))

(declare-fun tp_is_empty!13807 () Bool)

(assert (=> start!43524 tp_is_empty!13807))

(declare-datatypes ((V!19481 0))(
  ( (V!19482 (val!6951 Int)) )
))
(declare-datatypes ((ValueCell!6542 0))(
  ( (ValueCellFull!6542 (v!9240 V!19481)) (EmptyCell!6542) )
))
(declare-datatypes ((array!31245 0))(
  ( (array!31246 (arr!15022 (Array (_ BitVec 32) ValueCell!6542)) (size!15380 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31245)

(declare-fun e!283612 () Bool)

(declare-fun array_inv!10814 (array!31245) Bool)

(assert (=> start!43524 (and (array_inv!10814 _values!1516) e!283612)))

(assert (=> start!43524 tp!43167))

(declare-datatypes ((array!31247 0))(
  ( (array!31248 (arr!15023 (Array (_ BitVec 32) (_ BitVec 64))) (size!15381 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31247)

(declare-fun array_inv!10815 (array!31247) Bool)

(assert (=> start!43524 (array_inv!10815 _keys!1874)))

(declare-fun b!481958 () Bool)

(declare-fun res!287377 () Bool)

(assert (=> b!481958 (=> (not res!287377) (not e!283609))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!481958 (= res!287377 (and (= (size!15380 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15381 _keys!1874) (size!15380 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!22420 () Bool)

(declare-fun mapRes!22420 () Bool)

(assert (=> mapIsEmpty!22420 mapRes!22420))

(declare-fun b!481959 () Bool)

(declare-fun e!283610 () Bool)

(assert (=> b!481959 (= e!283610 tp_is_empty!13807)))

(declare-fun b!481960 () Bool)

(declare-fun e!283608 () Bool)

(assert (=> b!481960 (= e!283608 tp_is_empty!13807)))

(declare-fun b!481961 () Bool)

(declare-fun res!287379 () Bool)

(assert (=> b!481961 (=> (not res!287379) (not e!283609))))

(declare-datatypes ((List!9241 0))(
  ( (Nil!9238) (Cons!9237 (h!10093 (_ BitVec 64)) (t!15463 List!9241)) )
))
(declare-fun arrayNoDuplicates!0 (array!31247 (_ BitVec 32) List!9241) Bool)

(assert (=> b!481961 (= res!287379 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9238))))

(declare-fun mapNonEmpty!22420 () Bool)

(declare-fun tp!43168 () Bool)

(assert (=> mapNonEmpty!22420 (= mapRes!22420 (and tp!43168 e!283610))))

(declare-fun mapKey!22420 () (_ BitVec 32))

(declare-fun mapValue!22420 () ValueCell!6542)

(declare-fun mapRest!22420 () (Array (_ BitVec 32) ValueCell!6542))

(assert (=> mapNonEmpty!22420 (= (arr!15022 _values!1516) (store mapRest!22420 mapKey!22420 mapValue!22420))))

(declare-fun b!481962 () Bool)

(assert (=> b!481962 (= e!283612 (and e!283608 mapRes!22420))))

(declare-fun condMapEmpty!22420 () Bool)

(declare-fun mapDefault!22420 () ValueCell!6542)

