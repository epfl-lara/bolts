; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35314 () Bool)

(assert start!35314)

(declare-fun b!353502 () Bool)

(declare-fun res!196044 () Bool)

(declare-fun e!216545 () Bool)

(assert (=> b!353502 (=> (not res!196044) (not e!216545))))

(declare-datatypes ((array!19139 0))(
  ( (array!19140 (arr!9063 (Array (_ BitVec 32) (_ BitVec 64))) (size!9415 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19139)

(assert (=> b!353502 (= res!196044 (and (bvsle #b00000000000000000000000000000000 (size!9415 _keys!1456)) (bvslt (size!9415 _keys!1456) #b01111111111111111111111111111111)))))

(declare-fun b!353503 () Bool)

(declare-fun e!216549 () Bool)

(declare-fun e!216547 () Bool)

(declare-fun mapRes!13188 () Bool)

(assert (=> b!353503 (= e!216549 (and e!216547 mapRes!13188))))

(declare-fun condMapEmpty!13188 () Bool)

(declare-datatypes ((V!11367 0))(
  ( (V!11368 (val!3941 Int)) )
))
(declare-datatypes ((ValueCell!3553 0))(
  ( (ValueCellFull!3553 (v!6130 V!11367)) (EmptyCell!3553) )
))
(declare-datatypes ((array!19141 0))(
  ( (array!19142 (arr!9064 (Array (_ BitVec 32) ValueCell!3553)) (size!9416 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19141)

(declare-fun mapDefault!13188 () ValueCell!3553)

