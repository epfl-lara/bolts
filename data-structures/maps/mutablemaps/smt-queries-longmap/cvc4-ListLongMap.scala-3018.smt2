; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42474 () Bool)

(assert start!42474)

(declare-fun b_free!11921 () Bool)

(declare-fun b_next!11921 () Bool)

(assert (=> start!42474 (= b_free!11921 (not b_next!11921))))

(declare-fun tp!41799 () Bool)

(declare-fun b_and!20407 () Bool)

(assert (=> start!42474 (= tp!41799 b_and!20407)))

(declare-fun b!473610 () Bool)

(declare-fun res!282950 () Bool)

(declare-fun e!277901 () Bool)

(assert (=> b!473610 (=> (not res!282950) (not e!277901))))

(declare-datatypes ((array!30417 0))(
  ( (array!30418 (arr!14624 (Array (_ BitVec 32) (_ BitVec 64))) (size!14976 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30417)

(declare-datatypes ((List!8960 0))(
  ( (Nil!8957) (Cons!8956 (h!9812 (_ BitVec 64)) (t!14940 List!8960)) )
))
(declare-fun arrayNoDuplicates!0 (array!30417 (_ BitVec 32) List!8960) Bool)

(assert (=> b!473610 (= res!282950 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8957))))

(declare-fun b!473611 () Bool)

(declare-fun res!282949 () Bool)

(assert (=> b!473611 (=> (not res!282949) (not e!277901))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30417 (_ BitVec 32)) Bool)

(assert (=> b!473611 (= res!282949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473612 () Bool)

(declare-fun e!277897 () Bool)

(declare-fun e!277899 () Bool)

(declare-fun mapRes!21739 () Bool)

(assert (=> b!473612 (= e!277897 (and e!277899 mapRes!21739))))

(declare-fun condMapEmpty!21739 () Bool)

(declare-datatypes ((V!18903 0))(
  ( (V!18904 (val!6719 Int)) )
))
(declare-datatypes ((ValueCell!6331 0))(
  ( (ValueCellFull!6331 (v!9007 V!18903)) (EmptyCell!6331) )
))
(declare-datatypes ((array!30419 0))(
  ( (array!30420 (arr!14625 (Array (_ BitVec 32) ValueCell!6331)) (size!14977 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30419)

(declare-fun mapDefault!21739 () ValueCell!6331)

