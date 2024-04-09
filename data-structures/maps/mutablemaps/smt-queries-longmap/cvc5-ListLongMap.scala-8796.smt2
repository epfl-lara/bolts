; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107036 () Bool)

(assert start!107036)

(declare-fun b!1268601 () Bool)

(declare-fun e!722978 () Bool)

(assert (=> b!1268601 (= e!722978 false)))

(declare-fun lt!574406 () Bool)

(declare-datatypes ((array!82625 0))(
  ( (array!82626 (arr!39845 (Array (_ BitVec 32) (_ BitVec 64))) (size!40382 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82625)

(declare-datatypes ((List!28566 0))(
  ( (Nil!28563) (Cons!28562 (h!29771 (_ BitVec 64)) (t!42102 List!28566)) )
))
(declare-fun arrayNoDuplicates!0 (array!82625 (_ BitVec 32) List!28566) Bool)

(assert (=> b!1268601 (= lt!574406 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28563))))

(declare-fun res!844402 () Bool)

(assert (=> start!107036 (=> (not res!844402) (not e!722978))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107036 (= res!844402 (validMask!0 mask!1730))))

(assert (=> start!107036 e!722978))

(declare-datatypes ((V!48779 0))(
  ( (V!48780 (val!16419 Int)) )
))
(declare-datatypes ((ValueCell!15491 0))(
  ( (ValueCellFull!15491 (v!19054 V!48779)) (EmptyCell!15491) )
))
(declare-datatypes ((array!82627 0))(
  ( (array!82628 (arr!39846 (Array (_ BitVec 32) ValueCell!15491)) (size!40383 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82627)

(declare-fun e!722976 () Bool)

(declare-fun array_inv!30277 (array!82627) Bool)

(assert (=> start!107036 (and (array_inv!30277 _values!1134) e!722976)))

(assert (=> start!107036 true))

(declare-fun array_inv!30278 (array!82625) Bool)

(assert (=> start!107036 (array_inv!30278 _keys!1364)))

(declare-fun b!1268602 () Bool)

(declare-fun e!722974 () Bool)

(declare-fun mapRes!50614 () Bool)

(assert (=> b!1268602 (= e!722976 (and e!722974 mapRes!50614))))

(declare-fun condMapEmpty!50614 () Bool)

(declare-fun mapDefault!50614 () ValueCell!15491)

