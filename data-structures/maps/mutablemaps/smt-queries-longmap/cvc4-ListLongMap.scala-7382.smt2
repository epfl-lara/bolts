; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94094 () Bool)

(assert start!94094)

(declare-fun b_free!21473 () Bool)

(declare-fun b_next!21473 () Bool)

(assert (=> start!94094 (= b_free!21473 (not b_next!21473))))

(declare-fun tp!75852 () Bool)

(declare-fun b_and!34233 () Bool)

(assert (=> start!94094 (= tp!75852 b_and!34233)))

(declare-fun b!1063710 () Bool)

(declare-fun res!710277 () Bool)

(declare-fun e!606181 () Bool)

(assert (=> b!1063710 (=> (not res!710277) (not e!606181))))

(declare-datatypes ((array!67540 0))(
  ( (array!67541 (arr!32471 (Array (_ BitVec 32) (_ BitVec 64))) (size!33008 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67540)

(declare-datatypes ((List!22765 0))(
  ( (Nil!22762) (Cons!22761 (h!23970 (_ BitVec 64)) (t!32087 List!22765)) )
))
(declare-fun arrayNoDuplicates!0 (array!67540 (_ BitVec 32) List!22765) Bool)

(assert (=> b!1063710 (= res!710277 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22762))))

(declare-fun mapNonEmpty!39604 () Bool)

(declare-fun mapRes!39604 () Bool)

(declare-fun tp!75851 () Bool)

(declare-fun e!606183 () Bool)

(assert (=> mapNonEmpty!39604 (= mapRes!39604 (and tp!75851 e!606183))))

(declare-datatypes ((V!38845 0))(
  ( (V!38846 (val!12692 Int)) )
))
(declare-datatypes ((ValueCell!11938 0))(
  ( (ValueCellFull!11938 (v!15305 V!38845)) (EmptyCell!11938) )
))
(declare-fun mapValue!39604 () ValueCell!11938)

(declare-fun mapRest!39604 () (Array (_ BitVec 32) ValueCell!11938))

(declare-datatypes ((array!67542 0))(
  ( (array!67543 (arr!32472 (Array (_ BitVec 32) ValueCell!11938)) (size!33009 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67542)

(declare-fun mapKey!39604 () (_ BitVec 32))

(assert (=> mapNonEmpty!39604 (= (arr!32472 _values!955) (store mapRest!39604 mapKey!39604 mapValue!39604))))

(declare-fun b!1063711 () Bool)

(declare-fun e!606182 () Bool)

(declare-fun e!606184 () Bool)

(assert (=> b!1063711 (= e!606182 (and e!606184 mapRes!39604))))

(declare-fun condMapEmpty!39604 () Bool)

(declare-fun mapDefault!39604 () ValueCell!11938)

