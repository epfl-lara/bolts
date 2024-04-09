; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108430 () Bool)

(assert start!108430)

(declare-fun b_free!27941 () Bool)

(declare-fun b_next!27941 () Bool)

(assert (=> start!108430 (= b_free!27941 (not b_next!27941))))

(declare-fun tp!98933 () Bool)

(declare-fun b_and!46011 () Bool)

(assert (=> start!108430 (= tp!98933 b_and!46011)))

(declare-fun b!1279198 () Bool)

(declare-fun res!849842 () Bool)

(declare-fun e!730900 () Bool)

(assert (=> b!1279198 (=> (not res!849842) (not e!730900))))

(declare-datatypes ((array!84197 0))(
  ( (array!84198 (arr!40598 (Array (_ BitVec 32) (_ BitVec 64))) (size!41149 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84197)

(declare-datatypes ((List!28936 0))(
  ( (Nil!28933) (Cons!28932 (h!30141 (_ BitVec 64)) (t!42483 List!28936)) )
))
(declare-fun arrayNoDuplicates!0 (array!84197 (_ BitVec 32) List!28936) Bool)

(assert (=> b!1279198 (= res!849842 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28933))))

(declare-fun b!1279199 () Bool)

(declare-fun res!849841 () Bool)

(assert (=> b!1279199 (=> (not res!849841) (not e!730900))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49877 0))(
  ( (V!49878 (val!16865 Int)) )
))
(declare-datatypes ((ValueCell!15892 0))(
  ( (ValueCellFull!15892 (v!19463 V!49877)) (EmptyCell!15892) )
))
(declare-datatypes ((array!84199 0))(
  ( (array!84200 (arr!40599 (Array (_ BitVec 32) ValueCell!15892)) (size!41150 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84199)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1279199 (= res!849841 (and (= (size!41150 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41149 _keys!1741) (size!41150 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279200 () Bool)

(declare-fun e!730896 () Bool)

(declare-fun tp_is_empty!33581 () Bool)

(assert (=> b!1279200 (= e!730896 tp_is_empty!33581)))

(declare-fun mapNonEmpty!51923 () Bool)

(declare-fun mapRes!51923 () Bool)

(declare-fun tp!98934 () Bool)

(assert (=> mapNonEmpty!51923 (= mapRes!51923 (and tp!98934 e!730896))))

(declare-fun mapKey!51923 () (_ BitVec 32))

(declare-fun mapValue!51923 () ValueCell!15892)

(declare-fun mapRest!51923 () (Array (_ BitVec 32) ValueCell!15892))

(assert (=> mapNonEmpty!51923 (= (arr!40599 _values!1445) (store mapRest!51923 mapKey!51923 mapValue!51923))))

(declare-fun b!1279201 () Bool)

(declare-fun res!849838 () Bool)

(assert (=> b!1279201 (=> (not res!849838) (not e!730900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84197 (_ BitVec 32)) Bool)

(assert (=> b!1279201 (= res!849838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279202 () Bool)

(assert (=> b!1279202 (= e!730900 false)))

(declare-fun minValue!1387 () V!49877)

(declare-fun zeroValue!1387 () V!49877)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!575929 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21724 0))(
  ( (tuple2!21725 (_1!10872 (_ BitVec 64)) (_2!10872 V!49877)) )
))
(declare-datatypes ((List!28937 0))(
  ( (Nil!28934) (Cons!28933 (h!30142 tuple2!21724) (t!42484 List!28937)) )
))
(declare-datatypes ((ListLongMap!19393 0))(
  ( (ListLongMap!19394 (toList!9712 List!28937)) )
))
(declare-fun contains!7765 (ListLongMap!19393 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4732 (array!84197 array!84199 (_ BitVec 32) (_ BitVec 32) V!49877 V!49877 (_ BitVec 32) Int) ListLongMap!19393)

(assert (=> b!1279202 (= lt!575929 (contains!7765 (getCurrentListMap!4732 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279203 () Bool)

(declare-fun e!730899 () Bool)

(assert (=> b!1279203 (= e!730899 tp_is_empty!33581)))

(declare-fun b!1279204 () Bool)

(declare-fun e!730897 () Bool)

(assert (=> b!1279204 (= e!730897 (and e!730899 mapRes!51923))))

(declare-fun condMapEmpty!51923 () Bool)

(declare-fun mapDefault!51923 () ValueCell!15892)

