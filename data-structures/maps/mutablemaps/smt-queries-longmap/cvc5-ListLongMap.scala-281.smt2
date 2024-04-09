; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4572 () Bool)

(assert start!4572)

(declare-fun b_free!1273 () Bool)

(declare-fun b_next!1273 () Bool)

(assert (=> start!4572 (= b_free!1273 (not b_next!1273))))

(declare-fun tp!5266 () Bool)

(declare-fun b_and!2103 () Bool)

(assert (=> start!4572 (= tp!5266 b_and!2103)))

(declare-fun res!21679 () Bool)

(declare-fun e!22600 () Bool)

(assert (=> start!4572 (=> (not res!21679) (not e!22600))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4572 (= res!21679 (validMask!0 mask!2294))))

(assert (=> start!4572 e!22600))

(assert (=> start!4572 true))

(assert (=> start!4572 tp!5266))

(declare-datatypes ((V!1995 0))(
  ( (V!1996 (val!840 Int)) )
))
(declare-datatypes ((ValueCell!614 0))(
  ( (ValueCellFull!614 (v!1938 V!1995)) (EmptyCell!614) )
))
(declare-datatypes ((array!2465 0))(
  ( (array!2466 (arr!1177 (Array (_ BitVec 32) ValueCell!614)) (size!1278 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2465)

(declare-fun e!22596 () Bool)

(declare-fun array_inv!777 (array!2465) Bool)

(assert (=> start!4572 (and (array_inv!777 _values!1501) e!22596)))

(declare-datatypes ((array!2467 0))(
  ( (array!2468 (arr!1178 (Array (_ BitVec 32) (_ BitVec 64))) (size!1279 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2467)

(declare-fun array_inv!778 (array!2467) Bool)

(assert (=> start!4572 (array_inv!778 _keys!1833)))

(declare-fun tp_is_empty!1627 () Bool)

(assert (=> start!4572 tp_is_empty!1627))

(declare-fun b!35765 () Bool)

(declare-fun res!21680 () Bool)

(assert (=> b!35765 (=> (not res!21680) (not e!22600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2467 (_ BitVec 32)) Bool)

(assert (=> b!35765 (= res!21680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!35766 () Bool)

(declare-fun e!22598 () Bool)

(assert (=> b!35766 (= e!22598 tp_is_empty!1627)))

(declare-fun b!35767 () Bool)

(declare-fun e!22597 () Bool)

(declare-fun e!22595 () Bool)

(assert (=> b!35767 (= e!22597 e!22595)))

(declare-fun res!21678 () Bool)

(assert (=> b!35767 (=> (not res!21678) (not e!22595))))

(declare-datatypes ((SeekEntryResult!171 0))(
  ( (MissingZero!171 (index!2806 (_ BitVec 32))) (Found!171 (index!2807 (_ BitVec 32))) (Intermediate!171 (undefined!983 Bool) (index!2808 (_ BitVec 32)) (x!7051 (_ BitVec 32))) (Undefined!171) (MissingVacant!171 (index!2809 (_ BitVec 32))) )
))
(declare-fun lt!13205 () SeekEntryResult!171)

(assert (=> b!35767 (= res!21678 (is-Found!171 lt!13205))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2467 (_ BitVec 32)) SeekEntryResult!171)

(assert (=> b!35767 (= lt!13205 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!35768 () Bool)

(declare-fun res!21676 () Bool)

(assert (=> b!35768 (=> (not res!21676) (not e!22600))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!35768 (= res!21676 (and (= (size!1278 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1279 _keys!1833) (size!1278 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1996 () Bool)

(declare-fun mapRes!1996 () Bool)

(declare-fun tp!5265 () Bool)

(assert (=> mapNonEmpty!1996 (= mapRes!1996 (and tp!5265 e!22598))))

(declare-fun mapRest!1996 () (Array (_ BitVec 32) ValueCell!614))

(declare-fun mapKey!1996 () (_ BitVec 32))

(declare-fun mapValue!1996 () ValueCell!614)

(assert (=> mapNonEmpty!1996 (= (arr!1177 _values!1501) (store mapRest!1996 mapKey!1996 mapValue!1996))))

(declare-fun b!35769 () Bool)

(declare-fun e!22601 () Bool)

(assert (=> b!35769 (= e!22596 (and e!22601 mapRes!1996))))

(declare-fun condMapEmpty!1996 () Bool)

(declare-fun mapDefault!1996 () ValueCell!614)

