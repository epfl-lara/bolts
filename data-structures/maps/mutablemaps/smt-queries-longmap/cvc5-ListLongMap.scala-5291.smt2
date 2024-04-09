; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70960 () Bool)

(assert start!70960)

(declare-fun b_free!13153 () Bool)

(declare-fun b_next!13153 () Bool)

(assert (=> start!70960 (= b_free!13153 (not b_next!13153))))

(declare-fun tp!46210 () Bool)

(declare-fun b_and!22067 () Bool)

(assert (=> start!70960 (= tp!46210 b_and!22067)))

(declare-fun b!823684 () Bool)

(declare-fun e!458203 () Bool)

(declare-fun tp_is_empty!14863 () Bool)

(assert (=> b!823684 (= e!458203 tp_is_empty!14863)))

(declare-fun res!561763 () Bool)

(declare-fun e!458202 () Bool)

(assert (=> start!70960 (=> (not res!561763) (not e!458202))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70960 (= res!561763 (validMask!0 mask!1312))))

(assert (=> start!70960 e!458202))

(assert (=> start!70960 tp_is_empty!14863))

(declare-datatypes ((array!45876 0))(
  ( (array!45877 (arr!21982 (Array (_ BitVec 32) (_ BitVec 64))) (size!22403 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45876)

(declare-fun array_inv!17517 (array!45876) Bool)

(assert (=> start!70960 (array_inv!17517 _keys!976)))

(assert (=> start!70960 true))

(declare-datatypes ((V!24819 0))(
  ( (V!24820 (val!7479 Int)) )
))
(declare-datatypes ((ValueCell!7016 0))(
  ( (ValueCellFull!7016 (v!9908 V!24819)) (EmptyCell!7016) )
))
(declare-datatypes ((array!45878 0))(
  ( (array!45879 (arr!21983 (Array (_ BitVec 32) ValueCell!7016)) (size!22404 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45878)

(declare-fun e!458204 () Bool)

(declare-fun array_inv!17518 (array!45878) Bool)

(assert (=> start!70960 (and (array_inv!17518 _values!788) e!458204)))

(assert (=> start!70960 tp!46210))

(declare-fun b!823685 () Bool)

(declare-fun res!561762 () Bool)

(assert (=> b!823685 (=> (not res!561762) (not e!458202))))

(declare-datatypes ((List!15741 0))(
  ( (Nil!15738) (Cons!15737 (h!16866 (_ BitVec 64)) (t!22090 List!15741)) )
))
(declare-fun arrayNoDuplicates!0 (array!45876 (_ BitVec 32) List!15741) Bool)

(assert (=> b!823685 (= res!561762 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15738))))

(declare-fun mapNonEmpty!23911 () Bool)

(declare-fun mapRes!23911 () Bool)

(declare-fun tp!46209 () Bool)

(declare-fun e!458205 () Bool)

(assert (=> mapNonEmpty!23911 (= mapRes!23911 (and tp!46209 e!458205))))

(declare-fun mapRest!23911 () (Array (_ BitVec 32) ValueCell!7016))

(declare-fun mapKey!23911 () (_ BitVec 32))

(declare-fun mapValue!23911 () ValueCell!7016)

(assert (=> mapNonEmpty!23911 (= (arr!21983 _values!788) (store mapRest!23911 mapKey!23911 mapValue!23911))))

(declare-fun b!823686 () Bool)

(declare-fun res!561761 () Bool)

(assert (=> b!823686 (=> (not res!561761) (not e!458202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45876 (_ BitVec 32)) Bool)

(assert (=> b!823686 (= res!561761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823687 () Bool)

(assert (=> b!823687 (= e!458205 tp_is_empty!14863)))

(declare-fun b!823688 () Bool)

(declare-fun res!561760 () Bool)

(assert (=> b!823688 (=> (not res!561760) (not e!458202))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823688 (= res!561760 (and (= (size!22404 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22403 _keys!976) (size!22404 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23911 () Bool)

(assert (=> mapIsEmpty!23911 mapRes!23911))

(declare-fun b!823689 () Bool)

(assert (=> b!823689 (= e!458202 (not true))))

(declare-datatypes ((tuple2!9882 0))(
  ( (tuple2!9883 (_1!4951 (_ BitVec 64)) (_2!4951 V!24819)) )
))
(declare-datatypes ((List!15742 0))(
  ( (Nil!15739) (Cons!15738 (h!16867 tuple2!9882) (t!22091 List!15742)) )
))
(declare-datatypes ((ListLongMap!8719 0))(
  ( (ListLongMap!8720 (toList!4375 List!15742)) )
))
(declare-fun lt!371502 () ListLongMap!8719)

(declare-fun lt!371501 () ListLongMap!8719)

(assert (=> b!823689 (= lt!371502 lt!371501)))

(declare-fun zeroValueBefore!34 () V!24819)

(declare-fun zeroValueAfter!34 () V!24819)

(declare-fun minValue!754 () V!24819)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28196 0))(
  ( (Unit!28197) )
))
(declare-fun lt!371500 () Unit!28196)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!513 (array!45876 array!45878 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24819 V!24819 V!24819 V!24819 (_ BitVec 32) Int) Unit!28196)

(assert (=> b!823689 (= lt!371500 (lemmaNoChangeToArrayThenSameMapNoExtras!513 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2397 (array!45876 array!45878 (_ BitVec 32) (_ BitVec 32) V!24819 V!24819 (_ BitVec 32) Int) ListLongMap!8719)

(assert (=> b!823689 (= lt!371501 (getCurrentListMapNoExtraKeys!2397 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823689 (= lt!371502 (getCurrentListMapNoExtraKeys!2397 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823690 () Bool)

(assert (=> b!823690 (= e!458204 (and e!458203 mapRes!23911))))

(declare-fun condMapEmpty!23911 () Bool)

(declare-fun mapDefault!23911 () ValueCell!7016)

