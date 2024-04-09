; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42082 () Bool)

(assert start!42082)

(declare-fun b_free!11627 () Bool)

(declare-fun b_next!11627 () Bool)

(assert (=> start!42082 (= b_free!11627 (not b_next!11627))))

(declare-fun tp!40899 () Bool)

(declare-fun b_and!20055 () Bool)

(assert (=> start!42082 (= tp!40899 b_and!20055)))

(declare-fun mapIsEmpty!21280 () Bool)

(declare-fun mapRes!21280 () Bool)

(assert (=> mapIsEmpty!21280 mapRes!21280))

(declare-fun b!469562 () Bool)

(declare-fun res!280677 () Bool)

(declare-fun e!275013 () Bool)

(assert (=> b!469562 (=> (not res!280677) (not e!275013))))

(declare-datatypes ((array!29845 0))(
  ( (array!29846 (arr!14344 (Array (_ BitVec 32) (_ BitVec 64))) (size!14696 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29845)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29845 (_ BitVec 32)) Bool)

(assert (=> b!469562 (= res!280677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469563 () Bool)

(declare-fun res!280680 () Bool)

(assert (=> b!469563 (=> (not res!280680) (not e!275013))))

(declare-datatypes ((List!8745 0))(
  ( (Nil!8742) (Cons!8741 (h!9597 (_ BitVec 64)) (t!14713 List!8745)) )
))
(declare-fun arrayNoDuplicates!0 (array!29845 (_ BitVec 32) List!8745) Bool)

(assert (=> b!469563 (= res!280680 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8742))))

(declare-fun b!469564 () Bool)

(declare-fun e!275014 () Bool)

(declare-fun tp_is_empty!13055 () Bool)

(assert (=> b!469564 (= e!275014 tp_is_empty!13055)))

(declare-fun b!469565 () Bool)

(declare-fun e!275011 () Bool)

(assert (=> b!469565 (= e!275011 true)))

(declare-datatypes ((V!18511 0))(
  ( (V!18512 (val!6572 Int)) )
))
(declare-datatypes ((tuple2!8628 0))(
  ( (tuple2!8629 (_1!4324 (_ BitVec 64)) (_2!4324 V!18511)) )
))
(declare-datatypes ((List!8746 0))(
  ( (Nil!8743) (Cons!8742 (h!9598 tuple2!8628) (t!14714 List!8746)) )
))
(declare-datatypes ((ListLongMap!7555 0))(
  ( (ListLongMap!7556 (toList!3793 List!8746)) )
))
(declare-fun lt!212953 () ListLongMap!7555)

(declare-fun lt!212950 () tuple2!8628)

(declare-fun minValueBefore!38 () V!18511)

(declare-fun +!1680 (ListLongMap!7555 tuple2!8628) ListLongMap!7555)

(assert (=> b!469565 (= (+!1680 lt!212953 lt!212950) (+!1680 (+!1680 lt!212953 (tuple2!8629 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212950))))

(declare-fun minValueAfter!38 () V!18511)

(assert (=> b!469565 (= lt!212950 (tuple2!8629 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13710 0))(
  ( (Unit!13711) )
))
(declare-fun lt!212952 () Unit!13710)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!121 (ListLongMap!7555 (_ BitVec 64) V!18511 V!18511) Unit!13710)

(assert (=> b!469565 (= lt!212952 (addSameAsAddTwiceSameKeyDiffValues!121 lt!212953 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun zeroValue!794 () V!18511)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((ValueCell!6184 0))(
  ( (ValueCellFull!6184 (v!8858 V!18511)) (EmptyCell!6184) )
))
(declare-datatypes ((array!29847 0))(
  ( (array!29848 (arr!14345 (Array (_ BitVec 32) ValueCell!6184)) (size!14697 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29847)

(declare-fun lt!212955 () ListLongMap!7555)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun getCurrentListMap!2202 (array!29845 array!29847 (_ BitVec 32) (_ BitVec 32) V!18511 V!18511 (_ BitVec 32) Int) ListLongMap!7555)

(assert (=> b!469565 (= lt!212955 (getCurrentListMap!2202 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212949 () ListLongMap!7555)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!469565 (= lt!212949 (getCurrentListMap!2202 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469566 () Bool)

(declare-fun e!275012 () Bool)

(assert (=> b!469566 (= e!275012 tp_is_empty!13055)))

(declare-fun b!469567 () Bool)

(declare-fun e!275009 () Bool)

(assert (=> b!469567 (= e!275009 (and e!275012 mapRes!21280))))

(declare-fun condMapEmpty!21280 () Bool)

(declare-fun mapDefault!21280 () ValueCell!6184)

