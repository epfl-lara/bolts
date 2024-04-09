; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70246 () Bool)

(assert start!70246)

(declare-fun b_free!12615 () Bool)

(declare-fun b_next!12615 () Bool)

(assert (=> start!70246 (= b_free!12615 (not b_next!12615))))

(declare-fun tp!44565 () Bool)

(declare-fun b_and!21421 () Bool)

(assert (=> start!70246 (= tp!44565 b_and!21421)))

(declare-fun b!815664 () Bool)

(declare-fun res!557062 () Bool)

(declare-fun e!452390 () Bool)

(assert (=> b!815664 (=> (not res!557062) (not e!452390))))

(declare-datatypes ((array!44836 0))(
  ( (array!44837 (arr!21472 (Array (_ BitVec 32) (_ BitVec 64))) (size!21893 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44836)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44836 (_ BitVec 32)) Bool)

(assert (=> b!815664 (= res!557062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815665 () Bool)

(declare-fun e!452392 () Bool)

(assert (=> b!815665 (= e!452392 true)))

(declare-datatypes ((V!24101 0))(
  ( (V!24102 (val!7210 Int)) )
))
(declare-datatypes ((tuple2!9474 0))(
  ( (tuple2!9475 (_1!4747 (_ BitVec 64)) (_2!4747 V!24101)) )
))
(declare-datatypes ((List!15344 0))(
  ( (Nil!15341) (Cons!15340 (h!16469 tuple2!9474) (t!21673 List!15344)) )
))
(declare-datatypes ((ListLongMap!8311 0))(
  ( (ListLongMap!8312 (toList!4171 List!15344)) )
))
(declare-fun lt!365229 () ListLongMap!8311)

(declare-fun zeroValueAfter!34 () V!24101)

(declare-fun minValue!754 () V!24101)

(declare-datatypes ((ValueCell!6747 0))(
  ( (ValueCellFull!6747 (v!9633 V!24101)) (EmptyCell!6747) )
))
(declare-datatypes ((array!44838 0))(
  ( (array!44839 (arr!21473 (Array (_ BitVec 32) ValueCell!6747)) (size!21894 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44838)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2361 (array!44836 array!44838 (_ BitVec 32) (_ BitVec 32) V!24101 V!24101 (_ BitVec 32) Int) ListLongMap!8311)

(assert (=> b!815665 (= lt!365229 (getCurrentListMap!2361 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365226 () ListLongMap!8311)

(declare-fun zeroValueBefore!34 () V!24101)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun +!1760 (ListLongMap!8311 tuple2!9474) ListLongMap!8311)

(assert (=> b!815665 (= lt!365226 (+!1760 (getCurrentListMap!2361 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9475 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!815666 () Bool)

(assert (=> b!815666 (= e!452390 (not e!452392))))

(declare-fun res!557064 () Bool)

(assert (=> b!815666 (=> res!557064 e!452392)))

(assert (=> b!815666 (= res!557064 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365230 () ListLongMap!8311)

(declare-fun lt!365228 () ListLongMap!8311)

(assert (=> b!815666 (= lt!365230 lt!365228)))

(declare-datatypes ((Unit!27798 0))(
  ( (Unit!27799) )
))
(declare-fun lt!365227 () Unit!27798)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!336 (array!44836 array!44838 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24101 V!24101 V!24101 V!24101 (_ BitVec 32) Int) Unit!27798)

(assert (=> b!815666 (= lt!365227 (lemmaNoChangeToArrayThenSameMapNoExtras!336 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2220 (array!44836 array!44838 (_ BitVec 32) (_ BitVec 32) V!24101 V!24101 (_ BitVec 32) Int) ListLongMap!8311)

(assert (=> b!815666 (= lt!365228 (getCurrentListMapNoExtraKeys!2220 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815666 (= lt!365230 (getCurrentListMapNoExtraKeys!2220 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815667 () Bool)

(declare-fun res!557061 () Bool)

(assert (=> b!815667 (=> (not res!557061) (not e!452390))))

(declare-datatypes ((List!15345 0))(
  ( (Nil!15342) (Cons!15341 (h!16470 (_ BitVec 64)) (t!21674 List!15345)) )
))
(declare-fun arrayNoDuplicates!0 (array!44836 (_ BitVec 32) List!15345) Bool)

(assert (=> b!815667 (= res!557061 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15342))))

(declare-fun b!815668 () Bool)

(declare-fun e!452389 () Bool)

(declare-fun e!452387 () Bool)

(declare-fun mapRes!23074 () Bool)

(assert (=> b!815668 (= e!452389 (and e!452387 mapRes!23074))))

(declare-fun condMapEmpty!23074 () Bool)

(declare-fun mapDefault!23074 () ValueCell!6747)

(assert (=> b!815668 (= condMapEmpty!23074 (= (arr!21473 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6747)) mapDefault!23074)))))

(declare-fun mapNonEmpty!23074 () Bool)

(declare-fun tp!44566 () Bool)

(declare-fun e!452391 () Bool)

(assert (=> mapNonEmpty!23074 (= mapRes!23074 (and tp!44566 e!452391))))

(declare-fun mapValue!23074 () ValueCell!6747)

(declare-fun mapRest!23074 () (Array (_ BitVec 32) ValueCell!6747))

(declare-fun mapKey!23074 () (_ BitVec 32))

(assert (=> mapNonEmpty!23074 (= (arr!21473 _values!788) (store mapRest!23074 mapKey!23074 mapValue!23074))))

(declare-fun res!557063 () Bool)

(assert (=> start!70246 (=> (not res!557063) (not e!452390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70246 (= res!557063 (validMask!0 mask!1312))))

(assert (=> start!70246 e!452390))

(declare-fun tp_is_empty!14325 () Bool)

(assert (=> start!70246 tp_is_empty!14325))

(declare-fun array_inv!17159 (array!44836) Bool)

(assert (=> start!70246 (array_inv!17159 _keys!976)))

(assert (=> start!70246 true))

(declare-fun array_inv!17160 (array!44838) Bool)

(assert (=> start!70246 (and (array_inv!17160 _values!788) e!452389)))

(assert (=> start!70246 tp!44565))

(declare-fun b!815669 () Bool)

(assert (=> b!815669 (= e!452387 tp_is_empty!14325)))

(declare-fun b!815670 () Bool)

(declare-fun res!557065 () Bool)

(assert (=> b!815670 (=> (not res!557065) (not e!452390))))

(assert (=> b!815670 (= res!557065 (and (= (size!21894 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21893 _keys!976) (size!21894 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23074 () Bool)

(assert (=> mapIsEmpty!23074 mapRes!23074))

(declare-fun b!815671 () Bool)

(assert (=> b!815671 (= e!452391 tp_is_empty!14325)))

(assert (= (and start!70246 res!557063) b!815670))

(assert (= (and b!815670 res!557065) b!815664))

(assert (= (and b!815664 res!557062) b!815667))

(assert (= (and b!815667 res!557061) b!815666))

(assert (= (and b!815666 (not res!557064)) b!815665))

(assert (= (and b!815668 condMapEmpty!23074) mapIsEmpty!23074))

(assert (= (and b!815668 (not condMapEmpty!23074)) mapNonEmpty!23074))

(get-info :version)

(assert (= (and mapNonEmpty!23074 ((_ is ValueCellFull!6747) mapValue!23074)) b!815671))

(assert (= (and b!815668 ((_ is ValueCellFull!6747) mapDefault!23074)) b!815669))

(assert (= start!70246 b!815668))

(declare-fun m!757403 () Bool)

(assert (=> b!815665 m!757403))

(declare-fun m!757405 () Bool)

(assert (=> b!815665 m!757405))

(assert (=> b!815665 m!757405))

(declare-fun m!757407 () Bool)

(assert (=> b!815665 m!757407))

(declare-fun m!757409 () Bool)

(assert (=> mapNonEmpty!23074 m!757409))

(declare-fun m!757411 () Bool)

(assert (=> b!815667 m!757411))

(declare-fun m!757413 () Bool)

(assert (=> b!815666 m!757413))

(declare-fun m!757415 () Bool)

(assert (=> b!815666 m!757415))

(declare-fun m!757417 () Bool)

(assert (=> b!815666 m!757417))

(declare-fun m!757419 () Bool)

(assert (=> start!70246 m!757419))

(declare-fun m!757421 () Bool)

(assert (=> start!70246 m!757421))

(declare-fun m!757423 () Bool)

(assert (=> start!70246 m!757423))

(declare-fun m!757425 () Bool)

(assert (=> b!815664 m!757425))

(check-sat (not b_next!12615) (not mapNonEmpty!23074) (not b!815665) (not b!815666) (not b!815667) b_and!21421 (not start!70246) (not b!815664) tp_is_empty!14325)
(check-sat b_and!21421 (not b_next!12615))
