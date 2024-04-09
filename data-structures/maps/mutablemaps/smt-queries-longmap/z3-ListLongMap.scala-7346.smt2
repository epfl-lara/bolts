; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93818 () Bool)

(assert start!93818)

(declare-fun b_free!21255 () Bool)

(declare-fun b_next!21255 () Bool)

(assert (=> start!93818 (= b_free!21255 (not b_next!21255))))

(declare-fun tp!75188 () Bool)

(declare-fun b_and!33987 () Bool)

(assert (=> start!93818 (= tp!75188 b_and!33987)))

(declare-fun b!1060689 () Bool)

(declare-fun e!603958 () Bool)

(declare-fun e!603960 () Bool)

(declare-fun mapRes!39268 () Bool)

(assert (=> b!1060689 (= e!603958 (and e!603960 mapRes!39268))))

(declare-fun condMapEmpty!39268 () Bool)

(declare-datatypes ((V!38555 0))(
  ( (V!38556 (val!12583 Int)) )
))
(declare-datatypes ((ValueCell!11829 0))(
  ( (ValueCellFull!11829 (v!15194 V!38555)) (EmptyCell!11829) )
))
(declare-datatypes ((array!67124 0))(
  ( (array!67125 (arr!32266 (Array (_ BitVec 32) ValueCell!11829)) (size!32803 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67124)

(declare-fun mapDefault!39268 () ValueCell!11829)

(assert (=> b!1060689 (= condMapEmpty!39268 (= (arr!32266 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11829)) mapDefault!39268)))))

(declare-fun b!1060690 () Bool)

(declare-fun res!708480 () Bool)

(declare-fun e!603959 () Bool)

(assert (=> b!1060690 (=> (not res!708480) (not e!603959))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67126 0))(
  ( (array!67127 (arr!32267 (Array (_ BitVec 32) (_ BitVec 64))) (size!32804 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67126)

(assert (=> b!1060690 (= res!708480 (and (= (size!32803 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32804 _keys!1163) (size!32803 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!708482 () Bool)

(assert (=> start!93818 (=> (not res!708482) (not e!603959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93818 (= res!708482 (validMask!0 mask!1515))))

(assert (=> start!93818 e!603959))

(assert (=> start!93818 true))

(declare-fun tp_is_empty!25065 () Bool)

(assert (=> start!93818 tp_is_empty!25065))

(declare-fun array_inv!24850 (array!67124) Bool)

(assert (=> start!93818 (and (array_inv!24850 _values!955) e!603958)))

(assert (=> start!93818 tp!75188))

(declare-fun array_inv!24851 (array!67126) Bool)

(assert (=> start!93818 (array_inv!24851 _keys!1163)))

(declare-fun b!1060691 () Bool)

(assert (=> b!1060691 (= e!603960 tp_is_empty!25065)))

(declare-fun mapIsEmpty!39268 () Bool)

(assert (=> mapIsEmpty!39268 mapRes!39268))

(declare-fun b!1060692 () Bool)

(declare-fun res!708483 () Bool)

(assert (=> b!1060692 (=> (not res!708483) (not e!603959))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67126 (_ BitVec 32)) Bool)

(assert (=> b!1060692 (= res!708483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060693 () Bool)

(declare-fun res!708481 () Bool)

(assert (=> b!1060693 (=> (not res!708481) (not e!603959))))

(declare-datatypes ((List!22610 0))(
  ( (Nil!22607) (Cons!22606 (h!23815 (_ BitVec 64)) (t!31926 List!22610)) )
))
(declare-fun arrayNoDuplicates!0 (array!67126 (_ BitVec 32) List!22610) Bool)

(assert (=> b!1060693 (= res!708481 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22607))))

(declare-fun b!1060694 () Bool)

(declare-fun e!603962 () Bool)

(assert (=> b!1060694 (= e!603962 tp_is_empty!25065)))

(declare-fun b!1060695 () Bool)

(assert (=> b!1060695 (= e!603959 false)))

(declare-datatypes ((tuple2!15998 0))(
  ( (tuple2!15999 (_1!8009 (_ BitVec 64)) (_2!8009 V!38555)) )
))
(declare-datatypes ((List!22611 0))(
  ( (Nil!22608) (Cons!22607 (h!23816 tuple2!15998) (t!31927 List!22611)) )
))
(declare-datatypes ((ListLongMap!13979 0))(
  ( (ListLongMap!13980 (toList!7005 List!22611)) )
))
(declare-fun lt!467341 () ListLongMap!13979)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38555)

(declare-fun minValue!907 () V!38555)

(declare-fun getCurrentListMapNoExtraKeys!3569 (array!67126 array!67124 (_ BitVec 32) (_ BitVec 32) V!38555 V!38555 (_ BitVec 32) Int) ListLongMap!13979)

(assert (=> b!1060695 (= lt!467341 (getCurrentListMapNoExtraKeys!3569 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38555)

(declare-fun lt!467342 () ListLongMap!13979)

(assert (=> b!1060695 (= lt!467342 (getCurrentListMapNoExtraKeys!3569 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39268 () Bool)

(declare-fun tp!75189 () Bool)

(assert (=> mapNonEmpty!39268 (= mapRes!39268 (and tp!75189 e!603962))))

(declare-fun mapValue!39268 () ValueCell!11829)

(declare-fun mapKey!39268 () (_ BitVec 32))

(declare-fun mapRest!39268 () (Array (_ BitVec 32) ValueCell!11829))

(assert (=> mapNonEmpty!39268 (= (arr!32266 _values!955) (store mapRest!39268 mapKey!39268 mapValue!39268))))

(assert (= (and start!93818 res!708482) b!1060690))

(assert (= (and b!1060690 res!708480) b!1060692))

(assert (= (and b!1060692 res!708483) b!1060693))

(assert (= (and b!1060693 res!708481) b!1060695))

(assert (= (and b!1060689 condMapEmpty!39268) mapIsEmpty!39268))

(assert (= (and b!1060689 (not condMapEmpty!39268)) mapNonEmpty!39268))

(get-info :version)

(assert (= (and mapNonEmpty!39268 ((_ is ValueCellFull!11829) mapValue!39268)) b!1060694))

(assert (= (and b!1060689 ((_ is ValueCellFull!11829) mapDefault!39268)) b!1060691))

(assert (= start!93818 b!1060689))

(declare-fun m!979821 () Bool)

(assert (=> mapNonEmpty!39268 m!979821))

(declare-fun m!979823 () Bool)

(assert (=> b!1060692 m!979823))

(declare-fun m!979825 () Bool)

(assert (=> b!1060693 m!979825))

(declare-fun m!979827 () Bool)

(assert (=> start!93818 m!979827))

(declare-fun m!979829 () Bool)

(assert (=> start!93818 m!979829))

(declare-fun m!979831 () Bool)

(assert (=> start!93818 m!979831))

(declare-fun m!979833 () Bool)

(assert (=> b!1060695 m!979833))

(declare-fun m!979835 () Bool)

(assert (=> b!1060695 m!979835))

(check-sat (not mapNonEmpty!39268) b_and!33987 tp_is_empty!25065 (not start!93818) (not b!1060692) (not b!1060695) (not b_next!21255) (not b!1060693))
(check-sat b_and!33987 (not b_next!21255))
