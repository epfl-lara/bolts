; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81882 () Bool)

(assert start!81882)

(declare-fun b_free!18349 () Bool)

(declare-fun b_next!18349 () Bool)

(assert (=> start!81882 (= b_free!18349 (not b_next!18349))))

(declare-fun tp!63747 () Bool)

(declare-fun b_and!29853 () Bool)

(assert (=> start!81882 (= tp!63747 b_and!29853)))

(declare-fun b!954439 () Bool)

(declare-fun e!537752 () Bool)

(declare-fun tp_is_empty!20893 () Bool)

(assert (=> b!954439 (= e!537752 tp_is_empty!20893)))

(declare-fun b!954440 () Bool)

(declare-fun e!537754 () Bool)

(assert (=> b!954440 (= e!537754 false)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32841 0))(
  ( (V!32842 (val!10497 Int)) )
))
(declare-fun zeroValue!1139 () V!32841)

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!57911 0))(
  ( (array!57912 (arr!27831 (Array (_ BitVec 32) (_ BitVec 64))) (size!28311 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57911)

(declare-datatypes ((ValueCell!9965 0))(
  ( (ValueCellFull!9965 (v!13052 V!32841)) (EmptyCell!9965) )
))
(declare-datatypes ((array!57913 0))(
  ( (array!57914 (arr!27832 (Array (_ BitVec 32) ValueCell!9965)) (size!28312 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57913)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun lt!429862 () Bool)

(declare-fun minValue!1139 () V!32841)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13720 0))(
  ( (tuple2!13721 (_1!6870 (_ BitVec 64)) (_2!6870 V!32841)) )
))
(declare-datatypes ((List!19537 0))(
  ( (Nil!19534) (Cons!19533 (h!20695 tuple2!13720) (t!27906 List!19537)) )
))
(declare-datatypes ((ListLongMap!12431 0))(
  ( (ListLongMap!12432 (toList!6231 List!19537)) )
))
(declare-fun contains!5281 (ListLongMap!12431 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3416 (array!57911 array!57913 (_ BitVec 32) (_ BitVec 32) V!32841 V!32841 (_ BitVec 32) Int) ListLongMap!12431)

(assert (=> b!954440 (= lt!429862 (contains!5281 (getCurrentListMap!3416 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27831 _keys!1441) i!735)))))

(declare-fun b!954441 () Bool)

(declare-fun res!639250 () Bool)

(assert (=> b!954441 (=> (not res!639250) (not e!537754))))

(declare-datatypes ((List!19538 0))(
  ( (Nil!19535) (Cons!19534 (h!20696 (_ BitVec 64)) (t!27907 List!19538)) )
))
(declare-fun arrayNoDuplicates!0 (array!57911 (_ BitVec 32) List!19538) Bool)

(assert (=> b!954441 (= res!639250 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19535))))

(declare-fun b!954442 () Bool)

(declare-fun res!639249 () Bool)

(assert (=> b!954442 (=> (not res!639249) (not e!537754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954442 (= res!639249 (validKeyInArray!0 (select (arr!27831 _keys!1441) i!735)))))

(declare-fun b!954443 () Bool)

(declare-fun res!639251 () Bool)

(assert (=> b!954443 (=> (not res!639251) (not e!537754))))

(assert (=> b!954443 (= res!639251 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28311 _keys!1441))))))

(declare-fun res!639253 () Bool)

(assert (=> start!81882 (=> (not res!639253) (not e!537754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81882 (= res!639253 (validMask!0 mask!1823))))

(assert (=> start!81882 e!537754))

(assert (=> start!81882 true))

(assert (=> start!81882 tp_is_empty!20893))

(declare-fun array_inv!21549 (array!57911) Bool)

(assert (=> start!81882 (array_inv!21549 _keys!1441)))

(declare-fun e!537755 () Bool)

(declare-fun array_inv!21550 (array!57913) Bool)

(assert (=> start!81882 (and (array_inv!21550 _values!1197) e!537755)))

(assert (=> start!81882 tp!63747))

(declare-fun b!954444 () Bool)

(declare-fun e!537756 () Bool)

(declare-fun mapRes!33301 () Bool)

(assert (=> b!954444 (= e!537755 (and e!537756 mapRes!33301))))

(declare-fun condMapEmpty!33301 () Bool)

(declare-fun mapDefault!33301 () ValueCell!9965)

