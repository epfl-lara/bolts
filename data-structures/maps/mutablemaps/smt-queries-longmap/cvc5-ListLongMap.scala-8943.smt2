; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108420 () Bool)

(assert start!108420)

(declare-fun b_free!27931 () Bool)

(declare-fun b_next!27931 () Bool)

(assert (=> start!108420 (= b_free!27931 (not b_next!27931))))

(declare-fun tp!98903 () Bool)

(declare-fun b_and!46001 () Bool)

(assert (=> start!108420 (= tp!98903 b_and!46001)))

(declare-fun b!1279078 () Bool)

(declare-fun e!730825 () Bool)

(assert (=> b!1279078 (= e!730825 false)))

(declare-datatypes ((V!49865 0))(
  ( (V!49866 (val!16860 Int)) )
))
(declare-fun minValue!1387 () V!49865)

(declare-fun zeroValue!1387 () V!49865)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!575914 () Bool)

(declare-datatypes ((ValueCell!15887 0))(
  ( (ValueCellFull!15887 (v!19458 V!49865)) (EmptyCell!15887) )
))
(declare-datatypes ((array!84177 0))(
  ( (array!84178 (arr!40588 (Array (_ BitVec 32) ValueCell!15887)) (size!41139 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84177)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84179 0))(
  ( (array!84180 (arr!40589 (Array (_ BitVec 32) (_ BitVec 64))) (size!41140 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84179)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21716 0))(
  ( (tuple2!21717 (_1!10868 (_ BitVec 64)) (_2!10868 V!49865)) )
))
(declare-datatypes ((List!28929 0))(
  ( (Nil!28926) (Cons!28925 (h!30134 tuple2!21716) (t!42476 List!28929)) )
))
(declare-datatypes ((ListLongMap!19385 0))(
  ( (ListLongMap!19386 (toList!9708 List!28929)) )
))
(declare-fun contains!7761 (ListLongMap!19385 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4728 (array!84179 array!84177 (_ BitVec 32) (_ BitVec 32) V!49865 V!49865 (_ BitVec 32) Int) ListLongMap!19385)

(assert (=> b!1279078 (= lt!575914 (contains!7761 (getCurrentListMap!4728 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279079 () Bool)

(declare-fun e!730822 () Bool)

(declare-fun e!730824 () Bool)

(declare-fun mapRes!51908 () Bool)

(assert (=> b!1279079 (= e!730822 (and e!730824 mapRes!51908))))

(declare-fun condMapEmpty!51908 () Bool)

(declare-fun mapDefault!51908 () ValueCell!15887)

