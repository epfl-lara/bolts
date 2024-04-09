; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70954 () Bool)

(assert start!70954)

(declare-fun b_free!13147 () Bool)

(declare-fun b_next!13147 () Bool)

(assert (=> start!70954 (= b_free!13147 (not b_next!13147))))

(declare-fun tp!46192 () Bool)

(declare-fun b_and!22061 () Bool)

(assert (=> start!70954 (= tp!46192 b_and!22061)))

(declare-fun b!823621 () Bool)

(declare-fun res!561727 () Bool)

(declare-fun e!458160 () Bool)

(assert (=> b!823621 (=> (not res!561727) (not e!458160))))

(declare-datatypes ((array!45864 0))(
  ( (array!45865 (arr!21976 (Array (_ BitVec 32) (_ BitVec 64))) (size!22397 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45864)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24811 0))(
  ( (V!24812 (val!7476 Int)) )
))
(declare-datatypes ((ValueCell!7013 0))(
  ( (ValueCellFull!7013 (v!9905 V!24811)) (EmptyCell!7013) )
))
(declare-datatypes ((array!45866 0))(
  ( (array!45867 (arr!21977 (Array (_ BitVec 32) ValueCell!7013)) (size!22398 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45866)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823621 (= res!561727 (and (= (size!22398 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22397 _keys!976) (size!22398 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23902 () Bool)

(declare-fun mapRes!23902 () Bool)

(declare-fun tp!46191 () Bool)

(declare-fun e!458159 () Bool)

(assert (=> mapNonEmpty!23902 (= mapRes!23902 (and tp!46191 e!458159))))

(declare-fun mapRest!23902 () (Array (_ BitVec 32) ValueCell!7013))

(declare-fun mapValue!23902 () ValueCell!7013)

(declare-fun mapKey!23902 () (_ BitVec 32))

(assert (=> mapNonEmpty!23902 (= (arr!21977 _values!788) (store mapRest!23902 mapKey!23902 mapValue!23902))))

(declare-fun b!823622 () Bool)

(declare-fun res!561724 () Bool)

(assert (=> b!823622 (=> (not res!561724) (not e!458160))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45864 (_ BitVec 32)) Bool)

(assert (=> b!823622 (= res!561724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823623 () Bool)

(assert (=> b!823623 (= e!458160 (not true))))

(declare-datatypes ((tuple2!9876 0))(
  ( (tuple2!9877 (_1!4948 (_ BitVec 64)) (_2!4948 V!24811)) )
))
(declare-datatypes ((List!15736 0))(
  ( (Nil!15733) (Cons!15732 (h!16861 tuple2!9876) (t!22085 List!15736)) )
))
(declare-datatypes ((ListLongMap!8713 0))(
  ( (ListLongMap!8714 (toList!4372 List!15736)) )
))
(declare-fun lt!371473 () ListLongMap!8713)

(declare-fun lt!371475 () ListLongMap!8713)

(assert (=> b!823623 (= lt!371473 lt!371475)))

(declare-fun zeroValueBefore!34 () V!24811)

(declare-fun zeroValueAfter!34 () V!24811)

(declare-fun minValue!754 () V!24811)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28190 0))(
  ( (Unit!28191) )
))
(declare-fun lt!371474 () Unit!28190)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!510 (array!45864 array!45866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24811 V!24811 V!24811 V!24811 (_ BitVec 32) Int) Unit!28190)

(assert (=> b!823623 (= lt!371474 (lemmaNoChangeToArrayThenSameMapNoExtras!510 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2394 (array!45864 array!45866 (_ BitVec 32) (_ BitVec 32) V!24811 V!24811 (_ BitVec 32) Int) ListLongMap!8713)

(assert (=> b!823623 (= lt!371475 (getCurrentListMapNoExtraKeys!2394 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823623 (= lt!371473 (getCurrentListMapNoExtraKeys!2394 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!561726 () Bool)

(assert (=> start!70954 (=> (not res!561726) (not e!458160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70954 (= res!561726 (validMask!0 mask!1312))))

(assert (=> start!70954 e!458160))

(declare-fun tp_is_empty!14857 () Bool)

(assert (=> start!70954 tp_is_empty!14857))

(declare-fun array_inv!17511 (array!45864) Bool)

(assert (=> start!70954 (array_inv!17511 _keys!976)))

(assert (=> start!70954 true))

(declare-fun e!458156 () Bool)

(declare-fun array_inv!17512 (array!45866) Bool)

(assert (=> start!70954 (and (array_inv!17512 _values!788) e!458156)))

(assert (=> start!70954 tp!46192))

(declare-fun mapIsEmpty!23902 () Bool)

(assert (=> mapIsEmpty!23902 mapRes!23902))

(declare-fun b!823624 () Bool)

(declare-fun e!458157 () Bool)

(assert (=> b!823624 (= e!458156 (and e!458157 mapRes!23902))))

(declare-fun condMapEmpty!23902 () Bool)

(declare-fun mapDefault!23902 () ValueCell!7013)

