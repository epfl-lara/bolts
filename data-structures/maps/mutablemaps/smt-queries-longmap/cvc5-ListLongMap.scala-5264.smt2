; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70742 () Bool)

(assert start!70742)

(declare-fun b_free!12991 () Bool)

(declare-fun b_next!12991 () Bool)

(assert (=> start!70742 (= b_free!12991 (not b_next!12991))))

(declare-fun tp!45715 () Bool)

(declare-fun b_and!21871 () Bool)

(assert (=> start!70742 (= tp!45715 b_and!21871)))

(declare-fun b!821250 () Bool)

(declare-fun res!560352 () Bool)

(declare-fun e!456443 () Bool)

(assert (=> b!821250 (=> (not res!560352) (not e!456443))))

(declare-datatypes ((array!45558 0))(
  ( (array!45559 (arr!21826 (Array (_ BitVec 32) (_ BitVec 64))) (size!22247 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45558)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45558 (_ BitVec 32)) Bool)

(assert (=> b!821250 (= res!560352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23659 () Bool)

(declare-fun mapRes!23659 () Bool)

(assert (=> mapIsEmpty!23659 mapRes!23659))

(declare-fun b!821251 () Bool)

(declare-fun e!456448 () Bool)

(assert (=> b!821251 (= e!456443 (not e!456448))))

(declare-fun res!560351 () Bool)

(assert (=> b!821251 (=> res!560351 e!456448)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!821251 (= res!560351 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24603 0))(
  ( (V!24604 (val!7398 Int)) )
))
(declare-datatypes ((tuple2!9752 0))(
  ( (tuple2!9753 (_1!4886 (_ BitVec 64)) (_2!4886 V!24603)) )
))
(declare-datatypes ((List!15612 0))(
  ( (Nil!15609) (Cons!15608 (h!16737 tuple2!9752) (t!21955 List!15612)) )
))
(declare-datatypes ((ListLongMap!8589 0))(
  ( (ListLongMap!8590 (toList!4310 List!15612)) )
))
(declare-fun lt!369153 () ListLongMap!8589)

(declare-fun lt!369152 () ListLongMap!8589)

(assert (=> b!821251 (= lt!369153 lt!369152)))

(declare-fun zeroValueBefore!34 () V!24603)

(declare-fun zeroValueAfter!34 () V!24603)

(declare-fun minValue!754 () V!24603)

(declare-datatypes ((ValueCell!6935 0))(
  ( (ValueCellFull!6935 (v!9825 V!24603)) (EmptyCell!6935) )
))
(declare-datatypes ((array!45560 0))(
  ( (array!45561 (arr!21827 (Array (_ BitVec 32) ValueCell!6935)) (size!22248 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45560)

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28069 0))(
  ( (Unit!28070) )
))
(declare-fun lt!369151 () Unit!28069)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!458 (array!45558 array!45560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24603 V!24603 V!24603 V!24603 (_ BitVec 32) Int) Unit!28069)

(assert (=> b!821251 (= lt!369151 (lemmaNoChangeToArrayThenSameMapNoExtras!458 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2342 (array!45558 array!45560 (_ BitVec 32) (_ BitVec 32) V!24603 V!24603 (_ BitVec 32) Int) ListLongMap!8589)

(assert (=> b!821251 (= lt!369152 (getCurrentListMapNoExtraKeys!2342 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821251 (= lt!369153 (getCurrentListMapNoExtraKeys!2342 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!560350 () Bool)

(assert (=> start!70742 (=> (not res!560350) (not e!456443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70742 (= res!560350 (validMask!0 mask!1312))))

(assert (=> start!70742 e!456443))

(declare-fun tp_is_empty!14701 () Bool)

(assert (=> start!70742 tp_is_empty!14701))

(declare-fun array_inv!17409 (array!45558) Bool)

(assert (=> start!70742 (array_inv!17409 _keys!976)))

(assert (=> start!70742 true))

(declare-fun e!456444 () Bool)

(declare-fun array_inv!17410 (array!45560) Bool)

(assert (=> start!70742 (and (array_inv!17410 _values!788) e!456444)))

(assert (=> start!70742 tp!45715))

(declare-fun b!821252 () Bool)

(assert (=> b!821252 (= e!456448 true)))

(declare-fun lt!369154 () ListLongMap!8589)

(declare-fun getCurrentListMap!2445 (array!45558 array!45560 (_ BitVec 32) (_ BitVec 32) V!24603 V!24603 (_ BitVec 32) Int) ListLongMap!8589)

(assert (=> b!821252 (= lt!369154 (getCurrentListMap!2445 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821253 () Bool)

(declare-fun e!456445 () Bool)

(assert (=> b!821253 (= e!456445 tp_is_empty!14701)))

(declare-fun b!821254 () Bool)

(declare-fun e!456446 () Bool)

(assert (=> b!821254 (= e!456446 tp_is_empty!14701)))

(declare-fun mapNonEmpty!23659 () Bool)

(declare-fun tp!45714 () Bool)

(assert (=> mapNonEmpty!23659 (= mapRes!23659 (and tp!45714 e!456445))))

(declare-fun mapKey!23659 () (_ BitVec 32))

(declare-fun mapRest!23659 () (Array (_ BitVec 32) ValueCell!6935))

(declare-fun mapValue!23659 () ValueCell!6935)

(assert (=> mapNonEmpty!23659 (= (arr!21827 _values!788) (store mapRest!23659 mapKey!23659 mapValue!23659))))

(declare-fun b!821255 () Bool)

(declare-fun res!560349 () Bool)

(assert (=> b!821255 (=> (not res!560349) (not e!456443))))

(assert (=> b!821255 (= res!560349 (and (= (size!22248 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22247 _keys!976) (size!22248 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821256 () Bool)

(declare-fun res!560353 () Bool)

(assert (=> b!821256 (=> (not res!560353) (not e!456443))))

(declare-datatypes ((List!15613 0))(
  ( (Nil!15610) (Cons!15609 (h!16738 (_ BitVec 64)) (t!21956 List!15613)) )
))
(declare-fun arrayNoDuplicates!0 (array!45558 (_ BitVec 32) List!15613) Bool)

(assert (=> b!821256 (= res!560353 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15610))))

(declare-fun b!821257 () Bool)

(assert (=> b!821257 (= e!456444 (and e!456446 mapRes!23659))))

(declare-fun condMapEmpty!23659 () Bool)

(declare-fun mapDefault!23659 () ValueCell!6935)

