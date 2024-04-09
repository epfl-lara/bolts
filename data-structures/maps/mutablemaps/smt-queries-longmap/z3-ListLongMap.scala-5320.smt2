; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71186 () Bool)

(assert start!71186)

(declare-fun b_free!13329 () Bool)

(declare-fun b_next!13329 () Bool)

(assert (=> start!71186 (= b_free!13329 (not b_next!13329))))

(declare-fun tp!46746 () Bool)

(declare-fun b_and!22273 () Bool)

(assert (=> start!71186 (= tp!46746 b_and!22273)))

(declare-fun mapNonEmpty!24184 () Bool)

(declare-fun mapRes!24184 () Bool)

(declare-fun tp!46747 () Bool)

(declare-fun e!460276 () Bool)

(assert (=> mapNonEmpty!24184 (= mapRes!24184 (and tp!46747 e!460276))))

(declare-datatypes ((V!25053 0))(
  ( (V!25054 (val!7567 Int)) )
))
(declare-datatypes ((ValueCell!7104 0))(
  ( (ValueCellFull!7104 (v!9997 V!25053)) (EmptyCell!7104) )
))
(declare-fun mapRest!24184 () (Array (_ BitVec 32) ValueCell!7104))

(declare-fun mapValue!24184 () ValueCell!7104)

(declare-datatypes ((array!46218 0))(
  ( (array!46219 (arr!22150 (Array (_ BitVec 32) ValueCell!7104)) (size!22571 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46218)

(declare-fun mapKey!24184 () (_ BitVec 32))

(assert (=> mapNonEmpty!24184 (= (arr!22150 _values!788) (store mapRest!24184 mapKey!24184 mapValue!24184))))

(declare-datatypes ((tuple2!10036 0))(
  ( (tuple2!10037 (_1!5028 (_ BitVec 64)) (_2!5028 V!25053)) )
))
(declare-datatypes ((List!15874 0))(
  ( (Nil!15871) (Cons!15870 (h!16999 tuple2!10036) (t!22229 List!15874)) )
))
(declare-datatypes ((ListLongMap!8873 0))(
  ( (ListLongMap!8874 (toList!4452 List!15874)) )
))
(declare-fun lt!374140 () ListLongMap!8873)

(declare-fun lt!374146 () ListLongMap!8873)

(declare-fun b!826445 () Bool)

(declare-fun lt!374141 () tuple2!10036)

(declare-fun lt!374139 () tuple2!10036)

(declare-fun e!460274 () Bool)

(declare-fun +!1913 (ListLongMap!8873 tuple2!10036) ListLongMap!8873)

(assert (=> b!826445 (= e!460274 (= lt!374140 (+!1913 (+!1913 lt!374146 lt!374141) lt!374139)))))

(declare-fun b!826446 () Bool)

(declare-fun e!460277 () Bool)

(declare-fun tp_is_empty!15039 () Bool)

(assert (=> b!826446 (= e!460277 tp_is_empty!15039)))

(declare-fun b!826447 () Bool)

(declare-fun e!460281 () Bool)

(assert (=> b!826447 (= e!460281 true)))

(declare-fun lt!374148 () ListLongMap!8873)

(declare-fun lt!374144 () ListLongMap!8873)

(assert (=> b!826447 (= lt!374144 (+!1913 (+!1913 lt!374148 lt!374139) lt!374141))))

(declare-fun lt!374143 () ListLongMap!8873)

(declare-fun lt!374138 () ListLongMap!8873)

(assert (=> b!826447 (and (= lt!374143 lt!374138) (= lt!374140 lt!374138) (= lt!374140 lt!374143))))

(declare-fun lt!374151 () ListLongMap!8873)

(assert (=> b!826447 (= lt!374138 (+!1913 lt!374151 lt!374139))))

(declare-fun lt!374147 () ListLongMap!8873)

(assert (=> b!826447 (= lt!374143 (+!1913 lt!374147 lt!374139))))

(declare-fun zeroValueBefore!34 () V!25053)

(declare-fun zeroValueAfter!34 () V!25053)

(declare-datatypes ((Unit!28339 0))(
  ( (Unit!28340) )
))
(declare-fun lt!374150 () Unit!28339)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!235 (ListLongMap!8873 (_ BitVec 64) V!25053 V!25053) Unit!28339)

(assert (=> b!826447 (= lt!374150 (addSameAsAddTwiceSameKeyDiffValues!235 lt!374147 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!826447 e!460274))

(declare-fun res!563489 () Bool)

(assert (=> b!826447 (=> (not res!563489) (not e!460274))))

(declare-fun lt!374145 () ListLongMap!8873)

(assert (=> b!826447 (= res!563489 (= lt!374145 lt!374151))))

(declare-fun lt!374142 () tuple2!10036)

(assert (=> b!826447 (= lt!374151 (+!1913 lt!374147 lt!374142))))

(assert (=> b!826447 (= lt!374147 (+!1913 lt!374148 lt!374141))))

(assert (=> b!826447 (= lt!374139 (tuple2!10037 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460280 () Bool)

(assert (=> b!826447 e!460280))

(declare-fun res!563483 () Bool)

(assert (=> b!826447 (=> (not res!563483) (not e!460280))))

(assert (=> b!826447 (= res!563483 (= lt!374145 (+!1913 (+!1913 lt!374148 lt!374142) lt!374141)))))

(declare-fun minValue!754 () V!25053)

(assert (=> b!826447 (= lt!374141 (tuple2!10037 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826447 (= lt!374142 (tuple2!10037 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((array!46220 0))(
  ( (array!46221 (arr!22151 (Array (_ BitVec 32) (_ BitVec 64))) (size!22572 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46220)

(declare-fun getCurrentListMap!2557 (array!46220 array!46218 (_ BitVec 32) (_ BitVec 32) V!25053 V!25053 (_ BitVec 32) Int) ListLongMap!8873)

(assert (=> b!826447 (= lt!374140 (getCurrentListMap!2557 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826447 (= lt!374145 (getCurrentListMap!2557 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!563484 () Bool)

(declare-fun e!460279 () Bool)

(assert (=> start!71186 (=> (not res!563484) (not e!460279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71186 (= res!563484 (validMask!0 mask!1312))))

(assert (=> start!71186 e!460279))

(assert (=> start!71186 tp_is_empty!15039))

(declare-fun array_inv!17639 (array!46220) Bool)

(assert (=> start!71186 (array_inv!17639 _keys!976)))

(assert (=> start!71186 true))

(declare-fun e!460278 () Bool)

(declare-fun array_inv!17640 (array!46218) Bool)

(assert (=> start!71186 (and (array_inv!17640 _values!788) e!460278)))

(assert (=> start!71186 tp!46746))

(declare-fun b!826448 () Bool)

(declare-fun res!563488 () Bool)

(assert (=> b!826448 (=> (not res!563488) (not e!460279))))

(assert (=> b!826448 (= res!563488 (and (= (size!22571 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22572 _keys!976) (size!22571 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!826449 () Bool)

(assert (=> b!826449 (= e!460278 (and e!460277 mapRes!24184))))

(declare-fun condMapEmpty!24184 () Bool)

(declare-fun mapDefault!24184 () ValueCell!7104)

(assert (=> b!826449 (= condMapEmpty!24184 (= (arr!22150 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7104)) mapDefault!24184)))))

(declare-fun b!826450 () Bool)

(declare-fun res!563486 () Bool)

(assert (=> b!826450 (=> (not res!563486) (not e!460279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46220 (_ BitVec 32)) Bool)

(assert (=> b!826450 (= res!563486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24184 () Bool)

(assert (=> mapIsEmpty!24184 mapRes!24184))

(declare-fun b!826451 () Bool)

(assert (=> b!826451 (= e!460276 tp_is_empty!15039)))

(declare-fun b!826452 () Bool)

(assert (=> b!826452 (= e!460279 (not e!460281))))

(declare-fun res!563485 () Bool)

(assert (=> b!826452 (=> res!563485 e!460281)))

(assert (=> b!826452 (= res!563485 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!826452 (= lt!374148 lt!374146)))

(declare-fun lt!374149 () Unit!28339)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!577 (array!46220 array!46218 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25053 V!25053 V!25053 V!25053 (_ BitVec 32) Int) Unit!28339)

(assert (=> b!826452 (= lt!374149 (lemmaNoChangeToArrayThenSameMapNoExtras!577 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2461 (array!46220 array!46218 (_ BitVec 32) (_ BitVec 32) V!25053 V!25053 (_ BitVec 32) Int) ListLongMap!8873)

(assert (=> b!826452 (= lt!374146 (getCurrentListMapNoExtraKeys!2461 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826452 (= lt!374148 (getCurrentListMapNoExtraKeys!2461 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826453 () Bool)

(declare-fun res!563487 () Bool)

(assert (=> b!826453 (=> (not res!563487) (not e!460279))))

(declare-datatypes ((List!15875 0))(
  ( (Nil!15872) (Cons!15871 (h!17000 (_ BitVec 64)) (t!22230 List!15875)) )
))
(declare-fun arrayNoDuplicates!0 (array!46220 (_ BitVec 32) List!15875) Bool)

(assert (=> b!826453 (= res!563487 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15872))))

(declare-fun b!826454 () Bool)

(assert (=> b!826454 (= e!460280 (= lt!374140 (+!1913 (+!1913 lt!374146 (tuple2!10037 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374141)))))

(assert (= (and start!71186 res!563484) b!826448))

(assert (= (and b!826448 res!563488) b!826450))

(assert (= (and b!826450 res!563486) b!826453))

(assert (= (and b!826453 res!563487) b!826452))

(assert (= (and b!826452 (not res!563485)) b!826447))

(assert (= (and b!826447 res!563483) b!826454))

(assert (= (and b!826447 res!563489) b!826445))

(assert (= (and b!826449 condMapEmpty!24184) mapIsEmpty!24184))

(assert (= (and b!826449 (not condMapEmpty!24184)) mapNonEmpty!24184))

(get-info :version)

(assert (= (and mapNonEmpty!24184 ((_ is ValueCellFull!7104) mapValue!24184)) b!826451))

(assert (= (and b!826449 ((_ is ValueCellFull!7104) mapDefault!24184)) b!826446))

(assert (= start!71186 b!826449))

(declare-fun m!769377 () Bool)

(assert (=> start!71186 m!769377))

(declare-fun m!769379 () Bool)

(assert (=> start!71186 m!769379))

(declare-fun m!769381 () Bool)

(assert (=> start!71186 m!769381))

(declare-fun m!769383 () Bool)

(assert (=> b!826450 m!769383))

(declare-fun m!769385 () Bool)

(assert (=> b!826445 m!769385))

(assert (=> b!826445 m!769385))

(declare-fun m!769387 () Bool)

(assert (=> b!826445 m!769387))

(declare-fun m!769389 () Bool)

(assert (=> b!826454 m!769389))

(assert (=> b!826454 m!769389))

(declare-fun m!769391 () Bool)

(assert (=> b!826454 m!769391))

(declare-fun m!769393 () Bool)

(assert (=> b!826453 m!769393))

(declare-fun m!769395 () Bool)

(assert (=> b!826447 m!769395))

(declare-fun m!769397 () Bool)

(assert (=> b!826447 m!769397))

(declare-fun m!769399 () Bool)

(assert (=> b!826447 m!769399))

(declare-fun m!769401 () Bool)

(assert (=> b!826447 m!769401))

(assert (=> b!826447 m!769395))

(declare-fun m!769403 () Bool)

(assert (=> b!826447 m!769403))

(declare-fun m!769405 () Bool)

(assert (=> b!826447 m!769405))

(declare-fun m!769407 () Bool)

(assert (=> b!826447 m!769407))

(declare-fun m!769409 () Bool)

(assert (=> b!826447 m!769409))

(declare-fun m!769411 () Bool)

(assert (=> b!826447 m!769411))

(assert (=> b!826447 m!769401))

(declare-fun m!769413 () Bool)

(assert (=> b!826447 m!769413))

(declare-fun m!769415 () Bool)

(assert (=> b!826447 m!769415))

(declare-fun m!769417 () Bool)

(assert (=> mapNonEmpty!24184 m!769417))

(declare-fun m!769419 () Bool)

(assert (=> b!826452 m!769419))

(declare-fun m!769421 () Bool)

(assert (=> b!826452 m!769421))

(declare-fun m!769423 () Bool)

(assert (=> b!826452 m!769423))

(check-sat (not b_next!13329) (not start!71186) (not b!826452) (not b!826453) (not b!826454) (not mapNonEmpty!24184) (not b!826450) b_and!22273 (not b!826445) tp_is_empty!15039 (not b!826447))
(check-sat b_and!22273 (not b_next!13329))
