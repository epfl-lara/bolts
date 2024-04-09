; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93776 () Bool)

(assert start!93776)

(declare-fun b_free!21225 () Bool)

(declare-fun b_next!21225 () Bool)

(assert (=> start!93776 (= b_free!21225 (not b_next!21225))))

(declare-fun tp!75096 () Bool)

(declare-fun b_and!33953 () Bool)

(assert (=> start!93776 (= tp!75096 b_and!33953)))

(declare-fun b!1060301 () Bool)

(declare-fun res!708275 () Bool)

(declare-fun e!603685 () Bool)

(assert (=> b!1060301 (=> (not res!708275) (not e!603685))))

(declare-datatypes ((array!67068 0))(
  ( (array!67069 (arr!32239 (Array (_ BitVec 32) (_ BitVec 64))) (size!32776 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67068)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67068 (_ BitVec 32)) Bool)

(assert (=> b!1060301 (= res!708275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060302 () Bool)

(declare-fun res!708273 () Bool)

(assert (=> b!1060302 (=> (not res!708273) (not e!603685))))

(declare-datatypes ((List!22590 0))(
  ( (Nil!22587) (Cons!22586 (h!23795 (_ BitVec 64)) (t!31904 List!22590)) )
))
(declare-fun arrayNoDuplicates!0 (array!67068 (_ BitVec 32) List!22590) Bool)

(assert (=> b!1060302 (= res!708273 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22587))))

(declare-fun b!1060303 () Bool)

(declare-fun res!708276 () Bool)

(assert (=> b!1060303 (=> (not res!708276) (not e!603685))))

(declare-datatypes ((V!38515 0))(
  ( (V!38516 (val!12568 Int)) )
))
(declare-datatypes ((ValueCell!11814 0))(
  ( (ValueCellFull!11814 (v!15179 V!38515)) (EmptyCell!11814) )
))
(declare-datatypes ((array!67070 0))(
  ( (array!67071 (arr!32240 (Array (_ BitVec 32) ValueCell!11814)) (size!32777 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67070)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060303 (= res!708276 (and (= (size!32777 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32776 _keys!1163) (size!32777 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060304 () Bool)

(declare-fun e!603687 () Bool)

(declare-fun tp_is_empty!25035 () Bool)

(assert (=> b!1060304 (= e!603687 tp_is_empty!25035)))

(declare-fun b!1060305 () Bool)

(assert (=> b!1060305 (= e!603685 false)))

(declare-fun zeroValueBefore!47 () V!38515)

(declare-datatypes ((tuple2!15978 0))(
  ( (tuple2!15979 (_1!7999 (_ BitVec 64)) (_2!7999 V!38515)) )
))
(declare-datatypes ((List!22591 0))(
  ( (Nil!22588) (Cons!22587 (h!23796 tuple2!15978) (t!31905 List!22591)) )
))
(declare-datatypes ((ListLongMap!13959 0))(
  ( (ListLongMap!13960 (toList!6995 List!22591)) )
))
(declare-fun lt!467234 () ListLongMap!13959)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38515)

(declare-fun getCurrentListMapNoExtraKeys!3559 (array!67068 array!67070 (_ BitVec 32) (_ BitVec 32) V!38515 V!38515 (_ BitVec 32) Int) ListLongMap!13959)

(assert (=> b!1060305 (= lt!467234 (getCurrentListMapNoExtraKeys!3559 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39220 () Bool)

(declare-fun mapRes!39220 () Bool)

(declare-fun tp!75095 () Bool)

(assert (=> mapNonEmpty!39220 (= mapRes!39220 (and tp!75095 e!603687))))

(declare-fun mapRest!39220 () (Array (_ BitVec 32) ValueCell!11814))

(declare-fun mapValue!39220 () ValueCell!11814)

(declare-fun mapKey!39220 () (_ BitVec 32))

(assert (=> mapNonEmpty!39220 (= (arr!32240 _values!955) (store mapRest!39220 mapKey!39220 mapValue!39220))))

(declare-fun res!708274 () Bool)

(assert (=> start!93776 (=> (not res!708274) (not e!603685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93776 (= res!708274 (validMask!0 mask!1515))))

(assert (=> start!93776 e!603685))

(assert (=> start!93776 true))

(assert (=> start!93776 tp_is_empty!25035))

(declare-fun e!603688 () Bool)

(declare-fun array_inv!24830 (array!67070) Bool)

(assert (=> start!93776 (and (array_inv!24830 _values!955) e!603688)))

(assert (=> start!93776 tp!75096))

(declare-fun array_inv!24831 (array!67068) Bool)

(assert (=> start!93776 (array_inv!24831 _keys!1163)))

(declare-fun mapIsEmpty!39220 () Bool)

(assert (=> mapIsEmpty!39220 mapRes!39220))

(declare-fun b!1060306 () Bool)

(declare-fun e!603686 () Bool)

(assert (=> b!1060306 (= e!603688 (and e!603686 mapRes!39220))))

(declare-fun condMapEmpty!39220 () Bool)

(declare-fun mapDefault!39220 () ValueCell!11814)

(assert (=> b!1060306 (= condMapEmpty!39220 (= (arr!32240 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11814)) mapDefault!39220)))))

(declare-fun b!1060307 () Bool)

(assert (=> b!1060307 (= e!603686 tp_is_empty!25035)))

(assert (= (and start!93776 res!708274) b!1060303))

(assert (= (and b!1060303 res!708276) b!1060301))

(assert (= (and b!1060301 res!708275) b!1060302))

(assert (= (and b!1060302 res!708273) b!1060305))

(assert (= (and b!1060306 condMapEmpty!39220) mapIsEmpty!39220))

(assert (= (and b!1060306 (not condMapEmpty!39220)) mapNonEmpty!39220))

(get-info :version)

(assert (= (and mapNonEmpty!39220 ((_ is ValueCellFull!11814) mapValue!39220)) b!1060304))

(assert (= (and b!1060306 ((_ is ValueCellFull!11814) mapDefault!39220)) b!1060307))

(assert (= start!93776 b!1060306))

(declare-fun m!979547 () Bool)

(assert (=> b!1060302 m!979547))

(declare-fun m!979549 () Bool)

(assert (=> b!1060301 m!979549))

(declare-fun m!979551 () Bool)

(assert (=> start!93776 m!979551))

(declare-fun m!979553 () Bool)

(assert (=> start!93776 m!979553))

(declare-fun m!979555 () Bool)

(assert (=> start!93776 m!979555))

(declare-fun m!979557 () Bool)

(assert (=> b!1060305 m!979557))

(declare-fun m!979559 () Bool)

(assert (=> mapNonEmpty!39220 m!979559))

(check-sat tp_is_empty!25035 (not b_next!21225) (not b!1060305) (not start!93776) (not b!1060302) b_and!33953 (not b!1060301) (not mapNonEmpty!39220))
(check-sat b_and!33953 (not b_next!21225))
