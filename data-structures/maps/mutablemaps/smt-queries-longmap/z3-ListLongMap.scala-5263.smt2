; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70738 () Bool)

(assert start!70738)

(declare-fun b_free!12987 () Bool)

(declare-fun b_next!12987 () Bool)

(assert (=> start!70738 (= b_free!12987 (not b_next!12987))))

(declare-fun tp!45702 () Bool)

(declare-fun b_and!21867 () Bool)

(assert (=> start!70738 (= tp!45702 b_and!21867)))

(declare-fun b!821202 () Bool)

(declare-fun e!456407 () Bool)

(declare-fun e!456409 () Bool)

(assert (=> b!821202 (= e!456407 (not e!456409))))

(declare-fun res!560321 () Bool)

(assert (=> b!821202 (=> res!560321 e!456409)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!821202 (= res!560321 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24597 0))(
  ( (V!24598 (val!7396 Int)) )
))
(declare-datatypes ((tuple2!9750 0))(
  ( (tuple2!9751 (_1!4885 (_ BitVec 64)) (_2!4885 V!24597)) )
))
(declare-datatypes ((List!15610 0))(
  ( (Nil!15607) (Cons!15606 (h!16735 tuple2!9750) (t!21953 List!15610)) )
))
(declare-datatypes ((ListLongMap!8587 0))(
  ( (ListLongMap!8588 (toList!4309 List!15610)) )
))
(declare-fun lt!369127 () ListLongMap!8587)

(declare-fun lt!369129 () ListLongMap!8587)

(assert (=> b!821202 (= lt!369127 lt!369129)))

(declare-fun zeroValueBefore!34 () V!24597)

(declare-datatypes ((array!45552 0))(
  ( (array!45553 (arr!21823 (Array (_ BitVec 32) (_ BitVec 64))) (size!22244 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45552)

(declare-fun zeroValueAfter!34 () V!24597)

(declare-fun minValue!754 () V!24597)

(declare-datatypes ((ValueCell!6933 0))(
  ( (ValueCellFull!6933 (v!9823 V!24597)) (EmptyCell!6933) )
))
(declare-datatypes ((array!45554 0))(
  ( (array!45555 (arr!21824 (Array (_ BitVec 32) ValueCell!6933)) (size!22245 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45554)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28067 0))(
  ( (Unit!28068) )
))
(declare-fun lt!369130 () Unit!28067)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!457 (array!45552 array!45554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24597 V!24597 V!24597 V!24597 (_ BitVec 32) Int) Unit!28067)

(assert (=> b!821202 (= lt!369130 (lemmaNoChangeToArrayThenSameMapNoExtras!457 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2341 (array!45552 array!45554 (_ BitVec 32) (_ BitVec 32) V!24597 V!24597 (_ BitVec 32) Int) ListLongMap!8587)

(assert (=> b!821202 (= lt!369129 (getCurrentListMapNoExtraKeys!2341 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821202 (= lt!369127 (getCurrentListMapNoExtraKeys!2341 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23653 () Bool)

(declare-fun mapRes!23653 () Bool)

(declare-fun tp!45703 () Bool)

(declare-fun e!456408 () Bool)

(assert (=> mapNonEmpty!23653 (= mapRes!23653 (and tp!45703 e!456408))))

(declare-fun mapRest!23653 () (Array (_ BitVec 32) ValueCell!6933))

(declare-fun mapValue!23653 () ValueCell!6933)

(declare-fun mapKey!23653 () (_ BitVec 32))

(assert (=> mapNonEmpty!23653 (= (arr!21824 _values!788) (store mapRest!23653 mapKey!23653 mapValue!23653))))

(declare-fun b!821203 () Bool)

(declare-fun e!456410 () Bool)

(declare-fun e!456412 () Bool)

(assert (=> b!821203 (= e!456410 (and e!456412 mapRes!23653))))

(declare-fun condMapEmpty!23653 () Bool)

(declare-fun mapDefault!23653 () ValueCell!6933)

(assert (=> b!821203 (= condMapEmpty!23653 (= (arr!21824 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6933)) mapDefault!23653)))))

(declare-fun b!821205 () Bool)

(declare-fun res!560319 () Bool)

(assert (=> b!821205 (=> (not res!560319) (not e!456407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45552 (_ BitVec 32)) Bool)

(assert (=> b!821205 (= res!560319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821206 () Bool)

(declare-fun res!560320 () Bool)

(assert (=> b!821206 (=> (not res!560320) (not e!456407))))

(assert (=> b!821206 (= res!560320 (and (= (size!22245 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22244 _keys!976) (size!22245 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821207 () Bool)

(declare-fun tp_is_empty!14697 () Bool)

(assert (=> b!821207 (= e!456408 tp_is_empty!14697)))

(declare-fun b!821208 () Bool)

(assert (=> b!821208 (= e!456409 true)))

(declare-fun lt!369128 () ListLongMap!8587)

(declare-fun getCurrentListMap!2444 (array!45552 array!45554 (_ BitVec 32) (_ BitVec 32) V!24597 V!24597 (_ BitVec 32) Int) ListLongMap!8587)

(assert (=> b!821208 (= lt!369128 (getCurrentListMap!2444 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821209 () Bool)

(assert (=> b!821209 (= e!456412 tp_is_empty!14697)))

(declare-fun mapIsEmpty!23653 () Bool)

(assert (=> mapIsEmpty!23653 mapRes!23653))

(declare-fun res!560323 () Bool)

(assert (=> start!70738 (=> (not res!560323) (not e!456407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70738 (= res!560323 (validMask!0 mask!1312))))

(assert (=> start!70738 e!456407))

(assert (=> start!70738 tp_is_empty!14697))

(declare-fun array_inv!17407 (array!45552) Bool)

(assert (=> start!70738 (array_inv!17407 _keys!976)))

(assert (=> start!70738 true))

(declare-fun array_inv!17408 (array!45554) Bool)

(assert (=> start!70738 (and (array_inv!17408 _values!788) e!456410)))

(assert (=> start!70738 tp!45702))

(declare-fun b!821204 () Bool)

(declare-fun res!560322 () Bool)

(assert (=> b!821204 (=> (not res!560322) (not e!456407))))

(declare-datatypes ((List!15611 0))(
  ( (Nil!15608) (Cons!15607 (h!16736 (_ BitVec 64)) (t!21954 List!15611)) )
))
(declare-fun arrayNoDuplicates!0 (array!45552 (_ BitVec 32) List!15611) Bool)

(assert (=> b!821204 (= res!560322 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15608))))

(assert (= (and start!70738 res!560323) b!821206))

(assert (= (and b!821206 res!560320) b!821205))

(assert (= (and b!821205 res!560319) b!821204))

(assert (= (and b!821204 res!560322) b!821202))

(assert (= (and b!821202 (not res!560321)) b!821208))

(assert (= (and b!821203 condMapEmpty!23653) mapIsEmpty!23653))

(assert (= (and b!821203 (not condMapEmpty!23653)) mapNonEmpty!23653))

(get-info :version)

(assert (= (and mapNonEmpty!23653 ((_ is ValueCellFull!6933) mapValue!23653)) b!821207))

(assert (= (and b!821203 ((_ is ValueCellFull!6933) mapDefault!23653)) b!821209))

(assert (= start!70738 b!821203))

(declare-fun m!763103 () Bool)

(assert (=> start!70738 m!763103))

(declare-fun m!763105 () Bool)

(assert (=> start!70738 m!763105))

(declare-fun m!763107 () Bool)

(assert (=> start!70738 m!763107))

(declare-fun m!763109 () Bool)

(assert (=> b!821208 m!763109))

(declare-fun m!763111 () Bool)

(assert (=> mapNonEmpty!23653 m!763111))

(declare-fun m!763113 () Bool)

(assert (=> b!821205 m!763113))

(declare-fun m!763115 () Bool)

(assert (=> b!821202 m!763115))

(declare-fun m!763117 () Bool)

(assert (=> b!821202 m!763117))

(declare-fun m!763119 () Bool)

(assert (=> b!821202 m!763119))

(declare-fun m!763121 () Bool)

(assert (=> b!821204 m!763121))

(check-sat (not b_next!12987) (not b!821205) b_and!21867 (not start!70738) (not b!821208) tp_is_empty!14697 (not mapNonEmpty!23653) (not b!821204) (not b!821202))
(check-sat b_and!21867 (not b_next!12987))
