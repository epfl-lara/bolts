; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93702 () Bool)

(assert start!93702)

(declare-fun res!707893 () Bool)

(declare-fun e!603182 () Bool)

(assert (=> start!93702 (=> (not res!707893) (not e!603182))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93702 (= res!707893 (validMask!0 mask!1515))))

(assert (=> start!93702 e!603182))

(assert (=> start!93702 true))

(declare-datatypes ((V!38429 0))(
  ( (V!38430 (val!12536 Int)) )
))
(declare-datatypes ((ValueCell!11782 0))(
  ( (ValueCellFull!11782 (v!15147 V!38429)) (EmptyCell!11782) )
))
(declare-datatypes ((array!66948 0))(
  ( (array!66949 (arr!32180 (Array (_ BitVec 32) ValueCell!11782)) (size!32717 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66948)

(declare-fun e!603181 () Bool)

(declare-fun array_inv!24792 (array!66948) Bool)

(assert (=> start!93702 (and (array_inv!24792 _values!955) e!603181)))

(declare-datatypes ((array!66950 0))(
  ( (array!66951 (arr!32181 (Array (_ BitVec 32) (_ BitVec 64))) (size!32718 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66950)

(declare-fun array_inv!24793 (array!66950) Bool)

(assert (=> start!93702 (array_inv!24793 _keys!1163)))

(declare-fun b!1059613 () Bool)

(declare-fun res!707894 () Bool)

(assert (=> b!1059613 (=> (not res!707894) (not e!603182))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059613 (= res!707894 (and (= (size!32717 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32718 _keys!1163) (size!32717 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059614 () Bool)

(declare-fun e!603179 () Bool)

(declare-fun tp_is_empty!24971 () Bool)

(assert (=> b!1059614 (= e!603179 tp_is_empty!24971)))

(declare-fun mapIsEmpty!39121 () Bool)

(declare-fun mapRes!39121 () Bool)

(assert (=> mapIsEmpty!39121 mapRes!39121))

(declare-fun b!1059615 () Bool)

(declare-fun e!603178 () Bool)

(assert (=> b!1059615 (= e!603181 (and e!603178 mapRes!39121))))

(declare-fun condMapEmpty!39121 () Bool)

(declare-fun mapDefault!39121 () ValueCell!11782)

