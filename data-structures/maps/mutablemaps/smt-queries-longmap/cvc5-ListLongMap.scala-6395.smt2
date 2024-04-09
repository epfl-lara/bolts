; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82194 () Bool)

(assert start!82194)

(declare-fun b!957503 () Bool)

(declare-fun res!641050 () Bool)

(declare-fun e!539813 () Bool)

(assert (=> b!957503 (=> (not res!641050) (not e!539813))))

(declare-datatypes ((array!58407 0))(
  ( (array!58408 (arr!28073 (Array (_ BitVec 32) (_ BitVec 64))) (size!28553 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58407)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58407 (_ BitVec 32)) Bool)

(assert (=> b!957503 (= res!641050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957504 () Bool)

(declare-fun res!641051 () Bool)

(assert (=> b!957504 (=> (not res!641051) (not e!539813))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((V!33177 0))(
  ( (V!33178 (val!10623 Int)) )
))
(declare-datatypes ((ValueCell!10091 0))(
  ( (ValueCellFull!10091 (v!13180 V!33177)) (EmptyCell!10091) )
))
(declare-datatypes ((array!58409 0))(
  ( (array!58410 (arr!28074 (Array (_ BitVec 32) ValueCell!10091)) (size!28554 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58409)

(assert (=> b!957504 (= res!641051 (and (= (size!28554 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28553 _keys!1668) (size!28554 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957505 () Bool)

(declare-fun e!539810 () Bool)

(declare-fun e!539811 () Bool)

(declare-fun mapRes!33697 () Bool)

(assert (=> b!957505 (= e!539810 (and e!539811 mapRes!33697))))

(declare-fun condMapEmpty!33697 () Bool)

(declare-fun mapDefault!33697 () ValueCell!10091)

