; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84924 () Bool)

(assert start!84924)

(declare-fun b!991935 () Bool)

(declare-fun e!559563 () Bool)

(declare-fun e!559560 () Bool)

(assert (=> b!991935 (= e!559563 e!559560)))

(declare-fun res!663114 () Bool)

(assert (=> b!991935 (=> (not res!663114) (not e!559560))))

(declare-datatypes ((SeekEntryResult!9208 0))(
  ( (MissingZero!9208 (index!39202 (_ BitVec 32))) (Found!9208 (index!39203 (_ BitVec 32))) (Intermediate!9208 (undefined!10020 Bool) (index!39204 (_ BitVec 32)) (x!86314 (_ BitVec 32))) (Undefined!9208) (MissingVacant!9208 (index!39205 (_ BitVec 32))) )
))
(declare-fun lt!439995 () SeekEntryResult!9208)

(assert (=> b!991935 (= res!663114 (is-Found!9208 lt!439995))))

(declare-fun k!1425 () (_ BitVec 64))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-datatypes ((array!62701 0))(
  ( (array!62702 (arr!30191 (Array (_ BitVec 32) (_ BitVec 64))) (size!30671 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62701)

(declare-fun seekEntry!0 ((_ BitVec 64) array!62701 (_ BitVec 32)) SeekEntryResult!9208)

(assert (=> b!991935 (= lt!439995 (seekEntry!0 k!1425 _keys!1945 mask!2471))))

(declare-fun b!991936 () Bool)

(declare-fun e!559561 () Bool)

(declare-fun tp_is_empty!23375 () Bool)

(assert (=> b!991936 (= e!559561 tp_is_empty!23375)))

(declare-fun res!663112 () Bool)

(assert (=> start!84924 (=> (not res!663112) (not e!559563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84924 (= res!663112 (validMask!0 mask!2471))))

(assert (=> start!84924 e!559563))

(assert (=> start!84924 true))

(declare-datatypes ((V!36149 0))(
  ( (V!36150 (val!11738 Int)) )
))
(declare-datatypes ((ValueCell!11206 0))(
  ( (ValueCellFull!11206 (v!14315 V!36149)) (EmptyCell!11206) )
))
(declare-datatypes ((array!62703 0))(
  ( (array!62704 (arr!30192 (Array (_ BitVec 32) ValueCell!11206)) (size!30672 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62703)

(declare-fun e!559562 () Bool)

(declare-fun array_inv!23181 (array!62703) Bool)

(assert (=> start!84924 (and (array_inv!23181 _values!1551) e!559562)))

(declare-fun array_inv!23182 (array!62701) Bool)

(assert (=> start!84924 (array_inv!23182 _keys!1945)))

(declare-fun b!991937 () Bool)

(declare-fun mapRes!37134 () Bool)

(assert (=> b!991937 (= e!559562 (and e!559561 mapRes!37134))))

(declare-fun condMapEmpty!37134 () Bool)

(declare-fun mapDefault!37134 () ValueCell!11206)

