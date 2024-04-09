; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35624 () Bool)

(assert start!35624)

(declare-fun b_free!7871 () Bool)

(declare-fun b_next!7871 () Bool)

(assert (=> start!35624 (= b_free!7871 (not b_next!7871))))

(declare-fun tp!27596 () Bool)

(declare-fun b_and!15131 () Bool)

(assert (=> start!35624 (= tp!27596 b_and!15131)))

(declare-fun b!357156 () Bool)

(declare-fun e!218709 () Bool)

(assert (=> b!357156 (= e!218709 true)))

(declare-datatypes ((V!11735 0))(
  ( (V!11736 (val!4079 Int)) )
))
(declare-fun minValue!1150 () V!11735)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((array!19673 0))(
  ( (array!19674 (arr!9327 (Array (_ BitVec 32) (_ BitVec 64))) (size!9679 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19673)

(declare-fun k!1077 () (_ BitVec 64))

(declare-datatypes ((ValueCell!3691 0))(
  ( (ValueCellFull!3691 (v!6269 V!11735)) (EmptyCell!3691) )
))
(declare-datatypes ((array!19675 0))(
  ( (array!19676 (arr!9328 (Array (_ BitVec 32) ValueCell!3691)) (size!9680 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19675)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11735)

(declare-datatypes ((tuple2!5696 0))(
  ( (tuple2!5697 (_1!2858 (_ BitVec 64)) (_2!2858 V!11735)) )
))
(declare-datatypes ((List!5412 0))(
  ( (Nil!5409) (Cons!5408 (h!6264 tuple2!5696) (t!10570 List!5412)) )
))
(declare-datatypes ((ListLongMap!4623 0))(
  ( (ListLongMap!4624 (toList!2327 List!5412)) )
))
(declare-fun contains!2403 (ListLongMap!4623 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1844 (array!19673 array!19675 (_ BitVec 32) (_ BitVec 32) V!11735 V!11735 (_ BitVec 32) Int) ListLongMap!4623)

(assert (=> b!357156 (contains!2403 (getCurrentListMap!1844 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k!1077)))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((Unit!11007 0))(
  ( (Unit!11008) )
))
(declare-fun lt!165988 () Unit!11007)

(declare-fun lemmaArrayContainsKeyThenInListMap!337 (array!19673 array!19675 (_ BitVec 32) (_ BitVec 32) V!11735 V!11735 (_ BitVec 64) (_ BitVec 32) Int) Unit!11007)

(assert (=> b!357156 (= lt!165988 (lemmaArrayContainsKeyThenInListMap!337 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357157 () Bool)

(declare-fun e!218711 () Bool)

(declare-fun tp_is_empty!8069 () Bool)

(assert (=> b!357157 (= e!218711 tp_is_empty!8069)))

(declare-fun mapIsEmpty!13611 () Bool)

(declare-fun mapRes!13611 () Bool)

(assert (=> mapIsEmpty!13611 mapRes!13611))

(declare-fun b!357158 () Bool)

(declare-fun res!198410 () Bool)

(declare-fun e!218714 () Bool)

(assert (=> b!357158 (=> (not res!198410) (not e!218714))))

(assert (=> b!357158 (= res!198410 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9679 _keys!1456))))))

(declare-fun b!357159 () Bool)

(declare-fun res!198407 () Bool)

(assert (=> b!357159 (=> (not res!198407) (not e!218714))))

(assert (=> b!357159 (= res!198407 (and (= (size!9680 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9679 _keys!1456) (size!9680 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!357160 () Bool)

(declare-fun res!198409 () Bool)

(assert (=> b!357160 (=> (not res!198409) (not e!218714))))

(declare-datatypes ((List!5413 0))(
  ( (Nil!5410) (Cons!5409 (h!6265 (_ BitVec 64)) (t!10571 List!5413)) )
))
(declare-fun arrayNoDuplicates!0 (array!19673 (_ BitVec 32) List!5413) Bool)

(assert (=> b!357160 (= res!198409 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5410))))

(declare-fun b!357161 () Bool)

(declare-fun res!198414 () Bool)

(assert (=> b!357161 (=> (not res!198414) (not e!218714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19673 (_ BitVec 32)) Bool)

(assert (=> b!357161 (= res!198414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357162 () Bool)

(declare-fun res!198412 () Bool)

(assert (=> b!357162 (=> (not res!198412) (not e!218714))))

(declare-fun arrayContainsKey!0 (array!19673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357162 (= res!198412 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun mapNonEmpty!13611 () Bool)

(declare-fun tp!27597 () Bool)

(declare-fun e!218710 () Bool)

(assert (=> mapNonEmpty!13611 (= mapRes!13611 (and tp!27597 e!218710))))

(declare-fun mapRest!13611 () (Array (_ BitVec 32) ValueCell!3691))

(declare-fun mapValue!13611 () ValueCell!3691)

(declare-fun mapKey!13611 () (_ BitVec 32))

(assert (=> mapNonEmpty!13611 (= (arr!9328 _values!1208) (store mapRest!13611 mapKey!13611 mapValue!13611))))

(declare-fun b!357163 () Bool)

(declare-fun res!198413 () Bool)

(assert (=> b!357163 (=> (not res!198413) (not e!218714))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357163 (= res!198413 (validKeyInArray!0 k!1077))))

(declare-fun res!198408 () Bool)

(assert (=> start!35624 (=> (not res!198408) (not e!218714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35624 (= res!198408 (validMask!0 mask!1842))))

(assert (=> start!35624 e!218714))

(assert (=> start!35624 tp_is_empty!8069))

(assert (=> start!35624 true))

(assert (=> start!35624 tp!27596))

(declare-fun array_inv!6862 (array!19673) Bool)

(assert (=> start!35624 (array_inv!6862 _keys!1456)))

(declare-fun e!218712 () Bool)

(declare-fun array_inv!6863 (array!19675) Bool)

(assert (=> start!35624 (and (array_inv!6863 _values!1208) e!218712)))

(declare-fun b!357164 () Bool)

(assert (=> b!357164 (= e!218710 tp_is_empty!8069)))

(declare-fun b!357165 () Bool)

(assert (=> b!357165 (= e!218714 (not e!218709))))

(declare-fun res!198411 () Bool)

(assert (=> b!357165 (=> res!198411 e!218709)))

(assert (=> b!357165 (= res!198411 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9679 _keys!1456))))))

(assert (=> b!357165 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun lt!165987 () Unit!11007)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!24 (array!19673 array!19675 (_ BitVec 32) (_ BitVec 32) V!11735 V!11735 (_ BitVec 64) (_ BitVec 32)) Unit!11007)

(assert (=> b!357165 (= lt!165987 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!24 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!357166 () Bool)

(assert (=> b!357166 (= e!218712 (and e!218711 mapRes!13611))))

(declare-fun condMapEmpty!13611 () Bool)

(declare-fun mapDefault!13611 () ValueCell!3691)

