; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70726 () Bool)

(assert start!70726)

(declare-fun b_free!12975 () Bool)

(declare-fun b_next!12975 () Bool)

(assert (=> start!70726 (= b_free!12975 (not b_next!12975))))

(declare-fun tp!45666 () Bool)

(declare-fun b_and!21855 () Bool)

(assert (=> start!70726 (= tp!45666 b_and!21855)))

(declare-fun b!821058 () Bool)

(declare-fun e!456304 () Bool)

(declare-fun e!456303 () Bool)

(assert (=> b!821058 (= e!456304 (not e!456303))))

(declare-fun res!560229 () Bool)

(assert (=> b!821058 (=> res!560229 e!456303)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!821058 (= res!560229 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24581 0))(
  ( (V!24582 (val!7390 Int)) )
))
(declare-datatypes ((tuple2!9740 0))(
  ( (tuple2!9741 (_1!4880 (_ BitVec 64)) (_2!4880 V!24581)) )
))
(declare-datatypes ((List!15601 0))(
  ( (Nil!15598) (Cons!15597 (h!16726 tuple2!9740) (t!21944 List!15601)) )
))
(declare-datatypes ((ListLongMap!8577 0))(
  ( (ListLongMap!8578 (toList!4304 List!15601)) )
))
(declare-fun lt!369056 () ListLongMap!8577)

(declare-fun lt!369057 () ListLongMap!8577)

(assert (=> b!821058 (= lt!369056 lt!369057)))

(declare-fun zeroValueBefore!34 () V!24581)

(declare-datatypes ((array!45528 0))(
  ( (array!45529 (arr!21811 (Array (_ BitVec 32) (_ BitVec 64))) (size!22232 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45528)

(declare-datatypes ((ValueCell!6927 0))(
  ( (ValueCellFull!6927 (v!9817 V!24581)) (EmptyCell!6927) )
))
(declare-datatypes ((array!45530 0))(
  ( (array!45531 (arr!21812 (Array (_ BitVec 32) ValueCell!6927)) (size!22233 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45530)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!24581)

(declare-fun minValue!754 () V!24581)

(declare-datatypes ((Unit!28061 0))(
  ( (Unit!28062) )
))
(declare-fun lt!369058 () Unit!28061)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!454 (array!45528 array!45530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24581 V!24581 V!24581 V!24581 (_ BitVec 32) Int) Unit!28061)

(assert (=> b!821058 (= lt!369058 (lemmaNoChangeToArrayThenSameMapNoExtras!454 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2338 (array!45528 array!45530 (_ BitVec 32) (_ BitVec 32) V!24581 V!24581 (_ BitVec 32) Int) ListLongMap!8577)

(assert (=> b!821058 (= lt!369057 (getCurrentListMapNoExtraKeys!2338 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821058 (= lt!369056 (getCurrentListMapNoExtraKeys!2338 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!560232 () Bool)

(assert (=> start!70726 (=> (not res!560232) (not e!456304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70726 (= res!560232 (validMask!0 mask!1312))))

(assert (=> start!70726 e!456304))

(declare-fun tp_is_empty!14685 () Bool)

(assert (=> start!70726 tp_is_empty!14685))

(declare-fun array_inv!17399 (array!45528) Bool)

(assert (=> start!70726 (array_inv!17399 _keys!976)))

(assert (=> start!70726 true))

(declare-fun e!456302 () Bool)

(declare-fun array_inv!17400 (array!45530) Bool)

(assert (=> start!70726 (and (array_inv!17400 _values!788) e!456302)))

(assert (=> start!70726 tp!45666))

(declare-fun b!821059 () Bool)

(declare-fun e!456301 () Bool)

(assert (=> b!821059 (= e!456301 tp_is_empty!14685)))

(declare-fun b!821060 () Bool)

(declare-fun res!560231 () Bool)

(assert (=> b!821060 (=> (not res!560231) (not e!456304))))

(declare-datatypes ((List!15602 0))(
  ( (Nil!15599) (Cons!15598 (h!16727 (_ BitVec 64)) (t!21945 List!15602)) )
))
(declare-fun arrayNoDuplicates!0 (array!45528 (_ BitVec 32) List!15602) Bool)

(assert (=> b!821060 (= res!560231 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15599))))

(declare-fun b!821061 () Bool)

(declare-fun e!456300 () Bool)

(assert (=> b!821061 (= e!456300 tp_is_empty!14685)))

(declare-fun mapNonEmpty!23635 () Bool)

(declare-fun mapRes!23635 () Bool)

(declare-fun tp!45667 () Bool)

(assert (=> mapNonEmpty!23635 (= mapRes!23635 (and tp!45667 e!456300))))

(declare-fun mapKey!23635 () (_ BitVec 32))

(declare-fun mapValue!23635 () ValueCell!6927)

(declare-fun mapRest!23635 () (Array (_ BitVec 32) ValueCell!6927))

(assert (=> mapNonEmpty!23635 (= (arr!21812 _values!788) (store mapRest!23635 mapKey!23635 mapValue!23635))))

(declare-fun mapIsEmpty!23635 () Bool)

(assert (=> mapIsEmpty!23635 mapRes!23635))

(declare-fun b!821062 () Bool)

(assert (=> b!821062 (= e!456303 true)))

(declare-fun lt!369055 () ListLongMap!8577)

(declare-fun getCurrentListMap!2439 (array!45528 array!45530 (_ BitVec 32) (_ BitVec 32) V!24581 V!24581 (_ BitVec 32) Int) ListLongMap!8577)

(assert (=> b!821062 (= lt!369055 (getCurrentListMap!2439 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821063 () Bool)

(declare-fun res!560233 () Bool)

(assert (=> b!821063 (=> (not res!560233) (not e!456304))))

(assert (=> b!821063 (= res!560233 (and (= (size!22233 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22232 _keys!976) (size!22233 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821064 () Bool)

(assert (=> b!821064 (= e!456302 (and e!456301 mapRes!23635))))

(declare-fun condMapEmpty!23635 () Bool)

(declare-fun mapDefault!23635 () ValueCell!6927)

(assert (=> b!821064 (= condMapEmpty!23635 (= (arr!21812 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6927)) mapDefault!23635)))))

(declare-fun b!821065 () Bool)

(declare-fun res!560230 () Bool)

(assert (=> b!821065 (=> (not res!560230) (not e!456304))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45528 (_ BitVec 32)) Bool)

(assert (=> b!821065 (= res!560230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70726 res!560232) b!821063))

(assert (= (and b!821063 res!560233) b!821065))

(assert (= (and b!821065 res!560230) b!821060))

(assert (= (and b!821060 res!560231) b!821058))

(assert (= (and b!821058 (not res!560229)) b!821062))

(assert (= (and b!821064 condMapEmpty!23635) mapIsEmpty!23635))

(assert (= (and b!821064 (not condMapEmpty!23635)) mapNonEmpty!23635))

(get-info :version)

(assert (= (and mapNonEmpty!23635 ((_ is ValueCellFull!6927) mapValue!23635)) b!821061))

(assert (= (and b!821064 ((_ is ValueCellFull!6927) mapDefault!23635)) b!821059))

(assert (= start!70726 b!821064))

(declare-fun m!762983 () Bool)

(assert (=> b!821058 m!762983))

(declare-fun m!762985 () Bool)

(assert (=> b!821058 m!762985))

(declare-fun m!762987 () Bool)

(assert (=> b!821058 m!762987))

(declare-fun m!762989 () Bool)

(assert (=> b!821062 m!762989))

(declare-fun m!762991 () Bool)

(assert (=> b!821065 m!762991))

(declare-fun m!762993 () Bool)

(assert (=> b!821060 m!762993))

(declare-fun m!762995 () Bool)

(assert (=> mapNonEmpty!23635 m!762995))

(declare-fun m!762997 () Bool)

(assert (=> start!70726 m!762997))

(declare-fun m!762999 () Bool)

(assert (=> start!70726 m!762999))

(declare-fun m!763001 () Bool)

(assert (=> start!70726 m!763001))

(check-sat (not b!821062) b_and!21855 (not b!821065) (not mapNonEmpty!23635) tp_is_empty!14685 (not b!821060) (not b!821058) (not start!70726) (not b_next!12975))
(check-sat b_and!21855 (not b_next!12975))
