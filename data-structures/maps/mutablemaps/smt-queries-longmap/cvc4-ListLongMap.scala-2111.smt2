; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35846 () Bool)

(assert start!35846)

(declare-fun b!359947 () Bool)

(declare-fun e!220448 () Bool)

(declare-fun tp_is_empty!8291 () Bool)

(assert (=> b!359947 (= e!220448 tp_is_empty!8291)))

(declare-fun b!359948 () Bool)

(declare-fun res!200201 () Bool)

(declare-fun e!220449 () Bool)

(assert (=> b!359948 (=> (not res!200201) (not e!220449))))

(declare-datatypes ((array!20103 0))(
  ( (array!20104 (arr!9542 (Array (_ BitVec 32) (_ BitVec 64))) (size!9894 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20103)

(declare-datatypes ((List!5510 0))(
  ( (Nil!5507) (Cons!5506 (h!6362 (_ BitVec 64)) (t!10668 List!5510)) )
))
(declare-fun arrayNoDuplicates!0 (array!20103 (_ BitVec 32) List!5510) Bool)

(assert (=> b!359948 (= res!200201 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5507))))

(declare-fun b!359949 () Bool)

(declare-fun e!220451 () Bool)

(declare-fun e!220450 () Bool)

(declare-fun mapRes!13944 () Bool)

(assert (=> b!359949 (= e!220451 (and e!220450 mapRes!13944))))

(declare-fun condMapEmpty!13944 () Bool)

(declare-datatypes ((V!12031 0))(
  ( (V!12032 (val!4190 Int)) )
))
(declare-datatypes ((ValueCell!3802 0))(
  ( (ValueCellFull!3802 (v!6380 V!12031)) (EmptyCell!3802) )
))
(declare-datatypes ((array!20105 0))(
  ( (array!20106 (arr!9543 (Array (_ BitVec 32) ValueCell!3802)) (size!9895 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20105)

(declare-fun mapDefault!13944 () ValueCell!3802)

