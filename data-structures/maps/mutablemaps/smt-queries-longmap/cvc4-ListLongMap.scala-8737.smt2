; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105968 () Bool)

(assert start!105968)

(declare-fun b_free!27461 () Bool)

(declare-fun b_next!27461 () Bool)

(assert (=> start!105968 (= b_free!27461 (not b_next!27461))))

(declare-fun tp!95919 () Bool)

(declare-fun b_and!45387 () Bool)

(assert (=> start!105968 (= tp!95919 b_and!45387)))

(declare-fun b!1261583 () Bool)

(declare-fun res!840719 () Bool)

(declare-fun e!718090 () Bool)

(assert (=> b!1261583 (=> (not res!840719) (not e!718090))))

(declare-datatypes ((array!82325 0))(
  ( (array!82326 (arr!39710 (Array (_ BitVec 32) (_ BitVec 64))) (size!40247 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82325)

(declare-datatypes ((List!28389 0))(
  ( (Nil!28386) (Cons!28385 (h!29594 (_ BitVec 64)) (t!41897 List!28389)) )
))
(declare-fun arrayNoDuplicates!0 (array!82325 (_ BitVec 32) List!28389) Bool)

(assert (=> b!1261583 (= res!840719 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28386))))

(declare-fun b!1261584 () Bool)

(declare-fun e!718092 () Bool)

(declare-fun e!718093 () Bool)

(declare-fun mapRes!50350 () Bool)

(assert (=> b!1261584 (= e!718092 (and e!718093 mapRes!50350))))

(declare-fun condMapEmpty!50350 () Bool)

(declare-datatypes ((V!48515 0))(
  ( (V!48516 (val!16244 Int)) )
))
(declare-datatypes ((ValueCell!15418 0))(
  ( (ValueCellFull!15418 (v!18948 V!48515)) (EmptyCell!15418) )
))
(declare-datatypes ((array!82327 0))(
  ( (array!82328 (arr!39711 (Array (_ BitVec 32) ValueCell!15418)) (size!40248 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82327)

(declare-fun mapDefault!50350 () ValueCell!15418)

