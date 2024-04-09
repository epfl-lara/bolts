; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70802 () Bool)

(assert start!70802)

(declare-fun b_free!13035 () Bool)

(declare-fun b_next!13035 () Bool)

(assert (=> start!70802 (= b_free!13035 (not b_next!13035))))

(declare-fun tp!45849 () Bool)

(declare-fun b_and!21925 () Bool)

(assert (=> start!70802 (= tp!45849 b_and!21925)))

(declare-fun res!560747 () Bool)

(declare-fun e!456943 () Bool)

(assert (=> start!70802 (=> (not res!560747) (not e!456943))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70802 (= res!560747 (validMask!0 mask!1312))))

(assert (=> start!70802 e!456943))

(declare-fun tp_is_empty!14745 () Bool)

(assert (=> start!70802 tp_is_empty!14745))

(declare-datatypes ((array!45644 0))(
  ( (array!45645 (arr!21868 (Array (_ BitVec 32) (_ BitVec 64))) (size!22289 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45644)

(declare-fun array_inv!17441 (array!45644) Bool)

(assert (=> start!70802 (array_inv!17441 _keys!976)))

(assert (=> start!70802 true))

(declare-datatypes ((V!24661 0))(
  ( (V!24662 (val!7420 Int)) )
))
(declare-datatypes ((ValueCell!6957 0))(
  ( (ValueCellFull!6957 (v!9847 V!24661)) (EmptyCell!6957) )
))
(declare-datatypes ((array!45646 0))(
  ( (array!45647 (arr!21869 (Array (_ BitVec 32) ValueCell!6957)) (size!22290 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45646)

(declare-fun e!456942 () Bool)

(declare-fun array_inv!17442 (array!45646) Bool)

(assert (=> start!70802 (and (array_inv!17442 _values!788) e!456942)))

(assert (=> start!70802 tp!45849))

(declare-fun b!821935 () Bool)

(declare-fun res!560749 () Bool)

(assert (=> b!821935 (=> (not res!560749) (not e!456943))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!821935 (= res!560749 (and (= (size!22290 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22289 _keys!976) (size!22290 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821936 () Bool)

(declare-fun res!560746 () Bool)

(assert (=> b!821936 (=> (not res!560746) (not e!456943))))

(declare-datatypes ((List!15648 0))(
  ( (Nil!15645) (Cons!15644 (h!16773 (_ BitVec 64)) (t!21993 List!15648)) )
))
(declare-fun arrayNoDuplicates!0 (array!45644 (_ BitVec 32) List!15648) Bool)

(assert (=> b!821936 (= res!560746 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15645))))

(declare-fun b!821937 () Bool)

(declare-fun e!456947 () Bool)

(assert (=> b!821937 (= e!456943 (not e!456947))))

(declare-fun res!560750 () Bool)

(assert (=> b!821937 (=> res!560750 e!456947)))

(assert (=> b!821937 (= res!560750 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9790 0))(
  ( (tuple2!9791 (_1!4905 (_ BitVec 64)) (_2!4905 V!24661)) )
))
(declare-datatypes ((List!15649 0))(
  ( (Nil!15646) (Cons!15645 (h!16774 tuple2!9790) (t!21994 List!15649)) )
))
(declare-datatypes ((ListLongMap!8627 0))(
  ( (ListLongMap!8628 (toList!4329 List!15649)) )
))
(declare-fun lt!369626 () ListLongMap!8627)

(declare-fun lt!369631 () ListLongMap!8627)

(assert (=> b!821937 (= lt!369626 lt!369631)))

(declare-fun zeroValueBefore!34 () V!24661)

(declare-fun minValue!754 () V!24661)

(declare-datatypes ((Unit!28100 0))(
  ( (Unit!28101) )
))
(declare-fun lt!369632 () Unit!28100)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!24661)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!472 (array!45644 array!45646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24661 V!24661 V!24661 V!24661 (_ BitVec 32) Int) Unit!28100)

(assert (=> b!821937 (= lt!369632 (lemmaNoChangeToArrayThenSameMapNoExtras!472 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2356 (array!45644 array!45646 (_ BitVec 32) (_ BitVec 32) V!24661 V!24661 (_ BitVec 32) Int) ListLongMap!8627)

(assert (=> b!821937 (= lt!369631 (getCurrentListMapNoExtraKeys!2356 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821937 (= lt!369626 (getCurrentListMapNoExtraKeys!2356 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821938 () Bool)

(declare-fun e!456944 () Bool)

(declare-fun mapRes!23728 () Bool)

(assert (=> b!821938 (= e!456942 (and e!456944 mapRes!23728))))

(declare-fun condMapEmpty!23728 () Bool)

(declare-fun mapDefault!23728 () ValueCell!6957)

(assert (=> b!821938 (= condMapEmpty!23728 (= (arr!21869 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6957)) mapDefault!23728)))))

(declare-fun b!821939 () Bool)

(assert (=> b!821939 (= e!456944 tp_is_empty!14745)))

(declare-fun mapIsEmpty!23728 () Bool)

(assert (=> mapIsEmpty!23728 mapRes!23728))

(declare-fun b!821940 () Bool)

(assert (=> b!821940 (= e!456947 true)))

(declare-fun lt!369629 () ListLongMap!8627)

(declare-fun lt!369625 () ListLongMap!8627)

(declare-fun lt!369628 () tuple2!9790)

(declare-fun +!1833 (ListLongMap!8627 tuple2!9790) ListLongMap!8627)

(assert (=> b!821940 (= lt!369629 (+!1833 lt!369625 lt!369628))))

(declare-fun lt!369623 () Unit!28100)

(declare-fun addCommutativeForDiffKeys!428 (ListLongMap!8627 (_ BitVec 64) V!24661 (_ BitVec 64) V!24661) Unit!28100)

(assert (=> b!821940 (= lt!369623 (addCommutativeForDiffKeys!428 lt!369626 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369624 () ListLongMap!8627)

(assert (=> b!821940 (= lt!369624 lt!369629)))

(declare-fun lt!369630 () tuple2!9790)

(assert (=> b!821940 (= lt!369629 (+!1833 (+!1833 lt!369626 lt!369628) lt!369630))))

(assert (=> b!821940 (= lt!369628 (tuple2!9791 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!369627 () ListLongMap!8627)

(assert (=> b!821940 (= lt!369627 lt!369625)))

(assert (=> b!821940 (= lt!369625 (+!1833 lt!369626 lt!369630))))

(assert (=> b!821940 (= lt!369630 (tuple2!9791 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2463 (array!45644 array!45646 (_ BitVec 32) (_ BitVec 32) V!24661 V!24661 (_ BitVec 32) Int) ListLongMap!8627)

(assert (=> b!821940 (= lt!369624 (getCurrentListMap!2463 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821940 (= lt!369627 (getCurrentListMap!2463 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821941 () Bool)

(declare-fun e!456945 () Bool)

(assert (=> b!821941 (= e!456945 tp_is_empty!14745)))

(declare-fun mapNonEmpty!23728 () Bool)

(declare-fun tp!45850 () Bool)

(assert (=> mapNonEmpty!23728 (= mapRes!23728 (and tp!45850 e!456945))))

(declare-fun mapRest!23728 () (Array (_ BitVec 32) ValueCell!6957))

(declare-fun mapKey!23728 () (_ BitVec 32))

(declare-fun mapValue!23728 () ValueCell!6957)

(assert (=> mapNonEmpty!23728 (= (arr!21869 _values!788) (store mapRest!23728 mapKey!23728 mapValue!23728))))

(declare-fun b!821942 () Bool)

(declare-fun res!560748 () Bool)

(assert (=> b!821942 (=> (not res!560748) (not e!456943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45644 (_ BitVec 32)) Bool)

(assert (=> b!821942 (= res!560748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70802 res!560747) b!821935))

(assert (= (and b!821935 res!560749) b!821942))

(assert (= (and b!821942 res!560748) b!821936))

(assert (= (and b!821936 res!560746) b!821937))

(assert (= (and b!821937 (not res!560750)) b!821940))

(assert (= (and b!821938 condMapEmpty!23728) mapIsEmpty!23728))

(assert (= (and b!821938 (not condMapEmpty!23728)) mapNonEmpty!23728))

(get-info :version)

(assert (= (and mapNonEmpty!23728 ((_ is ValueCellFull!6957) mapValue!23728)) b!821941))

(assert (= (and b!821938 ((_ is ValueCellFull!6957) mapDefault!23728)) b!821939))

(assert (= start!70802 b!821938))

(declare-fun m!763767 () Bool)

(assert (=> start!70802 m!763767))

(declare-fun m!763769 () Bool)

(assert (=> start!70802 m!763769))

(declare-fun m!763771 () Bool)

(assert (=> start!70802 m!763771))

(declare-fun m!763773 () Bool)

(assert (=> b!821942 m!763773))

(declare-fun m!763775 () Bool)

(assert (=> b!821937 m!763775))

(declare-fun m!763777 () Bool)

(assert (=> b!821937 m!763777))

(declare-fun m!763779 () Bool)

(assert (=> b!821937 m!763779))

(declare-fun m!763781 () Bool)

(assert (=> b!821940 m!763781))

(declare-fun m!763783 () Bool)

(assert (=> b!821940 m!763783))

(assert (=> b!821940 m!763783))

(declare-fun m!763785 () Bool)

(assert (=> b!821940 m!763785))

(declare-fun m!763787 () Bool)

(assert (=> b!821940 m!763787))

(declare-fun m!763789 () Bool)

(assert (=> b!821940 m!763789))

(declare-fun m!763791 () Bool)

(assert (=> b!821940 m!763791))

(declare-fun m!763793 () Bool)

(assert (=> b!821940 m!763793))

(declare-fun m!763795 () Bool)

(assert (=> mapNonEmpty!23728 m!763795))

(declare-fun m!763797 () Bool)

(assert (=> b!821936 m!763797))

(check-sat tp_is_empty!14745 b_and!21925 (not b!821937) (not b!821940) (not b!821936) (not b_next!13035) (not mapNonEmpty!23728) (not b!821942) (not start!70802))
(check-sat b_and!21925 (not b_next!13035))
