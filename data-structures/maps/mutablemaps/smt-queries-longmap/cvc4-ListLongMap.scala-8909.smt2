; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108144 () Bool)

(assert start!108144)

(declare-fun b_free!27821 () Bool)

(declare-fun b_next!27821 () Bool)

(assert (=> start!108144 (= b_free!27821 (not b_next!27821))))

(declare-fun tp!98417 () Bool)

(declare-fun b_and!45887 () Bool)

(assert (=> start!108144 (= tp!98417 b_and!45887)))

(declare-fun b!1276593 () Bool)

(declare-fun e!729041 () Bool)

(declare-fun tp_is_empty!33371 () Bool)

(assert (=> b!1276593 (= e!729041 tp_is_empty!33371)))

(declare-fun b!1276594 () Bool)

(declare-fun res!848449 () Bool)

(declare-fun e!729040 () Bool)

(assert (=> b!1276594 (=> (not res!848449) (not e!729040))))

(declare-datatypes ((array!83787 0))(
  ( (array!83788 (arr!40400 (Array (_ BitVec 32) (_ BitVec 64))) (size!40951 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83787)

(declare-datatypes ((List!28830 0))(
  ( (Nil!28827) (Cons!28826 (h!30035 (_ BitVec 64)) (t!42373 List!28830)) )
))
(declare-fun arrayNoDuplicates!0 (array!83787 (_ BitVec 32) List!28830) Bool)

(assert (=> b!1276594 (= res!848449 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28827))))

(declare-fun b!1276595 () Bool)

(declare-fun res!848448 () Bool)

(assert (=> b!1276595 (=> (not res!848448) (not e!729040))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-datatypes ((V!49597 0))(
  ( (V!49598 (val!16760 Int)) )
))
(declare-datatypes ((ValueCell!15787 0))(
  ( (ValueCellFull!15787 (v!19355 V!49597)) (EmptyCell!15787) )
))
(declare-datatypes ((array!83789 0))(
  ( (array!83790 (arr!40401 (Array (_ BitVec 32) ValueCell!15787)) (size!40952 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83789)

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1276595 (= res!848448 (and (= (size!40952 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40951 _keys!1427) (size!40952 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276596 () Bool)

(assert (=> b!1276596 (= e!729040 false)))

(declare-fun defaultEntry!1195 () Int)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49597)

(declare-fun minValue!1129 () V!49597)

(declare-fun lt!575460 () Bool)

(declare-datatypes ((tuple2!21644 0))(
  ( (tuple2!21645 (_1!10832 (_ BitVec 64)) (_2!10832 V!49597)) )
))
(declare-datatypes ((List!28831 0))(
  ( (Nil!28828) (Cons!28827 (h!30036 tuple2!21644) (t!42374 List!28831)) )
))
(declare-datatypes ((ListLongMap!19313 0))(
  ( (ListLongMap!19314 (toList!9672 List!28831)) )
))
(declare-fun contains!7719 (ListLongMap!19313 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4692 (array!83787 array!83789 (_ BitVec 32) (_ BitVec 32) V!49597 V!49597 (_ BitVec 32) Int) ListLongMap!19313)

(assert (=> b!1276596 (= lt!575460 (contains!7719 (getCurrentListMap!4692 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1276597 () Bool)

(declare-fun e!729038 () Bool)

(assert (=> b!1276597 (= e!729038 tp_is_empty!33371)))

(declare-fun b!1276598 () Bool)

(declare-fun e!729037 () Bool)

(declare-fun mapRes!51587 () Bool)

(assert (=> b!1276598 (= e!729037 (and e!729038 mapRes!51587))))

(declare-fun condMapEmpty!51587 () Bool)

(declare-fun mapDefault!51587 () ValueCell!15787)

