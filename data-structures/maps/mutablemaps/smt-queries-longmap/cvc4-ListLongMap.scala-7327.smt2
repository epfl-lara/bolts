; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93684 () Bool)

(assert start!93684)

(declare-fun b!1059451 () Bool)

(declare-fun e!603046 () Bool)

(declare-fun tp_is_empty!24953 () Bool)

(assert (=> b!1059451 (= e!603046 tp_is_empty!24953)))

(declare-fun mapIsEmpty!39094 () Bool)

(declare-fun mapRes!39094 () Bool)

(assert (=> mapIsEmpty!39094 mapRes!39094))

(declare-fun res!707812 () Bool)

(declare-fun e!603047 () Bool)

(assert (=> start!93684 (=> (not res!707812) (not e!603047))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93684 (= res!707812 (validMask!0 mask!1515))))

(assert (=> start!93684 e!603047))

(assert (=> start!93684 true))

(declare-datatypes ((V!38405 0))(
  ( (V!38406 (val!12527 Int)) )
))
(declare-datatypes ((ValueCell!11773 0))(
  ( (ValueCellFull!11773 (v!15138 V!38405)) (EmptyCell!11773) )
))
(declare-datatypes ((array!66914 0))(
  ( (array!66915 (arr!32163 (Array (_ BitVec 32) ValueCell!11773)) (size!32700 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66914)

(declare-fun e!603045 () Bool)

(declare-fun array_inv!24776 (array!66914) Bool)

(assert (=> start!93684 (and (array_inv!24776 _values!955) e!603045)))

(declare-datatypes ((array!66916 0))(
  ( (array!66917 (arr!32164 (Array (_ BitVec 32) (_ BitVec 64))) (size!32701 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66916)

(declare-fun array_inv!24777 (array!66916) Bool)

(assert (=> start!93684 (array_inv!24777 _keys!1163)))

(declare-fun mapNonEmpty!39094 () Bool)

(declare-fun tp!74901 () Bool)

(assert (=> mapNonEmpty!39094 (= mapRes!39094 (and tp!74901 e!603046))))

(declare-fun mapKey!39094 () (_ BitVec 32))

(declare-fun mapRest!39094 () (Array (_ BitVec 32) ValueCell!11773))

(declare-fun mapValue!39094 () ValueCell!11773)

(assert (=> mapNonEmpty!39094 (= (arr!32163 _values!955) (store mapRest!39094 mapKey!39094 mapValue!39094))))

(declare-fun b!1059452 () Bool)

(declare-fun e!603043 () Bool)

(assert (=> b!1059452 (= e!603045 (and e!603043 mapRes!39094))))

(declare-fun condMapEmpty!39094 () Bool)

(declare-fun mapDefault!39094 () ValueCell!11773)

