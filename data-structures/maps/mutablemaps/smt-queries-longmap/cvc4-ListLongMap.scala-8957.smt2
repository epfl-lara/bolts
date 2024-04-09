; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108508 () Bool)

(assert start!108508)

(declare-fun b_free!28019 () Bool)

(declare-fun b_next!28019 () Bool)

(assert (=> start!108508 (= b_free!28019 (not b_next!28019))))

(declare-fun tp!99168 () Bool)

(declare-fun b_and!46089 () Bool)

(assert (=> start!108508 (= tp!99168 b_and!46089)))

(declare-fun res!850434 () Bool)

(declare-fun e!731481 () Bool)

(assert (=> start!108508 (=> (not res!850434) (not e!731481))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108508 (= res!850434 (validMask!0 mask!2175))))

(assert (=> start!108508 e!731481))

(declare-fun tp_is_empty!33659 () Bool)

(assert (=> start!108508 tp_is_empty!33659))

(assert (=> start!108508 true))

(declare-datatypes ((V!49981 0))(
  ( (V!49982 (val!16904 Int)) )
))
(declare-datatypes ((ValueCell!15931 0))(
  ( (ValueCellFull!15931 (v!19502 V!49981)) (EmptyCell!15931) )
))
(declare-datatypes ((array!84349 0))(
  ( (array!84350 (arr!40674 (Array (_ BitVec 32) ValueCell!15931)) (size!41225 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84349)

(declare-fun e!731483 () Bool)

(declare-fun array_inv!30863 (array!84349) Bool)

(assert (=> start!108508 (and (array_inv!30863 _values!1445) e!731483)))

(declare-datatypes ((array!84351 0))(
  ( (array!84352 (arr!40675 (Array (_ BitVec 32) (_ BitVec 64))) (size!41226 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84351)

(declare-fun array_inv!30864 (array!84351) Bool)

(assert (=> start!108508 (array_inv!30864 _keys!1741)))

(assert (=> start!108508 tp!99168))

(declare-fun b!1280143 () Bool)

(declare-fun res!850432 () Bool)

(assert (=> b!1280143 (=> (not res!850432) (not e!731481))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1280143 (= res!850432 (and (= (size!41225 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41226 _keys!1741) (size!41225 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280144 () Bool)

(declare-fun e!731482 () Bool)

(assert (=> b!1280144 (= e!731482 tp_is_empty!33659)))

(declare-fun b!1280145 () Bool)

(declare-fun res!850436 () Bool)

(assert (=> b!1280145 (=> (not res!850436) (not e!731481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84351 (_ BitVec 32)) Bool)

(assert (=> b!1280145 (= res!850436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52040 () Bool)

(declare-fun mapRes!52040 () Bool)

(assert (=> mapIsEmpty!52040 mapRes!52040))

(declare-fun b!1280146 () Bool)

(declare-fun res!850435 () Bool)

(assert (=> b!1280146 (=> (not res!850435) (not e!731481))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1280146 (= res!850435 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41226 _keys!1741))))))

(declare-fun b!1280147 () Bool)

(declare-fun e!731485 () Bool)

(assert (=> b!1280147 (= e!731485 tp_is_empty!33659)))

(declare-fun b!1280148 () Bool)

(assert (=> b!1280148 (= e!731481 false)))

(declare-fun minValue!1387 () V!49981)

(declare-fun zeroValue!1387 () V!49981)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!576037 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21782 0))(
  ( (tuple2!21783 (_1!10901 (_ BitVec 64)) (_2!10901 V!49981)) )
))
(declare-datatypes ((List!28992 0))(
  ( (Nil!28989) (Cons!28988 (h!30197 tuple2!21782) (t!42539 List!28992)) )
))
(declare-datatypes ((ListLongMap!19451 0))(
  ( (ListLongMap!19452 (toList!9741 List!28992)) )
))
(declare-fun contains!7794 (ListLongMap!19451 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4761 (array!84351 array!84349 (_ BitVec 32) (_ BitVec 32) V!49981 V!49981 (_ BitVec 32) Int) ListLongMap!19451)

(assert (=> b!1280148 (= lt!576037 (contains!7794 (getCurrentListMap!4761 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!52040 () Bool)

(declare-fun tp!99167 () Bool)

(assert (=> mapNonEmpty!52040 (= mapRes!52040 (and tp!99167 e!731485))))

(declare-fun mapKey!52040 () (_ BitVec 32))

(declare-fun mapValue!52040 () ValueCell!15931)

(declare-fun mapRest!52040 () (Array (_ BitVec 32) ValueCell!15931))

(assert (=> mapNonEmpty!52040 (= (arr!40674 _values!1445) (store mapRest!52040 mapKey!52040 mapValue!52040))))

(declare-fun b!1280149 () Bool)

(declare-fun res!850433 () Bool)

(assert (=> b!1280149 (=> (not res!850433) (not e!731481))))

(declare-datatypes ((List!28993 0))(
  ( (Nil!28990) (Cons!28989 (h!30198 (_ BitVec 64)) (t!42540 List!28993)) )
))
(declare-fun arrayNoDuplicates!0 (array!84351 (_ BitVec 32) List!28993) Bool)

(assert (=> b!1280149 (= res!850433 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28990))))

(declare-fun b!1280150 () Bool)

(assert (=> b!1280150 (= e!731483 (and e!731482 mapRes!52040))))

(declare-fun condMapEmpty!52040 () Bool)

(declare-fun mapDefault!52040 () ValueCell!15931)

