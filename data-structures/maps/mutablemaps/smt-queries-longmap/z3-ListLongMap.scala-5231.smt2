; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70476 () Bool)

(assert start!70476)

(declare-fun b_free!12795 () Bool)

(declare-fun b_next!12795 () Bool)

(assert (=> start!70476 (= b_free!12795 (not b_next!12795))))

(declare-fun tp!45114 () Bool)

(declare-fun b_and!21633 () Bool)

(assert (=> start!70476 (= tp!45114 b_and!21633)))

(declare-fun b!818196 () Bool)

(declare-fun e!454205 () Bool)

(declare-fun tp_is_empty!14505 () Bool)

(assert (=> b!818196 (= e!454205 tp_is_empty!14505)))

(declare-fun b!818197 () Bool)

(declare-fun e!454202 () Bool)

(assert (=> b!818197 (= e!454202 tp_is_empty!14505)))

(declare-fun b!818198 () Bool)

(declare-fun res!558526 () Bool)

(declare-fun e!454201 () Bool)

(assert (=> b!818198 (=> (not res!558526) (not e!454201))))

(declare-datatypes ((array!45182 0))(
  ( (array!45183 (arr!21642 (Array (_ BitVec 32) (_ BitVec 64))) (size!22063 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45182)

(declare-datatypes ((List!15474 0))(
  ( (Nil!15471) (Cons!15470 (h!16599 (_ BitVec 64)) (t!21809 List!15474)) )
))
(declare-fun arrayNoDuplicates!0 (array!45182 (_ BitVec 32) List!15474) Bool)

(assert (=> b!818198 (= res!558526 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15471))))

(declare-fun b!818199 () Bool)

(declare-fun res!558528 () Bool)

(assert (=> b!818199 (=> (not res!558528) (not e!454201))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24341 0))(
  ( (V!24342 (val!7300 Int)) )
))
(declare-datatypes ((ValueCell!6837 0))(
  ( (ValueCellFull!6837 (v!9725 V!24341)) (EmptyCell!6837) )
))
(declare-datatypes ((array!45184 0))(
  ( (array!45185 (arr!21643 (Array (_ BitVec 32) ValueCell!6837)) (size!22064 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45184)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!818199 (= res!558528 (and (= (size!22064 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22063 _keys!976) (size!22064 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23353 () Bool)

(declare-fun mapRes!23353 () Bool)

(assert (=> mapIsEmpty!23353 mapRes!23353))

(declare-fun b!818200 () Bool)

(declare-fun e!454206 () Bool)

(assert (=> b!818200 (= e!454206 true)))

(declare-fun zeroValueBefore!34 () V!24341)

(declare-datatypes ((tuple2!9610 0))(
  ( (tuple2!9611 (_1!4815 (_ BitVec 64)) (_2!4815 V!24341)) )
))
(declare-datatypes ((List!15475 0))(
  ( (Nil!15472) (Cons!15471 (h!16600 tuple2!9610) (t!21810 List!15475)) )
))
(declare-datatypes ((ListLongMap!8447 0))(
  ( (ListLongMap!8448 (toList!4239 List!15475)) )
))
(declare-fun lt!366632 () ListLongMap!8447)

(declare-fun minValue!754 () V!24341)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2399 (array!45182 array!45184 (_ BitVec 32) (_ BitVec 32) V!24341 V!24341 (_ BitVec 32) Int) ListLongMap!8447)

(assert (=> b!818200 (= lt!366632 (getCurrentListMap!2399 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818201 () Bool)

(declare-fun e!454203 () Bool)

(assert (=> b!818201 (= e!454203 (and e!454205 mapRes!23353))))

(declare-fun condMapEmpty!23353 () Bool)

(declare-fun mapDefault!23353 () ValueCell!6837)

(assert (=> b!818201 (= condMapEmpty!23353 (= (arr!21643 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6837)) mapDefault!23353)))))

(declare-fun res!558529 () Bool)

(assert (=> start!70476 (=> (not res!558529) (not e!454201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70476 (= res!558529 (validMask!0 mask!1312))))

(assert (=> start!70476 e!454201))

(assert (=> start!70476 tp_is_empty!14505))

(declare-fun array_inv!17279 (array!45182) Bool)

(assert (=> start!70476 (array_inv!17279 _keys!976)))

(assert (=> start!70476 true))

(declare-fun array_inv!17280 (array!45184) Bool)

(assert (=> start!70476 (and (array_inv!17280 _values!788) e!454203)))

(assert (=> start!70476 tp!45114))

(declare-fun mapNonEmpty!23353 () Bool)

(declare-fun tp!45115 () Bool)

(assert (=> mapNonEmpty!23353 (= mapRes!23353 (and tp!45115 e!454202))))

(declare-fun mapValue!23353 () ValueCell!6837)

(declare-fun mapRest!23353 () (Array (_ BitVec 32) ValueCell!6837))

(declare-fun mapKey!23353 () (_ BitVec 32))

(assert (=> mapNonEmpty!23353 (= (arr!21643 _values!788) (store mapRest!23353 mapKey!23353 mapValue!23353))))

(declare-fun b!818202 () Bool)

(declare-fun res!558527 () Bool)

(assert (=> b!818202 (=> (not res!558527) (not e!454201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45182 (_ BitVec 32)) Bool)

(assert (=> b!818202 (= res!558527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818203 () Bool)

(assert (=> b!818203 (= e!454201 (not e!454206))))

(declare-fun res!558525 () Bool)

(assert (=> b!818203 (=> res!558525 e!454206)))

(assert (=> b!818203 (= res!558525 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366631 () ListLongMap!8447)

(declare-fun lt!366633 () ListLongMap!8447)

(assert (=> b!818203 (= lt!366631 lt!366633)))

(declare-fun zeroValueAfter!34 () V!24341)

(declare-datatypes ((Unit!27926 0))(
  ( (Unit!27927) )
))
(declare-fun lt!366630 () Unit!27926)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!398 (array!45182 array!45184 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24341 V!24341 V!24341 V!24341 (_ BitVec 32) Int) Unit!27926)

(assert (=> b!818203 (= lt!366630 (lemmaNoChangeToArrayThenSameMapNoExtras!398 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2282 (array!45182 array!45184 (_ BitVec 32) (_ BitVec 32) V!24341 V!24341 (_ BitVec 32) Int) ListLongMap!8447)

(assert (=> b!818203 (= lt!366633 (getCurrentListMapNoExtraKeys!2282 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818203 (= lt!366631 (getCurrentListMapNoExtraKeys!2282 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70476 res!558529) b!818199))

(assert (= (and b!818199 res!558528) b!818202))

(assert (= (and b!818202 res!558527) b!818198))

(assert (= (and b!818198 res!558526) b!818203))

(assert (= (and b!818203 (not res!558525)) b!818200))

(assert (= (and b!818201 condMapEmpty!23353) mapIsEmpty!23353))

(assert (= (and b!818201 (not condMapEmpty!23353)) mapNonEmpty!23353))

(get-info :version)

(assert (= (and mapNonEmpty!23353 ((_ is ValueCellFull!6837) mapValue!23353)) b!818197))

(assert (= (and b!818201 ((_ is ValueCellFull!6837) mapDefault!23353)) b!818196))

(assert (= start!70476 b!818201))

(declare-fun m!759719 () Bool)

(assert (=> b!818198 m!759719))

(declare-fun m!759721 () Bool)

(assert (=> b!818202 m!759721))

(declare-fun m!759723 () Bool)

(assert (=> b!818203 m!759723))

(declare-fun m!759725 () Bool)

(assert (=> b!818203 m!759725))

(declare-fun m!759727 () Bool)

(assert (=> b!818203 m!759727))

(declare-fun m!759729 () Bool)

(assert (=> mapNonEmpty!23353 m!759729))

(declare-fun m!759731 () Bool)

(assert (=> start!70476 m!759731))

(declare-fun m!759733 () Bool)

(assert (=> start!70476 m!759733))

(declare-fun m!759735 () Bool)

(assert (=> start!70476 m!759735))

(declare-fun m!759737 () Bool)

(assert (=> b!818200 m!759737))

(check-sat (not b!818200) (not start!70476) b_and!21633 (not b!818202) (not mapNonEmpty!23353) (not b!818203) (not b_next!12795) tp_is_empty!14505 (not b!818198))
(check-sat b_and!21633 (not b_next!12795))
