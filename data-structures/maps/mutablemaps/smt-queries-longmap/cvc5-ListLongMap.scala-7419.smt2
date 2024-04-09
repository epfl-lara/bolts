; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94386 () Bool)

(assert start!94386)

(declare-fun b_free!21691 () Bool)

(declare-fun b_next!21691 () Bool)

(assert (=> start!94386 (= b_free!21691 (not b_next!21691))))

(declare-fun tp!76517 () Bool)

(declare-fun b_and!34493 () Bool)

(assert (=> start!94386 (= tp!76517 b_and!34493)))

(declare-fun b!1066861 () Bool)

(declare-fun e!608467 () Bool)

(declare-fun tp_is_empty!25501 () Bool)

(assert (=> b!1066861 (= e!608467 tp_is_empty!25501)))

(declare-fun b!1066862 () Bool)

(declare-fun res!712098 () Bool)

(declare-fun e!608465 () Bool)

(assert (=> b!1066862 (=> (not res!712098) (not e!608465))))

(declare-datatypes ((array!67962 0))(
  ( (array!67963 (arr!32678 (Array (_ BitVec 32) (_ BitVec 64))) (size!33215 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67962)

(declare-datatypes ((List!22920 0))(
  ( (Nil!22917) (Cons!22916 (h!24125 (_ BitVec 64)) (t!32250 List!22920)) )
))
(declare-fun arrayNoDuplicates!0 (array!67962 (_ BitVec 32) List!22920) Bool)

(assert (=> b!1066862 (= res!712098 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22917))))

(declare-fun b!1066863 () Bool)

(declare-fun res!712099 () Bool)

(assert (=> b!1066863 (=> (not res!712099) (not e!608465))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67962 (_ BitVec 32)) Bool)

(assert (=> b!1066863 (= res!712099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39943 () Bool)

(declare-fun mapRes!39943 () Bool)

(declare-fun tp!76518 () Bool)

(declare-fun e!608464 () Bool)

(assert (=> mapNonEmpty!39943 (= mapRes!39943 (and tp!76518 e!608464))))

(declare-datatypes ((V!39137 0))(
  ( (V!39138 (val!12801 Int)) )
))
(declare-datatypes ((ValueCell!12047 0))(
  ( (ValueCellFull!12047 (v!15416 V!39137)) (EmptyCell!12047) )
))
(declare-fun mapValue!39943 () ValueCell!12047)

(declare-datatypes ((array!67964 0))(
  ( (array!67965 (arr!32679 (Array (_ BitVec 32) ValueCell!12047)) (size!33216 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67964)

(declare-fun mapKey!39943 () (_ BitVec 32))

(declare-fun mapRest!39943 () (Array (_ BitVec 32) ValueCell!12047))

(assert (=> mapNonEmpty!39943 (= (arr!32679 _values!955) (store mapRest!39943 mapKey!39943 mapValue!39943))))

(declare-fun b!1066864 () Bool)

(assert (=> b!1066864 (= e!608464 tp_is_empty!25501)))

(declare-fun b!1066865 () Bool)

(declare-fun e!608466 () Bool)

(assert (=> b!1066865 (= e!608466 (and e!608467 mapRes!39943))))

(declare-fun condMapEmpty!39943 () Bool)

(declare-fun mapDefault!39943 () ValueCell!12047)

