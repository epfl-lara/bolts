; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93950 () Bool)

(assert start!93950)

(declare-fun b_free!21373 () Bool)

(declare-fun b_next!21373 () Bool)

(assert (=> start!93950 (= b_free!21373 (not b_next!21373))))

(declare-fun tp!75546 () Bool)

(declare-fun b_and!34113 () Bool)

(assert (=> start!93950 (= tp!75546 b_and!34113)))

(declare-fun b!1062062 () Bool)

(declare-fun e!604952 () Bool)

(assert (=> b!1062062 (= e!604952 true)))

(declare-datatypes ((V!38713 0))(
  ( (V!38714 (val!12642 Int)) )
))
(declare-datatypes ((tuple2!16078 0))(
  ( (tuple2!16079 (_1!8049 (_ BitVec 64)) (_2!8049 V!38713)) )
))
(declare-datatypes ((List!22691 0))(
  ( (Nil!22688) (Cons!22687 (h!23896 tuple2!16078) (t!32009 List!22691)) )
))
(declare-datatypes ((ListLongMap!14059 0))(
  ( (ListLongMap!14060 (toList!7045 List!22691)) )
))
(declare-fun lt!467897 () ListLongMap!14059)

(declare-fun -!560 (ListLongMap!14059 (_ BitVec 64)) ListLongMap!14059)

(assert (=> b!1062062 (= (-!560 lt!467897 #b0000000000000000000000000000000000000000000000000000000000000000) lt!467897)))

(declare-datatypes ((Unit!34763 0))(
  ( (Unit!34764) )
))
(declare-fun lt!467894 () Unit!34763)

(declare-fun removeNotPresentStillSame!6 (ListLongMap!14059 (_ BitVec 64)) Unit!34763)

(assert (=> b!1062062 (= lt!467894 (removeNotPresentStillSame!6 lt!467897 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062063 () Bool)

(declare-fun e!604948 () Bool)

(assert (=> b!1062063 (= e!604948 e!604952)))

(declare-fun res!709271 () Bool)

(assert (=> b!1062063 (=> res!709271 e!604952)))

(declare-fun contains!6241 (ListLongMap!14059 (_ BitVec 64)) Bool)

(assert (=> b!1062063 (= res!709271 (contains!6241 lt!467897 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38713)

(declare-datatypes ((ValueCell!11888 0))(
  ( (ValueCellFull!11888 (v!15253 V!38713)) (EmptyCell!11888) )
))
(declare-datatypes ((array!67346 0))(
  ( (array!67347 (arr!32376 (Array (_ BitVec 32) ValueCell!11888)) (size!32913 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67346)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38713)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67348 0))(
  ( (array!67349 (arr!32377 (Array (_ BitVec 32) (_ BitVec 64))) (size!32914 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67348)

(declare-fun getCurrentListMap!3991 (array!67348 array!67346 (_ BitVec 32) (_ BitVec 32) V!38713 V!38713 (_ BitVec 32) Int) ListLongMap!14059)

(assert (=> b!1062063 (= lt!467897 (getCurrentListMap!3991 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!709270 () Bool)

(declare-fun e!604951 () Bool)

(assert (=> start!93950 (=> (not res!709270) (not e!604951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93950 (= res!709270 (validMask!0 mask!1515))))

(assert (=> start!93950 e!604951))

(assert (=> start!93950 true))

(declare-fun tp_is_empty!25183 () Bool)

(assert (=> start!93950 tp_is_empty!25183))

(declare-fun e!604947 () Bool)

(declare-fun array_inv!24920 (array!67346) Bool)

(assert (=> start!93950 (and (array_inv!24920 _values!955) e!604947)))

(assert (=> start!93950 tp!75546))

(declare-fun array_inv!24921 (array!67348) Bool)

(assert (=> start!93950 (array_inv!24921 _keys!1163)))

(declare-fun b!1062064 () Bool)

(declare-fun res!709269 () Bool)

(assert (=> b!1062064 (=> (not res!709269) (not e!604951))))

(declare-datatypes ((List!22692 0))(
  ( (Nil!22689) (Cons!22688 (h!23897 (_ BitVec 64)) (t!32010 List!22692)) )
))
(declare-fun arrayNoDuplicates!0 (array!67348 (_ BitVec 32) List!22692) Bool)

(assert (=> b!1062064 (= res!709269 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22689))))

(declare-fun b!1062065 () Bool)

(assert (=> b!1062065 (= e!604951 (not e!604948))))

(declare-fun res!709272 () Bool)

(assert (=> b!1062065 (=> res!709272 e!604948)))

(assert (=> b!1062065 (= res!709272 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!467896 () ListLongMap!14059)

(declare-fun lt!467898 () ListLongMap!14059)

(assert (=> b!1062065 (= lt!467896 lt!467898)))

(declare-fun lt!467895 () Unit!34763)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!38713)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!647 (array!67348 array!67346 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38713 V!38713 V!38713 V!38713 (_ BitVec 32) Int) Unit!34763)

(assert (=> b!1062065 (= lt!467895 (lemmaNoChangeToArrayThenSameMapNoExtras!647 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3608 (array!67348 array!67346 (_ BitVec 32) (_ BitVec 32) V!38713 V!38713 (_ BitVec 32) Int) ListLongMap!14059)

(assert (=> b!1062065 (= lt!467898 (getCurrentListMapNoExtraKeys!3608 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062065 (= lt!467896 (getCurrentListMapNoExtraKeys!3608 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39448 () Bool)

(declare-fun mapRes!39448 () Bool)

(assert (=> mapIsEmpty!39448 mapRes!39448))

(declare-fun b!1062066 () Bool)

(declare-fun e!604950 () Bool)

(assert (=> b!1062066 (= e!604950 tp_is_empty!25183)))

(declare-fun b!1062067 () Bool)

(declare-fun e!604953 () Bool)

(assert (=> b!1062067 (= e!604947 (and e!604953 mapRes!39448))))

(declare-fun condMapEmpty!39448 () Bool)

(declare-fun mapDefault!39448 () ValueCell!11888)

