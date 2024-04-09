; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72308 () Bool)

(assert start!72308)

(declare-fun b!837311 () Bool)

(declare-fun res!569574 () Bool)

(declare-fun e!467345 () Bool)

(assert (=> b!837311 (=> (not res!569574) (not e!467345))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837311 (= res!569574 (validMask!0 mask!1196))))

(declare-fun b!837312 () Bool)

(declare-fun e!467342 () Bool)

(declare-fun e!467344 () Bool)

(declare-fun mapRes!24596 () Bool)

(assert (=> b!837312 (= e!467342 (and e!467344 mapRes!24596))))

(declare-fun condMapEmpty!24596 () Bool)

(declare-datatypes ((V!25489 0))(
  ( (V!25490 (val!7713 Int)) )
))
(declare-datatypes ((ValueCell!7226 0))(
  ( (ValueCellFull!7226 (v!10134 V!25489)) (EmptyCell!7226) )
))
(declare-datatypes ((array!46926 0))(
  ( (array!46927 (arr!22490 (Array (_ BitVec 32) ValueCell!7226)) (size!22931 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46926)

(declare-fun mapDefault!24596 () ValueCell!7226)

