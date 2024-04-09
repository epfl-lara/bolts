; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93676 () Bool)

(assert start!93676)

(declare-fun b!1059379 () Bool)

(declare-fun e!602987 () Bool)

(assert (=> b!1059379 (= e!602987 false)))

(declare-fun lt!467099 () Bool)

(declare-datatypes ((array!66900 0))(
  ( (array!66901 (arr!32156 (Array (_ BitVec 32) (_ BitVec 64))) (size!32693 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66900)

(declare-datatypes ((List!22550 0))(
  ( (Nil!22547) (Cons!22546 (h!23755 (_ BitVec 64)) (t!31864 List!22550)) )
))
(declare-fun arrayNoDuplicates!0 (array!66900 (_ BitVec 32) List!22550) Bool)

(assert (=> b!1059379 (= lt!467099 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22547))))

(declare-fun b!1059380 () Bool)

(declare-fun e!602985 () Bool)

(declare-fun e!602983 () Bool)

(declare-fun mapRes!39082 () Bool)

(assert (=> b!1059380 (= e!602985 (and e!602983 mapRes!39082))))

(declare-fun condMapEmpty!39082 () Bool)

(declare-datatypes ((V!38395 0))(
  ( (V!38396 (val!12523 Int)) )
))
(declare-datatypes ((ValueCell!11769 0))(
  ( (ValueCellFull!11769 (v!15134 V!38395)) (EmptyCell!11769) )
))
(declare-datatypes ((array!66902 0))(
  ( (array!66903 (arr!32157 (Array (_ BitVec 32) ValueCell!11769)) (size!32694 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66902)

(declare-fun mapDefault!39082 () ValueCell!11769)

(assert (=> b!1059380 (= condMapEmpty!39082 (= (arr!32157 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11769)) mapDefault!39082)))))

(declare-fun res!707777 () Bool)

(assert (=> start!93676 (=> (not res!707777) (not e!602987))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93676 (= res!707777 (validMask!0 mask!1515))))

(assert (=> start!93676 e!602987))

(assert (=> start!93676 true))

(declare-fun array_inv!24772 (array!66902) Bool)

(assert (=> start!93676 (and (array_inv!24772 _values!955) e!602985)))

(declare-fun array_inv!24773 (array!66900) Bool)

(assert (=> start!93676 (array_inv!24773 _keys!1163)))

(declare-fun b!1059381 () Bool)

(declare-fun res!707776 () Bool)

(assert (=> b!1059381 (=> (not res!707776) (not e!602987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66900 (_ BitVec 32)) Bool)

(assert (=> b!1059381 (= res!707776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059382 () Bool)

(declare-fun e!602986 () Bool)

(declare-fun tp_is_empty!24945 () Bool)

(assert (=> b!1059382 (= e!602986 tp_is_empty!24945)))

(declare-fun mapIsEmpty!39082 () Bool)

(assert (=> mapIsEmpty!39082 mapRes!39082))

(declare-fun b!1059383 () Bool)

(assert (=> b!1059383 (= e!602983 tp_is_empty!24945)))

(declare-fun mapNonEmpty!39082 () Bool)

(declare-fun tp!74889 () Bool)

(assert (=> mapNonEmpty!39082 (= mapRes!39082 (and tp!74889 e!602986))))

(declare-fun mapKey!39082 () (_ BitVec 32))

(declare-fun mapRest!39082 () (Array (_ BitVec 32) ValueCell!11769))

(declare-fun mapValue!39082 () ValueCell!11769)

(assert (=> mapNonEmpty!39082 (= (arr!32157 _values!955) (store mapRest!39082 mapKey!39082 mapValue!39082))))

(declare-fun b!1059384 () Bool)

(declare-fun res!707778 () Bool)

(assert (=> b!1059384 (=> (not res!707778) (not e!602987))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059384 (= res!707778 (and (= (size!32694 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32693 _keys!1163) (size!32694 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!93676 res!707777) b!1059384))

(assert (= (and b!1059384 res!707778) b!1059381))

(assert (= (and b!1059381 res!707776) b!1059379))

(assert (= (and b!1059380 condMapEmpty!39082) mapIsEmpty!39082))

(assert (= (and b!1059380 (not condMapEmpty!39082)) mapNonEmpty!39082))

(get-info :version)

(assert (= (and mapNonEmpty!39082 ((_ is ValueCellFull!11769) mapValue!39082)) b!1059382))

(assert (= (and b!1059380 ((_ is ValueCellFull!11769) mapDefault!39082)) b!1059383))

(assert (= start!93676 b!1059380))

(declare-fun m!978945 () Bool)

(assert (=> b!1059379 m!978945))

(declare-fun m!978947 () Bool)

(assert (=> start!93676 m!978947))

(declare-fun m!978949 () Bool)

(assert (=> start!93676 m!978949))

(declare-fun m!978951 () Bool)

(assert (=> start!93676 m!978951))

(declare-fun m!978953 () Bool)

(assert (=> b!1059381 m!978953))

(declare-fun m!978955 () Bool)

(assert (=> mapNonEmpty!39082 m!978955))

(check-sat (not b!1059379) (not start!93676) (not b!1059381) tp_is_empty!24945 (not mapNonEmpty!39082))
(check-sat)
