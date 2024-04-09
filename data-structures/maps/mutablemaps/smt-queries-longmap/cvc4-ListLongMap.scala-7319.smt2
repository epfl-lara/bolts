; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93592 () Bool)

(assert start!93592)

(declare-fun res!707536 () Bool)

(declare-fun e!602591 () Bool)

(assert (=> start!93592 (=> (not res!707536) (not e!602591))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93592 (= res!707536 (validMask!0 mask!1515))))

(assert (=> start!93592 e!602591))

(assert (=> start!93592 true))

(declare-datatypes ((V!38341 0))(
  ( (V!38342 (val!12503 Int)) )
))
(declare-datatypes ((ValueCell!11749 0))(
  ( (ValueCellFull!11749 (v!15113 V!38341)) (EmptyCell!11749) )
))
(declare-datatypes ((array!66816 0))(
  ( (array!66817 (arr!32119 (Array (_ BitVec 32) ValueCell!11749)) (size!32656 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66816)

(declare-fun e!602592 () Bool)

(declare-fun array_inv!24740 (array!66816) Bool)

(assert (=> start!93592 (and (array_inv!24740 _values!955) e!602592)))

(declare-datatypes ((array!66818 0))(
  ( (array!66819 (arr!32120 (Array (_ BitVec 32) (_ BitVec 64))) (size!32657 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66818)

(declare-fun array_inv!24741 (array!66818) Bool)

(assert (=> start!93592 (array_inv!24741 _keys!1163)))

(declare-fun b!1058895 () Bool)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1058895 (= e!602591 (and (= (size!32656 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32657 _keys!1163) (size!32656 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (size!32657 _keys!1163) (bvadd #b00000000000000000000000000000001 mask!1515)))))))

(declare-fun b!1058896 () Bool)

(declare-fun e!602590 () Bool)

(declare-fun mapRes!39007 () Bool)

(assert (=> b!1058896 (= e!602592 (and e!602590 mapRes!39007))))

(declare-fun condMapEmpty!39007 () Bool)

(declare-fun mapDefault!39007 () ValueCell!11749)

