; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70526 () Bool)

(assert start!70526)

(declare-fun b_free!12829 () Bool)

(declare-fun b_next!12829 () Bool)

(assert (=> start!70526 (= b_free!12829 (not b_next!12829))))

(declare-fun tp!45220 () Bool)

(declare-fun b_and!21677 () Bool)

(assert (=> start!70526 (= tp!45220 b_and!21677)))

(declare-fun b!818790 () Bool)

(declare-fun res!558878 () Bool)

(declare-fun e!454644 () Bool)

(assert (=> b!818790 (=> (not res!558878) (not e!454644))))

(declare-datatypes ((array!45250 0))(
  ( (array!45251 (arr!21675 (Array (_ BitVec 32) (_ BitVec 64))) (size!22096 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45250)

(declare-datatypes ((List!15498 0))(
  ( (Nil!15495) (Cons!15494 (h!16623 (_ BitVec 64)) (t!21835 List!15498)) )
))
(declare-fun arrayNoDuplicates!0 (array!45250 (_ BitVec 32) List!15498) Bool)

(assert (=> b!818790 (= res!558878 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15495))))

(declare-fun b!818791 () Bool)

(declare-fun e!454641 () Bool)

(declare-fun tp_is_empty!14539 () Bool)

(assert (=> b!818791 (= e!454641 tp_is_empty!14539)))

(declare-fun b!818792 () Bool)

(declare-fun res!558881 () Bool)

(assert (=> b!818792 (=> (not res!558881) (not e!454644))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24387 0))(
  ( (V!24388 (val!7317 Int)) )
))
(declare-datatypes ((ValueCell!6854 0))(
  ( (ValueCellFull!6854 (v!9742 V!24387)) (EmptyCell!6854) )
))
(declare-datatypes ((array!45252 0))(
  ( (array!45253 (arr!21676 (Array (_ BitVec 32) ValueCell!6854)) (size!22097 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45252)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!818792 (= res!558881 (and (= (size!22097 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22096 _keys!976) (size!22097 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818793 () Bool)

(declare-fun e!454643 () Bool)

(assert (=> b!818793 (= e!454643 true)))

(declare-datatypes ((tuple2!9636 0))(
  ( (tuple2!9637 (_1!4828 (_ BitVec 64)) (_2!4828 V!24387)) )
))
(declare-fun lt!367174 () tuple2!9636)

(declare-datatypes ((List!15499 0))(
  ( (Nil!15496) (Cons!15495 (h!16624 tuple2!9636) (t!21836 List!15499)) )
))
(declare-datatypes ((ListLongMap!8473 0))(
  ( (ListLongMap!8474 (toList!4252 List!15499)) )
))
(declare-fun lt!367177 () ListLongMap!8473)

(declare-fun lt!367168 () tuple2!9636)

(declare-fun lt!367170 () ListLongMap!8473)

(declare-fun +!1796 (ListLongMap!8473 tuple2!9636) ListLongMap!8473)

(assert (=> b!818793 (= lt!367170 (+!1796 (+!1796 lt!367177 lt!367174) lt!367168))))

(declare-fun lt!367171 () ListLongMap!8473)

(declare-fun lt!367172 () ListLongMap!8473)

(assert (=> b!818793 (= (+!1796 lt!367171 lt!367168) (+!1796 lt!367172 lt!367168))))

(declare-fun zeroValueBefore!34 () V!24387)

(declare-fun zeroValueAfter!34 () V!24387)

(declare-datatypes ((Unit!27953 0))(
  ( (Unit!27954) )
))
(declare-fun lt!367176 () Unit!27953)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!175 (ListLongMap!8473 (_ BitVec 64) V!24387 V!24387) Unit!27953)

(assert (=> b!818793 (= lt!367176 (addSameAsAddTwiceSameKeyDiffValues!175 lt!367171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818793 (= lt!367168 (tuple2!9637 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!454640 () Bool)

(assert (=> b!818793 e!454640))

(declare-fun res!558876 () Bool)

(assert (=> b!818793 (=> (not res!558876) (not e!454640))))

(declare-fun lt!367173 () ListLongMap!8473)

(assert (=> b!818793 (= res!558876 (= lt!367173 lt!367172))))

(assert (=> b!818793 (= lt!367172 (+!1796 lt!367171 lt!367174))))

(assert (=> b!818793 (= lt!367174 (tuple2!9637 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun minValue!754 () V!24387)

(declare-fun defaultEntry!796 () Int)

(declare-fun lt!367169 () ListLongMap!8473)

(declare-fun getCurrentListMap!2410 (array!45250 array!45252 (_ BitVec 32) (_ BitVec 32) V!24387 V!24387 (_ BitVec 32) Int) ListLongMap!8473)

(assert (=> b!818793 (= lt!367169 (getCurrentListMap!2410 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818793 (= lt!367173 (getCurrentListMap!2410 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818794 () Bool)

(declare-fun e!454645 () Bool)

(declare-fun e!454639 () Bool)

(declare-fun mapRes!23407 () Bool)

(assert (=> b!818794 (= e!454645 (and e!454639 mapRes!23407))))

(declare-fun condMapEmpty!23407 () Bool)

(declare-fun mapDefault!23407 () ValueCell!6854)

