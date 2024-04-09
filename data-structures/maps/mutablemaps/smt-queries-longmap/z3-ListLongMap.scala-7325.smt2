; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93670 () Bool)

(assert start!93670)

(declare-fun res!707750 () Bool)

(declare-fun e!602939 () Bool)

(assert (=> start!93670 (=> (not res!707750) (not e!602939))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93670 (= res!707750 (validMask!0 mask!1515))))

(assert (=> start!93670 e!602939))

(assert (=> start!93670 true))

(declare-datatypes ((V!38387 0))(
  ( (V!38388 (val!12520 Int)) )
))
(declare-datatypes ((ValueCell!11766 0))(
  ( (ValueCellFull!11766 (v!15131 V!38387)) (EmptyCell!11766) )
))
(declare-datatypes ((array!66888 0))(
  ( (array!66889 (arr!32150 (Array (_ BitVec 32) ValueCell!11766)) (size!32687 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66888)

(declare-fun e!602938 () Bool)

(declare-fun array_inv!24766 (array!66888) Bool)

(assert (=> start!93670 (and (array_inv!24766 _values!955) e!602938)))

(declare-datatypes ((array!66890 0))(
  ( (array!66891 (arr!32151 (Array (_ BitVec 32) (_ BitVec 64))) (size!32688 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66890)

(declare-fun array_inv!24767 (array!66890) Bool)

(assert (=> start!93670 (array_inv!24767 _keys!1163)))

(declare-fun b!1059325 () Bool)

(declare-fun e!602942 () Bool)

(declare-fun tp_is_empty!24939 () Bool)

(assert (=> b!1059325 (= e!602942 tp_is_empty!24939)))

(declare-fun b!1059326 () Bool)

(declare-fun res!707749 () Bool)

(assert (=> b!1059326 (=> (not res!707749) (not e!602939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66890 (_ BitVec 32)) Bool)

(assert (=> b!1059326 (= res!707749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059327 () Bool)

(declare-fun res!707751 () Bool)

(assert (=> b!1059327 (=> (not res!707751) (not e!602939))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059327 (= res!707751 (and (= (size!32687 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32688 _keys!1163) (size!32687 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059328 () Bool)

(assert (=> b!1059328 (= e!602939 false)))

(declare-fun lt!467090 () Bool)

(declare-datatypes ((List!22547 0))(
  ( (Nil!22544) (Cons!22543 (h!23752 (_ BitVec 64)) (t!31861 List!22547)) )
))
(declare-fun arrayNoDuplicates!0 (array!66890 (_ BitVec 32) List!22547) Bool)

(assert (=> b!1059328 (= lt!467090 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22544))))

(declare-fun mapIsEmpty!39073 () Bool)

(declare-fun mapRes!39073 () Bool)

(assert (=> mapIsEmpty!39073 mapRes!39073))

(declare-fun b!1059329 () Bool)

(declare-fun e!602940 () Bool)

(assert (=> b!1059329 (= e!602938 (and e!602940 mapRes!39073))))

(declare-fun condMapEmpty!39073 () Bool)

(declare-fun mapDefault!39073 () ValueCell!11766)

(assert (=> b!1059329 (= condMapEmpty!39073 (= (arr!32150 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11766)) mapDefault!39073)))))

(declare-fun b!1059330 () Bool)

(assert (=> b!1059330 (= e!602940 tp_is_empty!24939)))

(declare-fun mapNonEmpty!39073 () Bool)

(declare-fun tp!74880 () Bool)

(assert (=> mapNonEmpty!39073 (= mapRes!39073 (and tp!74880 e!602942))))

(declare-fun mapRest!39073 () (Array (_ BitVec 32) ValueCell!11766))

(declare-fun mapKey!39073 () (_ BitVec 32))

(declare-fun mapValue!39073 () ValueCell!11766)

(assert (=> mapNonEmpty!39073 (= (arr!32150 _values!955) (store mapRest!39073 mapKey!39073 mapValue!39073))))

(assert (= (and start!93670 res!707750) b!1059327))

(assert (= (and b!1059327 res!707751) b!1059326))

(assert (= (and b!1059326 res!707749) b!1059328))

(assert (= (and b!1059329 condMapEmpty!39073) mapIsEmpty!39073))

(assert (= (and b!1059329 (not condMapEmpty!39073)) mapNonEmpty!39073))

(get-info :version)

(assert (= (and mapNonEmpty!39073 ((_ is ValueCellFull!11766) mapValue!39073)) b!1059325))

(assert (= (and b!1059329 ((_ is ValueCellFull!11766) mapDefault!39073)) b!1059330))

(assert (= start!93670 b!1059329))

(declare-fun m!978909 () Bool)

(assert (=> start!93670 m!978909))

(declare-fun m!978911 () Bool)

(assert (=> start!93670 m!978911))

(declare-fun m!978913 () Bool)

(assert (=> start!93670 m!978913))

(declare-fun m!978915 () Bool)

(assert (=> b!1059326 m!978915))

(declare-fun m!978917 () Bool)

(assert (=> b!1059328 m!978917))

(declare-fun m!978919 () Bool)

(assert (=> mapNonEmpty!39073 m!978919))

(check-sat (not b!1059326) (not b!1059328) (not mapNonEmpty!39073) (not start!93670) tp_is_empty!24939)
(check-sat)
