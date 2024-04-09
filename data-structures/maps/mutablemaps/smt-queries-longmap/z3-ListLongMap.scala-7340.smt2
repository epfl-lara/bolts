; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93770 () Bool)

(assert start!93770)

(declare-fun b_free!21219 () Bool)

(declare-fun b_next!21219 () Bool)

(assert (=> start!93770 (= b_free!21219 (not b_next!21219))))

(declare-fun tp!75077 () Bool)

(declare-fun b_and!33947 () Bool)

(assert (=> start!93770 (= tp!75077 b_and!33947)))

(declare-fun b!1060238 () Bool)

(declare-fun res!708238 () Bool)

(declare-fun e!603641 () Bool)

(assert (=> b!1060238 (=> (not res!708238) (not e!603641))))

(declare-datatypes ((V!38507 0))(
  ( (V!38508 (val!12565 Int)) )
))
(declare-datatypes ((ValueCell!11811 0))(
  ( (ValueCellFull!11811 (v!15176 V!38507)) (EmptyCell!11811) )
))
(declare-datatypes ((array!67058 0))(
  ( (array!67059 (arr!32234 (Array (_ BitVec 32) ValueCell!11811)) (size!32771 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67058)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67060 0))(
  ( (array!67061 (arr!32235 (Array (_ BitVec 32) (_ BitVec 64))) (size!32772 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67060)

(assert (=> b!1060238 (= res!708238 (and (= (size!32771 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32772 _keys!1163) (size!32771 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39211 () Bool)

(declare-fun mapRes!39211 () Bool)

(assert (=> mapIsEmpty!39211 mapRes!39211))

(declare-fun b!1060240 () Bool)

(declare-fun e!603643 () Bool)

(declare-fun tp_is_empty!25029 () Bool)

(assert (=> b!1060240 (= e!603643 tp_is_empty!25029)))

(declare-fun b!1060241 () Bool)

(declare-fun res!708237 () Bool)

(assert (=> b!1060241 (=> (not res!708237) (not e!603641))))

(declare-datatypes ((List!22587 0))(
  ( (Nil!22584) (Cons!22583 (h!23792 (_ BitVec 64)) (t!31901 List!22587)) )
))
(declare-fun arrayNoDuplicates!0 (array!67060 (_ BitVec 32) List!22587) Bool)

(assert (=> b!1060241 (= res!708237 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22584))))

(declare-fun b!1060242 () Bool)

(declare-fun res!708240 () Bool)

(assert (=> b!1060242 (=> (not res!708240) (not e!603641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67060 (_ BitVec 32)) Bool)

(assert (=> b!1060242 (= res!708240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39211 () Bool)

(declare-fun tp!75078 () Bool)

(declare-fun e!603644 () Bool)

(assert (=> mapNonEmpty!39211 (= mapRes!39211 (and tp!75078 e!603644))))

(declare-fun mapValue!39211 () ValueCell!11811)

(declare-fun mapRest!39211 () (Array (_ BitVec 32) ValueCell!11811))

(declare-fun mapKey!39211 () (_ BitVec 32))

(assert (=> mapNonEmpty!39211 (= (arr!32234 _values!955) (store mapRest!39211 mapKey!39211 mapValue!39211))))

(declare-fun b!1060239 () Bool)

(declare-fun e!603642 () Bool)

(assert (=> b!1060239 (= e!603642 (and e!603643 mapRes!39211))))

(declare-fun condMapEmpty!39211 () Bool)

(declare-fun mapDefault!39211 () ValueCell!11811)

(assert (=> b!1060239 (= condMapEmpty!39211 (= (arr!32234 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11811)) mapDefault!39211)))))

(declare-fun res!708239 () Bool)

(assert (=> start!93770 (=> (not res!708239) (not e!603641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93770 (= res!708239 (validMask!0 mask!1515))))

(assert (=> start!93770 e!603641))

(assert (=> start!93770 true))

(assert (=> start!93770 tp_is_empty!25029))

(declare-fun array_inv!24828 (array!67058) Bool)

(assert (=> start!93770 (and (array_inv!24828 _values!955) e!603642)))

(assert (=> start!93770 tp!75077))

(declare-fun array_inv!24829 (array!67060) Bool)

(assert (=> start!93770 (array_inv!24829 _keys!1163)))

(declare-fun b!1060243 () Bool)

(assert (=> b!1060243 (= e!603641 false)))

(declare-fun zeroValueBefore!47 () V!38507)

(declare-datatypes ((tuple2!15974 0))(
  ( (tuple2!15975 (_1!7997 (_ BitVec 64)) (_2!7997 V!38507)) )
))
(declare-datatypes ((List!22588 0))(
  ( (Nil!22585) (Cons!22584 (h!23793 tuple2!15974) (t!31902 List!22588)) )
))
(declare-datatypes ((ListLongMap!13955 0))(
  ( (ListLongMap!13956 (toList!6993 List!22588)) )
))
(declare-fun lt!467225 () ListLongMap!13955)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38507)

(declare-fun getCurrentListMapNoExtraKeys!3557 (array!67060 array!67058 (_ BitVec 32) (_ BitVec 32) V!38507 V!38507 (_ BitVec 32) Int) ListLongMap!13955)

(assert (=> b!1060243 (= lt!467225 (getCurrentListMapNoExtraKeys!3557 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060244 () Bool)

(assert (=> b!1060244 (= e!603644 tp_is_empty!25029)))

(assert (= (and start!93770 res!708239) b!1060238))

(assert (= (and b!1060238 res!708238) b!1060242))

(assert (= (and b!1060242 res!708240) b!1060241))

(assert (= (and b!1060241 res!708237) b!1060243))

(assert (= (and b!1060239 condMapEmpty!39211) mapIsEmpty!39211))

(assert (= (and b!1060239 (not condMapEmpty!39211)) mapNonEmpty!39211))

(get-info :version)

(assert (= (and mapNonEmpty!39211 ((_ is ValueCellFull!11811) mapValue!39211)) b!1060244))

(assert (= (and b!1060239 ((_ is ValueCellFull!11811) mapDefault!39211)) b!1060240))

(assert (= start!93770 b!1060239))

(declare-fun m!979505 () Bool)

(assert (=> mapNonEmpty!39211 m!979505))

(declare-fun m!979507 () Bool)

(assert (=> start!93770 m!979507))

(declare-fun m!979509 () Bool)

(assert (=> start!93770 m!979509))

(declare-fun m!979511 () Bool)

(assert (=> start!93770 m!979511))

(declare-fun m!979513 () Bool)

(assert (=> b!1060242 m!979513))

(declare-fun m!979515 () Bool)

(assert (=> b!1060243 m!979515))

(declare-fun m!979517 () Bool)

(assert (=> b!1060241 m!979517))

(check-sat (not b!1060241) (not b!1060242) tp_is_empty!25029 b_and!33947 (not start!93770) (not b!1060243) (not mapNonEmpty!39211) (not b_next!21219))
(check-sat b_and!33947 (not b_next!21219))
