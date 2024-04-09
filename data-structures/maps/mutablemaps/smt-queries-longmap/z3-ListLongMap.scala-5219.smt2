; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70390 () Bool)

(assert start!70390)

(declare-fun b_free!12723 () Bool)

(declare-fun b_next!12723 () Bool)

(assert (=> start!70390 (= b_free!12723 (not b_next!12723))))

(declare-fun tp!44895 () Bool)

(declare-fun b_and!21553 () Bool)

(assert (=> start!70390 (= tp!44895 b_and!21553)))

(declare-fun mapIsEmpty!23242 () Bool)

(declare-fun mapRes!23242 () Bool)

(assert (=> mapIsEmpty!23242 mapRes!23242))

(declare-fun b!817288 () Bool)

(declare-fun e!453539 () Bool)

(declare-fun e!453541 () Bool)

(assert (=> b!817288 (= e!453539 (and e!453541 mapRes!23242))))

(declare-fun condMapEmpty!23242 () Bool)

(declare-datatypes ((V!24245 0))(
  ( (V!24246 (val!7264 Int)) )
))
(declare-datatypes ((ValueCell!6801 0))(
  ( (ValueCellFull!6801 (v!9689 V!24245)) (EmptyCell!6801) )
))
(declare-datatypes ((array!45040 0))(
  ( (array!45041 (arr!21572 (Array (_ BitVec 32) ValueCell!6801)) (size!21993 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45040)

(declare-fun mapDefault!23242 () ValueCell!6801)

(assert (=> b!817288 (= condMapEmpty!23242 (= (arr!21572 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6801)) mapDefault!23242)))))

(declare-fun b!817289 () Bool)

(declare-fun res!557997 () Bool)

(declare-fun e!453540 () Bool)

(assert (=> b!817289 (=> (not res!557997) (not e!453540))))

(declare-datatypes ((array!45042 0))(
  ( (array!45043 (arr!21573 (Array (_ BitVec 32) (_ BitVec 64))) (size!21994 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45042)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45042 (_ BitVec 32)) Bool)

(assert (=> b!817289 (= res!557997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817290 () Bool)

(assert (=> b!817290 (= e!453540 (not true))))

(declare-datatypes ((tuple2!9552 0))(
  ( (tuple2!9553 (_1!4786 (_ BitVec 64)) (_2!4786 V!24245)) )
))
(declare-datatypes ((List!15420 0))(
  ( (Nil!15417) (Cons!15416 (h!16545 tuple2!9552) (t!21753 List!15420)) )
))
(declare-datatypes ((ListLongMap!8389 0))(
  ( (ListLongMap!8390 (toList!4210 List!15420)) )
))
(declare-fun lt!366198 () ListLongMap!8389)

(declare-fun lt!366200 () ListLongMap!8389)

(assert (=> b!817290 (= lt!366198 lt!366200)))

(declare-fun zeroValueBefore!34 () V!24245)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24245)

(declare-fun minValue!754 () V!24245)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27874 0))(
  ( (Unit!27875) )
))
(declare-fun lt!366199 () Unit!27874)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!372 (array!45042 array!45040 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24245 V!24245 V!24245 V!24245 (_ BitVec 32) Int) Unit!27874)

(assert (=> b!817290 (= lt!366199 (lemmaNoChangeToArrayThenSameMapNoExtras!372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2256 (array!45042 array!45040 (_ BitVec 32) (_ BitVec 32) V!24245 V!24245 (_ BitVec 32) Int) ListLongMap!8389)

(assert (=> b!817290 (= lt!366200 (getCurrentListMapNoExtraKeys!2256 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817290 (= lt!366198 (getCurrentListMapNoExtraKeys!2256 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817291 () Bool)

(declare-fun e!453538 () Bool)

(declare-fun tp_is_empty!14433 () Bool)

(assert (=> b!817291 (= e!453538 tp_is_empty!14433)))

(declare-fun b!817292 () Bool)

(declare-fun res!557996 () Bool)

(assert (=> b!817292 (=> (not res!557996) (not e!453540))))

(assert (=> b!817292 (= res!557996 (and (= (size!21993 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21994 _keys!976) (size!21993 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817293 () Bool)

(declare-fun res!557995 () Bool)

(assert (=> b!817293 (=> (not res!557995) (not e!453540))))

(declare-datatypes ((List!15421 0))(
  ( (Nil!15418) (Cons!15417 (h!16546 (_ BitVec 64)) (t!21754 List!15421)) )
))
(declare-fun arrayNoDuplicates!0 (array!45042 (_ BitVec 32) List!15421) Bool)

(assert (=> b!817293 (= res!557995 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15418))))

(declare-fun mapNonEmpty!23242 () Bool)

(declare-fun tp!44896 () Bool)

(assert (=> mapNonEmpty!23242 (= mapRes!23242 (and tp!44896 e!453538))))

(declare-fun mapKey!23242 () (_ BitVec 32))

(declare-fun mapRest!23242 () (Array (_ BitVec 32) ValueCell!6801))

(declare-fun mapValue!23242 () ValueCell!6801)

(assert (=> mapNonEmpty!23242 (= (arr!21572 _values!788) (store mapRest!23242 mapKey!23242 mapValue!23242))))

(declare-fun b!817287 () Bool)

(assert (=> b!817287 (= e!453541 tp_is_empty!14433)))

(declare-fun res!557994 () Bool)

(assert (=> start!70390 (=> (not res!557994) (not e!453540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70390 (= res!557994 (validMask!0 mask!1312))))

(assert (=> start!70390 e!453540))

(assert (=> start!70390 tp_is_empty!14433))

(declare-fun array_inv!17231 (array!45042) Bool)

(assert (=> start!70390 (array_inv!17231 _keys!976)))

(assert (=> start!70390 true))

(declare-fun array_inv!17232 (array!45040) Bool)

(assert (=> start!70390 (and (array_inv!17232 _values!788) e!453539)))

(assert (=> start!70390 tp!44895))

(assert (= (and start!70390 res!557994) b!817292))

(assert (= (and b!817292 res!557996) b!817289))

(assert (= (and b!817289 res!557997) b!817293))

(assert (= (and b!817293 res!557995) b!817290))

(assert (= (and b!817288 condMapEmpty!23242) mapIsEmpty!23242))

(assert (= (and b!817288 (not condMapEmpty!23242)) mapNonEmpty!23242))

(get-info :version)

(assert (= (and mapNonEmpty!23242 ((_ is ValueCellFull!6801) mapValue!23242)) b!817291))

(assert (= (and b!817288 ((_ is ValueCellFull!6801) mapDefault!23242)) b!817287))

(assert (= start!70390 b!817288))

(declare-fun m!758961 () Bool)

(assert (=> start!70390 m!758961))

(declare-fun m!758963 () Bool)

(assert (=> start!70390 m!758963))

(declare-fun m!758965 () Bool)

(assert (=> start!70390 m!758965))

(declare-fun m!758967 () Bool)

(assert (=> mapNonEmpty!23242 m!758967))

(declare-fun m!758969 () Bool)

(assert (=> b!817290 m!758969))

(declare-fun m!758971 () Bool)

(assert (=> b!817290 m!758971))

(declare-fun m!758973 () Bool)

(assert (=> b!817290 m!758973))

(declare-fun m!758975 () Bool)

(assert (=> b!817289 m!758975))

(declare-fun m!758977 () Bool)

(assert (=> b!817293 m!758977))

(check-sat tp_is_empty!14433 (not b_next!12723) (not b!817289) (not start!70390) (not b!817293) b_and!21553 (not b!817290) (not mapNonEmpty!23242))
(check-sat b_and!21553 (not b_next!12723))
