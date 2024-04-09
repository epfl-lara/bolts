; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35672 () Bool)

(assert start!35672)

(declare-fun b_free!7919 () Bool)

(declare-fun b_next!7919 () Bool)

(assert (=> start!35672 (= b_free!7919 (not b_next!7919))))

(declare-fun tp!27741 () Bool)

(declare-fun b_and!15179 () Bool)

(assert (=> start!35672 (= tp!27741 b_and!15179)))

(declare-fun b!358020 () Bool)

(declare-fun res!199055 () Bool)

(declare-fun e!219142 () Bool)

(assert (=> b!358020 (=> (not res!199055) (not e!219142))))

(declare-datatypes ((array!19765 0))(
  ( (array!19766 (arr!9373 (Array (_ BitVec 32) (_ BitVec 64))) (size!9725 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19765)

(declare-datatypes ((List!5443 0))(
  ( (Nil!5440) (Cons!5439 (h!6295 (_ BitVec 64)) (t!10601 List!5443)) )
))
(declare-fun arrayNoDuplicates!0 (array!19765 (_ BitVec 32) List!5443) Bool)

(assert (=> b!358020 (= res!199055 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5440))))

(declare-fun b!358021 () Bool)

(declare-fun res!199056 () Bool)

(assert (=> b!358021 (=> (not res!199056) (not e!219142))))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!358021 (= res!199056 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9725 _keys!1456))))))

(declare-fun res!199061 () Bool)

(assert (=> start!35672 (=> (not res!199061) (not e!219142))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35672 (= res!199061 (validMask!0 mask!1842))))

(assert (=> start!35672 e!219142))

(declare-fun tp_is_empty!8117 () Bool)

(assert (=> start!35672 tp_is_empty!8117))

(assert (=> start!35672 true))

(assert (=> start!35672 tp!27741))

(declare-fun array_inv!6890 (array!19765) Bool)

(assert (=> start!35672 (array_inv!6890 _keys!1456)))

(declare-datatypes ((V!11799 0))(
  ( (V!11800 (val!4103 Int)) )
))
(declare-datatypes ((ValueCell!3715 0))(
  ( (ValueCellFull!3715 (v!6293 V!11799)) (EmptyCell!3715) )
))
(declare-datatypes ((array!19767 0))(
  ( (array!19768 (arr!9374 (Array (_ BitVec 32) ValueCell!3715)) (size!9726 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19767)

(declare-fun e!219143 () Bool)

(declare-fun array_inv!6891 (array!19767) Bool)

(assert (=> start!35672 (and (array_inv!6891 _values!1208) e!219143)))

(declare-fun b!358022 () Bool)

(declare-fun res!199057 () Bool)

(assert (=> b!358022 (=> (not res!199057) (not e!219142))))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!358022 (= res!199057 (not (= (select (arr!9373 _keys!1456) from!1805) k!1077)))))

(declare-fun b!358023 () Bool)

(declare-fun e!219145 () Bool)

(assert (=> b!358023 (= e!219145 tp_is_empty!8117)))

(declare-fun b!358024 () Bool)

(declare-fun e!219144 () Bool)

(assert (=> b!358024 (= e!219144 tp_is_empty!8117)))

(declare-fun b!358025 () Bool)

(declare-fun res!199059 () Bool)

(assert (=> b!358025 (=> (not res!199059) (not e!219142))))

(declare-fun arrayContainsKey!0 (array!19765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!358025 (= res!199059 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!358026 () Bool)

(declare-fun e!219141 () Bool)

(assert (=> b!358026 (= e!219142 (not e!219141))))

(declare-fun res!199058 () Bool)

(assert (=> b!358026 (=> res!199058 e!219141)))

(assert (=> b!358026 (= res!199058 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9725 _keys!1456))))))

(assert (=> b!358026 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11799)

(declare-datatypes ((Unit!11047 0))(
  ( (Unit!11048) )
))
(declare-fun lt!166132 () Unit!11047)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11799)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!41 (array!19765 array!19767 (_ BitVec 32) (_ BitVec 32) V!11799 V!11799 (_ BitVec 64) (_ BitVec 32)) Unit!11047)

(assert (=> b!358026 (= lt!166132 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!41 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun mapIsEmpty!13683 () Bool)

(declare-fun mapRes!13683 () Bool)

(assert (=> mapIsEmpty!13683 mapRes!13683))

(declare-fun b!358027 () Bool)

(assert (=> b!358027 (= e!219141 (bvsle #b00000000000000000000000000000000 (size!9725 _keys!1456)))))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((tuple2!5730 0))(
  ( (tuple2!5731 (_1!2875 (_ BitVec 64)) (_2!2875 V!11799)) )
))
(declare-datatypes ((List!5444 0))(
  ( (Nil!5441) (Cons!5440 (h!6296 tuple2!5730) (t!10602 List!5444)) )
))
(declare-datatypes ((ListLongMap!4657 0))(
  ( (ListLongMap!4658 (toList!2344 List!5444)) )
))
(declare-fun contains!2420 (ListLongMap!4657 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1861 (array!19765 array!19767 (_ BitVec 32) (_ BitVec 32) V!11799 V!11799 (_ BitVec 32) Int) ListLongMap!4657)

(assert (=> b!358027 (contains!2420 (getCurrentListMap!1861 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k!1077)))

(declare-fun lt!166131 () Unit!11047)

(declare-fun lemmaArrayContainsKeyThenInListMap!354 (array!19765 array!19767 (_ BitVec 32) (_ BitVec 32) V!11799 V!11799 (_ BitVec 64) (_ BitVec 32) Int) Unit!11047)

(assert (=> b!358027 (= lt!166131 (lemmaArrayContainsKeyThenInListMap!354 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!358028 () Bool)

(declare-fun res!199063 () Bool)

(assert (=> b!358028 (=> (not res!199063) (not e!219142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19765 (_ BitVec 32)) Bool)

(assert (=> b!358028 (= res!199063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13683 () Bool)

(declare-fun tp!27740 () Bool)

(assert (=> mapNonEmpty!13683 (= mapRes!13683 (and tp!27740 e!219144))))

(declare-fun mapValue!13683 () ValueCell!3715)

(declare-fun mapKey!13683 () (_ BitVec 32))

(declare-fun mapRest!13683 () (Array (_ BitVec 32) ValueCell!3715))

(assert (=> mapNonEmpty!13683 (= (arr!9374 _values!1208) (store mapRest!13683 mapKey!13683 mapValue!13683))))

(declare-fun b!358029 () Bool)

(declare-fun res!199060 () Bool)

(assert (=> b!358029 (=> (not res!199060) (not e!219142))))

(assert (=> b!358029 (= res!199060 (and (= (size!9726 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9725 _keys!1456) (size!9726 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358030 () Bool)

(declare-fun res!199062 () Bool)

(assert (=> b!358030 (=> (not res!199062) (not e!219142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!358030 (= res!199062 (validKeyInArray!0 k!1077))))

(declare-fun b!358031 () Bool)

(assert (=> b!358031 (= e!219143 (and e!219145 mapRes!13683))))

(declare-fun condMapEmpty!13683 () Bool)

(declare-fun mapDefault!13683 () ValueCell!3715)

