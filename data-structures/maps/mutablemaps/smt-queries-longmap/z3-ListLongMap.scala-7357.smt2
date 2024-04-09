; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93884 () Bool)

(assert start!93884)

(declare-fun b_free!21321 () Bool)

(declare-fun b_next!21321 () Bool)

(assert (=> start!93884 (= b_free!21321 (not b_next!21321))))

(declare-fun tp!75387 () Bool)

(declare-fun b_and!34053 () Bool)

(assert (=> start!93884 (= tp!75387 b_and!34053)))

(declare-fun mapNonEmpty!39367 () Bool)

(declare-fun mapRes!39367 () Bool)

(declare-fun tp!75386 () Bool)

(declare-fun e!604456 () Bool)

(assert (=> mapNonEmpty!39367 (= mapRes!39367 (and tp!75386 e!604456))))

(declare-datatypes ((V!38643 0))(
  ( (V!38644 (val!12616 Int)) )
))
(declare-datatypes ((ValueCell!11862 0))(
  ( (ValueCellFull!11862 (v!15227 V!38643)) (EmptyCell!11862) )
))
(declare-fun mapRest!39367 () (Array (_ BitVec 32) ValueCell!11862))

(declare-fun mapKey!39367 () (_ BitVec 32))

(declare-fun mapValue!39367 () ValueCell!11862)

(declare-datatypes ((array!67246 0))(
  ( (array!67247 (arr!32327 (Array (_ BitVec 32) ValueCell!11862)) (size!32864 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67246)

(assert (=> mapNonEmpty!39367 (= (arr!32327 _values!955) (store mapRest!39367 mapKey!39367 mapValue!39367))))

(declare-fun b!1061382 () Bool)

(declare-fun e!604453 () Bool)

(assert (=> b!1061382 (= e!604453 (not true))))

(declare-datatypes ((tuple2!16040 0))(
  ( (tuple2!16041 (_1!8030 (_ BitVec 64)) (_2!8030 V!38643)) )
))
(declare-datatypes ((List!22653 0))(
  ( (Nil!22650) (Cons!22649 (h!23858 tuple2!16040) (t!31969 List!22653)) )
))
(declare-datatypes ((ListLongMap!14021 0))(
  ( (ListLongMap!14022 (toList!7026 List!22653)) )
))
(declare-fun lt!467573 () ListLongMap!14021)

(declare-fun lt!467571 () ListLongMap!14021)

(assert (=> b!1061382 (= lt!467573 lt!467571)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38643)

(declare-datatypes ((Unit!34727 0))(
  ( (Unit!34728) )
))
(declare-fun lt!467572 () Unit!34727)

(declare-fun minValue!907 () V!38643)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38643)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67248 0))(
  ( (array!67249 (arr!32328 (Array (_ BitVec 32) (_ BitVec 64))) (size!32865 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67248)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!629 (array!67248 array!67246 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38643 V!38643 V!38643 V!38643 (_ BitVec 32) Int) Unit!34727)

(assert (=> b!1061382 (= lt!467572 (lemmaNoChangeToArrayThenSameMapNoExtras!629 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3590 (array!67248 array!67246 (_ BitVec 32) (_ BitVec 32) V!38643 V!38643 (_ BitVec 32) Int) ListLongMap!14021)

(assert (=> b!1061382 (= lt!467571 (getCurrentListMapNoExtraKeys!3590 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061382 (= lt!467573 (getCurrentListMapNoExtraKeys!3590 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061383 () Bool)

(declare-fun tp_is_empty!25131 () Bool)

(assert (=> b!1061383 (= e!604456 tp_is_empty!25131)))

(declare-fun b!1061384 () Bool)

(declare-fun e!604457 () Bool)

(assert (=> b!1061384 (= e!604457 tp_is_empty!25131)))

(declare-fun b!1061385 () Bool)

(declare-fun res!708879 () Bool)

(assert (=> b!1061385 (=> (not res!708879) (not e!604453))))

(assert (=> b!1061385 (= res!708879 (and (= (size!32864 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32865 _keys!1163) (size!32864 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39367 () Bool)

(assert (=> mapIsEmpty!39367 mapRes!39367))

(declare-fun b!1061386 () Bool)

(declare-fun e!604455 () Bool)

(assert (=> b!1061386 (= e!604455 (and e!604457 mapRes!39367))))

(declare-fun condMapEmpty!39367 () Bool)

(declare-fun mapDefault!39367 () ValueCell!11862)

(assert (=> b!1061386 (= condMapEmpty!39367 (= (arr!32327 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11862)) mapDefault!39367)))))

(declare-fun b!1061387 () Bool)

(declare-fun res!708876 () Bool)

(assert (=> b!1061387 (=> (not res!708876) (not e!604453))))

(declare-datatypes ((List!22654 0))(
  ( (Nil!22651) (Cons!22650 (h!23859 (_ BitVec 64)) (t!31970 List!22654)) )
))
(declare-fun arrayNoDuplicates!0 (array!67248 (_ BitVec 32) List!22654) Bool)

(assert (=> b!1061387 (= res!708876 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22651))))

(declare-fun res!708877 () Bool)

(assert (=> start!93884 (=> (not res!708877) (not e!604453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93884 (= res!708877 (validMask!0 mask!1515))))

(assert (=> start!93884 e!604453))

(assert (=> start!93884 true))

(assert (=> start!93884 tp_is_empty!25131))

(declare-fun array_inv!24890 (array!67246) Bool)

(assert (=> start!93884 (and (array_inv!24890 _values!955) e!604455)))

(assert (=> start!93884 tp!75387))

(declare-fun array_inv!24891 (array!67248) Bool)

(assert (=> start!93884 (array_inv!24891 _keys!1163)))

(declare-fun b!1061388 () Bool)

(declare-fun res!708878 () Bool)

(assert (=> b!1061388 (=> (not res!708878) (not e!604453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67248 (_ BitVec 32)) Bool)

(assert (=> b!1061388 (= res!708878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!93884 res!708877) b!1061385))

(assert (= (and b!1061385 res!708879) b!1061388))

(assert (= (and b!1061388 res!708878) b!1061387))

(assert (= (and b!1061387 res!708876) b!1061382))

(assert (= (and b!1061386 condMapEmpty!39367) mapIsEmpty!39367))

(assert (= (and b!1061386 (not condMapEmpty!39367)) mapNonEmpty!39367))

(get-info :version)

(assert (= (and mapNonEmpty!39367 ((_ is ValueCellFull!11862) mapValue!39367)) b!1061383))

(assert (= (and b!1061386 ((_ is ValueCellFull!11862) mapDefault!39367)) b!1061384))

(assert (= start!93884 b!1061386))

(declare-fun m!980369 () Bool)

(assert (=> b!1061382 m!980369))

(declare-fun m!980371 () Bool)

(assert (=> b!1061382 m!980371))

(declare-fun m!980373 () Bool)

(assert (=> b!1061382 m!980373))

(declare-fun m!980375 () Bool)

(assert (=> start!93884 m!980375))

(declare-fun m!980377 () Bool)

(assert (=> start!93884 m!980377))

(declare-fun m!980379 () Bool)

(assert (=> start!93884 m!980379))

(declare-fun m!980381 () Bool)

(assert (=> b!1061388 m!980381))

(declare-fun m!980383 () Bool)

(assert (=> b!1061387 m!980383))

(declare-fun m!980385 () Bool)

(assert (=> mapNonEmpty!39367 m!980385))

(check-sat tp_is_empty!25131 (not b!1061382) b_and!34053 (not b!1061387) (not mapNonEmpty!39367) (not b!1061388) (not b_next!21321) (not start!93884))
(check-sat b_and!34053 (not b_next!21321))
