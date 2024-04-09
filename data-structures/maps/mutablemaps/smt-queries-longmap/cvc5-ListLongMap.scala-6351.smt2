; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81870 () Bool)

(assert start!81870)

(declare-fun b_free!18337 () Bool)

(declare-fun b_next!18337 () Bool)

(assert (=> start!81870 (= b_free!18337 (not b_next!18337))))

(declare-fun tp!63711 () Bool)

(declare-fun b_and!29841 () Bool)

(assert (=> start!81870 (= tp!63711 b_and!29841)))

(declare-fun b!954278 () Bool)

(declare-fun e!537662 () Bool)

(declare-fun tp_is_empty!20881 () Bool)

(assert (=> b!954278 (= e!537662 tp_is_empty!20881)))

(declare-fun mapIsEmpty!33283 () Bool)

(declare-fun mapRes!33283 () Bool)

(assert (=> mapIsEmpty!33283 mapRes!33283))

(declare-fun b!954279 () Bool)

(declare-fun res!639140 () Bool)

(declare-fun e!537665 () Bool)

(assert (=> b!954279 (=> (not res!639140) (not e!537665))))

(declare-datatypes ((array!57887 0))(
  ( (array!57888 (arr!27819 (Array (_ BitVec 32) (_ BitVec 64))) (size!28299 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57887)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57887 (_ BitVec 32)) Bool)

(assert (=> b!954279 (= res!639140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapNonEmpty!33283 () Bool)

(declare-fun tp!63712 () Bool)

(assert (=> mapNonEmpty!33283 (= mapRes!33283 (and tp!63712 e!537662))))

(declare-fun mapKey!33283 () (_ BitVec 32))

(declare-datatypes ((V!32825 0))(
  ( (V!32826 (val!10491 Int)) )
))
(declare-datatypes ((ValueCell!9959 0))(
  ( (ValueCellFull!9959 (v!13046 V!32825)) (EmptyCell!9959) )
))
(declare-fun mapRest!33283 () (Array (_ BitVec 32) ValueCell!9959))

(declare-fun mapValue!33283 () ValueCell!9959)

(declare-datatypes ((array!57889 0))(
  ( (array!57890 (arr!27820 (Array (_ BitVec 32) ValueCell!9959)) (size!28300 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57889)

(assert (=> mapNonEmpty!33283 (= (arr!27820 _values!1197) (store mapRest!33283 mapKey!33283 mapValue!33283))))

(declare-fun b!954280 () Bool)

(assert (=> b!954280 (= e!537665 false)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun zeroValue!1139 () V!32825)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun lt!429844 () Bool)

(declare-fun minValue!1139 () V!32825)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13712 0))(
  ( (tuple2!13713 (_1!6866 (_ BitVec 64)) (_2!6866 V!32825)) )
))
(declare-datatypes ((List!19528 0))(
  ( (Nil!19525) (Cons!19524 (h!20686 tuple2!13712) (t!27897 List!19528)) )
))
(declare-datatypes ((ListLongMap!12423 0))(
  ( (ListLongMap!12424 (toList!6227 List!19528)) )
))
(declare-fun contains!5277 (ListLongMap!12423 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3412 (array!57887 array!57889 (_ BitVec 32) (_ BitVec 32) V!32825 V!32825 (_ BitVec 32) Int) ListLongMap!12423)

(assert (=> b!954280 (= lt!429844 (contains!5277 (getCurrentListMap!3412 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27819 _keys!1441) i!735)))))

(declare-fun b!954281 () Bool)

(declare-fun res!639145 () Bool)

(assert (=> b!954281 (=> (not res!639145) (not e!537665))))

(declare-datatypes ((List!19529 0))(
  ( (Nil!19526) (Cons!19525 (h!20687 (_ BitVec 64)) (t!27898 List!19529)) )
))
(declare-fun arrayNoDuplicates!0 (array!57887 (_ BitVec 32) List!19529) Bool)

(assert (=> b!954281 (= res!639145 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19526))))

(declare-fun b!954282 () Bool)

(declare-fun res!639141 () Bool)

(assert (=> b!954282 (=> (not res!639141) (not e!537665))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954282 (= res!639141 (validKeyInArray!0 (select (arr!27819 _keys!1441) i!735)))))

(declare-fun b!954283 () Bool)

(declare-fun res!639144 () Bool)

(assert (=> b!954283 (=> (not res!639144) (not e!537665))))

(assert (=> b!954283 (= res!639144 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28299 _keys!1441))))))

(declare-fun b!954277 () Bool)

(declare-fun res!639143 () Bool)

(assert (=> b!954277 (=> (not res!639143) (not e!537665))))

(assert (=> b!954277 (= res!639143 (and (= (size!28300 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28299 _keys!1441) (size!28300 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun res!639142 () Bool)

(assert (=> start!81870 (=> (not res!639142) (not e!537665))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81870 (= res!639142 (validMask!0 mask!1823))))

(assert (=> start!81870 e!537665))

(assert (=> start!81870 true))

(assert (=> start!81870 tp_is_empty!20881))

(declare-fun array_inv!21537 (array!57887) Bool)

(assert (=> start!81870 (array_inv!21537 _keys!1441)))

(declare-fun e!537663 () Bool)

(declare-fun array_inv!21538 (array!57889) Bool)

(assert (=> start!81870 (and (array_inv!21538 _values!1197) e!537663)))

(assert (=> start!81870 tp!63711))

(declare-fun b!954284 () Bool)

(declare-fun e!537664 () Bool)

(assert (=> b!954284 (= e!537663 (and e!537664 mapRes!33283))))

(declare-fun condMapEmpty!33283 () Bool)

(declare-fun mapDefault!33283 () ValueCell!9959)

