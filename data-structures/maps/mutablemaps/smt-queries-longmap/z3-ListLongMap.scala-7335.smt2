; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93740 () Bool)

(assert start!93740)

(declare-fun b_free!21189 () Bool)

(declare-fun b_next!21189 () Bool)

(assert (=> start!93740 (= b_free!21189 (not b_next!21189))))

(declare-fun tp!74987 () Bool)

(declare-fun b_and!33917 () Bool)

(assert (=> start!93740 (= tp!74987 b_and!33917)))

(declare-fun b!1059923 () Bool)

(declare-fun res!708059 () Bool)

(declare-fun e!603415 () Bool)

(assert (=> b!1059923 (=> (not res!708059) (not e!603415))))

(declare-datatypes ((array!67004 0))(
  ( (array!67005 (arr!32207 (Array (_ BitVec 32) (_ BitVec 64))) (size!32744 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67004)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67004 (_ BitVec 32)) Bool)

(assert (=> b!1059923 (= res!708059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059924 () Bool)

(declare-fun e!603417 () Bool)

(declare-fun tp_is_empty!24999 () Bool)

(assert (=> b!1059924 (= e!603417 tp_is_empty!24999)))

(declare-fun b!1059925 () Bool)

(declare-fun e!603416 () Bool)

(declare-fun e!603419 () Bool)

(declare-fun mapRes!39166 () Bool)

(assert (=> b!1059925 (= e!603416 (and e!603419 mapRes!39166))))

(declare-fun condMapEmpty!39166 () Bool)

(declare-datatypes ((V!38467 0))(
  ( (V!38468 (val!12550 Int)) )
))
(declare-datatypes ((ValueCell!11796 0))(
  ( (ValueCellFull!11796 (v!15161 V!38467)) (EmptyCell!11796) )
))
(declare-datatypes ((array!67006 0))(
  ( (array!67007 (arr!32208 (Array (_ BitVec 32) ValueCell!11796)) (size!32745 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67006)

(declare-fun mapDefault!39166 () ValueCell!11796)

(assert (=> b!1059925 (= condMapEmpty!39166 (= (arr!32208 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11796)) mapDefault!39166)))))

(declare-fun res!708057 () Bool)

(assert (=> start!93740 (=> (not res!708057) (not e!603415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93740 (= res!708057 (validMask!0 mask!1515))))

(assert (=> start!93740 e!603415))

(assert (=> start!93740 true))

(assert (=> start!93740 tp_is_empty!24999))

(declare-fun array_inv!24816 (array!67006) Bool)

(assert (=> start!93740 (and (array_inv!24816 _values!955) e!603416)))

(assert (=> start!93740 tp!74987))

(declare-fun array_inv!24817 (array!67004) Bool)

(assert (=> start!93740 (array_inv!24817 _keys!1163)))

(declare-fun mapNonEmpty!39166 () Bool)

(declare-fun tp!74988 () Bool)

(assert (=> mapNonEmpty!39166 (= mapRes!39166 (and tp!74988 e!603417))))

(declare-fun mapRest!39166 () (Array (_ BitVec 32) ValueCell!11796))

(declare-fun mapValue!39166 () ValueCell!11796)

(declare-fun mapKey!39166 () (_ BitVec 32))

(assert (=> mapNonEmpty!39166 (= (arr!32208 _values!955) (store mapRest!39166 mapKey!39166 mapValue!39166))))

(declare-fun b!1059926 () Bool)

(assert (=> b!1059926 (= e!603419 tp_is_empty!24999)))

(declare-fun b!1059927 () Bool)

(declare-fun res!708060 () Bool)

(assert (=> b!1059927 (=> (not res!708060) (not e!603415))))

(declare-datatypes ((List!22568 0))(
  ( (Nil!22565) (Cons!22564 (h!23773 (_ BitVec 64)) (t!31882 List!22568)) )
))
(declare-fun arrayNoDuplicates!0 (array!67004 (_ BitVec 32) List!22568) Bool)

(assert (=> b!1059927 (= res!708060 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22565))))

(declare-fun b!1059928 () Bool)

(declare-fun res!708058 () Bool)

(assert (=> b!1059928 (=> (not res!708058) (not e!603415))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059928 (= res!708058 (and (= (size!32745 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32744 _keys!1163) (size!32745 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39166 () Bool)

(assert (=> mapIsEmpty!39166 mapRes!39166))

(declare-fun b!1059929 () Bool)

(assert (=> b!1059929 (= e!603415 false)))

(declare-fun zeroValueBefore!47 () V!38467)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38467)

(declare-datatypes ((tuple2!15954 0))(
  ( (tuple2!15955 (_1!7987 (_ BitVec 64)) (_2!7987 V!38467)) )
))
(declare-datatypes ((List!22569 0))(
  ( (Nil!22566) (Cons!22565 (h!23774 tuple2!15954) (t!31883 List!22569)) )
))
(declare-datatypes ((ListLongMap!13935 0))(
  ( (ListLongMap!13936 (toList!6983 List!22569)) )
))
(declare-fun lt!467180 () ListLongMap!13935)

(declare-fun getCurrentListMapNoExtraKeys!3547 (array!67004 array!67006 (_ BitVec 32) (_ BitVec 32) V!38467 V!38467 (_ BitVec 32) Int) ListLongMap!13935)

(assert (=> b!1059929 (= lt!467180 (getCurrentListMapNoExtraKeys!3547 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!93740 res!708057) b!1059928))

(assert (= (and b!1059928 res!708058) b!1059923))

(assert (= (and b!1059923 res!708059) b!1059927))

(assert (= (and b!1059927 res!708060) b!1059929))

(assert (= (and b!1059925 condMapEmpty!39166) mapIsEmpty!39166))

(assert (= (and b!1059925 (not condMapEmpty!39166)) mapNonEmpty!39166))

(get-info :version)

(assert (= (and mapNonEmpty!39166 ((_ is ValueCellFull!11796) mapValue!39166)) b!1059924))

(assert (= (and b!1059925 ((_ is ValueCellFull!11796) mapDefault!39166)) b!1059926))

(assert (= start!93740 b!1059925))

(declare-fun m!979295 () Bool)

(assert (=> mapNonEmpty!39166 m!979295))

(declare-fun m!979297 () Bool)

(assert (=> b!1059929 m!979297))

(declare-fun m!979299 () Bool)

(assert (=> b!1059923 m!979299))

(declare-fun m!979301 () Bool)

(assert (=> start!93740 m!979301))

(declare-fun m!979303 () Bool)

(assert (=> start!93740 m!979303))

(declare-fun m!979305 () Bool)

(assert (=> start!93740 m!979305))

(declare-fun m!979307 () Bool)

(assert (=> b!1059927 m!979307))

(check-sat (not b!1059929) (not b_next!21189) (not b!1059927) b_and!33917 (not start!93740) (not b!1059923) (not mapNonEmpty!39166) tp_is_empty!24999)
(check-sat b_and!33917 (not b_next!21189))
