; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112170 () Bool)

(assert start!112170)

(declare-fun b!1327962 () Bool)

(declare-fun e!757144 () Bool)

(declare-fun tp_is_empty!36439 () Bool)

(assert (=> b!1327962 (= e!757144 tp_is_empty!36439)))

(declare-fun b!1327963 () Bool)

(declare-fun res!881202 () Bool)

(declare-fun e!757142 () Bool)

(assert (=> b!1327963 (=> (not res!881202) (not e!757142))))

(declare-datatypes ((array!89743 0))(
  ( (array!89744 (arr!43333 (Array (_ BitVec 32) (_ BitVec 64))) (size!43884 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89743)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89743 (_ BitVec 32)) Bool)

(assert (=> b!1327963 (= res!881202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327964 () Bool)

(assert (=> b!1327964 (= e!757142 false)))

(declare-fun lt!590732 () Bool)

(declare-datatypes ((List!30886 0))(
  ( (Nil!30883) (Cons!30882 (h!32091 (_ BitVec 64)) (t!44899 List!30886)) )
))
(declare-fun arrayNoDuplicates!0 (array!89743 (_ BitVec 32) List!30886) Bool)

(assert (=> b!1327964 (= lt!590732 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30883))))

(declare-fun b!1327965 () Bool)

(declare-fun res!881203 () Bool)

(assert (=> b!1327965 (=> (not res!881203) (not e!757142))))

(declare-datatypes ((V!53689 0))(
  ( (V!53690 (val!18294 Int)) )
))
(declare-datatypes ((ValueCell!17321 0))(
  ( (ValueCellFull!17321 (v!20929 V!53689)) (EmptyCell!17321) )
))
(declare-datatypes ((array!89745 0))(
  ( (array!89746 (arr!43334 (Array (_ BitVec 32) ValueCell!17321)) (size!43885 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89745)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1327965 (= res!881203 (and (= (size!43885 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43884 _keys!1590) (size!43885 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1327966 () Bool)

(declare-fun e!757141 () Bool)

(assert (=> b!1327966 (= e!757141 tp_is_empty!36439)))

(declare-fun b!1327967 () Bool)

(declare-fun e!757140 () Bool)

(declare-fun mapRes!56332 () Bool)

(assert (=> b!1327967 (= e!757140 (and e!757144 mapRes!56332))))

(declare-fun condMapEmpty!56332 () Bool)

(declare-fun mapDefault!56332 () ValueCell!17321)

