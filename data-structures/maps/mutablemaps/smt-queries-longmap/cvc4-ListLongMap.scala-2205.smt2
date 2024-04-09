; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36644 () Bool)

(assert start!36644)

(declare-fun b!365477 () Bool)

(declare-fun res!204419 () Bool)

(declare-fun e!223827 () Bool)

(assert (=> b!365477 (=> (not res!204419) (not e!223827))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365477 (= res!204419 (validKeyInArray!0 k!778))))

(declare-fun b!365478 () Bool)

(declare-datatypes ((array!20873 0))(
  ( (array!20874 (arr!9906 (Array (_ BitVec 32) (_ BitVec 64))) (size!10258 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20873)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!365478 (= e!223827 (and (or (= (select (arr!9906 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9906 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!10258 _keys!658))))))

(declare-fun b!365479 () Bool)

(declare-fun e!223829 () Bool)

(declare-fun e!223828 () Bool)

(declare-fun mapRes!14259 () Bool)

(assert (=> b!365479 (= e!223829 (and e!223828 mapRes!14259))))

(declare-fun condMapEmpty!14259 () Bool)

(declare-datatypes ((V!12399 0))(
  ( (V!12400 (val!4280 Int)) )
))
(declare-datatypes ((ValueCell!3892 0))(
  ( (ValueCellFull!3892 (v!6472 V!12399)) (EmptyCell!3892) )
))
(declare-datatypes ((array!20875 0))(
  ( (array!20876 (arr!9907 (Array (_ BitVec 32) ValueCell!3892)) (size!10259 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20875)

(declare-fun mapDefault!14259 () ValueCell!3892)

