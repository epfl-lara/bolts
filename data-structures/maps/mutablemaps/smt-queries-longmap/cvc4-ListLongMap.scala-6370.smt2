; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81988 () Bool)

(assert start!81988)

(declare-fun b!955873 () Bool)

(declare-fun e!538548 () Bool)

(assert (=> b!955873 (= e!538548 false)))

(declare-fun lt!430021 () Bool)

(declare-datatypes ((array!58119 0))(
  ( (array!58120 (arr!27935 (Array (_ BitVec 32) (_ BitVec 64))) (size!28415 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58119)

(declare-datatypes ((List!19608 0))(
  ( (Nil!19605) (Cons!19604 (h!20766 (_ BitVec 64)) (t!27977 List!19608)) )
))
(declare-fun arrayNoDuplicates!0 (array!58119 (_ BitVec 32) List!19608) Bool)

(assert (=> b!955873 (= lt!430021 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19605))))

(declare-fun b!955874 () Bool)

(declare-fun res!640205 () Bool)

(assert (=> b!955874 (=> (not res!640205) (not e!538548))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58119 (_ BitVec 32)) Bool)

(assert (=> b!955874 (= res!640205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955875 () Bool)

(declare-fun e!538549 () Bool)

(declare-fun tp_is_empty!20999 () Bool)

(assert (=> b!955875 (= e!538549 tp_is_empty!20999)))

(declare-fun b!955876 () Bool)

(declare-fun e!538551 () Bool)

(declare-fun e!538550 () Bool)

(declare-fun mapRes!33460 () Bool)

(assert (=> b!955876 (= e!538551 (and e!538550 mapRes!33460))))

(declare-fun condMapEmpty!33460 () Bool)

(declare-datatypes ((V!32981 0))(
  ( (V!32982 (val!10550 Int)) )
))
(declare-datatypes ((ValueCell!10018 0))(
  ( (ValueCellFull!10018 (v!13105 V!32981)) (EmptyCell!10018) )
))
(declare-datatypes ((array!58121 0))(
  ( (array!58122 (arr!27936 (Array (_ BitVec 32) ValueCell!10018)) (size!28416 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58121)

(declare-fun mapDefault!33460 () ValueCell!10018)

