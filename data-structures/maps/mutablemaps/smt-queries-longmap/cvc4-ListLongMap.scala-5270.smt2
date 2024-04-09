; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70798 () Bool)

(assert start!70798)

(declare-fun b_free!13031 () Bool)

(declare-fun b_next!13031 () Bool)

(assert (=> start!70798 (= b_free!13031 (not b_next!13031))))

(declare-fun tp!45838 () Bool)

(declare-fun b_and!21921 () Bool)

(assert (=> start!70798 (= tp!45838 b_and!21921)))

(declare-fun res!560720 () Bool)

(declare-fun e!456908 () Bool)

(assert (=> start!70798 (=> (not res!560720) (not e!456908))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70798 (= res!560720 (validMask!0 mask!1312))))

(assert (=> start!70798 e!456908))

(declare-fun tp_is_empty!14741 () Bool)

(assert (=> start!70798 tp_is_empty!14741))

(declare-datatypes ((array!45636 0))(
  ( (array!45637 (arr!21864 (Array (_ BitVec 32) (_ BitVec 64))) (size!22285 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45636)

(declare-fun array_inv!17437 (array!45636) Bool)

(assert (=> start!70798 (array_inv!17437 _keys!976)))

(assert (=> start!70798 true))

(declare-datatypes ((V!24655 0))(
  ( (V!24656 (val!7418 Int)) )
))
(declare-datatypes ((ValueCell!6955 0))(
  ( (ValueCellFull!6955 (v!9845 V!24655)) (EmptyCell!6955) )
))
(declare-datatypes ((array!45638 0))(
  ( (array!45639 (arr!21865 (Array (_ BitVec 32) ValueCell!6955)) (size!22286 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45638)

(declare-fun e!456907 () Bool)

(declare-fun array_inv!17438 (array!45638) Bool)

(assert (=> start!70798 (and (array_inv!17438 _values!788) e!456907)))

(assert (=> start!70798 tp!45838))

(declare-fun mapNonEmpty!23722 () Bool)

(declare-fun mapRes!23722 () Bool)

(declare-fun tp!45837 () Bool)

(declare-fun e!456909 () Bool)

(assert (=> mapNonEmpty!23722 (= mapRes!23722 (and tp!45837 e!456909))))

(declare-fun mapValue!23722 () ValueCell!6955)

(declare-fun mapRest!23722 () (Array (_ BitVec 32) ValueCell!6955))

(declare-fun mapKey!23722 () (_ BitVec 32))

(assert (=> mapNonEmpty!23722 (= (arr!21865 _values!788) (store mapRest!23722 mapKey!23722 mapValue!23722))))

(declare-fun b!821887 () Bool)

(declare-fun e!456906 () Bool)

(assert (=> b!821887 (= e!456908 (not e!456906))))

(declare-fun res!560717 () Bool)

(assert (=> b!821887 (=> res!560717 e!456906)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!821887 (= res!560717 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9786 0))(
  ( (tuple2!9787 (_1!4903 (_ BitVec 64)) (_2!4903 V!24655)) )
))
(declare-datatypes ((List!15646 0))(
  ( (Nil!15643) (Cons!15642 (h!16771 tuple2!9786) (t!21991 List!15646)) )
))
(declare-datatypes ((ListLongMap!8623 0))(
  ( (ListLongMap!8624 (toList!4327 List!15646)) )
))
(declare-fun lt!369563 () ListLongMap!8623)

(declare-fun lt!369570 () ListLongMap!8623)

(assert (=> b!821887 (= lt!369563 lt!369570)))

(declare-fun zeroValueBefore!34 () V!24655)

(declare-fun zeroValueAfter!34 () V!24655)

(declare-fun minValue!754 () V!24655)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28096 0))(
  ( (Unit!28097) )
))
(declare-fun lt!369569 () Unit!28096)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!471 (array!45636 array!45638 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24655 V!24655 V!24655 V!24655 (_ BitVec 32) Int) Unit!28096)

(assert (=> b!821887 (= lt!369569 (lemmaNoChangeToArrayThenSameMapNoExtras!471 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2355 (array!45636 array!45638 (_ BitVec 32) (_ BitVec 32) V!24655 V!24655 (_ BitVec 32) Int) ListLongMap!8623)

(assert (=> b!821887 (= lt!369570 (getCurrentListMapNoExtraKeys!2355 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821887 (= lt!369563 (getCurrentListMapNoExtraKeys!2355 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821888 () Bool)

(declare-fun e!456910 () Bool)

(assert (=> b!821888 (= e!456907 (and e!456910 mapRes!23722))))

(declare-fun condMapEmpty!23722 () Bool)

(declare-fun mapDefault!23722 () ValueCell!6955)

