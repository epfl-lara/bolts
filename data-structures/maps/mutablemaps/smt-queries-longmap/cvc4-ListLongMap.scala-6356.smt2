; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81904 () Bool)

(assert start!81904)

(declare-fun b_free!18371 () Bool)

(declare-fun b_next!18371 () Bool)

(assert (=> start!81904 (= b_free!18371 (not b_next!18371))))

(declare-fun tp!63813 () Bool)

(declare-fun b_and!29875 () Bool)

(assert (=> start!81904 (= tp!63813 b_and!29875)))

(declare-fun b!954736 () Bool)

(declare-fun res!639449 () Bool)

(declare-fun e!537920 () Bool)

(assert (=> b!954736 (=> (not res!639449) (not e!537920))))

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!57955 0))(
  ( (array!57956 (arr!27853 (Array (_ BitVec 32) (_ BitVec 64))) (size!28333 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57955)

(assert (=> b!954736 (= res!639449 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28333 _keys!1441))))))

(declare-fun b!954737 () Bool)

(declare-fun e!537921 () Bool)

(declare-fun tp_is_empty!20915 () Bool)

(assert (=> b!954737 (= e!537921 tp_is_empty!20915)))

(declare-fun b!954738 () Bool)

(declare-fun e!537919 () Bool)

(assert (=> b!954738 (= e!537919 tp_is_empty!20915)))

(declare-fun b!954739 () Bool)

(declare-fun res!639448 () Bool)

(assert (=> b!954739 (=> (not res!639448) (not e!537920))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32869 0))(
  ( (V!32870 (val!10508 Int)) )
))
(declare-datatypes ((ValueCell!9976 0))(
  ( (ValueCellFull!9976 (v!13063 V!32869)) (EmptyCell!9976) )
))
(declare-datatypes ((array!57957 0))(
  ( (array!57958 (arr!27854 (Array (_ BitVec 32) ValueCell!9976)) (size!28334 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57957)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!954739 (= res!639448 (and (= (size!28334 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28333 _keys!1441) (size!28334 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954740 () Bool)

(declare-fun res!639447 () Bool)

(assert (=> b!954740 (=> (not res!639447) (not e!537920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954740 (= res!639447 (validKeyInArray!0 (select (arr!27853 _keys!1441) i!735)))))

(declare-fun b!954741 () Bool)

(declare-fun res!639450 () Bool)

(assert (=> b!954741 (=> (not res!639450) (not e!537920))))

(declare-datatypes ((List!19555 0))(
  ( (Nil!19552) (Cons!19551 (h!20713 (_ BitVec 64)) (t!27924 List!19555)) )
))
(declare-fun arrayNoDuplicates!0 (array!57955 (_ BitVec 32) List!19555) Bool)

(assert (=> b!954741 (= res!639450 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19552))))

(declare-fun b!954742 () Bool)

(assert (=> b!954742 (= e!537920 false)))

(declare-fun zeroValue!1139 () V!32869)

(declare-fun lt!429895 () Bool)

(declare-fun minValue!1139 () V!32869)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13738 0))(
  ( (tuple2!13739 (_1!6879 (_ BitVec 64)) (_2!6879 V!32869)) )
))
(declare-datatypes ((List!19556 0))(
  ( (Nil!19553) (Cons!19552 (h!20714 tuple2!13738) (t!27925 List!19556)) )
))
(declare-datatypes ((ListLongMap!12449 0))(
  ( (ListLongMap!12450 (toList!6240 List!19556)) )
))
(declare-fun contains!5290 (ListLongMap!12449 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3425 (array!57955 array!57957 (_ BitVec 32) (_ BitVec 32) V!32869 V!32869 (_ BitVec 32) Int) ListLongMap!12449)

(assert (=> b!954742 (= lt!429895 (contains!5290 (getCurrentListMap!3425 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27853 _keys!1441) i!735)))))

(declare-fun res!639451 () Bool)

(assert (=> start!81904 (=> (not res!639451) (not e!537920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81904 (= res!639451 (validMask!0 mask!1823))))

(assert (=> start!81904 e!537920))

(assert (=> start!81904 true))

(assert (=> start!81904 tp_is_empty!20915))

(declare-fun array_inv!21567 (array!57955) Bool)

(assert (=> start!81904 (array_inv!21567 _keys!1441)))

(declare-fun e!537917 () Bool)

(declare-fun array_inv!21568 (array!57957) Bool)

(assert (=> start!81904 (and (array_inv!21568 _values!1197) e!537917)))

(assert (=> start!81904 tp!63813))

(declare-fun b!954743 () Bool)

(declare-fun res!639446 () Bool)

(assert (=> b!954743 (=> (not res!639446) (not e!537920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57955 (_ BitVec 32)) Bool)

(assert (=> b!954743 (= res!639446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapNonEmpty!33334 () Bool)

(declare-fun mapRes!33334 () Bool)

(declare-fun tp!63814 () Bool)

(assert (=> mapNonEmpty!33334 (= mapRes!33334 (and tp!63814 e!537921))))

(declare-fun mapKey!33334 () (_ BitVec 32))

(declare-fun mapRest!33334 () (Array (_ BitVec 32) ValueCell!9976))

(declare-fun mapValue!33334 () ValueCell!9976)

(assert (=> mapNonEmpty!33334 (= (arr!27854 _values!1197) (store mapRest!33334 mapKey!33334 mapValue!33334))))

(declare-fun b!954744 () Bool)

(assert (=> b!954744 (= e!537917 (and e!537919 mapRes!33334))))

(declare-fun condMapEmpty!33334 () Bool)

(declare-fun mapDefault!33334 () ValueCell!9976)

