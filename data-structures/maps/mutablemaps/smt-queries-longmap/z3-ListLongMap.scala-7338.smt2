; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93758 () Bool)

(assert start!93758)

(declare-fun b_free!21207 () Bool)

(declare-fun b_next!21207 () Bool)

(assert (=> start!93758 (= b_free!21207 (not b_next!21207))))

(declare-fun tp!75041 () Bool)

(declare-fun b_and!33935 () Bool)

(assert (=> start!93758 (= tp!75041 b_and!33935)))

(declare-fun b!1060112 () Bool)

(declare-fun e!603554 () Bool)

(declare-fun e!603552 () Bool)

(declare-fun mapRes!39193 () Bool)

(assert (=> b!1060112 (= e!603554 (and e!603552 mapRes!39193))))

(declare-fun condMapEmpty!39193 () Bool)

(declare-datatypes ((V!38491 0))(
  ( (V!38492 (val!12559 Int)) )
))
(declare-datatypes ((ValueCell!11805 0))(
  ( (ValueCellFull!11805 (v!15170 V!38491)) (EmptyCell!11805) )
))
(declare-datatypes ((array!67036 0))(
  ( (array!67037 (arr!32223 (Array (_ BitVec 32) ValueCell!11805)) (size!32760 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67036)

(declare-fun mapDefault!39193 () ValueCell!11805)

(assert (=> b!1060112 (= condMapEmpty!39193 (= (arr!32223 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11805)) mapDefault!39193)))))

(declare-fun b!1060113 () Bool)

(declare-fun res!708167 () Bool)

(declare-fun e!603550 () Bool)

(assert (=> b!1060113 (=> (not res!708167) (not e!603550))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67038 0))(
  ( (array!67039 (arr!32224 (Array (_ BitVec 32) (_ BitVec 64))) (size!32761 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67038)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1060113 (= res!708167 (and (= (size!32760 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32761 _keys!1163) (size!32760 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060114 () Bool)

(declare-fun res!708166 () Bool)

(assert (=> b!1060114 (=> (not res!708166) (not e!603550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67038 (_ BitVec 32)) Bool)

(assert (=> b!1060114 (= res!708166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!708165 () Bool)

(assert (=> start!93758 (=> (not res!708165) (not e!603550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93758 (= res!708165 (validMask!0 mask!1515))))

(assert (=> start!93758 e!603550))

(assert (=> start!93758 true))

(declare-fun tp_is_empty!25017 () Bool)

(assert (=> start!93758 tp_is_empty!25017))

(declare-fun array_inv!24822 (array!67036) Bool)

(assert (=> start!93758 (and (array_inv!24822 _values!955) e!603554)))

(assert (=> start!93758 tp!75041))

(declare-fun array_inv!24823 (array!67038) Bool)

(assert (=> start!93758 (array_inv!24823 _keys!1163)))

(declare-fun mapNonEmpty!39193 () Bool)

(declare-fun tp!75042 () Bool)

(declare-fun e!603553 () Bool)

(assert (=> mapNonEmpty!39193 (= mapRes!39193 (and tp!75042 e!603553))))

(declare-fun mapValue!39193 () ValueCell!11805)

(declare-fun mapKey!39193 () (_ BitVec 32))

(declare-fun mapRest!39193 () (Array (_ BitVec 32) ValueCell!11805))

(assert (=> mapNonEmpty!39193 (= (arr!32223 _values!955) (store mapRest!39193 mapKey!39193 mapValue!39193))))

(declare-fun b!1060115 () Bool)

(assert (=> b!1060115 (= e!603552 tp_is_empty!25017)))

(declare-fun b!1060116 () Bool)

(declare-fun res!708168 () Bool)

(assert (=> b!1060116 (=> (not res!708168) (not e!603550))))

(declare-datatypes ((List!22580 0))(
  ( (Nil!22577) (Cons!22576 (h!23785 (_ BitVec 64)) (t!31894 List!22580)) )
))
(declare-fun arrayNoDuplicates!0 (array!67038 (_ BitVec 32) List!22580) Bool)

(assert (=> b!1060116 (= res!708168 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22577))))

(declare-fun mapIsEmpty!39193 () Bool)

(assert (=> mapIsEmpty!39193 mapRes!39193))

(declare-fun b!1060117 () Bool)

(assert (=> b!1060117 (= e!603553 tp_is_empty!25017)))

(declare-fun b!1060118 () Bool)

(assert (=> b!1060118 (= e!603550 false)))

(declare-fun zeroValueBefore!47 () V!38491)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38491)

(declare-datatypes ((tuple2!15966 0))(
  ( (tuple2!15967 (_1!7993 (_ BitVec 64)) (_2!7993 V!38491)) )
))
(declare-datatypes ((List!22581 0))(
  ( (Nil!22578) (Cons!22577 (h!23786 tuple2!15966) (t!31895 List!22581)) )
))
(declare-datatypes ((ListLongMap!13947 0))(
  ( (ListLongMap!13948 (toList!6989 List!22581)) )
))
(declare-fun lt!467207 () ListLongMap!13947)

(declare-fun getCurrentListMapNoExtraKeys!3553 (array!67038 array!67036 (_ BitVec 32) (_ BitVec 32) V!38491 V!38491 (_ BitVec 32) Int) ListLongMap!13947)

(assert (=> b!1060118 (= lt!467207 (getCurrentListMapNoExtraKeys!3553 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!93758 res!708165) b!1060113))

(assert (= (and b!1060113 res!708167) b!1060114))

(assert (= (and b!1060114 res!708166) b!1060116))

(assert (= (and b!1060116 res!708168) b!1060118))

(assert (= (and b!1060112 condMapEmpty!39193) mapIsEmpty!39193))

(assert (= (and b!1060112 (not condMapEmpty!39193)) mapNonEmpty!39193))

(get-info :version)

(assert (= (and mapNonEmpty!39193 ((_ is ValueCellFull!11805) mapValue!39193)) b!1060117))

(assert (= (and b!1060112 ((_ is ValueCellFull!11805) mapDefault!39193)) b!1060115))

(assert (= start!93758 b!1060112))

(declare-fun m!979421 () Bool)

(assert (=> b!1060114 m!979421))

(declare-fun m!979423 () Bool)

(assert (=> start!93758 m!979423))

(declare-fun m!979425 () Bool)

(assert (=> start!93758 m!979425))

(declare-fun m!979427 () Bool)

(assert (=> start!93758 m!979427))

(declare-fun m!979429 () Bool)

(assert (=> b!1060116 m!979429))

(declare-fun m!979431 () Bool)

(assert (=> b!1060118 m!979431))

(declare-fun m!979433 () Bool)

(assert (=> mapNonEmpty!39193 m!979433))

(check-sat (not b!1060118) tp_is_empty!25017 (not b!1060114) (not b_next!21207) b_and!33935 (not start!93758) (not mapNonEmpty!39193) (not b!1060116))
(check-sat b_and!33935 (not b_next!21207))
