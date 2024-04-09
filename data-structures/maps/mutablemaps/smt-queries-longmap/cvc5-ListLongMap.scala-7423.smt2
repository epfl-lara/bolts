; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94410 () Bool)

(assert start!94410)

(declare-fun b_free!21715 () Bool)

(declare-fun b_next!21715 () Bool)

(assert (=> start!94410 (= b_free!21715 (not b_next!21715))))

(declare-fun tp!76590 () Bool)

(declare-fun b_and!34517 () Bool)

(assert (=> start!94410 (= tp!76590 b_and!34517)))

(declare-fun b!1067113 () Bool)

(declare-fun res!712242 () Bool)

(declare-fun e!608644 () Bool)

(assert (=> b!1067113 (=> (not res!712242) (not e!608644))))

(declare-datatypes ((array!68006 0))(
  ( (array!68007 (arr!32700 (Array (_ BitVec 32) (_ BitVec 64))) (size!33237 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68006)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68006 (_ BitVec 32)) Bool)

(assert (=> b!1067113 (= res!712242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067114 () Bool)

(declare-fun e!608647 () Bool)

(declare-fun e!608648 () Bool)

(declare-fun mapRes!39979 () Bool)

(assert (=> b!1067114 (= e!608647 (and e!608648 mapRes!39979))))

(declare-fun condMapEmpty!39979 () Bool)

(declare-datatypes ((V!39169 0))(
  ( (V!39170 (val!12813 Int)) )
))
(declare-datatypes ((ValueCell!12059 0))(
  ( (ValueCellFull!12059 (v!15428 V!39169)) (EmptyCell!12059) )
))
(declare-datatypes ((array!68008 0))(
  ( (array!68009 (arr!32701 (Array (_ BitVec 32) ValueCell!12059)) (size!33238 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68008)

(declare-fun mapDefault!39979 () ValueCell!12059)

