; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84128 () Bool)

(assert start!84128)

(declare-fun b!983242 () Bool)

(declare-fun e!554272 () Bool)

(declare-fun e!554270 () Bool)

(declare-fun mapRes!36383 () Bool)

(assert (=> b!983242 (= e!554272 (and e!554270 mapRes!36383))))

(declare-fun condMapEmpty!36383 () Bool)

(declare-datatypes ((V!35521 0))(
  ( (V!35522 (val!11502 Int)) )
))
(declare-datatypes ((ValueCell!10970 0))(
  ( (ValueCellFull!10970 (v!14064 V!35521)) (EmptyCell!10970) )
))
(declare-datatypes ((array!61785 0))(
  ( (array!61786 (arr!29746 (Array (_ BitVec 32) ValueCell!10970)) (size!30226 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61785)

(declare-fun mapDefault!36383 () ValueCell!10970)

