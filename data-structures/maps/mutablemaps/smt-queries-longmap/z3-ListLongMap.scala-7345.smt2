; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93812 () Bool)

(assert start!93812)

(declare-fun b_free!21249 () Bool)

(declare-fun b_next!21249 () Bool)

(assert (=> start!93812 (= b_free!21249 (not b_next!21249))))

(declare-fun tp!75171 () Bool)

(declare-fun b_and!33981 () Bool)

(assert (=> start!93812 (= tp!75171 b_and!33981)))

(declare-fun b!1060626 () Bool)

(declare-fun e!603915 () Bool)

(declare-fun e!603914 () Bool)

(declare-fun mapRes!39259 () Bool)

(assert (=> b!1060626 (= e!603915 (and e!603914 mapRes!39259))))

(declare-fun condMapEmpty!39259 () Bool)

(declare-datatypes ((V!38547 0))(
  ( (V!38548 (val!12580 Int)) )
))
(declare-datatypes ((ValueCell!11826 0))(
  ( (ValueCellFull!11826 (v!15191 V!38547)) (EmptyCell!11826) )
))
(declare-datatypes ((array!67112 0))(
  ( (array!67113 (arr!32260 (Array (_ BitVec 32) ValueCell!11826)) (size!32797 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67112)

(declare-fun mapDefault!39259 () ValueCell!11826)

(assert (=> b!1060626 (= condMapEmpty!39259 (= (arr!32260 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11826)) mapDefault!39259)))))

(declare-fun res!708445 () Bool)

(declare-fun e!603913 () Bool)

(assert (=> start!93812 (=> (not res!708445) (not e!603913))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93812 (= res!708445 (validMask!0 mask!1515))))

(assert (=> start!93812 e!603913))

(assert (=> start!93812 true))

(declare-fun tp_is_empty!25059 () Bool)

(assert (=> start!93812 tp_is_empty!25059))

(declare-fun array_inv!24846 (array!67112) Bool)

(assert (=> start!93812 (and (array_inv!24846 _values!955) e!603915)))

(assert (=> start!93812 tp!75171))

(declare-datatypes ((array!67114 0))(
  ( (array!67115 (arr!32261 (Array (_ BitVec 32) (_ BitVec 64))) (size!32798 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67114)

(declare-fun array_inv!24847 (array!67114) Bool)

(assert (=> start!93812 (array_inv!24847 _keys!1163)))

(declare-fun b!1060627 () Bool)

(declare-fun res!708447 () Bool)

(assert (=> b!1060627 (=> (not res!708447) (not e!603913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67114 (_ BitVec 32)) Bool)

(assert (=> b!1060627 (= res!708447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39259 () Bool)

(declare-fun tp!75170 () Bool)

(declare-fun e!603917 () Bool)

(assert (=> mapNonEmpty!39259 (= mapRes!39259 (and tp!75170 e!603917))))

(declare-fun mapRest!39259 () (Array (_ BitVec 32) ValueCell!11826))

(declare-fun mapKey!39259 () (_ BitVec 32))

(declare-fun mapValue!39259 () ValueCell!11826)

(assert (=> mapNonEmpty!39259 (= (arr!32260 _values!955) (store mapRest!39259 mapKey!39259 mapValue!39259))))

(declare-fun b!1060628 () Bool)

(declare-fun res!708444 () Bool)

(assert (=> b!1060628 (=> (not res!708444) (not e!603913))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060628 (= res!708444 (and (= (size!32797 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32798 _keys!1163) (size!32797 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060629 () Bool)

(assert (=> b!1060629 (= e!603917 tp_is_empty!25059)))

(declare-fun b!1060630 () Bool)

(assert (=> b!1060630 (= e!603914 tp_is_empty!25059)))

(declare-fun mapIsEmpty!39259 () Bool)

(assert (=> mapIsEmpty!39259 mapRes!39259))

(declare-fun b!1060631 () Bool)

(declare-fun res!708446 () Bool)

(assert (=> b!1060631 (=> (not res!708446) (not e!603913))))

(declare-datatypes ((List!22605 0))(
  ( (Nil!22602) (Cons!22601 (h!23810 (_ BitVec 64)) (t!31921 List!22605)) )
))
(declare-fun arrayNoDuplicates!0 (array!67114 (_ BitVec 32) List!22605) Bool)

(assert (=> b!1060631 (= res!708446 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22602))))

(declare-fun b!1060632 () Bool)

(assert (=> b!1060632 (= e!603913 false)))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38547)

(declare-fun minValue!907 () V!38547)

(declare-datatypes ((tuple2!15992 0))(
  ( (tuple2!15993 (_1!8006 (_ BitVec 64)) (_2!8006 V!38547)) )
))
(declare-datatypes ((List!22606 0))(
  ( (Nil!22603) (Cons!22602 (h!23811 tuple2!15992) (t!31922 List!22606)) )
))
(declare-datatypes ((ListLongMap!13973 0))(
  ( (ListLongMap!13974 (toList!7002 List!22606)) )
))
(declare-fun lt!467324 () ListLongMap!13973)

(declare-fun getCurrentListMapNoExtraKeys!3566 (array!67114 array!67112 (_ BitVec 32) (_ BitVec 32) V!38547 V!38547 (_ BitVec 32) Int) ListLongMap!13973)

(assert (=> b!1060632 (= lt!467324 (getCurrentListMapNoExtraKeys!3566 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38547)

(declare-fun lt!467323 () ListLongMap!13973)

(assert (=> b!1060632 (= lt!467323 (getCurrentListMapNoExtraKeys!3566 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!93812 res!708445) b!1060628))

(assert (= (and b!1060628 res!708444) b!1060627))

(assert (= (and b!1060627 res!708447) b!1060631))

(assert (= (and b!1060631 res!708446) b!1060632))

(assert (= (and b!1060626 condMapEmpty!39259) mapIsEmpty!39259))

(assert (= (and b!1060626 (not condMapEmpty!39259)) mapNonEmpty!39259))

(get-info :version)

(assert (= (and mapNonEmpty!39259 ((_ is ValueCellFull!11826) mapValue!39259)) b!1060629))

(assert (= (and b!1060626 ((_ is ValueCellFull!11826) mapDefault!39259)) b!1060630))

(assert (= start!93812 b!1060626))

(declare-fun m!979773 () Bool)

(assert (=> b!1060631 m!979773))

(declare-fun m!979775 () Bool)

(assert (=> mapNonEmpty!39259 m!979775))

(declare-fun m!979777 () Bool)

(assert (=> b!1060627 m!979777))

(declare-fun m!979779 () Bool)

(assert (=> start!93812 m!979779))

(declare-fun m!979781 () Bool)

(assert (=> start!93812 m!979781))

(declare-fun m!979783 () Bool)

(assert (=> start!93812 m!979783))

(declare-fun m!979785 () Bool)

(assert (=> b!1060632 m!979785))

(declare-fun m!979787 () Bool)

(assert (=> b!1060632 m!979787))

(check-sat (not b_next!21249) (not b!1060627) b_and!33981 (not mapNonEmpty!39259) tp_is_empty!25059 (not start!93812) (not b!1060631) (not b!1060632))
(check-sat b_and!33981 (not b_next!21249))
