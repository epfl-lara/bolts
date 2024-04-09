; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72812 () Bool)

(assert start!72812)

(declare-fun b!844547 () Bool)

(declare-fun res!573892 () Bool)

(declare-fun e!471450 () Bool)

(assert (=> b!844547 (=> (not res!573892) (not e!471450))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844547 (= res!573892 (validMask!0 mask!1196))))

(declare-fun b!844548 () Bool)

(declare-fun res!573894 () Bool)

(assert (=> b!844548 (=> (not res!573894) (not e!471450))))

(declare-datatypes ((array!47884 0))(
  ( (array!47885 (arr!22969 (Array (_ BitVec 32) (_ BitVec 64))) (size!23410 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47884)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47884 (_ BitVec 32)) Bool)

(assert (=> b!844548 (= res!573894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844549 () Bool)

(declare-fun e!471447 () Bool)

(declare-fun e!471449 () Bool)

(declare-fun mapRes!25352 () Bool)

(assert (=> b!844549 (= e!471447 (and e!471449 mapRes!25352))))

(declare-fun condMapEmpty!25352 () Bool)

(declare-datatypes ((V!26161 0))(
  ( (V!26162 (val!7965 Int)) )
))
(declare-datatypes ((ValueCell!7478 0))(
  ( (ValueCellFull!7478 (v!10386 V!26161)) (EmptyCell!7478) )
))
(declare-datatypes ((array!47886 0))(
  ( (array!47887 (arr!22970 (Array (_ BitVec 32) ValueCell!7478)) (size!23411 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47886)

(declare-fun mapDefault!25352 () ValueCell!7478)

