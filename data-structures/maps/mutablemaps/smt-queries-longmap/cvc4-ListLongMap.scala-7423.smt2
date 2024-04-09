; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94414 () Bool)

(assert start!94414)

(declare-fun b_free!21719 () Bool)

(declare-fun b_next!21719 () Bool)

(assert (=> start!94414 (= b_free!21719 (not b_next!21719))))

(declare-fun tp!76602 () Bool)

(declare-fun b_and!34521 () Bool)

(assert (=> start!94414 (= tp!76602 b_and!34521)))

(declare-fun b!1067155 () Bool)

(declare-fun res!712267 () Bool)

(declare-fun e!608677 () Bool)

(assert (=> b!1067155 (=> (not res!712267) (not e!608677))))

(declare-datatypes ((array!68014 0))(
  ( (array!68015 (arr!32704 (Array (_ BitVec 32) (_ BitVec 64))) (size!33241 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68014)

(declare-datatypes ((List!22934 0))(
  ( (Nil!22931) (Cons!22930 (h!24139 (_ BitVec 64)) (t!32264 List!22934)) )
))
(declare-fun arrayNoDuplicates!0 (array!68014 (_ BitVec 32) List!22934) Bool)

(assert (=> b!1067155 (= res!712267 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22931))))

(declare-fun b!1067156 () Bool)

(declare-fun e!608674 () Bool)

(declare-fun e!608675 () Bool)

(declare-fun mapRes!39985 () Bool)

(assert (=> b!1067156 (= e!608674 (and e!608675 mapRes!39985))))

(declare-fun condMapEmpty!39985 () Bool)

(declare-datatypes ((V!39173 0))(
  ( (V!39174 (val!12815 Int)) )
))
(declare-datatypes ((ValueCell!12061 0))(
  ( (ValueCellFull!12061 (v!15430 V!39173)) (EmptyCell!12061) )
))
(declare-datatypes ((array!68016 0))(
  ( (array!68017 (arr!32705 (Array (_ BitVec 32) ValueCell!12061)) (size!33242 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68016)

(declare-fun mapDefault!39985 () ValueCell!12061)

