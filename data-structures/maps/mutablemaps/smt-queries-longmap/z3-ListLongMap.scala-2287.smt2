; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37194 () Bool)

(assert start!37194)

(declare-fun b_free!8313 () Bool)

(declare-fun b_next!8313 () Bool)

(assert (=> start!37194 (= b_free!8313 (not b_next!8313))))

(declare-fun tp!29654 () Bool)

(declare-fun b_and!15573 () Bool)

(assert (=> start!37194 (= tp!29654 b_and!15573)))

(declare-fun b!375282 () Bool)

(declare-fun e!228644 () Bool)

(declare-fun tp_is_empty!8961 () Bool)

(assert (=> b!375282 (= e!228644 tp_is_empty!8961)))

(declare-fun mapIsEmpty!15006 () Bool)

(declare-fun mapRes!15006 () Bool)

(assert (=> mapIsEmpty!15006 mapRes!15006))

(declare-fun mapNonEmpty!15006 () Bool)

(declare-fun tp!29655 () Bool)

(assert (=> mapNonEmpty!15006 (= mapRes!15006 (and tp!29655 e!228644))))

(declare-datatypes ((V!13053 0))(
  ( (V!13054 (val!4525 Int)) )
))
(declare-datatypes ((ValueCell!4137 0))(
  ( (ValueCellFull!4137 (v!6718 V!13053)) (EmptyCell!4137) )
))
(declare-datatypes ((array!21821 0))(
  ( (array!21822 (arr!10376 (Array (_ BitVec 32) ValueCell!4137)) (size!10728 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21821)

(declare-fun mapKey!15006 () (_ BitVec 32))

(declare-fun mapRest!15006 () (Array (_ BitVec 32) ValueCell!4137))

(declare-fun mapValue!15006 () ValueCell!4137)

(assert (=> mapNonEmpty!15006 (= (arr!10376 _values!506) (store mapRest!15006 mapKey!15006 mapValue!15006))))

(declare-fun b!375283 () Bool)

(declare-fun res!211935 () Bool)

(declare-fun e!228647 () Bool)

(assert (=> b!375283 (=> (not res!211935) (not e!228647))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375283 (= res!211935 (validKeyInArray!0 k0!778))))

(declare-fun b!375284 () Bool)

(declare-fun res!211929 () Bool)

(assert (=> b!375284 (=> (not res!211929) (not e!228647))))

(declare-datatypes ((array!21823 0))(
  ( (array!21824 (arr!10377 (Array (_ BitVec 32) (_ BitVec 64))) (size!10729 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21823)

(declare-fun arrayContainsKey!0 (array!21823 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375284 (= res!211929 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!375286 () Bool)

(declare-fun e!228650 () Bool)

(assert (=> b!375286 (= e!228650 true)))

(declare-datatypes ((tuple2!5996 0))(
  ( (tuple2!5997 (_1!3008 (_ BitVec 64)) (_2!3008 V!13053)) )
))
(declare-datatypes ((List!5867 0))(
  ( (Nil!5864) (Cons!5863 (h!6719 tuple2!5996) (t!11025 List!5867)) )
))
(declare-datatypes ((ListLongMap!4923 0))(
  ( (ListLongMap!4924 (toList!2477 List!5867)) )
))
(declare-fun lt!173752 () ListLongMap!4923)

(declare-fun lt!173762 () ListLongMap!4923)

(declare-fun lt!173763 () tuple2!5996)

(declare-fun lt!173753 () tuple2!5996)

(declare-fun +!818 (ListLongMap!4923 tuple2!5996) ListLongMap!4923)

(assert (=> b!375286 (= (+!818 lt!173752 lt!173753) (+!818 lt!173762 lt!173763))))

(declare-fun v!373 () V!13053)

(declare-datatypes ((Unit!11539 0))(
  ( (Unit!11540) )
))
(declare-fun lt!173750 () Unit!11539)

(declare-fun lt!173759 () ListLongMap!4923)

(declare-fun minValue!472 () V!13053)

(declare-fun addCommutativeForDiffKeys!246 (ListLongMap!4923 (_ BitVec 64) V!13053 (_ BitVec 64) V!13053) Unit!11539)

(assert (=> b!375286 (= lt!173750 (addCommutativeForDiffKeys!246 lt!173759 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!375287 () Bool)

(declare-fun e!228649 () Bool)

(assert (=> b!375287 (= e!228649 e!228650)))

(declare-fun res!211932 () Bool)

(assert (=> b!375287 (=> res!211932 e!228650)))

(assert (=> b!375287 (= res!211932 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!173764 () ListLongMap!4923)

(assert (=> b!375287 (= lt!173764 lt!173752)))

(assert (=> b!375287 (= lt!173752 (+!818 lt!173759 lt!173763))))

(declare-fun lt!173761 () Unit!11539)

(declare-fun lt!173749 () ListLongMap!4923)

(declare-fun zeroValue!472 () V!13053)

(assert (=> b!375287 (= lt!173761 (addCommutativeForDiffKeys!246 lt!173749 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!173757 () ListLongMap!4923)

(assert (=> b!375287 (= lt!173757 (+!818 lt!173764 lt!173753))))

(declare-fun lt!173758 () ListLongMap!4923)

(declare-fun lt!173754 () tuple2!5996)

(assert (=> b!375287 (= lt!173764 (+!818 lt!173758 lt!173754))))

(declare-fun lt!173760 () ListLongMap!4923)

(assert (=> b!375287 (= lt!173760 lt!173762)))

(assert (=> b!375287 (= lt!173762 (+!818 lt!173759 lt!173753))))

(assert (=> b!375287 (= lt!173759 (+!818 lt!173749 lt!173754))))

(declare-fun lt!173755 () ListLongMap!4923)

(assert (=> b!375287 (= lt!173757 (+!818 (+!818 lt!173755 lt!173754) lt!173753))))

(assert (=> b!375287 (= lt!173753 (tuple2!5997 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!375287 (= lt!173754 (tuple2!5997 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375288 () Bool)

(declare-fun res!211937 () Bool)

(assert (=> b!375288 (=> (not res!211937) (not e!228647))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!375288 (= res!211937 (and (= (size!10728 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10729 _keys!658) (size!10728 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!375289 () Bool)

(declare-fun res!211930 () Bool)

(assert (=> b!375289 (=> (not res!211930) (not e!228647))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375289 (= res!211930 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10729 _keys!658))))))

(declare-fun b!375290 () Bool)

(declare-fun res!211931 () Bool)

(declare-fun e!228646 () Bool)

(assert (=> b!375290 (=> (not res!211931) (not e!228646))))

(declare-fun lt!173751 () array!21823)

(declare-datatypes ((List!5868 0))(
  ( (Nil!5865) (Cons!5864 (h!6720 (_ BitVec 64)) (t!11026 List!5868)) )
))
(declare-fun arrayNoDuplicates!0 (array!21823 (_ BitVec 32) List!5868) Bool)

(assert (=> b!375290 (= res!211931 (arrayNoDuplicates!0 lt!173751 #b00000000000000000000000000000000 Nil!5865))))

(declare-fun b!375291 () Bool)

(declare-fun e!228645 () Bool)

(declare-fun e!228651 () Bool)

(assert (=> b!375291 (= e!228645 (and e!228651 mapRes!15006))))

(declare-fun condMapEmpty!15006 () Bool)

(declare-fun mapDefault!15006 () ValueCell!4137)

(assert (=> b!375291 (= condMapEmpty!15006 (= (arr!10376 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4137)) mapDefault!15006)))))

(declare-fun b!375292 () Bool)

(assert (=> b!375292 (= e!228651 tp_is_empty!8961)))

(declare-fun res!211933 () Bool)

(assert (=> start!37194 (=> (not res!211933) (not e!228647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37194 (= res!211933 (validMask!0 mask!970))))

(assert (=> start!37194 e!228647))

(declare-fun array_inv!7646 (array!21821) Bool)

(assert (=> start!37194 (and (array_inv!7646 _values!506) e!228645)))

(assert (=> start!37194 tp!29654))

(assert (=> start!37194 true))

(assert (=> start!37194 tp_is_empty!8961))

(declare-fun array_inv!7647 (array!21823) Bool)

(assert (=> start!37194 (array_inv!7647 _keys!658)))

(declare-fun b!375285 () Bool)

(declare-fun res!211934 () Bool)

(assert (=> b!375285 (=> (not res!211934) (not e!228647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21823 (_ BitVec 32)) Bool)

(assert (=> b!375285 (= res!211934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375293 () Bool)

(declare-fun res!211940 () Bool)

(assert (=> b!375293 (=> (not res!211940) (not e!228647))))

(assert (=> b!375293 (= res!211940 (or (= (select (arr!10377 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10377 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375294 () Bool)

(assert (=> b!375294 (= e!228647 e!228646)))

(declare-fun res!211938 () Bool)

(assert (=> b!375294 (=> (not res!211938) (not e!228646))))

(assert (=> b!375294 (= res!211938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173751 mask!970))))

(assert (=> b!375294 (= lt!173751 (array!21824 (store (arr!10377 _keys!658) i!548 k0!778) (size!10729 _keys!658)))))

(declare-fun b!375295 () Bool)

(assert (=> b!375295 (= e!228646 (not e!228649))))

(declare-fun res!211939 () Bool)

(assert (=> b!375295 (=> res!211939 e!228649)))

(assert (=> b!375295 (= res!211939 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1919 (array!21823 array!21821 (_ BitVec 32) (_ BitVec 32) V!13053 V!13053 (_ BitVec 32) Int) ListLongMap!4923)

(assert (=> b!375295 (= lt!173760 (getCurrentListMap!1919 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173748 () array!21821)

(assert (=> b!375295 (= lt!173757 (getCurrentListMap!1919 lt!173751 lt!173748 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375295 (and (= lt!173755 lt!173758) (= lt!173758 lt!173755))))

(assert (=> b!375295 (= lt!173758 (+!818 lt!173749 lt!173763))))

(assert (=> b!375295 (= lt!173763 (tuple2!5997 k0!778 v!373))))

(declare-fun lt!173756 () Unit!11539)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!70 (array!21823 array!21821 (_ BitVec 32) (_ BitVec 32) V!13053 V!13053 (_ BitVec 32) (_ BitVec 64) V!13053 (_ BitVec 32) Int) Unit!11539)

(assert (=> b!375295 (= lt!173756 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!70 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!737 (array!21823 array!21821 (_ BitVec 32) (_ BitVec 32) V!13053 V!13053 (_ BitVec 32) Int) ListLongMap!4923)

(assert (=> b!375295 (= lt!173755 (getCurrentListMapNoExtraKeys!737 lt!173751 lt!173748 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375295 (= lt!173748 (array!21822 (store (arr!10376 _values!506) i!548 (ValueCellFull!4137 v!373)) (size!10728 _values!506)))))

(assert (=> b!375295 (= lt!173749 (getCurrentListMapNoExtraKeys!737 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375296 () Bool)

(declare-fun res!211936 () Bool)

(assert (=> b!375296 (=> (not res!211936) (not e!228647))))

(assert (=> b!375296 (= res!211936 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5865))))

(assert (= (and start!37194 res!211933) b!375288))

(assert (= (and b!375288 res!211937) b!375285))

(assert (= (and b!375285 res!211934) b!375296))

(assert (= (and b!375296 res!211936) b!375289))

(assert (= (and b!375289 res!211930) b!375283))

(assert (= (and b!375283 res!211935) b!375293))

(assert (= (and b!375293 res!211940) b!375284))

(assert (= (and b!375284 res!211929) b!375294))

(assert (= (and b!375294 res!211938) b!375290))

(assert (= (and b!375290 res!211931) b!375295))

(assert (= (and b!375295 (not res!211939)) b!375287))

(assert (= (and b!375287 (not res!211932)) b!375286))

(assert (= (and b!375291 condMapEmpty!15006) mapIsEmpty!15006))

(assert (= (and b!375291 (not condMapEmpty!15006)) mapNonEmpty!15006))

(get-info :version)

(assert (= (and mapNonEmpty!15006 ((_ is ValueCellFull!4137) mapValue!15006)) b!375282))

(assert (= (and b!375291 ((_ is ValueCellFull!4137) mapDefault!15006)) b!375292))

(assert (= start!37194 b!375291))

(declare-fun m!371921 () Bool)

(assert (=> mapNonEmpty!15006 m!371921))

(declare-fun m!371923 () Bool)

(assert (=> b!375283 m!371923))

(declare-fun m!371925 () Bool)

(assert (=> b!375293 m!371925))

(declare-fun m!371927 () Bool)

(assert (=> b!375285 m!371927))

(declare-fun m!371929 () Bool)

(assert (=> b!375294 m!371929))

(declare-fun m!371931 () Bool)

(assert (=> b!375294 m!371931))

(declare-fun m!371933 () Bool)

(assert (=> b!375296 m!371933))

(declare-fun m!371935 () Bool)

(assert (=> b!375287 m!371935))

(declare-fun m!371937 () Bool)

(assert (=> b!375287 m!371937))

(assert (=> b!375287 m!371935))

(declare-fun m!371939 () Bool)

(assert (=> b!375287 m!371939))

(declare-fun m!371941 () Bool)

(assert (=> b!375287 m!371941))

(declare-fun m!371943 () Bool)

(assert (=> b!375287 m!371943))

(declare-fun m!371945 () Bool)

(assert (=> b!375287 m!371945))

(declare-fun m!371947 () Bool)

(assert (=> b!375287 m!371947))

(declare-fun m!371949 () Bool)

(assert (=> b!375287 m!371949))

(declare-fun m!371951 () Bool)

(assert (=> b!375286 m!371951))

(declare-fun m!371953 () Bool)

(assert (=> b!375286 m!371953))

(declare-fun m!371955 () Bool)

(assert (=> b!375286 m!371955))

(declare-fun m!371957 () Bool)

(assert (=> start!37194 m!371957))

(declare-fun m!371959 () Bool)

(assert (=> start!37194 m!371959))

(declare-fun m!371961 () Bool)

(assert (=> start!37194 m!371961))

(declare-fun m!371963 () Bool)

(assert (=> b!375290 m!371963))

(declare-fun m!371965 () Bool)

(assert (=> b!375295 m!371965))

(declare-fun m!371967 () Bool)

(assert (=> b!375295 m!371967))

(declare-fun m!371969 () Bool)

(assert (=> b!375295 m!371969))

(declare-fun m!371971 () Bool)

(assert (=> b!375295 m!371971))

(declare-fun m!371973 () Bool)

(assert (=> b!375295 m!371973))

(declare-fun m!371975 () Bool)

(assert (=> b!375295 m!371975))

(declare-fun m!371977 () Bool)

(assert (=> b!375295 m!371977))

(declare-fun m!371979 () Bool)

(assert (=> b!375284 m!371979))

(check-sat (not b!375294) (not b!375290) b_and!15573 (not b!375283) (not b!375284) tp_is_empty!8961 (not b!375287) (not start!37194) (not mapNonEmpty!15006) (not b!375295) (not b!375296) (not b!375285) (not b!375286) (not b_next!8313))
(check-sat b_and!15573 (not b_next!8313))
