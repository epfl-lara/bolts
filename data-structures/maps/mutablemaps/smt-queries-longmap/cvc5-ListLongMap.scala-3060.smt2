; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43210 () Bool)

(assert start!43210)

(declare-fun mapIsEmpty!22081 () Bool)

(declare-fun mapRes!22081 () Bool)

(assert (=> mapIsEmpty!22081 mapRes!22081))

(declare-fun b!478609 () Bool)

(declare-fun res!285606 () Bool)

(declare-fun e!281476 () Bool)

(assert (=> b!478609 (=> (not res!285606) (not e!281476))))

(declare-datatypes ((array!30823 0))(
  ( (array!30824 (arr!14816 (Array (_ BitVec 32) (_ BitVec 64))) (size!15174 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30823)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30823 (_ BitVec 32)) Bool)

(assert (=> b!478609 (= res!285606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478610 () Bool)

(assert (=> b!478610 (= e!281476 false)))

(declare-fun lt!217733 () Bool)

(declare-datatypes ((List!9100 0))(
  ( (Nil!9097) (Cons!9096 (h!9952 (_ BitVec 64)) (t!15314 List!9100)) )
))
(declare-fun arrayNoDuplicates!0 (array!30823 (_ BitVec 32) List!9100) Bool)

(assert (=> b!478610 (= lt!217733 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9097))))

(declare-fun b!478611 () Bool)

(declare-fun e!281472 () Bool)

(declare-fun e!281473 () Bool)

(assert (=> b!478611 (= e!281472 (and e!281473 mapRes!22081))))

(declare-fun condMapEmpty!22081 () Bool)

(declare-datatypes ((V!19193 0))(
  ( (V!19194 (val!6843 Int)) )
))
(declare-datatypes ((ValueCell!6434 0))(
  ( (ValueCellFull!6434 (v!9128 V!19193)) (EmptyCell!6434) )
))
(declare-datatypes ((array!30825 0))(
  ( (array!30826 (arr!14817 (Array (_ BitVec 32) ValueCell!6434)) (size!15175 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30825)

(declare-fun mapDefault!22081 () ValueCell!6434)

