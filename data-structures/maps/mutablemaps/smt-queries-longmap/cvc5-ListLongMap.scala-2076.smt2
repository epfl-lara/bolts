; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35632 () Bool)

(assert start!35632)

(declare-fun b_free!7879 () Bool)

(declare-fun b_next!7879 () Bool)

(assert (=> start!35632 (= b_free!7879 (not b_next!7879))))

(declare-fun tp!27620 () Bool)

(declare-fun b_and!15139 () Bool)

(assert (=> start!35632 (= tp!27620 b_and!15139)))

(declare-fun b!357300 () Bool)

(declare-fun res!198520 () Bool)

(declare-fun e!218786 () Bool)

(assert (=> b!357300 (=> (not res!198520) (not e!218786))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19689 0))(
  ( (array!19690 (arr!9335 (Array (_ BitVec 32) (_ BitVec 64))) (size!9687 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19689)

(declare-datatypes ((V!11747 0))(
  ( (V!11748 (val!4083 Int)) )
))
(declare-datatypes ((ValueCell!3695 0))(
  ( (ValueCellFull!3695 (v!6273 V!11747)) (EmptyCell!3695) )
))
(declare-datatypes ((array!19691 0))(
  ( (array!19692 (arr!9336 (Array (_ BitVec 32) ValueCell!3695)) (size!9688 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19691)

(assert (=> b!357300 (= res!198520 (and (= (size!9688 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9687 _keys!1456) (size!9688 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!357301 () Bool)

(declare-fun res!198515 () Bool)

(assert (=> b!357301 (=> (not res!198515) (not e!218786))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357301 (= res!198515 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!357302 () Bool)

(declare-fun res!198522 () Bool)

(assert (=> b!357302 (=> (not res!198522) (not e!218786))))

(declare-datatypes ((List!5416 0))(
  ( (Nil!5413) (Cons!5412 (h!6268 (_ BitVec 64)) (t!10574 List!5416)) )
))
(declare-fun arrayNoDuplicates!0 (array!19689 (_ BitVec 32) List!5416) Bool)

(assert (=> b!357302 (= res!198522 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5413))))

(declare-fun mapNonEmpty!13623 () Bool)

(declare-fun mapRes!13623 () Bool)

(declare-fun tp!27621 () Bool)

(declare-fun e!218782 () Bool)

(assert (=> mapNonEmpty!13623 (= mapRes!13623 (and tp!27621 e!218782))))

(declare-fun mapKey!13623 () (_ BitVec 32))

(declare-fun mapRest!13623 () (Array (_ BitVec 32) ValueCell!3695))

(declare-fun mapValue!13623 () ValueCell!3695)

(assert (=> mapNonEmpty!13623 (= (arr!9336 _values!1208) (store mapRest!13623 mapKey!13623 mapValue!13623))))

(declare-fun b!357304 () Bool)

(declare-fun e!218784 () Bool)

(assert (=> b!357304 (= e!218784 true)))

(declare-fun minValue!1150 () V!11747)

(declare-fun defaultEntry!1216 () Int)

(declare-fun zeroValue!1150 () V!11747)

(declare-datatypes ((tuple2!5700 0))(
  ( (tuple2!5701 (_1!2860 (_ BitVec 64)) (_2!2860 V!11747)) )
))
(declare-datatypes ((List!5417 0))(
  ( (Nil!5414) (Cons!5413 (h!6269 tuple2!5700) (t!10575 List!5417)) )
))
(declare-datatypes ((ListLongMap!4627 0))(
  ( (ListLongMap!4628 (toList!2329 List!5417)) )
))
(declare-fun contains!2405 (ListLongMap!4627 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1846 (array!19689 array!19691 (_ BitVec 32) (_ BitVec 32) V!11747 V!11747 (_ BitVec 32) Int) ListLongMap!4627)

(assert (=> b!357304 (contains!2405 (getCurrentListMap!1846 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k!1077)))

(declare-datatypes ((Unit!11013 0))(
  ( (Unit!11014) )
))
(declare-fun lt!166012 () Unit!11013)

(declare-fun lemmaArrayContainsKeyThenInListMap!339 (array!19689 array!19691 (_ BitVec 32) (_ BitVec 32) V!11747 V!11747 (_ BitVec 64) (_ BitVec 32) Int) Unit!11013)

(assert (=> b!357304 (= lt!166012 (lemmaArrayContainsKeyThenInListMap!339 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357305 () Bool)

(declare-fun res!198516 () Bool)

(assert (=> b!357305 (=> (not res!198516) (not e!218786))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357305 (= res!198516 (validKeyInArray!0 k!1077))))

(declare-fun b!357306 () Bool)

(declare-fun tp_is_empty!8077 () Bool)

(assert (=> b!357306 (= e!218782 tp_is_empty!8077)))

(declare-fun b!357307 () Bool)

(declare-fun res!198519 () Bool)

(assert (=> b!357307 (=> (not res!198519) (not e!218786))))

(assert (=> b!357307 (= res!198519 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9687 _keys!1456))))))

(declare-fun mapIsEmpty!13623 () Bool)

(assert (=> mapIsEmpty!13623 mapRes!13623))

(declare-fun b!357308 () Bool)

(declare-fun res!198523 () Bool)

(assert (=> b!357308 (=> (not res!198523) (not e!218786))))

(assert (=> b!357308 (= res!198523 (not (= (select (arr!9335 _keys!1456) from!1805) k!1077)))))

(declare-fun b!357309 () Bool)

(declare-fun e!218781 () Bool)

(declare-fun e!218785 () Bool)

(assert (=> b!357309 (= e!218781 (and e!218785 mapRes!13623))))

(declare-fun condMapEmpty!13623 () Bool)

(declare-fun mapDefault!13623 () ValueCell!3695)

