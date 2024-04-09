; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108636 () Bool)

(assert start!108636)

(declare-fun b_free!28127 () Bool)

(declare-fun b_next!28127 () Bool)

(assert (=> start!108636 (= b_free!28127 (not b_next!28127))))

(declare-fun tp!99495 () Bool)

(declare-fun b_and!46201 () Bool)

(assert (=> start!108636 (= tp!99495 b_and!46201)))

(declare-fun b!1281846 () Bool)

(declare-fun e!732415 () Bool)

(assert (=> b!1281846 (= e!732415 false)))

(declare-datatypes ((V!50125 0))(
  ( (V!50126 (val!16958 Int)) )
))
(declare-fun minValue!1387 () V!50125)

(declare-fun zeroValue!1387 () V!50125)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15985 0))(
  ( (ValueCellFull!15985 (v!19557 V!50125)) (EmptyCell!15985) )
))
(declare-datatypes ((array!84559 0))(
  ( (array!84560 (arr!40778 (Array (_ BitVec 32) ValueCell!15985)) (size!41329 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84559)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!84561 0))(
  ( (array!84562 (arr!40779 (Array (_ BitVec 32) (_ BitVec 64))) (size!41330 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84561)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun lt!576345 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!21862 0))(
  ( (tuple2!21863 (_1!10941 (_ BitVec 64)) (_2!10941 V!50125)) )
))
(declare-datatypes ((List!29070 0))(
  ( (Nil!29067) (Cons!29066 (h!30275 tuple2!21862) (t!42619 List!29070)) )
))
(declare-datatypes ((ListLongMap!19531 0))(
  ( (ListLongMap!19532 (toList!9781 List!29070)) )
))
(declare-fun contains!7835 (ListLongMap!19531 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4801 (array!84561 array!84559 (_ BitVec 32) (_ BitVec 32) V!50125 V!50125 (_ BitVec 32) Int) ListLongMap!19531)

(assert (=> b!1281846 (= lt!576345 (contains!7835 (getCurrentListMap!4801 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1281847 () Bool)

(declare-fun e!732418 () Bool)

(declare-fun e!732416 () Bool)

(declare-fun mapRes!52205 () Bool)

(assert (=> b!1281847 (= e!732418 (and e!732416 mapRes!52205))))

(declare-fun condMapEmpty!52205 () Bool)

(declare-fun mapDefault!52205 () ValueCell!15985)

