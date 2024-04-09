; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81912 () Bool)

(assert start!81912)

(declare-fun b_free!18379 () Bool)

(declare-fun b_next!18379 () Bool)

(assert (=> start!81912 (= b_free!18379 (not b_next!18379))))

(declare-fun tp!63837 () Bool)

(declare-fun b_and!29883 () Bool)

(assert (=> start!81912 (= tp!63837 b_and!29883)))

(declare-fun b!954844 () Bool)

(declare-fun e!537980 () Bool)

(assert (=> b!954844 (= e!537980 false)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32881 0))(
  ( (V!32882 (val!10512 Int)) )
))
(declare-fun zeroValue!1139 () V!32881)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun lt!429907 () Bool)

(declare-datatypes ((array!57971 0))(
  ( (array!57972 (arr!27861 (Array (_ BitVec 32) (_ BitVec 64))) (size!28341 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57971)

(declare-datatypes ((ValueCell!9980 0))(
  ( (ValueCellFull!9980 (v!13067 V!32881)) (EmptyCell!9980) )
))
(declare-datatypes ((array!57973 0))(
  ( (array!57974 (arr!27862 (Array (_ BitVec 32) ValueCell!9980)) (size!28342 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57973)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32881)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13742 0))(
  ( (tuple2!13743 (_1!6881 (_ BitVec 64)) (_2!6881 V!32881)) )
))
(declare-datatypes ((List!19559 0))(
  ( (Nil!19556) (Cons!19555 (h!20717 tuple2!13742) (t!27928 List!19559)) )
))
(declare-datatypes ((ListLongMap!12453 0))(
  ( (ListLongMap!12454 (toList!6242 List!19559)) )
))
(declare-fun contains!5292 (ListLongMap!12453 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3427 (array!57971 array!57973 (_ BitVec 32) (_ BitVec 32) V!32881 V!32881 (_ BitVec 32) Int) ListLongMap!12453)

(assert (=> b!954844 (= lt!429907 (contains!5292 (getCurrentListMap!3427 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27861 _keys!1441) i!735)))))

(declare-fun b!954845 () Bool)

(declare-fun res!639522 () Bool)

(assert (=> b!954845 (=> (not res!639522) (not e!537980))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57971 (_ BitVec 32)) Bool)

(assert (=> b!954845 (= res!639522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954846 () Bool)

(declare-fun res!639520 () Bool)

(assert (=> b!954846 (=> (not res!639520) (not e!537980))))

(assert (=> b!954846 (= res!639520 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28341 _keys!1441))))))

(declare-fun b!954847 () Bool)

(declare-fun res!639521 () Bool)

(assert (=> b!954847 (=> (not res!639521) (not e!537980))))

(declare-datatypes ((List!19560 0))(
  ( (Nil!19557) (Cons!19556 (h!20718 (_ BitVec 64)) (t!27929 List!19560)) )
))
(declare-fun arrayNoDuplicates!0 (array!57971 (_ BitVec 32) List!19560) Bool)

(assert (=> b!954847 (= res!639521 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19557))))

(declare-fun b!954848 () Bool)

(declare-fun res!639518 () Bool)

(assert (=> b!954848 (=> (not res!639518) (not e!537980))))

(assert (=> b!954848 (= res!639518 (and (= (size!28342 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28341 _keys!1441) (size!28342 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954849 () Bool)

(declare-fun e!537977 () Bool)

(declare-fun tp_is_empty!20923 () Bool)

(assert (=> b!954849 (= e!537977 tp_is_empty!20923)))

(declare-fun mapIsEmpty!33346 () Bool)

(declare-fun mapRes!33346 () Bool)

(assert (=> mapIsEmpty!33346 mapRes!33346))

(declare-fun res!639519 () Bool)

(assert (=> start!81912 (=> (not res!639519) (not e!537980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81912 (= res!639519 (validMask!0 mask!1823))))

(assert (=> start!81912 e!537980))

(assert (=> start!81912 true))

(assert (=> start!81912 tp_is_empty!20923))

(declare-fun array_inv!21573 (array!57971) Bool)

(assert (=> start!81912 (array_inv!21573 _keys!1441)))

(declare-fun e!537978 () Bool)

(declare-fun array_inv!21574 (array!57973) Bool)

(assert (=> start!81912 (and (array_inv!21574 _values!1197) e!537978)))

(assert (=> start!81912 tp!63837))

(declare-fun b!954850 () Bool)

(declare-fun res!639523 () Bool)

(assert (=> b!954850 (=> (not res!639523) (not e!537980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954850 (= res!639523 (validKeyInArray!0 (select (arr!27861 _keys!1441) i!735)))))

(declare-fun b!954851 () Bool)

(declare-fun e!537981 () Bool)

(assert (=> b!954851 (= e!537981 tp_is_empty!20923)))

(declare-fun mapNonEmpty!33346 () Bool)

(declare-fun tp!63838 () Bool)

(assert (=> mapNonEmpty!33346 (= mapRes!33346 (and tp!63838 e!537981))))

(declare-fun mapValue!33346 () ValueCell!9980)

(declare-fun mapRest!33346 () (Array (_ BitVec 32) ValueCell!9980))

(declare-fun mapKey!33346 () (_ BitVec 32))

(assert (=> mapNonEmpty!33346 (= (arr!27862 _values!1197) (store mapRest!33346 mapKey!33346 mapValue!33346))))

(declare-fun b!954852 () Bool)

(assert (=> b!954852 (= e!537978 (and e!537977 mapRes!33346))))

(declare-fun condMapEmpty!33346 () Bool)

(declare-fun mapDefault!33346 () ValueCell!9980)

