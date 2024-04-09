; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70452 () Bool)

(assert start!70452)

(declare-fun b_free!12771 () Bool)

(declare-fun b_next!12771 () Bool)

(assert (=> start!70452 (= b_free!12771 (not b_next!12771))))

(declare-fun tp!45042 () Bool)

(declare-fun b_and!21609 () Bool)

(assert (=> start!70452 (= tp!45042 b_and!21609)))

(declare-fun b!817908 () Bool)

(declare-fun e!453987 () Bool)

(assert (=> b!817908 (= e!453987 true)))

(declare-datatypes ((V!24309 0))(
  ( (V!24310 (val!7288 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24309)

(declare-datatypes ((array!45138 0))(
  ( (array!45139 (arr!21620 (Array (_ BitVec 32) (_ BitVec 64))) (size!22041 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45138)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24309)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((ValueCell!6825 0))(
  ( (ValueCellFull!6825 (v!9713 V!24309)) (EmptyCell!6825) )
))
(declare-datatypes ((array!45140 0))(
  ( (array!45141 (arr!21621 (Array (_ BitVec 32) ValueCell!6825)) (size!22042 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45140)

(declare-datatypes ((tuple2!9592 0))(
  ( (tuple2!9593 (_1!4806 (_ BitVec 64)) (_2!4806 V!24309)) )
))
(declare-datatypes ((List!15458 0))(
  ( (Nil!15455) (Cons!15454 (h!16583 tuple2!9592) (t!21793 List!15458)) )
))
(declare-datatypes ((ListLongMap!8429 0))(
  ( (ListLongMap!8430 (toList!4230 List!15458)) )
))
(declare-fun lt!366486 () ListLongMap!8429)

(declare-fun getCurrentListMap!2392 (array!45138 array!45140 (_ BitVec 32) (_ BitVec 32) V!24309 V!24309 (_ BitVec 32) Int) ListLongMap!8429)

(assert (=> b!817908 (= lt!366486 (getCurrentListMap!2392 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!558348 () Bool)

(declare-fun e!453988 () Bool)

(assert (=> start!70452 (=> (not res!558348) (not e!453988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70452 (= res!558348 (validMask!0 mask!1312))))

(assert (=> start!70452 e!453988))

(declare-fun tp_is_empty!14481 () Bool)

(assert (=> start!70452 tp_is_empty!14481))

(declare-fun array_inv!17267 (array!45138) Bool)

(assert (=> start!70452 (array_inv!17267 _keys!976)))

(assert (=> start!70452 true))

(declare-fun e!453989 () Bool)

(declare-fun array_inv!17268 (array!45140) Bool)

(assert (=> start!70452 (and (array_inv!17268 _values!788) e!453989)))

(assert (=> start!70452 tp!45042))

(declare-fun b!817909 () Bool)

(declare-fun e!453985 () Bool)

(declare-fun mapRes!23317 () Bool)

(assert (=> b!817909 (= e!453989 (and e!453985 mapRes!23317))))

(declare-fun condMapEmpty!23317 () Bool)

(declare-fun mapDefault!23317 () ValueCell!6825)

(assert (=> b!817909 (= condMapEmpty!23317 (= (arr!21621 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6825)) mapDefault!23317)))))

(declare-fun b!817910 () Bool)

(declare-fun e!453990 () Bool)

(assert (=> b!817910 (= e!453990 tp_is_empty!14481)))

(declare-fun b!817911 () Bool)

(declare-fun res!558346 () Bool)

(assert (=> b!817911 (=> (not res!558346) (not e!453988))))

(declare-datatypes ((List!15459 0))(
  ( (Nil!15456) (Cons!15455 (h!16584 (_ BitVec 64)) (t!21794 List!15459)) )
))
(declare-fun arrayNoDuplicates!0 (array!45138 (_ BitVec 32) List!15459) Bool)

(assert (=> b!817911 (= res!558346 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15456))))

(declare-fun mapNonEmpty!23317 () Bool)

(declare-fun tp!45043 () Bool)

(assert (=> mapNonEmpty!23317 (= mapRes!23317 (and tp!45043 e!453990))))

(declare-fun mapRest!23317 () (Array (_ BitVec 32) ValueCell!6825))

(declare-fun mapKey!23317 () (_ BitVec 32))

(declare-fun mapValue!23317 () ValueCell!6825)

(assert (=> mapNonEmpty!23317 (= (arr!21621 _values!788) (store mapRest!23317 mapKey!23317 mapValue!23317))))

(declare-fun b!817912 () Bool)

(assert (=> b!817912 (= e!453988 (not e!453987))))

(declare-fun res!558347 () Bool)

(assert (=> b!817912 (=> res!558347 e!453987)))

(assert (=> b!817912 (= res!558347 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366489 () ListLongMap!8429)

(declare-fun lt!366487 () ListLongMap!8429)

(assert (=> b!817912 (= lt!366489 lt!366487)))

(declare-fun zeroValueAfter!34 () V!24309)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27912 0))(
  ( (Unit!27913) )
))
(declare-fun lt!366488 () Unit!27912)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!391 (array!45138 array!45140 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24309 V!24309 V!24309 V!24309 (_ BitVec 32) Int) Unit!27912)

(assert (=> b!817912 (= lt!366488 (lemmaNoChangeToArrayThenSameMapNoExtras!391 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2275 (array!45138 array!45140 (_ BitVec 32) (_ BitVec 32) V!24309 V!24309 (_ BitVec 32) Int) ListLongMap!8429)

(assert (=> b!817912 (= lt!366487 (getCurrentListMapNoExtraKeys!2275 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817912 (= lt!366489 (getCurrentListMapNoExtraKeys!2275 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817913 () Bool)

(assert (=> b!817913 (= e!453985 tp_is_empty!14481)))

(declare-fun b!817914 () Bool)

(declare-fun res!558345 () Bool)

(assert (=> b!817914 (=> (not res!558345) (not e!453988))))

(assert (=> b!817914 (= res!558345 (and (= (size!22042 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22041 _keys!976) (size!22042 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23317 () Bool)

(assert (=> mapIsEmpty!23317 mapRes!23317))

(declare-fun b!817915 () Bool)

(declare-fun res!558349 () Bool)

(assert (=> b!817915 (=> (not res!558349) (not e!453988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45138 (_ BitVec 32)) Bool)

(assert (=> b!817915 (= res!558349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70452 res!558348) b!817914))

(assert (= (and b!817914 res!558345) b!817915))

(assert (= (and b!817915 res!558349) b!817911))

(assert (= (and b!817911 res!558346) b!817912))

(assert (= (and b!817912 (not res!558347)) b!817908))

(assert (= (and b!817909 condMapEmpty!23317) mapIsEmpty!23317))

(assert (= (and b!817909 (not condMapEmpty!23317)) mapNonEmpty!23317))

(get-info :version)

(assert (= (and mapNonEmpty!23317 ((_ is ValueCellFull!6825) mapValue!23317)) b!817910))

(assert (= (and b!817909 ((_ is ValueCellFull!6825) mapDefault!23317)) b!817913))

(assert (= start!70452 b!817909))

(declare-fun m!759479 () Bool)

(assert (=> b!817915 m!759479))

(declare-fun m!759481 () Bool)

(assert (=> start!70452 m!759481))

(declare-fun m!759483 () Bool)

(assert (=> start!70452 m!759483))

(declare-fun m!759485 () Bool)

(assert (=> start!70452 m!759485))

(declare-fun m!759487 () Bool)

(assert (=> mapNonEmpty!23317 m!759487))

(declare-fun m!759489 () Bool)

(assert (=> b!817912 m!759489))

(declare-fun m!759491 () Bool)

(assert (=> b!817912 m!759491))

(declare-fun m!759493 () Bool)

(assert (=> b!817912 m!759493))

(declare-fun m!759495 () Bool)

(assert (=> b!817908 m!759495))

(declare-fun m!759497 () Bool)

(assert (=> b!817911 m!759497))

(check-sat (not b_next!12771) (not mapNonEmpty!23317) (not b!817911) (not start!70452) b_and!21609 (not b!817908) (not b!817915) (not b!817912) tp_is_empty!14481)
(check-sat b_and!21609 (not b_next!12771))
