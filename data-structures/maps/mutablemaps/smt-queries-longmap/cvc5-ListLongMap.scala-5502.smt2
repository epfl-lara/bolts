; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72824 () Bool)

(assert start!72824)

(declare-fun b!844673 () Bool)

(declare-fun res!573963 () Bool)

(declare-fun e!471539 () Bool)

(assert (=> b!844673 (=> (not res!573963) (not e!471539))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844673 (= res!573963 (validMask!0 mask!1196))))

(declare-fun b!844674 () Bool)

(declare-fun res!573965 () Bool)

(assert (=> b!844674 (=> (not res!573965) (not e!471539))))

(declare-datatypes ((array!47908 0))(
  ( (array!47909 (arr!22981 (Array (_ BitVec 32) (_ BitVec 64))) (size!23422 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47908)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47908 (_ BitVec 32)) Bool)

(assert (=> b!844674 (= res!573965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844675 () Bool)

(declare-fun e!471540 () Bool)

(declare-fun e!471537 () Bool)

(declare-fun mapRes!25370 () Bool)

(assert (=> b!844675 (= e!471540 (and e!471537 mapRes!25370))))

(declare-fun condMapEmpty!25370 () Bool)

(declare-datatypes ((V!26177 0))(
  ( (V!26178 (val!7971 Int)) )
))
(declare-datatypes ((ValueCell!7484 0))(
  ( (ValueCellFull!7484 (v!10392 V!26177)) (EmptyCell!7484) )
))
(declare-datatypes ((array!47910 0))(
  ( (array!47911 (arr!22982 (Array (_ BitVec 32) ValueCell!7484)) (size!23423 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47910)

(declare-fun mapDefault!25370 () ValueCell!7484)

