; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70724 () Bool)

(assert start!70724)

(declare-fun b_free!12973 () Bool)

(declare-fun b_next!12973 () Bool)

(assert (=> start!70724 (= b_free!12973 (not b_next!12973))))

(declare-fun tp!45660 () Bool)

(declare-fun b_and!21853 () Bool)

(assert (=> start!70724 (= tp!45660 b_and!21853)))

(declare-fun mapNonEmpty!23632 () Bool)

(declare-fun mapRes!23632 () Bool)

(declare-fun tp!45661 () Bool)

(declare-fun e!456285 () Bool)

(assert (=> mapNonEmpty!23632 (= mapRes!23632 (and tp!45661 e!456285))))

(declare-datatypes ((V!24579 0))(
  ( (V!24580 (val!7389 Int)) )
))
(declare-datatypes ((ValueCell!6926 0))(
  ( (ValueCellFull!6926 (v!9816 V!24579)) (EmptyCell!6926) )
))
(declare-fun mapRest!23632 () (Array (_ BitVec 32) ValueCell!6926))

(declare-fun mapKey!23632 () (_ BitVec 32))

(declare-datatypes ((array!45524 0))(
  ( (array!45525 (arr!21809 (Array (_ BitVec 32) ValueCell!6926)) (size!22230 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45524)

(declare-fun mapValue!23632 () ValueCell!6926)

(assert (=> mapNonEmpty!23632 (= (arr!21809 _values!788) (store mapRest!23632 mapKey!23632 mapValue!23632))))

(declare-fun b!821034 () Bool)

(declare-fun res!560214 () Bool)

(declare-fun e!456286 () Bool)

(assert (=> b!821034 (=> (not res!560214) (not e!456286))))

(declare-datatypes ((array!45526 0))(
  ( (array!45527 (arr!21810 (Array (_ BitVec 32) (_ BitVec 64))) (size!22231 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45526)

(declare-datatypes ((List!15599 0))(
  ( (Nil!15596) (Cons!15595 (h!16724 (_ BitVec 64)) (t!21942 List!15599)) )
))
(declare-fun arrayNoDuplicates!0 (array!45526 (_ BitVec 32) List!15599) Bool)

(assert (=> b!821034 (= res!560214 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15596))))

(declare-fun b!821035 () Bool)

(declare-fun tp_is_empty!14683 () Bool)

(assert (=> b!821035 (= e!456285 tp_is_empty!14683)))

(declare-fun b!821036 () Bool)

(declare-fun res!560215 () Bool)

(assert (=> b!821036 (=> (not res!560215) (not e!456286))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821036 (= res!560215 (and (= (size!22230 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22231 _keys!976) (size!22230 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821037 () Bool)

(declare-fun res!560217 () Bool)

(assert (=> b!821037 (=> (not res!560217) (not e!456286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45526 (_ BitVec 32)) Bool)

(assert (=> b!821037 (= res!560217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!560218 () Bool)

(assert (=> start!70724 (=> (not res!560218) (not e!456286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70724 (= res!560218 (validMask!0 mask!1312))))

(assert (=> start!70724 e!456286))

(assert (=> start!70724 tp_is_empty!14683))

(declare-fun array_inv!17397 (array!45526) Bool)

(assert (=> start!70724 (array_inv!17397 _keys!976)))

(assert (=> start!70724 true))

(declare-fun e!456283 () Bool)

(declare-fun array_inv!17398 (array!45524) Bool)

(assert (=> start!70724 (and (array_inv!17398 _values!788) e!456283)))

(assert (=> start!70724 tp!45660))

(declare-fun b!821038 () Bool)

(declare-fun e!456284 () Bool)

(assert (=> b!821038 (= e!456284 true)))

(declare-datatypes ((tuple2!9738 0))(
  ( (tuple2!9739 (_1!4879 (_ BitVec 64)) (_2!4879 V!24579)) )
))
(declare-datatypes ((List!15600 0))(
  ( (Nil!15597) (Cons!15596 (h!16725 tuple2!9738) (t!21943 List!15600)) )
))
(declare-datatypes ((ListLongMap!8575 0))(
  ( (ListLongMap!8576 (toList!4303 List!15600)) )
))
(declare-fun lt!369043 () ListLongMap!8575)

(declare-fun zeroValueBefore!34 () V!24579)

(declare-fun minValue!754 () V!24579)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2438 (array!45526 array!45524 (_ BitVec 32) (_ BitVec 32) V!24579 V!24579 (_ BitVec 32) Int) ListLongMap!8575)

(assert (=> b!821038 (= lt!369043 (getCurrentListMap!2438 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821039 () Bool)

(declare-fun e!456282 () Bool)

(assert (=> b!821039 (= e!456282 tp_is_empty!14683)))

(declare-fun b!821040 () Bool)

(assert (=> b!821040 (= e!456286 (not e!456284))))

(declare-fun res!560216 () Bool)

(assert (=> b!821040 (=> res!560216 e!456284)))

(assert (=> b!821040 (= res!560216 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369044 () ListLongMap!8575)

(declare-fun lt!369045 () ListLongMap!8575)

(assert (=> b!821040 (= lt!369044 lt!369045)))

(declare-datatypes ((Unit!28059 0))(
  ( (Unit!28060) )
))
(declare-fun lt!369046 () Unit!28059)

(declare-fun zeroValueAfter!34 () V!24579)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!453 (array!45526 array!45524 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24579 V!24579 V!24579 V!24579 (_ BitVec 32) Int) Unit!28059)

(assert (=> b!821040 (= lt!369046 (lemmaNoChangeToArrayThenSameMapNoExtras!453 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2337 (array!45526 array!45524 (_ BitVec 32) (_ BitVec 32) V!24579 V!24579 (_ BitVec 32) Int) ListLongMap!8575)

(assert (=> b!821040 (= lt!369045 (getCurrentListMapNoExtraKeys!2337 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821040 (= lt!369044 (getCurrentListMapNoExtraKeys!2337 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23632 () Bool)

(assert (=> mapIsEmpty!23632 mapRes!23632))

(declare-fun b!821041 () Bool)

(assert (=> b!821041 (= e!456283 (and e!456282 mapRes!23632))))

(declare-fun condMapEmpty!23632 () Bool)

(declare-fun mapDefault!23632 () ValueCell!6926)

