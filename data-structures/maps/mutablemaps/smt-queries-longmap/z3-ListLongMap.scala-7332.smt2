; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93712 () Bool)

(assert start!93712)

(declare-fun b!1059703 () Bool)

(declare-fun e!603255 () Bool)

(declare-fun tp_is_empty!24981 () Bool)

(assert (=> b!1059703 (= e!603255 tp_is_empty!24981)))

(declare-fun b!1059704 () Bool)

(declare-fun res!707940 () Bool)

(declare-fun e!603254 () Bool)

(assert (=> b!1059704 (=> (not res!707940) (not e!603254))))

(declare-datatypes ((array!66968 0))(
  ( (array!66969 (arr!32190 (Array (_ BitVec 32) (_ BitVec 64))) (size!32727 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66968)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66968 (_ BitVec 32)) Bool)

(assert (=> b!1059704 (= res!707940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059705 () Bool)

(declare-fun e!603256 () Bool)

(assert (=> b!1059705 (= e!603256 tp_is_empty!24981)))

(declare-fun mapIsEmpty!39136 () Bool)

(declare-fun mapRes!39136 () Bool)

(assert (=> mapIsEmpty!39136 mapRes!39136))

(declare-fun b!1059706 () Bool)

(assert (=> b!1059706 (= e!603254 false)))

(declare-fun lt!467153 () Bool)

(declare-datatypes ((List!22560 0))(
  ( (Nil!22557) (Cons!22556 (h!23765 (_ BitVec 64)) (t!31874 List!22560)) )
))
(declare-fun arrayNoDuplicates!0 (array!66968 (_ BitVec 32) List!22560) Bool)

(assert (=> b!1059706 (= lt!467153 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22557))))

(declare-fun res!707939 () Bool)

(assert (=> start!93712 (=> (not res!707939) (not e!603254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93712 (= res!707939 (validMask!0 mask!1515))))

(assert (=> start!93712 e!603254))

(assert (=> start!93712 true))

(declare-datatypes ((V!38443 0))(
  ( (V!38444 (val!12541 Int)) )
))
(declare-datatypes ((ValueCell!11787 0))(
  ( (ValueCellFull!11787 (v!15152 V!38443)) (EmptyCell!11787) )
))
(declare-datatypes ((array!66970 0))(
  ( (array!66971 (arr!32191 (Array (_ BitVec 32) ValueCell!11787)) (size!32728 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66970)

(declare-fun e!603253 () Bool)

(declare-fun array_inv!24800 (array!66970) Bool)

(assert (=> start!93712 (and (array_inv!24800 _values!955) e!603253)))

(declare-fun array_inv!24801 (array!66968) Bool)

(assert (=> start!93712 (array_inv!24801 _keys!1163)))

(declare-fun mapNonEmpty!39136 () Bool)

(declare-fun tp!74943 () Bool)

(assert (=> mapNonEmpty!39136 (= mapRes!39136 (and tp!74943 e!603255))))

(declare-fun mapKey!39136 () (_ BitVec 32))

(declare-fun mapRest!39136 () (Array (_ BitVec 32) ValueCell!11787))

(declare-fun mapValue!39136 () ValueCell!11787)

(assert (=> mapNonEmpty!39136 (= (arr!32191 _values!955) (store mapRest!39136 mapKey!39136 mapValue!39136))))

(declare-fun b!1059707 () Bool)

(declare-fun res!707938 () Bool)

(assert (=> b!1059707 (=> (not res!707938) (not e!603254))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059707 (= res!707938 (and (= (size!32728 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32727 _keys!1163) (size!32728 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059708 () Bool)

(assert (=> b!1059708 (= e!603253 (and e!603256 mapRes!39136))))

(declare-fun condMapEmpty!39136 () Bool)

(declare-fun mapDefault!39136 () ValueCell!11787)

(assert (=> b!1059708 (= condMapEmpty!39136 (= (arr!32191 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11787)) mapDefault!39136)))))

(assert (= (and start!93712 res!707939) b!1059707))

(assert (= (and b!1059707 res!707938) b!1059704))

(assert (= (and b!1059704 res!707940) b!1059706))

(assert (= (and b!1059708 condMapEmpty!39136) mapIsEmpty!39136))

(assert (= (and b!1059708 (not condMapEmpty!39136)) mapNonEmpty!39136))

(get-info :version)

(assert (= (and mapNonEmpty!39136 ((_ is ValueCellFull!11787) mapValue!39136)) b!1059703))

(assert (= (and b!1059708 ((_ is ValueCellFull!11787) mapDefault!39136)) b!1059705))

(assert (= start!93712 b!1059708))

(declare-fun m!979161 () Bool)

(assert (=> b!1059704 m!979161))

(declare-fun m!979163 () Bool)

(assert (=> b!1059706 m!979163))

(declare-fun m!979165 () Bool)

(assert (=> start!93712 m!979165))

(declare-fun m!979167 () Bool)

(assert (=> start!93712 m!979167))

(declare-fun m!979169 () Bool)

(assert (=> start!93712 m!979169))

(declare-fun m!979171 () Bool)

(assert (=> mapNonEmpty!39136 m!979171))

(check-sat (not b!1059706) (not mapNonEmpty!39136) (not start!93712) tp_is_empty!24981 (not b!1059704))
(check-sat)
