; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78646 () Bool)

(assert start!78646)

(declare-fun b_free!16831 () Bool)

(declare-fun b_next!16831 () Bool)

(assert (=> start!78646 (= b_free!16831 (not b_next!16831))))

(declare-fun tp!58934 () Bool)

(declare-fun b_and!27471 () Bool)

(assert (=> start!78646 (= tp!58934 b_and!27471)))

(declare-fun b!916335 () Bool)

(declare-fun e!514413 () Bool)

(declare-fun tp_is_empty!19339 () Bool)

(assert (=> b!916335 (= e!514413 tp_is_empty!19339)))

(declare-fun b!916336 () Bool)

(declare-fun res!617860 () Bool)

(declare-fun e!514412 () Bool)

(assert (=> b!916336 (=> (not res!617860) (not e!514412))))

(declare-datatypes ((array!54680 0))(
  ( (array!54681 (arr!26281 (Array (_ BitVec 32) (_ BitVec 64))) (size!26741 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54680)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30751 0))(
  ( (V!30752 (val!9720 Int)) )
))
(declare-datatypes ((ValueCell!9188 0))(
  ( (ValueCellFull!9188 (v!12238 V!30751)) (EmptyCell!9188) )
))
(declare-datatypes ((array!54682 0))(
  ( (array!54683 (arr!26282 (Array (_ BitVec 32) ValueCell!9188)) (size!26742 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54682)

(assert (=> b!916336 (= res!617860 (and (= (size!26742 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26741 _keys!1487) (size!26742 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916337 () Bool)

(declare-fun res!617863 () Bool)

(assert (=> b!916337 (=> (not res!617863) (not e!514412))))

(declare-datatypes ((List!18542 0))(
  ( (Nil!18539) (Cons!18538 (h!19684 (_ BitVec 64)) (t!26163 List!18542)) )
))
(declare-fun arrayNoDuplicates!0 (array!54680 (_ BitVec 32) List!18542) Bool)

(assert (=> b!916337 (= res!617863 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18539))))

(declare-fun mapIsEmpty!30765 () Bool)

(declare-fun mapRes!30765 () Bool)

(assert (=> mapIsEmpty!30765 mapRes!30765))

(declare-fun b!916338 () Bool)

(declare-fun e!514416 () Bool)

(assert (=> b!916338 (= e!514412 e!514416)))

(declare-fun res!617862 () Bool)

(assert (=> b!916338 (=> (not res!617862) (not e!514416))))

(declare-datatypes ((tuple2!12682 0))(
  ( (tuple2!12683 (_1!6351 (_ BitVec 64)) (_2!6351 V!30751)) )
))
(declare-datatypes ((List!18543 0))(
  ( (Nil!18540) (Cons!18539 (h!19685 tuple2!12682) (t!26164 List!18543)) )
))
(declare-datatypes ((ListLongMap!11393 0))(
  ( (ListLongMap!11394 (toList!5712 List!18543)) )
))
(declare-fun lt!411747 () ListLongMap!11393)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4732 (ListLongMap!11393 (_ BitVec 64)) Bool)

(assert (=> b!916338 (= res!617862 (contains!4732 lt!411747 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30751)

(declare-fun minValue!1173 () V!30751)

(declare-fun getCurrentListMap!2941 (array!54680 array!54682 (_ BitVec 32) (_ BitVec 32) V!30751 V!30751 (_ BitVec 32) Int) ListLongMap!11393)

(assert (=> b!916338 (= lt!411747 (getCurrentListMap!2941 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!617861 () Bool)

(assert (=> start!78646 (=> (not res!617861) (not e!514412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78646 (= res!617861 (validMask!0 mask!1881))))

(assert (=> start!78646 e!514412))

(assert (=> start!78646 true))

(declare-fun e!514415 () Bool)

(declare-fun array_inv!20492 (array!54682) Bool)

(assert (=> start!78646 (and (array_inv!20492 _values!1231) e!514415)))

(assert (=> start!78646 tp!58934))

(declare-fun array_inv!20493 (array!54680) Bool)

(assert (=> start!78646 (array_inv!20493 _keys!1487)))

(assert (=> start!78646 tp_is_empty!19339))

(declare-fun mapNonEmpty!30765 () Bool)

(declare-fun tp!58935 () Bool)

(declare-fun e!514411 () Bool)

(assert (=> mapNonEmpty!30765 (= mapRes!30765 (and tp!58935 e!514411))))

(declare-fun mapValue!30765 () ValueCell!9188)

(declare-fun mapRest!30765 () (Array (_ BitVec 32) ValueCell!9188))

(declare-fun mapKey!30765 () (_ BitVec 32))

(assert (=> mapNonEmpty!30765 (= (arr!26282 _values!1231) (store mapRest!30765 mapKey!30765 mapValue!30765))))

(declare-fun b!916339 () Bool)

(assert (=> b!916339 (= e!514415 (and e!514413 mapRes!30765))))

(declare-fun condMapEmpty!30765 () Bool)

(declare-fun mapDefault!30765 () ValueCell!9188)

