; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70442 () Bool)

(assert start!70442)

(declare-fun b_free!12761 () Bool)

(declare-fun b_next!12761 () Bool)

(assert (=> start!70442 (= b_free!12761 (not b_next!12761))))

(declare-fun tp!45013 () Bool)

(declare-fun b_and!21599 () Bool)

(assert (=> start!70442 (= tp!45013 b_and!21599)))

(declare-fun res!558273 () Bool)

(declare-fun e!453895 () Bool)

(assert (=> start!70442 (=> (not res!558273) (not e!453895))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70442 (= res!558273 (validMask!0 mask!1312))))

(assert (=> start!70442 e!453895))

(declare-fun tp_is_empty!14471 () Bool)

(assert (=> start!70442 tp_is_empty!14471))

(declare-datatypes ((array!45118 0))(
  ( (array!45119 (arr!21610 (Array (_ BitVec 32) (_ BitVec 64))) (size!22031 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45118)

(declare-fun array_inv!17259 (array!45118) Bool)

(assert (=> start!70442 (array_inv!17259 _keys!976)))

(assert (=> start!70442 true))

(declare-datatypes ((V!24295 0))(
  ( (V!24296 (val!7283 Int)) )
))
(declare-datatypes ((ValueCell!6820 0))(
  ( (ValueCellFull!6820 (v!9708 V!24295)) (EmptyCell!6820) )
))
(declare-datatypes ((array!45120 0))(
  ( (array!45121 (arr!21611 (Array (_ BitVec 32) ValueCell!6820)) (size!22032 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45120)

(declare-fun e!453896 () Bool)

(declare-fun array_inv!17260 (array!45120) Bool)

(assert (=> start!70442 (and (array_inv!17260 _values!788) e!453896)))

(assert (=> start!70442 tp!45013))

(declare-fun b!817788 () Bool)

(declare-fun res!558272 () Bool)

(assert (=> b!817788 (=> (not res!558272) (not e!453895))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!817788 (= res!558272 (and (= (size!22032 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22031 _keys!976) (size!22032 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817789 () Bool)

(declare-fun res!558271 () Bool)

(assert (=> b!817789 (=> (not res!558271) (not e!453895))))

(declare-datatypes ((List!15449 0))(
  ( (Nil!15446) (Cons!15445 (h!16574 (_ BitVec 64)) (t!21784 List!15449)) )
))
(declare-fun arrayNoDuplicates!0 (array!45118 (_ BitVec 32) List!15449) Bool)

(assert (=> b!817789 (= res!558271 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15446))))

(declare-fun b!817790 () Bool)

(declare-fun res!558270 () Bool)

(assert (=> b!817790 (=> (not res!558270) (not e!453895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45118 (_ BitVec 32)) Bool)

(assert (=> b!817790 (= res!558270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817791 () Bool)

(declare-fun e!453898 () Bool)

(assert (=> b!817791 (= e!453898 tp_is_empty!14471)))

(declare-fun mapNonEmpty!23302 () Bool)

(declare-fun mapRes!23302 () Bool)

(declare-fun tp!45012 () Bool)

(assert (=> mapNonEmpty!23302 (= mapRes!23302 (and tp!45012 e!453898))))

(declare-fun mapKey!23302 () (_ BitVec 32))

(declare-fun mapRest!23302 () (Array (_ BitVec 32) ValueCell!6820))

(declare-fun mapValue!23302 () ValueCell!6820)

(assert (=> mapNonEmpty!23302 (= (arr!21611 _values!788) (store mapRest!23302 mapKey!23302 mapValue!23302))))

(declare-fun mapIsEmpty!23302 () Bool)

(assert (=> mapIsEmpty!23302 mapRes!23302))

(declare-fun b!817792 () Bool)

(declare-fun e!453899 () Bool)

(assert (=> b!817792 (= e!453899 tp_is_empty!14471)))

(declare-fun b!817793 () Bool)

(declare-fun e!453900 () Bool)

(assert (=> b!817793 (= e!453900 true)))

(declare-fun zeroValueBefore!34 () V!24295)

(declare-datatypes ((tuple2!9582 0))(
  ( (tuple2!9583 (_1!4801 (_ BitVec 64)) (_2!4801 V!24295)) )
))
(declare-datatypes ((List!15450 0))(
  ( (Nil!15447) (Cons!15446 (h!16575 tuple2!9582) (t!21785 List!15450)) )
))
(declare-datatypes ((ListLongMap!8419 0))(
  ( (ListLongMap!8420 (toList!4225 List!15450)) )
))
(declare-fun lt!366429 () ListLongMap!8419)

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!24295)

(declare-fun getCurrentListMap!2389 (array!45118 array!45120 (_ BitVec 32) (_ BitVec 32) V!24295 V!24295 (_ BitVec 32) Int) ListLongMap!8419)

(assert (=> b!817793 (= lt!366429 (getCurrentListMap!2389 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817794 () Bool)

(assert (=> b!817794 (= e!453895 (not e!453900))))

(declare-fun res!558274 () Bool)

(assert (=> b!817794 (=> res!558274 e!453900)))

(assert (=> b!817794 (= res!558274 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366427 () ListLongMap!8419)

(declare-fun lt!366426 () ListLongMap!8419)

(assert (=> b!817794 (= lt!366427 lt!366426)))

(declare-datatypes ((Unit!27902 0))(
  ( (Unit!27903) )
))
(declare-fun lt!366428 () Unit!27902)

(declare-fun zeroValueAfter!34 () V!24295)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!386 (array!45118 array!45120 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24295 V!24295 V!24295 V!24295 (_ BitVec 32) Int) Unit!27902)

(assert (=> b!817794 (= lt!366428 (lemmaNoChangeToArrayThenSameMapNoExtras!386 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2270 (array!45118 array!45120 (_ BitVec 32) (_ BitVec 32) V!24295 V!24295 (_ BitVec 32) Int) ListLongMap!8419)

(assert (=> b!817794 (= lt!366426 (getCurrentListMapNoExtraKeys!2270 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817794 (= lt!366427 (getCurrentListMapNoExtraKeys!2270 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817795 () Bool)

(assert (=> b!817795 (= e!453896 (and e!453899 mapRes!23302))))

(declare-fun condMapEmpty!23302 () Bool)

(declare-fun mapDefault!23302 () ValueCell!6820)

