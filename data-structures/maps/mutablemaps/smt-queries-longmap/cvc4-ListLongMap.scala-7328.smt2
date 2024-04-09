; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93690 () Bool)

(assert start!93690)

(declare-fun res!707841 () Bool)

(declare-fun e!603092 () Bool)

(assert (=> start!93690 (=> (not res!707841) (not e!603092))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93690 (= res!707841 (validMask!0 mask!1515))))

(assert (=> start!93690 e!603092))

(assert (=> start!93690 true))

(declare-datatypes ((V!38413 0))(
  ( (V!38414 (val!12530 Int)) )
))
(declare-datatypes ((ValueCell!11776 0))(
  ( (ValueCellFull!11776 (v!15141 V!38413)) (EmptyCell!11776) )
))
(declare-datatypes ((array!66926 0))(
  ( (array!66927 (arr!32169 (Array (_ BitVec 32) ValueCell!11776)) (size!32706 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66926)

(declare-fun e!603090 () Bool)

(declare-fun array_inv!24782 (array!66926) Bool)

(assert (=> start!93690 (and (array_inv!24782 _values!955) e!603090)))

(declare-datatypes ((array!66928 0))(
  ( (array!66929 (arr!32170 (Array (_ BitVec 32) (_ BitVec 64))) (size!32707 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66928)

(declare-fun array_inv!24783 (array!66928) Bool)

(assert (=> start!93690 (array_inv!24783 _keys!1163)))

(declare-fun b!1059505 () Bool)

(declare-fun res!707840 () Bool)

(assert (=> b!1059505 (=> (not res!707840) (not e!603092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66928 (_ BitVec 32)) Bool)

(assert (=> b!1059505 (= res!707840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059506 () Bool)

(declare-fun e!603089 () Bool)

(declare-fun tp_is_empty!24959 () Bool)

(assert (=> b!1059506 (= e!603089 tp_is_empty!24959)))

(declare-fun b!1059507 () Bool)

(assert (=> b!1059507 (= e!603092 false)))

(declare-fun lt!467120 () Bool)

(declare-datatypes ((List!22554 0))(
  ( (Nil!22551) (Cons!22550 (h!23759 (_ BitVec 64)) (t!31868 List!22554)) )
))
(declare-fun arrayNoDuplicates!0 (array!66928 (_ BitVec 32) List!22554) Bool)

(assert (=> b!1059507 (= lt!467120 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22551))))

(declare-fun b!1059508 () Bool)

(declare-fun e!603091 () Bool)

(declare-fun mapRes!39103 () Bool)

(assert (=> b!1059508 (= e!603090 (and e!603091 mapRes!39103))))

(declare-fun condMapEmpty!39103 () Bool)

(declare-fun mapDefault!39103 () ValueCell!11776)

