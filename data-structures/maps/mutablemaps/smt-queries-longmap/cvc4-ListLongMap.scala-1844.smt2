; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33422 () Bool)

(assert start!33422)

(declare-fun b!331620 () Bool)

(declare-fun res!182763 () Bool)

(declare-fun e!203535 () Bool)

(assert (=> b!331620 (=> (not res!182763) (not e!203535))))

(declare-datatypes ((array!16975 0))(
  ( (array!16976 (arr!8021 (Array (_ BitVec 32) (_ BitVec 64))) (size!8373 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16975)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16975 (_ BitVec 32)) Bool)

(assert (=> b!331620 (= res!182763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331621 () Bool)

(declare-fun res!182765 () Bool)

(assert (=> b!331621 (=> (not res!182765) (not e!203535))))

(assert (=> b!331621 (= res!182765 (and (bvsle #b00000000000000000000000000000000 (size!8373 _keys!1895)) (bvslt (size!8373 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun b!331622 () Bool)

(declare-fun e!203534 () Bool)

(declare-fun e!203533 () Bool)

(declare-fun mapRes!11412 () Bool)

(assert (=> b!331622 (= e!203534 (and e!203533 mapRes!11412))))

(declare-fun condMapEmpty!11412 () Bool)

(declare-datatypes ((V!9895 0))(
  ( (V!9896 (val!3389 Int)) )
))
(declare-datatypes ((ValueCell!3001 0))(
  ( (ValueCellFull!3001 (v!5543 V!9895)) (EmptyCell!3001) )
))
(declare-datatypes ((array!16977 0))(
  ( (array!16978 (arr!8022 (Array (_ BitVec 32) ValueCell!3001)) (size!8374 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16977)

(declare-fun mapDefault!11412 () ValueCell!3001)

