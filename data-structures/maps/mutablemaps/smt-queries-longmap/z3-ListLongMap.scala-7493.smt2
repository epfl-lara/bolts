; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94968 () Bool)

(assert start!94968)

(declare-fun b_free!22137 () Bool)

(declare-fun b_next!22137 () Bool)

(assert (=> start!94968 (= b_free!22137 (not b_next!22137))))

(declare-fun tp!77877 () Bool)

(declare-fun b_and!35009 () Bool)

(assert (=> start!94968 (= tp!77877 b_and!35009)))

(declare-fun b!1073334 () Bool)

(declare-fun e!613236 () Bool)

(assert (=> b!1073334 (= e!613236 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39731 0))(
  ( (V!39732 (val!13024 Int)) )
))
(declare-datatypes ((ValueCell!12270 0))(
  ( (ValueCellFull!12270 (v!15643 V!39731)) (EmptyCell!12270) )
))
(declare-datatypes ((array!68820 0))(
  ( (array!68821 (arr!33100 (Array (_ BitVec 32) ValueCell!12270)) (size!33637 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68820)

(declare-fun minValue!907 () V!39731)

(declare-datatypes ((array!68822 0))(
  ( (array!68823 (arr!33101 (Array (_ BitVec 32) (_ BitVec 64))) (size!33638 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68822)

(declare-datatypes ((tuple2!16652 0))(
  ( (tuple2!16653 (_1!8336 (_ BitVec 64)) (_2!8336 V!39731)) )
))
(declare-datatypes ((List!23231 0))(
  ( (Nil!23228) (Cons!23227 (h!24436 tuple2!16652) (t!32575 List!23231)) )
))
(declare-datatypes ((ListLongMap!14633 0))(
  ( (ListLongMap!14634 (toList!7332 List!23231)) )
))
(declare-fun lt!476008 () ListLongMap!14633)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39731)

(declare-fun getCurrentListMapNoExtraKeys!3862 (array!68822 array!68820 (_ BitVec 32) (_ BitVec 32) V!39731 V!39731 (_ BitVec 32) Int) ListLongMap!14633)

(assert (=> b!1073334 (= lt!476008 (getCurrentListMapNoExtraKeys!3862 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39731)

(declare-fun lt!476009 () ListLongMap!14633)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073334 (= lt!476009 (getCurrentListMapNoExtraKeys!3862 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!715970 () Bool)

(assert (=> start!94968 (=> (not res!715970) (not e!613236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94968 (= res!715970 (validMask!0 mask!1515))))

(assert (=> start!94968 e!613236))

(assert (=> start!94968 true))

(declare-fun tp_is_empty!25947 () Bool)

(assert (=> start!94968 tp_is_empty!25947))

(declare-fun e!613234 () Bool)

(declare-fun array_inv!25440 (array!68820) Bool)

(assert (=> start!94968 (and (array_inv!25440 _values!955) e!613234)))

(assert (=> start!94968 tp!77877))

(declare-fun array_inv!25441 (array!68822) Bool)

(assert (=> start!94968 (array_inv!25441 _keys!1163)))

(declare-fun b!1073335 () Bool)

(declare-fun res!715969 () Bool)

(assert (=> b!1073335 (=> (not res!715969) (not e!613236))))

(assert (=> b!1073335 (= res!715969 (and (= (size!33637 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33638 _keys!1163) (size!33637 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40633 () Bool)

(declare-fun mapRes!40633 () Bool)

(assert (=> mapIsEmpty!40633 mapRes!40633))

(declare-fun b!1073336 () Bool)

(declare-fun e!613237 () Bool)

(assert (=> b!1073336 (= e!613237 tp_is_empty!25947)))

(declare-fun mapNonEmpty!40633 () Bool)

(declare-fun tp!77876 () Bool)

(assert (=> mapNonEmpty!40633 (= mapRes!40633 (and tp!77876 e!613237))))

(declare-fun mapKey!40633 () (_ BitVec 32))

(declare-fun mapRest!40633 () (Array (_ BitVec 32) ValueCell!12270))

(declare-fun mapValue!40633 () ValueCell!12270)

(assert (=> mapNonEmpty!40633 (= (arr!33100 _values!955) (store mapRest!40633 mapKey!40633 mapValue!40633))))

(declare-fun b!1073337 () Bool)

(declare-fun e!613233 () Bool)

(assert (=> b!1073337 (= e!613233 tp_is_empty!25947)))

(declare-fun b!1073338 () Bool)

(declare-fun res!715968 () Bool)

(assert (=> b!1073338 (=> (not res!715968) (not e!613236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68822 (_ BitVec 32)) Bool)

(assert (=> b!1073338 (= res!715968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073339 () Bool)

(declare-fun res!715971 () Bool)

(assert (=> b!1073339 (=> (not res!715971) (not e!613236))))

(declare-datatypes ((List!23232 0))(
  ( (Nil!23229) (Cons!23228 (h!24437 (_ BitVec 64)) (t!32576 List!23232)) )
))
(declare-fun arrayNoDuplicates!0 (array!68822 (_ BitVec 32) List!23232) Bool)

(assert (=> b!1073339 (= res!715971 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23229))))

(declare-fun b!1073340 () Bool)

(assert (=> b!1073340 (= e!613234 (and e!613233 mapRes!40633))))

(declare-fun condMapEmpty!40633 () Bool)

(declare-fun mapDefault!40633 () ValueCell!12270)

(assert (=> b!1073340 (= condMapEmpty!40633 (= (arr!33100 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12270)) mapDefault!40633)))))

(assert (= (and start!94968 res!715970) b!1073335))

(assert (= (and b!1073335 res!715969) b!1073338))

(assert (= (and b!1073338 res!715968) b!1073339))

(assert (= (and b!1073339 res!715971) b!1073334))

(assert (= (and b!1073340 condMapEmpty!40633) mapIsEmpty!40633))

(assert (= (and b!1073340 (not condMapEmpty!40633)) mapNonEmpty!40633))

(get-info :version)

(assert (= (and mapNonEmpty!40633 ((_ is ValueCellFull!12270) mapValue!40633)) b!1073336))

(assert (= (and b!1073340 ((_ is ValueCellFull!12270) mapDefault!40633)) b!1073337))

(assert (= start!94968 b!1073340))

(declare-fun m!992469 () Bool)

(assert (=> start!94968 m!992469))

(declare-fun m!992471 () Bool)

(assert (=> start!94968 m!992471))

(declare-fun m!992473 () Bool)

(assert (=> start!94968 m!992473))

(declare-fun m!992475 () Bool)

(assert (=> b!1073339 m!992475))

(declare-fun m!992477 () Bool)

(assert (=> mapNonEmpty!40633 m!992477))

(declare-fun m!992479 () Bool)

(assert (=> b!1073338 m!992479))

(declare-fun m!992481 () Bool)

(assert (=> b!1073334 m!992481))

(declare-fun m!992483 () Bool)

(assert (=> b!1073334 m!992483))

(check-sat (not b!1073334) (not b_next!22137) (not start!94968) (not mapNonEmpty!40633) (not b!1073338) tp_is_empty!25947 (not b!1073339) b_and!35009)
(check-sat b_and!35009 (not b_next!22137))
