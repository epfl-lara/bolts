; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20374 () Bool)

(assert start!20374)

(declare-fun b_free!5021 () Bool)

(declare-fun b_next!5021 () Bool)

(assert (=> start!20374 (= b_free!5021 (not b_next!5021))))

(declare-fun tp!18095 () Bool)

(declare-fun b_and!11785 () Bool)

(assert (=> start!20374 (= tp!18095 b_and!11785)))

(declare-fun b!200962 () Bool)

(declare-fun e!131753 () Bool)

(declare-fun e!131749 () Bool)

(assert (=> b!200962 (= e!131753 (not e!131749))))

(declare-fun res!95929 () Bool)

(assert (=> b!200962 (=> res!95929 e!131749)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200962 (= res!95929 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6149 0))(
  ( (V!6150 (val!2483 Int)) )
))
(declare-datatypes ((ValueCell!2095 0))(
  ( (ValueCellFull!2095 (v!4449 V!6149)) (EmptyCell!2095) )
))
(declare-datatypes ((array!8982 0))(
  ( (array!8983 (arr!4241 (Array (_ BitVec 32) ValueCell!2095)) (size!4566 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8982)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3752 0))(
  ( (tuple2!3753 (_1!1886 (_ BitVec 64)) (_2!1886 V!6149)) )
))
(declare-datatypes ((List!2692 0))(
  ( (Nil!2689) (Cons!2688 (h!3330 tuple2!3752) (t!7631 List!2692)) )
))
(declare-datatypes ((ListLongMap!2679 0))(
  ( (ListLongMap!2680 (toList!1355 List!2692)) )
))
(declare-fun lt!99823 () ListLongMap!2679)

(declare-fun zeroValue!615 () V!6149)

(declare-datatypes ((array!8984 0))(
  ( (array!8985 (arr!4242 (Array (_ BitVec 32) (_ BitVec 64))) (size!4567 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8984)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6149)

(declare-fun getCurrentListMap!939 (array!8984 array!8982 (_ BitVec 32) (_ BitVec 32) V!6149 V!6149 (_ BitVec 32) Int) ListLongMap!2679)

(assert (=> b!200962 (= lt!99823 (getCurrentListMap!939 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99826 () array!8982)

(declare-fun lt!99821 () ListLongMap!2679)

(assert (=> b!200962 (= lt!99821 (getCurrentListMap!939 _keys!825 lt!99826 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99820 () ListLongMap!2679)

(declare-fun lt!99822 () ListLongMap!2679)

(assert (=> b!200962 (and (= lt!99820 lt!99822) (= lt!99822 lt!99820))))

(declare-fun lt!99815 () ListLongMap!2679)

(declare-fun lt!99829 () tuple2!3752)

(declare-fun +!372 (ListLongMap!2679 tuple2!3752) ListLongMap!2679)

(assert (=> b!200962 (= lt!99822 (+!372 lt!99815 lt!99829))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6149)

(assert (=> b!200962 (= lt!99829 (tuple2!3753 k!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6051 0))(
  ( (Unit!6052) )
))
(declare-fun lt!99818 () Unit!6051)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!52 (array!8984 array!8982 (_ BitVec 32) (_ BitVec 32) V!6149 V!6149 (_ BitVec 32) (_ BitVec 64) V!6149 (_ BitVec 32) Int) Unit!6051)

(assert (=> b!200962 (= lt!99818 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!52 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!310 (array!8984 array!8982 (_ BitVec 32) (_ BitVec 32) V!6149 V!6149 (_ BitVec 32) Int) ListLongMap!2679)

(assert (=> b!200962 (= lt!99820 (getCurrentListMapNoExtraKeys!310 _keys!825 lt!99826 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200962 (= lt!99826 (array!8983 (store (arr!4241 _values!649) i!601 (ValueCellFull!2095 v!520)) (size!4566 _values!649)))))

(assert (=> b!200962 (= lt!99815 (getCurrentListMapNoExtraKeys!310 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200963 () Bool)

(declare-fun e!131752 () Bool)

(assert (=> b!200963 (= e!131752 true)))

(declare-fun lt!99814 () ListLongMap!2679)

(declare-fun lt!99816 () tuple2!3752)

(declare-fun lt!99824 () ListLongMap!2679)

(assert (=> b!200963 (= (+!372 lt!99824 lt!99816) (+!372 lt!99814 lt!99829))))

(declare-fun lt!99828 () Unit!6051)

(declare-fun lt!99817 () ListLongMap!2679)

(declare-fun addCommutativeForDiffKeys!93 (ListLongMap!2679 (_ BitVec 64) V!6149 (_ BitVec 64) V!6149) Unit!6051)

(assert (=> b!200963 (= lt!99828 (addCommutativeForDiffKeys!93 lt!99817 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!200964 () Bool)

(declare-fun res!95923 () Bool)

(assert (=> b!200964 (=> (not res!95923) (not e!131753))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200964 (= res!95923 (validKeyInArray!0 k!843))))

(declare-fun b!200965 () Bool)

(declare-fun e!131751 () Bool)

(declare-fun tp_is_empty!4877 () Bool)

(assert (=> b!200965 (= e!131751 tp_is_empty!4877)))

(declare-fun b!200967 () Bool)

(declare-fun e!131754 () Bool)

(assert (=> b!200967 (= e!131754 tp_is_empty!4877)))

(declare-fun b!200968 () Bool)

(declare-fun res!95922 () Bool)

(assert (=> b!200968 (=> (not res!95922) (not e!131753))))

(assert (=> b!200968 (= res!95922 (= (select (arr!4242 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!8384 () Bool)

(declare-fun mapRes!8384 () Bool)

(declare-fun tp!18094 () Bool)

(assert (=> mapNonEmpty!8384 (= mapRes!8384 (and tp!18094 e!131751))))

(declare-fun mapValue!8384 () ValueCell!2095)

(declare-fun mapKey!8384 () (_ BitVec 32))

(declare-fun mapRest!8384 () (Array (_ BitVec 32) ValueCell!2095))

(assert (=> mapNonEmpty!8384 (= (arr!4241 _values!649) (store mapRest!8384 mapKey!8384 mapValue!8384))))

(declare-fun b!200969 () Bool)

(declare-fun res!95924 () Bool)

(assert (=> b!200969 (=> (not res!95924) (not e!131753))))

(declare-datatypes ((List!2693 0))(
  ( (Nil!2690) (Cons!2689 (h!3331 (_ BitVec 64)) (t!7632 List!2693)) )
))
(declare-fun arrayNoDuplicates!0 (array!8984 (_ BitVec 32) List!2693) Bool)

(assert (=> b!200969 (= res!95924 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2690))))

(declare-fun mapIsEmpty!8384 () Bool)

(assert (=> mapIsEmpty!8384 mapRes!8384))

(declare-fun b!200970 () Bool)

(declare-fun res!95928 () Bool)

(assert (=> b!200970 (=> (not res!95928) (not e!131753))))

(assert (=> b!200970 (= res!95928 (and (= (size!4566 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4567 _keys!825) (size!4566 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200971 () Bool)

(assert (=> b!200971 (= e!131749 e!131752)))

(declare-fun res!95927 () Bool)

(assert (=> b!200971 (=> res!95927 e!131752)))

(assert (=> b!200971 (= res!95927 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!99825 () ListLongMap!2679)

(assert (=> b!200971 (= lt!99825 lt!99824)))

(assert (=> b!200971 (= lt!99824 (+!372 lt!99817 lt!99829))))

(declare-fun lt!99827 () Unit!6051)

(assert (=> b!200971 (= lt!99827 (addCommutativeForDiffKeys!93 lt!99815 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!200971 (= lt!99821 (+!372 lt!99825 lt!99816))))

(declare-fun lt!99819 () tuple2!3752)

(assert (=> b!200971 (= lt!99825 (+!372 lt!99822 lt!99819))))

(assert (=> b!200971 (= lt!99823 lt!99814)))

(assert (=> b!200971 (= lt!99814 (+!372 lt!99817 lt!99816))))

(assert (=> b!200971 (= lt!99817 (+!372 lt!99815 lt!99819))))

(assert (=> b!200971 (= lt!99821 (+!372 (+!372 lt!99820 lt!99819) lt!99816))))

(assert (=> b!200971 (= lt!99816 (tuple2!3753 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200971 (= lt!99819 (tuple2!3753 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun res!95921 () Bool)

(assert (=> start!20374 (=> (not res!95921) (not e!131753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20374 (= res!95921 (validMask!0 mask!1149))))

(assert (=> start!20374 e!131753))

(declare-fun e!131750 () Bool)

(declare-fun array_inv!2781 (array!8982) Bool)

(assert (=> start!20374 (and (array_inv!2781 _values!649) e!131750)))

(assert (=> start!20374 true))

(assert (=> start!20374 tp_is_empty!4877))

(declare-fun array_inv!2782 (array!8984) Bool)

(assert (=> start!20374 (array_inv!2782 _keys!825)))

(assert (=> start!20374 tp!18095))

(declare-fun b!200966 () Bool)

(declare-fun res!95925 () Bool)

(assert (=> b!200966 (=> (not res!95925) (not e!131753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8984 (_ BitVec 32)) Bool)

(assert (=> b!200966 (= res!95925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!200972 () Bool)

(assert (=> b!200972 (= e!131750 (and e!131754 mapRes!8384))))

(declare-fun condMapEmpty!8384 () Bool)

(declare-fun mapDefault!8384 () ValueCell!2095)

