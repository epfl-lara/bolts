; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71106 () Bool)

(assert start!71106)

(declare-fun b_free!13269 () Bool)

(declare-fun b_next!13269 () Bool)

(assert (=> start!71106 (= b_free!13269 (not b_next!13269))))

(declare-fun tp!46563 () Bool)

(declare-fun b_and!22201 () Bool)

(assert (=> start!71106 (= tp!46563 b_and!22201)))

(declare-fun b!825339 () Bool)

(declare-datatypes ((V!24973 0))(
  ( (V!24974 (val!7537 Int)) )
))
(declare-datatypes ((tuple2!9976 0))(
  ( (tuple2!9977 (_1!4998 (_ BitVec 64)) (_2!4998 V!24973)) )
))
(declare-fun lt!372713 () tuple2!9976)

(declare-datatypes ((List!15821 0))(
  ( (Nil!15818) (Cons!15817 (h!16946 tuple2!9976) (t!22174 List!15821)) )
))
(declare-datatypes ((ListLongMap!8813 0))(
  ( (ListLongMap!8814 (toList!4422 List!15821)) )
))
(declare-fun lt!372709 () ListLongMap!8813)

(declare-fun e!459426 () Bool)

(declare-fun lt!372708 () tuple2!9976)

(declare-fun lt!372701 () ListLongMap!8813)

(declare-fun +!1884 (ListLongMap!8813 tuple2!9976) ListLongMap!8813)

(assert (=> b!825339 (= e!459426 (= lt!372701 (+!1884 (+!1884 lt!372709 lt!372713) lt!372708)))))

(declare-fun b!825340 () Bool)

(declare-fun zeroValueAfter!34 () V!24973)

(declare-fun e!459430 () Bool)

(assert (=> b!825340 (= e!459430 (= lt!372701 (+!1884 (+!1884 lt!372709 (tuple2!9977 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372713)))))

(declare-fun mapNonEmpty!24091 () Bool)

(declare-fun mapRes!24091 () Bool)

(declare-fun tp!46564 () Bool)

(declare-fun e!459429 () Bool)

(assert (=> mapNonEmpty!24091 (= mapRes!24091 (and tp!46564 e!459429))))

(declare-datatypes ((ValueCell!7074 0))(
  ( (ValueCellFull!7074 (v!9966 V!24973)) (EmptyCell!7074) )
))
(declare-fun mapValue!24091 () ValueCell!7074)

(declare-datatypes ((array!46100 0))(
  ( (array!46101 (arr!22092 (Array (_ BitVec 32) ValueCell!7074)) (size!22513 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46100)

(declare-fun mapRest!24091 () (Array (_ BitVec 32) ValueCell!7074))

(declare-fun mapKey!24091 () (_ BitVec 32))

(assert (=> mapNonEmpty!24091 (= (arr!22092 _values!788) (store mapRest!24091 mapKey!24091 mapValue!24091))))

(declare-fun b!825341 () Bool)

(declare-fun e!459425 () Bool)

(assert (=> b!825341 (= e!459425 true)))

(declare-fun lt!372710 () ListLongMap!8813)

(declare-fun lt!372712 () ListLongMap!8813)

(assert (=> b!825341 (= lt!372712 (+!1884 (+!1884 lt!372710 lt!372708) lt!372713))))

(declare-fun lt!372706 () ListLongMap!8813)

(declare-fun lt!372705 () ListLongMap!8813)

(assert (=> b!825341 (and (= lt!372706 lt!372705) (= lt!372701 lt!372705) (= lt!372701 lt!372706))))

(declare-fun lt!372711 () ListLongMap!8813)

(assert (=> b!825341 (= lt!372705 (+!1884 lt!372711 lt!372708))))

(declare-fun lt!372707 () ListLongMap!8813)

(assert (=> b!825341 (= lt!372706 (+!1884 lt!372707 lt!372708))))

(declare-fun zeroValueBefore!34 () V!24973)

(declare-datatypes ((Unit!28285 0))(
  ( (Unit!28286) )
))
(declare-fun lt!372700 () Unit!28285)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!212 (ListLongMap!8813 (_ BitVec 64) V!24973 V!24973) Unit!28285)

(assert (=> b!825341 (= lt!372700 (addSameAsAddTwiceSameKeyDiffValues!212 lt!372707 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!825341 e!459426))

(declare-fun res!562753 () Bool)

(assert (=> b!825341 (=> (not res!562753) (not e!459426))))

(declare-fun lt!372702 () ListLongMap!8813)

(assert (=> b!825341 (= res!562753 (= lt!372702 lt!372711))))

(declare-fun lt!372704 () tuple2!9976)

(assert (=> b!825341 (= lt!372711 (+!1884 lt!372707 lt!372704))))

(assert (=> b!825341 (= lt!372707 (+!1884 lt!372710 lt!372713))))

(assert (=> b!825341 (= lt!372708 (tuple2!9977 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!825341 e!459430))

(declare-fun res!562755 () Bool)

(assert (=> b!825341 (=> (not res!562755) (not e!459430))))

(assert (=> b!825341 (= res!562755 (= lt!372702 (+!1884 (+!1884 lt!372710 lt!372704) lt!372713)))))

(declare-fun minValue!754 () V!24973)

(assert (=> b!825341 (= lt!372713 (tuple2!9977 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825341 (= lt!372704 (tuple2!9977 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46102 0))(
  ( (array!46103 (arr!22093 (Array (_ BitVec 32) (_ BitVec 64))) (size!22514 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46102)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2534 (array!46102 array!46100 (_ BitVec 32) (_ BitVec 32) V!24973 V!24973 (_ BitVec 32) Int) ListLongMap!8813)

(assert (=> b!825341 (= lt!372701 (getCurrentListMap!2534 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825341 (= lt!372702 (getCurrentListMap!2534 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825342 () Bool)

(declare-fun e!459428 () Bool)

(declare-fun e!459427 () Bool)

(assert (=> b!825342 (= e!459428 (and e!459427 mapRes!24091))))

(declare-fun condMapEmpty!24091 () Bool)

(declare-fun mapDefault!24091 () ValueCell!7074)

(assert (=> b!825342 (= condMapEmpty!24091 (= (arr!22092 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7074)) mapDefault!24091)))))

(declare-fun mapIsEmpty!24091 () Bool)

(assert (=> mapIsEmpty!24091 mapRes!24091))

(declare-fun b!825344 () Bool)

(declare-fun res!562751 () Bool)

(declare-fun e!459431 () Bool)

(assert (=> b!825344 (=> (not res!562751) (not e!459431))))

(declare-datatypes ((List!15822 0))(
  ( (Nil!15819) (Cons!15818 (h!16947 (_ BitVec 64)) (t!22175 List!15822)) )
))
(declare-fun arrayNoDuplicates!0 (array!46102 (_ BitVec 32) List!15822) Bool)

(assert (=> b!825344 (= res!562751 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15819))))

(declare-fun b!825345 () Bool)

(declare-fun tp_is_empty!14979 () Bool)

(assert (=> b!825345 (= e!459427 tp_is_empty!14979)))

(declare-fun b!825346 () Bool)

(assert (=> b!825346 (= e!459429 tp_is_empty!14979)))

(declare-fun b!825343 () Bool)

(declare-fun res!562752 () Bool)

(assert (=> b!825343 (=> (not res!562752) (not e!459431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46102 (_ BitVec 32)) Bool)

(assert (=> b!825343 (= res!562752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!562754 () Bool)

(assert (=> start!71106 (=> (not res!562754) (not e!459431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71106 (= res!562754 (validMask!0 mask!1312))))

(assert (=> start!71106 e!459431))

(assert (=> start!71106 tp_is_empty!14979))

(declare-fun array_inv!17601 (array!46102) Bool)

(assert (=> start!71106 (array_inv!17601 _keys!976)))

(assert (=> start!71106 true))

(declare-fun array_inv!17602 (array!46100) Bool)

(assert (=> start!71106 (and (array_inv!17602 _values!788) e!459428)))

(assert (=> start!71106 tp!46563))

(declare-fun b!825347 () Bool)

(assert (=> b!825347 (= e!459431 (not e!459425))))

(declare-fun res!562750 () Bool)

(assert (=> b!825347 (=> res!562750 e!459425)))

(assert (=> b!825347 (= res!562750 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!825347 (= lt!372710 lt!372709)))

(declare-fun lt!372703 () Unit!28285)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!554 (array!46102 array!46100 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24973 V!24973 V!24973 V!24973 (_ BitVec 32) Int) Unit!28285)

(assert (=> b!825347 (= lt!372703 (lemmaNoChangeToArrayThenSameMapNoExtras!554 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2438 (array!46102 array!46100 (_ BitVec 32) (_ BitVec 32) V!24973 V!24973 (_ BitVec 32) Int) ListLongMap!8813)

(assert (=> b!825347 (= lt!372709 (getCurrentListMapNoExtraKeys!2438 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825347 (= lt!372710 (getCurrentListMapNoExtraKeys!2438 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825348 () Bool)

(declare-fun res!562749 () Bool)

(assert (=> b!825348 (=> (not res!562749) (not e!459431))))

(assert (=> b!825348 (= res!562749 (and (= (size!22513 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22514 _keys!976) (size!22513 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!71106 res!562754) b!825348))

(assert (= (and b!825348 res!562749) b!825343))

(assert (= (and b!825343 res!562752) b!825344))

(assert (= (and b!825344 res!562751) b!825347))

(assert (= (and b!825347 (not res!562750)) b!825341))

(assert (= (and b!825341 res!562755) b!825340))

(assert (= (and b!825341 res!562753) b!825339))

(assert (= (and b!825342 condMapEmpty!24091) mapIsEmpty!24091))

(assert (= (and b!825342 (not condMapEmpty!24091)) mapNonEmpty!24091))

(get-info :version)

(assert (= (and mapNonEmpty!24091 ((_ is ValueCellFull!7074) mapValue!24091)) b!825346))

(assert (= (and b!825342 ((_ is ValueCellFull!7074) mapDefault!24091)) b!825345))

(assert (= start!71106 b!825342))

(declare-fun m!767627 () Bool)

(assert (=> start!71106 m!767627))

(declare-fun m!767629 () Bool)

(assert (=> start!71106 m!767629))

(declare-fun m!767631 () Bool)

(assert (=> start!71106 m!767631))

(declare-fun m!767633 () Bool)

(assert (=> b!825341 m!767633))

(declare-fun m!767635 () Bool)

(assert (=> b!825341 m!767635))

(declare-fun m!767637 () Bool)

(assert (=> b!825341 m!767637))

(declare-fun m!767639 () Bool)

(assert (=> b!825341 m!767639))

(declare-fun m!767641 () Bool)

(assert (=> b!825341 m!767641))

(declare-fun m!767643 () Bool)

(assert (=> b!825341 m!767643))

(declare-fun m!767645 () Bool)

(assert (=> b!825341 m!767645))

(assert (=> b!825341 m!767633))

(declare-fun m!767647 () Bool)

(assert (=> b!825341 m!767647))

(declare-fun m!767649 () Bool)

(assert (=> b!825341 m!767649))

(declare-fun m!767651 () Bool)

(assert (=> b!825341 m!767651))

(assert (=> b!825341 m!767649))

(declare-fun m!767653 () Bool)

(assert (=> b!825341 m!767653))

(declare-fun m!767655 () Bool)

(assert (=> b!825343 m!767655))

(declare-fun m!767657 () Bool)

(assert (=> b!825340 m!767657))

(assert (=> b!825340 m!767657))

(declare-fun m!767659 () Bool)

(assert (=> b!825340 m!767659))

(declare-fun m!767661 () Bool)

(assert (=> mapNonEmpty!24091 m!767661))

(declare-fun m!767663 () Bool)

(assert (=> b!825344 m!767663))

(declare-fun m!767665 () Bool)

(assert (=> b!825347 m!767665))

(declare-fun m!767667 () Bool)

(assert (=> b!825347 m!767667))

(declare-fun m!767669 () Bool)

(assert (=> b!825347 m!767669))

(declare-fun m!767671 () Bool)

(assert (=> b!825339 m!767671))

(assert (=> b!825339 m!767671))

(declare-fun m!767673 () Bool)

(assert (=> b!825339 m!767673))

(check-sat (not b!825339) tp_is_empty!14979 (not mapNonEmpty!24091) (not b!825344) b_and!22201 (not b!825347) (not b!825343) (not b_next!13269) (not b!825341) (not start!71106) (not b!825340))
(check-sat b_and!22201 (not b_next!13269))
