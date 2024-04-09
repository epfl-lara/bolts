; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93942 () Bool)

(assert start!93942)

(declare-fun b_free!21365 () Bool)

(declare-fun b_next!21365 () Bool)

(assert (=> start!93942 (= b_free!21365 (not b_next!21365))))

(declare-fun tp!75521 () Bool)

(declare-fun b_and!34105 () Bool)

(assert (=> start!93942 (= tp!75521 b_and!34105)))

(declare-fun mapNonEmpty!39436 () Bool)

(declare-fun mapRes!39436 () Bool)

(declare-fun tp!75522 () Bool)

(declare-fun e!604866 () Bool)

(assert (=> mapNonEmpty!39436 (= mapRes!39436 (and tp!75522 e!604866))))

(declare-fun mapKey!39436 () (_ BitVec 32))

(declare-datatypes ((V!38701 0))(
  ( (V!38702 (val!12638 Int)) )
))
(declare-datatypes ((ValueCell!11884 0))(
  ( (ValueCellFull!11884 (v!15249 V!38701)) (EmptyCell!11884) )
))
(declare-datatypes ((array!67330 0))(
  ( (array!67331 (arr!32368 (Array (_ BitVec 32) ValueCell!11884)) (size!32905 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67330)

(declare-fun mapValue!39436 () ValueCell!11884)

(declare-fun mapRest!39436 () (Array (_ BitVec 32) ValueCell!11884))

(assert (=> mapNonEmpty!39436 (= (arr!32368 _values!955) (store mapRest!39436 mapKey!39436 mapValue!39436))))

(declare-fun b!1061955 () Bool)

(declare-fun e!604869 () Bool)

(declare-fun e!604865 () Bool)

(assert (=> b!1061955 (= e!604869 (not e!604865))))

(declare-fun res!709196 () Bool)

(assert (=> b!1061955 (=> res!709196 e!604865)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061955 (= res!709196 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16070 0))(
  ( (tuple2!16071 (_1!8045 (_ BitVec 64)) (_2!8045 V!38701)) )
))
(declare-datatypes ((List!22683 0))(
  ( (Nil!22680) (Cons!22679 (h!23888 tuple2!16070) (t!32001 List!22683)) )
))
(declare-datatypes ((ListLongMap!14051 0))(
  ( (ListLongMap!14052 (toList!7041 List!22683)) )
))
(declare-fun lt!467836 () ListLongMap!14051)

(declare-fun lt!467838 () ListLongMap!14051)

(assert (=> b!1061955 (= lt!467836 lt!467838)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((Unit!34755 0))(
  ( (Unit!34756) )
))
(declare-fun lt!467834 () Unit!34755)

(declare-fun minValue!907 () V!38701)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38701)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38701)

(declare-datatypes ((array!67332 0))(
  ( (array!67333 (arr!32369 (Array (_ BitVec 32) (_ BitVec 64))) (size!32906 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67332)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!643 (array!67332 array!67330 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38701 V!38701 V!38701 V!38701 (_ BitVec 32) Int) Unit!34755)

(assert (=> b!1061955 (= lt!467834 (lemmaNoChangeToArrayThenSameMapNoExtras!643 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3604 (array!67332 array!67330 (_ BitVec 32) (_ BitVec 32) V!38701 V!38701 (_ BitVec 32) Int) ListLongMap!14051)

(assert (=> b!1061955 (= lt!467838 (getCurrentListMapNoExtraKeys!3604 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061955 (= lt!467836 (getCurrentListMapNoExtraKeys!3604 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061956 () Bool)

(declare-fun e!604864 () Bool)

(assert (=> b!1061956 (= e!604865 e!604864)))

(declare-fun res!709199 () Bool)

(assert (=> b!1061956 (=> res!709199 e!604864)))

(declare-fun lt!467837 () ListLongMap!14051)

(declare-fun contains!6237 (ListLongMap!14051 (_ BitVec 64)) Bool)

(assert (=> b!1061956 (= res!709199 (contains!6237 lt!467837 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!3987 (array!67332 array!67330 (_ BitVec 32) (_ BitVec 32) V!38701 V!38701 (_ BitVec 32) Int) ListLongMap!14051)

(assert (=> b!1061956 (= lt!467837 (getCurrentListMap!3987 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39436 () Bool)

(assert (=> mapIsEmpty!39436 mapRes!39436))

(declare-fun b!1061957 () Bool)

(declare-fun res!709200 () Bool)

(assert (=> b!1061957 (=> (not res!709200) (not e!604869))))

(assert (=> b!1061957 (= res!709200 (and (= (size!32905 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32906 _keys!1163) (size!32905 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061958 () Bool)

(declare-fun e!604868 () Bool)

(declare-fun tp_is_empty!25175 () Bool)

(assert (=> b!1061958 (= e!604868 tp_is_empty!25175)))

(declare-fun b!1061959 () Bool)

(assert (=> b!1061959 (= e!604864 true)))

(declare-fun -!556 (ListLongMap!14051 (_ BitVec 64)) ListLongMap!14051)

(assert (=> b!1061959 (= (-!556 lt!467837 #b0000000000000000000000000000000000000000000000000000000000000000) lt!467837)))

(declare-fun lt!467835 () Unit!34755)

(declare-fun removeNotPresentStillSame!2 (ListLongMap!14051 (_ BitVec 64)) Unit!34755)

(assert (=> b!1061959 (= lt!467835 (removeNotPresentStillSame!2 lt!467837 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1061960 () Bool)

(declare-fun res!709197 () Bool)

(assert (=> b!1061960 (=> (not res!709197) (not e!604869))))

(declare-datatypes ((List!22684 0))(
  ( (Nil!22681) (Cons!22680 (h!23889 (_ BitVec 64)) (t!32002 List!22684)) )
))
(declare-fun arrayNoDuplicates!0 (array!67332 (_ BitVec 32) List!22684) Bool)

(assert (=> b!1061960 (= res!709197 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22681))))

(declare-fun b!1061961 () Bool)

(declare-fun e!604867 () Bool)

(assert (=> b!1061961 (= e!604867 (and e!604868 mapRes!39436))))

(declare-fun condMapEmpty!39436 () Bool)

(declare-fun mapDefault!39436 () ValueCell!11884)

