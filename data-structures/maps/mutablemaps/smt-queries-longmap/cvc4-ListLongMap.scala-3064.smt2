; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43238 () Bool)

(assert start!43238)

(declare-fun b!478861 () Bool)

(declare-fun e!281684 () Bool)

(assert (=> b!478861 (= e!281684 false)))

(declare-fun lt!217775 () Bool)

(declare-datatypes ((array!30877 0))(
  ( (array!30878 (arr!14843 (Array (_ BitVec 32) (_ BitVec 64))) (size!15201 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30877)

(declare-datatypes ((List!9109 0))(
  ( (Nil!9106) (Cons!9105 (h!9961 (_ BitVec 64)) (t!15323 List!9109)) )
))
(declare-fun arrayNoDuplicates!0 (array!30877 (_ BitVec 32) List!9109) Bool)

(assert (=> b!478861 (= lt!217775 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9106))))

(declare-fun mapNonEmpty!22123 () Bool)

(declare-fun mapRes!22123 () Bool)

(declare-fun tp!42598 () Bool)

(declare-fun e!281682 () Bool)

(assert (=> mapNonEmpty!22123 (= mapRes!22123 (and tp!42598 e!281682))))

(declare-datatypes ((V!19229 0))(
  ( (V!19230 (val!6857 Int)) )
))
(declare-datatypes ((ValueCell!6448 0))(
  ( (ValueCellFull!6448 (v!9142 V!19229)) (EmptyCell!6448) )
))
(declare-fun mapValue!22123 () ValueCell!6448)

(declare-fun mapRest!22123 () (Array (_ BitVec 32) ValueCell!6448))

(declare-fun mapKey!22123 () (_ BitVec 32))

(declare-datatypes ((array!30879 0))(
  ( (array!30880 (arr!14844 (Array (_ BitVec 32) ValueCell!6448)) (size!15202 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30879)

(assert (=> mapNonEmpty!22123 (= (arr!14844 _values!1516) (store mapRest!22123 mapKey!22123 mapValue!22123))))

(declare-fun b!478862 () Bool)

(declare-fun e!281685 () Bool)

(declare-fun e!281683 () Bool)

(assert (=> b!478862 (= e!281685 (and e!281683 mapRes!22123))))

(declare-fun condMapEmpty!22123 () Bool)

(declare-fun mapDefault!22123 () ValueCell!6448)

