; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71044 () Bool)

(assert start!71044)

(declare-fun b_free!13223 () Bool)

(declare-fun b_next!13223 () Bool)

(assert (=> start!71044 (= b_free!13223 (not b_next!13223))))

(declare-fun tp!46423 () Bool)

(declare-fun b_and!22145 () Bool)

(assert (=> start!71044 (= tp!46423 b_and!22145)))

(declare-fun b!824557 () Bool)

(declare-fun e!458837 () Bool)

(declare-fun e!458836 () Bool)

(assert (=> b!824557 (= e!458837 (not e!458836))))

(declare-fun res!562265 () Bool)

(assert (=> b!824557 (=> res!562265 e!458836)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!824557 (= res!562265 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24911 0))(
  ( (V!24912 (val!7514 Int)) )
))
(declare-datatypes ((tuple2!9936 0))(
  ( (tuple2!9937 (_1!4978 (_ BitVec 64)) (_2!4978 V!24911)) )
))
(declare-datatypes ((List!15787 0))(
  ( (Nil!15784) (Cons!15783 (h!16912 tuple2!9936) (t!22138 List!15787)) )
))
(declare-datatypes ((ListLongMap!8773 0))(
  ( (ListLongMap!8774 (toList!4402 List!15787)) )
))
(declare-fun lt!371911 () ListLongMap!8773)

(declare-fun lt!371908 () ListLongMap!8773)

(assert (=> b!824557 (= lt!371911 lt!371908)))

(declare-fun zeroValueBefore!34 () V!24911)

(declare-datatypes ((array!46012 0))(
  ( (array!46013 (arr!22049 (Array (_ BitVec 32) (_ BitVec 64))) (size!22470 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46012)

(declare-fun zeroValueAfter!34 () V!24911)

(declare-fun minValue!754 () V!24911)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28246 0))(
  ( (Unit!28247) )
))
(declare-fun lt!371909 () Unit!28246)

(declare-datatypes ((ValueCell!7051 0))(
  ( (ValueCellFull!7051 (v!9943 V!24911)) (EmptyCell!7051) )
))
(declare-datatypes ((array!46014 0))(
  ( (array!46015 (arr!22050 (Array (_ BitVec 32) ValueCell!7051)) (size!22471 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46014)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!538 (array!46012 array!46014 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24911 V!24911 V!24911 V!24911 (_ BitVec 32) Int) Unit!28246)

(assert (=> b!824557 (= lt!371909 (lemmaNoChangeToArrayThenSameMapNoExtras!538 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2422 (array!46012 array!46014 (_ BitVec 32) (_ BitVec 32) V!24911 V!24911 (_ BitVec 32) Int) ListLongMap!8773)

(assert (=> b!824557 (= lt!371908 (getCurrentListMapNoExtraKeys!2422 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824557 (= lt!371911 (getCurrentListMapNoExtraKeys!2422 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!562264 () Bool)

(assert (=> start!71044 (=> (not res!562264) (not e!458837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71044 (= res!562264 (validMask!0 mask!1312))))

(assert (=> start!71044 e!458837))

(declare-fun tp_is_empty!14933 () Bool)

(assert (=> start!71044 tp_is_empty!14933))

(declare-fun array_inv!17573 (array!46012) Bool)

(assert (=> start!71044 (array_inv!17573 _keys!976)))

(assert (=> start!71044 true))

(declare-fun e!458839 () Bool)

(declare-fun array_inv!17574 (array!46014) Bool)

(assert (=> start!71044 (and (array_inv!17574 _values!788) e!458839)))

(assert (=> start!71044 tp!46423))

(declare-fun b!824558 () Bool)

(assert (=> b!824558 (= e!458836 true)))

(declare-fun lt!371910 () ListLongMap!8773)

(declare-fun getCurrentListMap!2515 (array!46012 array!46014 (_ BitVec 32) (_ BitVec 32) V!24911 V!24911 (_ BitVec 32) Int) ListLongMap!8773)

(assert (=> b!824558 (= lt!371910 (getCurrentListMap!2515 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824559 () Bool)

(declare-fun e!458838 () Bool)

(assert (=> b!824559 (= e!458838 tp_is_empty!14933)))

(declare-fun b!824560 () Bool)

(declare-fun res!562266 () Bool)

(assert (=> b!824560 (=> (not res!562266) (not e!458837))))

(declare-datatypes ((List!15788 0))(
  ( (Nil!15785) (Cons!15784 (h!16913 (_ BitVec 64)) (t!22139 List!15788)) )
))
(declare-fun arrayNoDuplicates!0 (array!46012 (_ BitVec 32) List!15788) Bool)

(assert (=> b!824560 (= res!562266 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15785))))

(declare-fun b!824561 () Bool)

(declare-fun res!562268 () Bool)

(assert (=> b!824561 (=> (not res!562268) (not e!458837))))

(assert (=> b!824561 (= res!562268 (and (= (size!22471 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22470 _keys!976) (size!22471 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824562 () Bool)

(declare-fun e!458834 () Bool)

(declare-fun mapRes!24019 () Bool)

(assert (=> b!824562 (= e!458839 (and e!458834 mapRes!24019))))

(declare-fun condMapEmpty!24019 () Bool)

(declare-fun mapDefault!24019 () ValueCell!7051)

