; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70752 () Bool)

(assert start!70752)

(declare-fun b_free!13001 () Bool)

(declare-fun b_next!13001 () Bool)

(assert (=> start!70752 (= b_free!13001 (not b_next!13001))))

(declare-fun tp!45744 () Bool)

(declare-fun b_and!21881 () Bool)

(assert (=> start!70752 (= tp!45744 b_and!21881)))

(declare-fun mapNonEmpty!23674 () Bool)

(declare-fun mapRes!23674 () Bool)

(declare-fun tp!45745 () Bool)

(declare-fun e!456534 () Bool)

(assert (=> mapNonEmpty!23674 (= mapRes!23674 (and tp!45745 e!456534))))

(declare-datatypes ((V!24615 0))(
  ( (V!24616 (val!7403 Int)) )
))
(declare-datatypes ((ValueCell!6940 0))(
  ( (ValueCellFull!6940 (v!9830 V!24615)) (EmptyCell!6940) )
))
(declare-datatypes ((array!45578 0))(
  ( (array!45579 (arr!21836 (Array (_ BitVec 32) ValueCell!6940)) (size!22257 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45578)

(declare-fun mapValue!23674 () ValueCell!6940)

(declare-fun mapKey!23674 () (_ BitVec 32))

(declare-fun mapRest!23674 () (Array (_ BitVec 32) ValueCell!6940))

(assert (=> mapNonEmpty!23674 (= (arr!21836 _values!788) (store mapRest!23674 mapKey!23674 mapValue!23674))))

(declare-fun b!821370 () Bool)

(declare-fun e!456536 () Bool)

(assert (=> b!821370 (= e!456536 true)))

(declare-fun zeroValueBefore!34 () V!24615)

(declare-datatypes ((array!45580 0))(
  ( (array!45581 (arr!21837 (Array (_ BitVec 32) (_ BitVec 64))) (size!22258 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45580)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((tuple2!9762 0))(
  ( (tuple2!9763 (_1!4891 (_ BitVec 64)) (_2!4891 V!24615)) )
))
(declare-datatypes ((List!15622 0))(
  ( (Nil!15619) (Cons!15618 (h!16747 tuple2!9762) (t!21965 List!15622)) )
))
(declare-datatypes ((ListLongMap!8599 0))(
  ( (ListLongMap!8600 (toList!4315 List!15622)) )
))
(declare-fun lt!369214 () ListLongMap!8599)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!24615)

(declare-fun getCurrentListMap!2450 (array!45580 array!45578 (_ BitVec 32) (_ BitVec 32) V!24615 V!24615 (_ BitVec 32) Int) ListLongMap!8599)

(assert (=> b!821370 (= lt!369214 (getCurrentListMap!2450 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!560426 () Bool)

(declare-fun e!456533 () Bool)

(assert (=> start!70752 (=> (not res!560426) (not e!456533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70752 (= res!560426 (validMask!0 mask!1312))))

(assert (=> start!70752 e!456533))

(declare-fun tp_is_empty!14711 () Bool)

(assert (=> start!70752 tp_is_empty!14711))

(declare-fun array_inv!17417 (array!45580) Bool)

(assert (=> start!70752 (array_inv!17417 _keys!976)))

(assert (=> start!70752 true))

(declare-fun e!456535 () Bool)

(declare-fun array_inv!17418 (array!45578) Bool)

(assert (=> start!70752 (and (array_inv!17418 _values!788) e!456535)))

(assert (=> start!70752 tp!45744))

(declare-fun b!821371 () Bool)

(declare-fun res!560427 () Bool)

(assert (=> b!821371 (=> (not res!560427) (not e!456533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45580 (_ BitVec 32)) Bool)

(assert (=> b!821371 (= res!560427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821372 () Bool)

(assert (=> b!821372 (= e!456533 (not e!456536))))

(declare-fun res!560425 () Bool)

(assert (=> b!821372 (=> res!560425 e!456536)))

(assert (=> b!821372 (= res!560425 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369213 () ListLongMap!8599)

(declare-fun lt!369211 () ListLongMap!8599)

(assert (=> b!821372 (= lt!369213 lt!369211)))

(declare-datatypes ((Unit!28077 0))(
  ( (Unit!28078) )
))
(declare-fun lt!369212 () Unit!28077)

(declare-fun zeroValueAfter!34 () V!24615)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!462 (array!45580 array!45578 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24615 V!24615 V!24615 V!24615 (_ BitVec 32) Int) Unit!28077)

(assert (=> b!821372 (= lt!369212 (lemmaNoChangeToArrayThenSameMapNoExtras!462 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2346 (array!45580 array!45578 (_ BitVec 32) (_ BitVec 32) V!24615 V!24615 (_ BitVec 32) Int) ListLongMap!8599)

(assert (=> b!821372 (= lt!369211 (getCurrentListMapNoExtraKeys!2346 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821372 (= lt!369213 (getCurrentListMapNoExtraKeys!2346 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821373 () Bool)

(assert (=> b!821373 (= e!456534 tp_is_empty!14711)))

(declare-fun b!821374 () Bool)

(declare-fun e!456537 () Bool)

(assert (=> b!821374 (= e!456537 tp_is_empty!14711)))

(declare-fun b!821375 () Bool)

(declare-fun res!560424 () Bool)

(assert (=> b!821375 (=> (not res!560424) (not e!456533))))

(assert (=> b!821375 (= res!560424 (and (= (size!22257 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22258 _keys!976) (size!22257 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821376 () Bool)

(declare-fun res!560428 () Bool)

(assert (=> b!821376 (=> (not res!560428) (not e!456533))))

(declare-datatypes ((List!15623 0))(
  ( (Nil!15620) (Cons!15619 (h!16748 (_ BitVec 64)) (t!21966 List!15623)) )
))
(declare-fun arrayNoDuplicates!0 (array!45580 (_ BitVec 32) List!15623) Bool)

(assert (=> b!821376 (= res!560428 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15620))))

(declare-fun b!821377 () Bool)

(assert (=> b!821377 (= e!456535 (and e!456537 mapRes!23674))))

(declare-fun condMapEmpty!23674 () Bool)

(declare-fun mapDefault!23674 () ValueCell!6940)

