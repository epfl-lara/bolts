; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78410 () Bool)

(assert start!78410)

(declare-fun b_free!16747 () Bool)

(declare-fun b_next!16747 () Bool)

(assert (=> start!78410 (= b_free!16747 (not b_next!16747))))

(declare-fun tp!58530 () Bool)

(declare-fun b_and!27379 () Bool)

(assert (=> start!78410 (= tp!58530 b_and!27379)))

(declare-fun b!914176 () Bool)

(declare-fun e!512863 () Bool)

(declare-fun tp_is_empty!19165 () Bool)

(assert (=> b!914176 (= e!512863 tp_is_empty!19165)))

(declare-fun b!914177 () Bool)

(declare-fun e!512869 () Bool)

(declare-fun e!512864 () Bool)

(assert (=> b!914177 (= e!512869 e!512864)))

(declare-fun res!616636 () Bool)

(assert (=> b!914177 (=> (not res!616636) (not e!512864))))

(declare-datatypes ((V!30519 0))(
  ( (V!30520 (val!9633 Int)) )
))
(declare-datatypes ((tuple2!12618 0))(
  ( (tuple2!12619 (_1!6319 (_ BitVec 64)) (_2!6319 V!30519)) )
))
(declare-datatypes ((List!18457 0))(
  ( (Nil!18454) (Cons!18453 (h!19599 tuple2!12618) (t!26072 List!18457)) )
))
(declare-datatypes ((ListLongMap!11329 0))(
  ( (ListLongMap!11330 (toList!5680 List!18457)) )
))
(declare-fun lt!411392 () ListLongMap!11329)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4695 (ListLongMap!11329 (_ BitVec 64)) Bool)

(assert (=> b!914177 (= res!616636 (contains!4695 lt!411392 k!1033))))

(declare-datatypes ((ValueCell!9101 0))(
  ( (ValueCellFull!9101 (v!12149 V!30519)) (EmptyCell!9101) )
))
(declare-datatypes ((array!54338 0))(
  ( (array!54339 (arr!26116 (Array (_ BitVec 32) ValueCell!9101)) (size!26576 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54338)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30519)

(declare-datatypes ((array!54340 0))(
  ( (array!54341 (arr!26117 (Array (_ BitVec 32) (_ BitVec 64))) (size!26577 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54340)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30519)

(declare-fun getCurrentListMap!2909 (array!54340 array!54338 (_ BitVec 32) (_ BitVec 32) V!30519 V!30519 (_ BitVec 32) Int) ListLongMap!11329)

(assert (=> b!914177 (= lt!411392 (getCurrentListMap!2909 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!914178 () Bool)

(declare-fun res!616639 () Bool)

(assert (=> b!914178 (=> (not res!616639) (not e!512869))))

(declare-datatypes ((List!18458 0))(
  ( (Nil!18455) (Cons!18454 (h!19600 (_ BitVec 64)) (t!26073 List!18458)) )
))
(declare-fun arrayNoDuplicates!0 (array!54340 (_ BitVec 32) List!18458) Bool)

(assert (=> b!914178 (= res!616639 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18455))))

(declare-fun b!914179 () Bool)

(declare-fun res!616638 () Bool)

(declare-fun e!512866 () Bool)

(assert (=> b!914179 (=> res!616638 e!512866)))

(declare-fun lt!411393 () V!30519)

(declare-fun lt!411391 () ListLongMap!11329)

(declare-fun apply!536 (ListLongMap!11329 (_ BitVec 64)) V!30519)

(assert (=> b!914179 (= res!616638 (not (= (apply!536 lt!411391 k!1033) lt!411393)))))

(declare-fun b!914180 () Bool)

(assert (=> b!914180 (= e!512866 true)))

(assert (=> b!914180 (= (apply!536 lt!411392 k!1033) lt!411393)))

(declare-datatypes ((Unit!30923 0))(
  ( (Unit!30924) )
))
(declare-fun lt!411394 () Unit!30923)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun lemmaListMapApplyFromThenApplyFromZero!68 (array!54340 array!54338 (_ BitVec 32) (_ BitVec 32) V!30519 V!30519 (_ BitVec 64) V!30519 (_ BitVec 32) Int) Unit!30923)

(assert (=> b!914180 (= lt!411394 (lemmaListMapApplyFromThenApplyFromZero!68 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!411393 i!717 defaultEntry!1160))))

(declare-fun b!914181 () Bool)

(declare-fun res!616637 () Bool)

(assert (=> b!914181 (=> (not res!616637) (not e!512864))))

(assert (=> b!914181 (= res!616637 (and (= (select (arr!26117 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!914182 () Bool)

(declare-fun res!616635 () Bool)

(assert (=> b!914182 (=> (not res!616635) (not e!512869))))

(assert (=> b!914182 (= res!616635 (and (= (size!26576 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26577 _keys!1386) (size!26576 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30486 () Bool)

(declare-fun mapRes!30486 () Bool)

(declare-fun tp!58529 () Bool)

(assert (=> mapNonEmpty!30486 (= mapRes!30486 (and tp!58529 e!512863))))

(declare-fun mapRest!30486 () (Array (_ BitVec 32) ValueCell!9101))

(declare-fun mapKey!30486 () (_ BitVec 32))

(declare-fun mapValue!30486 () ValueCell!9101)

(assert (=> mapNonEmpty!30486 (= (arr!26116 _values!1152) (store mapRest!30486 mapKey!30486 mapValue!30486))))

(declare-fun b!914183 () Bool)

(declare-fun e!512868 () Bool)

(assert (=> b!914183 (= e!512864 (not e!512868))))

(declare-fun res!616640 () Bool)

(assert (=> b!914183 (=> res!616640 e!512868)))

(assert (=> b!914183 (= res!616640 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26577 _keys!1386))))))

(declare-fun get!13727 (ValueCell!9101 V!30519) V!30519)

(declare-fun dynLambda!1402 (Int (_ BitVec 64)) V!30519)

(assert (=> b!914183 (= lt!411393 (get!13727 (select (arr!26116 _values!1152) i!717) (dynLambda!1402 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!54340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!914183 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun lt!411395 () Unit!30923)

(declare-fun lemmaKeyInListMapIsInArray!294 (array!54340 array!54338 (_ BitVec 32) (_ BitVec 32) V!30519 V!30519 (_ BitVec 64) Int) Unit!30923)

(assert (=> b!914183 (= lt!411395 (lemmaKeyInListMapIsInArray!294 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!30486 () Bool)

(assert (=> mapIsEmpty!30486 mapRes!30486))

(declare-fun b!914185 () Bool)

(declare-fun e!512867 () Bool)

(assert (=> b!914185 (= e!512867 tp_is_empty!19165)))

(declare-fun b!914186 () Bool)

(declare-fun res!616641 () Bool)

(assert (=> b!914186 (=> (not res!616641) (not e!512869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54340 (_ BitVec 32)) Bool)

(assert (=> b!914186 (= res!616641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!914187 () Bool)

(declare-fun res!616644 () Bool)

(assert (=> b!914187 (=> (not res!616644) (not e!512864))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!914187 (= res!616644 (inRange!0 i!717 mask!1756))))

(declare-fun b!914188 () Bool)

(assert (=> b!914188 (= e!512868 e!512866)))

(declare-fun res!616643 () Bool)

(assert (=> b!914188 (=> res!616643 e!512866)))

(assert (=> b!914188 (= res!616643 (not (contains!4695 lt!411391 k!1033)))))

(assert (=> b!914188 (= lt!411391 (getCurrentListMap!2909 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!914184 () Bool)

(declare-fun e!512862 () Bool)

(assert (=> b!914184 (= e!512862 (and e!512867 mapRes!30486))))

(declare-fun condMapEmpty!30486 () Bool)

(declare-fun mapDefault!30486 () ValueCell!9101)

