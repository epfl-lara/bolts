; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35472 () Bool)

(assert start!35472)

(declare-fun b_free!7851 () Bool)

(declare-fun b_next!7851 () Bool)

(assert (=> start!35472 (= b_free!7851 (not b_next!7851))))

(declare-fun tp!27339 () Bool)

(declare-fun b_and!15111 () Bool)

(assert (=> start!35472 (= tp!27339 b_and!15111)))

(declare-fun b!355113 () Bool)

(declare-fun res!197056 () Bool)

(declare-fun e!217564 () Bool)

(assert (=> b!355113 (=> (not res!197056) (not e!217564))))

(declare-datatypes ((array!19381 0))(
  ( (array!19382 (arr!9181 (Array (_ BitVec 32) (_ BitVec 64))) (size!9533 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19381)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19381 (_ BitVec 32)) Bool)

(assert (=> b!355113 (= res!197056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355114 () Bool)

(declare-fun res!197049 () Bool)

(assert (=> b!355114 (=> (not res!197049) (not e!217564))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!355114 (= res!197049 (validKeyInArray!0 (select (arr!9181 _keys!1456) from!1805)))))

(declare-fun b!355115 () Bool)

(declare-fun res!197048 () Bool)

(assert (=> b!355115 (=> (not res!197048) (not e!217564))))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!355115 (= res!197048 (validKeyInArray!0 k0!1077))))

(declare-fun res!197052 () Bool)

(assert (=> start!35472 (=> (not res!197052) (not e!217564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35472 (= res!197052 (validMask!0 mask!1842))))

(assert (=> start!35472 e!217564))

(declare-fun tp_is_empty!7917 () Bool)

(assert (=> start!35472 tp_is_empty!7917))

(assert (=> start!35472 true))

(assert (=> start!35472 tp!27339))

(declare-fun array_inv!6760 (array!19381) Bool)

(assert (=> start!35472 (array_inv!6760 _keys!1456)))

(declare-datatypes ((V!11533 0))(
  ( (V!11534 (val!4003 Int)) )
))
(declare-datatypes ((ValueCell!3615 0))(
  ( (ValueCellFull!3615 (v!6193 V!11533)) (EmptyCell!3615) )
))
(declare-datatypes ((array!19383 0))(
  ( (array!19384 (arr!9182 (Array (_ BitVec 32) ValueCell!3615)) (size!9534 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19383)

(declare-fun e!217562 () Bool)

(declare-fun array_inv!6761 (array!19383) Bool)

(assert (=> start!35472 (and (array_inv!6761 _values!1208) e!217562)))

(declare-fun b!355116 () Bool)

(declare-fun e!217563 () Bool)

(assert (=> b!355116 (= e!217563 tp_is_empty!7917)))

(declare-fun mapNonEmpty!13383 () Bool)

(declare-fun mapRes!13383 () Bool)

(declare-fun tp!27338 () Bool)

(assert (=> mapNonEmpty!13383 (= mapRes!13383 (and tp!27338 e!217563))))

(declare-fun mapRest!13383 () (Array (_ BitVec 32) ValueCell!3615))

(declare-fun mapKey!13383 () (_ BitVec 32))

(declare-fun mapValue!13383 () ValueCell!3615)

(assert (=> mapNonEmpty!13383 (= (arr!9182 _values!1208) (store mapRest!13383 mapKey!13383 mapValue!13383))))

(declare-fun b!355117 () Bool)

(declare-fun res!197050 () Bool)

(assert (=> b!355117 (=> (not res!197050) (not e!217564))))

(declare-fun arrayContainsKey!0 (array!19381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!355117 (= res!197050 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!355118 () Bool)

(declare-fun res!197053 () Bool)

(assert (=> b!355118 (=> (not res!197053) (not e!217564))))

(assert (=> b!355118 (= res!197053 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9533 _keys!1456))))))

(declare-fun b!355119 () Bool)

(declare-fun res!197055 () Bool)

(assert (=> b!355119 (=> (not res!197055) (not e!217564))))

(declare-datatypes ((List!5348 0))(
  ( (Nil!5345) (Cons!5344 (h!6200 (_ BitVec 64)) (t!10506 List!5348)) )
))
(declare-fun arrayNoDuplicates!0 (array!19381 (_ BitVec 32) List!5348) Bool)

(assert (=> b!355119 (= res!197055 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5345))))

(declare-fun b!355120 () Bool)

(assert (=> b!355120 (= e!217564 (not true))))

(declare-fun minValue!1150 () V!11533)

(declare-fun defaultEntry!1216 () Int)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11533)

(declare-datatypes ((tuple2!5684 0))(
  ( (tuple2!5685 (_1!2852 (_ BitVec 64)) (_2!2852 V!11533)) )
))
(declare-datatypes ((List!5349 0))(
  ( (Nil!5346) (Cons!5345 (h!6201 tuple2!5684) (t!10507 List!5349)) )
))
(declare-datatypes ((ListLongMap!4611 0))(
  ( (ListLongMap!4612 (toList!2321 List!5349)) )
))
(declare-fun contains!2397 (ListLongMap!4611 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1838 (array!19381 array!19383 (_ BitVec 32) (_ BitVec 32) V!11533 V!11533 (_ BitVec 32) Int) ListLongMap!4611)

(assert (=> b!355120 (contains!2397 (getCurrentListMap!1838 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9181 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10951 0))(
  ( (Unit!10952) )
))
(declare-fun lt!165751 () Unit!10951)

(declare-fun lemmaValidKeyInArrayIsInListMap!188 (array!19381 array!19383 (_ BitVec 32) (_ BitVec 32) V!11533 V!11533 (_ BitVec 32) Int) Unit!10951)

(assert (=> b!355120 (= lt!165751 (lemmaValidKeyInArrayIsInListMap!188 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun mapIsEmpty!13383 () Bool)

(assert (=> mapIsEmpty!13383 mapRes!13383))

(declare-fun b!355121 () Bool)

(declare-fun e!217561 () Bool)

(assert (=> b!355121 (= e!217562 (and e!217561 mapRes!13383))))

(declare-fun condMapEmpty!13383 () Bool)

(declare-fun mapDefault!13383 () ValueCell!3615)

(assert (=> b!355121 (= condMapEmpty!13383 (= (arr!9182 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3615)) mapDefault!13383)))))

(declare-fun b!355122 () Bool)

(declare-fun res!197051 () Bool)

(assert (=> b!355122 (=> (not res!197051) (not e!217564))))

(assert (=> b!355122 (= res!197051 (= (select (arr!9181 _keys!1456) from!1805) k0!1077))))

(declare-fun b!355123 () Bool)

(declare-fun res!197054 () Bool)

(assert (=> b!355123 (=> (not res!197054) (not e!217564))))

(assert (=> b!355123 (= res!197054 (and (= (size!9534 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9533 _keys!1456) (size!9534 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355124 () Bool)

(assert (=> b!355124 (= e!217561 tp_is_empty!7917)))

(assert (= (and start!35472 res!197052) b!355123))

(assert (= (and b!355123 res!197054) b!355113))

(assert (= (and b!355113 res!197056) b!355119))

(assert (= (and b!355119 res!197055) b!355115))

(assert (= (and b!355115 res!197048) b!355118))

(assert (= (and b!355118 res!197053) b!355117))

(assert (= (and b!355117 res!197050) b!355122))

(assert (= (and b!355122 res!197051) b!355114))

(assert (= (and b!355114 res!197049) b!355120))

(assert (= (and b!355121 condMapEmpty!13383) mapIsEmpty!13383))

(assert (= (and b!355121 (not condMapEmpty!13383)) mapNonEmpty!13383))

(get-info :version)

(assert (= (and mapNonEmpty!13383 ((_ is ValueCellFull!3615) mapValue!13383)) b!355116))

(assert (= (and b!355121 ((_ is ValueCellFull!3615) mapDefault!13383)) b!355124))

(assert (= start!35472 b!355121))

(declare-fun m!353909 () Bool)

(assert (=> b!355120 m!353909))

(declare-fun m!353911 () Bool)

(assert (=> b!355120 m!353911))

(assert (=> b!355120 m!353909))

(assert (=> b!355120 m!353911))

(declare-fun m!353913 () Bool)

(assert (=> b!355120 m!353913))

(declare-fun m!353915 () Bool)

(assert (=> b!355120 m!353915))

(declare-fun m!353917 () Bool)

(assert (=> b!355113 m!353917))

(assert (=> b!355122 m!353911))

(assert (=> b!355114 m!353911))

(assert (=> b!355114 m!353911))

(declare-fun m!353919 () Bool)

(assert (=> b!355114 m!353919))

(declare-fun m!353921 () Bool)

(assert (=> mapNonEmpty!13383 m!353921))

(declare-fun m!353923 () Bool)

(assert (=> b!355119 m!353923))

(declare-fun m!353925 () Bool)

(assert (=> b!355115 m!353925))

(declare-fun m!353927 () Bool)

(assert (=> start!35472 m!353927))

(declare-fun m!353929 () Bool)

(assert (=> start!35472 m!353929))

(declare-fun m!353931 () Bool)

(assert (=> start!35472 m!353931))

(declare-fun m!353933 () Bool)

(assert (=> b!355117 m!353933))

(check-sat (not b!355120) (not start!35472) (not b!355119) (not mapNonEmpty!13383) tp_is_empty!7917 (not b_next!7851) (not b!355115) (not b!355114) (not b!355117) (not b!355113) b_and!15111)
(check-sat b_and!15111 (not b_next!7851))
