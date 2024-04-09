; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108510 () Bool)

(assert start!108510)

(declare-fun b_free!28021 () Bool)

(declare-fun b_next!28021 () Bool)

(assert (=> start!108510 (= b_free!28021 (not b_next!28021))))

(declare-fun tp!99174 () Bool)

(declare-fun b_and!46091 () Bool)

(assert (=> start!108510 (= tp!99174 b_and!46091)))

(declare-fun mapNonEmpty!52043 () Bool)

(declare-fun mapRes!52043 () Bool)

(declare-fun tp!99173 () Bool)

(declare-fun e!731496 () Bool)

(assert (=> mapNonEmpty!52043 (= mapRes!52043 (and tp!99173 e!731496))))

(declare-datatypes ((V!49985 0))(
  ( (V!49986 (val!16905 Int)) )
))
(declare-datatypes ((ValueCell!15932 0))(
  ( (ValueCellFull!15932 (v!19503 V!49985)) (EmptyCell!15932) )
))
(declare-fun mapRest!52043 () (Array (_ BitVec 32) ValueCell!15932))

(declare-fun mapKey!52043 () (_ BitVec 32))

(declare-datatypes ((array!84353 0))(
  ( (array!84354 (arr!40676 (Array (_ BitVec 32) ValueCell!15932)) (size!41227 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84353)

(declare-fun mapValue!52043 () ValueCell!15932)

(assert (=> mapNonEmpty!52043 (= (arr!40676 _values!1445) (store mapRest!52043 mapKey!52043 mapValue!52043))))

(declare-fun b!1280167 () Bool)

(declare-fun res!850450 () Bool)

(declare-fun e!731500 () Bool)

(assert (=> b!1280167 (=> (not res!850450) (not e!731500))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84355 0))(
  ( (array!84356 (arr!40677 (Array (_ BitVec 32) (_ BitVec 64))) (size!41228 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84355)

(assert (=> b!1280167 (= res!850450 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41228 _keys!1741))))))

(declare-fun mapIsEmpty!52043 () Bool)

(assert (=> mapIsEmpty!52043 mapRes!52043))

(declare-fun b!1280169 () Bool)

(declare-fun e!731499 () Bool)

(declare-fun tp_is_empty!33661 () Bool)

(assert (=> b!1280169 (= e!731499 tp_is_empty!33661)))

(declare-fun b!1280170 () Bool)

(declare-fun res!850447 () Bool)

(assert (=> b!1280170 (=> (not res!850447) (not e!731500))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1280170 (= res!850447 (and (= (size!41227 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41228 _keys!1741) (size!41227 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280171 () Bool)

(assert (=> b!1280171 (= e!731496 tp_is_empty!33661)))

(declare-fun b!1280172 () Bool)

(assert (=> b!1280172 (= e!731500 false)))

(declare-fun minValue!1387 () V!49985)

(declare-fun zeroValue!1387 () V!49985)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!576040 () Bool)

(declare-datatypes ((tuple2!21784 0))(
  ( (tuple2!21785 (_1!10902 (_ BitVec 64)) (_2!10902 V!49985)) )
))
(declare-datatypes ((List!28994 0))(
  ( (Nil!28991) (Cons!28990 (h!30199 tuple2!21784) (t!42541 List!28994)) )
))
(declare-datatypes ((ListLongMap!19453 0))(
  ( (ListLongMap!19454 (toList!9742 List!28994)) )
))
(declare-fun contains!7795 (ListLongMap!19453 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4762 (array!84355 array!84353 (_ BitVec 32) (_ BitVec 32) V!49985 V!49985 (_ BitVec 32) Int) ListLongMap!19453)

(assert (=> b!1280172 (= lt!576040 (contains!7795 (getCurrentListMap!4762 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1280168 () Bool)

(declare-fun e!731497 () Bool)

(assert (=> b!1280168 (= e!731497 (and e!731499 mapRes!52043))))

(declare-fun condMapEmpty!52043 () Bool)

(declare-fun mapDefault!52043 () ValueCell!15932)

