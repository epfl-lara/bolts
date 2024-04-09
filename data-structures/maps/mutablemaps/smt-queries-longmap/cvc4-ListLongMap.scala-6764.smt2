; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84912 () Bool)

(assert start!84912)

(declare-fun b!991801 () Bool)

(declare-fun e!559466 () Bool)

(declare-fun tp_is_empty!23363 () Bool)

(assert (=> b!991801 (= e!559466 tp_is_empty!23363)))

(declare-fun b!991802 () Bool)

(declare-fun res!663034 () Bool)

(declare-fun e!559464 () Bool)

(assert (=> b!991802 (=> (not res!663034) (not e!559464))))

(declare-fun k!1425 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!991802 (= res!663034 (validKeyInArray!0 k!1425))))

(declare-fun b!991803 () Bool)

(declare-fun res!663033 () Bool)

(assert (=> b!991803 (=> (not res!663033) (not e!559464))))

(declare-datatypes ((array!62677 0))(
  ( (array!62678 (arr!30179 (Array (_ BitVec 32) (_ BitVec 64))) (size!30659 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62677)

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62677 (_ BitVec 32)) Bool)

(assert (=> b!991803 (= res!663033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun res!663030 () Bool)

(assert (=> start!84912 (=> (not res!663030) (not e!559464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84912 (= res!663030 (validMask!0 mask!2471))))

(assert (=> start!84912 e!559464))

(assert (=> start!84912 true))

(declare-datatypes ((V!36133 0))(
  ( (V!36134 (val!11732 Int)) )
))
(declare-datatypes ((ValueCell!11200 0))(
  ( (ValueCellFull!11200 (v!14309 V!36133)) (EmptyCell!11200) )
))
(declare-datatypes ((array!62679 0))(
  ( (array!62680 (arr!30180 (Array (_ BitVec 32) ValueCell!11200)) (size!30660 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62679)

(declare-fun e!559463 () Bool)

(declare-fun array_inv!23171 (array!62679) Bool)

(assert (=> start!84912 (and (array_inv!23171 _values!1551) e!559463)))

(declare-fun array_inv!23172 (array!62677) Bool)

(assert (=> start!84912 (array_inv!23172 _keys!1945)))

(declare-fun mapIsEmpty!37116 () Bool)

(declare-fun mapRes!37116 () Bool)

(assert (=> mapIsEmpty!37116 mapRes!37116))

(declare-fun b!991804 () Bool)

(assert (=> b!991804 (= e!559463 (and e!559466 mapRes!37116))))

(declare-fun condMapEmpty!37116 () Bool)

(declare-fun mapDefault!37116 () ValueCell!11200)

