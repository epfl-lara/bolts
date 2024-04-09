; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81846 () Bool)

(assert start!81846)

(declare-fun b_free!18313 () Bool)

(declare-fun b_next!18313 () Bool)

(assert (=> start!81846 (= b_free!18313 (not b_next!18313))))

(declare-fun tp!63640 () Bool)

(declare-fun b_and!29817 () Bool)

(assert (=> start!81846 (= tp!63640 b_and!29817)))

(declare-fun b!953953 () Bool)

(declare-fun res!638926 () Bool)

(declare-fun e!537485 () Bool)

(assert (=> b!953953 (=> (not res!638926) (not e!537485))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!57843 0))(
  ( (array!57844 (arr!27797 (Array (_ BitVec 32) (_ BitVec 64))) (size!28277 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57843)

(declare-datatypes ((V!32793 0))(
  ( (V!32794 (val!10479 Int)) )
))
(declare-datatypes ((ValueCell!9947 0))(
  ( (ValueCellFull!9947 (v!13034 V!32793)) (EmptyCell!9947) )
))
(declare-datatypes ((array!57845 0))(
  ( (array!57846 (arr!27798 (Array (_ BitVec 32) ValueCell!9947)) (size!28278 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57845)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!953953 (= res!638926 (and (= (size!28278 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28277 _keys!1441) (size!28278 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!953954 () Bool)

(assert (=> b!953954 (= e!537485 false)))

(declare-fun lt!429808 () Bool)

(declare-fun zeroValue!1139 () V!32793)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32793)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13694 0))(
  ( (tuple2!13695 (_1!6857 (_ BitVec 64)) (_2!6857 V!32793)) )
))
(declare-datatypes ((List!19511 0))(
  ( (Nil!19508) (Cons!19507 (h!20669 tuple2!13694) (t!27880 List!19511)) )
))
(declare-datatypes ((ListLongMap!12405 0))(
  ( (ListLongMap!12406 (toList!6218 List!19511)) )
))
(declare-fun contains!5268 (ListLongMap!12405 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3403 (array!57843 array!57845 (_ BitVec 32) (_ BitVec 32) V!32793 V!32793 (_ BitVec 32) Int) ListLongMap!12405)

(assert (=> b!953954 (= lt!429808 (contains!5268 (getCurrentListMap!3403 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27797 _keys!1441) i!735)))))

(declare-fun b!953955 () Bool)

(declare-fun res!638927 () Bool)

(assert (=> b!953955 (=> (not res!638927) (not e!537485))))

(declare-datatypes ((List!19512 0))(
  ( (Nil!19509) (Cons!19508 (h!20670 (_ BitVec 64)) (t!27881 List!19512)) )
))
(declare-fun arrayNoDuplicates!0 (array!57843 (_ BitVec 32) List!19512) Bool)

(assert (=> b!953955 (= res!638927 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19509))))

(declare-fun b!953956 () Bool)

(declare-fun res!638925 () Bool)

(assert (=> b!953956 (=> (not res!638925) (not e!537485))))

(assert (=> b!953956 (= res!638925 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28277 _keys!1441))))))

(declare-fun res!638928 () Bool)

(assert (=> start!81846 (=> (not res!638928) (not e!537485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81846 (= res!638928 (validMask!0 mask!1823))))

(assert (=> start!81846 e!537485))

(assert (=> start!81846 true))

(declare-fun tp_is_empty!20857 () Bool)

(assert (=> start!81846 tp_is_empty!20857))

(declare-fun array_inv!21521 (array!57843) Bool)

(assert (=> start!81846 (array_inv!21521 _keys!1441)))

(declare-fun e!537483 () Bool)

(declare-fun array_inv!21522 (array!57845) Bool)

(assert (=> start!81846 (and (array_inv!21522 _values!1197) e!537483)))

(assert (=> start!81846 tp!63640))

(declare-fun b!953957 () Bool)

(declare-fun res!638924 () Bool)

(assert (=> b!953957 (=> (not res!638924) (not e!537485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953957 (= res!638924 (validKeyInArray!0 (select (arr!27797 _keys!1441) i!735)))))

(declare-fun mapIsEmpty!33247 () Bool)

(declare-fun mapRes!33247 () Bool)

(assert (=> mapIsEmpty!33247 mapRes!33247))

(declare-fun b!953958 () Bool)

(declare-fun e!537486 () Bool)

(assert (=> b!953958 (= e!537486 tp_is_empty!20857)))

(declare-fun b!953959 () Bool)

(assert (=> b!953959 (= e!537483 (and e!537486 mapRes!33247))))

(declare-fun condMapEmpty!33247 () Bool)

(declare-fun mapDefault!33247 () ValueCell!9947)

