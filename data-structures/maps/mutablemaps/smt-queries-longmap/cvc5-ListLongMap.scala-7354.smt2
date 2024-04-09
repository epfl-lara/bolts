; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93864 () Bool)

(assert start!93864)

(declare-fun b_free!21301 () Bool)

(declare-fun b_next!21301 () Bool)

(assert (=> start!93864 (= b_free!21301 (not b_next!21301))))

(declare-fun tp!75326 () Bool)

(declare-fun b_and!34033 () Bool)

(assert (=> start!93864 (= tp!75326 b_and!34033)))

(declare-fun res!708756 () Bool)

(declare-fun e!604306 () Bool)

(assert (=> start!93864 (=> (not res!708756) (not e!604306))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93864 (= res!708756 (validMask!0 mask!1515))))

(assert (=> start!93864 e!604306))

(assert (=> start!93864 true))

(declare-fun tp_is_empty!25111 () Bool)

(assert (=> start!93864 tp_is_empty!25111))

(declare-datatypes ((V!38617 0))(
  ( (V!38618 (val!12606 Int)) )
))
(declare-datatypes ((ValueCell!11852 0))(
  ( (ValueCellFull!11852 (v!15217 V!38617)) (EmptyCell!11852) )
))
(declare-datatypes ((array!67208 0))(
  ( (array!67209 (arr!32308 (Array (_ BitVec 32) ValueCell!11852)) (size!32845 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67208)

(declare-fun e!604303 () Bool)

(declare-fun array_inv!24876 (array!67208) Bool)

(assert (=> start!93864 (and (array_inv!24876 _values!955) e!604303)))

(assert (=> start!93864 tp!75326))

(declare-datatypes ((array!67210 0))(
  ( (array!67211 (arr!32309 (Array (_ BitVec 32) (_ BitVec 64))) (size!32846 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67210)

(declare-fun array_inv!24877 (array!67210) Bool)

(assert (=> start!93864 (array_inv!24877 _keys!1163)))

(declare-fun b!1061172 () Bool)

(declare-fun e!604304 () Bool)

(assert (=> b!1061172 (= e!604304 tp_is_empty!25111)))

(declare-fun mapIsEmpty!39337 () Bool)

(declare-fun mapRes!39337 () Bool)

(assert (=> mapIsEmpty!39337 mapRes!39337))

(declare-fun b!1061173 () Bool)

(declare-fun e!604307 () Bool)

(assert (=> b!1061173 (= e!604303 (and e!604307 mapRes!39337))))

(declare-fun condMapEmpty!39337 () Bool)

(declare-fun mapDefault!39337 () ValueCell!11852)

