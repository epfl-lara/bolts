; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81850 () Bool)

(assert start!81850)

(declare-fun b_free!18317 () Bool)

(declare-fun b_next!18317 () Bool)

(assert (=> start!81850 (= b_free!18317 (not b_next!18317))))

(declare-fun tp!63651 () Bool)

(declare-fun b_and!29821 () Bool)

(assert (=> start!81850 (= tp!63651 b_and!29821)))

(declare-fun b!954007 () Bool)

(declare-fun e!537513 () Bool)

(assert (=> b!954007 (= e!537513 false)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32797 0))(
  ( (V!32798 (val!10481 Int)) )
))
(declare-fun zeroValue!1139 () V!32797)

(declare-fun lt!429814 () Bool)

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!57851 0))(
  ( (array!57852 (arr!27801 (Array (_ BitVec 32) (_ BitVec 64))) (size!28281 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57851)

(declare-datatypes ((ValueCell!9949 0))(
  ( (ValueCellFull!9949 (v!13036 V!32797)) (EmptyCell!9949) )
))
(declare-datatypes ((array!57853 0))(
  ( (array!57854 (arr!27802 (Array (_ BitVec 32) ValueCell!9949)) (size!28282 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57853)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32797)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13698 0))(
  ( (tuple2!13699 (_1!6859 (_ BitVec 64)) (_2!6859 V!32797)) )
))
(declare-datatypes ((List!19515 0))(
  ( (Nil!19512) (Cons!19511 (h!20673 tuple2!13698) (t!27884 List!19515)) )
))
(declare-datatypes ((ListLongMap!12409 0))(
  ( (ListLongMap!12410 (toList!6220 List!19515)) )
))
(declare-fun contains!5270 (ListLongMap!12409 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3405 (array!57851 array!57853 (_ BitVec 32) (_ BitVec 32) V!32797 V!32797 (_ BitVec 32) Int) ListLongMap!12409)

(assert (=> b!954007 (= lt!429814 (contains!5270 (getCurrentListMap!3405 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27801 _keys!1441) i!735)))))

(declare-fun mapNonEmpty!33253 () Bool)

(declare-fun mapRes!33253 () Bool)

(declare-fun tp!63652 () Bool)

(declare-fun e!537515 () Bool)

(assert (=> mapNonEmpty!33253 (= mapRes!33253 (and tp!63652 e!537515))))

(declare-fun mapValue!33253 () ValueCell!9949)

(declare-fun mapRest!33253 () (Array (_ BitVec 32) ValueCell!9949))

(declare-fun mapKey!33253 () (_ BitVec 32))

(assert (=> mapNonEmpty!33253 (= (arr!27802 _values!1197) (store mapRest!33253 mapKey!33253 mapValue!33253))))

(declare-fun mapIsEmpty!33253 () Bool)

(assert (=> mapIsEmpty!33253 mapRes!33253))

(declare-fun b!954008 () Bool)

(declare-fun res!638962 () Bool)

(assert (=> b!954008 (=> (not res!638962) (not e!537513))))

(declare-datatypes ((List!19516 0))(
  ( (Nil!19513) (Cons!19512 (h!20674 (_ BitVec 64)) (t!27885 List!19516)) )
))
(declare-fun arrayNoDuplicates!0 (array!57851 (_ BitVec 32) List!19516) Bool)

(assert (=> b!954008 (= res!638962 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19513))))

(declare-fun b!954009 () Bool)

(declare-fun res!638961 () Bool)

(assert (=> b!954009 (=> (not res!638961) (not e!537513))))

(assert (=> b!954009 (= res!638961 (and (= (size!28282 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28281 _keys!1441) (size!28282 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954010 () Bool)

(declare-fun res!638960 () Bool)

(assert (=> b!954010 (=> (not res!638960) (not e!537513))))

(assert (=> b!954010 (= res!638960 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28281 _keys!1441))))))

(declare-fun b!954011 () Bool)

(declare-fun e!537512 () Bool)

(declare-fun tp_is_empty!20861 () Bool)

(assert (=> b!954011 (= e!537512 tp_is_empty!20861)))

(declare-fun res!638965 () Bool)

(assert (=> start!81850 (=> (not res!638965) (not e!537513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81850 (= res!638965 (validMask!0 mask!1823))))

(assert (=> start!81850 e!537513))

(assert (=> start!81850 true))

(assert (=> start!81850 tp_is_empty!20861))

(declare-fun array_inv!21525 (array!57851) Bool)

(assert (=> start!81850 (array_inv!21525 _keys!1441)))

(declare-fun e!537514 () Bool)

(declare-fun array_inv!21526 (array!57853) Bool)

(assert (=> start!81850 (and (array_inv!21526 _values!1197) e!537514)))

(assert (=> start!81850 tp!63651))

(declare-fun b!954012 () Bool)

(assert (=> b!954012 (= e!537514 (and e!537512 mapRes!33253))))

(declare-fun condMapEmpty!33253 () Bool)

(declare-fun mapDefault!33253 () ValueCell!9949)

