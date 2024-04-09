; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108198 () Bool)

(assert start!108198)

(declare-fun b_free!27857 () Bool)

(declare-fun b_next!27857 () Bool)

(assert (=> start!108198 (= b_free!27857 (not b_next!27857))))

(declare-fun tp!98529 () Bool)

(declare-fun b_and!45925 () Bool)

(assert (=> start!108198 (= tp!98529 b_and!45925)))

(declare-fun b!1277200 () Bool)

(declare-fun e!729417 () Bool)

(assert (=> b!1277200 (= e!729417 false)))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-datatypes ((V!49645 0))(
  ( (V!49646 (val!16778 Int)) )
))
(declare-fun minValue!1129 () V!49645)

(declare-datatypes ((ValueCell!15805 0))(
  ( (ValueCellFull!15805 (v!19374 V!49645)) (EmptyCell!15805) )
))
(declare-datatypes ((array!83857 0))(
  ( (array!83858 (arr!40434 (Array (_ BitVec 32) ValueCell!15805)) (size!40985 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83857)

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun zeroValue!1129 () V!49645)

(declare-datatypes ((array!83859 0))(
  ( (array!83860 (arr!40435 (Array (_ BitVec 32) (_ BitVec 64))) (size!40986 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83859)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun lt!575613 () Bool)

(declare-datatypes ((tuple2!21670 0))(
  ( (tuple2!21671 (_1!10845 (_ BitVec 64)) (_2!10845 V!49645)) )
))
(declare-datatypes ((List!28855 0))(
  ( (Nil!28852) (Cons!28851 (h!30060 tuple2!21670) (t!42400 List!28855)) )
))
(declare-datatypes ((ListLongMap!19339 0))(
  ( (ListLongMap!19340 (toList!9685 List!28855)) )
))
(declare-fun contains!7733 (ListLongMap!19339 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4705 (array!83859 array!83857 (_ BitVec 32) (_ BitVec 32) V!49645 V!49645 (_ BitVec 32) Int) ListLongMap!19339)

(assert (=> b!1277200 (= lt!575613 (contains!7733 (getCurrentListMap!4705 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1277201 () Bool)

(declare-fun e!729419 () Bool)

(declare-fun e!729418 () Bool)

(declare-fun mapRes!51644 () Bool)

(assert (=> b!1277201 (= e!729419 (and e!729418 mapRes!51644))))

(declare-fun condMapEmpty!51644 () Bool)

(declare-fun mapDefault!51644 () ValueCell!15805)

