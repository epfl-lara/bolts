; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108532 () Bool)

(assert start!108532)

(declare-fun b_free!28043 () Bool)

(declare-fun b_next!28043 () Bool)

(assert (=> start!108532 (= b_free!28043 (not b_next!28043))))

(declare-fun tp!99240 () Bool)

(declare-fun b_and!46113 () Bool)

(assert (=> start!108532 (= tp!99240 b_and!46113)))

(declare-fun mapIsEmpty!52076 () Bool)

(declare-fun mapRes!52076 () Bool)

(assert (=> mapIsEmpty!52076 mapRes!52076))

(declare-fun mapNonEmpty!52076 () Bool)

(declare-fun tp!99239 () Bool)

(declare-fun e!731664 () Bool)

(assert (=> mapNonEmpty!52076 (= mapRes!52076 (and tp!99239 e!731664))))

(declare-fun mapKey!52076 () (_ BitVec 32))

(declare-datatypes ((V!50013 0))(
  ( (V!50014 (val!16916 Int)) )
))
(declare-datatypes ((ValueCell!15943 0))(
  ( (ValueCellFull!15943 (v!19514 V!50013)) (EmptyCell!15943) )
))
(declare-fun mapRest!52076 () (Array (_ BitVec 32) ValueCell!15943))

(declare-datatypes ((array!84395 0))(
  ( (array!84396 (arr!40697 (Array (_ BitVec 32) ValueCell!15943)) (size!41248 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84395)

(declare-fun mapValue!52076 () ValueCell!15943)

(assert (=> mapNonEmpty!52076 (= (arr!40697 _values!1445) (store mapRest!52076 mapKey!52076 mapValue!52076))))

(declare-fun b!1280448 () Bool)

(declare-fun tp_is_empty!33683 () Bool)

(assert (=> b!1280448 (= e!731664 tp_is_empty!33683)))

(declare-fun b!1280449 () Bool)

(declare-fun res!850634 () Bool)

(declare-fun e!731662 () Bool)

(assert (=> b!1280449 (=> (not res!850634) (not e!731662))))

(declare-fun minValue!1387 () V!50013)

(declare-fun zeroValue!1387 () V!50013)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84397 0))(
  ( (array!84398 (arr!40698 (Array (_ BitVec 32) (_ BitVec 64))) (size!41249 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84397)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21798 0))(
  ( (tuple2!21799 (_1!10909 (_ BitVec 64)) (_2!10909 V!50013)) )
))
(declare-datatypes ((List!29008 0))(
  ( (Nil!29005) (Cons!29004 (h!30213 tuple2!21798) (t!42555 List!29008)) )
))
(declare-datatypes ((ListLongMap!19467 0))(
  ( (ListLongMap!19468 (toList!9749 List!29008)) )
))
(declare-fun contains!7802 (ListLongMap!19467 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4769 (array!84397 array!84395 (_ BitVec 32) (_ BitVec 32) V!50013 V!50013 (_ BitVec 32) Int) ListLongMap!19467)

(assert (=> b!1280449 (= res!850634 (contains!7802 (getCurrentListMap!4769 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1280450 () Bool)

(declare-fun res!850631 () Bool)

(assert (=> b!1280450 (=> (not res!850631) (not e!731662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84397 (_ BitVec 32)) Bool)

(assert (=> b!1280450 (= res!850631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1280451 () Bool)

(declare-fun res!850629 () Bool)

(assert (=> b!1280451 (=> (not res!850629) (not e!731662))))

(declare-datatypes ((List!29009 0))(
  ( (Nil!29006) (Cons!29005 (h!30214 (_ BitVec 64)) (t!42556 List!29009)) )
))
(declare-fun arrayNoDuplicates!0 (array!84397 (_ BitVec 32) List!29009) Bool)

(assert (=> b!1280451 (= res!850629 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29006))))

(declare-fun b!1280452 () Bool)

(declare-fun res!850630 () Bool)

(assert (=> b!1280452 (=> (not res!850630) (not e!731662))))

(assert (=> b!1280452 (= res!850630 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41249 _keys!1741)) (not (= (select (arr!40698 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1280453 () Bool)

(assert (=> b!1280453 (= e!731662 (not true))))

(assert (=> b!1280453 (contains!7802 (getCurrentListMap!4769 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42341 0))(
  ( (Unit!42342) )
))
(declare-fun lt!576073 () Unit!42341)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!3 (array!84397 array!84395 (_ BitVec 32) (_ BitVec 32) V!50013 V!50013 (_ BitVec 64) (_ BitVec 32) Int) Unit!42341)

(assert (=> b!1280453 (= lt!576073 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!3 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280454 () Bool)

(declare-fun e!731663 () Bool)

(declare-fun e!731665 () Bool)

(assert (=> b!1280454 (= e!731663 (and e!731665 mapRes!52076))))

(declare-fun condMapEmpty!52076 () Bool)

(declare-fun mapDefault!52076 () ValueCell!15943)

