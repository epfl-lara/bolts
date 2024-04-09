; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93694 () Bool)

(assert start!93694)

(declare-fun b!1059541 () Bool)

(declare-fun res!707859 () Bool)

(declare-fun e!603121 () Bool)

(assert (=> b!1059541 (=> (not res!707859) (not e!603121))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38419 0))(
  ( (V!38420 (val!12532 Int)) )
))
(declare-datatypes ((ValueCell!11778 0))(
  ( (ValueCellFull!11778 (v!15143 V!38419)) (EmptyCell!11778) )
))
(declare-datatypes ((array!66932 0))(
  ( (array!66933 (arr!32172 (Array (_ BitVec 32) ValueCell!11778)) (size!32709 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66932)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!66934 0))(
  ( (array!66935 (arr!32173 (Array (_ BitVec 32) (_ BitVec 64))) (size!32710 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66934)

(assert (=> b!1059541 (= res!707859 (and (= (size!32709 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32710 _keys!1163) (size!32709 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!707858 () Bool)

(assert (=> start!93694 (=> (not res!707858) (not e!603121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93694 (= res!707858 (validMask!0 mask!1515))))

(assert (=> start!93694 e!603121))

(assert (=> start!93694 true))

(declare-fun e!603122 () Bool)

(declare-fun array_inv!24784 (array!66932) Bool)

(assert (=> start!93694 (and (array_inv!24784 _values!955) e!603122)))

(declare-fun array_inv!24785 (array!66934) Bool)

(assert (=> start!93694 (array_inv!24785 _keys!1163)))

(declare-fun b!1059542 () Bool)

(declare-fun e!603120 () Bool)

(declare-fun tp_is_empty!24963 () Bool)

(assert (=> b!1059542 (= e!603120 tp_is_empty!24963)))

(declare-fun b!1059543 () Bool)

(assert (=> b!1059543 (= e!603121 false)))

(declare-fun lt!467126 () Bool)

(declare-datatypes ((List!22555 0))(
  ( (Nil!22552) (Cons!22551 (h!23760 (_ BitVec 64)) (t!31869 List!22555)) )
))
(declare-fun arrayNoDuplicates!0 (array!66934 (_ BitVec 32) List!22555) Bool)

(assert (=> b!1059543 (= lt!467126 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22552))))

(declare-fun mapIsEmpty!39109 () Bool)

(declare-fun mapRes!39109 () Bool)

(assert (=> mapIsEmpty!39109 mapRes!39109))

(declare-fun b!1059544 () Bool)

(declare-fun e!603119 () Bool)

(assert (=> b!1059544 (= e!603119 tp_is_empty!24963)))

(declare-fun mapNonEmpty!39109 () Bool)

(declare-fun tp!74916 () Bool)

(assert (=> mapNonEmpty!39109 (= mapRes!39109 (and tp!74916 e!603120))))

(declare-fun mapRest!39109 () (Array (_ BitVec 32) ValueCell!11778))

(declare-fun mapKey!39109 () (_ BitVec 32))

(declare-fun mapValue!39109 () ValueCell!11778)

(assert (=> mapNonEmpty!39109 (= (arr!32172 _values!955) (store mapRest!39109 mapKey!39109 mapValue!39109))))

(declare-fun b!1059545 () Bool)

(assert (=> b!1059545 (= e!603122 (and e!603119 mapRes!39109))))

(declare-fun condMapEmpty!39109 () Bool)

(declare-fun mapDefault!39109 () ValueCell!11778)

(assert (=> b!1059545 (= condMapEmpty!39109 (= (arr!32172 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11778)) mapDefault!39109)))))

(declare-fun b!1059546 () Bool)

(declare-fun res!707857 () Bool)

(assert (=> b!1059546 (=> (not res!707857) (not e!603121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66934 (_ BitVec 32)) Bool)

(assert (=> b!1059546 (= res!707857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!93694 res!707858) b!1059541))

(assert (= (and b!1059541 res!707859) b!1059546))

(assert (= (and b!1059546 res!707857) b!1059543))

(assert (= (and b!1059545 condMapEmpty!39109) mapIsEmpty!39109))

(assert (= (and b!1059545 (not condMapEmpty!39109)) mapNonEmpty!39109))

(get-info :version)

(assert (= (and mapNonEmpty!39109 ((_ is ValueCellFull!11778) mapValue!39109)) b!1059542))

(assert (= (and b!1059545 ((_ is ValueCellFull!11778) mapDefault!39109)) b!1059544))

(assert (= start!93694 b!1059545))

(declare-fun m!979053 () Bool)

(assert (=> start!93694 m!979053))

(declare-fun m!979055 () Bool)

(assert (=> start!93694 m!979055))

(declare-fun m!979057 () Bool)

(assert (=> start!93694 m!979057))

(declare-fun m!979059 () Bool)

(assert (=> b!1059543 m!979059))

(declare-fun m!979061 () Bool)

(assert (=> mapNonEmpty!39109 m!979061))

(declare-fun m!979063 () Bool)

(assert (=> b!1059546 m!979063))

(check-sat (not b!1059543) (not start!93694) (not mapNonEmpty!39109) (not b!1059546) tp_is_empty!24963)
(check-sat)
