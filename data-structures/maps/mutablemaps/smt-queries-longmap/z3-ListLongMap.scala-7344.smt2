; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93806 () Bool)

(assert start!93806)

(declare-fun b_free!21243 () Bool)

(declare-fun b_next!21243 () Bool)

(assert (=> start!93806 (= b_free!21243 (not b_next!21243))))

(declare-fun tp!75153 () Bool)

(declare-fun b_and!33975 () Bool)

(assert (=> start!93806 (= tp!75153 b_and!33975)))

(declare-fun b!1060563 () Bool)

(declare-fun e!603870 () Bool)

(declare-fun e!603868 () Bool)

(declare-fun mapRes!39250 () Bool)

(assert (=> b!1060563 (= e!603870 (and e!603868 mapRes!39250))))

(declare-fun condMapEmpty!39250 () Bool)

(declare-datatypes ((V!38539 0))(
  ( (V!38540 (val!12577 Int)) )
))
(declare-datatypes ((ValueCell!11823 0))(
  ( (ValueCellFull!11823 (v!15188 V!38539)) (EmptyCell!11823) )
))
(declare-datatypes ((array!67102 0))(
  ( (array!67103 (arr!32255 (Array (_ BitVec 32) ValueCell!11823)) (size!32792 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67102)

(declare-fun mapDefault!39250 () ValueCell!11823)

(assert (=> b!1060563 (= condMapEmpty!39250 (= (arr!32255 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11823)) mapDefault!39250)))))

(declare-fun mapIsEmpty!39250 () Bool)

(assert (=> mapIsEmpty!39250 mapRes!39250))

(declare-fun res!708410 () Bool)

(declare-fun e!603871 () Bool)

(assert (=> start!93806 (=> (not res!708410) (not e!603871))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93806 (= res!708410 (validMask!0 mask!1515))))

(assert (=> start!93806 e!603871))

(assert (=> start!93806 true))

(declare-fun tp_is_empty!25053 () Bool)

(assert (=> start!93806 tp_is_empty!25053))

(declare-fun array_inv!24842 (array!67102) Bool)

(assert (=> start!93806 (and (array_inv!24842 _values!955) e!603870)))

(assert (=> start!93806 tp!75153))

(declare-datatypes ((array!67104 0))(
  ( (array!67105 (arr!32256 (Array (_ BitVec 32) (_ BitVec 64))) (size!32793 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67104)

(declare-fun array_inv!24843 (array!67104) Bool)

(assert (=> start!93806 (array_inv!24843 _keys!1163)))

(declare-fun b!1060564 () Bool)

(declare-fun res!708411 () Bool)

(assert (=> b!1060564 (=> (not res!708411) (not e!603871))))

(declare-datatypes ((List!22602 0))(
  ( (Nil!22599) (Cons!22598 (h!23807 (_ BitVec 64)) (t!31918 List!22602)) )
))
(declare-fun arrayNoDuplicates!0 (array!67104 (_ BitVec 32) List!22602) Bool)

(assert (=> b!1060564 (= res!708411 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22599))))

(declare-fun b!1060565 () Bool)

(declare-fun res!708409 () Bool)

(assert (=> b!1060565 (=> (not res!708409) (not e!603871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67104 (_ BitVec 32)) Bool)

(assert (=> b!1060565 (= res!708409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060566 () Bool)

(assert (=> b!1060566 (= e!603868 tp_is_empty!25053)))

(declare-fun b!1060567 () Bool)

(declare-fun e!603869 () Bool)

(assert (=> b!1060567 (= e!603869 tp_is_empty!25053)))

(declare-fun b!1060568 () Bool)

(assert (=> b!1060568 (= e!603871 false)))

(declare-datatypes ((tuple2!15990 0))(
  ( (tuple2!15991 (_1!8005 (_ BitVec 64)) (_2!8005 V!38539)) )
))
(declare-datatypes ((List!22603 0))(
  ( (Nil!22600) (Cons!22599 (h!23808 tuple2!15990) (t!31919 List!22603)) )
))
(declare-datatypes ((ListLongMap!13971 0))(
  ( (ListLongMap!13972 (toList!7001 List!22603)) )
))
(declare-fun lt!467305 () ListLongMap!13971)

(declare-fun minValue!907 () V!38539)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38539)

(declare-fun getCurrentListMapNoExtraKeys!3565 (array!67104 array!67102 (_ BitVec 32) (_ BitVec 32) V!38539 V!38539 (_ BitVec 32) Int) ListLongMap!13971)

(assert (=> b!1060568 (= lt!467305 (getCurrentListMapNoExtraKeys!3565 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38539)

(declare-fun lt!467306 () ListLongMap!13971)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060568 (= lt!467306 (getCurrentListMapNoExtraKeys!3565 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39250 () Bool)

(declare-fun tp!75152 () Bool)

(assert (=> mapNonEmpty!39250 (= mapRes!39250 (and tp!75152 e!603869))))

(declare-fun mapKey!39250 () (_ BitVec 32))

(declare-fun mapRest!39250 () (Array (_ BitVec 32) ValueCell!11823))

(declare-fun mapValue!39250 () ValueCell!11823)

(assert (=> mapNonEmpty!39250 (= (arr!32255 _values!955) (store mapRest!39250 mapKey!39250 mapValue!39250))))

(declare-fun b!1060569 () Bool)

(declare-fun res!708408 () Bool)

(assert (=> b!1060569 (=> (not res!708408) (not e!603871))))

(assert (=> b!1060569 (= res!708408 (and (= (size!32792 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32793 _keys!1163) (size!32792 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!93806 res!708410) b!1060569))

(assert (= (and b!1060569 res!708408) b!1060565))

(assert (= (and b!1060565 res!708409) b!1060564))

(assert (= (and b!1060564 res!708411) b!1060568))

(assert (= (and b!1060563 condMapEmpty!39250) mapIsEmpty!39250))

(assert (= (and b!1060563 (not condMapEmpty!39250)) mapNonEmpty!39250))

(get-info :version)

(assert (= (and mapNonEmpty!39250 ((_ is ValueCellFull!11823) mapValue!39250)) b!1060567))

(assert (= (and b!1060563 ((_ is ValueCellFull!11823) mapDefault!39250)) b!1060566))

(assert (= start!93806 b!1060563))

(declare-fun m!979725 () Bool)

(assert (=> mapNonEmpty!39250 m!979725))

(declare-fun m!979727 () Bool)

(assert (=> b!1060564 m!979727))

(declare-fun m!979729 () Bool)

(assert (=> start!93806 m!979729))

(declare-fun m!979731 () Bool)

(assert (=> start!93806 m!979731))

(declare-fun m!979733 () Bool)

(assert (=> start!93806 m!979733))

(declare-fun m!979735 () Bool)

(assert (=> b!1060568 m!979735))

(declare-fun m!979737 () Bool)

(assert (=> b!1060568 m!979737))

(declare-fun m!979739 () Bool)

(assert (=> b!1060565 m!979739))

(check-sat (not b!1060565) (not start!93806) (not b_next!21243) (not mapNonEmpty!39250) b_and!33975 tp_is_empty!25053 (not b!1060564) (not b!1060568))
(check-sat b_and!33975 (not b_next!21243))
