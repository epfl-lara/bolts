; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106988 () Bool)

(assert start!106988)

(declare-fun b!1268222 () Bool)

(declare-fun res!844199 () Bool)

(declare-fun e!722671 () Bool)

(assert (=> b!1268222 (=> (not res!844199) (not e!722671))))

(declare-datatypes ((List!28555 0))(
  ( (Nil!28552) (Cons!28551 (h!29760 (_ BitVec 64)) (t!42091 List!28555)) )
))
(declare-fun noDuplicate!2071 (List!28555) Bool)

(assert (=> b!1268222 (= res!844199 (noDuplicate!2071 Nil!28552))))

(declare-fun b!1268223 () Bool)

(declare-fun e!722669 () Bool)

(declare-fun contains!7679 (List!28555 (_ BitVec 64)) Bool)

(assert (=> b!1268223 (= e!722669 (contains!7679 Nil!28552 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1268224 () Bool)

(declare-fun e!722673 () Bool)

(declare-fun e!722668 () Bool)

(declare-fun mapRes!50557 () Bool)

(assert (=> b!1268224 (= e!722673 (and e!722668 mapRes!50557))))

(declare-fun condMapEmpty!50557 () Bool)

(declare-datatypes ((V!48731 0))(
  ( (V!48732 (val!16401 Int)) )
))
(declare-datatypes ((ValueCell!15473 0))(
  ( (ValueCellFull!15473 (v!19035 V!48731)) (EmptyCell!15473) )
))
(declare-datatypes ((array!82557 0))(
  ( (array!82558 (arr!39812 (Array (_ BitVec 32) ValueCell!15473)) (size!40349 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82557)

(declare-fun mapDefault!50557 () ValueCell!15473)

