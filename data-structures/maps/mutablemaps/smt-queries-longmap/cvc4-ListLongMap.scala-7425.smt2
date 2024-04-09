; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94426 () Bool)

(assert start!94426)

(declare-fun b_free!21731 () Bool)

(declare-fun b_next!21731 () Bool)

(assert (=> start!94426 (= b_free!21731 (not b_next!21731))))

(declare-fun tp!76638 () Bool)

(declare-fun b_and!34533 () Bool)

(assert (=> start!94426 (= tp!76638 b_and!34533)))

(declare-fun b!1067281 () Bool)

(declare-fun res!712337 () Bool)

(declare-fun e!608767 () Bool)

(assert (=> b!1067281 (=> (not res!712337) (not e!608767))))

(declare-datatypes ((array!68036 0))(
  ( (array!68037 (arr!32715 (Array (_ BitVec 32) (_ BitVec 64))) (size!33252 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68036)

(declare-datatypes ((List!22943 0))(
  ( (Nil!22940) (Cons!22939 (h!24148 (_ BitVec 64)) (t!32273 List!22943)) )
))
(declare-fun arrayNoDuplicates!0 (array!68036 (_ BitVec 32) List!22943) Bool)

(assert (=> b!1067281 (= res!712337 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22940))))

(declare-fun res!712338 () Bool)

(assert (=> start!94426 (=> (not res!712338) (not e!608767))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94426 (= res!712338 (validMask!0 mask!1515))))

(assert (=> start!94426 e!608767))

(assert (=> start!94426 true))

(declare-fun tp_is_empty!25541 () Bool)

(assert (=> start!94426 tp_is_empty!25541))

(declare-datatypes ((V!39189 0))(
  ( (V!39190 (val!12821 Int)) )
))
(declare-datatypes ((ValueCell!12067 0))(
  ( (ValueCellFull!12067 (v!15436 V!39189)) (EmptyCell!12067) )
))
(declare-datatypes ((array!68038 0))(
  ( (array!68039 (arr!32716 (Array (_ BitVec 32) ValueCell!12067)) (size!33253 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68038)

(declare-fun e!608764 () Bool)

(declare-fun array_inv!25164 (array!68038) Bool)

(assert (=> start!94426 (and (array_inv!25164 _values!955) e!608764)))

(assert (=> start!94426 tp!76638))

(declare-fun array_inv!25165 (array!68036) Bool)

(assert (=> start!94426 (array_inv!25165 _keys!1163)))

(declare-fun b!1067282 () Bool)

(declare-fun e!608765 () Bool)

(declare-fun mapRes!40003 () Bool)

(assert (=> b!1067282 (= e!608764 (and e!608765 mapRes!40003))))

(declare-fun condMapEmpty!40003 () Bool)

(declare-fun mapDefault!40003 () ValueCell!12067)

