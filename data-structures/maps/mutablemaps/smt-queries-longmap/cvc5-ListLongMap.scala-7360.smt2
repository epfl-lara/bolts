; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93900 () Bool)

(assert start!93900)

(declare-fun b_free!21337 () Bool)

(declare-fun b_next!21337 () Bool)

(assert (=> start!93900 (= b_free!21337 (not b_next!21337))))

(declare-fun tp!75435 () Bool)

(declare-fun b_and!34069 () Bool)

(assert (=> start!93900 (= tp!75435 b_and!34069)))

(declare-fun b!1061550 () Bool)

(declare-fun res!708974 () Bool)

(declare-fun e!604575 () Bool)

(assert (=> b!1061550 (=> (not res!708974) (not e!604575))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38665 0))(
  ( (V!38666 (val!12624 Int)) )
))
(declare-datatypes ((ValueCell!11870 0))(
  ( (ValueCellFull!11870 (v!15235 V!38665)) (EmptyCell!11870) )
))
(declare-datatypes ((array!67276 0))(
  ( (array!67277 (arr!32342 (Array (_ BitVec 32) ValueCell!11870)) (size!32879 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67276)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67278 0))(
  ( (array!67279 (arr!32343 (Array (_ BitVec 32) (_ BitVec 64))) (size!32880 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67278)

(assert (=> b!1061550 (= res!708974 (and (= (size!32879 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32880 _keys!1163) (size!32879 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39391 () Bool)

(declare-fun mapRes!39391 () Bool)

(assert (=> mapIsEmpty!39391 mapRes!39391))

(declare-fun b!1061551 () Bool)

(declare-fun res!708975 () Bool)

(assert (=> b!1061551 (=> (not res!708975) (not e!604575))))

(declare-datatypes ((List!22665 0))(
  ( (Nil!22662) (Cons!22661 (h!23870 (_ BitVec 64)) (t!31981 List!22665)) )
))
(declare-fun arrayNoDuplicates!0 (array!67278 (_ BitVec 32) List!22665) Bool)

(assert (=> b!1061551 (= res!708975 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22662))))

(declare-fun b!1061552 () Bool)

(declare-fun e!604574 () Bool)

(declare-fun tp_is_empty!25147 () Bool)

(assert (=> b!1061552 (= e!604574 tp_is_empty!25147)))

(declare-fun b!1061553 () Bool)

(assert (=> b!1061553 (= e!604575 (not true))))

(declare-datatypes ((tuple2!16052 0))(
  ( (tuple2!16053 (_1!8036 (_ BitVec 64)) (_2!8036 V!38665)) )
))
(declare-datatypes ((List!22666 0))(
  ( (Nil!22663) (Cons!22662 (h!23871 tuple2!16052) (t!31982 List!22666)) )
))
(declare-datatypes ((ListLongMap!14033 0))(
  ( (ListLongMap!14034 (toList!7032 List!22666)) )
))
(declare-fun lt!467643 () ListLongMap!14033)

(declare-fun lt!467644 () ListLongMap!14033)

(assert (=> b!1061553 (= lt!467643 lt!467644)))

(declare-fun zeroValueBefore!47 () V!38665)

(declare-datatypes ((Unit!34739 0))(
  ( (Unit!34740) )
))
(declare-fun lt!467645 () Unit!34739)

(declare-fun minValue!907 () V!38665)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38665)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!635 (array!67278 array!67276 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38665 V!38665 V!38665 V!38665 (_ BitVec 32) Int) Unit!34739)

(assert (=> b!1061553 (= lt!467645 (lemmaNoChangeToArrayThenSameMapNoExtras!635 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3596 (array!67278 array!67276 (_ BitVec 32) (_ BitVec 32) V!38665 V!38665 (_ BitVec 32) Int) ListLongMap!14033)

(assert (=> b!1061553 (= lt!467644 (getCurrentListMapNoExtraKeys!3596 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061553 (= lt!467643 (getCurrentListMapNoExtraKeys!3596 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061554 () Bool)

(declare-fun e!604573 () Bool)

(declare-fun e!604577 () Bool)

(assert (=> b!1061554 (= e!604573 (and e!604577 mapRes!39391))))

(declare-fun condMapEmpty!39391 () Bool)

(declare-fun mapDefault!39391 () ValueCell!11870)

