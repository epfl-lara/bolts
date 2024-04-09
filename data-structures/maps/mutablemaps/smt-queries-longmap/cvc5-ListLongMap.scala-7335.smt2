; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93738 () Bool)

(assert start!93738)

(declare-fun b_free!21187 () Bool)

(declare-fun b_next!21187 () Bool)

(assert (=> start!93738 (= b_free!21187 (not b_next!21187))))

(declare-fun tp!74981 () Bool)

(declare-fun b_and!33915 () Bool)

(assert (=> start!93738 (= tp!74981 b_and!33915)))

(declare-fun res!708047 () Bool)

(declare-fun e!603404 () Bool)

(assert (=> start!93738 (=> (not res!708047) (not e!603404))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93738 (= res!708047 (validMask!0 mask!1515))))

(assert (=> start!93738 e!603404))

(assert (=> start!93738 true))

(declare-fun tp_is_empty!24997 () Bool)

(assert (=> start!93738 tp_is_empty!24997))

(declare-datatypes ((V!38465 0))(
  ( (V!38466 (val!12549 Int)) )
))
(declare-datatypes ((ValueCell!11795 0))(
  ( (ValueCellFull!11795 (v!15160 V!38465)) (EmptyCell!11795) )
))
(declare-datatypes ((array!67000 0))(
  ( (array!67001 (arr!32205 (Array (_ BitVec 32) ValueCell!11795)) (size!32742 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67000)

(declare-fun e!603402 () Bool)

(declare-fun array_inv!24814 (array!67000) Bool)

(assert (=> start!93738 (and (array_inv!24814 _values!955) e!603402)))

(assert (=> start!93738 tp!74981))

(declare-datatypes ((array!67002 0))(
  ( (array!67003 (arr!32206 (Array (_ BitVec 32) (_ BitVec 64))) (size!32743 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67002)

(declare-fun array_inv!24815 (array!67002) Bool)

(assert (=> start!93738 (array_inv!24815 _keys!1163)))

(declare-fun b!1059902 () Bool)

(declare-fun e!603401 () Bool)

(assert (=> b!1059902 (= e!603401 tp_is_empty!24997)))

(declare-fun b!1059903 () Bool)

(declare-fun e!603400 () Bool)

(declare-fun mapRes!39163 () Bool)

(assert (=> b!1059903 (= e!603402 (and e!603400 mapRes!39163))))

(declare-fun condMapEmpty!39163 () Bool)

(declare-fun mapDefault!39163 () ValueCell!11795)

