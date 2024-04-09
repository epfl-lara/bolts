; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93686 () Bool)

(assert start!93686)

(declare-fun res!707822 () Bool)

(declare-fun e!603061 () Bool)

(assert (=> start!93686 (=> (not res!707822) (not e!603061))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93686 (= res!707822 (validMask!0 mask!1515))))

(assert (=> start!93686 e!603061))

(assert (=> start!93686 true))

(declare-datatypes ((V!38409 0))(
  ( (V!38410 (val!12528 Int)) )
))
(declare-datatypes ((ValueCell!11774 0))(
  ( (ValueCellFull!11774 (v!15139 V!38409)) (EmptyCell!11774) )
))
(declare-datatypes ((array!66918 0))(
  ( (array!66919 (arr!32165 (Array (_ BitVec 32) ValueCell!11774)) (size!32702 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66918)

(declare-fun e!603058 () Bool)

(declare-fun array_inv!24778 (array!66918) Bool)

(assert (=> start!93686 (and (array_inv!24778 _values!955) e!603058)))

(declare-datatypes ((array!66920 0))(
  ( (array!66921 (arr!32166 (Array (_ BitVec 32) (_ BitVec 64))) (size!32703 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66920)

(declare-fun array_inv!24779 (array!66920) Bool)

(assert (=> start!93686 (array_inv!24779 _keys!1163)))

(declare-fun mapIsEmpty!39097 () Bool)

(declare-fun mapRes!39097 () Bool)

(assert (=> mapIsEmpty!39097 mapRes!39097))

(declare-fun b!1059469 () Bool)

(declare-fun res!707821 () Bool)

(assert (=> b!1059469 (=> (not res!707821) (not e!603061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66920 (_ BitVec 32)) Bool)

(assert (=> b!1059469 (= res!707821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059470 () Bool)

(declare-fun res!707823 () Bool)

(assert (=> b!1059470 (=> (not res!707823) (not e!603061))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059470 (= res!707823 (and (= (size!32702 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32703 _keys!1163) (size!32702 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059471 () Bool)

(declare-fun e!603059 () Bool)

(declare-fun tp_is_empty!24955 () Bool)

(assert (=> b!1059471 (= e!603059 tp_is_empty!24955)))

(declare-fun mapNonEmpty!39097 () Bool)

(declare-fun tp!74904 () Bool)

(assert (=> mapNonEmpty!39097 (= mapRes!39097 (and tp!74904 e!603059))))

(declare-fun mapRest!39097 () (Array (_ BitVec 32) ValueCell!11774))

(declare-fun mapKey!39097 () (_ BitVec 32))

(declare-fun mapValue!39097 () ValueCell!11774)

(assert (=> mapNonEmpty!39097 (= (arr!32165 _values!955) (store mapRest!39097 mapKey!39097 mapValue!39097))))

(declare-fun b!1059472 () Bool)

(declare-fun e!603060 () Bool)

(assert (=> b!1059472 (= e!603058 (and e!603060 mapRes!39097))))

(declare-fun condMapEmpty!39097 () Bool)

(declare-fun mapDefault!39097 () ValueCell!11774)

