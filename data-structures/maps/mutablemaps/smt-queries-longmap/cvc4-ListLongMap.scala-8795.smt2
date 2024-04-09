; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107034 () Bool)

(assert start!107034)

(declare-fun b!1268583 () Bool)

(declare-fun res!844394 () Bool)

(declare-fun e!722962 () Bool)

(assert (=> b!1268583 (=> (not res!844394) (not e!722962))))

(declare-datatypes ((array!82621 0))(
  ( (array!82622 (arr!39843 (Array (_ BitVec 32) (_ BitVec 64))) (size!40380 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82621)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82621 (_ BitVec 32)) Bool)

(assert (=> b!1268583 (= res!844394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!844392 () Bool)

(assert (=> start!107034 (=> (not res!844392) (not e!722962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107034 (= res!844392 (validMask!0 mask!1730))))

(assert (=> start!107034 e!722962))

(declare-datatypes ((V!48775 0))(
  ( (V!48776 (val!16418 Int)) )
))
(declare-datatypes ((ValueCell!15490 0))(
  ( (ValueCellFull!15490 (v!19053 V!48775)) (EmptyCell!15490) )
))
(declare-datatypes ((array!82623 0))(
  ( (array!82624 (arr!39844 (Array (_ BitVec 32) ValueCell!15490)) (size!40381 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82623)

(declare-fun e!722963 () Bool)

(declare-fun array_inv!30275 (array!82623) Bool)

(assert (=> start!107034 (and (array_inv!30275 _values!1134) e!722963)))

(assert (=> start!107034 true))

(declare-fun array_inv!30276 (array!82621) Bool)

(assert (=> start!107034 (array_inv!30276 _keys!1364)))

(declare-fun mapIsEmpty!50611 () Bool)

(declare-fun mapRes!50611 () Bool)

(assert (=> mapIsEmpty!50611 mapRes!50611))

(declare-fun b!1268584 () Bool)

(declare-fun e!722959 () Bool)

(assert (=> b!1268584 (= e!722963 (and e!722959 mapRes!50611))))

(declare-fun condMapEmpty!50611 () Bool)

(declare-fun mapDefault!50611 () ValueCell!15490)

