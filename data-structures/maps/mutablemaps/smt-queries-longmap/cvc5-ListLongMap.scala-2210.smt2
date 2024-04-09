; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36682 () Bool)

(assert start!36682)

(declare-fun b!365831 () Bool)

(declare-fun res!204636 () Bool)

(declare-fun e!224049 () Bool)

(assert (=> b!365831 (=> (not res!204636) (not e!224049))))

(declare-datatypes ((array!20923 0))(
  ( (array!20924 (arr!9930 (Array (_ BitVec 32) (_ BitVec 64))) (size!10282 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20923)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!365831 (= res!204636 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14301 () Bool)

(declare-fun mapRes!14301 () Bool)

(declare-fun tp!28377 () Bool)

(declare-fun e!224051 () Bool)

(assert (=> mapNonEmpty!14301 (= mapRes!14301 (and tp!28377 e!224051))))

(declare-datatypes ((V!12435 0))(
  ( (V!12436 (val!4293 Int)) )
))
(declare-datatypes ((ValueCell!3905 0))(
  ( (ValueCellFull!3905 (v!6485 V!12435)) (EmptyCell!3905) )
))
(declare-datatypes ((array!20925 0))(
  ( (array!20926 (arr!9931 (Array (_ BitVec 32) ValueCell!3905)) (size!10283 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20925)

(declare-fun mapValue!14301 () ValueCell!3905)

(declare-fun mapRest!14301 () (Array (_ BitVec 32) ValueCell!3905))

(declare-fun mapKey!14301 () (_ BitVec 32))

(assert (=> mapNonEmpty!14301 (= (arr!9931 _values!506) (store mapRest!14301 mapKey!14301 mapValue!14301))))

(declare-fun b!365832 () Bool)

(declare-fun res!204639 () Bool)

(assert (=> b!365832 (=> (not res!204639) (not e!224049))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!365832 (= res!204639 (or (= (select (arr!9930 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9930 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!365833 () Bool)

(declare-fun e!224052 () Bool)

(declare-fun tp_is_empty!8497 () Bool)

(assert (=> b!365833 (= e!224052 tp_is_empty!8497)))

(declare-fun b!365834 () Bool)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!365834 (= e!224049 (and (= (size!10282 _keys!658) (bvadd #b00000000000000000000000000000001 mask!970)) (bvsgt #b00000000000000000000000000000000 (size!10282 _keys!658))))))

(declare-fun mapIsEmpty!14301 () Bool)

(assert (=> mapIsEmpty!14301 mapRes!14301))

(declare-fun b!365835 () Bool)

(declare-fun res!204634 () Bool)

(assert (=> b!365835 (=> (not res!204634) (not e!224049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20923 (_ BitVec 32)) Bool)

(assert (=> b!365835 (= res!204634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!365836 () Bool)

(declare-fun res!204633 () Bool)

(assert (=> b!365836 (=> (not res!204633) (not e!224049))))

(declare-datatypes ((List!5560 0))(
  ( (Nil!5557) (Cons!5556 (h!6412 (_ BitVec 64)) (t!10718 List!5560)) )
))
(declare-fun arrayNoDuplicates!0 (array!20923 (_ BitVec 32) List!5560) Bool)

(assert (=> b!365836 (= res!204633 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5557))))

(declare-fun b!365838 () Bool)

(declare-fun res!204637 () Bool)

(assert (=> b!365838 (=> (not res!204637) (not e!224049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365838 (= res!204637 (validKeyInArray!0 k!778))))

(declare-fun b!365839 () Bool)

(assert (=> b!365839 (= e!224051 tp_is_empty!8497)))

(declare-fun res!204635 () Bool)

(assert (=> start!36682 (=> (not res!204635) (not e!224049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36682 (= res!204635 (validMask!0 mask!970))))

(assert (=> start!36682 e!224049))

(assert (=> start!36682 true))

(declare-fun e!224050 () Bool)

(declare-fun array_inv!7344 (array!20925) Bool)

(assert (=> start!36682 (and (array_inv!7344 _values!506) e!224050)))

(declare-fun array_inv!7345 (array!20923) Bool)

(assert (=> start!36682 (array_inv!7345 _keys!658)))

(declare-fun b!365837 () Bool)

(assert (=> b!365837 (= e!224050 (and e!224052 mapRes!14301))))

(declare-fun condMapEmpty!14301 () Bool)

(declare-fun mapDefault!14301 () ValueCell!3905)

