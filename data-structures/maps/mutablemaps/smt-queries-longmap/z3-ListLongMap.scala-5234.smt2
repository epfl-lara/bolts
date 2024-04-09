; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70510 () Bool)

(assert start!70510)

(declare-fun b_free!12813 () Bool)

(declare-fun b_next!12813 () Bool)

(assert (=> start!70510 (= b_free!12813 (not b_next!12813))))

(declare-fun tp!45171 () Bool)

(declare-fun b_and!21661 () Bool)

(assert (=> start!70510 (= tp!45171 b_and!21661)))

(declare-fun b!818574 () Bool)

(declare-fun e!454471 () Bool)

(declare-fun e!454477 () Bool)

(assert (=> b!818574 (= e!454471 (not e!454477))))

(declare-fun res!558736 () Bool)

(assert (=> b!818574 (=> res!558736 e!454477)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818574 (= res!558736 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24365 0))(
  ( (V!24366 (val!7309 Int)) )
))
(declare-datatypes ((tuple2!9620 0))(
  ( (tuple2!9621 (_1!4820 (_ BitVec 64)) (_2!4820 V!24365)) )
))
(declare-datatypes ((List!15484 0))(
  ( (Nil!15481) (Cons!15480 (h!16609 tuple2!9620) (t!21821 List!15484)) )
))
(declare-datatypes ((ListLongMap!8457 0))(
  ( (ListLongMap!8458 (toList!4244 List!15484)) )
))
(declare-fun lt!366931 () ListLongMap!8457)

(declare-fun lt!366935 () ListLongMap!8457)

(assert (=> b!818574 (= lt!366931 lt!366935)))

(declare-fun zeroValueBefore!34 () V!24365)

(declare-datatypes ((array!45218 0))(
  ( (array!45219 (arr!21659 (Array (_ BitVec 32) (_ BitVec 64))) (size!22080 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45218)

(declare-fun zeroValueAfter!34 () V!24365)

(declare-fun minValue!754 () V!24365)

(declare-datatypes ((ValueCell!6846 0))(
  ( (ValueCellFull!6846 (v!9734 V!24365)) (EmptyCell!6846) )
))
(declare-datatypes ((array!45220 0))(
  ( (array!45221 (arr!21660 (Array (_ BitVec 32) ValueCell!6846)) (size!22081 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45220)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27937 0))(
  ( (Unit!27938) )
))
(declare-fun lt!366928 () Unit!27937)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!403 (array!45218 array!45220 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24365 V!24365 V!24365 V!24365 (_ BitVec 32) Int) Unit!27937)

(assert (=> b!818574 (= lt!366928 (lemmaNoChangeToArrayThenSameMapNoExtras!403 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2287 (array!45218 array!45220 (_ BitVec 32) (_ BitVec 32) V!24365 V!24365 (_ BitVec 32) Int) ListLongMap!8457)

(assert (=> b!818574 (= lt!366935 (getCurrentListMapNoExtraKeys!2287 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818574 (= lt!366931 (getCurrentListMapNoExtraKeys!2287 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818575 () Bool)

(declare-fun e!454474 () Bool)

(declare-fun e!454472 () Bool)

(declare-fun mapRes!23383 () Bool)

(assert (=> b!818575 (= e!454474 (and e!454472 mapRes!23383))))

(declare-fun condMapEmpty!23383 () Bool)

(declare-fun mapDefault!23383 () ValueCell!6846)

(assert (=> b!818575 (= condMapEmpty!23383 (= (arr!21660 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6846)) mapDefault!23383)))))

(declare-fun b!818576 () Bool)

(declare-fun e!454476 () Bool)

(declare-fun tp_is_empty!14523 () Bool)

(assert (=> b!818576 (= e!454476 tp_is_empty!14523)))

(declare-fun b!818577 () Bool)

(assert (=> b!818577 (= e!454477 true)))

(declare-fun lt!366936 () tuple2!9620)

(declare-fun lt!366929 () ListLongMap!8457)

(declare-fun lt!366934 () tuple2!9620)

(declare-fun +!1789 (ListLongMap!8457 tuple2!9620) ListLongMap!8457)

(assert (=> b!818577 (= lt!366929 (+!1789 (+!1789 lt!366935 lt!366936) lt!366934))))

(declare-fun lt!366930 () ListLongMap!8457)

(assert (=> b!818577 (= (+!1789 lt!366931 lt!366934) (+!1789 lt!366930 lt!366934))))

(declare-fun lt!366932 () Unit!27937)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!168 (ListLongMap!8457 (_ BitVec 64) V!24365 V!24365) Unit!27937)

(assert (=> b!818577 (= lt!366932 (addSameAsAddTwiceSameKeyDiffValues!168 lt!366931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818577 (= lt!366934 (tuple2!9621 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!454475 () Bool)

(assert (=> b!818577 e!454475))

(declare-fun res!558732 () Bool)

(assert (=> b!818577 (=> (not res!558732) (not e!454475))))

(declare-fun lt!366937 () ListLongMap!8457)

(assert (=> b!818577 (= res!558732 (= lt!366937 lt!366930))))

(assert (=> b!818577 (= lt!366930 (+!1789 lt!366931 lt!366936))))

(assert (=> b!818577 (= lt!366936 (tuple2!9621 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!366933 () ListLongMap!8457)

(declare-fun getCurrentListMap!2403 (array!45218 array!45220 (_ BitVec 32) (_ BitVec 32) V!24365 V!24365 (_ BitVec 32) Int) ListLongMap!8457)

(assert (=> b!818577 (= lt!366933 (getCurrentListMap!2403 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818577 (= lt!366937 (getCurrentListMap!2403 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818578 () Bool)

(assert (=> b!818578 (= e!454475 (= lt!366933 (+!1789 lt!366935 (tuple2!9621 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun res!558737 () Bool)

(assert (=> start!70510 (=> (not res!558737) (not e!454471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70510 (= res!558737 (validMask!0 mask!1312))))

(assert (=> start!70510 e!454471))

(assert (=> start!70510 tp_is_empty!14523))

(declare-fun array_inv!17287 (array!45218) Bool)

(assert (=> start!70510 (array_inv!17287 _keys!976)))

(assert (=> start!70510 true))

(declare-fun array_inv!17288 (array!45220) Bool)

(assert (=> start!70510 (and (array_inv!17288 _values!788) e!454474)))

(assert (=> start!70510 tp!45171))

(declare-fun b!818579 () Bool)

(assert (=> b!818579 (= e!454472 tp_is_empty!14523)))

(declare-fun mapIsEmpty!23383 () Bool)

(assert (=> mapIsEmpty!23383 mapRes!23383))

(declare-fun b!818580 () Bool)

(declare-fun res!558734 () Bool)

(assert (=> b!818580 (=> (not res!558734) (not e!454471))))

(declare-datatypes ((List!15485 0))(
  ( (Nil!15482) (Cons!15481 (h!16610 (_ BitVec 64)) (t!21822 List!15485)) )
))
(declare-fun arrayNoDuplicates!0 (array!45218 (_ BitVec 32) List!15485) Bool)

(assert (=> b!818580 (= res!558734 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15482))))

(declare-fun b!818581 () Bool)

(declare-fun res!558735 () Bool)

(assert (=> b!818581 (=> (not res!558735) (not e!454471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45218 (_ BitVec 32)) Bool)

(assert (=> b!818581 (= res!558735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23383 () Bool)

(declare-fun tp!45172 () Bool)

(assert (=> mapNonEmpty!23383 (= mapRes!23383 (and tp!45172 e!454476))))

(declare-fun mapValue!23383 () ValueCell!6846)

(declare-fun mapKey!23383 () (_ BitVec 32))

(declare-fun mapRest!23383 () (Array (_ BitVec 32) ValueCell!6846))

(assert (=> mapNonEmpty!23383 (= (arr!21660 _values!788) (store mapRest!23383 mapKey!23383 mapValue!23383))))

(declare-fun b!818582 () Bool)

(declare-fun res!558733 () Bool)

(assert (=> b!818582 (=> (not res!558733) (not e!454471))))

(assert (=> b!818582 (= res!558733 (and (= (size!22081 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22080 _keys!976) (size!22081 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!70510 res!558737) b!818582))

(assert (= (and b!818582 res!558733) b!818581))

(assert (= (and b!818581 res!558735) b!818580))

(assert (= (and b!818580 res!558734) b!818574))

(assert (= (and b!818574 (not res!558736)) b!818577))

(assert (= (and b!818577 res!558732) b!818578))

(assert (= (and b!818575 condMapEmpty!23383) mapIsEmpty!23383))

(assert (= (and b!818575 (not condMapEmpty!23383)) mapNonEmpty!23383))

(get-info :version)

(assert (= (and mapNonEmpty!23383 ((_ is ValueCellFull!6846) mapValue!23383)) b!818576))

(assert (= (and b!818575 ((_ is ValueCellFull!6846) mapDefault!23383)) b!818579))

(assert (= start!70510 b!818575))

(declare-fun m!760075 () Bool)

(assert (=> start!70510 m!760075))

(declare-fun m!760077 () Bool)

(assert (=> start!70510 m!760077))

(declare-fun m!760079 () Bool)

(assert (=> start!70510 m!760079))

(declare-fun m!760081 () Bool)

(assert (=> mapNonEmpty!23383 m!760081))

(declare-fun m!760083 () Bool)

(assert (=> b!818581 m!760083))

(declare-fun m!760085 () Bool)

(assert (=> b!818574 m!760085))

(declare-fun m!760087 () Bool)

(assert (=> b!818574 m!760087))

(declare-fun m!760089 () Bool)

(assert (=> b!818574 m!760089))

(declare-fun m!760091 () Bool)

(assert (=> b!818577 m!760091))

(declare-fun m!760093 () Bool)

(assert (=> b!818577 m!760093))

(declare-fun m!760095 () Bool)

(assert (=> b!818577 m!760095))

(declare-fun m!760097 () Bool)

(assert (=> b!818577 m!760097))

(declare-fun m!760099 () Bool)

(assert (=> b!818577 m!760099))

(assert (=> b!818577 m!760099))

(declare-fun m!760101 () Bool)

(assert (=> b!818577 m!760101))

(declare-fun m!760103 () Bool)

(assert (=> b!818577 m!760103))

(declare-fun m!760105 () Bool)

(assert (=> b!818577 m!760105))

(declare-fun m!760107 () Bool)

(assert (=> b!818580 m!760107))

(declare-fun m!760109 () Bool)

(assert (=> b!818578 m!760109))

(check-sat tp_is_empty!14523 (not mapNonEmpty!23383) (not b_next!12813) b_and!21661 (not b!818578) (not b!818574) (not b!818580) (not start!70510) (not b!818581) (not b!818577))
(check-sat b_and!21661 (not b_next!12813))
