; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35458 () Bool)

(assert start!35458)

(declare-fun b_free!7837 () Bool)

(declare-fun b_next!7837 () Bool)

(assert (=> start!35458 (= b_free!7837 (not b_next!7837))))

(declare-fun tp!27296 () Bool)

(declare-fun b_and!15097 () Bool)

(assert (=> start!35458 (= tp!27296 b_and!15097)))

(declare-fun b!354862 () Bool)

(declare-fun e!217457 () Bool)

(assert (=> b!354862 (= e!217457 (not true))))

(declare-datatypes ((V!11515 0))(
  ( (V!11516 (val!3996 Int)) )
))
(declare-fun minValue!1150 () V!11515)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((array!19353 0))(
  ( (array!19354 (arr!9167 (Array (_ BitVec 32) (_ BitVec 64))) (size!9519 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19353)

(declare-datatypes ((ValueCell!3608 0))(
  ( (ValueCellFull!3608 (v!6186 V!11515)) (EmptyCell!3608) )
))
(declare-datatypes ((array!19355 0))(
  ( (array!19356 (arr!9168 (Array (_ BitVec 32) ValueCell!3608)) (size!9520 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19355)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11515)

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((tuple2!5674 0))(
  ( (tuple2!5675 (_1!2847 (_ BitVec 64)) (_2!2847 V!11515)) )
))
(declare-datatypes ((List!5339 0))(
  ( (Nil!5336) (Cons!5335 (h!6191 tuple2!5674) (t!10497 List!5339)) )
))
(declare-datatypes ((ListLongMap!4601 0))(
  ( (ListLongMap!4602 (toList!2316 List!5339)) )
))
(declare-fun contains!2392 (ListLongMap!4601 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1833 (array!19353 array!19355 (_ BitVec 32) (_ BitVec 32) V!11515 V!11515 (_ BitVec 32) Int) ListLongMap!4601)

(assert (=> b!354862 (contains!2392 (getCurrentListMap!1833 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9167 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10941 0))(
  ( (Unit!10942) )
))
(declare-fun lt!165730 () Unit!10941)

(declare-fun lemmaValidKeyInArrayIsInListMap!183 (array!19353 array!19355 (_ BitVec 32) (_ BitVec 32) V!11515 V!11515 (_ BitVec 32) Int) Unit!10941)

(assert (=> b!354862 (= lt!165730 (lemmaValidKeyInArrayIsInListMap!183 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun mapIsEmpty!13362 () Bool)

(declare-fun mapRes!13362 () Bool)

(assert (=> mapIsEmpty!13362 mapRes!13362))

(declare-fun b!354863 () Bool)

(declare-fun res!196862 () Bool)

(assert (=> b!354863 (=> (not res!196862) (not e!217457))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354863 (= res!196862 (validKeyInArray!0 k!1077))))

(declare-fun b!354864 () Bool)

(declare-fun res!196859 () Bool)

(assert (=> b!354864 (=> (not res!196859) (not e!217457))))

(assert (=> b!354864 (= res!196859 (= (select (arr!9167 _keys!1456) from!1805) k!1077))))

(declare-fun b!354865 () Bool)

(declare-fun res!196860 () Bool)

(assert (=> b!354865 (=> (not res!196860) (not e!217457))))

(assert (=> b!354865 (= res!196860 (and (= (size!9520 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9519 _keys!1456) (size!9520 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354866 () Bool)

(declare-fun e!217459 () Bool)

(declare-fun tp_is_empty!7903 () Bool)

(assert (=> b!354866 (= e!217459 tp_is_empty!7903)))

(declare-fun mapNonEmpty!13362 () Bool)

(declare-fun tp!27297 () Bool)

(assert (=> mapNonEmpty!13362 (= mapRes!13362 (and tp!27297 e!217459))))

(declare-fun mapKey!13362 () (_ BitVec 32))

(declare-fun mapValue!13362 () ValueCell!3608)

(declare-fun mapRest!13362 () (Array (_ BitVec 32) ValueCell!3608))

(assert (=> mapNonEmpty!13362 (= (arr!9168 _values!1208) (store mapRest!13362 mapKey!13362 mapValue!13362))))

(declare-fun b!354861 () Bool)

(declare-fun res!196866 () Bool)

(assert (=> b!354861 (=> (not res!196866) (not e!217457))))

(declare-fun arrayContainsKey!0 (array!19353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!354861 (= res!196866 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun res!196863 () Bool)

(assert (=> start!35458 (=> (not res!196863) (not e!217457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35458 (= res!196863 (validMask!0 mask!1842))))

(assert (=> start!35458 e!217457))

(assert (=> start!35458 tp_is_empty!7903))

(assert (=> start!35458 true))

(assert (=> start!35458 tp!27296))

(declare-fun array_inv!6748 (array!19353) Bool)

(assert (=> start!35458 (array_inv!6748 _keys!1456)))

(declare-fun e!217460 () Bool)

(declare-fun array_inv!6749 (array!19355) Bool)

(assert (=> start!35458 (and (array_inv!6749 _values!1208) e!217460)))

(declare-fun b!354867 () Bool)

(declare-fun res!196864 () Bool)

(assert (=> b!354867 (=> (not res!196864) (not e!217457))))

(assert (=> b!354867 (= res!196864 (validKeyInArray!0 (select (arr!9167 _keys!1456) from!1805)))))

(declare-fun b!354868 () Bool)

(declare-fun res!196867 () Bool)

(assert (=> b!354868 (=> (not res!196867) (not e!217457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19353 (_ BitVec 32)) Bool)

(assert (=> b!354868 (= res!196867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354869 () Bool)

(declare-fun e!217456 () Bool)

(assert (=> b!354869 (= e!217456 tp_is_empty!7903)))

(declare-fun b!354870 () Bool)

(declare-fun res!196861 () Bool)

(assert (=> b!354870 (=> (not res!196861) (not e!217457))))

(declare-datatypes ((List!5340 0))(
  ( (Nil!5337) (Cons!5336 (h!6192 (_ BitVec 64)) (t!10498 List!5340)) )
))
(declare-fun arrayNoDuplicates!0 (array!19353 (_ BitVec 32) List!5340) Bool)

(assert (=> b!354870 (= res!196861 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5337))))

(declare-fun b!354871 () Bool)

(declare-fun res!196865 () Bool)

(assert (=> b!354871 (=> (not res!196865) (not e!217457))))

(assert (=> b!354871 (= res!196865 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9519 _keys!1456))))))

(declare-fun b!354872 () Bool)

(assert (=> b!354872 (= e!217460 (and e!217456 mapRes!13362))))

(declare-fun condMapEmpty!13362 () Bool)

(declare-fun mapDefault!13362 () ValueCell!3608)

