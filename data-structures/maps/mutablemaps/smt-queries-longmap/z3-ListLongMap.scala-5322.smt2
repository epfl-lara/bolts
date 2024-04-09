; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71198 () Bool)

(assert start!71198)

(declare-fun b_free!13341 () Bool)

(declare-fun b_next!13341 () Bool)

(assert (=> start!71198 (= b_free!13341 (not b_next!13341))))

(declare-fun tp!46782 () Bool)

(declare-fun b_and!22285 () Bool)

(assert (=> start!71198 (= tp!46782 b_and!22285)))

(declare-fun b!826625 () Bool)

(declare-fun e!460420 () Bool)

(declare-fun tp_is_empty!15051 () Bool)

(assert (=> b!826625 (= e!460420 tp_is_empty!15051)))

(declare-fun b!826626 () Bool)

(declare-fun res!563611 () Bool)

(declare-fun e!460418 () Bool)

(assert (=> b!826626 (=> (not res!563611) (not e!460418))))

(declare-datatypes ((array!46240 0))(
  ( (array!46241 (arr!22161 (Array (_ BitVec 32) (_ BitVec 64))) (size!22582 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46240)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25069 0))(
  ( (V!25070 (val!7573 Int)) )
))
(declare-datatypes ((ValueCell!7110 0))(
  ( (ValueCellFull!7110 (v!10003 V!25069)) (EmptyCell!7110) )
))
(declare-datatypes ((array!46242 0))(
  ( (array!46243 (arr!22162 (Array (_ BitVec 32) ValueCell!7110)) (size!22583 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46242)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!826626 (= res!563611 (and (= (size!22583 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22582 _keys!976) (size!22583 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!826627 () Bool)

(declare-fun e!460419 () Bool)

(declare-fun e!460422 () Bool)

(declare-fun mapRes!24202 () Bool)

(assert (=> b!826627 (= e!460419 (and e!460422 mapRes!24202))))

(declare-fun condMapEmpty!24202 () Bool)

(declare-fun mapDefault!24202 () ValueCell!7110)

(assert (=> b!826627 (= condMapEmpty!24202 (= (arr!22162 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7110)) mapDefault!24202)))))

(declare-fun b!826628 () Bool)

(declare-fun e!460425 () Bool)

(assert (=> b!826628 (= e!460425 true)))

(declare-datatypes ((tuple2!10044 0))(
  ( (tuple2!10045 (_1!5032 (_ BitVec 64)) (_2!5032 V!25069)) )
))
(declare-fun lt!374396 () tuple2!10044)

(declare-datatypes ((List!15881 0))(
  ( (Nil!15878) (Cons!15877 (h!17006 tuple2!10044) (t!22236 List!15881)) )
))
(declare-datatypes ((ListLongMap!8881 0))(
  ( (ListLongMap!8882 (toList!4456 List!15881)) )
))
(declare-fun lt!374403 () ListLongMap!8881)

(declare-fun lt!374397 () ListLongMap!8881)

(declare-fun lt!374390 () tuple2!10044)

(declare-fun +!1917 (ListLongMap!8881 tuple2!10044) ListLongMap!8881)

(assert (=> b!826628 (= lt!374403 (+!1917 (+!1917 lt!374397 lt!374396) lt!374390))))

(declare-fun lt!374394 () ListLongMap!8881)

(declare-fun lt!374395 () ListLongMap!8881)

(declare-fun lt!374400 () ListLongMap!8881)

(assert (=> b!826628 (and (= lt!374394 lt!374395) (= lt!374400 lt!374395) (= lt!374400 lt!374394))))

(declare-fun lt!374398 () ListLongMap!8881)

(assert (=> b!826628 (= lt!374395 (+!1917 lt!374398 lt!374396))))

(declare-fun lt!374401 () ListLongMap!8881)

(assert (=> b!826628 (= lt!374394 (+!1917 lt!374401 lt!374396))))

(declare-fun zeroValueBefore!34 () V!25069)

(declare-datatypes ((Unit!28347 0))(
  ( (Unit!28348) )
))
(declare-fun lt!374392 () Unit!28347)

(declare-fun zeroValueAfter!34 () V!25069)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!239 (ListLongMap!8881 (_ BitVec 64) V!25069 V!25069) Unit!28347)

(assert (=> b!826628 (= lt!374392 (addSameAsAddTwiceSameKeyDiffValues!239 lt!374401 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460424 () Bool)

(assert (=> b!826628 e!460424))

(declare-fun res!563614 () Bool)

(assert (=> b!826628 (=> (not res!563614) (not e!460424))))

(declare-fun lt!374393 () ListLongMap!8881)

(assert (=> b!826628 (= res!563614 (= lt!374393 lt!374398))))

(declare-fun lt!374391 () tuple2!10044)

(assert (=> b!826628 (= lt!374398 (+!1917 lt!374401 lt!374391))))

(assert (=> b!826628 (= lt!374401 (+!1917 lt!374397 lt!374390))))

(assert (=> b!826628 (= lt!374396 (tuple2!10045 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460423 () Bool)

(assert (=> b!826628 e!460423))

(declare-fun res!563613 () Bool)

(assert (=> b!826628 (=> (not res!563613) (not e!460423))))

(assert (=> b!826628 (= res!563613 (= lt!374393 (+!1917 (+!1917 lt!374397 lt!374391) lt!374390)))))

(declare-fun minValue!754 () V!25069)

(assert (=> b!826628 (= lt!374390 (tuple2!10045 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826628 (= lt!374391 (tuple2!10045 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2561 (array!46240 array!46242 (_ BitVec 32) (_ BitVec 32) V!25069 V!25069 (_ BitVec 32) Int) ListLongMap!8881)

(assert (=> b!826628 (= lt!374400 (getCurrentListMap!2561 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826628 (= lt!374393 (getCurrentListMap!2561 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826629 () Bool)

(declare-fun res!563609 () Bool)

(assert (=> b!826629 (=> (not res!563609) (not e!460418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46240 (_ BitVec 32)) Bool)

(assert (=> b!826629 (= res!563609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun lt!374399 () ListLongMap!8881)

(declare-fun b!826630 () Bool)

(assert (=> b!826630 (= e!460423 (= lt!374400 (+!1917 (+!1917 lt!374399 (tuple2!10045 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374390)))))

(declare-fun res!563615 () Bool)

(assert (=> start!71198 (=> (not res!563615) (not e!460418))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71198 (= res!563615 (validMask!0 mask!1312))))

(assert (=> start!71198 e!460418))

(assert (=> start!71198 tp_is_empty!15051))

(declare-fun array_inv!17647 (array!46240) Bool)

(assert (=> start!71198 (array_inv!17647 _keys!976)))

(assert (=> start!71198 true))

(declare-fun array_inv!17648 (array!46242) Bool)

(assert (=> start!71198 (and (array_inv!17648 _values!788) e!460419)))

(assert (=> start!71198 tp!46782))

(declare-fun b!826631 () Bool)

(assert (=> b!826631 (= e!460424 (= lt!374400 (+!1917 (+!1917 lt!374399 lt!374390) lt!374396)))))

(declare-fun b!826632 () Bool)

(declare-fun res!563612 () Bool)

(assert (=> b!826632 (=> (not res!563612) (not e!460418))))

(declare-datatypes ((List!15882 0))(
  ( (Nil!15879) (Cons!15878 (h!17007 (_ BitVec 64)) (t!22237 List!15882)) )
))
(declare-fun arrayNoDuplicates!0 (array!46240 (_ BitVec 32) List!15882) Bool)

(assert (=> b!826632 (= res!563612 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15879))))

(declare-fun mapNonEmpty!24202 () Bool)

(declare-fun tp!46783 () Bool)

(assert (=> mapNonEmpty!24202 (= mapRes!24202 (and tp!46783 e!460420))))

(declare-fun mapKey!24202 () (_ BitVec 32))

(declare-fun mapRest!24202 () (Array (_ BitVec 32) ValueCell!7110))

(declare-fun mapValue!24202 () ValueCell!7110)

(assert (=> mapNonEmpty!24202 (= (arr!22162 _values!788) (store mapRest!24202 mapKey!24202 mapValue!24202))))

(declare-fun b!826633 () Bool)

(assert (=> b!826633 (= e!460422 tp_is_empty!15051)))

(declare-fun b!826634 () Bool)

(assert (=> b!826634 (= e!460418 (not e!460425))))

(declare-fun res!563610 () Bool)

(assert (=> b!826634 (=> res!563610 e!460425)))

(assert (=> b!826634 (= res!563610 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!826634 (= lt!374397 lt!374399)))

(declare-fun lt!374402 () Unit!28347)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!580 (array!46240 array!46242 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25069 V!25069 V!25069 V!25069 (_ BitVec 32) Int) Unit!28347)

(assert (=> b!826634 (= lt!374402 (lemmaNoChangeToArrayThenSameMapNoExtras!580 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2464 (array!46240 array!46242 (_ BitVec 32) (_ BitVec 32) V!25069 V!25069 (_ BitVec 32) Int) ListLongMap!8881)

(assert (=> b!826634 (= lt!374399 (getCurrentListMapNoExtraKeys!2464 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826634 (= lt!374397 (getCurrentListMapNoExtraKeys!2464 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24202 () Bool)

(assert (=> mapIsEmpty!24202 mapRes!24202))

(assert (= (and start!71198 res!563615) b!826626))

(assert (= (and b!826626 res!563611) b!826629))

(assert (= (and b!826629 res!563609) b!826632))

(assert (= (and b!826632 res!563612) b!826634))

(assert (= (and b!826634 (not res!563610)) b!826628))

(assert (= (and b!826628 res!563613) b!826630))

(assert (= (and b!826628 res!563614) b!826631))

(assert (= (and b!826627 condMapEmpty!24202) mapIsEmpty!24202))

(assert (= (and b!826627 (not condMapEmpty!24202)) mapNonEmpty!24202))

(get-info :version)

(assert (= (and mapNonEmpty!24202 ((_ is ValueCellFull!7110) mapValue!24202)) b!826625))

(assert (= (and b!826627 ((_ is ValueCellFull!7110) mapDefault!24202)) b!826633))

(assert (= start!71198 b!826627))

(declare-fun m!769665 () Bool)

(assert (=> b!826628 m!769665))

(declare-fun m!769667 () Bool)

(assert (=> b!826628 m!769667))

(declare-fun m!769669 () Bool)

(assert (=> b!826628 m!769669))

(assert (=> b!826628 m!769667))

(declare-fun m!769671 () Bool)

(assert (=> b!826628 m!769671))

(declare-fun m!769673 () Bool)

(assert (=> b!826628 m!769673))

(declare-fun m!769675 () Bool)

(assert (=> b!826628 m!769675))

(assert (=> b!826628 m!769673))

(declare-fun m!769677 () Bool)

(assert (=> b!826628 m!769677))

(declare-fun m!769679 () Bool)

(assert (=> b!826628 m!769679))

(declare-fun m!769681 () Bool)

(assert (=> b!826628 m!769681))

(declare-fun m!769683 () Bool)

(assert (=> b!826628 m!769683))

(declare-fun m!769685 () Bool)

(assert (=> b!826628 m!769685))

(declare-fun m!769687 () Bool)

(assert (=> b!826634 m!769687))

(declare-fun m!769689 () Bool)

(assert (=> b!826634 m!769689))

(declare-fun m!769691 () Bool)

(assert (=> b!826634 m!769691))

(declare-fun m!769693 () Bool)

(assert (=> mapNonEmpty!24202 m!769693))

(declare-fun m!769695 () Bool)

(assert (=> b!826631 m!769695))

(assert (=> b!826631 m!769695))

(declare-fun m!769697 () Bool)

(assert (=> b!826631 m!769697))

(declare-fun m!769699 () Bool)

(assert (=> b!826632 m!769699))

(declare-fun m!769701 () Bool)

(assert (=> start!71198 m!769701))

(declare-fun m!769703 () Bool)

(assert (=> start!71198 m!769703))

(declare-fun m!769705 () Bool)

(assert (=> start!71198 m!769705))

(declare-fun m!769707 () Bool)

(assert (=> b!826630 m!769707))

(assert (=> b!826630 m!769707))

(declare-fun m!769709 () Bool)

(assert (=> b!826630 m!769709))

(declare-fun m!769711 () Bool)

(assert (=> b!826629 m!769711))

(check-sat (not b!826630) (not mapNonEmpty!24202) (not b_next!13341) (not b!826632) (not b!826631) (not b!826629) (not start!71198) (not b!826628) b_and!22285 (not b!826634) tp_is_empty!15051)
(check-sat b_and!22285 (not b_next!13341))
