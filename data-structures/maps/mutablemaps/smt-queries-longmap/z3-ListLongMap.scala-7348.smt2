; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93830 () Bool)

(assert start!93830)

(declare-fun b_free!21267 () Bool)

(declare-fun b_next!21267 () Bool)

(assert (=> start!93830 (= b_free!21267 (not b_next!21267))))

(declare-fun tp!75224 () Bool)

(declare-fun b_and!33999 () Bool)

(assert (=> start!93830 (= tp!75224 b_and!33999)))

(declare-fun res!708553 () Bool)

(declare-fun e!604050 () Bool)

(assert (=> start!93830 (=> (not res!708553) (not e!604050))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93830 (= res!708553 (validMask!0 mask!1515))))

(assert (=> start!93830 e!604050))

(assert (=> start!93830 true))

(declare-fun tp_is_empty!25077 () Bool)

(assert (=> start!93830 tp_is_empty!25077))

(declare-datatypes ((V!38571 0))(
  ( (V!38572 (val!12589 Int)) )
))
(declare-datatypes ((ValueCell!11835 0))(
  ( (ValueCellFull!11835 (v!15200 V!38571)) (EmptyCell!11835) )
))
(declare-datatypes ((array!67148 0))(
  ( (array!67149 (arr!32278 (Array (_ BitVec 32) ValueCell!11835)) (size!32815 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67148)

(declare-fun e!604051 () Bool)

(declare-fun array_inv!24856 (array!67148) Bool)

(assert (=> start!93830 (and (array_inv!24856 _values!955) e!604051)))

(assert (=> start!93830 tp!75224))

(declare-datatypes ((array!67150 0))(
  ( (array!67151 (arr!32279 (Array (_ BitVec 32) (_ BitVec 64))) (size!32816 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67150)

(declare-fun array_inv!24857 (array!67150) Bool)

(assert (=> start!93830 (array_inv!24857 _keys!1163)))

(declare-fun b!1060815 () Bool)

(assert (=> b!1060815 (= e!604050 false)))

(declare-datatypes ((tuple2!16008 0))(
  ( (tuple2!16009 (_1!8014 (_ BitVec 64)) (_2!8014 V!38571)) )
))
(declare-datatypes ((List!22619 0))(
  ( (Nil!22616) (Cons!22615 (h!23824 tuple2!16008) (t!31935 List!22619)) )
))
(declare-datatypes ((ListLongMap!13989 0))(
  ( (ListLongMap!13990 (toList!7010 List!22619)) )
))
(declare-fun lt!467378 () ListLongMap!13989)

(declare-fun minValue!907 () V!38571)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38571)

(declare-fun getCurrentListMapNoExtraKeys!3574 (array!67150 array!67148 (_ BitVec 32) (_ BitVec 32) V!38571 V!38571 (_ BitVec 32) Int) ListLongMap!13989)

(assert (=> b!1060815 (= lt!467378 (getCurrentListMapNoExtraKeys!3574 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38571)

(declare-fun lt!467377 () ListLongMap!13989)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060815 (= lt!467377 (getCurrentListMapNoExtraKeys!3574 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060816 () Bool)

(declare-fun res!708554 () Bool)

(assert (=> b!1060816 (=> (not res!708554) (not e!604050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67150 (_ BitVec 32)) Bool)

(assert (=> b!1060816 (= res!708554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060817 () Bool)

(declare-fun e!604048 () Bool)

(declare-fun mapRes!39286 () Bool)

(assert (=> b!1060817 (= e!604051 (and e!604048 mapRes!39286))))

(declare-fun condMapEmpty!39286 () Bool)

(declare-fun mapDefault!39286 () ValueCell!11835)

(assert (=> b!1060817 (= condMapEmpty!39286 (= (arr!32278 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11835)) mapDefault!39286)))))

(declare-fun b!1060818 () Bool)

(assert (=> b!1060818 (= e!604048 tp_is_empty!25077)))

(declare-fun b!1060819 () Bool)

(declare-fun res!708552 () Bool)

(assert (=> b!1060819 (=> (not res!708552) (not e!604050))))

(declare-datatypes ((List!22620 0))(
  ( (Nil!22617) (Cons!22616 (h!23825 (_ BitVec 64)) (t!31936 List!22620)) )
))
(declare-fun arrayNoDuplicates!0 (array!67150 (_ BitVec 32) List!22620) Bool)

(assert (=> b!1060819 (= res!708552 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22617))))

(declare-fun b!1060820 () Bool)

(declare-fun e!604052 () Bool)

(assert (=> b!1060820 (= e!604052 tp_is_empty!25077)))

(declare-fun mapIsEmpty!39286 () Bool)

(assert (=> mapIsEmpty!39286 mapRes!39286))

(declare-fun b!1060821 () Bool)

(declare-fun res!708555 () Bool)

(assert (=> b!1060821 (=> (not res!708555) (not e!604050))))

(assert (=> b!1060821 (= res!708555 (and (= (size!32815 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32816 _keys!1163) (size!32815 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39286 () Bool)

(declare-fun tp!75225 () Bool)

(assert (=> mapNonEmpty!39286 (= mapRes!39286 (and tp!75225 e!604052))))

(declare-fun mapKey!39286 () (_ BitVec 32))

(declare-fun mapValue!39286 () ValueCell!11835)

(declare-fun mapRest!39286 () (Array (_ BitVec 32) ValueCell!11835))

(assert (=> mapNonEmpty!39286 (= (arr!32278 _values!955) (store mapRest!39286 mapKey!39286 mapValue!39286))))

(assert (= (and start!93830 res!708553) b!1060821))

(assert (= (and b!1060821 res!708555) b!1060816))

(assert (= (and b!1060816 res!708554) b!1060819))

(assert (= (and b!1060819 res!708552) b!1060815))

(assert (= (and b!1060817 condMapEmpty!39286) mapIsEmpty!39286))

(assert (= (and b!1060817 (not condMapEmpty!39286)) mapNonEmpty!39286))

(get-info :version)

(assert (= (and mapNonEmpty!39286 ((_ is ValueCellFull!11835) mapValue!39286)) b!1060820))

(assert (= (and b!1060817 ((_ is ValueCellFull!11835) mapDefault!39286)) b!1060818))

(assert (= start!93830 b!1060817))

(declare-fun m!979917 () Bool)

(assert (=> b!1060815 m!979917))

(declare-fun m!979919 () Bool)

(assert (=> b!1060815 m!979919))

(declare-fun m!979921 () Bool)

(assert (=> start!93830 m!979921))

(declare-fun m!979923 () Bool)

(assert (=> start!93830 m!979923))

(declare-fun m!979925 () Bool)

(assert (=> start!93830 m!979925))

(declare-fun m!979927 () Bool)

(assert (=> b!1060819 m!979927))

(declare-fun m!979929 () Bool)

(assert (=> b!1060816 m!979929))

(declare-fun m!979931 () Bool)

(assert (=> mapNonEmpty!39286 m!979931))

(check-sat (not b!1060816) b_and!33999 (not start!93830) tp_is_empty!25077 (not b!1060815) (not b!1060819) (not mapNonEmpty!39286) (not b_next!21267))
(check-sat b_and!33999 (not b_next!21267))
